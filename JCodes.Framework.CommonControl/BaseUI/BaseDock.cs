﻿using JCodes.Framework.Common;
using JCodes.Framework.Common.Office;
using JCodes.Framework.CommonControl.Other;
using JCodes.Framework.CommonControl.PlugInInterface;
using JCodes.Framework.jCodesenum.BaseEnum;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace JCodes.Framework.CommonControl.BaseUI
{
    /// <summary>
    /// 用于一般列表界面的基类
    /// </summary>
    public partial class BaseDock : DevExpress.XtraEditors.XtraForm, IFunction
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

        public BaseDock()
        {
            InitializeComponent();
            //为了保证一些界面控件的权限控制和身份确认，以及简化操作，在界面初始化的时候，从缓存里面内容（如果存在的话）
            //继承的子模块，也可以通过InitFunction()进行指定用户相关信息
            this.LoginUserInfo = Cache.Instance["LoginUserInfo"] as LoginUserInfo;
            this.FunctionDict = Cache.Instance["FunctionDict"] as Dictionary<string, string>;
            // 进行数据过滤的Sql条件
            this.canOptCompanyID = Cache.Instance["canOptCompanyID"] as string;
            this.canOptDeptId = Cache.Instance["canOptDeptId"] as string;
        }

        /// <summary>
        /// 处理数据保存后的事件触发
        /// </summary>
        public virtual void ProcessDataSaved(object sender, EventArgs e)
        {
            if (OnDataSaved != null)
            {
                OnDataSaved(sender, e);
            }
        }

        /// <summary>
        /// 可供重写的窗体加载函数，子窗体特殊处理只需重写该函数
        /// </summary>
        public virtual void FormOnLoad()
        {
        }

        protected override void OnControlAdded(ControlEventArgs e)
        {       
            if (!this.DesignMode)
            {
                System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(BaseDock));
                base.OnControlAdded(e);
            }

        }

        protected override void OnLoad(EventArgs e)
        {
            if (!this.DesignMode)
            {
                System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(BaseDock));

                this.StartPosition = FormStartPosition.CenterScreen;
                base.OnLoad(e);
            }
        }


        private void BaseForm_Load(object sender, EventArgs e)
        {
            if (!this.DesignMode)
            {
                // 设置鼠标繁忙状态
                this.Cursor = Cursors.WaitCursor;
                try
                {
                    this.FormOnLoad();
                }
                catch (Exception ex)
                {
                    LogHelper.WriteLog(LogLevel.LOG_LEVEL_CRIT, ex, typeof(BaseDock));
                    MessageDxUtil.ShowError(ex.Message);
                }
                finally
                {
                    // 设置鼠标默认状态
                    this.Cursor = Cursors.Default;
                }
            }
        }

        private void BaseForm_KeyUp(object sender, KeyEventArgs e)
        {
            switch (e.KeyCode)
            {
                case Keys.F5://刷新
                    this.FormOnLoad();
                    break;
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
        /// <param name="controlId">功能控制ID</param>
        /// <returns></returns>
        public bool HasFunction(string controlId)
        {
            bool result = false;
            if (string.IsNullOrEmpty(controlId))
            {
                result = true;
            }
            else if (FunctionDict != null && FunctionDict.ContainsKey(controlId))
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
