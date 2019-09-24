using System;
using System.Text;
using System.Data;
using System.Drawing;
using System.Windows.Forms;
using System.ComponentModel;
using System.Collections.Generic;
using JCodes.Framework.Entity;
using JCodes.Framework.Common;
using JCodes.Framework.BLL;
using JCodes.Framework.CommonControl;
using JCodes.Framework.jCodesenum.BaseEnum;
using JCodes.Framework.CommonControl.BaseUI;
using JCodes.Framework.CommonControl.Other;
using JCodes.Framework.Common.Framework;
using JCodes.Framework.CommonControl.Controls;
using JCodes.Framework.AddIn.Basic;

namespace JCodes.Framework.AddIn.Security
{
    public partial class FrmEditSystemType : BaseEditForm
    {
        public FrmEditSystemType()
        {
            InitializeComponent();
        }

        /// <summary>
        /// ʵ�ֿؼ�������ĺ���
        /// </summary>
        /// <returns></returns>
        public override bool CheckInput()
        {
            bool result = true;//Ĭ���ǿ���ͨ��

            #region MyRegion

            if (this.txtOid.Text.Trim().Length == 0)
            {
                MessageDxUtil.ShowWarning(Const.MsgCheckInput + lblOid.Text.Replace(Const.MsgCheckSign, string.Empty));
                this.txtOid.Focus();
                result = false;
            }
            else if (this.txtName.Text.Trim().Length == 0)
            {
                MessageDxUtil.ShowWarning(Const.MsgCheckInput + lblName.Text.Replace(Const.MsgCheckSign, string.Empty));
                this.txtName.Focus();
                result = false;
            }
            #endregion

            return result;
        }

        /// <summary>
        /// ��ʼ�������ֵ�
        /// </summary>
        private void InitDictItem()
        {
            //��ʼ������
        }

        /// <summary>
        /// ������ʾ�ĺ���
        /// </summary>
        public override void DisplayData()
        {
            InitDictItem();//�����ֵ���أ����ã�

            if (Id > 0)
            {
                #region ��ʾ�ͻ���Ϣ
                SystemTypeInfo info = BLLFactory<SystemType>.Instance.FindByID(Id);
                if (info != null)
                {
                    this.txtOid.Text = info.Gid;
                    txtName.Text = info.Name;
                    txtCustomID.Text = info.ConsumerCode;
                    txtAuthorize.Text = info.Licence;
                    txtNote.Text = info.Remark;

                    this.txtOid.Enabled = false;
                }
                #endregion          
            }
            else
            {                 
            }
        }

        /// <summary>
        /// �༭���߱���״̬��ȡֵ����
        /// </summary>
        /// <param name="info"></param>
        private void SetInfo(SystemTypeInfo info)
        {
            info.Name = txtName.Text;
            info.ConsumerCode = txtCustomID.Text;
            info.Licence = txtAuthorize.Text;
            info.Remark = txtNote.Text;
            info.CurrentLoginUserId = Portal.gc.UserInfo.Id;
        }

        /// <summary>
        /// ����״̬�µ����ݱ���
        /// </summary>
        /// <returns></returns>
        public override bool SaveAddNew()
        {
            SystemTypeInfo info = new SystemTypeInfo();
            SetInfo(info);

            try
            {
                #region ��������
                //����Ƿ���������ͬ�ؼ��ֵļ�¼
                bool exist = BLLFactory<SystemType>.Instance.IsExistKey("Gid", info.Gid);
                if (exist)
                {
                    MessageDxUtil.ShowTips("ָ���ġ�ϵͳ��ʶ���Ѿ����ڣ������ظ���ӣ����޸�");
                    return false;
                }

                bool succeed = BLLFactory<SystemType>.Instance.Insert(info);
                if (succeed)
                {
                    //�����������������

                    return true;
                }
                #endregion
            }
            catch (Exception ex)
            {
                LogHelper.WriteLog(LogLevel.LOG_LEVEL_CRIT, ex, typeof(FrmEditSystemType));
                MessageDxUtil.ShowError(ex.Message);
            }
            return false;
        }

        /// <summary>
        /// �༭״̬�µ����ݱ���
        /// </summary>
        /// <returns></returns>
        public override bool SaveUpdated()
        {
            //��鲻ͬID�Ƿ���������ͬ�ؼ��ֵļ�¼
            string condition = string.Format("Name ='{0}' and OID <> '{1}' ", this.txtName.Text, Id);
            bool exist = BLLFactory<SystemType>.Instance.IsExistRecord(condition);
            if (exist)
            {
                MessageDxUtil.ShowTips("ָ���ġ�ϵͳ���ơ��Ѿ����ڣ������ظ���ӣ����޸�");
                return false;
            }

            SystemTypeInfo info = BLLFactory<SystemType>.Instance.FindByID(Id);
            if (info != null)
            {
                SetInfo(info);

                try
                {
                    #region ��������
                    bool succeed = BLLFactory<SystemType>.Instance.Update(info, info.Gid);
                    if (succeed)
                    {
                        //�����������������

                        return true;
                    }
                    #endregion
                }
                catch (Exception ex)
                {
                    LogHelper.WriteLog(LogLevel.LOG_LEVEL_CRIT, ex, typeof(FrmEditSystemType));
                    MessageDxUtil.ShowError(ex.Message);
                }
            }
            return false;
        }
    }
}
