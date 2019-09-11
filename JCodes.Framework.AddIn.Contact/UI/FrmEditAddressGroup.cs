using System;
using System.Text;
using System.Data;
using System.Drawing;
using System.Windows.Forms;
using System.ComponentModel;
using System.Collections.Generic;
using JCodes.Framework.CommonControl.BaseUI;
using JCodes.Framework.Entity;
using JCodes.Framework.Common.Framework;
using JCodes.Framework.BLL;
using JCodes.Framework.Common.Collections;
using JCodes.Framework.CommonControl.Controls;
using JCodes.Framework.CommonControl.Other;
using JCodes.Framework.Common;
using JCodes.Framework.jCodesenum.BaseEnum;
using JCodes.Framework.Common.Format;
using JCodes.Framework.jCodesenum;

namespace JCodes.Framework.AddIn.Contact
{
    public partial class FrmEditAddressGroup : BaseEditForm
    {                
        /// <summary>
        /// ͨѶ¼����
        /// </summary>
        public AddressType addressType = AddressType.����;

        /// <summary>
        /// �ϼ�ID
        /// </summary>
        public string PID = "";

        public FrmEditAddressGroup()
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
            if (this.txtName.Text.Trim().Length == 0)
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
            //�������б�
            List<AddressGroupInfo> comboList = BLLFactory<AddressGroup>.Instance.GetAllWithAddressType(addressType, LoginUserInfo.Id);

            BLLFactory<AddressGroup>.Instance.GetAll();
            comboList = CollectionHelper<AddressGroupInfo>.Fill("-1", 0, comboList, "PID", "Id", "Name");
            this.txtPID.Properties.Items.Clear();
            foreach (AddressGroupInfo info in comboList)
            {
                this.txtPID.Properties.Items.Add(new CDicKeyValue(info.Id, info.Name));
            }
            this.txtPID.Properties.Items.Insert(0, new CDicKeyValue(-1, "��"));
            if (this.txtPID.Properties.Items.Count == 1)
            {
                this.txtPID.SelectedIndex = 0;
            }
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
                AddressGroupInfo info = BLLFactory<AddressGroup>.Instance.FindByID(Id);
                if (info != null)
                {
                    txtPID.SetComboBoxItem(info.Pid);
                    txtSeq.Text = info.Seq;
                    txtName.Text = info.Name;
                    txtNote.Text = info.Remark;
                    txtEditor.Text = info.EditorId.ToString();
                    txtEditTime.SetDateTime(info.LastUpdateTime);
                }
                #endregion          
            }
            else
            {
                if (!string.IsNullOrEmpty(PID))
                {
                    txtPID.SetComboBoxItem(PID);
                }
                else
                {
                    //���û�и��˵���������Ϊ��ѡ���һ����
                    this.txtPID.SelectedIndex = 0;
                }
                this.txtEditTime.DateTime = DateTimeHelper.GetServerDateTime2(); //Ĭ�ϵ�ǰʱ��
                this.txtEditor.Text = LoginUserInfo.FullName;//Ĭ��Ϊ��ǰ��¼�û� 
            }
        }

        public override void ClearScreen()
        {
            this.txtEditTime.DateTime = DateTimeHelper.GetServerDateTime2(); //Ĭ�ϵ�ǰʱ��
            this.txtEditor.Text = LoginUserInfo.FullName;//Ĭ��Ϊ��ǰ��¼�û� 
            string pid = this.txtPID.GetComboBoxStrValue();

            base.ClearScreen();
            this.txtPID.SetComboBoxItem(pid);
        }

        /// <summary>
        /// �༭���߱���״̬��ȡֵ����
        /// </summary>
        /// <param name="info"></param>
        private void SetInfo(AddressGroupInfo info)
        {
            info.Pid = txtPID.SelectedIndex;//txtPID.GetComboBoxStrValue();
            info.Seq = txtSeq.Text;
            info.Name = txtName.Text;
            info.Remark = txtNote.Text;

            info.LastUpdateTime = DateTimeHelper.GetServerDateTime2();
            info.EditorId = LoginUserInfo.Id;//��ǰ�û�
            info.CurrentLoginUserId = LoginUserInfo.Id; //��¼��ǰ��¼���û���Ϣ����������־��¼ʹ��
        }
         
        /// <summary>
        /// ����״̬�µ����ݱ���
        /// </summary>
        /// <returns></returns>
        public override bool SaveAddNew()
        {
            AddressGroupInfo info = new AddressGroupInfo();
            SetInfo(info);
            info.CreatorId = LoginUserInfo.Id;
            info.CreatorTime = DateTimeHelper.GetServerDateTime2();
            info.DeptId = LoginUserInfo.DeptId;
            info.CompanyId = LoginUserInfo.CompanyId;
            info.AddressType = this.addressType;

            try
            {
                #region ��������

                bool succeed = BLLFactory<AddressGroup>.Instance.Insert(info);
                if (succeed)
                {
                    //�����������������

                    return true;
                }
                #endregion
            }
            catch (Exception ex)
            {
                LogHelper.WriteLog(LogLevel.LOG_LEVEL_CRIT, ex, typeof(FrmEditAddressGroup));
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
            AddressGroupInfo info = BLLFactory<AddressGroup>.Instance.FindByID(Id);
            if (info != null)
            {
                SetInfo(info);

                try
                {
                    #region ��������
                    bool succeed = BLLFactory<AddressGroup>.Instance.Update(info, info.Id);
                    if (succeed)
                    {
                        //�����������������
                       
                        return true;
                    }
                    #endregion
                }
                catch (Exception ex)
                {
                    LogHelper.WriteLog(LogLevel.LOG_LEVEL_CRIT, ex, typeof(FrmEditAddressGroup));
                    MessageDxUtil.ShowError(ex.Message);
                }
            }
           return false;
        }
    }
}
