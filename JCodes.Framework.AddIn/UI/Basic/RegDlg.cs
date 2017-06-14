using System;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows.Forms;
using Microsoft.Win32;
using JCodes.Framework.Common;
using JCodes.Framework.CommonControl;
using JCodes.Framework.CommonControl.BaseUI;
using JCodes.Framework.Common.Office;
using JCodes.Framework.Common.Device;
using JCodes.Framework.AddIn.Other;
using JCodes.Framework.CommonControl.Other;
using JCodes.Framework.jCodesenum.BaseEnum;
using JCodes.Framework.Common.Files;
using JCodes.Framework.Common.Encrypt;
using System.Text;

namespace JCodes.Framework.AddIn.UI.Basic
{
    /// <summary>
    /// RegDlg ��ժҪ˵����
    /// </summary>
    public class RegDlg : BaseDock
    {
        private TextBox tbMachineCode;
        private Label label2;
        private TextBox tbSerialNumber;
        private Label label3;
        private Container components = null;
        private DevExpress.XtraEditors.SimpleButton btRegister;
        private DevExpress.XtraEditors.SimpleButton btnGetSerial;
        private Label lblUserName;
        private TextBox txtUserName;
        private Label lblCompany;
        private TextBox txtCompany;
        private DevExpress.XtraEditors.SimpleButton btnCopy;

        public RegDlg()
        {
            InitializeComponent();
            this.StartPosition = FormStartPosition.CenterScreen;
        }

        /// <summary>
        /// ������������ʹ�õ���Դ��
        /// </summary>
        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                if (components != null)
                {
                    components.Dispose();
                }
            }
            base.Dispose(disposing);
        }

        #region Windows ������������ɵĴ���

        /// <summary>
        /// �����֧������ķ��� - ��Ҫʹ�ô���༭���޸�
        /// �˷��������ݡ�
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(RegDlg));
            this.tbMachineCode = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.tbSerialNumber = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.btRegister = new DevExpress.XtraEditors.SimpleButton();
            this.btnCopy = new DevExpress.XtraEditors.SimpleButton();
            this.btnGetSerial = new DevExpress.XtraEditors.SimpleButton();
            this.lblUserName = new System.Windows.Forms.Label();
            this.txtUserName = new System.Windows.Forms.TextBox();
            this.lblCompany = new System.Windows.Forms.Label();
            this.txtCompany = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // tbMachineCode
            // 
            this.tbMachineCode.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tbMachineCode.Location = new System.Drawing.Point(104, 15);
            this.tbMachineCode.Name = "tbMachineCode";
            this.tbMachineCode.ReadOnly = true;
            this.tbMachineCode.Size = new System.Drawing.Size(456, 29);
            this.tbMachineCode.TabIndex = 1;
            // 
            // label2
            // 
            this.label2.ImeMode = System.Windows.Forms.ImeMode.NoControl;
            this.label2.Location = new System.Drawing.Point(22, 17);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(88, 24);
            this.label2.TabIndex = 0;
            this.label2.Text = "�����룺";
            this.label2.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // tbSerialNumber
            // 
            this.tbSerialNumber.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tbSerialNumber.Location = new System.Drawing.Point(104, 167);
            this.tbSerialNumber.MinimumSize = new System.Drawing.Size(286, 100);
            this.tbSerialNumber.Multiline = true;
            this.tbSerialNumber.Name = "tbSerialNumber";
            this.tbSerialNumber.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.tbSerialNumber.Size = new System.Drawing.Size(518, 107);
            this.tbSerialNumber.TabIndex = 1;
            // 
            // label3
            // 
            this.label3.ImeMode = System.Windows.Forms.ImeMode.NoControl;
            this.label3.Location = new System.Drawing.Point(22, 169);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(88, 25);
            this.label3.TabIndex = 0;
            this.label3.Text = "���кţ�";
            this.label3.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // btRegister
            // 
            this.btRegister.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btRegister.Location = new System.Drawing.Point(399, 300);
            this.btRegister.Name = "btRegister";
            this.btRegister.Size = new System.Drawing.Size(96, 25);
            this.btRegister.TabIndex = 2;
            this.btRegister.Text = "ע��";
            this.btRegister.Click += new System.EventHandler(this.btRegister_Click);
            // 
            // btnCopy
            // 
            this.btnCopy.Location = new System.Drawing.Point(530, 15);
            this.btnCopy.Name = "btnCopy";
            this.btnCopy.Size = new System.Drawing.Size(55, 29);
            this.btnCopy.TabIndex = 5;
            this.btnCopy.Text = "����";
            this.btnCopy.Click += new System.EventHandler(this.btnCopy_Click);
            // 
            // btnGetSerial
            // 
            this.btnGetSerial.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnGetSerial.Location = new System.Drawing.Point(517, 300);
            this.btnGetSerial.Name = "btnGetSerial";
            this.btnGetSerial.Size = new System.Drawing.Size(96, 25);
            this.btnGetSerial.TabIndex = 2;
            this.btnGetSerial.Text = "�������к�";
            this.btnGetSerial.Click += new System.EventHandler(this.btnGetSerial_Click);
            // 
            // lblUserName
            // 
            this.lblUserName.ImeMode = System.Windows.Forms.ImeMode.NoControl;
            this.lblUserName.Location = new System.Drawing.Point(3, 69);
            this.lblUserName.Name = "lblUserName";
            this.lblUserName.Size = new System.Drawing.Size(107, 24);
            this.lblUserName.TabIndex = 0;
            this.lblUserName.Text = "ע���û���";
            this.lblUserName.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // txtUserName
            // 
            this.txtUserName.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.txtUserName.Location = new System.Drawing.Point(104, 67);
            this.txtUserName.Name = "txtUserName";
            this.txtUserName.Size = new System.Drawing.Size(518, 29);
            this.txtUserName.TabIndex = 1;
            // 
            // lblCompany
            // 
            this.lblCompany.ImeMode = System.Windows.Forms.ImeMode.NoControl;
            this.lblCompany.Location = new System.Drawing.Point(-1, 116);
            this.lblCompany.Name = "lblCompany";
            this.lblCompany.Size = new System.Drawing.Size(111, 24);
            this.lblCompany.TabIndex = 0;
            this.lblCompany.Text = "ע�ṫ˾��";
            this.lblCompany.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // txtCompany
            // 
            this.txtCompany.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.txtCompany.Location = new System.Drawing.Point(104, 116);
            this.txtCompany.Name = "txtCompany";
            this.txtCompany.Size = new System.Drawing.Size(518, 29);
            this.txtCompany.TabIndex = 1;
            // 
            // RegDlg
            // 
            this.ClientSize = new System.Drawing.Size(643, 336);
            this.Controls.Add(this.btnCopy);
            this.Controls.Add(this.btnGetSerial);
            this.Controls.Add(this.btRegister);
            this.Controls.Add(this.txtCompany);
            this.Controls.Add(this.lblCompany);
            this.Controls.Add(this.txtUserName);
            this.Controls.Add(this.lblUserName);
            this.Controls.Add(this.tbMachineCode);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.tbSerialNumber);
            this.Controls.Add(this.label3);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.MinimumSize = new System.Drawing.Size(419, 300);
            this.Name = "RegDlg";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "ע��";
            this.Load += new System.EventHandler(this.RegDlg_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private void btRegister_Click(object sender, EventArgs e)
        {
            string regCode = tbSerialNumber.Text.Trim();
            string userName = txtUserName.Text.Trim();
            string company = txtCompany.Text.Trim();
            Int32 passed = -1;
            passed = RSASecurityHelper.CheckRegistrationCode(regCode, userName, company);

            if (passed == 0)
            {
                MessageDxUtil.ShowTips("ף������ע��ɹ�\r\n��������¼֮��Ż���Ч��");
            }
            else
            {
                MessageDxUtil.ShowError("ע��ʧ��");
            }
        }

        /// <summary>
        /// �����û���������кŵ�ע�����
        /// </summary>
        /// <param name="mySerail"></param>
        private void SaverInformationToRegedit(string mySerail)
        {
            RegistryKey reg;
            string regkey = UIConstants.SoftwareRegistryKey;
            reg = Registry.CurrentUser.OpenSubKey(regkey, true);
            if (null == reg)
            {
                reg = Registry.CurrentUser.CreateSubKey(regkey);
            }
            if (null != reg)
            {
                reg.SetValue("productName", UIConstants.SoftwareProductName);
                reg.SetValue("version", UIConstants.SoftwareVersion);
                reg.SetValue("SerialNumber", mySerail);
            }
        }

        private void RegDlg_Load(object sender, EventArgs e)
        {
            tbMachineCode.Text = HardwareInfoHelper.GetCPUId();
        }

        private void btnCopy_Click(object sender, EventArgs e)
        {
            Clipboard.Clear();
            Clipboard.SetText(this.tbMachineCode.Text);
            MessageDxUtil.ShowTips(Const.CopyOkMsg);
        }

        /// <summary>
        /// �������к�
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnGetSerial_Click(object sender, EventArgs e)
        {
            AppConfig appconfig = new AppConfig();
            string email = appconfig.AppConfigGet("EMail");
            MessageDxUtil.ShowTips(string.Format("�뷢�����䵽{0}�����������к�, ������⡾XXX����jCodes Ӧ�ó������кš����ʼ�������д��������", email));
        }
    }
}