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
using JCodes.Framework.Common.Framework;
using JCodes.Framework.CommonControl.Other;
using JCodes.Framework.CommonControl.Controls;
using JCodes.Framework.Common.Format;

namespace JCodes.Framework.AddIn.Basic
{
    public partial class FrmEditOperationLogSetting : BaseEditForm
    {
        /// <summary>
        /// ����һ����ʱ���󣬷����ڸ��������л�ȡ���ڵ�GUID
        /// </summary>
        private OperationLogSettingInfo tempInfo = new OperationLogSettingInfo();

        public FrmEditOperationLogSetting()
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
            if (this.txtTableName.Text.Trim().Length == 0)
            {
                MessageDxUtil.ShowWarning(Const.MsgCheckInput + lblTableName.Text.Replace(Const.MsgCheckSign, string.Empty));
                this.txtTableName.Focus();
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
            this.txtTableName.Properties.BeginUpdate();
            this.txtTableName.Properties.Items.Clear();

            List<string> tableList = BLLFactory<OperationLogSetting>.Instance.GetTableNames();
            this.txtTableName.Properties.Items.AddRange(tableList.ToArray());
            this.txtTableName.Properties.EndUpdate();
        }

        /// <summary>
        /// ������ʾ�ĺ���
        /// </summary>
        public override void DisplayData()
        {
            InitDictItem();//�����ֵ���أ����ã�

            if (Id > 0)
            {
                #region ��ʾ��Ϣ
                OperationLogSettingInfo info = BLLFactory<OperationLogSetting>.Instance.FindByID(Id);
                if (info != null)
                {
                    tempInfo = info;//���¸���ʱ����ֵ��ʹָ֮����ڵļ�¼����

                    txtForbid.Checked = (info.IsForbid == 0);
                    txtTableName.Text = info.TableName;
                    txtInsertLog.Checked = (info.IsInsertLog ==0);
                    txtDeleteLog.Checked = (info.IsDeleteLog == 0);
                    txtUpdateLog.Checked = (info.IsUpdateLog == 0);
                    txtNote.Text = info.Remark;
                    txtCreator.Text = info.CreatorId.ToString();
                    txtCreateTime.SetDateTime(info.CreatorTime);
                    txtEditor.Text = info.EditorId.ToString();
                    txtEditTime.SetDateTime(info.LastUpdateTime);
                }
                #endregion            
            }
            else
            {
                txtCreateTime.DateTime = DateTimeHelper.GetServerDateTime2(); //Ĭ�ϵ�ǰʱ��
                txtCreator.Text = Portal.gc.UserInfo.FullName;//Ĭ��Ϊ��ǰ��¼�û�
                txtEditor.Text = Portal.gc.UserInfo.FullName;//Ĭ��Ϊ��ǰ��¼�û�
                txtEditTime.DateTime = DateTimeHelper.GetServerDateTime2(); //Ĭ�ϵ�ǰʱ�� 
            }
        }


        public override void ClearScreen()
        {
            this.tempInfo = new OperationLogSettingInfo();
            base.ClearScreen();
        }

        /// <summary>
        /// �༭���߱���״̬��ȡֵ����
        /// </summary>
        /// <param name="info"></param>
        private void SetInfo(OperationLogSettingInfo info)
        {
            info.IsForbid = txtForbid.Checked ? 0 : 1;
            info.TableName = txtTableName.Text;
            info.IsInsertLog = txtInsertLog.Checked ? 0 : 1;
            info.IsDeleteLog = txtDeleteLog.Checked ? 0 : 1;
            info.IsUpdateLog = txtUpdateLog.Checked ? 0 : 1;
            info.Remark = txtNote.Text;
            //info.Editor = Portal.gc.UserInfo.FullName;
            info.EditorId = Portal.gc.UserInfo.Id;
            info.LastUpdateTime = txtCreateTime.DateTime;

            info.CurrentLoginUserId = Portal.gc.UserInfo.Id;
        }

        /// <summary>
        /// ����״̬�µ����ݱ���
        /// </summary>
        /// <returns></returns>
        public override bool SaveAddNew()
        {
            OperationLogSettingInfo info = tempInfo;//����ʹ�ô��ڵľֲ���������Ϊ������Ϣ���ܱ�����ʹ��
            SetInfo(info);
            //info.Creator = Portal.gc.UserInfo.FullName;
            info.CreatorId = Portal.gc.UserInfo.Id;
            info.CreatorTime = txtCreateTime.DateTime;

            try
            {
                #region ��������
                //����Ƿ���������ͬ�ؼ��ֵļ�¼
                bool exist = BLLFactory<OperationLogSetting>.Instance.IsExistKey("TableName", info.TableName);
                if (exist)
                {
                    MessageDxUtil.ShowTips("ָ���ġ����ݿ���Ѿ����ڣ������ظ���ӣ����޸�");
                    return false;
                }

                bool succeed = BLLFactory<OperationLogSetting>.Instance.Insert(info);
                if (succeed)
                {
                    //�����������������

                    return true;
                }
                #endregion
            }
            catch (Exception ex)
            {
                LogHelper.WriteLog(LogLevel.LOG_LEVEL_CRIT, ex, typeof(FrmEditOperationLogSetting));
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
            string condition = string.Format("TableName ='{0}' and ID <> '{1}' ", this.txtTableName.Text, Id);
            bool exist = BLLFactory<OperationLogSetting>.Instance.IsExistRecord(condition);
            if (exist)
            {
                MessageDxUtil.ShowTips("ָ���ġ����ݿ���Ѿ����ڣ������ظ���ӣ����޸�");
                return false;
            }

            OperationLogSettingInfo info = BLLFactory<OperationLogSetting>.Instance.FindByID(Id);
            if (info != null)
            {
                SetInfo(info);

                try
                {
                    #region ��������
                    bool succeed = BLLFactory<OperationLogSetting>.Instance.Update(info, info.Id);
                    if (succeed)
                    {
                        //�����������������

                        return true;
                    }
                    #endregion
                }
                catch (Exception ex)
                {
                    LogHelper.WriteLog(LogLevel.LOG_LEVEL_CRIT, ex, typeof(FrmEditOperationLogSetting));
                    MessageDxUtil.ShowError(ex.Message);
                }
            }
            return false;
        }
    }
}
