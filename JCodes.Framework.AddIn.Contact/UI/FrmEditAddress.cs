using System;
using System.Text;
using System.Data;
using System.Drawing;
using System.Windows.Forms;
using System.ComponentModel;
using System.Collections.Generic;
using System.Diagnostics;
using JCodes.Framework.CommonControl.BaseUI;
using JCodes.Framework.Entity;
using JCodes.Framework.CommonControl.Other;
using JCodes.Framework.Common.Framework;
using JCodes.Framework.BLL;
using JCodes.Framework.CommonControl.Controls;
using JCodes.Framework.Common;
using JCodes.Framework.jCodesenum.BaseEnum;
using JCodes.Framework.Common.Format;
using JCodes.Framework.jCodesenum;

namespace JCodes.Framework.AddIn.Contact
{
    public partial class FrmEditAddress : BaseEditForm
    {
        /// <summary>
        /// ͨѶ¼����
        /// </summary>
        public AddressType AddressType = AddressType.����;

        /// <summary>
        /// ����һ����ʱ���󣬷����ڸ��������л�ȡ���ڵ�GUID
        /// </summary>
        private AddressInfo tempInfo = new AddressInfo();

        public FrmEditAddress()
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
                AddressInfo info = BLLFactory<Address>.Instance.FindById(Id);
                if (info != null)
                {
                    tempInfo = info;//���¸���ʱ����ֵ��ʹָ֮����ڵļ�¼����

                    txtName.Text = info.Name;
                    txtSex.Text = info.Gender.ToString();
                    txtBirthdate.SetDateTime(info.Birthday);
                    txtMobile.Text = info.MobilePhone;
                    txtEmail.Text = info.Email;
                    txtQQ.Text = info.QQ.ToString();
                    txtHomeTelephone.Text = info.HomePhone;
                    txtOfficeTelephone.Text = info.OfficePhone;
                    txtHomeAddress.Text = info.HomeAddress;
                    txtOfficeAddress.Text = info.OfficeAddress;
                    txtFax.Text = info.Fax;
                    txtCompany.Text = info.CompanyName;
                    txtDept.Text = info.DeptName;
                    txtPosition.Text = info.WorkPosition;
                    txtOther.Text = info.Other;
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
                txtCreator.Text = LoginUserInfo.LoginName;//Ĭ��Ϊ��ǰ��¼�û�
                txtCreateTime.DateTime = DateTimeHelper.GetServerDateTime2(); //Ĭ�ϵ�ǰʱ��
                txtEditor.Text = LoginUserInfo.LoginName;//Ĭ��Ϊ��ǰ��¼�û�
                txtEditTime.DateTime = DateTimeHelper.GetServerDateTime2(); //Ĭ�ϵ�ǰʱ��
            }

            BindAddressGroup();

            //tempInfo�ڶ��������Ϊָ�������½�����ȫ�µĶ��󣬵���һЩ��ʼ����GUID���ڸ����ϴ�
            //SetAttachInfo(tempInfo);
        }

        //private void SetAttachInfo(AddressInfo info)
        //{
        //    this.attachmentGUID.AttachmentGUID = info.AttachGUID;
        //    this.attachmentGUID.userId = LoginUserInfo.Name;

        //    string name = txtName.Text;
        //    if (!string.IsNullOrEmpty(name))
        //    {
        //        string dir = string.Format("{0}", name);
        //        this.attachmentGUID.Init(dir, tempInfo.ID, LoginUserInfo.Name);
        //    }
        //}

        public override void ClearScreen()
        {
            this.tempInfo = new AddressInfo();
            base.ClearScreen();
        }

        /// <summary>
        /// �༭���߱���״̬��ȡֵ����
        /// </summary>
        /// <param name="info"></param>
        private void SetInfo(AddressInfo info)
        {
            info.Name = txtName.Text;
            //info.Sex = txtSex.Text;
            info.Birthday = txtBirthdate.DateTime;
            info.MobilePhone = txtMobile.Text;
            info.Email = txtEmail.Text;
            info.QQ = Convert.ToInt32( txtQQ.Text);
            info.HomePhone = txtHomeTelephone.Text;
            info.OfficePhone = txtOfficeTelephone.Text;
            info.HomeAddress = txtHomeAddress.Text;
            info.OfficeAddress = txtOfficeAddress.Text;
            info.Fax = txtFax.Text;
            info.CompanyName = txtCompany.Text;
            info.DeptName = txtDept.Text;
            info.WorkPosition = txtPosition.Text;
            info.Other = txtOther.Text;
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
            AddressInfo info = tempInfo;//����ʹ�ô��ڵľֲ���������Ϊ������Ϣ���ܱ�����ʹ��
            SetInfo(info);
            info.CreatorId = LoginUserInfo.Id;
            info.LastUpdateTime = DateTimeHelper.GetServerDateTime2();
            info.DeptId = LoginUserInfo.DeptId;
            info.CompanyId = LoginUserInfo.CompanyId;
            info.AddressType = this.AddressType;//�޶�����

            try
            {
                #region ��������

                bool succeed = BLLFactory<Address>.Instance.Insert(info);
                if (succeed)
                {
                    //�����������������
                    SaveAddressGroup();

                    return true;
                }
                #endregion
            }
            catch (Exception ex)
            {
                LogHelper.WriteLog(LogLevel.LOG_LEVEL_CRIT, ex, typeof(FrmEditAddress));
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
            AddressInfo info = BLLFactory<Address>.Instance.FindById(Id);
            if (info != null)
            {
                SetInfo(info);

                try
                {
                    #region ��������
                    bool succeed = BLLFactory<Address>.Instance.Update(info, info.Id);
                    if (succeed)
                    {
                        //�����������������
                        SaveAddressGroup();

                        return true;
                    }
                    #endregion
                }
                catch (Exception ex)
                {
                    LogHelper.WriteLog(LogLevel.LOG_LEVEL_CRIT, ex, typeof(FrmEditAddress));
                    MessageDxUtil.ShowError(ex.Message);
                }
            }
            return false;
        }

        private void lblMange_Click(object sender, EventArgs e)
        {
            FrmAddressGroup dlg = new FrmAddressGroup();
            dlg.AddressType = AddressType;
            dlg.InitFunction(LoginUserInfo, FunctionDict);
            dlg.OnDataSaved += new EventHandler(dlg_OnDataSaved);
            dlg.ShowDialog();

            BindAddressGroup();
        }

        void dlg_OnDataSaved(object sender, EventArgs e)
        {
            BindAddressGroup();
        }

        /// <summary>
        /// ��ʼ�����󶨿ͻ����˷�����Ϣ
        /// </summary>
        private void BindAddressGroup()
        {
            List<AddressGroupInfo> myGroupList = BLLFactory<AddressGroup>.Instance.GetByContact(tempInfo.Id);
            List<Int32> groupIdList = new List<Int32>();
            foreach (AddressGroupInfo info in myGroupList)
            {
                groupIdList.Add(info.Id);
            }

            List<AddressGroupNodeInfo> groupList = new List<AddressGroupNodeInfo>();
            if (AddressType == AddressType.����)
            {
                groupList = BLLFactory<AddressGroup>.Instance.GetTree(AddressType.ToString(), LoginUserInfo.Id);
            }
            else
            {
                groupList = BLLFactory<AddressGroup>.Instance.GetTree(AddressType.ToString());
            }

            this.checkedListContact.BeginUpdate();
            this.checkedListContact.Items.Clear();
            foreach (AddressGroupNodeInfo nodeInfo in groupList)
            {
                bool check = groupIdList.Contains(nodeInfo.Id);
                this.checkedListContact.Items.Add(new CDicKeyValue(nodeInfo.Id, nodeInfo.Name), check);
            }
            this.checkedListContact.EndUpdate();
        }

        private bool SaveAddressGroup()
        {
            List<string> selectGroupIDList = new List<string>();
            foreach (DevExpress.XtraEditors.Controls.CheckedListBoxItem item in this.checkedListContact.CheckedItems)
            {
                CListItem listItem = item.Value as CListItem;
                if (listItem != null)
                {
                    selectGroupIDList.Add(listItem.Value);
                }
            }

            bool result = BLLFactory<Address>.Instance.ModifyAddressGroup(tempInfo.Id, selectGroupIDList);
            return result;
        }

        private void btnQQMessage_Click(object sender, EventArgs e)
        {
            string QQ = this.txtQQ.Text.Trim();
            if (!string.IsNullOrEmpty(QQ) && ValidateUtil.IsNumber(QQ))
            {
                Process.Start("tencent://message/?uin=" + QQ);
            }
        }

    }
}
