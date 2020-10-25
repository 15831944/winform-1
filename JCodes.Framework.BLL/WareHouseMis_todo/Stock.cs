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
    public class Stock : BaseBLL<WareInfo>
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
            IWare dal = baseDal as IWare;
            return dal.GetCurrentStockReport(condition);
        }

        /// <summary>
        /// ��ȡ���ڿ�汨��ļ�¼����
        /// </summary>
        /// <param name="condition"></param>
        /// <returns></returns>
        public int GetCurrentStockReportCount(string condition)
        {
            IWare dal = baseDal as IWare;
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
        public bool InitStockQuantity(ItemDetailInfo detailInfo, int quantity, Int32 wareHouseId)
        {
             IWare dal = baseDal as IWare;
             return dal.InitStockQuantity(detailInfo, quantity, wareHouseId);
        }

        /// <summary>
        /// ���ӿ��
        /// </summary>
        /// <param name="ItemNo">�������</param>
        /// <param name="itemName">��������</param>
        /// <param name="quantity">�������</param>
        /// <returns></returns>
        public bool AddStockQuantiy(string ItemNo, string itemName, int quantity, Int32 wareHouseId)
        {
            IWare dal = baseDal as IWare;
            return dal.AddStockQuantiy(ItemNo, itemName, quantity, wareHouseId);
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
            IWare dal = baseDal as IWare;
            List<WareInfo> stockList = dal.Find(condition);
            foreach (WareInfo info in stockList)
            {
                if (info.HighAmountWarning > 0 && info.Amount >= info.HighAmountWarning)
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
            IWare dal = baseDal as IWare;
            List<WareInfo> stockList = dal.Find(condition);
            foreach (WareInfo info in stockList)
            {
                if (info.LowAmountWarning > 0 && info.Amount <= info.LowAmountWarning)
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
        public WareInfo FindByItemNo(string itemNo, string wareHouse)
        {
            string condition = string.Format("ItemNo ='{0}' AND WareHouse='{1}'", itemNo, wareHouse);
            return baseDal.FindSingle(condition);
        }

        /// <summary>
        /// ���ݱ�����Ż�ȡ�ⷿ��Ϣ
        /// </summary>
        /// <returns></returns>
        public WareInfo FindByItemNo(string itemNo)
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
            WareInfo wareInfo = FindByItemNo(itemNo, wareHouse);
            if (wareInfo != null)
            {
                result = wareInfo.Amount;
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
            IWare dal = baseDal as IWare;
            return dal.GetItemStockQuantityReport(condition, fieldName);
        }
    }
}
