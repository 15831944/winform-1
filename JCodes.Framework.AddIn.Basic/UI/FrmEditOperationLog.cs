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
using JCodes.Framework.jCodesenum;

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
                #region ��ʾ��Ϣ
                //OperationLogInfo info = BLLFactory<OperationLog>.Instance.FindByID(Id);
                //if (info != null)
                //{
                //    tempInfo = info;//���¸���ʱ����ֵ��ʹָ֮����ڵļ�¼����
                //    txtUser_ID.Text = info.UserId.ToString();
                //    txtLoginName.Text = info.LoginName;
                //    txtLoginName.Text = info.LoginName;
                //    txtCompany_ID.Text = info.CompanyId.ToString();
                //    txtCompanyName.Text = info.CompanyName;
                //    txtTableName.Text = info.TableName;
                //    txtOperationType.Text = info.OperationType.ToString();
                //    txtNote.Text = info.Remark;
                //    txtIPAddress.Text = info.IP;
                //    txtMacAddress.Text = info.Mac;
                //    txtCreateTime.SetDateTime(info.CreatorTime);
                //}
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
            info.Name = txtName.Text;
            info.LoginName = txtLoginName.Text;
            info.CompanyName = txtCompanyName.Text;
            info.TableName = txtTableName.Text;
            //info.OperationType = txtOperationType.Text;
            info.Remark = txtNote.Text;
            info.Mac = this.txtMacAddress.Text;
            info.IP = this.txtIPAddress.Text;
            info.CreatorTime = txtCreateTime.DateTime;
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

            //OperationLogInfo info = BLLFactory<OperationLog>.Instance.FindByID(Id);
            //if (info != null)
            //{
            //    SetInfo(info);

            //    try
            //    {
            //        #region ��������
            //        bool succeed = BLLFactory<OperationLog>.Instance.Update(info, info.Id);
            //        if (succeed)
            //        {
            //            //�����������������

            //            return true;
            //        }
            //        #endregion
            //    }
            //    catch (Exception ex)
            //    {
            //        LogHelper.WriteLog(LogLevel.LOG_LEVEL_CRIT, ex, typeof(FrmEditOperationLog));
            //        MessageDxUtil.ShowError(ex.Message);
            //    }
            //}
            return false;
        }
    }
}
