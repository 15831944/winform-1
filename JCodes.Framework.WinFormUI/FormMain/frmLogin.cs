using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using System.Windows.Forms;
using System.Threading.Tasks;
using JCodes.Framework.Common.Winform;

namespace JCodes.Framework.WinFormUI
{
    /// <summary>
    /// 简化的登陆界面
    /// </summary>
    public partial class frmLogin : DevExpress.XtraEditors.XtraForm 
    {
        public frmLogin()
        {
            InitializeComponent();
        }

        /// <summary>
        /// 登陆
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void sbLogin_Click(object sender, EventArgs e)
        {
            this.Hide();
            var frmMain = new frmMain();
            frmMain.ShowDialog();
            this.Close();
        }

        /// <summary>
        /// 关闭登陆界面
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void sbClose_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void sbCustomization_Click(object sender, EventArgs e)
        {
            ChildWinManagement.PopDialogForm(typeof(frmConnSettings));
        }
    }
}
