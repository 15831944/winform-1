﻿using JCodes.Framework.IDAL;
using JCodes.Framework.Common.Framework;
using JCodes.Framework.Entity;

namespace JCodes.Framework.BLL
{
	/// <summary>
	/// 已取得批文未发行债券项目更新状态数据业务对象类
	/// </summary>
	public class UnissuedBondUpdateData : BaseBLL<UnissuedBondUpdateDataInfo>
	{
		private IUnissuedBondUpdateData dal = null;

		public UnissuedBondUpdateData() : base()
		{
			if (isMultiDatabase)
			{
				base.Init(this.GetType().FullName, System.Reflection.Assembly.GetExecutingAssembly().GetName().Name, dicmultiDatabase[this.GetType().Name].ToString());
			}
			else
			{
			base.Init(this.GetType().FullName, System.Reflection.Assembly.GetExecutingAssembly().GetName().Name);
			}

			baseDal.OnOperationLog += new OperationLogEventHandler(OperationLog.OnOperationLog);//如果需要记录操作日志，则实现这个事件

			dal = baseDal as IUnissuedBondUpdateData;
		}
	}
}