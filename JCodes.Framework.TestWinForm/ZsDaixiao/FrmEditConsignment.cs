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
using JCodes.Framework.AddIn.Basic;
using JCodes.Framework.Common.Format;
using JCodes.Framework.jCodesenum;

namespace JCodes.Framework.TestWinForm
{
    public partial class FrmEditConsignment : BaseEditForm
    {
        public FrmEditConsignment()
        {
            InitializeComponent();
        }

        /// <summary>
        /// ������ʾ�ĺ���
        /// </summary>
        public override void DisplayData()
        {
            if (Id > 0)
            {
                #region ��ʾ�ͻ���Ϣ
                ConsignmentInfo info = BLLFactory<Consignment>.Instance.FindById(Id);
                if (info != null)
                {
                    txtStrValue.Text = info.StrValue;
                    txtSysValue.Text = info.SysValue;
                    txtName.Text = info.Name;
                    ccbEnableStatus.EditValue = (Int32)info.EnableStatus;
                }
                #endregion            
            }
        }

        /// <summary>
        /// �༭״̬�µ����ݱ���
        /// </summary>
        /// <returns></returns>
        public override bool SaveUpdated()
        {
            ConsignmentInfo info = BLLFactory<Consignment>.Instance.FindById(Id);
            if (info != null)
            {
                SetInfo(info);

                try
                {
                    #region ��������
                    Int32 succeed = BLLFactory<Consignment>.Instance.UpdateConsignmentById(info);
                    if (succeed > 0)
                    {
                        //�����������������
                        MessageDxUtil.ShowTips("�����ɹ�");
                        return true;
                    }
                    #endregion
                }
                catch (Exception ex)
                {
                    LogHelper.WriteLog(LogLevel.LOG_LEVEL_CRIT, ex, typeof(FrmEditConsignment));
                    MessageDxUtil.ShowError(ex.Message);
                }
            }
            return false;
        }

        /// <summary>
        /// ����״̬�µ����ݱ���
        /// </summary>
        /// <returns></returns>
        public override bool SaveAddNew()
        {
            //��鲻ͬID�Ƿ���������ͬ�ؼ��ֵļ�¼
            string condition = string.Format("StrValue ='{0}' ", txtStrValue.Text.Trim());
            bool exist = BLLFactory<Consignment>.Instance.IsExistRecord(condition);
            if (exist)
            {
                MessageDxUtil.ShowTips("ָ���ġ�С�˺š��Ѿ����ڣ����޸�");
                return false;
            }

            condition = string.Format("SysValue ='{0}' ", txtSysValue.Text.Trim());
            exist = BLLFactory<Consignment>.Instance.IsExistRecord(condition);
            if (exist && !string.Equals(txtSysValue.Text.Trim(), "��"))
            {
                MessageDxUtil.ShowTips("ָ���ġ������̺š��Ѿ����ڣ����޸�");
                return false;
            }

            ConsignmentInfo consignmentInfo = new ConsignmentInfo();
            SetInfo(consignmentInfo);

            try
            {
                #region ��������
                Int32 succeed = BLLFactory<Consignment>.Instance.InsertConsignment(consignmentInfo);
                if (succeed > 0)
                {
                    MessageDxUtil.ShowTips("�����ɹ�");
                    return true;
                }
                #endregion
            }
            catch (Exception ex)
            {
                LogHelper.WriteLog(LogLevel.LOG_LEVEL_CRIT, ex, typeof(FrmEditConsignment));
                MessageDxUtil.ShowError(ex.Message);
            }
            return false;
        }

        /// <summary>
        /// �༭���߱���״̬��ȡֵ����
        /// </summary>
        /// <param name="info"></param>
        private void SetInfo(ConsignmentInfo info)
        {
            // ���û��IDֵ��Ϊ����
            if (info.Id == 0)
            {
                info.Id = BLLFactory<Consignment>.Instance.GetMaxId() + 1;
            }
            // �������д��־ �鿴�������
            info.Name = txtName.Text.Trim();
            info.StrValue = txtStrValue.Text.Trim();
            info.SysValue = txtSysValue.Text.Trim();
            info.EnableStatus = (short)(ccbEnableStatus.SelectedDataRow as DicKeyValueInfo).DicttypeValue;
        }

        /// <summary>
        /// ʵ�ֿؼ�������ĺ���
        /// </summary>
        /// <returns></returns>
        public override bool CheckInput()
        {
            bool result = true;//Ĭ���ǿ���ͨ��

            #region MyRegion

            if (this.txtStrValue.Text.Trim().Length == 0)
            {
                MessageDxUtil.ShowWarning(Const.MsgCheckInput + lblStrValue.Text.Replace(Const.MsgCheckSign, string.Empty));
                ClearRedColor();
                lblStrValue.AppearanceItemCaption.ForeColor = Color.Red;
                this.txtStrValue.Focus();
                result = false;
            }
            else if (this.txtSysValue.Text.Trim().Length == 0)
            {
                MessageDxUtil.ShowWarning(Const.MsgCheckInput + lblSysValue.Text.Replace(Const.MsgCheckSign, string.Empty));
                ClearRedColor();
                lblSysValue.AppearanceItemCaption.ForeColor = Color.Red;
                this.txtSysValue.Focus();
                result = false;
            }
            else if (this.txtName.Text.Trim().Length == 0)
            {
                MessageDxUtil.ShowWarning(Const.MsgCheckInput + lblName.Text.Replace(Const.MsgCheckSign, string.Empty));
                ClearRedColor();
                lblName.AppearanceItemCaption.ForeColor = Color.Red;
                this.txtName.Focus();
                result = false;
            }
            else if ((this.ccbEnableStatus.SelectedDataRow as DicKeyValueInfo).DicttypeValue == 0)
            {
                MessageDxUtil.ShowWarning(Const.MsgCheckInput + lblEnabled.Text.Replace(Const.MsgCheckSign, string.Empty));
                ClearRedColor();
                lblEnabled.AppearanceItemCaption.ForeColor = Color.Red;
                this.ccbEnableStatus.Focus();
                result = false;
            }
            #endregion

            return result;
        }

        private void ClearRedColor()
        {
            lblStrValue.AppearanceItemCaption.ForeColor = Color.FromArgb(0, 0, 0, 0);
            lblName.AppearanceItemCaption.ForeColor = Color.FromArgb(0, 0, 0, 0);
            lblEnabled.AppearanceItemCaption.ForeColor = Color.FromArgb(0, 0, 0, 0);
            lblSysValue.AppearanceItemCaption.ForeColor = Color.FromArgb(0, 0, 0, 0);
        }
    }
}
