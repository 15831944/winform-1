using System;
using System.Collections;
using System.Data;
using System.Data.Common;
using System.Collections.Generic;
using JCodes.Framework.Common;
using JCodes.Framework.Entity;
using JCodes.Framework.jCodesenum.BaseEnum;
using JCodes.Framework.IDAL;
using JCodes.Framework.Common.Framework;
using JCodes.Framework.Common.Databases;
using JCodes.Framework.Common.Format;

namespace JCodes.Framework.BLL
{
    public class PurchaseHeader : BaseBLL<PurchaseHeaderInfo>
    {
        public PurchaseHeader()
            : base()
        {
            base.Init(this.GetType().FullName, System.Reflection.Assembly.GetExecutingAssembly().GetName().Name);
        }

        /// <summary>
        /// ������ǰ׺2λ+����������8λ+���ݿ�����4λ+�������2λ
        /// </summary>
        /// <param name="isPurchase">���ΪTrue���������ΪFalse</param>
        /// <returns></returns>
        public string GetHandNumber(bool isPurchase)
        {
            //��ȡ����Ľ������� + 1
            SearchCondition condition = new SearchCondition();
            condition.AddCondition("CreateDate", Convert.ToDateTime(DateTimeHelper.GetServerDate()), SqlOperator.MoreThanOrEqual);
            string filter = condition.BuildConditionSql().Replace("Where", "");
            int count = baseDal.GetRecordCount(filter);
            count += 1;

            string result = string.Format("{0}{1}{2}{3}", isPurchase ? "RK" : "CK",
                DateTimeHelper.GetServerDateTime2().ToString("yyyyMMdd"), count.ToString().PadLeft(4, '0'),
                new Random().Next(100).ToString().PadLeft(2, '0'));
            return result;
        }

        /// <summary>
        /// ��ȡ�ɹ�������
        /// </summary>
        /// <param name="condition"></param>
        /// <returns></returns>
        public DataTable GetPurchaseReport(string condition)
        {
            IPurchaseHeader dal = baseDal as IPurchaseHeader;
            return dal.GetPurchaseReport(condition);
        }

        /// <summary>
        /// ��ȡ�����ֶε�����б����ظ���
        /// </summary>
        /// <param name="fieldName">�����ֶ�</param>
        /// <returns></returns>
        public List<string> GetYearList(string fieldName)
        {
            IPurchaseHeader dal = baseDal as IPurchaseHeader;
            return dal.GetYearList(fieldName);
        }

        /// <summary>
        /// ��ȡָ����������⡢��������
        /// </summary>
        /// <param name="condition">��ѯ����</param>
        /// <param name="isIn">��⻹�ǳ��⣬trueΪ��⣬����Ϊ����</param>
        /// <returns></returns>
        public int GetPurchaseQuantity(string condition, bool isIn)
        {
            IPurchaseHeader dal = baseDal as IPurchaseHeader;
            return dal.GetPurchaseQuantity(condition, isIn);
        }
    }
}
