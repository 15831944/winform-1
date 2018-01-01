using System.Collections.Generic;
using System.IO;
using System.Windows.Forms;
using DevExpress.XtraBars.Docking2010.Views;
using DevExpress.XtraSplashScreen;
using DevExpress.XtraNavBar;
using JCodes.Framework.CommonControl.BaseUI;
using JCodes.Framework.CommonControl.Controls;

namespace JCodes.Framework.AddIn.Test
{
    public partial class FrmCacheData : BaseDock
    {
        public FrmCacheData() {
            InitializeComponent();
        }
        void frmMain_Load(object sender, System.EventArgs e) {
            BeginInvoke(new MethodInvoker(InitDemo));
        }
       
        void InitDemo() {
            // ����һ��NarBar;
            NavBarControl navBar = new NavBarControl();
            ((System.ComponentModel.ISupportInitialize)(navBar)).BeginInit();
            // 
            // navBar
            // 
            navBar.ActiveGroup = null;
            navBar.Dock = System.Windows.Forms.DockStyle.Fill;
            navBar.DragDropFlags = ((DevExpress.XtraNavBar.NavBarDragDrop)(((DevExpress.XtraNavBar.NavBarDragDrop.AllowDrag | DevExpress.XtraNavBar.NavBarDragDrop.AllowDrop)
            | DevExpress.XtraNavBar.NavBarDragDrop.AllowOuterDrop)));
            navBar.Location = new System.Drawing.Point(0, 0);
            navBar.Margin = new System.Windows.Forms.Padding(2);
            navBar.Name = "navBar";
            navBar.OptionsNavPane.ExpandedWidth = 139;
            navBar.Size = new System.Drawing.Size(139, 373);
            navBar.StoreDefaultPaintStyleName = true;
            navBar.TabIndex = 3;
            navBar.Text = "navBarControl1";
            ucToolbox1.Controls.Add(navBar);
            ((System.ComponentModel.ISupportInitialize)(navBar)).EndInit();

            NavBarGroup standardGroup = navBar.Groups.Add();
            standardGroup.Caption = "�������ݶ�ȡ";
            standardGroup.Expanded = true;
            List<string> lst = getNavBarListString();
            foreach (string key in lst)
            {
                NavBarItem item = new NavBarItem();
                item.Caption = key;
                item.LinkClicked += (sender, e) =>
                {
                    // �ж��Ƿ��Ѿ�������������������Ϊѡ��
                    for (System.Int32 i = 0; i < tabbedView.Documents.Count; i++)
                    {
                        // �ҵ� ѡ��
                        if (string.Equals(tabbedView.Documents[i].Tag, key))
                        {
                            tabbedView.Controller.Activate(tabbedView.Documents[i]);
                            return;
                        }
                    }

                    tabbedView.BeginUpdate();
                    UserControl control = new UserControl();

                    #region ������ҳ�ؼ�
                    JCodes.Framework.CommonControl.Pager.WinGridViewPager winGridViewPager = new CommonControl.Pager.WinGridViewPager();
                    winGridViewPager.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
            | System.Windows.Forms.AnchorStyles.Left)
            | System.Windows.Forms.AnchorStyles.Right)));
                    winGridViewPager.AppendedMenu = null;
                    winGridViewPager.DataSource = JCodes.Framework.Common.Office.Cache.Instance[key];
                    winGridViewPager.DisplayColumns = "";
                    winGridViewPager.FixedColumns = null;
                    winGridViewPager.Location = new System.Drawing.Point(3, 92);
                    winGridViewPager.MinimumSize = new System.Drawing.Size(540, 0);
                    winGridViewPager.Name = "winGridViewPager1";
                    winGridViewPager.PrintTitle = "";
                    winGridViewPager.ShowAddMenu = true;
                    winGridViewPager.ShowCheckBox = false;
                    winGridViewPager.ShowDeleteMenu = true;
                    winGridViewPager.ShowEditMenu = true;
                    winGridViewPager.ShowExportButton = true;
                    winGridViewPager.Size = new System.Drawing.Size(722, 491);
                    winGridViewPager.TabIndex = 0;
                    winGridViewPager.Dock = DockStyle.Fill;
                    control.Controls.Add(winGridViewPager);
                    #endregion
                    control.Name = item.Caption;
                    control.Text = item.Caption;

                    BaseDocument document = tabbedView.AddDocument(control);
                    document.Footer = Directory.GetCurrentDirectory();
                    document.Tag = key;

                    tabbedView.EndUpdate();
                    tabbedView.Controller.Activate(document);
                };
                navBar.Items.Add(item);
                standardGroup.ItemLinks.Add(item);
            }
        }

        List<string> getNavBarListString()
        { 
            // Cache.Instance["LoginUserInfo"] = Portal.gc.ConvertToLoginUser(info);
            // Cache.Instance["FunctionDict"] = functionDict;
            // Cache.Instance["RoleList"] = BLLFactory<Role>.Instance.GetRolesByUser(info.ID);
            // Cache.Instance["canOptCompanyID"] = companysb.ToString();
            // Cache.Instance["canOptDeptId"] = deptsb.ToString();
            // Cache.Instance["DictData"] = BLLFactory<DictData>.Instance.GetAllDict();
            List<string> lst = new List<string>();
            //lst.Add("LoginUserInfo");
            lst.Add("FunctionDict");
            lst.Add("RoleList");
            //lst.Add("canOptCompanyID");
            //lst.Add("canOptDeptId");
            lst.Add("DictData");
            return lst;
        }
    }
}
