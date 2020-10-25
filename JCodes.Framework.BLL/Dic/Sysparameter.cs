using System;
using System.Collections;
using System.Data;
using System.Data.Common;
using System.Collections.Generic;
using JCodes.Framework.Common;
using JCodes.Framework.Entity;
using JCodes.Framework.Common.Framework;
using JCodes.Framework.IDAL;

namespace JCodes.Framework.BLL
{
    /// <summary>
    /// �й�ʡ��ҵ�������
    /// </summary>
	public class Sysparameter : BaseBLL<SysparameterInfo>
    {
        private ISysparameter dal = null;

        public Sysparameter()
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

            dal = baseDal as ISysparameter;
        }

        public List<SysparameterInfo> GetSysparameterBysysId(int sysId)
        {
            return dal.GetSysparameterBysysId(sysId);
        }

        public Int32 UpdateSysparameter(List<SysparameterInfo> info)
        {
            return dal.UpdateSysparameter(info);
        }


        /// <summary>
        /// �жϴ��û��Ƿ�Ϊ��������Ա
        /// </summary>
        /// <param name="userName">��½�û���</param>
        /// <returns>true Ϊ��������Ա��falseΪ��ͨ�û�</returns>
        public bool UserIsSuperAdmin(String userName)
        {
            string sql = "Id=1 and SysId = 1";
            SysparameterInfo oneSysparameterInfo = dal.FindSingle(sql);
            if (oneSysparameterInfo == null)
                return false;

            return string.Equals(userName, oneSysparameterInfo.SysValue);
        }
    }
}
