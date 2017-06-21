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
    /// 中国省份业务对象类
    /// </summary>
	public class Sysparameter : BaseBLL<SysparameterInfo>
    {
        public Sysparameter()
            : base()
        {
            base.Init(this.GetType().FullName, System.Reflection.Assembly.GetExecutingAssembly().GetName().Name);

            baseDal.OnOperationLog += new OperationLogEventHandler(OperationLog.OnOperationLog);//如果需要记录操作日志，则实现这个事件
        }

        public List<SysparameterInfo> GetSysparameterBysysId(int sysId)
        {
            ISysparameter dal = baseDal as ISysparameter;
            return dal.GetSysparameterBysysId(sysId);
        }

        public Int32 UpdateSysparameter(List<SysparameterInfo> info)
        {
            ISysparameter dal = baseDal as ISysparameter;
            return dal.UpdateSysparameter(info);
        }
    }
}
