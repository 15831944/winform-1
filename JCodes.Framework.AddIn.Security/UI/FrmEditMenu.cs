using System;
using System.Text;
using System.Data;
using System.Drawing;
using System.Windows.Forms;
using System.ComponentModel;
using System.Collections.Generic;
using System.IO;
using JCodes.Framework.Entity;
using JCodes.Framework.Common;
using JCodes.Framework.BLL;
using JCodes.Framework.CommonControl;
using JCodes.Framework.jCodesenum.BaseEnum;
using JCodes.Framework.CommonControl.BaseUI;
using JCodes.Framework.Common.Framework;
using JCodes.Framework.CommonControl.Other;
using JCodes.Framework.Common.Files;
using JCodes.Framework.CommonControl.Controls;
using JCodes.Framework.AddIn.Basic;

namespace JCodes.Framework.AddIn.Security
{
    public partial class FrmEditMenu : BaseEditForm
    {
        /// <summary>
        /// ϵͳ��ʶID
        /// </summary>
        public string SystemType_ID = "";

        /// <summary>
        /// �ϼ��˵�ID
        /// </summary>
        public string PID = "";

        public FrmEditMenu()
        {
            InitializeComponent();

            this.menuControl1.EditValueChanged += new EventHandler(menuControl1_EditValueChanged);
        }

        void menuControl1_EditValueChanged(object sender, EventArgs e)
        {
            DisplaySystemType();
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

            //��ϵͳ����
            List<SystemTypeInfo> systemList = BLLFactory<SystemType>.Instance.GetAll();
            foreach (SystemTypeInfo info in systemList)
            {
                this.txtSystemType.Properties.Items.Add(new CListItem(info.OID, info.Name));
            }
            if (this.txtSystemType.Properties.Items.Count == 1)
            {
                this.txtSystemType.SelectedIndex = 0;
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
                #region ��ʾ�ͻ���Ϣ
                MenuInfo info = BLLFactory<Menus>.Instance.FindByID(ID);

                if (info != null)
                {
                    this.menuControl1.Value = info.PID;
                    txtName.Text = info.Name;
                    txtIcon.Text = info.Icon;
                    txtSeq.Text = info.Seq;
                    txtFunctionId.Text = info.FunctionId;
                    txtVisible.Checked = info.Visible;
                    txtWinformType.Text = info.WinformType;
                    txtUrl.Text = info.Url;
                    txtWebIcon.Text = info.WebIcon;
                    txtSystemType.SetComboBoxItem(info.SystemType_ID);//����ϵͳ����
                }
                #endregion           
            }
            else
            { 
                if (!string.IsNullOrEmpty(SystemType_ID))
                {
                    txtSystemType.SetComboBoxItem(SystemType_ID); 
                }
            }

            DisplaySystemType();
        }

        /// <summary>
        /// �༭���߱���״̬��ȡֵ����
        /// </summary>
        /// <param name="info"></param>
        private void SetInfo(MenuInfo info)
        {
            info.PID = this.menuControl1.Value;
            info.Name = txtName.Text;
            info.Icon = txtIcon.Text;
            info.Seq = txtSeq.Text;
            info.FunctionId = txtFunctionId.Text;
            info.Visible = txtVisible.Checked;
            info.WinformType = txtWinformType.Text;
            info.Url = txtUrl.Text;
            info.WebIcon = txtWebIcon.Text;
            info.SystemType_ID = this.txtSystemType.GetComboBoxStrValue();

            info.CurrentLoginUserId = Portal.gc.UserInfo.ID.ToString();
        }

        public override void ClearScreen()
        {
            int intSeq = 0;
            string seqValue = this.txtSeq.Text;
            string pid = this.menuControl1.Value;
            base.ClearScreen();

            this.txtVisible.Checked = true;
            this.txtUrl.Text = "#";
            if (int.TryParse(seqValue, out intSeq))
            {
                this.txtSeq.Text = (intSeq + 1).ToString().PadLeft(seqValue.Trim().Length, '0');
            }
            this.menuControl1.Value = pid;
        }

        /// <summary>
        /// ����״̬�µ����ݱ���
        /// </summary>
        /// <returns></returns>
        public override bool SaveAddNew()
        {
            MenuInfo info = new MenuInfo();
            SetInfo(info);

            try
            {
                #region ��������

                bool succeed = BLLFactory<Menus>.Instance.Insert(info);
                if (succeed)
                {
                    if (this.menuControl1.Value == "-1")
                    {
                        string PID = info.ID;//�ȼ�¼ԭ����ID����ΪPID

                        //��������˵���Ŀ��ӣ�ͬʱ���һ�������˵���Ŀ
                        info.PID = PID;
                        info.ID = Guid.NewGuid().ToString();
                        info.Seq = "001";
                        BLLFactory<Menus>.Instance.Insert(info);
                    }                    

                    return true;
                }
                #endregion
            }
            catch (Exception ex)
            {
                LogHelper.WriteLog(LogLevel.LOG_LEVEL_CRIT, ex, typeof(FrmEditMenu));
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
            MenuInfo info = BLLFactory<Menus>.Instance.FindByID(ID);
            if (info != null)
            {
                if (info.PID != this.menuControl1.Value && BLLFactory<Menus>.Instance.GetMenuByID(ID).Count <= 1)
                {
                    MessageDxUtil.ShowError(Const.ForbidOperMsg);
                    return false;
                }

                SetInfo(info);

                try
                {
                    #region ��������
                    bool succeed = BLLFactory<Menus>.Instance.Update(info, info.ID.ToString());
                    if (succeed)
                    {
                        //�����������������

                        return true;
                    }
                    #endregion
                }
                catch (Exception ex)
                {
                    LogHelper.WriteLog(LogLevel.LOG_LEVEL_CRIT, ex, typeof(FrmEditMenu));
                    MessageDxUtil.ShowError(ex.Message);
                }
            }
            return false;
        }

        private void FrmEditMenu_Load(object sender, EventArgs e)
        {

        }

        private void DisplaySystemType()
        {
            if (menuControl1.Value == "-1")
            {
                this.layoutSystemType.Visibility = DevExpress.XtraLayout.Utils.LayoutVisibility.Always;
            }
            else
            {
                this.layoutSystemType.Visibility = DevExpress.XtraLayout.Utils.LayoutVisibility.Never;
            }
        }

        private void btnSelectIcon_Click(object sender, EventArgs e)
        {
            string file = GetIconPath();
            if (!string.IsNullOrEmpty(file))
            {
                this.txtIcon.Text = file;
            }
        }

        private void btnSelectWebIcon_Click(object sender, EventArgs e)
        {
            string file = GetIconPath();
            if (!string.IsNullOrEmpty(file))
            {
                this.txtWebIcon.Text = file;
            }
        }

        private string GetIconPath()
        {
            string iconFile = "Icon File(*.ico)|*.ico|Image Files(*.BMP;*.bmp;*.JPG;*.jpg;*.GIF;*.gif;*.png;*.PNG)|(*.BMP;*.bmp;*.JPG;*.jpg;*.GIF;*.gif;*.png;*.PNG)|All File(*.*)|*.*";
            string file = FileDialogHelper.Open("ѡ��ͼ���ļ�", iconFile, "", Application.StartupPath);
            string result = "";
            if (!string.IsNullOrEmpty(file))
            {
                result = file.Replace(Application.StartupPath, "").Trim('\\');
            }

            return result;
        }
    }
}
