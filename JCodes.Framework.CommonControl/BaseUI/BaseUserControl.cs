﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using JCodes.Framework.Common;
using JCodes.Framework.jCodesenum.BaseEnum;
using JCodes.Framework.CommonControl.PlugInInterface;
using JCodes.Framework.Common.Office;
using JCodes.Framework.CommonControl.Other;

namespace JCodes.Framework.CommonControl.BaseUI
{
    /// <summary>
    /// 自定义控件基类
    /// </summary>
    public partial class BaseUserControl : XtraUserControl, IFunction
    {
        /// <summary>
        /// 子窗体数据保存的触发
        /// </summary>
        public event EventHandler OnDataSaved;

        /// <summary>
        /// 可操作性公司
        /// 需要在前面加上括号 字段名 + canOptCompanyID + 括号
        /// 如: "and ( CompanyID " +  canOptCompanyID + ") "
        /// </summary>
        public string canOptCompanyID { get; set; }

        /// <summary>
        /// 可操作部门
        /// 需要在前面加上括号 字段名 + canOptDeptId + 括号
        /// 如: "and ( DeptId " +  canOptDeptId + ") "
        /// </summary>
        public string canOptDeptId { get; set; }

        /// <summary>
        /// 默认构造函数
        /// </summary>
        public BaseUserControl()
        {
            InitializeComponent();

            if (!this.DesignMode)
            {
                //为了保证一些界面控件的权限控制和身份确认，以及简化操作，在界面初始化的时候，从缓存里面内容（如果存在的话）
                //继承的子模块，也可以通过InitFunction()进行指定用户相关信息
                this.LoginUserInfo = Cache.Instance["LoginUserInfo"] as LoginUserInfo;
                this.FunctionDict = Cache.Instance["FunctionDict"] as Dictionary<string, string>;

                // 进行数据过滤的Sql条件
                this.canOptCompanyID = Cache.Instance["canOptCompanyID"] as string;
                this.canOptDeptId = Cache.Instance["canOptDeptId"] as string;
            }
        }

        /// <summary>
        /// 初始化权限控制信息
        /// </summary>
        public void InitFunction(LoginUserInfo userInfo, Dictionary<string, string> functionDict)
        {
            if (userInfo != null)
            {
                this.LoginUserInfo = userInfo;
            }
            if (functionDict != null && functionDict.Count > 0)
            {
                this.FunctionDict = functionDict;
            }
        }

        /// <summary>
        /// 是否具有访问指定控制ID的权限
        /// </summary>
        /// <param name="functionId">功能控制ID</param>
        /// <returns></returns>
        public bool HasFunction(string functionId)
        {
            bool result = false;
            if (string.IsNullOrEmpty(functionId))
            {
                result = true;
            }
            else if (FunctionDict != null && FunctionDict.ContainsKey(functionId))
            {
                result = true;
            }
            return result;
        }


        /// <summary>
        /// 登陆用户基础信息
        /// </summary>
        public LoginUserInfo LoginUserInfo { get; set; }

        /// <summary>
        /// 登录用户具有的功能字典集合
        /// </summary>
        public Dictionary<string, string> FunctionDict { get; set; }

        private AppInfo m_AppInfo = new AppInfo();
        /// <summary>
        /// 应用程序基础信息
        /// </summary>
        public AppInfo AppInfo
        {
            get { return m_AppInfo; }
            set { this.m_AppInfo = value; }
        }
    }
}
