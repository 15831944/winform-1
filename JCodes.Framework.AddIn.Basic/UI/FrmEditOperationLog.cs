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

namespace JCodes.Framework.AddIn.Basic
{
    public partial class FrmEditOperationLog : BaseEditForm
    {
        /// <summary>
        /// ����һ����ʱ���󣬷����ڸ��������л�ȡ���ڵ�GUID
        /// </summary>
        private OperationLogInfo tempInfo = new OperationLogInfo();

        public FrmEditOperationLog()
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

            if (!string.IsNullOrEmpty(ID))
            {
                #region ��ʾ��Ϣ
                OperationLogInfo info = BLLFactory<OperationLog>.Instance.FindByID(ID);
                if (info != null)
                {
                    tempInfo = info;//���¸���ʱ����ֵ��ʹָ֮����ڵļ�¼����
                    txtUser_ID.Text = info.User_ID.ToString();
                    txtLoginName.Text = info.LoginName;
                    txtFullName.Text = info.FullName;
                    txtCompany_ID.Text = info.Company_ID;
                    txtCompanyName.Text = info.CompanyName;
                    txtTableName.Text = info.TableName;
                    txtOperationType.Text = info.OperationType;
                    txtNote.Text = info.Note;
                    txtIPAddress.Text = info.IPAddress;
                    txtMacAddress.Text = info.MacAddress;
                    txtCreateTime.SetDateTime(info.CreateTime);
                }
                #endregion          
            }
        }

        public override void ClearScreen()
        {
            this.tempInfo = new OperationLogInfo();
            base.ClearScreen();
        }

        /// <summary>
        /// �༭���߱���״̬��ȡֵ����
        /// </summary>
        /// <param name="info"></param>
        private void SetInfo(OperationLogInfo info)
        {
            info.LoginName = txtLoginName.Text;
            info.FullName = txtFullName.Text;
            info.CompanyName = txtCompanyName.Text;
            info.TableName = txtTableName.Text;
            info.OperationType = txtOperationType.Text;
            info.Note = txtNote.Text;
            info.MacAddress = this.txtMacAddress.Text;
            info.IPAddress = this.txtIPAddress.Text;
            info.CreateTime = txtCreateTime.DateTime;
        }

        /// <summary>
        /// ����״̬�µ����ݱ���
        /// </summary>
        /// <returns></returns>
        public override bool SaveAddNew()
        {
            OperationLogInfo info = tempInfo;//����ʹ�ô��ڵľֲ���������Ϊ������Ϣ���ܱ�����ʹ��
            SetInfo(info);

            try
            {
                #region ��������

                bool succeed = BLLFactory<OperationLog>.Instance.Insert(info);
                if (succeed)
                {
                    //�����������������

                    return true;
                }
                #endregion
            }
            catch (Exception ex)
            {
                LogHelper.WriteLog(LogLevel.LOG_LEVEL_CRIT, ex, typeof(FrmEditOperationLog));
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

            OperationLogInfo info = BLLFactory<OperationLog>.Instance.FindByID(ID);
            if (info != null)
            {
                SetInfo(info);

                try
                {
                    #region ��������
                    bool succeed = BLLFactory<OperationLog>.Instance.Update(info, info.ID);
                    if (succeed)
                    {
                        //�����������������

                        return true;
                    }
                    #endregion
                }
                catch (Exception ex)
                {
                    LogHelper.WriteLog(LogLevel.LOG_LEVEL_CRIT, ex, typeof(FrmEditOperationLog));
                    MessageDxUtil.ShowError(ex.Message);
                }
            }
            return false;
        }
    }
}
