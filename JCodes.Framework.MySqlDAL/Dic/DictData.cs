using System;
using System.Collections;
using System.Data;
using System.Data.Common;
using System.Collections.Generic;
using JCodes.Framework.Common;
using JCodes.Framework.Entity;
using JCodes.Framework.IDAL;
using Microsoft.Practices.EnterpriseLibrary.Data;
using JCodes.Framework.Common.Framework.BaseDAL;
using JCodes.Framework.Common.Databases;

namespace JCodes.Framework.MySqlDAL
{
	/// <summary>
	/// DictData 的摘要说明。
	/// </summary>
    public class DictData : BaseDALMySql<DictDataInfo>, IDictData
	{
		#region 对象实例及构造函数

		public static DictData Instance
		{
			get
			{
				return new DictData();
			}
		}
		public DictData() : base(MySqlPortal.gc._basicTablePre+"DictData","ID")
		{
            sortField = "Seq";
            IsDescending = false;
		}

		#endregion

        /// <summary>
        /// 将DataReader的属性值转化为实体类的属性值，返回实体类
        /// </summary>
        /// <param name="dr">有效的DataReader对象</param>
        /// <returns>实体类对象</returns>
        protected override DictDataInfo DataReaderToEntity(IDataReader dataReader)
        {
            DictDataInfo dictDataInfo = new DictDataInfo();
            SmartDataReader reader = new SmartDataReader(dataReader);
            dictDataInfo.Gid = reader.GetString("Gid");
            dictDataInfo.DicttypeId = reader.GetInt32("DicttypeId");
            dictDataInfo.DicttypeValue = reader.GetInt32("DicttypeValue");
            dictDataInfo.Name = reader.GetString("Name");
            dictDataInfo.Remark = reader.GetString("Remark");
            dictDataInfo.Seq = reader.GetString("Seq");
            dictDataInfo.EditorId = reader.GetInt32("EditorId");
            dictDataInfo.LastUpdateTime = reader.GetDateTime("LastUpdateTime");

            return dictDataInfo;
        }

        /// <summary>
        /// 将实体对象的属性值转化为Hashtable对应的键值
        /// </summary>
        /// <param name="obj">有效的实体对象</param>
        /// <returns>包含键值映射的Hashtable</returns>
        protected override Hashtable GetHashByEntity(DictDataInfo obj)
        {
            DictDataInfo info = obj as DictDataInfo;
            Hashtable hash = new Hashtable();
            hash.Add("Gid", info.Gid);
            hash.Add("DicttypeId", info.DicttypeId);
            hash.Add("Name", info.Name);
            hash.Add("DicttypeValue", info.DicttypeValue);
            hash.Add("Remark", info.Remark);
            hash.Add("Seq", info.Seq);
            hash.Add("EditorId", info.EditorId);
            hash.Add("LastUpdateTime", info.LastUpdateTime);

            return hash;
        }

        /// <summary>
        /// 根据字典类型ID获取所有该类型的字典列表集合
        /// </summary>
        /// <param name="dictTypeId"></param>
        /// <returns></returns>
        public List<DictDataInfo> FindByTypeID(Int32 dictTypeId)
        {
            string condition = string.Format("DicttypeID={0} ", dictTypeId);
            return Find(condition);
        }

        private List<DicKeyValueInfo> GetDictBySql(string sql)
        {
            Database db = CreateDatabase();
            DbCommand command = db.GetSqlStringCommand(sql);

            List<DicKeyValueInfo> list = new List<DicKeyValueInfo>();
            using (IDataReader dr = db.ExecuteReader(command))
            {
                while (dr.Read())
                {
                    Int32 dicttypeID = Convert.ToInt32(dr["DicttypeID"]);
                    Int32 value = Convert.ToInt32(dr["Value"]);
                    string name = dr["Name"].ToString();
                    list.Add(new DicKeyValueInfo() { DicttypeId = dicttypeID, DicttypeValue = value, Name = name });
                }
            }
            return list;
        }

        /// <summary>
        /// 获取所有的字典列表集合(Key为名称，Value为值）
        /// </summary>
        /// <returns></returns>
        public List<DicKeyValueInfo> GetAllDict()
        {
            string sql = string.Format("select d.DicttypeID,d.Name,d.Value from {0}DictData d inner join {0}DictType t on d.DicttypeID = t.ID order by d.{1} {2}",
                MySqlPortal.gc._basicTablePre, sortField, IsDescending ? "DESC" : "ASC");

            return GetDictBySql(sql);
        }
    }
}