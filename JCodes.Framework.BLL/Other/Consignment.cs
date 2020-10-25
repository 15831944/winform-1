using System.Collections.Generic;
using JCodes.Framework.IDAL;
using JCodes.Framework.Common.Framework;
using System;
using JCodes.Framework.Entity;

namespace JCodes.Framework.BLL
{
    /// <summary>
    /// ����ҵ�������
    /// </summary>
	public class Consignment : BaseBLL<ConsignmentInfo>
    {
        private IConsignment dal = null;

        public Consignment()
            : base()
        {
            if (isMultiDatabase)
            {
                base.Init(this.GetType().FullName, System.Reflection.Assembly.GetExecutingAssembly().GetName().Name, dicmultiDatabase[this.GetType().Name].ToString());
            }
            else
            {
                base.Init(this.GetType().FullName, System.Reflection.Assembly.GetExecutingAssembly().GetName().Name);
            }

            baseDal.OnOperationLog += new OperationLogEventHandler(OperationLog.OnOperationLog);//�����Ҫ��¼������־����ʵ������¼�

            dal = baseDal as IConsignment;
        }

       
        /// <summary>
        /// ����ʡ�����ƻ�ȡ��Ӧ�ĳ����б�
        /// </summary>
        /// <param name="provinceName">ʡ������</param>
        /// <returns></returns>
        public List<ConsignmentInfo> GetAllConsignmentInfo(string condition)
        {
            return dal.Find(condition);
        }

        /// <summary>
        /// ɾ����¼
        /// </summary>
        /// <param name="Id"></param>
        /// <returns></returns>
        public bool DeleteConsignmentById(Int32 Id)
        {
            return dal.DeleteByCondition(string.Format(" Id = {0}", Id));
        }

        /// <summary>
        /// �޸ļ�¼
        /// </summary>
        /// <param name="consignmentInfo"></param>
        /// <returns></returns>
        public Int32 UpdateConsignmentById(ConsignmentInfo consignmentInfo) {
            return dal.UpdateConsignmentById(consignmentInfo);
        }

        public Int32 InsertConsignment(ConsignmentInfo consignmentInfo) {
            return dal.InsertConsignment(consignmentInfo);
        }

        public Int32 GetMaxId() {
            return dal.GetMaxId();
        }
    }
}
