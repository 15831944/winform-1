using System;
using System.ComponentModel;
using System.Drawing;
using System.Security.Cryptography;
using System.Text;
using System.Windows.Forms;
using System.Collections;
using System.Net;
using Microsoft.Win32;
using JCodes.Framework.Common;
using JCodes.Framework.Common.Files;
using JCodes.Framework.CommonControl.Other;
using JCodes.Framework.Common.Office;
using JCodes.Framework.Common.Device;
using JCodes.Framework.Common.Encrypt;

namespace JCodes.Framework.CommonControl.RSARegistryTool
{
	/// <summary>
	/// Form1 ��ժҪ˵����
	/// </summary>
	public class FrmRegeditTool : Form
    {
        #region ���Ա���
        private Label label3;
        private TextBox txtMachineCode;
        private Label label4;
        private TextBox txtRegisterCode;
        private Button btnOK;
        private Container components = null;
        private Button btnValidateCode;
        private Button btnGenerateNewKey;
        private TextBox txtExpiredDate;
        private Label label5;
        private Button btnGetMachineCode;
        private Button btnReg;
        private Button btnUnreg;
        private Label lblUserName;
        private TextBox txtUserName;
        private Label lblCompany;
        private TextBox txtCompany;
        private Button btnCopy;
        private Button btnGetExpiredDate;
        
        #endregion

        public FrmRegeditTool()
		{
			InitializeComponent();

            Init_View();
		}

        /// <summary>
        /// ��ʼ������
        /// </summary>
        private void Init_View()
        {
            txtMachineCode.Text = HardwareInfoHelper.GetCPUId();
            txtExpiredDate.Text = DateTime.Now.AddYears(1).ToString("yyyyMMdd");
        }

		/// <summary>
		/// ������������ʹ�õ���Դ��
		/// </summary>
		protected override void Dispose( bool disposing )
		{
			if( disposing )
			{
				if (components != null) 
				{
					components.Dispose();
				}
			}
			base.Dispose( disposing );
		}

		#region Windows ������������ɵĴ���
		/// <summary>
		/// �����֧������ķ��� - ��Ҫʹ�ô���༭���޸�
		/// �˷��������ݡ�
		/// </summary>
		private void InitializeComponent()
		{
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmRegeditTool));
            this.label3 = new System.Windows.Forms.Label();
            this.txtMachineCode = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.txtRegisterCode = new System.Windows.Forms.TextBox();
            this.btnOK = new System.Windows.Forms.Button();
            this.btnValidateCode = new System.Windows.Forms.Button();
            this.btnGenerateNewKey = new System.Windows.Forms.Button();
            this.txtExpiredDate = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.btnGetMachineCode = new System.Windows.Forms.Button();
            this.btnGetExpiredDate = new System.Windows.Forms.Button();
            this.btnReg = new System.Windows.Forms.Button();
            this.btnUnreg = new System.Windows.Forms.Button();
            this.lblUserName = new System.Windows.Forms.Label();
            this.txtUserName = new System.Windows.Forms.TextBox();
            this.lblCompany = new System.Windows.Forms.Label();
            this.txtCompany = new System.Windows.Forms.TextBox();
            this.btnCopy = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(47, 26);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(62, 18);
            this.label3.TabIndex = 2;
            this.label3.Text = "������";
            // 
            // txtMachineCode
            // 
            this.txtMachineCode.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.txtMachineCode.Location = new System.Drawing.Point(119, 21);
            this.txtMachineCode.Multiline = true;
            this.txtMachineCode.Name = "txtMachineCode";
            this.txtMachineCode.Size = new System.Drawing.Size(692, 29);
            this.txtMachineCode.TabIndex = 3;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(8, 165);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(98, 18);
            this.label4.TabIndex = 2;
            this.label4.Text = "���ע����";
            // 
            // txtRegisterCode
            // 
            this.txtRegisterCode.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.txtRegisterCode.Location = new System.Drawing.Point(119, 165);
            this.txtRegisterCode.Multiline = true;
            this.txtRegisterCode.Name = "txtRegisterCode";
            this.txtRegisterCode.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.txtRegisterCode.Size = new System.Drawing.Size(692, 205);
            this.txtRegisterCode.TabIndex = 3;
            // 
            // btnOK
            // 
            this.btnOK.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.btnOK.Location = new System.Drawing.Point(263, 398);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(110, 42);
            this.btnOK.TabIndex = 4;
            this.btnOK.Text = "����ע����";
            this.btnOK.Click += new System.EventHandler(this.btnOK_Click);
            // 
            // btnValidateCode
            // 
            this.btnValidateCode.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.btnValidateCode.Location = new System.Drawing.Point(491, 398);
            this.btnValidateCode.Name = "btnValidateCode";
            this.btnValidateCode.Size = new System.Drawing.Size(77, 42);
            this.btnValidateCode.TabIndex = 6;
            this.btnValidateCode.Text = "��֤";
            this.btnValidateCode.UseVisualStyleBackColor = true;
            this.btnValidateCode.Click += new System.EventHandler(this.btnValidateCode_Click);
            // 
            // btnGenerateNewKey
            // 
            this.btnGenerateNewKey.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.btnGenerateNewKey.Location = new System.Drawing.Point(570, 398);
            this.btnGenerateNewKey.Name = "btnGenerateNewKey";
            this.btnGenerateNewKey.Size = new System.Drawing.Size(143, 42);
            this.btnGenerateNewKey.TabIndex = 7;
            this.btnGenerateNewKey.Text = "�����¹�Կ˽Կ";
            this.btnGenerateNewKey.UseVisualStyleBackColor = true;
            this.btnGenerateNewKey.Click += new System.EventHandler(this.btnGenerateNewKey_Click);
            // 
            // txtExpiredDate
            // 
            this.txtExpiredDate.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.txtExpiredDate.Location = new System.Drawing.Point(119, 58);
            this.txtExpiredDate.Name = "txtExpiredDate";
            this.txtExpiredDate.Size = new System.Drawing.Size(692, 28);
            this.txtExpiredDate.TabIndex = 9;
            // 
            // label5
            // 
            this.label5.ImeMode = System.Windows.Forms.ImeMode.NoControl;
            this.label5.Location = new System.Drawing.Point(19, 58);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(87, 26);
            this.label5.TabIndex = 8;
            this.label5.Text = "��Ч����";
            this.label5.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // btnGetMachineCode
            // 
            this.btnGetMachineCode.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.btnGetMachineCode.Location = new System.Drawing.Point(5, 398);
            this.btnGetMachineCode.Name = "btnGetMachineCode";
            this.btnGetMachineCode.Size = new System.Drawing.Size(123, 42);
            this.btnGetMachineCode.TabIndex = 4;
            this.btnGetMachineCode.Text = "��ȡ������";
            this.btnGetMachineCode.Click += new System.EventHandler(this.btnGetMachineCode_Click);
            // 
            // btnGetExpiredDate
            // 
            this.btnGetExpiredDate.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.btnGetExpiredDate.Location = new System.Drawing.Point(132, 398);
            this.btnGetExpiredDate.Name = "btnGetExpiredDate";
            this.btnGetExpiredDate.Size = new System.Drawing.Size(128, 42);
            this.btnGetExpiredDate.TabIndex = 4;
            this.btnGetExpiredDate.Text = "��ȡ��Ч����";
            this.btnGetExpiredDate.Click += new System.EventHandler(this.btnGetExpiredDate_Click);
            // 
            // btnReg
            // 
            this.btnReg.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.btnReg.Location = new System.Drawing.Point(716, 398);
            this.btnReg.Name = "btnReg";
            this.btnReg.Size = new System.Drawing.Size(77, 42);
            this.btnReg.TabIndex = 6;
            this.btnReg.Text = "ע��";
            this.btnReg.UseVisualStyleBackColor = true;
            this.btnReg.Click += new System.EventHandler(this.btnReg_Click);
            // 
            // btnUnreg
            // 
            this.btnUnreg.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.btnUnreg.Location = new System.Drawing.Point(799, 398);
            this.btnUnreg.Name = "btnUnreg";
            this.btnUnreg.Size = new System.Drawing.Size(77, 42);
            this.btnUnreg.TabIndex = 6;
            this.btnUnreg.Text = "ע��";
            this.btnUnreg.UseVisualStyleBackColor = true;
            this.btnUnreg.Click += new System.EventHandler(this.btnUnreg_Click);
            // 
            // lblUserName
            // 
            this.lblUserName.ImeMode = System.Windows.Forms.ImeMode.NoControl;
            this.lblUserName.Location = new System.Drawing.Point(19, 95);
            this.lblUserName.Name = "lblUserName";
            this.lblUserName.Size = new System.Drawing.Size(87, 26);
            this.lblUserName.TabIndex = 8;
            this.lblUserName.Text = "ע���û�";
            this.lblUserName.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // txtUserName
            // 
            this.txtUserName.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.txtUserName.Location = new System.Drawing.Point(119, 92);
            this.txtUserName.Name = "txtUserName";
            this.txtUserName.Size = new System.Drawing.Size(692, 28);
            this.txtUserName.TabIndex = 9;
            // 
            // lblCompany
            // 
            this.lblCompany.ImeMode = System.Windows.Forms.ImeMode.NoControl;
            this.lblCompany.Location = new System.Drawing.Point(19, 127);
            this.lblCompany.Name = "lblCompany";
            this.lblCompany.Size = new System.Drawing.Size(87, 26);
            this.lblCompany.TabIndex = 8;
            this.lblCompany.Text = "ע�ṫ˾";
            this.lblCompany.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // txtCompany
            // 
            this.txtCompany.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.txtCompany.Location = new System.Drawing.Point(119, 128);
            this.txtCompany.Name = "txtCompany";
            this.txtCompany.Size = new System.Drawing.Size(692, 28);
            this.txtCompany.TabIndex = 9;
            // 
            // btnCopy
            // 
            this.btnCopy.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.btnCopy.Location = new System.Drawing.Point(376, 398);
            this.btnCopy.Name = "btnCopy";
            this.btnCopy.Size = new System.Drawing.Size(111, 42);
            this.btnCopy.TabIndex = 6;
            this.btnCopy.Text = "����ע����";
            this.btnCopy.UseVisualStyleBackColor = true;
            this.btnCopy.Click += new System.EventHandler(this.btnCopy_Click);
            // 
            // FrmRegeditTool
            // 
            this.AutoScaleBaseSize = new System.Drawing.Size(10, 21);
            this.ClientSize = new System.Drawing.Size(879, 468);
            this.Controls.Add(this.txtCompany);
            this.Controls.Add(this.lblCompany);
            this.Controls.Add(this.txtUserName);
            this.Controls.Add(this.lblUserName);
            this.Controls.Add(this.txtExpiredDate);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.btnGenerateNewKey);
            this.Controls.Add(this.btnUnreg);
            this.Controls.Add(this.btnReg);
            this.Controls.Add(this.btnCopy);
            this.Controls.Add(this.btnValidateCode);
            this.Controls.Add(this.btnGetExpiredDate);
            this.Controls.Add(this.btnGetMachineCode);
            this.Controls.Add(this.btnOK);
            this.Controls.Add(this.txtMachineCode);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.txtRegisterCode);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "FrmRegeditTool";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "���ע����������";
            this.ResumeLayout(false);
            this.PerformLayout();

		}
		#endregion

		//����
		private void btnOK_Click(object sender, EventArgs e)
		{
            if (!CheckInput()) return;

            string userName = txtUserName.Text;
            string companyName = txtCompany.Text;
            this.txtRegisterCode.Text = RSASecurityHelper.GetRegistrationCode(userName, companyName);
		}

        private bool CheckInput()
        {
            bool result = true;//Ĭ���ǿ���ͨ��
            if (this.txtMachineCode.Text.Trim().Length == 0)
            {
                MessageDxUtil.ShowTips("���ȡ�������������");
                this.txtMachineCode.Focus();
                result = false;
            }
            else if (this.txtMachineCode.Text.Trim().Contains(Const.VerticalLine))
            {
                MessageDxUtil.ShowTips("�������в���������ַ���: " + Const.VerticalLine);
                this.txtMachineCode.Focus();
                result = false;
            }
            else if (this.txtExpiredDate.Text.Trim().Length == 0)
            {
                MessageDxUtil.ShowTips("���ȡ����������Ч����");
                this.txtExpiredDate.Focus();
                result = false;
            }
            else if (this.txtExpiredDate.Text.Trim().Contains(Const.VerticalLine))
            {
                MessageDxUtil.ShowTips("��Ч�����в���������ַ���: " + Const.VerticalLine);
                this.txtExpiredDate.Focus();
                result = false;
            }
            else if (this.txtUserName.Text.Trim().Length == 0)
            {
                MessageDxUtil.ShowTips("������ע���û�");
                this.txtUserName.Focus();
                result = false;
            }
            else if (this.txtUserName.Text.Trim().Contains(Const.VerticalLine))
            {
                MessageDxUtil.ShowTips("ע���û��в���������ַ���: " + Const.VerticalLine);
                this.txtUserName.Focus();
                result = false;
            }
            else if (this.txtCompany.Text.Trim().Length == 0)
            {
                MessageDxUtil.ShowTips("������ע�ṫ˾");
                this.txtCompany.Focus();
                result = false;
            }
            else if (this.txtCompany.Text.Trim().Contains(Const.VerticalLine))
            {
                MessageDxUtil.ShowTips("ע�ṫ˾�в���������ַ���: " + Const.VerticalLine);
                this.txtCompany.Focus();
                result = false;
            }
            return result;
            
        }

        private string GetMachineCode()
        {
            return HardwareInfoHelper.GetCPUId();
        }

		//��֤
		private void btnValidateCode_Click(object sender, EventArgs e)
		{
            AppConfig config = new AppConfig();
            string LicensePath = config.AppConfigGet("LicensePath");
            string machineCode = GetMachineCode();
            string regCode = txtRegisterCode.Text.Trim();//FileUtil.FileToString(LicensePath);
            string userName = txtUserName.Text.Trim();
            string company = txtCompany.Text.Trim();
            Int32 passed = -1;
            passed = RSASecurityHelper.CheckRegistrationCode(regCode, userName, company);
            
			if(passed == 0)
			{
                MessageDxUtil.ShowTips("��֤�ɹ�");
			}
			else
			{
                MessageDxUtil.ShowTips("��֤���ɹ�");
			}
		}

        private void btnGenerateNewKey_Click(object sender, EventArgs e)
        {
            FrmKeyPair dlg = new FrmKeyPair();
            dlg.ShowDialog();
        }

        private void btnGetMachineCode_Click(object sender, EventArgs e)
        {
            txtMachineCode.Text = HardwareInfoHelper.GetCPUId();
        }

        private void btnGetExpiredDate_Click(object sender, EventArgs e)
        {
            string nowDate = Data.getSysDate();
            txtExpiredDate.Text = Convert.ToDateTime(nowDate).AddYears(1).ToString("yyyy-MM-dd");
        }

        /// <summary>
        /// ע��
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnReg_Click(object sender, EventArgs e)
        {
            AppConfig config = new AppConfig();
            string LicensePath = config.AppConfigGet("LicensePath");
            string machineCode = GetMachineCode();
            string regCode = txtRegisterCode.Text.Trim();
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
        /// ע��
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnUnreg_Click(object sender, EventArgs e)
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
                reg.SetValue("SysDate", Data.getSysDate());
                reg.SetValue("regCode", string.Empty);
            }
            AppConfig config = new AppConfig();
            string LicensePath = config.AppConfigGet("LicensePath");
            FileUtil.DeleteFile(LicensePath);
            MessageDxUtil.ShowTips("ף������ע���ɹ�");
            Close();
            Application.Exit();
        }

        /// <summary>
        /// ����ע����
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnCopy_Click(object sender, EventArgs e)
        {
            Clipboard.Clear();
            Clipboard.SetText(txtRegisterCode.Text);
            MessageDxUtil.ShowTips(Const.CopyOkMsg);
        }
	}
}
