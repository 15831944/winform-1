using System;
using System.Collections;
using System.Data;
using System.Data.Common;
using System.Collections.Generic;
using Microsoft.Practices.EnterpriseLibrary.Data;
using JCodes.Framework.Common;
using JCodes.Framework.Entity;
using JCodes.Framework.IDAL;
using JCodes.Framework.Common.Framework.BaseDAL;
using JCodes.Framework.Common.Databases;

namespace JCodes.Framework.OracleDAL
{
	/// <summary>
	/// Stock 的摘要说明。
	/// </summary>
	public class Stock : BaseDALOracle<StockInfo>, IStock
	{
		#region 对象实例及构造函数

		public static Stock Instance
		{
			get
			{
				return new Stock();
			}
		}
        public Stock()
            : base(OraclePortal.gc._wareHouseTablePre + "Stock", "ID")
        {
            this.SeqName = string.Format("SEQ_{0}", tableName);//数值型主键，通过序列生成
		}

		#endregion

		/// <summary>
		/// 将DataReader的属性值转化为实体类的属性值，返回实体类
		/// </summary>
		/// <param name="dr">有效的DataReader对象</param>
		/// <returns>实体类对象</returns>
		protected override StockInfo DataReaderToEntity(IDataReader dataReader)
		{
			StockInfo info = new StockInfo();
			SmartDataReader reader = new SmartDataReader(dataReader);
			
			info.ID = reader.GetInt32("ID");
			info.ItemNo = reader.GetString("ItemNo");
			info.ItemName = reader.GetString("ItemName");
			info.ItemBigType = reader.GetString("ItemBigType");
			info.ItemType = reader.GetString("ItemType");
            info.StockQuantity = reader.GetInt32("StockQuantity");
			info.StockMoney = reader.GetString("StockMoney");
			info.LowWarning = reader.GetInt32("LowWarning");
			info.HighWarning = reader.GetInt32("HighWarning");
			info.WareHouse = reader.GetString("WareHouse");
			info.Note = reader.GetString("Note");
			
			return info;
		}

		/// <summary>
		/// 将实体对象的属性值转化为Hashtable对应的键值
		/// </summary>
		/// <param name="obj">有效的实体对象</param>
		/// <returns>包含键值映射的Hashtable</returns>
        protected override Hashtable GetHashByEntity(StockInfo obj)
		{
		    StockInfo info = obj as StockInfo;
			Hashtable hash = new Hashtable();

            hash.Add("ID", info.ID);
 			hash.Add("ItemNo", info.ItemNo);
 			hash.Add("ItemName", info.ItemName);
 			hash.Add("ItemBigType", info.ItemBigType);
 			hash.Add("ItemType", info.ItemType);
            hash.Add("StockQuantity", info.StockQuantity);
 			hash.Add("StockMoney", info.StockMoney);
 			hash.Add("LowWarning", info.LowWarning);
 			hash.Add("HighWarning", info.HighWarning);
 			hash.Add("WareHouse", info.WareHouse);
 			hash.Add("Note", info.Note);
 				
			return hash;
		}

        /// <summary>
        /// 初始化库房信息
        /// </summary>
        /// <param name="detailInfo">备件详细信息</param>
        /// <param name="quantity">期初数量</param>
        /// <param name="wareHouse">库房名称</param>
        /// <returns></returns>
        public bool InitStockQuantity(ItemDetailInfo detailInfo, int quantity, string wareHouse)
        {
            bool exist =base.IsExistRecord(string.Format("ItemNo='{0}' AND WareHouse='{1}'", detailInfo.ItemNo, wareHouse));
            if (exist)
            {
                throw new ArgumentException("库房已经存在该项目的信息，不能设置");
            }

            StockInfo stockInfo = new StockInfo();
            stockInfo.ItemBigType = detailInfo.ItemBigType;
            stockInfo.ItemName = detailInfo.ItemName;
            stockInfo.ItemNo = detailInfo.ItemNo;
            stockInfo.ItemType = detailInfo.ItemType;
            stockInfo.StockQuantity = quantity;
            stockInfo.WareHouse = wareHouse;
            //stockInfo.HighWarning =
            //stockInfo.LowWarning = 
            return base.Insert(stockInfo);
        }


        /// <summary>
        /// 增加库存
        /// </summary>
        /// <param name="ItemNo">备件编号</param>
        /// <param name="itemName">备件名称</param>
        /// <param name="quantity">库存属类</param>
        /// <returns></returns>
        public bool AddStockQuantiy(string ItemNo, string itemName, int quantity, string wareHouse)
        {
            return this.AddStockQuantiy(ItemNo, itemName, quantity, wareHouse, null);
        }

        /// <summary>
        /// 增加库存
        /// </summary>
        /// <param name="ItemNo">备件编号</param>
        /// <param name="itemName">备件名称</param>
        /// <param name="quantity">库存属类</param>
        /// <returns></returns>
        public bool AddStockQuantiy(string ItemNo, string itemName, int quantity, string wareHouse, DbTransaction trans)
        {
            string sql = string.Format("Update {0} set StockQuantity=StockQuantity+{1}, ItemName='{2}' where ItemNo='{3}' and WareHouse='{4}'  ",
                this.tableName, quantity, itemName, ItemNo, wareHouse);
            Database db = CreateDatabase();
            DbCommand command = db.GetSqlStringCommand(sql);
            bool result = false;
            if (trans != null)
            {
                result = db.ExecuteNonQuery(command, trans) > 0;
            }
            else
            {
                result = db.ExecuteNonQuery(command) > 0;
            }

            return result;
        }

        /// <summary>
        /// 获取备件名称的库存数量列表
        /// </summary>
        /// <param name="condition"></param>
        /// <returns></returns>
        public DataTable GetItemStockQuantityReport(string condition, string fieldName)
        {
            if (string.IsNullOrEmpty(fieldName)) return null;

            DataTable dt = DataTableHelper.CreateTable("argument,datavalue|int");

            string sql = string.Format("select sum(StockQuantity) as datavalue,{2} as argument from {0} Where {1} group by {2} order by sum(StockQuantity) desc ", tableName, condition, fieldName);
            DataTable dtReport = SqlTable(sql);
            foreach (DataRow dr in dtReport.Rows)
            {
                int countValue = Convert.ToInt32(dr["datavalue"].ToString());
                string argument = dr["argument"].ToString();

                DataRow row = dt.NewRow();
                row[0] = argument;
                row[1] = countValue;
                dt.Rows.Add(row);
            }
            return dt;//已经过排序
        }

        public DataTable GetCurrentStockReport(string condition)
        {
            //ID,ItemNo,ItemName,Manufacture,MapNo,Specification,Material,ItemBigType,ItemType,Unit,Price,(UnitCost * StockQuantity) StockAmount, (Price * StockQuantity) Amount, Source,StoragePos,UsagePos,StockQuantity,AlarmQuantity,Note
            string sql = string.Format(@"Select t.ID,d.ItemNo,d.ItemName,Price,t.StockQuantity,(Price * t.StockQuantity) as StockAmount,d.Manufacture,d.MapNo,d.Specification,d.Material,d.ItemBigType,d.ItemType,d.Unit, Source,StoragePos,UsagePos,LowWarning,HighWarning,t.Note,t.WareHouse,d.Dept
                                         From {0}Stock t inner join {0}ItemDetail d on t.ItemNo = d.ItemNo  {1} order by t.id ", OraclePortal.gc._wareHouseTablePre, condition);
            return this.SqlTable(sql);
        }

        public int GetCurrentStockReportCount(string condition)
        {
            string sql = string.Format(@"Select count(*) From {0}Stock t inner join {0}ItemDetail d on t.ItemNo = d.ItemNo  {1} ", OraclePortal.gc._wareHouseTablePre, condition);
            string value = this.SqlValueList(sql);
            return Convert.ToInt32(value);
        }
    }
}