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
using JCodes.Framework.jCodesenum;
using JCodes.Framework.Common.Format;
using JCodes.Framework.Common.Extension;

namespace JCodes.Framework.AddIn.Security
{
    public partial class FrmEditMenu : BaseEditForm
    {
        /// <summary>
        /// ϵͳ��ʶID
        /// </summary>
        public string SystemtypeId = "";

        /// <summary>
        /// �ϼ��˵�ID
        /// </summary>
        public string Pgid = "";

        public string Gid = "";

        public List<string> GidList = new List<string>();

        public FrmEditMenu()
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

            //��ϵͳ����
            List<SystemTypeInfo> systemList = BLLFactory<SystemType>.Instance.GetAll();
            this.txtSystemType.Properties.Items.Clear();
            foreach (SystemTypeInfo info in systemList)
            {
                this.txtSystemType.Properties.Items.Add(new CListItem(info.Gid, info.Name));
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

            if (Id > 0)
            {
                #region ��ʾ�ͻ���Ϣ
                MenuInfo info = BLLFactory<JCodes.Framework.BLL.Menu>.Instance.FindById(Gid);

                if (info != null)
                {
                    this.menuControl1.Value = info.Pgid;
                    txtName.Text = info.Name;
                    txtIcon.Text = info.Icon;
                    txtSeq.Text = info.Seq;
                    txtFunctionId.Text = info.AuthGid;
                    txtVisable.EditValue = (Int32)info.IsVisable;
                    txtWinformType.Text = info.WinformClass;
                    txtUrl.Text = info.Url;
                    txtWebIcon.Text = info.WebIcon;
                    txtDelete.EditValue = (Int32)info.IsDelete;
                    txtSystemType.SetComboBoxItem(info.SystemtypeId);//����ϵͳ����
                    txtDllPath.Text = info.DllPath;
                }
                #endregion           
            }
            else
            {
                txtFunctionId.Text = Guid.NewGuid().ToString();

                if (!string.IsNullOrEmpty(SystemtypeId))
                {
                    txtSystemType.SetComboBoxItem(SystemtypeId);
                }
            }
        }

        /// <summary>
        /// �༭���߱���״̬��ȡֵ����
        /// </summary>
        /// <param name="info"></param>
        private void SetInfo(MenuInfo info)
        {
            info.Pgid = this.menuControl1.Value;
            info.Name = txtName.Text;
            info.Icon = txtIcon.Text;
            info.Seq = txtSeq.Text;
            info.AuthGid = txtFunctionId.Text;
            info.IsVisable = (short)txtVisable.EditValue.ToString().ToInt32();
            info.WinformClass = txtWinformType.Text;
            info.Url = txtUrl.Text;
            info.WebIcon = txtWebIcon.Text;
            info.SystemtypeId = this.txtSystemType.GetComboBoxStrValue();
            info.IsDelete = (short)txtDelete.EditValue.ToString().ToInt32();
            info.EditorId = Portal.gc.UserInfo.Id;
            info.LastUpdateTime = DateTimeHelper.GetServerDateTime2();
            info.DllPath = txtDllPath.Text.Trim();

            if (string.IsNullOrEmpty(Gid))
            {
                info.Gid = Guid.NewGuid().ToString();
                info.CreatorId = Portal.gc.UserInfo.Id;
                info.CreatorTime = DateTimeHelper.GetServerDateTime2(); 
            }

            info.CurrentLoginUserId = Portal.gc.UserInfo.Id;
        }

        public override void ClearScreen()
        {
            int intSeq = 0;
            string seqValue = this.txtSeq.Text;
            string pid = this.menuControl1.Value;
            base.ClearScreen();

            this.txtVisable.EditValue = IsVisable.��;
            this.txtDelete.EditValue = IsDelete.��;
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

                bool succeed = BLLFactory<JCodes.Framework.BLL.Menu>.Instance.Insert(info);

                // ���ݲ˵�һ�������˵�
                /* insert T_Security_Function(Gid, Pgid, Name, DllPath, SystemtypeId, Seq) 
                                       select Gid, Pgid, Name, DllPath, SystemtypeId, Seq from T_Security_Menu; */
                FunctionInfo functonInfo = new FunctionInfo();
                functonInfo.Gid = info.Gid;
                functonInfo.Pgid = info.Pgid;
                functonInfo.Name = info.Name;
                functonInfo.DllPath = info.DllPath;
                functonInfo.SystemtypeId = info.SystemtypeId;
                functonInfo.Seq = info.Seq;
                bool succeed2 = BLLFactory<JCodes.Framework.BLL.Function>.Instance.Insert(functonInfo);

                if (succeed && succeed2)
                {
                    if (this.menuControl1.Value == "-1")
                    {
                        string PID = info.Pgid;//�ȼ�¼ԭ����ID����ΪPID

                        //��������˵���Ŀ��ӣ�ͬʱ���һ�������˵���Ŀ
                        info.Pgid = Pgid;
                        info.Gid = Guid.NewGuid().ToString();
                        info.Seq = "1";
                        BLLFactory<JCodes.Framework.BLL.Menu>.Instance.Insert(info);

                        FunctionInfo functonInfo2 = new FunctionInfo();
                        functonInfo2.Gid = info.Gid;
                        functonInfo2.Pgid = info.Pgid;
                        functonInfo2.Name = info.Name;
                        functonInfo2.DllPath = info.DllPath;
                        functonInfo2.SystemtypeId = info.SystemtypeId;
                        functonInfo2.Seq = info.Seq;
                        BLLFactory<JCodes.Framework.BLL.Function>.Instance.Insert(functonInfo2);

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
            MenuInfo info = BLLFactory<JCodes.Framework.BLL.Menu>.Instance.FindById(Gid);
            if (info != null)
            {
                if (info.Pgid != this.menuControl1.Value && BLLFactory<JCodes.Framework.BLL.Menu>.Instance.GetMenuById(Gid).Count <= 1)
                {
                    MessageDxUtil.ShowError(Const.ForbidOperMsg);
                    return false;
                }

                SetInfo(info);

                try
                {
                    #region ��������
                    bool succeed = BLLFactory<JCodes.Framework.BLL.Menu>.Instance.Update(info, info.Gid);

                    // ���ݲ˵�һ�������˵�
                    /* insert T_Security_Function(Gid, Pgid, Name, DllPath, SystemtypeId, Seq) 
                                           select Gid, Pgid, Name, DllPath, SystemtypeId, Seq from T_Security_Menu; */
                    FunctionInfo functonInfo = new FunctionInfo();
                    functonInfo.Gid = info.Gid;
                    functonInfo.Pgid = info.Pgid;
                    functonInfo.Name = info.Name;
                    functonInfo.DllPath = info.DllPath;
                    functonInfo.SystemtypeId = info.SystemtypeId;
                    functonInfo.Seq = info.Seq;
                    bool succeed2 = BLLFactory<JCodes.Framework.BLL.Function>.Instance.Update(functonInfo, functonInfo.Gid);

                    if (succeed && succeed2)
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
