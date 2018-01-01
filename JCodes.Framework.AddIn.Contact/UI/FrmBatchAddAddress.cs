using System;
using System.Text;
using System.Data;
using System.Drawing;
using System.Windows.Forms;
using System.ComponentModel;
using System.Collections.Generic;
using System.Diagnostics;
using JCodes.Framework.Entity;
using JCodes.Framework.CommonControl.BaseUI;
using JCodes.Framework.CommonControl.Other;
using JCodes.Framework.Common.Office;
using JCodes.Framework.Common;
using JCodes.Framework.jCodesenum.BaseEnum;
using JCodes.Framework.Common.Framework;
using JCodes.Framework.BLL;
using JCodes.Framework.Common.Format;

namespace JCodes.Framework.AddIn.Contact
{
    public partial class FrmBatchAddAddress : BaseEditForm
    {
        /// <summary>
        /// ͨѶ¼����
        /// </summary>
        public AddressType AddressType = AddressType.����;

        public FrmBatchAddAddress()
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
            if (this.txtContent.Text.Trim().Length == 0)
            {
                MessageDxUtil.ShowWarning(Const.MsgCheckInput + txtContent.Text.Replace(Const.MsgCheckSign, string.Empty));
                this.txtContent.Focus();
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

            this.txtAddressType.Text = AddressType.ToString();
            this.btnOK.Enabled = HasFunction("Address/Add") || HasFunction("AddressCompany/Add");
            this.btnAdd.Enabled = this.btnOK.Enabled;

            BindAddressGroup();
        }

        /// <summary>
        /// �༭���߱���״̬��ȡֵ����
        /// </summary>
        /// <param name="info"></param>
        private void SetInfo(AddressInfo info)
        {
            info.Note = txtNote.Text;
            info.EditTime = DateTimeHelper.GetServerDateTime2();
            info.Editor = LoginUserInfo.ID.ToString();//��ǰ�û�
            info.CurrentLoginUserId = LoginUserInfo.ID; //��¼��ǰ��¼���û���Ϣ����������־��¼ʹ��
        }

        /// <summary>
        /// ��ȡ�ʼ���ַ����ʾ��Ϣ��һ���ֵ��б���
        /// </summary>
        /// <param name="emailValues">���ʼ���ַ��˵�����ַ���������ã��ֿ���</param>
        /// <param name="dictList">�淶���ʼ���ַ�б�</param>
        private void GetEmailList(string emailValues, ref Dictionary<string, string> dictList)
        {
            if (!string.IsNullOrEmpty(emailValues))
            {
                string emailReg = @"([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})";
                foreach (string item in emailValues.Split(new char[] { ';', ',' }))
                {
                    string email = CRegex.GetText(item, emailReg, 0);
                    if (!string.IsNullOrEmpty(email))
                    {
                        string display = item.Replace(email, "").Replace("(", "").Replace(")", "").Replace("<", "").Replace(">", "");
                        display = !string.IsNullOrEmpty(display) ? display : email;

                        if (!dictList.ContainsKey(email))
                        {
                            dictList.Add(email, display);
                        }
                    }
                }
            }
        }

        private string GetParamValue(string[] paramList, int index)
        {
            string result = "";
            if (paramList.Length >= (index + 1))
            {
                result = paramList[index];
            }
            return result;
        }

        /// <summary>
        /// ����״̬�µ����ݱ���
        /// </summary>
        /// <returns></returns>
        public override bool SaveAddNew()
        {
            try
            {
                //ͨѶ¼���ݸ�ʽ������,�Ա�,�ֻ� [,����,QQ,����,ְλ]
                //�磺����,��,13800000000
                //����,Ů,13900000000,test@163.com,123456,�г���,���ž���
                foreach (string line in txtContent.Lines)
                {
                    #region ��������
                    string lineString = line.Trim();
                    if (!string.IsNullOrEmpty(lineString))
                    {
                        string[] paramList = lineString.Split(new char[] { '��', ',', '��', ';', ' ', '\t' });
                        AddressInfo info = new AddressInfo();
                        if (paramList.Length >= 3)
                        {
                            info.Name = paramList[0];
                            info.Sex = paramList[1];
                            info.Mobile = paramList[2];

                            info.Email = GetParamValue(paramList, 3);
                            info.QQ = GetParamValue(paramList, 4);
                            info.Dept = GetParamValue(paramList, 5);
                            info.Position = GetParamValue(paramList, 6);

                            SetInfo(info);
                            info.Creator = LoginUserInfo.ID.ToString();
                            info.CreateTime = DateTimeHelper.GetServerDateTime2();
                            info.Dept_ID = LoginUserInfo.DeptId;
                            info.Company_ID = LoginUserInfo.CompanyId;
                            info.AddressType = AddressType;

                            bool succeed = BLLFactory<Address>.Instance.Insert(info);
                            if (succeed)
                            {
                                //�����������������
                                SaveAddressGroup(info.ID);
                            }
                        }

                    }
                    #endregion
                }

                return true;
            }
            catch (Exception ex)
            {
                LogHelper.WriteLog(LogLevel.LOG_LEVEL_CRIT, ex, typeof(FrmBatchAddAddress));
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
            AddressInfo info = BLLFactory<Address>.Instance.FindByID(ID);
            if (info != null)
            {
                SetInfo(info);

                try
                {
                    #region ��������
                    bool succeed = BLLFactory<Address>.Instance.Update(info, info.ID);
                    if (succeed)
                    {
                        //�����������������
                        SaveAddressGroup(info.ID);

                        return true;
                    }
                    #endregion
                }
                catch (Exception ex)
                {
                    LogHelper.WriteLog(LogLevel.LOG_LEVEL_CRIT, ex, typeof(FrmBatchAddAddress));
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
            List<AddressGroupNodeInfo> groupList = new List<AddressGroupNodeInfo>();
            if (AddressType == AddressType.����)
            {
                groupList = BLLFactory<AddressGroup>.Instance.GetTree(AddressType.ToString(), LoginUserInfo.ID.ToString());
            }
            else
            {
                groupList = BLLFactory<AddressGroup>.Instance.GetTree(AddressType.ToString());
            }

            this.checkedListContact.BeginUpdate();
            this.checkedListContact.Items.Clear();
            foreach (AddressGroupNodeInfo nodeInfo in groupList)
            {
                // // 20170901 wjm ����key ��value��˳��
                this.checkedListContact.Items.Add(new CListItem(nodeInfo.ID, nodeInfo.Name), false);
            }
            this.checkedListContact.EndUpdate();
        }

        private bool SaveAddressGroup(string contactId)
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

            bool result = BLLFactory<Address>.Instance.ModifyAddressGroup(contactId, selectGroupIDList);
            return result;
        }

    }
}
