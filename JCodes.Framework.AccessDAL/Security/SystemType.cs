﻿using System;
using System.Collections;
using System.Data;
using System.Data.Common;
using Microsoft.Practices.EnterpriseLibrary.Data;
using JCodes.Framework.Common;
using JCodes.Framework.Entity;
using JCodes.Framework.IDAL;
using JCodes.Framework.Common.Framework.BaseDAL;
using JCodes.Framework.Common.Databases;

namespace JCodes.Framework.AccessDAL
{
    public class SystemType : BaseDALAccess<SystemTypeInfo>, ISystemType
    {
        #region 对象实例及构造函数

        public static SystemType Instance
        {
            get
            {
                return new SystemType();
            }
        }
        public SystemType()
            : base(AccessPortal.gc._securityTablePre+"SystemType", "OID")
        {
            SortField = "OID";
        }

        #endregion

        /// <summary>
        /// 将DataReader的属性值转化为实体类的属性值，返回实体类
        /// </summary>
        /// <param name="dr">有效的DataReader对象</param>
        /// <returns>实体类对象</returns>
        protected override SystemTypeInfo DataReaderToEntity(IDataReader dataReader)
        {
            SystemTypeInfo systemTypeInfo = new SystemTypeInfo();
            SmartDataReader reader = new SmartDataReader(dataReader);

            systemTypeInfo.OID = reader.GetString("OID");
            systemTypeInfo.Name = reader.GetString("Name");
            systemTypeInfo.CustomID = reader.GetString("CustomID");
            systemTypeInfo.Authorize = reader.GetString("Authorize");
            systemTypeInfo.Note = reader.GetString("Note");

            return systemTypeInfo;
        }

        /// <summary>
        /// 将实体对象的属性值转化为Hashtable对应的键值
        /// </summary>
        /// <param name="obj">有效的实体对象</param>
        /// <returns>包含键值映射的Hashtable</returns>
        protected override Hashtable GetHashByEntity(SystemTypeInfo obj)
        {
            SystemTypeInfo info = obj as SystemTypeInfo;
            Hashtable hash = new Hashtable();

            hash.Add("OID", info.OID);
            hash.Add("Name", info.Name);
            hash.Add("CustomID", info.CustomID);
            hash.Add("Authorize", info.Authorize);
            hash.Add("Note", info.Note);

            return hash;
        }

        /// <summary>
        /// 根据系统OID获取对应的系统信息
        /// </summary>
        /// <param name="oid">系统OID</param>
        /// <returns></returns>
        public SystemTypeInfo FindByOID(string oid)
        {
            string condition = string.Format("OID='{0}'", oid);
            return base.FindSingle(condition);
        }

        public bool VerifySystem(string serialNumber, string typeID, int authorizeAmount)
        {
            Database db = CreateDatabase();
            DbCommand command = null;

            bool flag = false;
            string sql = string.Format("SELECT Count(ID) As Records FROM {0}SystemAuthorize WHERE SystemType_OID='{1}' ", AccessPortal.gc._securityTablePre, typeID);
            command = db.GetSqlStringCommand(sql);
            int num = Convert.ToInt32(db.ExecuteScalar(command).ToString());
            if (num <= authorizeAmount)
            {
                sql = string.Format("SELECT * FROM {0}SystemAuthorize WHERE Content='{1}'  And SystemType_OID='{2}' ", AccessPortal.gc._securityTablePre, serialNumber, typeID);

                command = db.GetSqlStringCommand(sql);
                using (IDataReader reader = db.ExecuteReader(command))
                {
                    flag = reader.Read();
                    reader.Close();
                }

                if (!flag)
                {
                    flag = num < authorizeAmount;
                    if (flag)
                    {
                        sql = string.Format("INSERT INTO {0}SystemAuthorize (SystemType_OID,Content) VALUES ('{1}', '{2}') ", AccessPortal.gc._securityTablePre, typeID, serialNumber);
                        command = db.GetSqlStringCommand(sql);
                        db.ExecuteNonQuery(command);
                    }
                }
            }
            return flag;
        }
    }
}