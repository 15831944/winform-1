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

namespace JCodes.Framework.AddIn.Contact
{
    public partial class FrmEditAddressGroup : BaseEditForm
    {                
        /// <summary>
        /// ͨѶ¼����
        /// </summary>
        public AddressType AddressType = AddressType.����;

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
            List<AddressGroupInfo> comboList = BLLFactory<AddressGroup>.Instance.GetAllWithAddressType(AddressType, LoginUserInfo.ID.ToString());

            BLLFactory<AddressGroup>.Instance.GetAll();
            comboList = CollectionHelper<AddressGroupInfo>.Fill("-1", 0, comboList, "PID", "ID", "Name");
            this.txtPID.Properties.Items.Clear();
            foreach (AddressGroupInfo info in comboList)
            {
                this.txtPID.Properties.Items.Add(new CListItem(info.Name, info.ID));
            }
            this.txtPID.Properties.Items.Insert(0, new CListItem("��", "-1"));
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

            if (!string.IsNullOrEmpty(ID))
            {
                #region ��ʾ��Ϣ
                AddressGroupInfo info = BLLFactory<AddressGroup>.Instance.FindByID(ID);
                if (info != null)
                {
                    txtPID.SetComboBoxItem(info.PID);
                    txtSeq.Text = info.Seq;
                    txtName.Text = info.Name;
                    txtNote.Text = info.Note;
                    txtEditor.Text = info.Editor;
                    txtEditTime.SetDateTime(info.EditTime);
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
                this.txtEditTime.DateTime = DateTime.Now; //Ĭ�ϵ�ǰʱ��
                this.txtEditor.Text = LoginUserInfo.FullName;//Ĭ��Ϊ��ǰ��¼�û� 
            }
        }

        public override void ClearScreen()
        {
            this.txtEditTime.DateTime = DateTime.Now; //Ĭ�ϵ�ǰʱ��
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
            info.PID = txtPID.GetComboBoxStrValue();
            info.Seq = txtSeq.Text;
            info.Name = txtName.Text;
            info.Note = txtNote.Text;

            info.EditTime = DateTime.Now;
            info.Editor = LoginUserInfo.ID.ToString();//��ǰ�û�
            info.CurrentLoginUserId = LoginUserInfo.ID.ToString(); //��¼��ǰ��¼���û���Ϣ����������־��¼ʹ��
        }
         
        /// <summary>
        /// ����״̬�µ����ݱ���
        /// </summary>
        /// <returns></returns>
        public override bool SaveAddNew()
        {
            AddressGroupInfo info = new AddressGroupInfo();
            SetInfo(info);
            info.Creator = LoginUserInfo.ID.ToString();
            info.CreateTime = DateTime.Now;
            info.Dept_ID = LoginUserInfo.DeptId;
            info.Company_ID = LoginUserInfo.CompanyId;
            info.AddressType = this.AddressType;

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
            AddressGroupInfo info = BLLFactory<AddressGroup>.Instance.FindByID(ID);
            if (info != null)
            {
                SetInfo(info);

                try
                {
                    #region ��������
                    bool succeed = BLLFactory<AddressGroup>.Instance.Update(info, info.ID);
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
