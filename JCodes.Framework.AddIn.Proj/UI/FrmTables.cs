using System.Collections.Generic;
using System.IO;
using System.Windows.Forms;
using DevExpress.XtraBars.Docking2010.Views;
using DevExpress.XtraSplashScreen;
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
using DevExpress.Utils;
using DevExpress.XtraRichEdit.Commands;
using DevExpress.XtraRichEdit;
using DevExpress.Office.Internal;
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
    public partial class FrmTables : BaseDock
    {
        #region �ؼ�����
        private DevExpress.XtraRichEdit.RichEditControl richEditControl;
        private NavBarControl navBar;
        
        private NavBarGroup selectedGroup;
        private NavBarItemLink selectedLink;
        private UserControl control;
        private XtraTabControl xtraTabControl1;
        private XtraTabPage xtraTabPageBasic;
        private XtraTabPage xtraTabPageFields;
        private XtraTabPage xtraTabPageSQLLook;
        private XtraTabPage xtraTabPageHistoryRecord;
        private GroupControl groupControl1;
        private Label lblobjectId;
        private Label lblenglishName;
        private Label lblchineseName;
        private Label lblexistHisTable;
        private Label lblDB;
        private Label lblversion;
        private Label lbllastupdate;
        private Label lblremark;
        private TextEdit txtobjectId;
        private TextEdit txtenglishName;
        private TextEdit txtchineseName;
        private TextEdit txtversion;
        private DateEdit txtlastupdate;
        private CheckEdit ckexistHisTable;
        private MemoEdit meremark;
        private SplitContainer splitContainer1;
        private GroupControl groupControlFields;
        private GroupControl groupControlIndexs;
        private DevExpress.XtraGrid.GridControl gridControlFields;
        private DevExpress.XtraGrid.Views.Grid.GridView gridViewFields;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemChkIsNull;
        private DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit repositoryItemLookUpEditFields;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumnGuid;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumnFieldName;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumnChineseName;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumnFieldType;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumnFieldInfo;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumnIsNull;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumnRemark;
        private DevExpress.XtraGrid.GridControl gridControlIndexs;
        private DevExpress.XtraGrid.Views.Grid.GridView gridViewIndexs;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repositoryItemConstraintType;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckedComboBoxEdit repositoryItemCheckedComboBoxIndexFields;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumnIndexGuid;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumnIndexName;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumnIndexFieldLst;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumnConstraintType;
        #endregion

        #region ��ȡxml�����ļ�
        private XmlHelper xmltableshelper = new XmlHelper(@"XML\tables.xml");
        private XmlHelper xmltablesinfohelper = null;
        
        #endregion

        #region ���ݻ���
        private string xmlfieldsinfomodel = "<name>{0}</name><isnull>{1}</isnull><remark>{2}</remark>";

        /// <summary>
        /// constraint_type: 0 - ����
        ///                  1 - ����
        ///                  2 - Ψһ����
        /// </summary>
        private string xmlindexsinfomodel = "<name>{0}</name><indexfieldlst>{1}</indexfieldlst><constraint_type>{2}</constraint_type>";

        private List<DictInfo> dictTypeInfoList = null;
        private Dictionary<string, string> guidGroup = new Dictionary<string, string>();
        private Dictionary<string, string> tableGroup = new Dictionary<string, string>();

        private string strBasicInfoGuid = string.Empty;

        private TableFieldsInfo tmptableFieldsInfo = null;
        
        private TableIndexsInfo tmptableIndexsInfo = null;
        #endregion

        public FrmTables()
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
                selectedGroup = hi.Group;
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

            // �������ö�ȡ����
            XmlNodeList xmlNodeLst = xmltableshelper.Read("datatype/tabletype");
            List<TablesTypeInfo> tablesTypeInfoList = new List<TablesTypeInfo>();
            guidGroup.Clear();
            tableGroup.Clear();
            foreach (XmlNode xn1 in xmlNodeLst)
            {
                TablesTypeInfo tablesTypeInfo = new TablesTypeInfo();
                // ���ڵ�ת��ΪԪ�أ����ڵõ��ڵ������ֵ
                XmlElement xe = (XmlElement)xn1;
                // �õ�Type��ISBN�������Ե�����ֵ
                tablesTypeInfo.Gid= xe.GetAttribute("gid").ToString();
                tablesTypeInfo.CreatorTime = Convert.ToDateTime(xe.GetAttribute("creatortime"));
                tablesTypeInfo.Name = xe.GetAttribute("name").ToString();

                // ��ȡ�ַ����е�Ӣ����ĸ [a-zA-Z]+
                string GroupEnglishName = CRegex.GetText(tablesTypeInfo.Name, "[a-zA-Z]+", 0);

                guidGroup.Add(tablesTypeInfo.Gid, string.Format("{0}{1}_", Const.TablePre, GroupEnglishName));
                tablesTypeInfoList.Add(tablesTypeInfo);
            }

            XmlNodeList xmlNodeLst2 = xmltableshelper.Read("datatype/dataitem");
            List<TablesInfo> tablesInfoList = new List<TablesInfo>();
            foreach (XmlNode xn1 in xmlNodeLst2)
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
                tablesInfo.FunctionId = xnl0.Item(2).InnerText.ToInt32();
                tablesInfo.TypeGuid = xnl0.Item(3).InnerText;
                tablesInfo.BasicdataPath = xnl0.Item(4).InnerText;

                tableGroup.Add(tablesInfo.Name, guidGroup[tablesInfo.TypeGuid]);
                tablesInfoList.Add(tablesInfo);
            }

            if (tablesTypeInfoList.Count == 0) return;

            foreach (var tablesTypeInfo in tablesTypeInfoList)
            {
                NavBarGroup standardGroup = navBar.Groups.Add();
                standardGroup.Caption = tablesTypeInfo.Name;
                standardGroup.Tag = tablesTypeInfo.Gid;
                standardGroup.Expanded = true;

                foreach (var tablesInfo in tablesInfoList)
                {
                    if (string.Equals(tablesTypeInfo.Gid, tablesInfo.TypeGuid))
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
            }
        }

        void richEditControl_InitializeDocument(object sender, EventArgs e)
        {
            Document document = (sender as DevExpress.XtraRichEdit.RichEditControl).Document;
            document.BeginUpdate();
            document.DefaultCharacterProperties.FontName = "Courier New";
            document.DefaultCharacterProperties.FontSize = 10;
            document.Sections[0].Page.Width = Units.InchesToDocumentsF(50);
            document.Sections[0].LineNumbering.CountBy = 1;
            document.Sections[0].LineNumbering.RestartType = LineNumberingRestart.Continuous;
            document.EndUpdate();
        }

        /// <summary>
        /// ������
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void bbiAddGroup_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            FrmEditGroupName dlg = new FrmEditGroupName();
            dlg.Tag = string.Empty;
            if (dlg.ShowDialog() == DialogResult.OK)
            {
                NavBarGroup standardGroup = navBar.Groups.Add();
                standardGroup.Tag = dlg.Tag;
                standardGroup.Caption = dlg.strGroupName;

                guidGroup.Add(standardGroup.Tag.ToString(), string.Format("{0}{1}_", Const.TablePre, CRegex.GetText(standardGroup.Caption, "[a-zA-Z]+", 0)));
            }
        }

        /// <summary>
        /// �޸���
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void bbiModGroup_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (selectedGroup == null)
            {
                MessageDxUtil.ShowError("��ѡ����Ҫ�޸ĵķ���");
                return;
            }

            FrmEditGroupName dlg = new FrmEditGroupName();
            dlg.Id = 1;
            dlg.Tag = selectedGroup.Tag;
            if (dlg.ShowDialog() == DialogResult.OK)
            {
                selectedGroup.Caption = dlg.strGroupName;

                guidGroup[selectedGroup.Tag.ToString()] = string.Format("{0}{1}_", Const.TablePre, CRegex.GetText(selectedGroup.Caption, "[a-zA-Z]+", 0));
            }

            selectedGroup = null;
        }

        /// <summary>
        /// ɾ����
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>

        private void bbiDelGroup_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (selectedGroup == null)
            {
                MessageDxUtil.ShowError("��ѡ����Ҫɾ���ķ���");
                return;
            }
            // ��Ҫ���¶�һ��xml�ļ����滺������û��
            xmltableshelper = new XmlHelper(@"XML\tables.xml");
            // ɾ����ķ���
            xmltableshelper.DeleteByPathNode(string.Format("datatype/tabletype/item[@gid=\"{0}\"]", selectedGroup.Tag));
            // ɾ������
            while (true)
            {
                try
                {
                    // ��ɾ���ӽڵ㱾��
                    var objXmlDoc = xmltableshelper.GetXmlDoc();
                    XmlNode xn = objXmlDoc.SelectSingleNode(string.Format("datatype/dataitem/item[typeguid=\"{0}\"]", selectedGroup.Tag));
                    // ɾ��table�ļ�
                    if (FileUtil.FileIsExist(string.Format(@"XML\{0}.table", xn.FirstChild.InnerText)))
                    {
                        FileUtil.DeleteFile(string.Format(@"XML\{0}.table", xn.FirstChild.InnerText));
                    }
                    if (FileUtil.FileIsExist(string.Format(@"XML\{0}.basicdata", xn.FirstChild.InnerText)))
                    {
                        FileUtil.DeleteFile(string.Format(@"XML\{0}.basicdata", xn.FirstChild.InnerText));
                    }

                    xn.ParentNode.RemoveChild(xn);
                }
                catch
                {
                    break;
                }
            }

            navBar.Groups.Remove(selectedGroup);

            xmltableshelper.Save(false);

            guidGroup.Remove(selectedGroup.Tag.ToString());

            selectedGroup = null;
        }

        /// <summary>
        /// ������
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void bbiAddItem_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (selectedGroup == null)
            {
                MessageDxUtil.ShowError("��ѡ����Ҫ�����ķ���");
                return;
            }

            FrmEditItemName dlg = new FrmEditItemName();
            dlg.strGroupGuid = selectedGroup.Tag.ToString();
            dlg.strGuid = string.Empty;
            if (dlg.ShowDialog() == DialogResult.OK)
            {
                NavBarItem item = new NavBarItem();
                item.Caption = string.Format("{0}-({1} {2})", dlg.intFunction, dlg.strChineseName, dlg.strItemName);
                item.Tag = dlg.strGuid;
                item.Name = dlg.strItemName;
                item.Hint = dlg.strChineseName;
                item.LinkClicked += Item_LinkClicked;

                navBar.Items.Add(item);
                selectedGroup.ItemLinks.Add(item);

                tableGroup.Add(dlg.strItemName, guidGroup[dlg.strGroupGuid]);

                if (!selectedGroup.Expanded)
                    selectedGroup.Expanded = true;
            }

            selectedGroup = null;
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

            FrmEditItemName dlg = new FrmEditItemName();
            dlg.strGuid = selectedLink.Item.Tag.ToString();
            dlg.strGroupGuid = selectedGroup.Tag.ToString();
            if (dlg.ShowDialog() == DialogResult.OK)
            {
                NavBarItem item = selectedLink.Item;
                tableGroup.Remove(selectedLink.Item.Name);

                item.Caption = string.Format("{0}-({1} {2})", dlg.intFunction, dlg.strChineseName, dlg.strItemName);
                item.Name = dlg.strItemName;
                item.Hint = dlg.strChineseName;

                tableGroup.Add(dlg.strItemName, guidGroup[dlg.strGroupGuid]);
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

            xmltableshelper = new XmlHelper(@"XML\tables.xml");
            // ɾ������
            xmltableshelper.DeleteByPathNode(string.Format("datatype/dataitem/item[@gid=\"{0}\"]", selectedLink.Item.Tag));
            xmltableshelper.Save(false);

            // ɾ��table�ļ�
            if (FileUtil.IsExistFile(string.Format(@"XML\{0}.table", selectedLink.Item.Name)))
            {
                FileUtil.DeleteFile(string.Format(@"XML\{0}.table", selectedLink.Item.Name));
            }

            // ����ɾ��Ԫ��
            selectedGroup.ItemLinks.Remove(selectedLink);

            tableGroup.Remove(selectedLink.Item.Name);

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
            xtraTabPageSQLLook = new XtraTabPage();
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
            xtraTabControl1.TabPages.AddRange(new XtraTabPage[] { xtraTabPageBasic, xtraTabPageFields, xtraTabPageSQLLook, xtraTabPageHistoryRecord });

            #region ������Ϣ
            xtraTabPageBasic.Name = "xtraTabPageBasic";
            xtraTabPageBasic.Text = "������Ϣ";

            groupControl1 = new GroupControl();
            lblobjectId = new Label();
            lblenglishName = new Label();
            lblchineseName = new Label();
            lblexistHisTable = new Label();
            lblDB = new Label();
            lblversion = new Label();
            lbllastupdate = new Label();
            lblremark = new Label();

            txtobjectId = new TextEdit();
            txtenglishName = new TextEdit();
            txtchineseName = new TextEdit();
            txtversion = new TextEdit();
            txtlastupdate = new DateEdit();
            ckexistHisTable = new CheckEdit();
            meremark = new MemoEdit();

            ((System.ComponentModel.ISupportInitialize)(groupControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(txtobjectId.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(txtenglishName.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(txtchineseName.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(txtversion.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(txtlastupdate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(ckexistHisTable.Properties)).BeginInit();
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

            lblenglishName.Location = new System.Drawing.Point(5, 55);
            lblenglishName.Name = "lblenglishName";
            lblenglishName.Size = new System.Drawing.Size(90, 22);
            lblenglishName.Text = "Ӣ����";
            lblenglishName.TextAlign = System.Drawing.ContentAlignment.MiddleRight;

            txtenglishName.Anchor = ((System.Windows.Forms.AnchorStyles)(System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left));
            txtenglishName.Location = new System.Drawing.Point(100, 57);
            txtenglishName.Name = "txtenglishName";
            txtenglishName.Size = new System.Drawing.Size(180, 22);

            lblchineseName.Location = new System.Drawing.Point(5, 80);
            lblchineseName.Name = "lblenglishName";
            lblchineseName.Size = new System.Drawing.Size(90, 22);
            lblchineseName.Text = "������";
            lblchineseName.TextAlign = System.Drawing.ContentAlignment.MiddleRight;

            txtchineseName.Anchor = ((System.Windows.Forms.AnchorStyles)(System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left));
            txtchineseName.Location = new System.Drawing.Point(100, 82);
            txtchineseName.Name = "txtchineseName";
            txtchineseName.Size = new System.Drawing.Size(180, 22);

            lblexistHisTable.Location = new System.Drawing.Point(5, 105);
            lblexistHisTable.Name = "lblexistHisTable";
            lblexistHisTable.Size = new System.Drawing.Size(90, 22);
            lblexistHisTable.Text = "������ʷ��";
            lblexistHisTable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;

            ckexistHisTable.Location = new System.Drawing.Point(100, 107);
            ckexistHisTable.Name = "ckexistHisTable";
            ckexistHisTable.Properties.Caption = "��";

            lblversion.Location = new System.Drawing.Point(5, 130);
            lblversion.Name = "lblversion";
            lblversion.Size = new System.Drawing.Size(90, 22);
            lblversion.Text = "�汾��";
            lblversion.TextAlign = System.Drawing.ContentAlignment.MiddleRight;

            txtversion.Anchor = ((System.Windows.Forms.AnchorStyles)(System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left));
            txtversion.Location = new System.Drawing.Point(100, 132);
            txtversion.Name = "txtversion";
            txtversion.Size = new System.Drawing.Size(180, 22);

            lbllastupdate.Location = new System.Drawing.Point(5, 155);
            lbllastupdate.Name = "lbllastupdate";
            lbllastupdate.Size = new System.Drawing.Size(90, 22);
            lbllastupdate.Text = "�޸�����";
            lbllastupdate.TextAlign = System.Drawing.ContentAlignment.MiddleRight;

            txtlastupdate.EditValue = null;
            txtlastupdate.Location = new System.Drawing.Point(100, 157);
            txtlastupdate.Name = "txtlastupdate";
            txtlastupdate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            txtlastupdate.Properties.CalendarTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            txtlastupdate.Size = new System.Drawing.Size(180, 22);

            lblremark.Location = new System.Drawing.Point(5, 180);
            lblremark.Name = "lblremark";
            lblremark.Size = new System.Drawing.Size(90, 22);
            lblremark.Text = "˵��";
            lblremark.TextAlign = System.Drawing.ContentAlignment.MiddleRight;

            meremark.Location = new System.Drawing.Point(100, 182);
            meremark.Name = "meremark";
            meremark.Size = new System.Drawing.Size(180, 120);
            meremark.UseOptimizedRendering = true;

            groupControl1.Controls.Add(lblobjectId);
            groupControl1.Controls.Add(txtobjectId);
            groupControl1.Controls.Add(lblenglishName);
            groupControl1.Controls.Add(txtenglishName);
            groupControl1.Controls.Add(lblchineseName);
            groupControl1.Controls.Add(txtchineseName);
            groupControl1.Controls.Add(lblexistHisTable);
            groupControl1.Controls.Add(ckexistHisTable);
            groupControl1.Controls.Add(lblDB);
            groupControl1.Controls.Add(lblversion);
            groupControl1.Controls.Add(txtversion);
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

            xmltablesinfohelper = new XmlHelper(string.Format(@"XML\{0}.table", item.Name));
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
                ckexistHisTable.Checked = xnl0.Item(3).InnerText == "1" ? true : false;
                txtversion.Text = xnl0.Item(4).InnerText;
                txtlastupdate.Text = xnl0.Item(5).InnerText;
                meremark.Text = xnl0.Item(6).InnerText;
            }
            #endregion

            #region ������Ϣ�޸�
            txtobjectId.Validated += new System.EventHandler(txtValue_Validated);
            txtenglishName.Validated += new System.EventHandler(txtValue_Validated);
            txtchineseName.Validated += new System.EventHandler(txtValue_Validated);
            ckexistHisTable.Validated += new System.EventHandler(txtValue_Validated);
            txtversion.Validated += new System.EventHandler(txtValue_Validated);
            txtlastupdate.Validated += new System.EventHandler(txtValue_Validated);
            meremark.Validated += new System.EventHandler(txtValue_Validated);

            #endregion

            #region �ֶμ�����
            xtraTabPageFields.Name = "xtraTabPageFields";
            xtraTabPageFields.Text = "�ֶμ�����";

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
            repositoryItemChkIsNull = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            repositoryItemLookUpEditFields = new DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit();
            gridColumnGuid = new DevExpress.XtraGrid.Columns.GridColumn();
            gridColumnFieldName = new DevExpress.XtraGrid.Columns.GridColumn();
            gridColumnChineseName = new DevExpress.XtraGrid.Columns.GridColumn();
            gridColumnFieldType = new DevExpress.XtraGrid.Columns.GridColumn();
            gridColumnFieldInfo = new DevExpress.XtraGrid.Columns.GridColumn();
            gridColumnIsNull = new DevExpress.XtraGrid.Columns.GridColumn();
            gridColumnRemark = new DevExpress.XtraGrid.Columns.GridColumn();

            ((System.ComponentModel.ISupportInitialize)(gridControlFields)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(gridViewFields)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(repositoryItemChkIsNull)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(repositoryItemLookUpEditFields)).BeginInit();

            gridControlFields.Dock = DockStyle.Fill;
            gridControlFields.Cursor = System.Windows.Forms.Cursors.Default;
            gridControlFields.MainView = gridViewFields;
            gridControlFields.Name = "gridControlFields";
            gridControlFields.Size = new System.Drawing.Size(981, 573);
            gridControlFields.TabIndex = 13;
            gridControlFields.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            gridViewFields});
            gridControlFields.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            repositoryItemChkIsNull, repositoryItemLookUpEditFields});
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
            gridViewFields.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] { gridColumnGuid, gridColumnFieldName, gridColumnChineseName, gridColumnFieldType, gridColumnFieldInfo, gridColumnIsNull, gridColumnRemark });
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

            gridColumnIsNull.Caption = "�����";
            gridColumnIsNull.Name = "gridColumnIsNull";
            gridColumnIsNull.Visible = true;
            gridColumnIsNull.VisibleIndex = 4;
            gridColumnIsNull.FieldName = "IsNull";

            gridColumnRemark.Caption = "��ע";
            gridColumnRemark.Name = "gridColumnRemark";
            gridColumnRemark.Visible = true;
            gridColumnRemark.VisibleIndex = 5;
            gridColumnRemark.FieldName = "Remark";

            repositoryItemChkIsNull.AutoHeight = false;
            repositoryItemChkIsNull.Caption = "Check";
            repositoryItemChkIsNull.Name = "repositoryItemChkIsNull";

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
            ((System.ComponentModel.ISupportInitialize)(repositoryItemChkIsNull)).EndInit();
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

            gridViewFields.Columns["IsNull"].ColumnEdit = repositoryItemChkIsNull;
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

                tablefieldInfo.IsNull = (short) (xnl0.Item(1).InnerText == "0" ? 0 : 1);
                tablefieldInfo.Remark = xnl0.Item(2).InnerText;
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
            groupControlIndexs.Text = "����";

            gridControlIndexs = new DevExpress.XtraGrid.GridControl();
            gridViewIndexs = new DevExpress.XtraGrid.Views.Grid.GridView();
            repositoryItemConstraintType = new RepositoryItemComboBox();
            repositoryItemCheckedComboBoxIndexFields = new RepositoryItemCheckedComboBoxEdit();
            gridColumnIndexGuid = new DevExpress.XtraGrid.Columns.GridColumn();
            gridColumnIndexName = new DevExpress.XtraGrid.Columns.GridColumn();
            gridColumnIndexFieldLst = new DevExpress.XtraGrid.Columns.GridColumn();
            gridColumnConstraintType = new DevExpress.XtraGrid.Columns.GridColumn();

            ((System.ComponentModel.ISupportInitialize)(gridControlIndexs)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(gridViewIndexs)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(repositoryItemConstraintType)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(repositoryItemCheckedComboBoxIndexFields)).BeginInit();

            gridControlIndexs.Dock = DockStyle.Fill;
            gridControlIndexs.Cursor = System.Windows.Forms.Cursors.Default;
            gridControlIndexs.MainView = gridViewIndexs;
            gridControlIndexs.Name = "gridControlIndexs";
            gridControlIndexs.Size = new System.Drawing.Size(981, 573);
            gridControlIndexs.TabIndex = 13;
            gridControlIndexs.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            gridViewIndexs});
            gridControlIndexs.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            repositoryItemConstraintType, repositoryItemCheckedComboBoxIndexFields});
            gridControlIndexs.ContextMenuStrip = contextMenuStripIndex;

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
            gridViewIndexs.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] { gridColumnIndexGuid, gridColumnIndexName, gridColumnIndexFieldLst, gridColumnConstraintType });
            gridViewIndexs.CellValueChanged += new DevExpress.XtraGrid.Views.Base.CellValueChangedEventHandler(gridViewIndexs_CellValueChanged);
            gridViewIndexs.CellValueChanging += new DevExpress.XtraGrid.Views.Base.CellValueChangedEventHandler(gridViewIndexs_CellValueChanging);
            gridViewIndexs.ValidateRow += new DevExpress.XtraGrid.Views.Base.ValidateRowEventHandler(gridViewIndexs_ValidateRow);

            gridColumnIndexGuid.Caption = "GUID";
            gridColumnIndexGuid.Name = "gridColumnIndexGuid";
            gridColumnIndexGuid.Visible = true;
            gridColumnIndexGuid.VisibleIndex = 0;
            gridColumnIndexGuid.FieldName = "Gid";

            gridColumnIndexName.Caption = "������";
            gridColumnIndexName.Name = "gridColumnIndexName";
            gridColumnIndexName.Visible = true;
            gridColumnIndexName.VisibleIndex = 1;
            gridColumnIndexName.FieldName = "IndexName";

            gridColumnIndexFieldLst.Caption = "�����ֶ��б�";
            gridColumnIndexFieldLst.Name = "gridColumnIndexFieldLst";
            gridColumnIndexFieldLst.Visible = true;
            gridColumnIndexFieldLst.VisibleIndex = 2;
            gridColumnIndexFieldLst.FieldName = "IndexFieldLst";

            gridColumnConstraintType.Caption = "Լ������";
            gridColumnConstraintType.Name = "gridColumnIndexUnique";
            gridColumnConstraintType.Visible = true;
            gridColumnConstraintType.VisibleIndex = 3;
            gridColumnConstraintType.FieldName = "ConstraintType";

            repositoryItemConstraintType.AutoHeight = false;
            repositoryItemConstraintType.Buttons.AddRange(new EditorButton[] { new EditorButton(ButtonPredefines.Combo)});
            repositoryItemConstraintType.Items.AddRange(new object[] { "����", "����", "Ψһ����"});

            repositoryItemCheckedComboBoxIndexFields.NullText = "";//��ʱ��ֵ  
            repositoryItemCheckedComboBoxIndexFields.ValidateOnEnterKey = true;//�س�ȷ��  
            repositoryItemCheckedComboBoxIndexFields.TextEditStyle = TextEditStyles.Standard;//Ҫʹ�û��������룬��������ΪStandard  
            repositoryItemCheckedComboBoxIndexFields.AllowNullInput = DevExpress.Utils.DefaultBoolean.True; //����Ctrl + Delete���ѡ����� 
            repositoryItemCheckedComboBoxIndexFields.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
                new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            //�����ʾ��  
            repositoryItemCheckedComboBoxIndexFields.Items.AddRange(new DevExpress.XtraEditors.Controls.CheckedListBoxItem[] {  
                 new DevExpress.XtraEditors.Controls.CheckedListBoxItem("FieldName", "�ֶ���"),  
                 new DevExpress.XtraEditors.Controls.CheckedListBoxItem("ChineseName", "�ֶ�����"),
            });
            repositoryItemCheckedComboBoxIndexFields.ValueMember = "FieldName";
            repositoryItemCheckedComboBoxIndexFields.DisplayMember = "FieldName";
            repositoryItemCheckedComboBoxIndexFields.EditValueChanged += repositoryItemLookUpEditIndexFields_EditValueChanged;

            ((System.ComponentModel.ISupportInitialize)(repositoryItemCheckedComboBoxIndexFields)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(repositoryItemConstraintType)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(gridControlIndexs)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(gridViewIndexs)).EndInit();

            groupControlIndexs.Controls.Add(gridControlIndexs);
            gridControlIndexs.DataSource = new List<TableIndexsInfo>();

            #endregion

            splitContainer1.Panel1.Controls.Add(groupControlFields);
            splitContainer1.Panel2.Controls.Add(groupControlIndexs);

            xtraTabPageFields.Controls.Add(splitContainer1);

            #endregion

            #region ������ʼ��
            repositoryItemCheckedComboBoxIndexFields.DataSource = FieldsInfoLst;
            Dictionary<string, string> constrainttypelst = new Dictionary<string, string>();
            constrainttypelst.Add("0", "����");
            constrainttypelst.Add("1", "����");
            constrainttypelst.Add("2", "Ψһ����");
        
            gridViewIndexs.Columns["ConstraintType"].ColumnEdit = repositoryItemConstraintType;
            gridViewIndexs.Columns["IndexFieldLst"].ColumnEdit = repositoryItemCheckedComboBoxIndexFields;
            gridViewIndexs.Columns["Gid"].Visible = false;

            XmlNodeList xmlindexLst = xmltablesinfohelper.Read(string.Format("datatype/indexsinfo"));

            List<TableIndexsInfo> IndexsInfoLst = new List<TableIndexsInfo>();

            foreach (XmlNode xn1 in xmlindexLst)
            {
                TableIndexsInfo tableindexsInfo = new TableIndexsInfo();

                // ���ڵ�ת��ΪԪ�أ����ڵõ��ڵ������ֵ
                XmlElement xe = (XmlElement)xn1;
                tableindexsInfo.Gid = xe.GetAttribute("gid").ToString();

                // �õ�DataTypeInfo�ڵ�������ӽڵ�
                XmlNodeList xnl0 = xe.ChildNodes;
                tableindexsInfo.IndexName = xnl0.Item(0).InnerText;
                tableindexsInfo.IndexFieldLst = xnl0.Item(1).InnerText;
                tableindexsInfo.ConstraintType = (short)(constrainttypelst[xnl0.Item(2).InnerText].ToInt32());
                tableindexsInfo.lstInfo = new Dictionary<string, DevExpress.XtraEditors.DXErrorProvider.ErrorInfo>();
                IndexsInfoLst.Add(tableindexsInfo);
            }

            gridControlIndexs.DataSource = IndexsInfoLst;
            #endregion

            #region SQLԤ��
            xtraTabPageSQLLook.Name = "xtraTabPageSQLLook";
            xtraTabPageSQLLook.Text = "SQLԤ��";

            richEditControl = new DevExpress.XtraRichEdit.RichEditControl();
            richEditControl.ActiveViewType = DevExpress.XtraRichEdit.RichEditViewType.Simple;
            richEditControl.Dock = System.Windows.Forms.DockStyle.Fill;
            richEditControl.EnableToolTips = true;
            richEditControl.Location = new System.Drawing.Point(2, 2);
            richEditControl.Margin = new System.Windows.Forms.Padding(5, 5, 5, 5);
            richEditControl.Name = "richEditControl";
            richEditControl.Options.AutoCorrect.DetectUrls = false;
            richEditControl.Options.AutoCorrect.ReplaceTextAsYouType = false;
            richEditControl.Options.Behavior.PasteLineBreakSubstitution = DevExpress.XtraRichEdit.LineBreakSubstitute.Paragraph;
            richEditControl.Options.CopyPaste.MaintainDocumentSectionSettings = false;
            richEditControl.Options.DocumentCapabilities.Bookmarks = DevExpress.XtraRichEdit.DocumentCapability.Disabled;
            richEditControl.Options.DocumentCapabilities.CharacterStyle = DevExpress.XtraRichEdit.DocumentCapability.Disabled;
            richEditControl.Options.DocumentCapabilities.HeadersFooters = DevExpress.XtraRichEdit.DocumentCapability.Disabled;
            richEditControl.Options.DocumentCapabilities.Hyperlinks = DevExpress.XtraRichEdit.DocumentCapability.Disabled;
            richEditControl.Options.DocumentCapabilities.InlinePictures = DevExpress.XtraRichEdit.DocumentCapability.Disabled;
            richEditControl.Options.DocumentCapabilities.Numbering.Bulleted = DevExpress.XtraRichEdit.DocumentCapability.Disabled;
            richEditControl.Options.DocumentCapabilities.Numbering.MultiLevel = DevExpress.XtraRichEdit.DocumentCapability.Disabled;
            richEditControl.Options.DocumentCapabilities.Numbering.Simple = DevExpress.XtraRichEdit.DocumentCapability.Disabled;
            richEditControl.Options.DocumentCapabilities.ParagraphFormatting = DevExpress.XtraRichEdit.DocumentCapability.Disabled;
            richEditControl.Options.DocumentCapabilities.Paragraphs = DevExpress.XtraRichEdit.DocumentCapability.Enabled;
            richEditControl.Options.DocumentCapabilities.ParagraphStyle = DevExpress.XtraRichEdit.DocumentCapability.Disabled;
            richEditControl.Options.DocumentCapabilities.Sections = DevExpress.XtraRichEdit.DocumentCapability.Disabled;
            richEditControl.Options.DocumentCapabilities.Tables = DevExpress.XtraRichEdit.DocumentCapability.Disabled;
            richEditControl.Options.DocumentCapabilities.TableStyle = DevExpress.XtraRichEdit.DocumentCapability.Disabled;
            richEditControl.Options.Fields.UseCurrentCultureDateTimeFormat = false;
            richEditControl.Options.HorizontalRuler.Visibility = DevExpress.XtraRichEdit.RichEditRulerVisibility.Hidden;
            richEditControl.Options.MailMerge.KeepLastParagraph = false;
            richEditControl.Size = new System.Drawing.Size(1111, 627);
            richEditControl.TabIndex = 1;
            richEditControl.Text = "richEditControl1";
            richEditControl.Views.SimpleView.Padding = new System.Windows.Forms.Padding(55, 4, 0, 0);
            richEditControl.Views.DraftView.Padding = new System.Windows.Forms.Padding(55, 4, 0, 0);
            richEditControl.Views.SimpleView.AllowDisplayLineNumbers = true;
            richEditControl.Views.DraftView.AllowDisplayLineNumbers = true;
            richEditControl.Document.Sections[0].LineNumbering.Start = 1;
            richEditControl.Document.Sections[0].LineNumbering.CountBy = 2;
            richEditControl.Document.Sections[0].LineNumbering.RestartType = DevExpress.XtraRichEdit.API.Native.LineNumberingRestart.Continuous;
            richEditControl.Document.CharacterStyles["Line Number"].FontName = "Courier";
            richEditControl.Document.CharacterStyles["Line Number"].FontSize = 10;
            richEditControl.Document.CharacterStyles["Line Number"].ForeColor = Color.DarkGray;
            richEditControl.Document.CharacterStyles["Line Number"].Bold = true;

            richEditControl.InitializeDocument += new System.EventHandler(richEditControl_InitializeDocument);
            richEditControl.AddService(typeof(ISyntaxHighlightService), new SyntaxHighlightService(richEditControl));
            IRichEditCommandFactoryService commandFactory = richEditControl.GetService<IRichEditCommandFactoryService>();
            CustomRichEditCommandFactoryService newCommandFactory = new CustomRichEditCommandFactoryService(commandFactory);
            richEditControl.RemoveService(typeof(IRichEditCommandFactoryService));
            richEditControl.AddService(typeof(IRichEditCommandFactoryService), newCommandFactory);

            IDocumentImportManagerService importManager = richEditControl.GetService<IDocumentImportManagerService>();
            importManager.UnregisterAllImporters();
            importManager.RegisterImporter(new PlainTextDocumentImporter());
            importManager.RegisterImporter(new SourcesCodeDocumentImporter());

            IDocumentExportManagerService exportManager = richEditControl.GetService<IDocumentExportManagerService>();
            exportManager.UnregisterAllExporters();
            exportManager.RegisterExporter(new PlainTextDocumentExporter());
            exportManager.RegisterExporter(new SourcesCodeDocumentExporter());


            xtraTabControl1.SelectedPageChanged += (sender1, e1) =>
            {
                if (FileUtil.IsExistFile("SQL.tmp"))
                {
                    FileUtil.DeleteFile("SQL.tmp");
                }
                FileUtil.CreateFile("SQL.tmp");

                #region ������Ŀ���Ի�ȡ��������
                XmlHelper xmlprojectthelper = new XmlHelper(@"XML\project.xml");
                XmlNodeList xmlprejectNodeLst = xmlprojectthelper.Read("datatype");

                if (xmlprejectNodeLst.Count == 0)
                    return;

                XmlNode xn1project = xmlprejectNodeLst[0];

                // ���ڵ�ת��ΪԪ�أ����ڵõ��ڵ������ֵ
                XmlElement xeproject = (XmlElement)xn1project;

                // �õ�DataTypeInfo�ڵ�������ӽڵ�
                XmlNodeList xnl0project = xeproject.ChildNodes;

                string dbType = xnl0project.Item(4).InnerText;
                #endregion

                #region �ȶ�ȡdatatype.xml �ڶ�ȡdefaulttype.xml Ȼ��Linq ��ѯ���浽�����ֵ�dic��
                XmlHelper xmldatatypehelper = new XmlHelper(@"XML\datatype.xml");
                XmlNodeList xmldatatypeNodeLst = xmldatatypehelper.Read("datatype");
                List<DataTypeInfo> dataTypeInfoList = new List<DataTypeInfo>();
                foreach (XmlNode xn1 in xmldatatypeNodeLst)
                {
                    DataTypeInfo dataTypeInfo = new DataTypeInfo();
                    // ���ڵ�ת��ΪԪ�أ����ڵõ��ڵ������ֵ
                    XmlElement xe = (XmlElement)xn1;
                    // �õ�Type��ISBN�������Ե�����ֵ
                    dataTypeInfo.Gid = xe.GetAttribute("gid").ToString();

                    // �õ�DataTypeInfo�ڵ�������ӽڵ�
                    XmlNodeList xnl0 = xe.ChildNodes;
                    dataTypeInfo.Name = xnl0.Item(0).InnerText;
                    dataTypeInfo.StdType = xnl0.Item(2).InnerText;
                    dataTypeInfo.Length = xnl0.Item(3).InnerText;
                    dataTypeInfo.Precision = xnl0.Item(4).InnerText;

                    dataTypeInfoList.Add(dataTypeInfo);
                }

                XmlHelper defaulttypexmlHelper = new XmlHelper(@"XML\defaulttype.xml");
                XmlNodeList defaulttypexmlNodeLst = defaulttypexmlHelper.Read("datatype");
                Dictionary<string, string> dict = new Dictionary<string, string>();
                foreach (var dataTypeInfo in dataTypeInfoList)
                {
                    foreach (XmlNode xn1 in defaulttypexmlNodeLst)
                    {
                        // ���ڵ�ת��ΪԪ�أ����ڵõ��ڵ������ֵ
                        XmlElement xe = (XmlElement)xn1;
                        // �õ�DataTypeInfo�ڵ�������ӽڵ�
                        XmlNodeList xnl0 = xe.ChildNodes;
                        string value = string.Empty;
                        if (dbType == "Oracle")
                            value = xnl0.Item(2).InnerText;
                        else if (dbType == "Mysql")
                            value = xnl0.Item(3).InnerText;
                        else if (dbType == "DB2")
                            value = xnl0.Item(4).InnerText;
                        else if (dbType == "SqlServer")
                            value = xnl0.Item(5).InnerText;
                        else if (dbType == "Sqlite")
                            value = xnl0.Item(6).InnerText;
                        else if (dbType == "Access")
                            value = xnl0.Item(7).InnerText;

                        // �ҵ�ƥ���¼
                        if (dataTypeInfo.StdType == xnl0.Item(0).InnerText)
                        {
                            if (value.Contains("$L"))
                            {
                                if (String.Empty == dataTypeInfo.Length)
                                    value = value.Replace("$L", "0");
                                else
                                    value = value.Replace("$L", dataTypeInfo.Length);

                            }
                            if (value.Contains("$P"))
                            {
                                if (String.Empty == dataTypeInfo.Precision)
                                    value = value.Replace("$P", "0");
                                else
                                    value = value.Replace("$P", dataTypeInfo.Precision);
                            }
                            dict.Add(dataTypeInfo.Name, value);
                        }
                    }
                }
                #endregion

                FileUtil.AppendText(@"SQL.tmp", JCodes.Framework.Common.Proj.SqlOperate.initTableInfo(dbType, tableGroup[txtenglishName.Text] + txtenglishName.Text, txtchineseName.Text, ckexistHisTable.Checked, FieldsInfoLst, IndexsInfoLst, dict), Encoding.Default);

                richEditControl.LoadDocument(@"SQL.tmp", DocumentFormat.PlainText);
                richEditControl.ReplaceService<ISyntaxHighlightService>(new CustomSyntaxHighlightService(richEditControl.Document));//������ʾ  
            };
            
            xtraTabPageSQLLook.Controls.Add(richEditControl);
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
            ((System.ComponentModel.ISupportInitialize)(txtversion.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(txtlastupdate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(ckexistHisTable.Properties)).EndInit();
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
                case "ckexistHisTable":
                    result = "datatype/basicinfo/item[@gid=\"" + strBasicInfoGuid + "\"]/existhistable";
                    break;
                case "txtversion":
                    result = "datatype/basicinfo/item[@gid=\"" + strBasicInfoGuid + "\"]/version";
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

            xmltablesinfohelper.InsertElement("datatype/fieldsinfo", "item", "gid", tableFieldsInfo.Gid, string.Format(xmlfieldsinfomodel, string.Empty, Const.Num_Zero, string.Empty));
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
                case "�����":
                    idx = 1;
                    break;
                case "�޸�����":
                    idx = 2;
                    break;
            }

            if (idx == -1)
                return;

            // 20171106 ���⴦�� ���ڹ�ѡ��0��ʾ����ѡfalse��1��ʾ��ѡtrue
            if (1 == idx)
                xmlNodeLst.Item(idx).InnerText = Convert.ToBoolean(e.Value) ? "1" : "0";
            else
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
            var tableIndexsInfo = new TableIndexsInfo();
            tableIndexsInfo.Gid = System.Guid.NewGuid().ToString();
            tableIndexsInfo.lstInfo = new Dictionary<string, DevExpress.XtraEditors.DXErrorProvider.ErrorInfo>();

            xmltablesinfohelper.InsertElement("datatype/indexsinfo", "item", "guid", tableIndexsInfo.Gid, string.Format(xmlindexsinfomodel, string.Empty, string.Empty, string.Empty, string.Empty, string.Empty));
            xmltablesinfohelper.Save(false);

            (gridViewIndexs.DataSource as List<TableIndexsInfo>).Add(tableIndexsInfo);
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
            if (gridViewIndexs.GetFocusedRow() as TableIndexsInfo == null || string.IsNullOrEmpty((gridViewIndexs.GetFocusedRow() as TableIndexsInfo).Gid))
                return;

            xmltablesinfohelper.DeleteByPathNode("datatype/indexsinfo/item[@gid=\"" + gridViewIndexs.GetRowCellDisplayText(gridViewIndexs.FocusedRowHandle, "Gid") + "\"]");
            xmltablesinfohelper.Save(false);

            (gridViewIndexs.DataSource as List<TableIndexsInfo>).RemoveAt(gridViewIndexs.FocusedRowHandle);
            gridViewIndexs.RefreshData();
        }

        /// <summary>  
        /// ʵ���û���������  
        /// </summary>  
        /// <param name="sender"></param>  
        /// <param name="e"></param>  
        private void repositoryItemLookUpEditIndexFields_EditValueChanged(object sender, EventArgs e)
        {
            DevExpress.XtraEditors.CheckedComboBoxEdit edit = sender as DevExpress.XtraEditors.CheckedComboBoxEdit;
            if (edit.EditValue != null)
            {
                XmlNodeList xmlNodeLst = xmltablesinfohelper.Read("datatype/indexsinfo/item[@gid=\"" + (gridViewIndexs.GetFocusedRow() as TableIndexsInfo).Gid + "\"]");
                xmlNodeLst.Item(1).InnerText = edit.EditValue.ToString();
                xmltablesinfohelper.Save(false);
            }
        }

        private void gridViewIndexs_CellValueChanged(object sender, DevExpress.XtraGrid.Views.Base.CellValueChangedEventArgs e)
        {
            XmlNodeList xmlNodeLst = xmltablesinfohelper.Read("datatype/indexsinfo/item[@gid=\"" + tmptableIndexsInfo.Gid + "\"]");
            Int32 idx = -1;

            switch (e.Column.ToString())
            {
                case "������":
                    idx = 0;
                    break;
                case "�����ֶ��б�":
                    idx = 1;
                    break;
                case "Լ������":
                    idx = 2;
                    break;
            }

            if (idx == -1)
                return;

            if (idx == 2)
            {
                Dictionary<string, string> constrainttypelst = new Dictionary<string, string>();
                constrainttypelst.Add("����", "0");
                constrainttypelst.Add("����", "1");
                constrainttypelst.Add("Ψһ����", "2");

                xmlNodeLst.Item(idx).InnerText = constrainttypelst[e.Value.ToString()];
            }
            else
                xmlNodeLst.Item(idx).InnerText = e.Value.ToString();

            xmltablesinfohelper.Save(false);

            tmptableIndexsInfo = null;
        }

        private void gridViewIndexs_CellValueChanging(object sender, DevExpress.XtraGrid.Views.Base.CellValueChangedEventArgs e)
        {
            // 20170824 ��������һ�п������ټ�������
            if (string.IsNullOrEmpty((gridViewIndexs.GetFocusedRow() as TableIndexsInfo).Gid))
                return;

            tmptableIndexsInfo = gridViewIndexs.GetRow(e.RowHandle) as TableIndexsInfo;
        }

        private void gridViewIndexs_ValidateRow(object sender, DevExpress.XtraGrid.Views.Base.ValidateRowEventArgs e)
        {
            // ��ѯ�Ƿ����2����ֵ������
            List<TableIndexsInfo> lsttableIndexsInfo = gridViewIndexs.DataSource as List<TableIndexsInfo>;

            // �����ظ���Name��ֵ && ���ԭ�ȵĴ�����Ϣ

            List<String> tmpName = new List<string>();
            List<String> lstName = new List<string>();
            foreach (TableIndexsInfo tableIndexsInfo in lsttableIndexsInfo)
            {
                if (string.IsNullOrEmpty(tableIndexsInfo.Gid))
                    continue;

                if (lstName.Contains(tableIndexsInfo.IndexName))
                {
                    tmpName.Add(tableIndexsInfo.IndexName);
                }

                lstName.Add(tableIndexsInfo.IndexName);

                tableIndexsInfo.lstInfo.Clear();
            }

            foreach (TableIndexsInfo tableIndexsInfo in lsttableIndexsInfo)
            {
                if (string.IsNullOrEmpty(tableIndexsInfo.Gid))
                    continue;

                // �ж��ظ��� ������
                if (tmpName.Contains(tableIndexsInfo.IndexName))
                {
                    if (tableIndexsInfo.lstInfo.ContainsKey("IndexName"))
                    {
                        tableIndexsInfo.lstInfo["IndexName"].ErrorText = tableIndexsInfo.lstInfo["IndexName"].ErrorText + "\r\nһ�����в���������ظ���������";
                        tableIndexsInfo.lstInfo["IndexName"].ErrorType = tableIndexsInfo.lstInfo["IndexName"].ErrorType >= DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical ? tableIndexsInfo.lstInfo["IndexName"].ErrorType : DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical;
                    }
                    else
                    {
                        tableIndexsInfo.lstInfo.Add("IndexName", new DevExpress.XtraEditors.DXErrorProvider.ErrorInfo("һ�����в���������ظ���������", DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical));
                    }
                }

                // �ж��������Ƿ�Ϊ��
                if (string.IsNullOrEmpty(tableIndexsInfo.IndexName))
                {
                    if (tableIndexsInfo.lstInfo.ContainsKey("IndexName"))
                    {
                        tableIndexsInfo.lstInfo["IndexName"].ErrorText = tableIndexsInfo.lstInfo["IndexName"].ErrorText + "\r\n����������Ϊ��";
                        tableIndexsInfo.lstInfo["IndexName"].ErrorType = tableIndexsInfo.lstInfo["IndexName"].ErrorType >= DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical ? tableIndexsInfo.lstInfo["IndexName"].ErrorType : DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical;
                    }
                    else
                    {
                        tableIndexsInfo.lstInfo.Add("IndexName", new DevExpress.XtraEditors.DXErrorProvider.ErrorInfo("����������Ϊ��", DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical));
                    }
                }

                // �ж������ֶ��б��Ƿ�Ϊ��
                if (string.IsNullOrEmpty(tableIndexsInfo.IndexFieldLst))
                {
                    if (tableIndexsInfo.lstInfo.ContainsKey("IndexFieldLst"))
                    {
                        tableIndexsInfo.lstInfo["IndexFieldLst"].ErrorText = tableIndexsInfo.lstInfo["IndexFieldLst"].ErrorText + "\r\n�����ֶ��б���Ϊ��";
                        tableIndexsInfo.lstInfo["IndexFieldLst"].ErrorType = tableIndexsInfo.lstInfo["IndexFieldLst"].ErrorType >= DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical ? tableIndexsInfo.lstInfo["IndexFieldLst"].ErrorType : DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical;
                    }
                    else
                    {
                        tableIndexsInfo.lstInfo.Add("IndexFieldLst", new DevExpress.XtraEditors.DXErrorProvider.ErrorInfo("�����ֶ��б���Ϊ��", DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical));
                    }
                }
            }
        }

    }

    #region SyntaxHighlightService
    public class SyntaxHighlightService : ISyntaxHighlightService
    {
        #region Fields
        readonly DevExpress.XtraRichEdit.RichEditControl editor;
        readonly SyntaxHighlightInfo syntaxHighlightInfo;
        #endregion


        public SyntaxHighlightService(DevExpress.XtraRichEdit.RichEditControl editor)
        {
            this.editor = editor;
            this.syntaxHighlightInfo = new SyntaxHighlightInfo();
        }


        #region ISyntaxHighlightService Members
        public void ForceExecute()
        {
            Execute();
        }
        public void Execute()
        {
            DevExpress.CodeParser.TokenCollection tokens = Parse(editor.Text);
            HighlightSyntax(tokens);
        }
        #endregion
        DevExpress.CodeParser.TokenCollection Parse(string code)
        {
            if (string.IsNullOrEmpty(code))
                return null;
            DevExpress.CodeParser.ITokenCategoryHelper tokenizer = CreateTokenizer();
            if (tokenizer == null)
                return new DevExpress.CodeParser.TokenCollection();
            return tokenizer.GetTokens(code);
        }

        DevExpress.CodeParser.ITokenCategoryHelper CreateTokenizer()
        {
            string fileName = editor.Options.DocumentSaveOptions.CurrentFileName;
            if (String.IsNullOrEmpty(fileName))
                return null;
            DevExpress.CodeParser.ITokenCategoryHelper result = DevExpress.CodeParser.TokenCategoryHelperFactory.CreateHelperForFileExtensions(Path.GetExtension(fileName));
            if (result != null)
                return result;
            else
                return null;
        }

        void HighlightSyntax(DevExpress.CodeParser.TokenCollection tokens)
        {
            if (tokens == null || tokens.Count == 0)
                return;
            Document document = editor.Document;
            CharacterProperties cp = document.BeginUpdateCharacters(0, 1);

            List<SyntaxHighlightToken> syntaxTokens = new List<SyntaxHighlightToken>(tokens.Count);
            foreach (DevExpress.CodeParser.Token token in tokens)
            {
                HighlightCategorizedToken((DevExpress.CodeParser.CategorizedToken)token, syntaxTokens);
            }
            document.ApplySyntaxHighlight(syntaxTokens);
            document.EndUpdateCharacters(cp);
        }
        void HighlightCategorizedToken(DevExpress.CodeParser.CategorizedToken token, List<SyntaxHighlightToken> syntaxTokens)
        {
            Color backColor = editor.ActiveView.BackColor;
            SyntaxHighlightProperties highlightProperties = syntaxHighlightInfo.CalculateTokenCategoryHighlight(token.Category);
            SyntaxHighlightToken syntaxToken = SetTokenColor(token, highlightProperties, backColor);
            if (syntaxToken != null)
                syntaxTokens.Add(syntaxToken);
        }
        SyntaxHighlightToken SetTokenColor(DevExpress.CodeParser.Token token, SyntaxHighlightProperties foreColor, Color backColor)
        {
            if (editor.Document.Paragraphs.Count < token.Range.Start.Line)
                return null;
            int paragraphStart = DocumentHelper.GetParagraphStart(editor.Document.Paragraphs[token.Range.Start.Line - 1]);
            int tokenStart = paragraphStart + token.Range.Start.Offset - 1;
            if (token.Range.End.Line != token.Range.Start.Line)
                paragraphStart = DocumentHelper.GetParagraphStart(editor.Document.Paragraphs[token.Range.End.Line - 1]);

            int tokenEnd = paragraphStart + token.Range.End.Offset - 1;
            System.Diagnostics.Debug.Assert(tokenEnd > tokenStart);
            return new SyntaxHighlightToken(tokenStart, tokenEnd - tokenStart, foreColor);
        }
    }
    #endregion

    #region SyntaxHighlightInfo
    public class SyntaxHighlightInfo
    {
        readonly Dictionary<DevExpress.CodeParser.TokenCategory, SyntaxHighlightProperties> properties;

        public SyntaxHighlightInfo()
        {
            this.properties = new Dictionary<DevExpress.CodeParser.TokenCategory, SyntaxHighlightProperties>();
            Reset();
        }
        public void Reset()
        {
            properties.Clear();
            Add(DevExpress.CodeParser.TokenCategory.Text, DXColor.Black);
            Add(DevExpress.CodeParser.TokenCategory.Keyword, DXColor.Blue);
            Add(DevExpress.CodeParser.TokenCategory.String, DXColor.Brown);
            Add(DevExpress.CodeParser.TokenCategory.Comment, DXColor.Green);
            Add(DevExpress.CodeParser.TokenCategory.Identifier, DXColor.Black);
            Add(DevExpress.CodeParser.TokenCategory.PreprocessorKeyword, DXColor.Blue);
            Add(DevExpress.CodeParser.TokenCategory.Number, DXColor.Red);
            Add(DevExpress.CodeParser.TokenCategory.Operator, DXColor.Black);
            Add(DevExpress.CodeParser.TokenCategory.Unknown, DXColor.Black);
            Add(DevExpress.CodeParser.TokenCategory.XmlComment, DXColor.Gray);

            Add(DevExpress.CodeParser.TokenCategory.CssComment, DXColor.Green);
            Add(DevExpress.CodeParser.TokenCategory.CssKeyword, DXColor.Brown);
            Add(DevExpress.CodeParser.TokenCategory.CssPropertyName, DXColor.Red);
            Add(DevExpress.CodeParser.TokenCategory.CssPropertyValue, DXColor.Blue);
            Add(DevExpress.CodeParser.TokenCategory.CssSelector, DXColor.Blue);
            Add(DevExpress.CodeParser.TokenCategory.CssStringValue, DXColor.Blue);

            Add(DevExpress.CodeParser.TokenCategory.HtmlAttributeName, DXColor.Red);
            Add(DevExpress.CodeParser.TokenCategory.HtmlAttributeValue, DXColor.Blue);
            Add(DevExpress.CodeParser.TokenCategory.HtmlComment, DXColor.Green);
            Add(DevExpress.CodeParser.TokenCategory.HtmlElementName, DXColor.Brown);
            Add(DevExpress.CodeParser.TokenCategory.HtmlEntity, DXColor.Gray);
            Add(DevExpress.CodeParser.TokenCategory.HtmlOperator, DXColor.Black);
            Add(DevExpress.CodeParser.TokenCategory.HtmlServerSideScript, DXColor.Black);
            Add(DevExpress.CodeParser.TokenCategory.HtmlString, DXColor.Blue);
            Add(DevExpress.CodeParser.TokenCategory.HtmlTagDelimiter, DXColor.Blue);
        }
        void Add(DevExpress.CodeParser.TokenCategory category, Color foreColor)
        {
            SyntaxHighlightProperties item = new SyntaxHighlightProperties();
            item.ForeColor = foreColor;
            properties.Add(category, item);
        }

        public SyntaxHighlightProperties CalculateTokenCategoryHighlight(DevExpress.CodeParser.TokenCategory category)
        {
            SyntaxHighlightProperties result = null;
            if (properties.TryGetValue(category, out result))
                return result;
            else
                return properties[DevExpress.CodeParser.TokenCategory.Text];
        }
    }
    #endregion

    #region CustomRichEditCommandFactoryService
    public class CustomRichEditCommandFactoryService : IRichEditCommandFactoryService
    {
        readonly IRichEditCommandFactoryService service;

        public CustomRichEditCommandFactoryService(IRichEditCommandFactoryService service)
        {
            Guard.ArgumentNotNull(service, "service");
            this.service = service;
        }

        #region IRichEditCommandFactoryService Members
        RichEditCommand IRichEditCommandFactoryService.CreateCommand(RichEditCommandId id)
        {
            if (id.Equals(RichEditCommandId.InsertColumnBreak) || id.Equals(RichEditCommandId.InsertLineBreak) || id.Equals(RichEditCommandId.InsertPageBreak))
                return service.CreateCommand(RichEditCommandId.InsertParagraph);
            return service.CreateCommand(id);
        }
        #endregion
    }
    #endregion

    public static class SourceCodeDocumentFormat
    {
        public static readonly DocumentFormat Id = new DocumentFormat(1325);
    }
    public class SourcesCodeDocumentImporter : PlainTextDocumentImporter
    {
        internal static readonly FileDialogFilter filter = new FileDialogFilter("Source Files", new string[] { "cs", "vb", "html", "htm", "js", "xml", "css" });
        public override FileDialogFilter Filter { get { return filter; } }
        public override DocumentFormat Format { get { return SourceCodeDocumentFormat.Id; } }
    }
    public class SourcesCodeDocumentExporter : PlainTextDocumentExporter
    {
        public override FileDialogFilter Filter { get { return SourcesCodeDocumentImporter.filter; } }
        public override DocumentFormat Format { get { return SourceCodeDocumentFormat.Id; } }
    }
}
