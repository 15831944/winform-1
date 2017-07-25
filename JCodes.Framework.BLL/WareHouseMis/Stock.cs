using System;
using System.Collections;
using System.Data;
using System.Data.Common;
using System.Collections.Generic;
using JCodes.Framework.Common;
using JCodes.Framework.Entity;
using JCodes.Framework.IDAL;
using JCodes.Framework.Common.Framework;

namespace JCodes.Framework.BLL
{
	public class Stock : BaseBLL<StockInfo>
    {
        public Stock() : base()
        {
            base.Init(this.GetType().FullName, System.Reflection.Assembly.GetExecutingAssembly().GetName().Name);
        }
                        
        /// <summary>
        /// ��ȡ��ǰ��汨��
        /// </summary>
        /// <param name="condition"></param>
        /// <returns></returns>
        public DataTable GetCurrentStockReport(string condition)
        {
            IStock dal = baseDal as IStock;
            return dal.GetCurrentStockReport(condition);
        }

        /// <summary>
        /// ��ȡ���ڿ�汨��ļ�¼����
        /// </summary>
        /// <param name="condition"></param>
        /// <returns></returns>
        public int GetCurrentStockReportCount(string condition)
        {
            IStock dal = baseDal as IStock;
            return dal.GetCurrentStockReportCount(condition);
        }

        /// <summary>
        /// ���ÿⷿ�Ƿ���Խ����ڳ�����
        /// </summary>
        /// <param name="wareHouse"></param>
        /// <returns></returns>
        public bool CheckIsInitedWareHouse(string wareHouse, string itemNo)
        {
            bool result = false;
            string condition = string.Format("WareHouse='{0}' And ItemNo='{1}' ", wareHouse, itemNo);
            result = baseDal.IsExistRecord(condition);
            return result;
        }
                        
        /// <summary>
        /// ��ʼ���ⷿ��Ϣ
        /// </summary>
        /// <param name="detailInfo">������ϸ��Ϣ</param>
        /// <param name="quantity">�ڳ�����</param>
        /// <param name="wareHouse">�ⷿ����</param>
        /// <returns></returns>
        public bool InitStockQuantity(ItemDetailInfo detailInfo, int quantity, string wareHouse)
        {
             IStock dal = baseDal as IStock;
             return dal.InitStockQuantity(detailInfo, quantity, wareHouse);
        }

        /// <summary>
        /// ���ӿ��
        /// </summary>
        /// <param name="ItemNo">�������</param>
        /// <param name="itemName">��������</param>
        /// <param name="quantity">�������</param>
        /// <returns></returns>
        public bool AddStockQuantiy(string ItemNo, string itemName, int quantity, string wareHouse)
        {
            IStock dal = baseDal as IStock;
            return dal.AddStockQuantiy(ItemNo, itemName, quantity, wareHouse);
        }

        /// <summary>
        /// ���߿��Ԥ��״̬
        /// </summary>
        /// <param name="wareHouse"></param>
        /// <returns></returns>
        public bool CheckStockHighWarning(string wareHouse)
        {
            bool result = false;
            string condition = string.Format("WareHouse='{0}' ", wareHouse);
            IStock dal = baseDal as IStock;
            List<StockInfo> stockList = dal.Find(condition);
            foreach (StockInfo info in stockList)
            {
                if (info.HighWarning > 0 && info.StockQuantity >= info.HighWarning)
                {
                    result = true;
                }
            }

            return result;
        }

        /// <summary>
        /// �����ĵͿ��Ԥ���������Ԥ������True������False
        /// </summary>
        /// <returns></returns>
        public bool CheckStockLowWarning(string wareHouse)
        {
            bool result = false;
            string condition = string.Format("WareHouse='{0}' ", wareHouse);
            IStock dal = baseDal as IStock;
            List<StockInfo> stockList = dal.Find(condition);
            foreach (StockInfo info in stockList)
            {
                if (info.LowWarning > 0 && info.StockQuantity <= info.LowWarning)
                {
                    result = true;
                }
            }

            return result;
        }

        /// <summary>
        /// ���ݱ�����Ż�ȡ�ⷿ��Ϣ
        /// </summary>
        /// <returns></returns>
        public StockInfo FindByItemNo(string itemNo, string wareHouse)
        {
            string condition = string.Format("ItemNo ='{0}' AND WareHouse='{1}'", itemNo, wareHouse);
            return baseDal.FindSingle(condition);
        }

        /// <summary>
        /// ���ݱ�����Ż�ȡ�ⷿ��Ϣ
        /// </summary>
        /// <returns></returns>
        public StockInfo FindByItemNo(string itemNo)
        {
            string condition = string.Format("ItemNo ='{0}' ", itemNo);
            return baseDal.FindSingle(condition);
        }

        /// <summary>
        /// ���ݱ��������ѯ�������
        /// </summary>
        /// <returns></returns>
        public int GetStockQuantity(string itemNo, string wareHouse)
        {
            int result = 0;
            StockInfo stockInfo = FindByItemNo(itemNo, wareHouse);
            if (stockInfo != null)
            {
                result = stockInfo.StockQuantity;
            }
            return result;
        }
                        
        /// <summary>
        /// ��ȡ�������ƵĿ�������б�
        /// </summary>
        /// <param name="condition"></param>
        /// <returns></returns>
        public DataTable GetItemStockQuantityReport(string condition, string fieldName)
        {
            IStock dal = baseDal as IStock;
            return dal.GetItemStockQuantityReport(condition, fieldName);
        }
    }
}
