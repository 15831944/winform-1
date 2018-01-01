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
    /// <summary>
    /// ����ҵ�������
    /// </summary>
    public class GeneralSql : BaseBLL<BaseEntity>
    {
        public GeneralSql()
            : base()
        {
            base.Init(this.GetType().FullName, System.Reflection.Assembly.GetExecutingAssembly().GetName().Name);
        }

        /// <summary>
        /// ͨ�ò�ѯ
        /// </summary>
        /// <param name="sql">��ѯSql</param>
        /// <param name="count">��ѯ����</param>
        /// <param name="orderBy">��������</param>
        /// <returns></returns>
        public DataTable GetSqlTable(string sql)
        {
            IGeneralSql dal = baseDal as IGeneralSql;
            return dal.SqlTable(sql);
        }
    }
}
