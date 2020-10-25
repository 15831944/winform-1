using System;
using System.Text;
using System.Data;
using System.Drawing;
using System.Windows.Forms;
using System.ComponentModel;
using System.Collections.Generic;
using DevExpress.XtraTreeList.Nodes;
using JCodes.Framework.Entity;
using JCodes.Framework.Common;
using JCodes.Framework.BLL;
using JCodes.Framework.CommonControl;
using JCodes.Framework.jCodesenum.BaseEnum;
using JCodes.Framework.CommonControl.BaseUI;
using JCodes.Framework.CommonControl.Controls;
using JCodes.Framework.Common.Framework;
using JCodes.Framework.Common.Extension;
using JCodes.Framework.CommonControl.Other;
using JCodes.Framework.Common.Format;
using JCodes.Framework.AddIn.Basic;
using JCodes.Framework.jCodesenum;
using JCodes.Framework.Common.Network;

namespace JCodes.Framework.AddIn.Security
{
    public partial class FrmEditUser : BaseEditForm
    {
        /*
        �û���(Name) ��½����(LoginName)
        ������˾(CompanyId) ��������(DeptId)
        �û�����(UserCode) ������(Seq)
        qq(QQ)
        �ʼ���ַ(Email)	�ƶ��绰(MobilePhone)
        ���֤(IdCard)		�Ա�(Gender)	��������(Birthday)
        �칫�绰(OfficePhone)	��ͥ�绰(HomePhone)	
        �칫��ַ(WorkAddress)	��ͥסַ(Address)
        ����ǩ��(Signature)	��ע(Remark)
        ���״̬(AuditStatus)
        �û�����(IsExpire)	�˺�ɾ��(IsDelete)
        ������(CreatorId)		����ʱ��(CreatorTime)
     
        Id��Password��Portrait��EditorId��LastUpdateTime��Question1��Question2��Question3��Answer1��Answer2��
        Answer3��LastLoginIp��LastLoginTime��LastLoginMac��CurLoginIp��CurLoginTime��CurLoginMac��LastChangePwdTime
         */

        /// <summary>
        /// ����һ����ʱ���󣬷����ڸ��������л�ȡ���ڵ�GUID
        /// </summary>
        private UserInfo tempInfo = new UserInfo();

        public FrmEditUser()
        {
            InitializeComponent();

            this.txtCompany.EditValueChanged += new EventHandler(txtCompany_EditValueChanged);
        }

        void txtCompany_EditValueChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(this.txtCompany.Value))
            {
                txtDept.ParentOuId = this.txtCompany.Value.ToInt32();
                txtDept.Init();
            }
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
            else if (this.txtLoginName.Text.Trim().Length == 0)
            {
                MessageDxUtil.ShowWarning(Const.MsgCheckInput + lblLoginName.Text.Replace(Const.MsgCheckSign, string.Empty));
                this.txtLoginName.Focus();
                result = false;
            }
            else if (this.txtCompany.Text == "")
            {
                MessageDxUtil.ShowWarning(Const.MsgCheckInput + lblCompany.Text.Replace(Const.MsgCheckSign, string.Empty));
                this.txtCompany.Focus();
                return false;
            }
            else if (this.txtDept.Text == "")
            {
                MessageDxUtil.ShowWarning(Const.MsgCheckInput + lblDept.Text.Replace(Const.MsgCheckSign, string.Empty));
                this.txtDept.Focus();
                return false;
            }
            #endregion

            return result;
        }

        /// <summary>
        /// ��ʼ�������ֵ�
        /// </summary>
        private void InitDictItem()
        {
            this.treeFunction.Nodes.Clear();//�����ƽڵ�
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
                UserInfo info = BLLFactory<User>.Instance.FindById(Id);
                if (info != null)
                {
                    tempInfo = info;//���¸���ʱ����ֵ��ʹָ֮����ڵļ�¼����

                    RefreshOUs(info.Id);
                    RefreshRoles(info.Id);
                    RefreshFunction(info.Id);

                    txtIsExpire.EditValue = (Int32)info.IsExpire;
                    txtIsDelete.EditValue = (Int32)info.IsDelete;
                    txtName.Text = info.Name;
                    txtLoginName.Text = info.LoginName;
                    txtCompany.Value = info.CompanyId.ToString();
                    txtDept.Value = info.DeptId.ToString();
                    txtUserCode.Text = info.UserCode;
                    txtSeq.Text = info.Seq;
                    txtQq.Text = info.QQ.ToString();
                    txtEmail.Text = info.Email;
                    txtMobilePhone.Text = info.MobilePhone;
                    txtIdCard.Text = info.IdCard;
                    txtGender.EditValue = (Int32)info.Gender;
                    txtBirthday.SetDateTime(info.Birthday);
                    txtOfficePhone.Text = info.OfficePhone;
                    txtHomePhone.Text = info.HomePhone;
                    txtWorkAddr.Text = info.WorkAddress;
                    txtAddress.Text = info.Address;
                    txtSignature.Text = info.Signature;
                    txtRemark.Text = info.Remark;
                    txtAuditStatus.EditValue = (Int32)info.AuditStatus;
                    txtIsExpire.EditValue = (Int32)info.IsExpire;
                    txtIsDelete.EditValue = (Int32)info.IsDelete;
                    txtCreator.Text = Portal.gc.UserInfo.LoginName;
                    txtCreatorTime.SetDateTime(info.CreatorTime);
                    txtMac.Text = NetworkUtil.GetMacAddress();
                    txtIP.Text = NetworkUtil.GetLocalIP();

                    //����ǹ���Ա����������Ϊ����
                    if (Portal.gc.IsSuperAdmin)
                    {
                        this.txtIsExpire.Enabled = false;
                        this.txtIsExpire.EditValue = (short)IsExpand.��;
                        this.txtIsDelete.Enabled = false;
                        this.txtIsDelete.EditValue = (short)IsDelete.��;
                    }
                }
                #endregion            
            }
            else
            {
                txtCreator.Text = Portal.gc.UserInfo.LoginName;//Ĭ��Ϊ��ǰ��¼�û�
                txtCreatorTime.DateTime = DateTimeHelper.GetServerDateTime2(); //Ĭ�ϵ�ǰʱ��
                xtraTabControl1.TabPages[1].PageVisible = false;
                txtMac.Text = NetworkUtil.GetMacAddress();
                txtIP.Text = NetworkUtil.GetLocalIP();
            }
        }

        public override void ClearScreen()
        {
            this.tempInfo = new UserInfo();
            base.ClearScreen();
        }

        /// <summary>
        /// �༭���߱���״̬��ȡֵ����
        /// </summary>
        /// <param name="info"></param>
        private void SetInfo(UserInfo info)
        {
            info.Name = txtName.Text;
            info.LoginName = txtLoginName.Text;
            info.CompanyId = txtCompany.Value.ToInt32();
            info.DeptId = txtDept.Value.ToInt32();
            info.UserCode = txtUserCode.Text;
            info.Seq = txtSeq.Text;
            info.QQ = txtQq.Text.ToInt32();
            info.Email = txtEmail.Text;
            info.MobilePhone = txtMobilePhone.Text;
            info.IdCard = txtIdCard.Text;
            info.Gender = (short)txtGender.EditValue.ToString().ToInt32();
            info.Birthday = txtBirthday.DateTime;
            info.OfficePhone = txtOfficePhone.Text;
            info.HomePhone = txtHomePhone.Text;
            info.WorkAddress = txtWorkAddr.Text;
            info.Address = txtAddress.Text;
            info.Signature = txtSignature.Text;
            info.Remark = txtRemark.Text;
            info.AuditStatus = (short)txtAuditStatus.EditValue.ToString().ToInt32();
            info.IsExpire = (short)txtIsExpire.EditValue.ToString().ToInt32();
            info.IsDelete = (short)txtIsDelete.EditValue.ToString().ToInt32();
            info.EditorId = Portal.gc.UserInfo.Id;
            info.LastUpdateTime = DateTimeHelper.GetServerDateTime2(); //Ĭ�ϵ�ǰʱ��
            info.LastLoginIp = NetworkUtil.GetLocalIP();
            info.LastLoginTime = DateTimeHelper.GetServerDateTime2(); //Ĭ�ϵ�ǰʱ��
            info.LastLoginMac = NetworkUtil.GetMacAddress();
        }

        /// <summary>
        /// ����״̬�µ����ݱ���
        /// </summary>
        /// <returns></returns>
        public override bool SaveAddNew()
        {
            UserInfo info = tempInfo;//����ʹ�ô��ڵľֲ���������Ϊ������Ϣ���ܱ�����ʹ��
            SetInfo(info);
            info.CreatorId = Portal.gc.UserInfo.Id;
            info.CreatorTime = DateTimeHelper.GetServerDateTime2();
            info.Id = BLLFactory<User>.Instance.GetMaxId() + 1;
            info.Password = Const.defaultPwd;
            info.CurLoginIp = NetworkUtil.GetLocalIP();
            info.CurLoginMac = NetworkUtil.GetMacAddress();
            info.LastLoginTime = DateTimeHelper.GetServerDateTime2(); //Ĭ�ϵ�ǰʱ��

            try
            {
                #region ��������

                bool succeed = BLLFactory<User>.Instance.Insert(info);
                if (succeed)
                {
                    //�����������������
                    MessageDxUtil.ShowTips(string.Format("����û�{0}({1})�ɹ����˻�Ĭ������Ϊ��{2}��", info.Name, info.LoginName, Const.defaultPwd));
                    return true;
                }
                #endregion
            }
            catch (Exception ex)
            {
                LogHelper.WriteLog(LogLevel.LOG_LEVEL_CRIT, ex, typeof(FrmEditUser));
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
            UserInfo info = BLLFactory<User>.Instance.FindById(Id);
            if (info != null)
            {
                SetInfo(info);

                try
                {
                    #region ��������
                    bool succeed = BLLFactory<User>.Instance.Update(info, info.Id);
                    if (succeed)
                    {
                        //�����������������

                        return true;
                    }
                    #endregion
                }
                catch (Exception ex)
                {
                    LogHelper.WriteLog(LogLevel.LOG_LEVEL_CRIT, ex, typeof(FrmEditUser));
                    MessageDxUtil.ShowError(ex.Message);
                }
            }
            return false;
        }

        private void txtIdentityCard_Validated(object sender, EventArgs e)
        {
            if (this.txtIdCard.Text.Trim().Length > 0)
            {
                GenerateBirthdays();
            }
            else
            {
                /*this.txtBirthday.Text = "";
                this.txtGender.EditValue = "";*/
            }
        }

        private void GenerateBirthdays()
        {
            string idCardNo = this.txtIdCard.Text.Trim();
            if (!string.IsNullOrEmpty(idCardNo))
            {
                string result = IDCardHelper.Validate(idCardNo);
                if (!string.IsNullOrEmpty(result))
                {
                    MessageDxUtil.ShowTips(result);
                    this.txtIdCard.Focus();
                    return;
                }

                DateTime birthDay = IDCardHelper.GetBirthday(idCardNo);
                //int age = DateTimeHelper.GetServerDateTime2().Year - birthDay.Year;
                string sex = IDCardHelper.GetSexName(idCardNo);
                this.txtBirthday.DateTime = birthDay;
                this.txtGender.EditValue = EnumHelper.GetMemberValue<Gender>(sex);
            }
        }

        private void RefreshOUs(Int32 Id)
        {
            this.lvwOU.BeginUpdate();
            this.lvwOU.Items.Clear();

            List<OUInfo> list = BLLFactory<OU>.Instance.GetOUsByUserId(Id);
            foreach (OUInfo info in list)
            {
                this.lvwOU.Items.Add(info.Name);
            }
            this.lvwOU.EndUpdate();
        }

        private void RefreshRoles(Int32 Id)
        {
            this.lvwRole.BeginUpdate();
            this.lvwRole.Items.Clear();

            List<RoleInfo> list = BLLFactory<Role>.Instance.GetRolesByUser(Id);
            foreach (RoleInfo info in list)
            {
                this.lvwRole.Items.Add(info.Name);
            }
            this.lvwRole.EndUpdate();
        }
        
        public void RefreshFunction(Int32 Id)
        {
            this.treeFunction.BeginUpdate();
            this.treeFunction.Nodes.Clear();

            List<SystemTypeInfo> typeList = BLLFactory<SystemType>.Instance.GetAll();
            foreach (SystemTypeInfo typeInfo in typeList)
            {
                TreeNode parentNode = this.treeFunction.Nodes.Add(typeInfo.Gid, typeInfo.Name, 0, 0);
                List<FunctionNodeInfo> list = BLLFactory<Function>.Instance.GetFunctionNodesByUser(Id, typeInfo.Gid);
                AddFunctionNode(parentNode, list);                
            }

            this.treeFunction.ExpandAll();
            this.treeFunction.EndUpdate();            
        }

        private void AddFunctionNode(TreeNode node, List<FunctionNodeInfo> list)
        {
            foreach (FunctionNodeInfo info in list)
            {
               TreeNode subNode =  node.Nodes.Add(info.Gid, info.Name, 1, 1);

               AddFunctionNode(subNode, info.Children);
            }
        }
    }
}
