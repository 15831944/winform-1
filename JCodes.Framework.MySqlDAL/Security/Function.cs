﻿using System;
using System.Collections;
using System.Data;
using System.Data.Common;
using System.Collections.Generic;
using Microsoft.Practices.EnterpriseLibrary.Data;
using JCodes.Framework.Common;
using JCodes.Framework.Entity;
using JCodes.Framework.IDAL;
using JCodes.Framework.Common.Framework.BaseDAL;
using JCodes.Framework.Common.Databases;

namespace JCodes.Framework.MySqlDAL
{
    /// <summary>
    /// 系统功能定义
    /// </summary>
    public class Function : BaseDALMySql<FunctionsInfo>, IFunctions
    {
        #region 对象实例及构造函数

        public static Function Instance
        {
            get
            {
                return new Function();
            }
        }
        public Function()
            : base(MySqlPortal.gc._securityTablePre + "Function", "ID")
        {
            this.sortField = "Seq";
            this.isDescending = false;
        }

        #endregion

        /// <summary>
        /// 将DataReader的属性值转化为实体类的属性值，返回实体类
        /// </summary>
        /// <param name="dr">有效的DataReader对象</param>
        /// <returns>实体类对象</returns>
        protected override FunctionsInfo DataReaderToEntity(IDataReader dataReader)
        {
            FunctionsInfo info = new FunctionsInfo();
            SmartDataReader reader = new SmartDataReader(dataReader);

            /*info.ID = reader.GetString("ID");
            info.PID = reader.GetString("PID");
            info.Name = reader.GetString("Name");
            info.FunctionId = reader.GetString("FunctionId");
            info.SystemType_ID = reader.GetString("SystemType_ID");
            info.Seq = reader.GetString("Seq");*/

            return info;
        }

        /// <summary>
        /// 将实体对象的属性值转化为Hashtable对应的键值
        /// </summary>
        /// <param name="obj">有效的实体对象</param>
        /// <returns>包含键值映射的Hashtable</returns>
        protected override Hashtable GetHashByEntity(FunctionsInfo obj)
        {
            FunctionsInfo info = obj as FunctionsInfo;
            Hashtable hash = new Hashtable();

            /*hash.Add("ID", info.ID);
            hash.Add("PID", info.PID);
            hash.Add("Name", info.Name);
            hash.Add("FunctionId", info.FunctionId);
            hash.Add("SystemType_ID", info.SystemType_ID);
            hash.Add("Seq", info.Seq);*/

            return hash;
        }

        /// <summary>
        /// 获取字段中文别名（用于界面显示）的字典集合
        /// </summary>
        /// <returns></returns>
        public override Dictionary<string, string> GetColumnNameAlias()
        {
            Dictionary<string, string> dict = new Dictionary<string, string>();
            #region 添加别名解析
            /*dict.Add("ID", "编号");
            dict.Add("PID", "父ID");
            dict.Add("Name", "功能名称");
            dict.Add("FunctionId", "功能ID");
            dict.Add("SystemType_ID", "系统编号");
            dict.Add("Seq", "排序");*/
            #endregion

            return dict;
        }

        /// <summary>
        /// 重写删除操作，把下面的节点提到上一级
        /// </summary>
        /// <param name="key"></param>
        /// <returns></returns>
        public override bool DeleteByUser(object key, Int32 userId, DbTransaction trans = null)
        {
            FunctionsInfo info = this.FindById(key, trans);
            if (info != null)
            {
                string sql = string.Format("UPDATE {2} SET Pgid='{0}' Where Pgid='{1}' ", info.Pgid, key, tableName);
                SqlExecute(sql, trans);

                base.DeleteByUser(key, userId, trans);
                return true;
            }

            return false;
        }

        /// <summary>
        /// 删除指定节点及其子节点。如果该节点含有子节点，子节点也会一并删除
        /// </summary>
        /// <param name="mainID">节点ID</param>
        /// <returns></returns>
        public bool DeleteWithSubNode(string mainID, Int32 userId )
        {
            //只获取ID、PID所需字段，提高效率
            string sql = string.Format("Select ID,PID From {0} Order By Pgid ", tableName);
            DataTable dt = SqlTable(sql);

            List<string> list = new List<string>();
            list.AddRange(GetSubNodeIdList(mainID, dt));
            list.Add(mainID);

            //根据返回的ID集合，逐一删除
            foreach (string id in list)
            {
                base.DeleteByUser(id, userId);
            }
            return true;
        }

        /// <summary>
        /// 递归获取指定PID的子节点的ID集合
        /// </summary>
        /// <param name="pid">PID</param>
        /// <param name="dt">所有集合，包含ID、PID</param>
        /// <returns></returns>
        private List<string> GetSubNodeIdList(string pid, DataTable dt)
        {
            List<string> list = new List<string>();

            DataRow[] dataRows = dt.Select(string.Format(" PID = '{0}'", pid));
            for (int i = 0; i < dataRows.Length; i++)
            {
                string id = dataRows[i]["ID"].ToString();
                list.Add(id);

                list.AddRange(GetSubNodeIdList(id, dt));//递归获取
            }
            return list;
        }

        public List<FunctionsInfo> GetFunctions(string roleIDs, string typeID)
        {
            string sql = string.Format( @"SELECT * FROM {0}Function 
            INNER JOIN {0}Role_Function On {0}Function.ID={0}Role_Function.Function_ID WHERE Role_ID IN ({1})", MySqlPortal.gc._securityTablePre, roleIDs);
            if (typeID.Length > 0)
            {
                sql = sql + string.Format(" AND SystemType_ID='{0}' ", typeID);
            }
            return this.GetList(sql, null);
        }

        public List<FunctionNodeInfo> GetFunctionNodes(string roleIDs, string typeID)
        {
            string sql = string.Format( @"SELECT * FROM {0}Function 
            INNER JOIN {0}Role_Function On {0}Function.ID={0}Role_Function.Function_ID WHERE Role_ID IN ({1})", MySqlPortal.gc._securityTablePre, roleIDs);
            if (typeID.Length > 0)
            {
                sql = sql + string.Format(" AND SystemType_ID='{0}' ", typeID);
            }

            List<FunctionNodeInfo> arrReturn = new List<FunctionNodeInfo>();
            DataTable dt = base.SqlTable(sql);
            string seq = string.Format("{0} {1}", GetSafeFileName(sortField), isDescending ? "DESC" : "ASC");
            DataRow[] dataRows = dt.Select(string.Format(" PID = '{0}' ", -1), seq);
            for (int i = 0; i < dataRows.Length; i++)
            {
                string id = dataRows[i]["ID"].ToString();
                FunctionNodeInfo menuNodeInfo = GetNode(id, dt);
                arrReturn.Add(menuNodeInfo);
            }

            return arrReturn;
        }
        public List<FunctionsInfo> GetFunctionsByRoleId(Int32 roleId)
        {
            string sql = string.Format(@"SELECT * FROM {0}Function 
            LEFT JOIN {0}Role_Function On {0}Function.ID={0}Role_Function.Function_ID WHERE Role_ID = {1}", MySqlPortal.gc._securityTablePre, roleId);
            return this.GetList(sql, null);
        }

        /// <summary>
        /// 获取树形结构的功能列表
        /// </summary>
        public List<FunctionNodeInfo> GetTree(string systemType)
        {
            string condition = !string.IsNullOrEmpty(systemType) ? string.Format("Where SystemType_ID='{0}'", systemType) : "";
            List<FunctionNodeInfo> arrReturn = new List<FunctionNodeInfo>();
            string sql = string.Format("Select * From {0} {1} Order By PID, Name ", tableName, condition);

            DataTable dt = base.SqlTable(sql);
            string sort = string.Format("{0} {1}", GetSafeFileName(sortField), isDescending ? "DESC" : "ASC");
            DataRow[] dataRows = dt.Select(string.Format(" PID = '{0}' ", -1), sort);
            for (int i = 0; i < dataRows.Length; i++)
            {
                string id = dataRows[i]["ID"].ToString();
                FunctionNodeInfo menuNodeInfo = GetNode(id, dt);
                arrReturn.Add(menuNodeInfo);
            }

            return arrReturn;
        }

        /// <summary>
        /// 获取指定功能下面的树形列表
        /// </summary>
        /// <param name="id">指定功能ID</param>
        public List<FunctionNodeInfo> GetTreeById(string mainId)
        {
            List<FunctionNodeInfo> arrReturn = new List<FunctionNodeInfo>();
            string sql = string.Format("Select * From {0} Order By PID, Name ", tableName);

            DataTable dt = SqlTable(sql);
            string sort = string.Format("{0} {1}", GetSafeFileName(sortField), isDescending ? "DESC" : "ASC");
            DataRow[] dataRows = dt.Select(string.Format(" PID = '{0}'", mainId), sort);
            for (int i = 0; i < dataRows.Length; i++)
            {
                string id = dataRows[i]["ID"].ToString();
                FunctionNodeInfo menuNodeInfo = GetNode(id, dt);
                arrReturn.Add(menuNodeInfo);
            }

            return arrReturn;
        }

        /// <summary>
        /// 根据角色获取树形结构的功能列表
        /// </summary>
        public List<FunctionNodeInfo> GetTreeWithRole(string systemType, List<int> roleList)
        {
            List<FunctionNodeInfo> list = new List<FunctionNodeInfo>();
            if (roleList.Count > 0)
            {
                string roleString = string.Join(",", roleList);

                string sql = string.Format(@"SELECT F.* FROM {0}Function AS F 
                INNER JOIN {0}Role_Function AS RF ON F.ID = RF.Function_ID
                WHERE RF.Role_ID IN ({1}) AND F.SystemType_ID = '{2}' Order By PID, Name ",MySqlPortal.gc._securityTablePre, roleString, systemType);

                DataTable dt = base.SqlTable(sql);
                string seq = string.Format("{0} {1}", GetSafeFileName(sortField), isDescending ? "DESC" : "ASC");
                DataRow[] dataRows = dt.Select(string.Format(" PID = '{0}' ", -1), seq);
                for (int i = 0; i < dataRows.Length; i++)
                {
                    string id = dataRows[i]["ID"].ToString();
                    FunctionNodeInfo menuNodeInfo = GetNode(id, dt);
                    list.Add(menuNodeInfo);
                }
            }
            return list;
        }

        private FunctionNodeInfo GetNode(string id, DataTable dt)
        {
            FunctionsInfo menuInfo = this.FindById(id);
            FunctionNodeInfo menuNodeInfo = new FunctionNodeInfo(menuInfo);

            string sort = string.Format("{0} {1}", GetSafeFileName(sortField), isDescending ? "DESC" : "ASC");
            DataRow[] dChildRows = dt.Select(string.Format(" PID='{0}'", id), sort);

            for (int i = 0; i < dChildRows.Length; i++)
            {
                string childId = dChildRows[i]["ID"].ToString();
                FunctionNodeInfo childNodeInfo = GetNode(childId, dt);
                menuNodeInfo.Children.Add(childNodeInfo);
            }
            return menuNodeInfo;
        }

        /// <summary>
        /// 根据指定的父ID获取其下面一级（仅限一级）的菜单列表
        /// </summary>
        /// <param name="pgid">菜单父ID</param>
        public List<FunctionsInfo> GetFunctionByPgid(string pgid)
        {
            string sql = string.Format(@"Select t.*,case pid when '-1' then '0' else pid end as parentId From {1} t 
                                         Where  PID='{0}' Order By Seq ", pgid, tableName);
            return GetList(sql, null);
        }
    }
}