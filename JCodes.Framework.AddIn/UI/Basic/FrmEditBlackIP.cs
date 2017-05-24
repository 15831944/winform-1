using System;
using System.Text;
using System.Data;
using System.Drawing;
using System.Windows.Forms;
using System.ComponentModel;
using System.Collections.Generic;
using System.Net;
using JCodes.Framework.Entity;
using JCodes.Framework.Common;
using JCodes.Framework.BLL;
using JCodes.Framework.CommonControl;
using JCodes.Framework.jCodesenum.BaseEnum;
using JCodes.Framework.CommonControl.BaseUI;
using JCodes.Framework.AddIn.Other;
using JCodes.Framework.CommonControl.Other;
using JCodes.Framework.Common.Format;
using JCodes.Framework.Common.Extension;
using JCodes.Framework.Common.Framework;

namespace JCodes.Framework.AddIn.UI.Basic
{
    public partial class FrmEditBlackIP : BaseEditForm
    {
        /// <summary>
        /// ����һ����ʱ���󣬷����ڸ��������л�ȡ���ڵ�GUID
        /// </summary>
        private BlackIPInfo tempInfo = new BlackIPInfo();

        public FrmEditBlackIP()
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
                MessageDxUtil.ShowTips("��������ʾ����");
                this.txtName.Focus();
                result = false;
            }
            else if (this.txtAuthorizeType.Text.Length == 0)
            {
                MessageDxUtil.ShowTips("��ѡ����Ȩ����");
                this.txtAuthorizeType.Focus();
                result = false;
            }
            else if (this.txtIPStart.Text.Length == 0)
            {
                MessageDxUtil.ShowTips("������IP��ʼ��ַ");
                this.txtIPStart.Focus();
                result = false;
            }
            else if (this.txtIPEnd.Text.Length == 0)
            {
                MessageDxUtil.ShowTips("������IP������ַ");
                this.txtIPEnd.Focus();
                result = false;
            }

            IPAddress ip1 = IPAddress.Parse(this.txtIPStart.Text);
            IPAddress ip2 = IPAddress.Parse(this.txtIPEnd.Text);

            if (ip1.Compare(ip2) == 1)
            {
                MessageDxUtil.ShowTips("��IP��ʼ��ַ���ܴ��ڽ�����ַ, ���޸�");
                this.txtIPEnd.Focus();
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
            Dictionary<string, object> dictEnum = EnumHelper.GetMemberKeyValue<AuthrizeType>();
            this.txtAuthorizeType.Properties.Items.Clear();
            foreach (string item in dictEnum.Keys)
            {
                this.txtAuthorizeType.Properties.Items.Add(new CListItem(item, dictEnum[item].ToString()));
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
                BlackIPInfo info = BLLFactory<BlackIP>.Instance.FindByID(ID);
                if (info != null)
                {
                    tempInfo = info;//���¸���ʱ����ֵ��ʹָ֮����ڵļ�¼����

                    txtName.Text = info.Name;
                    txtAuthorizeType.SetComboBoxItem(info.AuthorizeType.ToString());
                    txtForbid.Checked = info.Forbid;
                    txtIPStart.Text = info.IPStart;
                    txtIPEnd.Text = info.IPEnd;
                    txtNote.Text = info.Note;
                    txtCreator.Text = info.Creator;
                    txtCreateTime.SetDateTime(info.CreateTime);
                }
                #endregion
                //this.btnOK.Enabled = Portal.gc.HasFunction("BlackIP/Edit");             
            }
            else
            {
                txtCreator.Text = Portal.gc.UserInfo.FullName;//Ĭ��Ϊ��ǰ��¼�û�
                txtCreateTime.DateTime = DateTime.Now; //Ĭ�ϵ�ǰʱ��
                //this.btnOK.Enabled = Portal.gc.HasFunction("BlackIP/Add");  
            }

            RefreshUsers();
        }

        public override void ClearScreen()
        {
            this.tempInfo = new BlackIPInfo();
            base.ClearScreen();
        }

        /// <summary>
        /// �༭���߱���״̬��ȡֵ����
        /// </summary>
        /// <param name="info"></param>
        private void SetInfo(BlackIPInfo info)
        {
            info.Name = txtName.Text;
            info.AuthorizeType = txtAuthorizeType.GetComboBoxValue().ToInt32();
            info.Forbid = txtForbid.Checked;
            info.IPStart = txtIPStart.Text;
            info.IPEnd = txtIPEnd.Text;
            info.Note = txtNote.Text;
            info.Editor = Portal.gc.UserInfo.FullName;
            info.Editor_ID = Portal.gc.UserInfo.ID.ToString();
            info.EditTime = DateTime.Now;

            info.CurrentLoginUserId = Portal.gc.UserInfo.ID.ToString(); //��¼��ǰ��¼���û���Ϣ����������־��¼ʹ��
        }

        /// <summary>
        /// ����״̬�µ����ݱ���
        /// </summary>
        /// <returns></returns>
        public override bool SaveAddNew()
        {
            BlackIPInfo info = tempInfo;//����ʹ�ô��ڵľֲ���������Ϊ������Ϣ���ܱ�����ʹ��
            SetInfo(info);
            info.Creator = Portal.gc.UserInfo.FullName;
            info.Creator_ID = Portal.gc.UserInfo.ID.ToString();
            info.CreateTime = DateTime.Now;

            try
            {
                #region ��������

                bool succeed = BLLFactory<BlackIP>.Instance.Insert(info);
                if (succeed)
                {
                    //�����������������

                    return true;
                }
                #endregion
            }
            catch (Exception ex)
            {
                LogHelper.WriteLog(LogLevel.LOG_LEVEL_CRIT, ex, typeof(FrmEditBlackIP));
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

            BlackIPInfo info = BLLFactory<BlackIP>.Instance.FindByID(ID);
            if (info != null)
            {
                SetInfo(info);

                try
                {
                    #region ��������
                    bool succeed = BLLFactory<BlackIP>.Instance.Update(info, info.ID);
                    if (succeed)
                    {
                        //�����������������

                        return true;
                    }
                    #endregion
                }
                catch (Exception ex)
                {
                    LogHelper.WriteLog(LogLevel.LOG_LEVEL_CRIT, ex, typeof(FrmEditBlackIP));
                    MessageDxUtil.ShowError(ex.Message);
                }
            }
            return false;
        }

        private void FrmEditBlackIP_Load(object sender, EventArgs e)
        {
        }

        /// <summary>
        /// ��¼�û���ѡ�����
        /// </summary>
        Dictionary<string, string> SelectUserDict = new Dictionary<string, string>();
        private void RefreshUsers()
        {
            SelectUserDict = new Dictionary<string, string>();

            this.lvwUser.BeginUpdate();
            this.lvwUser.Items.Clear();
            List<SimpleUserInfo> list = BLLFactory<BlackIP>.Instance.GetSimpleUserByBlackIP(tempInfo.ID);
            foreach (SimpleUserInfo info in list)
            {
                string name = string.Format("{0}��{1}��", info.FullName, info.Name);
                CListItem item = new CListItem(name, info.ID.ToString());
                this.lvwUser.Items.Add(item);

                if (!SelectUserDict.ContainsKey(info.ID.ToString()))
                {
                    SelectUserDict.Add(info.ID.ToString(), name);
                }
            }
            if (this.lvwUser.Items.Count > 0)
            {
                this.lvwUser.SelectedIndex = 0;
            }
            this.lvwUser.EndUpdate();
        }

        private List<int> addedUserList = new List<int>();
        private List<int> deletedUserList = new List<int>();

        /// <summary>
        /// ��ȡ��Щ�仯�ˣ����ӵ��û���ɾ�����û��б�
        /// </summary>
        /// <param name="oldDict">�ɵ��б�</param>
        /// <param name="newDict">�µ�ѡ���б�</param>
        private void GetUserDictChangs(Dictionary<string, string> oldDict, Dictionary<string, string> newDict)
        {
            addedUserList = new List<int>();
            deletedUserList = new List<int>();
            foreach (string key in oldDict.Keys)
            {
                if (!newDict.ContainsKey(key))
                {
                    deletedUserList.Add(key.ToInt32());
                }
            }

            foreach (string key in newDict.Keys)
            {
                if (!oldDict.ContainsKey(key))
                {
                    addedUserList.Add(key.ToInt32());
                }
            }
        }
        private void btnEditUser_Click(object sender, EventArgs e)
        {
            FrmSelectUser dlg = new FrmSelectUser();
            dlg.SelectUserDict = this.SelectUserDict;
            if (dlg.ShowDialog() == DialogResult.OK)
            {
                GetUserDictChangs(this.SelectUserDict, dlg.SelectUserDict);

                foreach (int id in deletedUserList)
                {
                    BLLFactory<BlackIP>.Instance.RemoveUser(id, tempInfo.ID);
                }
                foreach (int id in addedUserList)
                {
                    BLLFactory<BlackIP>.Instance.AddUser(id, tempInfo.ID);
                }

                this.RefreshUsers();
            }
            else
            {
                MessageDxUtil.ShowTips("��ѡ�����Ļ���");
            }
        }

        private void btnRemoveUser_Click(object sender, EventArgs e)
        {
            if (this.lvwUser.SelectedItem != null)
            {
                CListItem userItem = this.lvwUser.SelectedItem as CListItem;
                if (userItem != null)
                {
                    int userId = Convert.ToInt32(userItem.Value);
                    BLLFactory<BlackIP>.Instance.RemoveUser(userId, tempInfo.ID);
                    this.RefreshUsers();
                }
            }
        }
    }
}
