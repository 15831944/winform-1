using System;
using System.Collections;
using System.Data;
using System.Data.Common;
using System.Collections.Generic;
using JCodes.Framework.Common;
using JCodes.Framework.Entity;
using JCodes.Framework.Common.Framework;
using JCodes.Framework.jCodesenum;
using JCodes.Framework.IDAL;

namespace JCodes.Framework.BLL
{
    /// <summary>
    /// 记录操作日志的数据表配置
    /// </summary>
	public class OperationLogSetting : BaseBLL<OperationLogSettingInfo>
    {
        private IOperationLogSetting dal = null;

        public OperationLogSetting() : base()
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

            dal = baseDal as IOperationLogSetting;
        }

        /// <summary>
        /// 判断指定的表名称是否需要记录操作日志（是否在配置表里面，并是有效状态）
        /// </summary>
        /// <param name="tablename">表名称</param>
        /// <returns></returns>
        public bool IsTableNeedtoLog(string tablename, DbTransaction trans = null)
        {
            string condition = string.Format("TableName = '{0}' and IsForbid = {1} ", tablename, (short)IsForbid.是);
            return IsExistRecord(condition, trans);
        }

        /// <summary>
        /// 根据数据库表名称获取配置信息
        /// </summary>
        /// <param name="tablename">数据库表名</param>
        /// <returns></returns>
        public OperationLogSettingInfo FindByTableName(string tablename, DbTransaction trans = null)
        {
            string condition = string.Format("TableName = '{0}' and IsForbid = {1} ", tablename, (short)IsForbid.是);
             return FindSingle(condition, trans);
        }

        /// <summary>
        /// 获取数据库的所有表名称
        /// </summary>
        /// <returns></returns>
        public List<string> GetTableNames()
        {
            return baseDal.GetTableNames();
        }
    }
}
