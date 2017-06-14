﻿using JCodes.Framework.BLL;
using JCodes.Framework.Common;
using JCodes.Framework.Common.Framework;
using JCodes.Framework.CommonControl;
using JCodes.Framework.CommonControl.BaseUI;
using JCodes.Framework.CommonControl.Other;
using JCodes.Framework.Entity;
using JCodes.Framework.jCodesenum.BaseEnum;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace JCodes.Framework.AddIn.UI.Dictionary
{
    public partial class FrmEditCity : BaseDock
    {        
        public string ID = string.Empty;
        public string LoginID = "";//登陆用户ID 
        private CityInfo tempInfo = new CityInfo();

        public FrmEditCity()
        {
            InitializeComponent();
        }

        private void btnOK_Click(object sender, EventArgs e)
        {
            tempInfo.CityName = this.txtCity.Text;
            tempInfo.ProvinceID = Convert.ToInt32(this.txtProvince.Tag.ToString());

            try
            {
                bool succeed = false;
                if (string.IsNullOrEmpty(ID))
                {
                    succeed = BLLFactory<City>.Instance.Insert(tempInfo);
                }
                else
                {
                    succeed = BLLFactory<City>.Instance.Update(tempInfo, tempInfo.ID);
                }

                ProcessDataSaved(this.btnOK, new EventArgs());
                this.DialogResult = System.Windows.Forms.DialogResult.OK;
            }
            catch (Exception ex)
            {
                LogHelper.WriteLog(LogLevel.LOG_LEVEL_CRIT, ex, typeof(FrmEditCity));
                MessageDxUtil.ShowError(ex.Message);
            }
        }

        private void FrmEditCity_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(ID))
            {
                CityInfo info = BLLFactory<City>.Instance.FindByID(ID);
                if (info != null)
                {
                    tempInfo = info;
                    this.txtCity.Text = info.CityName;
                }
            }
        }
    }
}
