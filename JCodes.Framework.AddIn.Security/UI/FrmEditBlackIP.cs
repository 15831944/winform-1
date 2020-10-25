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
using JCodes.Framework.CommonControl.Controls;
using JCodes.Framework.CommonControl.Other;
using JCodes.Framework.Common.Format;
using JCodes.Framework.Common.Extension;
using JCodes.Framework.Common.Framework;
using JCodes.Framework.AddIn.Basic;
using JCodes.Framework.jCodesenum;

namespace JCodes.Framework.AddIn.Security
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
                MessageDxUtil.ShowWarning(Const.MsgCheckInput + lblName.Text.Replace(Const.MsgCheckSign, string.Empty));
                this.txtName.Focus();
                result = false;
            }
            else if (this.txtIPStart.Text.Length == 0)
            {
                MessageDxUtil.ShowWarning(Const.MsgCheckInput + lblIPStart.Text.Replace(Const.MsgCheckSign, string.Empty));
                this.txtIPStart.Focus();
                result = false;
            }
            else if (this.txtIPEnd.Text.Length == 0)
            {
                MessageDxUtil.ShowWarning(Const.MsgCheckInput + lblIPEnd.Text.Replace(Const.MsgCheckSign, string.Empty));
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
        /// ������ʾ�ĺ���
        /// </summary>
        public override void DisplayData()
        {
            if (Id > 0)
            {
                #region ��ʾ��Ϣ
                BlackIPInfo info = BLLFactory<BlackIP>.Instance.FindById(Id);
                if (info != null)
                {
                    tempInfo = info;//���¸���ʱ����ֵ��ʹָ֮����ڵļ�¼����

                    txtName.Text = info.Name;
                    //txtAuthorizeType.SetComboBoxItem(info.AuthorizeType.ToString());
                    //txtForbid.Checked = info.IsForbid==0?false:true;
                    txtIPStart.Text = info.IPStart;
                    txtIPEnd.Text = info.IPEnd;
                    txtNote.Text = info.Remark;
                    txtCreator.Text = info.CreatorId.ToString();
                    txtCreateTime.SetDateTime(info.CreatorTime);
                }
                #endregion         
            }
            else
            {
                txtCreator.Text = Portal.gc.UserInfo.LoginName;//Ĭ��Ϊ��ǰ��¼�û�
                txtCreateTime.DateTime = DateTimeHelper.GetServerDateTime2(); //Ĭ�ϵ�ǰʱ��
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
            //info.AuthorizeType = Convert.ToInt16( txtAuthorizeType.GetComboBoxStrValue());
            //info.IsForbid = (short)(txtForbid.Checked?1:0);
            info.IPStart = txtIPStart.Text;
            info.IPEnd = txtIPEnd.Text;
            info.Remark = txtNote.Text;
            //info.Editor = Portal.gc.UserInfo.LoginName;
            info.EditorId = Portal.gc.UserInfo.Id;
            info.LastUpdateTime = DateTimeHelper.GetServerDateTime2();

            info.CurrentLoginUserId = Portal.gc.UserInfo.Id; //��¼��ǰ��¼���û���Ϣ����������־��¼ʹ��
        }

        /// <summary>
        /// ����״̬�µ����ݱ���
        /// </summary>
        /// <returns></returns>
        public override bool SaveAddNew()
        {
            BlackIPInfo info = tempInfo;//����ʹ�ô��ڵľֲ���������Ϊ������Ϣ���ܱ�����ʹ��
            SetInfo(info);
            //info.Creator = Portal.gc.UserInfo.LoginName;
            info.CreatorId = Portal.gc.UserInfo.Id;
            info.CreatorTime = DateTimeHelper.GetServerDateTime2();

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

            BlackIPInfo info = BLLFactory<BlackIP>.Instance.FindById(Id);
            if (info != null)
            {
                SetInfo(info);

                try
                {
                    #region ��������
                    bool succeed = BLLFactory<BlackIP>.Instance.Update(info, info.Id);
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
        Dictionary<Int32, string> SelectUserDict = new Dictionary<Int32, string>();
        private void RefreshUsers()
        {
            SelectUserDict = new Dictionary<Int32, string>();

            this.lvwUser.BeginUpdate();
            this.lvwUser.Items.Clear();
            List<SimpleUserInfo> list = BLLFactory<BlackIP>.Instance.GetSimpleUserByBlackIP(tempInfo.Id);
            foreach (SimpleUserInfo info in list)
            {
                string name = string.Format("{0}��{1}��", info.LoginName, info.Name);
                // 20170901 wjm ����key ��value��˳��
                CDicKeyValue item = new CDicKeyValue(info.Id, name);
                this.lvwUser.Items.Add(item);

                if (!SelectUserDict.ContainsKey(info.Id))
                {
                    SelectUserDict.Add(info.Id, name);
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
        private void GetUserDictChangs(Dictionary<Int32, string> oldDict, Dictionary<Int32, string> newDict)
        {
            addedUserList = new List<int>();
            deletedUserList = new List<int>();
            foreach (Int32 key in oldDict.Keys)
            {
                if (!newDict.ContainsKey(key))
                {
                    deletedUserList.Add(key);
                }
            }

            foreach (Int32 key in newDict.Keys)
            {
                if (!oldDict.ContainsKey(key))
                {
                    addedUserList.Add(key);
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
                    BLLFactory<BlackIP>.Instance.RemoveUser(id, tempInfo.Id);
                }
                foreach (int id in addedUserList)
                {
                    BLLFactory<BlackIP>.Instance.AddUser(id, tempInfo.Id);
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
                    BLLFactory<BlackIP>.Instance.RemoveUser(userId, tempInfo.Id);
                    this.RefreshUsers();
                }
            }
        }
    }
}
