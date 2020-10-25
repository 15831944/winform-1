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
	public class Province : BaseBLL<ProvinceInfo>
    {
        private IProvince dal = null;

        public Province() : base()
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

            dal = baseDal as IProvince;
        }
    }
}
