using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using System.Windows.Forms;
using System.Threading.Tasks;

namespace JCodes.Framework.AddIn
{
    /// <summary>
    /// �򻯵ĵ�½����
    /// </summary>
    public partial class Frm_Login : DevExpress.XtraEditors.XtraForm 
    {
        public Frm_Login()
        {
            InitializeComponent();
        }

        /// <summary>
        /// ��½
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void sbLogin_Click(object sender, EventArgs e)
        {
            this.Hide();
            //var frmMain = new frmMain();
           // frmMain.ShowDialog();
            this.Close();
        }

        /// <summary>
        /// �رյ�½����
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void sbClose_Click(object sender, EventArgs e)
        {
            //alertControl1.Show(this, "����", "��������");
            this.Close();
        }

        private void sbCustomization_Click(object sender, EventArgs e)
        {
            //var frmSetting = new frmSettings();
            //frmSetting.ShowDialog();
        }
    }
}
