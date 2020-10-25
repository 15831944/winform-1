using System.Collections.Generic;
using System.IO;
using System.Windows.Forms;
using DevExpress.XtraBars.Docking2010.Views;
using DevExpress.XtraNavBar;
using JCodes.Framework.CommonControl.BaseUI;
using JCodes.Framework.CommonControl.Controls;
using JCodes.Framework.Common.Files;
using JCodes.Framework.Entity;
using System.Xml;
using DevExpress.XtraTab;
using DevExpress.XtraEditors;
using DevExpress.XtraRichEdit.API.Native;
using System;
using DevExpress.Office.Utils;
using DevExpress.XtraRichEdit.Services;
using System.Drawing;
using DevExpress.XtraRichEdit;
using DevExpress.XtraRichEdit.Export;
using DevExpress.XtraRichEdit.Import;
using DevExpress.XtraRichEdit.Internal;
using JCodes.Framework.CommonControl.Other;
using JCodes.Framework.Common.Format;
using DevExpress.XtraEditors.Controls;
using DevExpress.XtraEditors.Repository;
using System.Text;
using JCodes.Framework.Common;
using JCodes.Framework.Common.Office;
using JCodes.Framework.Common.Extension;

namespace JCodes.Framework.AddIn.Proj
{
    public partial class FrmClassEntity : BaseDock
    {
        #region �ؼ�����
        private NavBarControl navBar;
        private NavBarItemLink selectedLink;
        private NavBarGroup standardGroup;
        private UserControl control;
        private XtraTabControl xtraTabControl1;
        private XtraTabPage xtraTabPageBasic;
        private XtraTabPage xtraTabPageFields;
        private XtraTabPage xtraTabPageHistoryRecord;
        private GroupControl groupControl1;
        private Label lblobjectId;
        private Label lblenglishName;
        private Label lblchineseName;
        private Label lblDB;
        private Label lblversion;
        private Label lblfolder;
        private Label lblfieldnamespace;
        private Label lblbaseclass;
        private Label lbllastupdate;
        private Label lblremark;
        private TextEdit txtobjectId;
        private TextEdit txtenglishName;
        private TextEdit txtchineseName;
        private TextEdit txtversion;
        private TextEdit txtfolder;
        private MemoEdit mefieldnamespace;
        private TextEdit txtbaseclass;
        private DateEdit txtlastupdate;
        private MemoEdit meremark;
        private SplitContainer splitContainer1;
        private GroupControl groupControlFields;
        private GroupControl groupControlIndexs;
        private DevExpress.XtraGrid.GridControl gridControlFields;
        private DevExpress.XtraGrid.Views.Grid.GridView gridViewFields;
        private DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit repositoryItemLookUpEditFields;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumnGuid;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumnFieldName;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumnChineseName;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumnFieldType;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumnFieldInfo;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumnRemark;
        private DevExpress.XtraGrid.GridControl gridControlIndexs;
        private DevExpress.XtraGrid.Views.Grid.GridView gridViewIndexs;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumnIndexGuid;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumnIndexName;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumnIndexChineseName;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumnIndexFieldType;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumnIndexContent;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumnIndexRemark;
        DevExpress.XtraEditors.Repository.RepositoryItemMemoExEdit repositoryItemMemoExEdit;
        #endregion

        #region ��ȡxml�����ļ�
        private XmlHelper xmltableshelper = new XmlHelper(@"XML\entity.xml");
        private XmlHelper xmltablesinfohelper = null;
        
        #endregion

        #region ���ݻ���
        private string xmlfieldsinfomodel = "<name>{0}</name><remark>{1}</remark>";
        private string xmldiyfieldinfomodel = "<name>{0}</name><chinesename>{1}</chinesename><fieldtype></fieldtype><content>{2}</content><remark>{3}</remark>";

        private List<DictInfo> dictTypeInfoList = null;

        private string strBasicInfoGuid = string.Empty;

        private TableFieldsInfo tmptableFieldsInfo = null;

        private DiyFieldInfo tmptableIndexsInfo = null;
        #endregion

        public FrmClassEntity()
        {
            InitializeComponent();
        }

        void frmMain_Load(object sender, System.EventArgs e) {
            LoadDicData();

            BeginInvoke(new MethodInvoker(InitDemo));
        }
       
        void InitDemo() {
            // ����һ��NarBar;
            navBar = new NavBarControl();
            ((System.ComponentModel.ISupportInitialize)(navBar)).BeginInit();
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
            navBar.Text = "navBar";

            navBar.MouseDown += (sender, e) =>
            {
                if (e.Button != MouseButtons.Right) return;
                var navBarControl1 = sender as NavBarControl;
                NavBarHitInfo hi = navBarControl1.CalcHitInfo(new Point(e.X, e.Y));
                if (hi.InLink)
                {
                    selectedLink = hi.Link;
                    pmItem.ShowPopup(navBarControl1.PointToScreen(new Point(e.X, e.Y)));
                    return;
                }
                pmGroup.ShowPopup(navBarControl1.PointToScreen(new Point(e.X, e.Y)));
            };
            ucToolbox1.Controls.Add(navBar);
            ((System.ComponentModel.ISupportInitialize)(navBar)).EndInit();

            XmlNodeList xmlNodeLst = xmltableshelper.Read("datatype/dataitem");
            List<TablesInfo> tablesInfoList = new List<TablesInfo>();
            foreach (XmlNode xn1 in xmlNodeLst)
            {
                TablesInfo tablesInfo = new TablesInfo();
                // ���ڵ�ת��ΪԪ�أ����ڵõ��ڵ������ֵ
                XmlElement xe = (XmlElement)xn1;
                // �õ�Type��ISBN�������Ե�����ֵ
                tablesInfo.Gid = xe.GetAttribute("gid").ToString();

                // �õ�ConstantInfo�ڵ�������ӽڵ�
                XmlNodeList xnl0 = xe.ChildNodes;
                tablesInfo.Name = xnl0.Item(0).InnerText;
                tablesInfo.ChineseName = xnl0.Item(1).InnerText;
                tablesInfo.FunctionId = xnl0.Item(2).InnerText;
                tablesInfo.BasicdataPath = xnl0.Item(3).InnerText;
                tablesInfoList.Add(tablesInfo);
            }
           
            standardGroup = navBar.Groups.Add();
            standardGroup.Caption = "ʵ����������";
            standardGroup.Tag = "ʵ����������";
            standardGroup.Expanded = true;

            foreach (var tablesInfo in tablesInfoList)
            {
                NavBarItem item = new NavBarItem();
                item.Caption = string.Format("{0}-({1} {2})", tablesInfo.FunctionId, tablesInfo.ChineseName, tablesInfo.Name);
                // ��ʱ����Ϊ����
                item.Tag = tablesInfo.Gid;
                item.Name = tablesInfo.Name;
                item.Hint = tablesInfo.ChineseName;
                item.LinkClicked += Item_LinkClicked;
                navBar.Items.Add(item);
                standardGroup.ItemLinks.Add(item);
            }
        }

        /// <summary>
        /// ������
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void bbiAddItem_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

            FrmEditItemEntity dlg = new FrmEditItemEntity();
            if (dlg.ShowDialog() == DialogResult.OK)
            {
                NavBarItem item = new NavBarItem();
                item.Caption = string.Format("{0}-({1} {2})", dlg.intFunction, dlg.strChineseName, dlg.strItemName);
                item.Tag = dlg.strGuid;
                item.Name = dlg.strItemName;
                item.Hint = dlg.strChineseName;
                item.LinkClicked += Item_LinkClicked;

                navBar.Items.Add(item);

                standardGroup.ItemLinks.Add(item);

                if (!standardGroup.Expanded)
                    standardGroup.Expanded = true;
            }
        }

        /// <summary>
        /// �޸���
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void bbiModItem_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (selectedLink == null)
            {
                MessageDxUtil.ShowError("��ѡ����Ҫ�޸ĵ���Ŀ");
                return;
            }

            FrmEditItemEntity dlg = new FrmEditItemEntity();
            // ���������ID ��Ϊ�޸�
            dlg.Id = 1;
            dlg.strGuid = selectedLink.Item.Tag.ToString();

            if (dlg.ShowDialog() == DialogResult.OK)
            {
                NavBarItem item = selectedLink.Item;

                item.Caption = string.Format("{0}-({1} {2})", dlg.intFunction, dlg.strChineseName, dlg.strItemName);
                item.Tag = dlg.strGuid;
                item.Name = dlg.strItemName;
                item.Hint = dlg.strChineseName;
            }
            selectedLink = null;
        }

        /// <summary>
        /// ɾ����
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void bbiDelItem_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (selectedLink == null)
            {
                MessageDxUtil.ShowError("��ѡ����Ҫɾ������Ŀ");
                return;
            }

            xmltableshelper = new XmlHelper(@"XML\entity.xml");
            // ɾ������
            xmltableshelper.DeleteByPathNode(string.Format("datatype/dataitem/item[@gid=\"{0}\"]", selectedLink.Item.Tag));
            xmltableshelper.Save(false);

            // ɾ��table�ļ�
            if (FileUtil.IsExistFile(string.Format(@"XML\{0}.entity", selectedLink.Item.Name)))
            {
                FileUtil.DeleteFile(string.Format(@"XML\{0}.entity", selectedLink.Item.Name));
            }
            // ����ɾ��Ԫ��
            standardGroup.ItemLinks.Remove(selectedLink);

            selectedLink = null;
        }

        /// <summary>
        /// �������Ϣ�õ��Ľ��
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void Item_LinkClicked(object sender, NavBarLinkEventArgs e)
        {
            var item = sender as NavBarItem;

            // �ж��Ƿ��Ѿ�������������������Ϊѡ��
            for (System.Int32 i = 0; i < tabbedView.Documents.Count; i++)
            {
                // �ҵ� ѡ��
                if (string.Equals(tabbedView.Documents[i].Tag, item.Hint))
                {
                    tabbedView.Controller.Activate(tabbedView.Documents[i]);
                    dockPanel6.HideSliding();
                    return;
                }
            }

            tabbedView.BeginUpdate();
            control = new UserControl();
            xtraTabControl1 = new XtraTabControl(); ;
            xtraTabPageBasic = new XtraTabPage();
            xtraTabPageFields = new XtraTabPage();
            xtraTabPageHistoryRecord = new XtraTabPage();

            ((System.ComponentModel.ISupportInitialize)(xtraTabControl1)).BeginInit();
            xtraTabControl1.SuspendLayout();

            xtraTabControl1.Dock = DockStyle.Fill;
            xtraTabControl1.HeaderLocation = DevExpress.XtraTab.TabHeaderLocation.Bottom;
            xtraTabControl1.Location = new System.Drawing.Point(0, 0);
            xtraTabControl1.Name = "xtraTabControl1";
            xtraTabControl1.SelectedTabPage = xtraTabPageBasic;
            xtraTabControl1.Size = new System.Drawing.Size(1206, 556);
            xtraTabControl1.TabIndex = 0;
            xtraTabControl1.TabPages.AddRange(new XtraTabPage[] { xtraTabPageBasic, xtraTabPageFields, xtraTabPageHistoryRecord });

            #region ������Ϣ
            xtraTabPageBasic.Name = "xtraTabPageBasic";
            xtraTabPageBasic.Text = "������Ϣ";

            groupControl1 = new GroupControl();
            lblobjectId = new Label();
            lblenglishName = new Label();
            lblchineseName = new Label();
            lblDB = new Label();
            lblversion = new Label();
            lblfolder = new Label();
            lblfieldnamespace = new Label();
            lblbaseclass = new Label();
            lbllastupdate = new Label();
            lblremark = new Label();

            txtobjectId = new TextEdit();
            txtenglishName = new TextEdit();
            txtchineseName = new TextEdit();
            txtversion = new TextEdit();
            txtfolder = new TextEdit();
            mefieldnamespace = new MemoEdit();
            txtbaseclass = new TextEdit();
            txtlastupdate = new DateEdit();
            meremark = new MemoEdit();

            ((System.ComponentModel.ISupportInitialize)(groupControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(txtobjectId.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(txtenglishName.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(txtchineseName.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(txtversion.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(txtfolder.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(mefieldnamespace.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(txtbaseclass.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(txtlastupdate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(meremark.Properties)).BeginInit();

            groupControl1.SuspendLayout();
            groupControl1.Dock = DockStyle.Fill;

            lblobjectId.Location = new System.Drawing.Point(5, 30);
            lblobjectId.Name = "lblobjectId";
            lblobjectId.Size = new System.Drawing.Size(90, 22);
            lblobjectId.Text = "�����";
            lblobjectId.TextAlign = System.Drawing.ContentAlignment.MiddleRight;

            txtobjectId.Anchor = ((System.Windows.Forms.AnchorStyles)(System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left));
            txtobjectId.Location = new System.Drawing.Point(100, 32);
            txtobjectId.Name = "txtobjectId";
            txtobjectId.Size = new System.Drawing.Size(180, 22);
            txtobjectId.Enabled = false;

            lblenglishName.Location = new System.Drawing.Point(5, 55);
            lblenglishName.Name = "lblenglishName";
            lblenglishName.Size = new System.Drawing.Size(90, 22);
            lblenglishName.Text = "Ӣ����";
            lblenglishName.TextAlign = System.Drawing.ContentAlignment.MiddleRight;

            txtenglishName.Anchor = ((System.Windows.Forms.AnchorStyles)(System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left));
            txtenglishName.Location = new System.Drawing.Point(100, 57);
            txtenglishName.Name = "txtenglishName";
            txtenglishName.Size = new System.Drawing.Size(180, 22);
            txtenglishName.Enabled = false;

            lblchineseName.Location = new System.Drawing.Point(5, 80);
            lblchineseName.Name = "lblenglishName";
            lblchineseName.Size = new System.Drawing.Size(90, 22);
            lblchineseName.Text = "������";
            lblchineseName.TextAlign = System.Drawing.ContentAlignment.MiddleRight;

            txtchineseName.Anchor = ((System.Windows.Forms.AnchorStyles)(System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left));
            txtchineseName.Location = new System.Drawing.Point(100, 82);
            txtchineseName.Name = "txtchineseName";
            txtchineseName.Size = new System.Drawing.Size(180, 22);
            txtchineseName.Enabled = false;

            lblversion.Location = new System.Drawing.Point(5, 105);
            lblversion.Name = "lblversion";
            lblversion.Size = new System.Drawing.Size(90, 22);
            lblversion.Text = "�汾��";
            lblversion.TextAlign = System.Drawing.ContentAlignment.MiddleRight;

            txtversion.Anchor = ((System.Windows.Forms.AnchorStyles)(System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left));
            txtversion.Location = new System.Drawing.Point(100, 107);
            txtversion.Name = "txtversion";
            txtversion.Size = new System.Drawing.Size(180, 22);

            lblfolder.Location = new System.Drawing.Point(5, 130);
            lblfolder.Name = "lblfolder";
            lblfolder.Size = new System.Drawing.Size(90, 22);
            lblfolder.Text = "�����ļ���";
            lblfolder.TextAlign = System.Drawing.ContentAlignment.MiddleRight;

            txtfolder.Anchor = ((System.Windows.Forms.AnchorStyles)(System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left));
            txtfolder.Location = new System.Drawing.Point(100, 132);
            txtfolder.Name = "txtfolder";
            txtfolder.Size = new System.Drawing.Size(180, 22);

            lblfieldnamespace.Location = new System.Drawing.Point(5, 155);
            lblfieldnamespace.Name = "lblfieldnamespace";
            lblfieldnamespace.Size = new System.Drawing.Size(90, 22);
            lblfieldnamespace.Text = "�����ռ�";
            lblfieldnamespace.TextAlign = System.Drawing.ContentAlignment.MiddleRight;

            mefieldnamespace.Location = new System.Drawing.Point(100, 157);
            mefieldnamespace.Name = "mefieldnamespace";
            mefieldnamespace.Size = new System.Drawing.Size(180, 120);
            mefieldnamespace.UseOptimizedRendering = true;

            lblbaseclass.Location = new System.Drawing.Point(5, 280);
            lblbaseclass.Name = "lblbaseclass";
            lblbaseclass.Size = new System.Drawing.Size(90, 22);
            lblbaseclass.Text = "�̳и���";
            lblbaseclass.TextAlign = System.Drawing.ContentAlignment.MiddleRight;

            txtbaseclass.Anchor = ((System.Windows.Forms.AnchorStyles)(System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left));
            txtbaseclass.Location = new System.Drawing.Point(100, 282);
            txtbaseclass.Name = "txtbaseclass";
            txtbaseclass.Size = new System.Drawing.Size(320, 22);

            lbllastupdate.Location = new System.Drawing.Point(5, 305);
            lbllastupdate.Name = "lbllastupdate";
            lbllastupdate.Size = new System.Drawing.Size(90, 22);
            lbllastupdate.Text = "�޸�����";
            lbllastupdate.TextAlign = System.Drawing.ContentAlignment.MiddleRight;

            txtlastupdate.EditValue = null;
            txtlastupdate.Location = new System.Drawing.Point(100, 307);
            txtlastupdate.Name = "txtlastupdate";
            txtlastupdate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            txtlastupdate.Properties.CalendarTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            txtlastupdate.Size = new System.Drawing.Size(180, 22);

            lblremark.Location = new System.Drawing.Point(5, 330);
            lblremark.Name = "lblremark";
            lblremark.Size = new System.Drawing.Size(90, 22);
            lblremark.Text = "˵��";
            lblremark.TextAlign = System.Drawing.ContentAlignment.MiddleRight;

            meremark.Location = new System.Drawing.Point(100, 332);
            meremark.Name = "meremark";
            meremark.Size = new System.Drawing.Size(180, 120);
            meremark.UseOptimizedRendering = true;

            groupControl1.Controls.Add(lblobjectId);
            groupControl1.Controls.Add(txtobjectId);
            groupControl1.Controls.Add(lblenglishName);
            groupControl1.Controls.Add(txtenglishName);
            groupControl1.Controls.Add(lblchineseName);
            groupControl1.Controls.Add(txtchineseName);
            groupControl1.Controls.Add(lblDB);
            groupControl1.Controls.Add(lblversion);
            groupControl1.Controls.Add(txtversion);
            groupControl1.Controls.Add(lblfolder);
            groupControl1.Controls.Add(txtfolder);
            groupControl1.Controls.Add(lblfieldnamespace);
            groupControl1.Controls.Add(mefieldnamespace);
            groupControl1.Controls.Add(lblbaseclass);
            groupControl1.Controls.Add(txtbaseclass);
            groupControl1.Controls.Add(lbllastupdate);
            groupControl1.Controls.Add(txtlastupdate);
            groupControl1.Controls.Add(lblremark);
            groupControl1.Controls.Add(meremark);

            groupControl1.Location = new System.Drawing.Point(3, 3);
            groupControl1.Name = "groupControl1";
            groupControl1.Size = new System.Drawing.Size(xtraTabPageBasic.ClientSize.Width - 30, xtraTabPageBasic.ClientSize.Height - 30);
            groupControl1.TabIndex = 5;
            groupControl1.Text = "������Ϣ";

            xtraTabPageBasic.Controls.Add(groupControl1);
            #endregion

            #region ������Ϣ��ʼ��
            xmltablesinfohelper = new XmlHelper(string.Format(@"XML\{0}.entity", item.Name));
            XmlNodeList xmlNodeLst = xmltablesinfohelper.Read(string.Format("datatype/basicinfo"));
            foreach (XmlNode xn1 in xmlNodeLst)
            {
                
                // ���ڵ�ת��ΪԪ�أ����ڵõ��ڵ������ֵ
                XmlElement xe = (XmlElement)xn1;
                strBasicInfoGuid = xe.GetAttribute("gid").ToString();

                // �õ�DataTypeInfo�ڵ�������ӽڵ�
                XmlNodeList xnl0 = xe.ChildNodes;
                txtobjectId.Text = xnl0.Item(0).InnerText;
                txtenglishName.Text = xnl0.Item(1).InnerText;
                txtchineseName.Text = xnl0.Item(2).InnerText;
                mefieldnamespace.Text = xnl0.Item(3).InnerText;
                txtversion.Text = xnl0.Item(4).InnerText;
                txtfolder.Text = xnl0.Item(5).InnerText;
                txtbaseclass.Text = xnl0.Item(6).InnerText.Replace("&lt;", "<").Replace( "&gt;", ">");
                txtlastupdate.Text = xnl0.Item(7).InnerText;
                meremark.Text = xnl0.Item(8).InnerText;
            }
            #endregion

            #region ������Ϣ�޸�
            txtobjectId.Validated += new System.EventHandler(txtValue_Validated);
            txtenglishName.Validated += new System.EventHandler(txtValue_Validated);
            txtchineseName.Validated += new System.EventHandler(txtValue_Validated);
            mefieldnamespace.Validated += new System.EventHandler(txtValue_Validated);
            txtversion.Validated += new System.EventHandler(txtValue_Validated);
            txtfolder.Validated += new System.EventHandler(txtValue_Validated);
            txtbaseclass.Validated += new System.EventHandler(txtValue_Validated);
            txtlastupdate.Validated += new System.EventHandler(txtValue_Validated);
            meremark.Validated += new System.EventHandler(txtValue_Validated);
            #endregion

            #region �ֶμ�����
            xtraTabPageFields.Name = "xtraTabPageFields";
            xtraTabPageFields.Text = "�ֶμ��Զ�������";

            splitContainer1 = new SplitContainer();
            groupControlFields = new GroupControl();
            groupControlIndexs = new GroupControl();

            ((System.ComponentModel.ISupportInitialize)(splitContainer1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(groupControlFields)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(groupControlIndexs)).BeginInit();
            splitContainer1.Panel1.SuspendLayout();
            splitContainer1.Panel2.SuspendLayout();
            splitContainer1.SuspendLayout();

            splitContainer1.Dock = DockStyle.Fill;
            splitContainer1.Location = new System.Drawing.Point(0, 0);
            splitContainer1.Name = "splitContainer1";
            splitContainer1.Orientation = System.Windows.Forms.Orientation.Horizontal;
            splitContainer1.SplitterDistance = 413;

            #region �ֶα��
            groupControlFields.SuspendLayout();
            groupControlFields.Dock = DockStyle.Fill;
            groupControlFields.Name = "groupControlFields";
            groupControlFields.TabIndex = 5;
            groupControlFields.Text = "�ֶ�";

            gridControlFields = new DevExpress.XtraGrid.GridControl();
            gridViewFields = new DevExpress.XtraGrid.Views.Grid.GridView();
            repositoryItemLookUpEditFields = new DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit();
            gridColumnGuid = new DevExpress.XtraGrid.Columns.GridColumn();
            gridColumnFieldName = new DevExpress.XtraGrid.Columns.GridColumn();
            gridColumnChineseName = new DevExpress.XtraGrid.Columns.GridColumn();
            gridColumnFieldType = new DevExpress.XtraGrid.Columns.GridColumn();
            gridColumnFieldInfo = new DevExpress.XtraGrid.Columns.GridColumn();
            gridColumnRemark = new DevExpress.XtraGrid.Columns.GridColumn();

            ((System.ComponentModel.ISupportInitialize)(gridControlFields)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(gridViewFields)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(repositoryItemLookUpEditFields)).BeginInit();

            gridControlFields.Dock = DockStyle.Fill;
            gridControlFields.Cursor = System.Windows.Forms.Cursors.Default;
            gridControlFields.MainView = gridViewFields;
            gridControlFields.Name = "gridControlFields";
            gridControlFields.Size = new System.Drawing.Size(981, 573);
            gridControlFields.TabIndex = 13;
            gridControlFields.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            gridViewFields});
            gridControlFields.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] { repositoryItemLookUpEditFields});
            gridControlFields.ContextMenuStrip = contextMenuStripFields;

            gridViewFields.Appearance.FocusedRow.BackColor = System.Drawing.Color.LightCyan;
            gridViewFields.Appearance.FocusedRow.BackColor2 = System.Drawing.Color.LightCyan;
            gridViewFields.Appearance.FocusedRow.Options.UseBackColor = true;
            gridViewFields.Appearance.FocusedRow.Options.UseForeColor = true;
            gridViewFields.GridControl = gridControlFields;
            gridViewFields.Name = "gridViewFields";
            gridViewFields.OptionsBehavior.AllowAddRows = DevExpress.Utils.DefaultBoolean.False;
            gridViewFields.OptionsBehavior.AllowDeleteRows = DevExpress.Utils.DefaultBoolean.False;
            gridViewFields.OptionsCustomization.AllowFilter = false;
            gridViewFields.OptionsCustomization.AllowGroup = false;
            gridViewFields.OptionsMenu.EnableColumnMenu = false;
            gridViewFields.OptionsMenu.EnableFooterMenu = false;
            gridViewFields.OptionsMenu.EnableGroupPanelMenu = false;
            gridViewFields.OptionsView.EnableAppearanceEvenRow = true;
            gridViewFields.OptionsView.EnableAppearanceOddRow = true;
            gridViewFields.OptionsView.ShowGroupPanel = false;
            gridViewFields.OptionsBehavior.Editable = true;
            gridViewFields.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] { gridColumnGuid, gridColumnFieldName, gridColumnChineseName, gridColumnFieldType, gridColumnFieldInfo, gridColumnRemark });
            gridViewFields.CellValueChanged += new DevExpress.XtraGrid.Views.Base.CellValueChangedEventHandler(gridViewFields_CellValueChanged);
            gridViewFields.CellValueChanging += new DevExpress.XtraGrid.Views.Base.CellValueChangedEventHandler(gridViewFields_CellValueChanging);
            gridViewFields.ValidateRow += new DevExpress.XtraGrid.Views.Base.ValidateRowEventHandler(gridViewFields_ValidateRow);

            gridColumnGuid.Caption = "GUID";
            gridColumnGuid.Name = "gridColumnGUID";
            gridColumnGuid.Visible = true;
            gridColumnGuid.VisibleIndex = 0;
            gridColumnGuid.FieldName = "Gid";

            gridColumnFieldName.Caption = "�ֶ���";
            gridColumnFieldName.Name = "gridColumnFieldName";
            gridColumnFieldName.Visible = true;
            gridColumnFieldName.VisibleIndex = 0;
            gridColumnFieldName.FieldName = "FieldName";

            gridColumnChineseName.Caption = "������";
            gridColumnChineseName.Name = "gridColumnChineseName";
            gridColumnChineseName.Visible = true;
            gridColumnChineseName.VisibleIndex = 1;
            gridColumnChineseName.FieldName = "ChineseName";
            gridColumnChineseName.OptionsColumn.ReadOnly = true;

            gridColumnFieldType.Caption = "�ֶ�����";
            gridColumnFieldType.Name = "gridColumnFieldType";
            gridColumnFieldType.Visible = true;
            gridColumnFieldType.VisibleIndex = 2;
            gridColumnFieldType.FieldName = "FieldType";
            gridColumnFieldType.OptionsColumn.ReadOnly = true;

            gridColumnFieldInfo.Caption = "�ֶ�˵��";
            gridColumnFieldInfo.Name = "gridColumnFieldInfo";
            gridColumnFieldInfo.Visible = true;
            gridColumnFieldInfo.VisibleIndex = 3;
            gridColumnFieldInfo.FieldName = "FieldInfo";
            gridColumnFieldInfo.OptionsColumn.ReadOnly = true;

            gridColumnRemark.Caption = "��ע";
            gridColumnRemark.Name = "gridColumnRemark";
            gridColumnRemark.Visible = true;
            gridColumnRemark.VisibleIndex = 5;
            gridColumnRemark.FieldName = "Remark";

            repositoryItemLookUpEditFields.PopupWidth = 400; //��������  
            repositoryItemLookUpEditFields.NullText = "";//��ʱ��ֵ  
            repositoryItemLookUpEditFields.DropDownRows = 10;//����������  
            repositoryItemLookUpEditFields.ImmediatePopup = true;//����ֵ�Ƿ����ϵ�������  
            repositoryItemLookUpEditFields.ValidateOnEnterKey = true;//�س�ȷ��  
            repositoryItemLookUpEditFields.SearchMode = SearchMode.OnlyInPopup;//�Զ����˵�����Ҫ��ʾ�����ݣ����Ը�����Ҫ�仯  
            repositoryItemLookUpEditFields.TextEditStyle = TextEditStyles.Standard;//Ҫʹ�û��������룬��������ΪStandard  
            repositoryItemLookUpEditFields.AllowNullInput = DevExpress.Utils.DefaultBoolean.True; //����Ctrl + Delete���ѡ����� 
            repositoryItemLookUpEditFields.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
                new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            //�����ʾ��  
            repositoryItemLookUpEditFields.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {  
                 new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Name", "�ֶ���"),  
                 new DevExpress.XtraEditors.Controls.LookUpColumnInfo("ChineseName", "�ֶ�����"),
                 new DevExpress.XtraEditors.Controls.LookUpColumnInfo("DataType", "�ֶ�����"),
                 new DevExpress.XtraEditors.Controls.LookUpColumnInfo("DictNo", "�ֵ���Ŀ"),
                 new DevExpress.XtraEditors.Controls.LookUpColumnInfo("DictNameLst", "�ֵ���Ŀ˵��"),
            });
            repositoryItemLookUpEditFields.ValueMember = "Name";
            repositoryItemLookUpEditFields.DisplayMember = "Name";
            repositoryItemLookUpEditFields.EditValueChanged += repositoryItemLookUpEditFields_EditValueChanged;

            ((System.ComponentModel.ISupportInitialize)(repositoryItemLookUpEditFields)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(gridControlFields)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(gridViewFields)).EndInit();
            groupControlFields.Controls.Add(gridControlFields);
            gridControlFields.DataSource = new List<TableFieldsInfo>();
            #endregion

            #region �ֶγ�ʼ��

            XmlHelper stdfieldxmlHelper = new XmlHelper(@"XML\stdfield.xml");
            XmlNodeList stdfieldxmlNodeLst = stdfieldxmlHelper.Read("datatype/dataitem");
            
            List<StdFieldComboBox> stdFieldInfoList = new List<StdFieldComboBox>();
            foreach (XmlNode xn1 in stdfieldxmlNodeLst)
            {
                // ���ڵ�ת��ΪԪ�أ����ڵõ��ڵ������ֵ
                XmlElement xe = (XmlElement)xn1;
                // �õ�DataTypeInfo�ڵ�������ӽڵ�
                XmlNodeList xnl0 = xe.ChildNodes;
                StdFieldComboBox listItem = new StdFieldComboBox();
                listItem.Name = xnl0.Item(0).InnerText;
                listItem.ChineseName = xnl0.Item(1).InnerText;
                listItem.DataType = xnl0.Item(2).InnerText;
                listItem.DictNo = xnl0.Item(3).InnerText.ToInt32();
                if (dictTypeInfoList != null)
                {
                    var dictType = dictTypeInfoList.Find(new Predicate<DictInfo>(dictinfo => dictinfo.Id == xnl0.Item(3).InnerText.ToInt32()));
                    if (dictType != null) listItem.DictNameLst = dictType.Remark;
                }

                stdFieldInfoList.Add(listItem);
            }

            repositoryItemLookUpEditFields.DataSource = stdFieldInfoList;

            gridViewFields.Columns["FieldName"].ColumnEdit = repositoryItemLookUpEditFields;
            gridViewFields.Columns["Gid"].Visible = false;

            XmlNodeList xmlfieldsLst = xmltablesinfohelper.Read(string.Format("datatype/fieldsinfo"));
            List<TableFieldsInfo> FieldsInfoLst = new List<TableFieldsInfo>();

            foreach (XmlNode xn1 in xmlfieldsLst)
            {
                TableFieldsInfo tablefieldInfo = new TableFieldsInfo();

                // ���ڵ�ת��ΪԪ�أ����ڵõ��ڵ������ֵ
                XmlElement xe = (XmlElement)xn1;

                tablefieldInfo.Gid = xe.GetAttribute("gid").ToString();

                // �õ�DataTypeInfo�ڵ�������ӽڵ�
                XmlNodeList xnl0 = xe.ChildNodes;
                
                for(Int32 i = 0; i < stdFieldInfoList.Count; i ++)
                {
                    if (string.Equals(stdFieldInfoList[i].Name, xnl0.Item(0).InnerText))
                    {
                        tablefieldInfo.FieldName = stdFieldInfoList[i].Name;
                        tablefieldInfo.ChineseName = stdFieldInfoList[i].ChineseName;
                        tablefieldInfo.DataType = stdFieldInfoList[i].DataType;
                        tablefieldInfo.FieldInfo = stdFieldInfoList[i].DictNameLst;
                        break;
                    }
                }

                tablefieldInfo.Remark = xnl0.Item(1).InnerText;
                tablefieldInfo.lstInfo = new Dictionary<string, DevExpress.XtraEditors.DXErrorProvider.ErrorInfo>();
                FieldsInfoLst.Add(tablefieldInfo);
            }

            gridControlFields.DataSource = FieldsInfoLst;

            #endregion

            #region �������
            groupControlIndexs.SuspendLayout();
            groupControlIndexs.Dock = DockStyle.Fill;
            groupControlIndexs.Name = "groupControlIndexs";
            groupControlIndexs.TabIndex = 5;
            groupControlIndexs.Text = "�Զ�������";

            gridControlIndexs = new DevExpress.XtraGrid.GridControl();
            gridViewIndexs = new DevExpress.XtraGrid.Views.Grid.GridView();
            gridColumnIndexGuid = new DevExpress.XtraGrid.Columns.GridColumn();
            gridColumnIndexName = new DevExpress.XtraGrid.Columns.GridColumn();
            gridColumnIndexChineseName = new DevExpress.XtraGrid.Columns.GridColumn();
            gridColumnIndexFieldType = new DevExpress.XtraGrid.Columns.GridColumn();
            gridColumnIndexContent = new DevExpress.XtraGrid.Columns.GridColumn();
            gridColumnIndexRemark = new DevExpress.XtraGrid.Columns.GridColumn();
            repositoryItemMemoExEdit = new DevExpress.XtraEditors.Repository.RepositoryItemMemoExEdit();

            ((System.ComponentModel.ISupportInitialize)(gridControlIndexs)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(gridViewIndexs)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(repositoryItemMemoExEdit)).BeginInit();

            gridControlIndexs.Dock = DockStyle.Fill;
            gridControlIndexs.Cursor = System.Windows.Forms.Cursors.Default;
            gridControlIndexs.MainView = gridViewIndexs;
            gridControlIndexs.Name = "gridControlIndexs";
            gridControlIndexs.Size = new System.Drawing.Size(981, 573);
            gridControlIndexs.TabIndex = 13;
            gridControlIndexs.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            gridViewIndexs});
            gridControlIndexs.ContextMenuStrip = contextMenuStripIndex;
            gridControlIndexs.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] { repositoryItemMemoExEdit });

            gridViewIndexs.Appearance.FocusedRow.BackColor = System.Drawing.Color.LightCyan;
            gridViewIndexs.Appearance.FocusedRow.BackColor2 = System.Drawing.Color.LightCyan;
            gridViewIndexs.Appearance.FocusedRow.Options.UseBackColor = true;
            gridViewIndexs.Appearance.FocusedRow.Options.UseForeColor = true;
            gridViewIndexs.GridControl = gridControlIndexs;
            gridViewIndexs.Name = "gridViewIndexs";
            gridViewIndexs.OptionsBehavior.AllowAddRows = DevExpress.Utils.DefaultBoolean.False;
            gridViewIndexs.OptionsBehavior.AllowDeleteRows = DevExpress.Utils.DefaultBoolean.False;
            gridViewIndexs.OptionsCustomization.AllowFilter = false;
            gridViewIndexs.OptionsCustomization.AllowGroup = false;
            gridViewIndexs.OptionsMenu.EnableColumnMenu = false;
            gridViewIndexs.OptionsMenu.EnableFooterMenu = false;
            gridViewIndexs.OptionsMenu.EnableGroupPanelMenu = false;
            gridViewIndexs.OptionsView.EnableAppearanceEvenRow = true;
            gridViewIndexs.OptionsView.EnableAppearanceOddRow = true;
            gridViewIndexs.OptionsView.ShowGroupPanel = false;
            gridViewIndexs.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] { gridColumnIndexGuid, gridColumnIndexName, gridColumnIndexChineseName, gridColumnIndexFieldType, gridColumnIndexContent, gridColumnIndexRemark });
            gridViewIndexs.CellValueChanged += new DevExpress.XtraGrid.Views.Base.CellValueChangedEventHandler(gridViewIndexs_CellValueChanged);
            gridViewIndexs.CellValueChanging += new DevExpress.XtraGrid.Views.Base.CellValueChangedEventHandler(gridViewIndexs_CellValueChanging);
            gridViewIndexs.ValidateRow += new DevExpress.XtraGrid.Views.Base.ValidateRowEventHandler(gridViewIndexs_ValidateRow);

            gridColumnIndexGuid.Caption = "GUID";
            gridColumnIndexGuid.Name = "gridColumnIndexGuid";
            gridColumnIndexGuid.Visible = false;
            gridColumnIndexGuid.VisibleIndex = 0;
            gridColumnIndexGuid.FieldName = "Gid";

            gridColumnIndexName.Caption = "�ֶ�";
            gridColumnIndexName.Name = "gridColumnIndexName";
            gridColumnIndexName.Visible = true;
            gridColumnIndexName.VisibleIndex = 0;
            gridColumnIndexName.FieldName = "Name";

            gridColumnIndexChineseName.Caption = "������";
            gridColumnIndexChineseName.Name = "gridColumnIndexChineseName";
            gridColumnIndexChineseName.Visible = true;
            gridColumnIndexChineseName.VisibleIndex = 1;
            gridColumnIndexChineseName.FieldName = "ChineseName";

            gridColumnIndexFieldType.Caption = "��������";
            gridColumnIndexFieldType.Name = "gridColumnIndexFieldType";
            gridColumnIndexFieldType.Visible = true;
            gridColumnIndexFieldType.VisibleIndex = 1;
            gridColumnIndexFieldType.FieldName = "DataType";

            gridColumnIndexContent.Caption = "��������";
            gridColumnIndexContent.Name = "gridColumnIndexContent";
            gridColumnIndexContent.Visible = true;
            gridColumnIndexContent.VisibleIndex = 2;
            gridColumnIndexContent.FieldName = "AttrContent";
            gridColumnIndexContent.ColumnEdit = repositoryItemMemoExEdit;

            repositoryItemMemoExEdit.AutoHeight = false;
            repositoryItemMemoExEdit.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            repositoryItemMemoExEdit.Name = "repositoryItemMemoExEdit";

            gridColumnIndexRemark.Caption = "��ע";
            gridColumnIndexRemark.Name = "gridColumnIndexRemark";
            gridColumnIndexRemark.Visible = true;
            gridColumnIndexRemark.VisibleIndex = 3;
            gridColumnIndexRemark.FieldName = "Remark";

            ((System.ComponentModel.ISupportInitialize)(gridControlIndexs)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(gridViewIndexs)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(repositoryItemMemoExEdit)).EndInit();
            groupControlIndexs.Controls.Add(gridControlIndexs);
            gridControlIndexs.DataSource = new List<DiyFieldInfo>();

            #endregion

            splitContainer1.Panel1.Controls.Add(groupControlFields);
            splitContainer1.Panel2.Controls.Add(groupControlIndexs);

            xtraTabPageFields.Controls.Add(splitContainer1);

            XmlNodeList xmlindexLst = xmltablesinfohelper.Read(string.Format("datatype/diyfieldinfo"));

            List<DiyFieldInfo> IndexsInfoLst = new List<DiyFieldInfo>();

            foreach (XmlNode xn1 in xmlindexLst)
            {
                DiyFieldInfo tableindexsInfo = new DiyFieldInfo();

                // ���ڵ�ת��ΪԪ�أ����ڵõ��ڵ������ֵ
                XmlElement xe = (XmlElement)xn1;
                tableindexsInfo.Gid = xe.GetAttribute("gid").ToString();

                // �õ�DataTypeInfo�ڵ�������ӽڵ�
                XmlNodeList xnl0 = xe.ChildNodes;
                tableindexsInfo.Name = xnl0.Item(0).InnerText;
                tableindexsInfo.ChineseName = xnl0.Item(1).InnerText;
                tableindexsInfo.DataType = xnl0.Item(2).InnerText;
                tableindexsInfo.AttrContent = xnl0.Item(3).InnerText;
                tableindexsInfo.Remark = xnl0.Item(4).InnerText;
                tableindexsInfo.lstInfo = new Dictionary<string, DevExpress.XtraEditors.DXErrorProvider.ErrorInfo>();
                IndexsInfoLst.Add(tableindexsInfo);
            }

            gridControlIndexs.DataSource = IndexsInfoLst;

            gridViewIndexs.Columns["Gid"].Visible = false;

            #endregion

            #region �޶���¼
            xtraTabPageHistoryRecord.Name = "xtraTabPageHistoryRecord";
            xtraTabPageHistoryRecord.Text = "�޶���¼";

            DevExpress.XtraEditors.Repository.RepositoryItemDateEdit repositoryItemDateEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemDateEdit();
            ((System.ComponentModel.ISupportInitialize)(repositoryItemDateEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(repositoryItemDateEdit1.CalendarTimeProperties)).BeginInit();
            repositoryItemDateEdit1.AutoHeight = false;
            repositoryItemDateEdit1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            repositoryItemDateEdit1.CalendarTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            repositoryItemDateEdit1.Name = "repositoryItemDateEdit1";
            ((System.ComponentModel.ISupportInitialize)(repositoryItemDateEdit1.CalendarTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(repositoryItemDateEdit1)).EndInit();

            CommonControl.Pager.WinGridViewPager gridViewModrecord = new CommonControl.Pager.WinGridViewPager();
            gridViewModrecord.DisplayColumns = "";
            gridViewModrecord.Dock = DockStyle.Fill;
            gridViewModrecord.FixedColumns = null;
            gridViewModrecord.Location = new System.Drawing.Point(0, 0);
            gridViewModrecord.MinimumSize = new System.Drawing.Size(540, 0);
            gridViewModrecord.Name = "gridViewModrecord";
            gridViewModrecord.PrintTitle = "";
            gridViewModrecord.ShowAddMenu = true;
            gridViewModrecord.ShowCheckBox = false;
            gridViewModrecord.ShowDeleteMenu = true;
            gridViewModrecord.ShowEditMenu = true;
            gridViewModrecord.ShowExportButton = true;
            gridViewModrecord.Size = new System.Drawing.Size(941, 549);
            gridViewModrecord.TabIndex = 0;
            gridViewModrecord.gridControl1.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] { repositoryItemDateEdit1 });
            gridViewModrecord.DisplayColumns = "ModDate,ModVersion,ModOrderId,Proposer,Programmer,ModContent,ModReason,Remark";
            gridViewModrecord.AddColumnAlias("Gid", "GUID");
            gridViewModrecord.AddColumnAlias("ModDate", "�޸�����");
            gridViewModrecord.AddColumnAlias("ModVersion", "�޸İ汾");
            gridViewModrecord.AddColumnAlias("ModOrderId", "�޸ĵ���");
            gridViewModrecord.AddColumnAlias("Proposer", "������");
            gridViewModrecord.AddColumnAlias("Programmer", "�޸���");
            gridViewModrecord.AddColumnAlias("ModContent", "�޸�����");
            gridViewModrecord.AddColumnAlias("ModReason", "�޸�ԭ��");
            gridViewModrecord.AddColumnAlias("Remark", "��ע");
            List<ModRecordInfo> modRecordInfoLst = new List<ModRecordInfo>();
            gridViewModrecord.DataSource = modRecordInfoLst;
            xtraTabPageHistoryRecord.Controls.Add(gridViewModrecord);

            #endregion

            control.Controls.Add(xtraTabControl1);

            ((System.ComponentModel.ISupportInitialize)(groupControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(groupControlFields)).EndInit();
            groupControlFields.ResumeLayout(false);
            groupControlFields.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(groupControlIndexs)).EndInit();
            groupControlIndexs.ResumeLayout(false);
            groupControlIndexs.PerformLayout();
            splitContainer1.Panel1.ResumeLayout(false);
            splitContainer1.Panel2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(splitContainer1)).EndInit();
            splitContainer1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(txtobjectId.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(txtenglishName.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(txtchineseName.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(mefieldnamespace.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(txtfolder.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(txtbaseclass.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(txtversion.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(txtlastupdate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(meremark.Properties)).EndInit();

            groupControl1.ResumeLayout(false);
            groupControl1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(xtraTabControl1)).EndInit();
            xtraTabControl1.ResumeLayout(false);

            control.Name = item.Hint;
            control.Text = item.Hint;

            BaseDocument document = tabbedView.AddDocument(control);
            document.Footer = Directory.GetCurrentDirectory();
            document.Tag = item.Hint;

            tabbedView.EndUpdate();
            tabbedView.Controller.Activate(document);

            dockPanel6.HideSliding();
        }

        /// <summary>  
        /// ʵ���û���������  
        /// </summary>  
        /// <param name="sender"></param>  
        /// <param name="e"></param>  
        private void repositoryItemLookUpEditFields_EditValueChanged(object sender, EventArgs e)
        {
            LookUpEdit edit = sender as LookUpEdit;
            if (edit.EditValue != null)
            {
                //ȡ�����У�����ԴΪDataTable, ��������DataRowView����   
                StdFieldComboBox o = edit.Properties.GetDataSourceRowByKeyValue(edit.EditValue) as StdFieldComboBox;
                if (o != null)
                {
                    var tablefieldsInfo = gridViewFields.GetFocusedRow() as TableFieldsInfo;
                    tablefieldsInfo.FieldName = o.Name;
                    tablefieldsInfo.ChineseName = o.ChineseName;
                    tablefieldsInfo.DataType = o.DataType;
                    tablefieldsInfo.FieldInfo = o.DictNameLst;

                    XmlNodeList xmlNodeLst = xmltablesinfohelper.Read("datatype/fieldsinfo/item[@gid=\"" + tablefieldsInfo.Gid + "\"]");
                    xmlNodeLst.Item(0).InnerText = o.Name;
                    xmltablesinfohelper.Save(false);

                    gridViewFields.RefreshRow(gridViewFields.FocusedRowHandle);
                }
            }
        }

        /// <summary>
        /// ��֤��ȷ�޸����Ӧ��xmlֵ �����������ʱ��
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void txtValue_Validated(object sender, EventArgs e)
        {
            Control c = sender as Control;
            string result = string.Empty;
            string value = string.Empty;

            // �жϰ汾�ֹ��޸��Ƿ���ϸ�ʽ
            if (string.Equals(c.Name, "txtversion"))
            {
                try
                {
                    new Version(c.Text);
                }
                catch (Exception ex)
                {
                    MessageDxUtil.ShowError(ex.Message);
                    return;
                }
            }

            if (string.IsNullOrEmpty(strBasicInfoGuid))
                return;

            switch (c.Name)
            {
                case "txtobjectId":
                    result = "datatype/basicinfo/item[@gid=\"" + strBasicInfoGuid + "\"]/functionId";
                    break;
                case "txtenglishName":
                    result = "datatype/basicinfo/item[@gid=\"" + strBasicInfoGuid + "\"]/name";
                    break;
                case "txtchineseName":
                    result = "datatype/basicinfo/item[@gid=\"" + strBasicInfoGuid + "\"]/chineseName";
                    break;
                case "mefieldnamespace":
                    result = "datatype/basicinfo/item[@gid=\"" + strBasicInfoGuid + "\"]/fieldnamespace";
                    break;
                case "txtversion":
                    result = "datatype/basicinfo/item[@gid=\"" + strBasicInfoGuid + "\"]/version";
                    break;
                case "txtfolder":
                    result = "datatype/basicinfo/item[@gid=\"" + strBasicInfoGuid + "\"]/folder";
                    break;
                case "txtbaseclass":
                    result = "datatype/basicinfo/item[@gid=\"" + strBasicInfoGuid + "\"]/baseclass";
                    break;
                case "txtlastupdate":
                    result = "datatype/basicinfo/item[@gid=\"" + strBasicInfoGuid + "\"]/lasttime";
                    break;
                case "meremark":
                    result = "datatype/basicinfo/item[@gid=\"" + strBasicInfoGuid + "\"]/remark";
                    break;
            }

            // ���������Щ��֪�Ŀؼ�����ֹͣ
            if (string.IsNullOrEmpty(result))
            {
                MessageDxUtil.ShowError("�޸�ʧ�ܣ����޸ĵĿؼ�������֪��Χ��");
                return;
            }

            xmltablesinfohelper.Replace(result, c.Text.Replace("<", "&lt;").Replace(">", "&gt;"));
            xmltablesinfohelper.Save(false);

            string curdatetime = DateTimeHelper.GetServerDateTime();
            xmltablesinfohelper.Replace("datatype/basicinfo/item[@gid=\"" + strBasicInfoGuid + "\"]/lasttime", curdatetime);
            xmltablesinfohelper.Save(false);

            txtlastupdate.Text = curdatetime;
        }

        /// <summary>
        /// ���������ֵ�
        /// </summary>
        private void LoadDicData()
        {
            #region ���������ֵ����
            XmlHelper xmldicthelper = new XmlHelper(@"XML\dict.xml");
            XmlNodeList xmlNodeLst = xmldicthelper.Read("datatype/dataitem");
            dictTypeInfoList = new List<DictInfo>();
            foreach (XmlNode xn1 in xmlNodeLst)
            {
                DictInfo dictInfo = new DictInfo();
                // ���ڵ�ת��ΪԪ�أ����ڵõ��ڵ������ֵ
                XmlElement xe = (XmlElement)xn1;

                // �õ�DataTypeInfo�ڵ�������ӽڵ�
                XmlNodeList xnl0 = xe.ChildNodes;
                dictInfo.Id = xnl0.Item(0).InnerText.ToInt32();
                dictInfo.Pid = xnl0.Item(1).InnerText.ToInt32();
                dictInfo.Name = xnl0.Item(2).InnerText;

                StringBuilder sb = new StringBuilder();

                XmlNodeList xmlNodeLst2 = xmldicthelper.Read(string.Format("datatype/dataitem/item[id=\"{0}\"]/subdic", dictInfo.Id));

                List<DictDetailInfo> dictDetailInfoList = new List<DictDetailInfo>();
                foreach (XmlNode xn12 in xmlNodeLst2)
                {
                    // ���ڵ�ת��ΪԪ�أ����ڵõ��ڵ������ֵ
                    XmlElement xe2 = (XmlElement)xn12;

                    // �õ�DataTypeInfo�ڵ�������ӽڵ�
                    XmlNodeList xnl02 = xe2.ChildNodes;
                    sb.Append(string.Format("{0}-{1},\r\n", xnl02.Item(0).InnerText, xnl02.Item(1).InnerText));
                }

                dictInfo.Remark = sb.ToString().TrimEnd(",\r\n".ToCharArray());

                dictTypeInfoList.Add(dictInfo);
            }
            #endregion
        }

        /// <summary>
        /// �����ֶ�
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void toolStripMenuItem_AddField_Click(object sender, EventArgs e)
        {
            var tableFieldsInfo = new TableFieldsInfo();
            tableFieldsInfo.Gid = System.Guid.NewGuid().ToString();
            tableFieldsInfo.lstInfo = new Dictionary<string, DevExpress.XtraEditors.DXErrorProvider.ErrorInfo>();

            xmltablesinfohelper.InsertElement("datatype/fieldsinfo", "item", "gid", tableFieldsInfo.Gid, string.Format(xmlfieldsinfomodel, string.Empty, string.Empty));
            xmltablesinfohelper.Save(false);

            (gridViewFields.DataSource as List<TableFieldsInfo>).Add(tableFieldsInfo);
            gridViewFields.RefreshData();
        }

        /// <summary>
        /// ɾ���ֶ�
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void toolStripMenuItem_DelField_Click(object sender, EventArgs e)
        {
            // 20170824 ��������һ�п������ټ�������
            if (gridViewFields.GetFocusedRow() as TableFieldsInfo == null || string.IsNullOrEmpty((gridViewFields.GetFocusedRow() as TableFieldsInfo).Gid))
                return;

            xmltablesinfohelper.DeleteByPathNode("datatype/fieldsinfo/item[@gid=\"" + gridViewFields.GetRowCellDisplayText(gridViewFields.FocusedRowHandle, "Gid") + "\"]");
            xmltablesinfohelper.Save(false);

            (gridViewFields.DataSource as List<TableFieldsInfo>).RemoveAt(gridViewFields.FocusedRowHandle);
            gridViewFields.RefreshData();
        }

        private void gridViewFields_CellValueChanged(object sender, DevExpress.XtraGrid.Views.Base.CellValueChangedEventArgs e)
        {
            XmlNodeList xmlNodeLst = xmltablesinfohelper.Read("datatype/fieldsinfo/item[@gid=\"" + tmptableFieldsInfo.Gid + "\"]");
            Int32 idx = -1;

            switch (e.Column.ToString())
            {
                case "�ֶ���":
                    idx = 0;
                    break;
                case "��ע":
                    idx = 1;
                    break;
            }

            if (idx == -1)
                return;

            xmlNodeLst.Item(idx).InnerText = e.Value.ToString();

            xmltablesinfohelper.Save(false);

            tmptableFieldsInfo = null;
        }

        private void gridViewFields_CellValueChanging(object sender, DevExpress.XtraGrid.Views.Base.CellValueChangedEventArgs e)
        {
            // 20170824 ��������һ�п������ټ�������
            if (string.IsNullOrEmpty((gridViewFields.GetFocusedRow() as TableFieldsInfo).Gid))
                return;

            tmptableFieldsInfo = gridViewFields.GetRow(e.RowHandle) as TableFieldsInfo;
        }

        private void gridViewFields_ValidateRow(object sender, DevExpress.XtraGrid.Views.Base.ValidateRowEventArgs e)
        {
            // ��ѯ�Ƿ����2����ֵ������
            List<TableFieldsInfo> lsttableFieldsInfo = gridViewFields.DataSource as List<TableFieldsInfo>;

            // �����ظ���Name��ֵ && ���ԭ�ȵĴ�����Ϣ

            List<String> tmpName = new List<string>();
            List<String> lstName = new List<string>();
            foreach (TableFieldsInfo tableFieldsInfo in lsttableFieldsInfo)
            {
                if (string.IsNullOrEmpty(tableFieldsInfo.Gid))
                    continue;

                if (lstName.Contains(tableFieldsInfo.FieldName))
                {
                    tmpName.Add(tableFieldsInfo.FieldName);
                }

                lstName.Add(tableFieldsInfo.FieldName);

                tableFieldsInfo.lstInfo.Clear();
            }

            foreach (TableFieldsInfo tableFieldsInfo in lsttableFieldsInfo)
            {
                if (string.IsNullOrEmpty(tableFieldsInfo.Gid))
                    continue;

                // �ж��ظ��� ������
                if (tmpName.Contains(tableFieldsInfo.FieldName))
                {
                    if (tableFieldsInfo.lstInfo.ContainsKey("FieldName"))
                    {
                        tableFieldsInfo.lstInfo["FieldName"].ErrorText = tableFieldsInfo.lstInfo["FieldName"].ErrorText + "\r\nһ�����в���������ظ����ֶ���";
                        tableFieldsInfo.lstInfo["FieldName"].ErrorType = tableFieldsInfo.lstInfo["FieldName"].ErrorType >= DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical ? tableFieldsInfo.lstInfo["FieldName"].ErrorType : DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical;
                    }
                    else
                    {
                        tableFieldsInfo.lstInfo.Add("FieldName", new DevExpress.XtraEditors.DXErrorProvider.ErrorInfo("һ�����в���������ظ����ֶ���", DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical));
                    }
                }

                // �ж������Ƿ�Ϊ��
                if (string.IsNullOrEmpty(tableFieldsInfo.FieldName))
                {
                    if (tableFieldsInfo.lstInfo.ContainsKey("FieldName"))
                    {
                        tableFieldsInfo.lstInfo["FieldName"].ErrorText = tableFieldsInfo.lstInfo["FieldName"].ErrorText + "\r\n�ֶ�������Ϊ��";
                        tableFieldsInfo.lstInfo["FieldName"].ErrorType = tableFieldsInfo.lstInfo["FieldName"].ErrorType >= DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical ? tableFieldsInfo.lstInfo["FieldName"].ErrorType : DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical;
                    }
                    else
                    {
                        tableFieldsInfo.lstInfo.Add("FieldName", new DevExpress.XtraEditors.DXErrorProvider.ErrorInfo("�ֶ�������Ϊ��", DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical));
                    }
                }
            }
        }


        /// <summary>
        /// ��������
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void toolStripMenuItem_AddIndex_Click(object sender, EventArgs e)
        {
            var diyFieldInfo = new DiyFieldInfo();
            diyFieldInfo.Gid = System.Guid.NewGuid().ToString();
            diyFieldInfo.lstInfo = new Dictionary<string, DevExpress.XtraEditors.DXErrorProvider.ErrorInfo>();

            xmltablesinfohelper.InsertElement("datatype/diyfieldinfo", "item", "gid", diyFieldInfo.Gid, string.Format(xmldiyfieldinfomodel, string.Empty, string.Empty, string.Empty, string.Empty, string.Empty));
            xmltablesinfohelper.Save(false);

            (gridViewIndexs.DataSource as List<DiyFieldInfo>).Add(diyFieldInfo);
            gridViewIndexs.RefreshData();
        }

        /// <summary>
        /// ɾ������
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void toolStripMenuItem_DelIndex_Click(object sender, EventArgs e)
        {
            // 20171106 wjm �޸�ɾ��û�����ݱ�������
            // 20170824 ��������һ�п������ټ�������
            if (gridViewIndexs.GetFocusedRow() as DiyFieldInfo == null || string.IsNullOrEmpty((gridViewIndexs.GetFocusedRow() as DiyFieldInfo).Gid))
                return;

            xmltablesinfohelper.DeleteByPathNode("datatype/diyfieldinfo/item[@gid=\"" + gridViewIndexs.GetRowCellDisplayText(gridViewIndexs.FocusedRowHandle, "Gid") + "\"]");
            xmltablesinfohelper.Save(false);

            (gridViewIndexs.DataSource as List<DiyFieldInfo>).RemoveAt(gridViewIndexs.FocusedRowHandle);
            gridViewIndexs.RefreshData();
        }
		
		private void gridViewIndexs_CellValueChanged(object sender, DevExpress.XtraGrid.Views.Base.CellValueChangedEventArgs e)
        {
            XmlNodeList xmlNodeLst = xmltablesinfohelper.Read("datatype/diyfieldinfo/item[@gid=\"" + tmptableIndexsInfo.Gid + "\"]");
            Int32 idx = -1;

            switch (e.Column.ToString())
            {
                case "�ֶ�":
                    idx = 0;
                    break;
                case "������":
                    idx = 1;
                    break;
                case "��������":
                    idx = 2;
                    break;
                case "��������":
                    idx = 3;
                    break;
                case "��ע":
                    idx = 4;
                    break;
            }

            if (idx == -1)
                return;

            xmlNodeLst.Item(idx).InnerText = e.Value.ToString();

            xmltablesinfohelper.Save(false);

            tmptableIndexsInfo = null;
        }

        private void gridViewIndexs_CellValueChanging(object sender, DevExpress.XtraGrid.Views.Base.CellValueChangedEventArgs e)
        {
            // 20170824 ��������һ�п������ټ�������
            if (string.IsNullOrEmpty((gridViewIndexs.GetFocusedRow() as DiyFieldInfo).Gid))
                return;

            tmptableIndexsInfo = gridViewIndexs.GetRow(e.RowHandle) as DiyFieldInfo;
        }

        private void gridViewIndexs_ValidateRow(object sender, DevExpress.XtraGrid.Views.Base.ValidateRowEventArgs e)
        {
            // ��ѯ�Ƿ����2����ֵ������
            List<DiyFieldInfo> lsttableIndexsInfo = gridViewIndexs.DataSource as List<DiyFieldInfo>;

            // �����ظ���Name��ֵ && ���ԭ�ȵĴ�����Ϣ

            List<String> tmpName = new List<string>();
            List<String> lstName = new List<string>();
            foreach (DiyFieldInfo tableIndexsInfo in lsttableIndexsInfo)
            {
                if (string.IsNullOrEmpty(tableIndexsInfo.Gid))
                    continue;

                if (lstName.Contains(tableIndexsInfo.Name))
                {
                    tmpName.Add(tableIndexsInfo.Name);
                }

                lstName.Add(tableIndexsInfo.Name);

                tableIndexsInfo.lstInfo.Clear();
            }

            foreach (DiyFieldInfo tableIndexsInfo in lsttableIndexsInfo)
            {
                if (string.IsNullOrEmpty(tableIndexsInfo.Gid))
                    continue;

                // �ж��ظ��� ������
                if (tmpName.Contains(tableIndexsInfo.Name) && !string.IsNullOrEmpty(tableIndexsInfo.Name))
                {
                    if (tableIndexsInfo.lstInfo.ContainsKey("Name"))
                    {
                        tableIndexsInfo.lstInfo["Name"].ErrorText = tableIndexsInfo.lstInfo["Name"].ErrorText + "\r\nһ�����в���������ظ����ֶ�";
                        tableIndexsInfo.lstInfo["Name"].ErrorType = tableIndexsInfo.lstInfo["Name"].ErrorType >= DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical ? tableIndexsInfo.lstInfo["Name"].ErrorType : DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical;
                    }
                    else
                    {
                        tableIndexsInfo.lstInfo.Add("Name", new DevExpress.XtraEditors.DXErrorProvider.ErrorInfo("һ�����в���������ظ����ֶ�", DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical));
                    }
                }
            }
        }

        // �ֹ�ˢ�»���
        private void tsmirealoadcache_Click(object sender, EventArgs e)
        {
            // ���������ֵ�
            LoadDicData();

            // ���¼��ػ���
            XmlHelper stdfieldxmlHelper = new XmlHelper(@"XML\stdfield.xml");
            XmlNodeList stdfieldxmlNodeLst = stdfieldxmlHelper.Read("datatype/dataitem");

            List<StdFieldComboBox> stdFieldInfoList = new List<StdFieldComboBox>();
            foreach (XmlNode xn1 in stdfieldxmlNodeLst)
            {
                // ���ڵ�ת��ΪԪ�أ����ڵõ��ڵ������ֵ
                XmlElement xe = (XmlElement)xn1;
                // �õ�DataTypeInfo�ڵ�������ӽڵ�
                XmlNodeList xnl0 = xe.ChildNodes;
                StdFieldComboBox listItem = new StdFieldComboBox();
                listItem.Name = xnl0.Item(0).InnerText;
                listItem.ChineseName = xnl0.Item(1).InnerText;
                listItem.DataType = xnl0.Item(2).InnerText;
                listItem.DictNo = xnl0.Item(3).InnerText.ToInt32();
                if (dictTypeInfoList != null)
                {
                    var dictType = dictTypeInfoList.Find(new Predicate<DictInfo>(dictinfo => dictinfo.Id == xnl0.Item(3).InnerText.ToInt32()));
                    if (dictType != null) listItem.DictNameLst = dictType.Remark;
                }

                stdFieldInfoList.Add(listItem);
            }

            repositoryItemLookUpEditFields.DataSource = stdFieldInfoList;

            gridViewFields.Columns["FieldName"].ColumnEdit = repositoryItemLookUpEditFields;
        }
    }
}
