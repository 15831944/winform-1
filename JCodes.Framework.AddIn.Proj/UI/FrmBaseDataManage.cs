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
using System.Data;
using JCodes.Framework.jCodesenum.BaseEnum;
using JCodes.Framework.Common.Office;
using System.Xml.Linq;
using JCodes.Framework.Common.Extension;

namespace JCodes.Framework.AddIn.Proj
{
    public partial class FrmBaseDataManage : BaseDock
    {
        #region �ؼ�����
        private DevExpress.XtraRichEdit.RichEditControl richEditControl;
        private NavBarControl navBar;
        private NavBarGroup selectedGroup;
        private NavBarItemLink selectedLink;
        private UserControl control;
        private XtraTabControl xtraTabControl1;
        private XtraTabPage xtraTabPageFields;
        private XtraTabPage xtraTabPageSQLLook;
        private DevExpress.XtraGrid.GridControl gridControlFields;
        private DevExpress.XtraGrid.Views.Grid.GridView gridViewFields;
        private DataTable dt = null;
        #endregion

        #region ��ȡxml�����ļ�
        private XmlHelper xmltableshelper = new XmlHelper(@"XML\tables.xml");
        
        #endregion

        #region ���ݻ���
        private List<DictInfo> dictTypeInfoList = null;
        private Dictionary<string, string> guidGroup = new Dictionary<string, string>();
        private Dictionary<string, string> tableGroup = new Dictionary<string, string>();

        #endregion

        public FrmBaseDataManage()
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
                // ���ڵ�ת��ΪԪ�أ����ڵõ��ڵ������ֵ
                XmlElement xe = (XmlElement)xn1;

                // ���õ�����ڵ� basicdata Ϊ1ʱ�ż�������
                if (string.Equals(xe.GetAttribute("basicdata").ToString(), Const.Num_One.ToString()))
                {
                    TablesTypeInfo tablesTypeInfo = new TablesTypeInfo();
                    // �õ�Type��ISBN�������Ե�����ֵ
                    tablesTypeInfo.Gid = xe.GetAttribute("gid").ToString();
                    tablesTypeInfo.CreatorTime = Convert.ToDateTime(xe.GetAttribute("creatortime"));
                    tablesTypeInfo.Name = xe.GetAttribute("name").ToString();

                    // ��ȡ�ַ����е�Ӣ����ĸ [a-zA-Z]+
                    string GroupEnglishName = CRegex.GetText(tablesTypeInfo.Name, "[a-zA-Z]+", 0);

                    guidGroup.Add(tablesTypeInfo.Gid, string.Format("{0}{1}_", Const.TablePre, GroupEnglishName));
                    tablesTypeInfoList.Add(tablesTypeInfo);
                }
            }

            XmlNodeList xmlNodeLst2 = xmltableshelper.Read("datatype/dataitem");
            List<TablesInfo> tablesInfoList = new List<TablesInfo>();
            foreach (XmlNode xn1 in xmlNodeLst2)
            {
                // ���ڵ�ת��ΪԪ�أ����ڵõ��ڵ������ֵ
                XmlElement xe = (XmlElement)xn1;

                // �õ�ConstantInfo�ڵ�������ӽڵ�
                XmlNodeList xnl0 = xe.ChildNodes;

                // ���õ�����ڵ� BasicdataPath ��Ϊ��ʱ�ż�������
                if (!string.IsNullOrEmpty(xnl0.Item(5).InnerText))
                {
                    TablesInfo tablesInfo = new TablesInfo();
                    tablesInfo.Gid = xe.GetAttribute("gid").ToString();
                    tablesInfo.Name = xnl0.Item(0).InnerText;
                    tablesInfo.ChineseName = xnl0.Item(1).InnerText;
                    tablesInfo.FunctionId = xnl0.Item(2).InnerText.ToInt32();
                    tablesInfo.TypeGuid = xnl0.Item(3).InnerText;
                    tablesInfo.SavePath = xnl0.Item(4).InnerText;
                    tablesInfo.BasicdataPath = xnl0.Item(5).InnerText;

                    tableGroup.Add(tablesInfo.Name, guidGroup[tablesInfo.TypeGuid]);
                    tablesInfoList.Add(tablesInfo);
                }
               
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
            FrmEditBasicDataGroupName dlg = new FrmEditBasicDataGroupName();
            if (dlg.ShowDialog() == DialogResult.OK)
            {
                NavBarGroup standardGroup = navBar.Groups.Add();
                standardGroup.Tag = dlg.Id;
                standardGroup.Caption = dlg.strGroupName;
            }
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

            var objXmlDoc = xmltableshelper.GetXmlDoc();

            // �޸Ĵ�ķ���basicdata
            objXmlDoc.SelectSingleNode(string.Format("datatype/tabletype/item[@gid=\"{0}\"]", selectedGroup.Tag)).Attributes["basicdata"].InnerText = "0";

            // ��ɾ���ӽڵ㱾��
            XmlNodeList nodelst = objXmlDoc.SelectNodes(string.Format("datatype/dataitem/item[typeguid=\"{0}\"]/basicdatapath", selectedGroup.Tag));

            foreach (XmlNode node in nodelst)
            {
                if (!String.IsNullOrEmpty(node.InnerText))
                {
                    // ɾ��table�ļ�
                    if (FileUtil.IsExistFile(node.InnerText))
                    {
                        FileUtil.DeleteFile(node.InnerText);
                    }

                    node.InnerText = "";
                }
            }

            navBar.Groups.Remove(selectedGroup);

            xmltableshelper.Save(false);

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


            FrmEditBasicDataItemName dlg = new FrmEditBasicDataItemName();

            dlg.strGuid = selectedGroup.Tag.ToString();

            if (dlg.ShowDialog() == DialogResult.OK)
            {
                NavBarItem item = new NavBarItem();
                item.Caption = dlg.strItemName;
                item.Tag = dlg.Id;
                item.Name = dlg.strItemName.Split(' ')[1].TrimEnd(')');
                item.Hint = dlg.strItemName.Split('(')[1].Split(' ')[0];
                item.LinkClicked += Item_LinkClicked;

                navBar.Items.Add(item);
                selectedGroup.ItemLinks.Add(item);

                if (!selectedGroup.Expanded)
                    selectedGroup.Expanded = true;
            }

            selectedGroup = null;
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

            xmltableshelper.Replace(string.Format("datatype/dataitem/item[@gid=\"{0}\"]/basicdatapath", selectedLink.Item.Tag), string.Empty);
            xmltableshelper.Save(false);
            // ɾ��table�ļ�
            if (FileUtil.IsExistFile(string.Format(@"XML\{0}.basicdata", selectedLink.Item.Name)))
            {
                FileUtil.DeleteFile(string.Format(@"XML\{0}.basicdata", selectedLink.Item.Name));
            }

            // ����ɾ��Ԫ��
            selectedGroup.ItemLinks.Remove(selectedLink);

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

            dt = new DataTable();
            Dictionary<string, TableFieldsInfo> dic = new Dictionary<string, TableFieldsInfo>();
            dt.Columns.Add("gid");
            TableFieldsInfo f = new TableFieldsInfo();
            f.FieldName = "gid";
            f.ChineseName = "GUID";
            f.DataType = string.Empty;
            f.DictNo = 0;
            f.FieldInfo = string.Empty;
            f.IsNull = 0;
            f.Remark = string.Empty;
            dic.Add("gid", f);
            // ���Ӣ�ı�ͷ

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

            XmlHelper xmltablefieldhelper = new XmlHelper(string.Format(@"XML\{0}.table", item.Name));
            XmlNodeList xmlfieldsLst = xmltablefieldhelper.Read(string.Format("datatype/fieldsinfo"));
            foreach (XmlNode xn1 in xmlfieldsLst)
            {
                // ���ڵ�ת��ΪԪ�أ����ڵõ��ڵ������ֵ
                XmlElement xe = (XmlElement)xn1;
                //tablefieldInfo.GUID = xe.GetAttribute("guid").ToString();
                // �õ�DataTypeInfo�ڵ�������ӽڵ�
                XmlNodeList xnl0 = xe.ChildNodes;

                dt.Columns.Add(xnl0.Item(0).InnerText);

                TableFieldsInfo field = new TableFieldsInfo();
                field.FieldName = xnl0.Item(0).InnerText;
                for (Int32 i = 0; i < stdFieldInfoList.Count; i++)
                {
                    if (string.Equals(stdFieldInfoList[i].Name, xnl0.Item(0).InnerText))
                    {
                        field.FieldName = stdFieldInfoList[i].Name;
                        field.ChineseName = stdFieldInfoList[i].ChineseName;
                        field.DataType = stdFieldInfoList[i].DataType;
                        field.DictNo = stdFieldInfoList[i].DictNo;
                        field.FieldInfo = stdFieldInfoList[i].DictNameLst;
                        break;
                    }
                }

                field.IsNull = (short)( xnl0.Item(1).InnerText == "0" ? 0 : 1);
                field.Remark = xnl0.Item(2).InnerText;

                dic.Add(xnl0.Item(0).InnerText, field);
            }

            tabbedView.BeginUpdate();
            control = new UserControl();
            xtraTabControl1 = new XtraTabControl(); ;
            xtraTabPageFields = new XtraTabPage();
            xtraTabPageSQLLook = new XtraTabPage();

            ((System.ComponentModel.ISupportInitialize)(xtraTabControl1)).BeginInit();
            xtraTabControl1.SuspendLayout();

            xtraTabControl1.Dock = DockStyle.Fill;
            xtraTabControl1.HeaderLocation = DevExpress.XtraTab.TabHeaderLocation.Bottom;
            xtraTabControl1.Location = new System.Drawing.Point(0, 0);
            xtraTabControl1.Name = "xtraTabControl1";
            xtraTabControl1.SelectedTabPage = xtraTabPageFields;
            xtraTabControl1.Size = new System.Drawing.Size(1206, 556);
            xtraTabControl1.TabIndex = 0;
            xtraTabControl1.TabPages.AddRange(new XtraTabPage[] { xtraTabPageFields, xtraTabPageSQLLook });
 
            #region �ֶμ�����
            xtraTabPageFields.Name = "xtraTabPageFields";
            xtraTabPageFields.Text = "�ֶμ�����";

            #region �ֶα��

            gridControlFields = new DevExpress.XtraGrid.GridControl();
            gridViewFields = new DevExpress.XtraGrid.Views.Grid.GridView();

            ((System.ComponentModel.ISupportInitialize)(gridControlFields)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(gridViewFields)).BeginInit();

            gridControlFields.Dock = DockStyle.Fill;
            gridControlFields.Cursor = System.Windows.Forms.Cursors.Default;
            gridControlFields.MainView = gridViewFields;
            gridControlFields.Name = "gridControlFields";
            gridControlFields.Size = new System.Drawing.Size(981, 573);
            gridControlFields.TabIndex = 13;
            gridControlFields.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            gridViewFields});
            gridControlFields.ContextMenuStrip = contextMenuStripFields;

            gridViewFields.Appearance.FocusedRow.BackColor = System.Drawing.Color.LightCyan;
            gridViewFields.Appearance.FocusedRow.BackColor2 = System.Drawing.Color.LightCyan;
            gridViewFields.Appearance.FocusedRow.Options.UseBackColor = true;
            gridViewFields.Appearance.FocusedRow.Options.UseForeColor = true;
            gridViewFields.GridControl = gridControlFields;
            gridViewFields.Name = string.Format(@"XML\{0}.basicdata", item.Name);
            gridViewFields.ViewCaption = item.Hint;
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
            //gridViewFields.OptionsView.NewItemRowPosition = DevExpress.XtraGrid.Views.Grid.NewItemRowPosition.Bottom;  
            gridViewFields.CellValueChanged += new DevExpress.XtraGrid.Views.Base.CellValueChangedEventHandler(gridViewFields_CellValueChanged);
            gridViewFields.ValidateRow += new DevExpress.XtraGrid.Views.Base.ValidateRowEventHandler(gridViewFields_ValidateRow);

            #region ��ʼ�������ֶ�����
            Int32 idx = 0;
            foreach (var key in dic.Keys)
            {
                DevExpress.XtraGrid.Columns.GridColumn gc = new DevExpress.XtraGrid.Columns.GridColumn();
                gc.Caption = dic[key].ChineseName;
                gc.Name = key;
                gc.Visible = true;
                gc.VisibleIndex = idx++;
                gc.FieldName = key;
                
                if (string.Equals(dic[key].FieldName, "gid"))
                {
                    gc.Visible = false;
                }

                // ������������ֵ䣬�������ֵ�Ϊ����(FieldType����Number)����Ϊ�ַ���(FieldTypeΪChar)
                if (dic[key].DictNo > 0 && (dic[key].DataType.Contains("Number") || string.Equals(dic[key].DataType, "Char")))
                {
                    RepositoryItemLookUpEdit rilu = new RepositoryItemLookUpEdit();
                    ((System.ComponentModel.ISupportInitialize)(rilu)).BeginInit();
                    rilu.PopupWidth = 400; //��������  
                    rilu.NullText = "";//��ʱ��ֵ  
                    rilu.DropDownRows = 10;//����������  
                    rilu.ImmediatePopup = true;//����ֵ�Ƿ����ϵ�������  
                    rilu.ValidateOnEnterKey = true;//�س�ȷ��  
                    rilu.SearchMode = SearchMode.AutoFilter;//�Զ����˵�����Ҫ��ʾ�����ݣ����Ը�����Ҫ�仯  
                    rilu.TextEditStyle = TextEditStyles.Standard;//Ҫʹ�û��������룬��������ΪStandard  
                    rilu.AllowNullInput = DevExpress.Utils.DefaultBoolean.True; //����Ctrl + Delete���ѡ����� 
                    rilu.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] { new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
                    //�����ʾ��  
                    rilu.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] { new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Value", "�����ֵ�ֵ"), new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Text", "�����ֵ�����") });
                    ((System.ComponentModel.ISupportInitialize)(rilu)).EndInit();

                    rilu.ValueMember = "Value";
                    rilu.DisplayMember = "Text";
                    // TODO
                    //rilu.EditValueChanged += rilu_EditValueChanged;

                    string[] dicdata = dic[key].FieldInfo.Split(Const.Comma.ToCharArray());
                    List<CListItem> datasource = new List<CListItem>();
                    foreach(var d in dicdata)
                    {
                        var c = d.Split(Const.Minus.ToCharArray());
                        datasource.Add(new CListItem(c[0].TrimStart(Const.WrapText.ToCharArray()), c[1]));
                    }
                    rilu.DataSource = datasource;
                    gridControlFields.RepositoryItems.Add(rilu);

                    gc.ColumnEdit = rilu;
                }

                // ������������ֵ䣬�������ֵ�Ϊ�ַ��� 
                // ȡֵ����gridViewFields.GetRowCellValue(0, "EditorId")
                if (dic[key].DictNo > 0 && dic[key].DataType.Contains("Char_"))
                {

                    RepositoryItemCheckedComboBoxEdit riccbe = new RepositoryItemCheckedComboBoxEdit();

                    ((System.ComponentModel.ISupportInitialize)(riccbe)).BeginInit();
                    riccbe.AutoHeight = false;
                    riccbe.Buttons.AddRange(new EditorButton[] { new EditorButton( ButtonPredefines.Combo)});
                    riccbe.Name = "riccbe";

                    string[] dicdata = dic[key].FieldInfo.Split(Const.Comma.ToCharArray());
                    foreach (var d in dicdata)
                    {
                        var c = d.Split(Const.Minus.ToCharArray());
                        riccbe.Items.Add(c[0].TrimStart(Const.WrapText.ToCharArray()), c[1]);

                    }
                    gridControlFields.RepositoryItems.Add(riccbe);

                    gc.ColumnEdit = riccbe;
                }

                // �����TableField�ֶ� ������ȫ�����ֶ�
                if (string.Equals(dic[key].FieldName, "TableField"))
                {
                    RepositoryItemLookUpEdit rilu = new RepositoryItemLookUpEdit();
                    ((System.ComponentModel.ISupportInitialize)(rilu)).BeginInit();
                    rilu.PopupWidth = 400; //��������  
                    rilu.NullText = "";//��ʱ��ֵ  
                    rilu.DropDownRows = 10;//����������  
                    rilu.ImmediatePopup = true;//����ֵ�Ƿ����ϵ�������  
                    rilu.ValidateOnEnterKey = true;//�س�ȷ��  
                    rilu.SearchMode = SearchMode.AutoFilter;//�Զ����˵�����Ҫ��ʾ�����ݣ����Ը�����Ҫ�仯  
                    rilu.TextEditStyle = TextEditStyles.Standard;//Ҫʹ�û��������룬��������ΪStandard  
                    rilu.AllowNullInput = DevExpress.Utils.DefaultBoolean.True; //����Ctrl + Delete���ѡ����� 
                    rilu.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] { new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo) });
                    //�����ʾ��  
                    rilu.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] { new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Value", "�ֶ�"), new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Text", "�ֶ�����") });
                    ((System.ComponentModel.ISupportInitialize)(rilu)).EndInit();

                    rilu.ValueMember = "Value";
                    rilu.DisplayMember = "Text";
                    
                    //string[] dicdata = dic[key].FieldInfo.Split(Const.Comma.ToCharArray());
                    //List<CListItem> datasource = new List<CListItem>();
                    //foreach (var d in dicdata)
                    //{
                    //    var c = d.Split(Const.Minus.ToCharArray());
                    //    datasource.Add(new CListItem(c[0].TrimStart(Const.WrapText.ToCharArray()), c[1]));
                    //}
                    // ȡ����׼�ֶμ���
                    List<CListItem> datasource = new List<CListItem>();
                    XmlHelper xmlhelper = new XmlHelper(@"XML\stdfield.xml");
                    XmlNodeList xmlNodeLst3 = xmlhelper.Read("datatype/dataitem");
                    foreach (XmlNode xn1 in xmlNodeLst3)
                    {
                        // ���ڵ�ת��ΪԪ�أ����ڵõ��ڵ������ֵ
                        XmlElement xe = (XmlElement)xn1;
                      
                        // �õ�DataTypeInfo�ڵ�������ӽڵ�
                        XmlNodeList xnl0 = xe.ChildNodes;
                        datasource.Add(new CListItem(xnl0.Item(0).InnerText, xnl0.Item(0).InnerText + " " + xnl0.Item(1).InnerText));
                    }

                    rilu.DataSource = datasource;
                    gridControlFields.RepositoryItems.Add(rilu);

                    gc.ColumnEdit = rilu;
                }

                gridViewFields.Columns.Add(gc);
            }

            /*XElement doc = XElement.Load(string.Format(@"XML\{0}.basicdata", item.Name));
            foreach (XElement item2 in doc.Descendants("item"))//�õ�ÿһ��Person�ڵ�,�õ�����ڵ���ȡ����Name������ڵ��ֵ
            {
                Console.WriteLine("������{0} ���䣺{1}", item2.Element("gid").Value, item2.Element("id").Value);//Person�Ľڵ���µýڵ�ΪName��
            }*/

            XmlHelper xmltabledatahelper = new XmlHelper(string.Format(@"XML\{0}.basicdata", item.Name));

            XmlNodeList xmlNodeLst = xmltabledatahelper.Read("datatype/dataitem");

            foreach (XmlNode xn1 in xmlNodeLst)
            {
                DataRow dr = dt.NewRow();
                // ���ڵ�ת��ΪԪ�أ����ڵõ��ڵ������ֵ
                XmlElement xe = (XmlElement)xn1;

                for (int i = 0; i < dt.Columns.Count; i++)
                {
                    if (xe.Attributes[dt.Columns[i].ColumnName.ToLower()] != null)
                    {
                        dr[dt.Columns[i].ColumnName] = xe.GetAttribute(dt.Columns[i].ColumnName.ToLower()).ToString();
                    }
                    else
                    {
                        xe.SetAttribute(dt.Columns[i].ColumnName.ToLower(), string.Empty);
                    }
                }
                xmltabledatahelper.Save(false);
                dt.Rows.Add(dr);

                // ��������ȥ�����Ƿ���ڲ�������ɾ��
                List<String> tmp = new List<string>();
                foreach (XmlAttribute a in xe.Attributes)
                {
                    if (dt.Columns[a.Name] == null && !string.Equals(a.Name, "gid"))
                        tmp.Add(a.Name);
                }
                foreach(var s in tmp)
                {
                    xe.RemoveAttribute(s);
                }
                xmltabledatahelper.Save(false);
            }

            #endregion
            ((System.ComponentModel.ISupportInitialize)(gridControlFields)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(gridViewFields)).EndInit();
            gridControlFields.DataSource = dt;
            #endregion

            xtraTabPageFields.Controls.Add(gridControlFields);

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

            xtraTabControl1.SelectedPageChanged += (sender1, e1) => {
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
                if (dt != null)
                {
                    string englishTable = gridViewFields.Name.Replace(@"XML\", "").Replace(@".basicdata", "");

                    // ɾ������ʾ���ֶ�
                    DataTable dtSql = dt.Copy();
                    List<string> delField = new List<string>();
                    foreach (DevExpress.XtraGrid.Columns.GridColumn column in gridViewFields.Columns)
                    {
                        foreach (DataColumn dtcolumn in dtSql.Columns)
                        {
                            if (string.Equals(column.FieldName, dtcolumn.ColumnName, StringComparison.CurrentCultureIgnoreCase) && column.Visible == false)
                            {
                                delField.Add(column.FieldName);
                            }
                        }
                    }

                    foreach (string str in delField)
                    {
                        dtSql.Columns.Remove(str);
                    }

                    FileUtil.AppendText(@"SQL.tmp", JCodes.Framework.Common.Proj.SqlOperate.initTableDataInfo(dbType, tableGroup[englishTable] + englishTable, gridViewFields.ViewCaption, dtSql), Encoding.Default);
                }

                richEditControl.LoadDocument(@"SQL.tmp", DocumentFormat.PlainText);
                richEditControl.ReplaceService<ISyntaxHighlightService>(new CustomSyntaxHighlightService(richEditControl.Document));//������ʾ  
            };
            xtraTabPageSQLLook.Controls.Add(richEditControl);
            #endregion

            control.Controls.Add(xtraTabControl1);

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
                dictInfo.Id = Convert.ToInt32(xnl0.Item(0).InnerText);
                dictInfo.Pid = Convert.ToInt32(xnl0.Item(1).InnerText);
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
        /// ��������
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void toolStripMenuItem_AddField_Click(object sender, EventArgs e)
        {
            string guid = System.Guid.NewGuid().ToString();
            XmlHelper xmldatahelper = new XmlHelper(gridViewFields.Name);
            var objXmlDoc = xmldatahelper.GetXmlDoc();
            XmlNode objNode = objXmlDoc.SelectSingleNode("datatype/dataitem");
            XmlElement objElement = objXmlDoc.CreateElement("item");
            DataRow dr = dt.NewRow();
            
            objElement.SetAttribute("gid", guid);
            dr["gid"] = guid;

            foreach (DataColumn s in dt.Columns)
            {
                if (string.Equals(s.ColumnName.ToLower(), "gid"))
                    continue;

                objElement.SetAttribute(s.ColumnName.ToLower(), string.Empty);
            }
            objNode.AppendChild(objElement);
            xmldatahelper.Save();

            dt.Rows.Add(dr);
            gridControlFields.RefreshDataSource();
        }


        /// <summary>
        /// ɾ������
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void toolStripMenuItem_DelField_Click(object sender, EventArgs e)
        {
            // 20170824 ��������һ�п������ټ�������
            if (gridViewFields.GetFocusedRow() == null || string.IsNullOrEmpty(gridViewFields.GetFocusedDataRow()[0].ToString()))
                return;
            XmlHelper xmldatahelper = new XmlHelper(gridViewFields.Name);
            xmldatahelper.DeleteByPathNode("datatype/dataitem/item[@gid=\"" + gridViewFields.GetFocusedDataRow()[0].ToString() + "\"]");
            xmldatahelper.Save();

            dt.Rows.RemoveAt(gridViewFields.FocusedRowHandle);
            gridControlFields.RefreshDataSource();
        }

        private void gridViewFields_CellValueChanged(object sender, DevExpress.XtraGrid.Views.Base.CellValueChangedEventArgs e)
        {
            string rowGuid = gridViewFields.GetDataRow(e.RowHandle)[0].ToString();

            if (!ValidateUtil.IsGuid(rowGuid))
            {
                MessageDxUtil.ShowError("�޸�����ʧ�ܣ��˴β�������Ч");
                return;
            }

            XmlHelper xmldatahelper = new XmlHelper(gridViewFields.Name);
            xmldatahelper.GetXmlDoc().SelectSingleNode("datatype/dataitem/item[@gid=\"" + rowGuid + "\"]").Attributes[e.Column.FieldName.ToLower()].Value = e.Value.ToString();
            xmldatahelper.Save();

            dt.Rows[e.RowHandle][e.Column.FieldName.ToLower()] = e.Value.ToString();
        }

        private void gridViewFields_ValidateRow(object sender, DevExpress.XtraGrid.Views.Base.ValidateRowEventArgs e)
        {
            // ��ѯ�Ƿ����2����ֵ������
            /*List<TableFieldsInfo> lsttableFieldsInfo = gridViewFields.DataSource as List<TableFieldsInfo>;

            // �����ظ���Name��ֵ && ���ԭ�ȵĴ�����Ϣ

            List<String> tmpName = new List<string>();
            List<String> lstName = new List<string>();
            foreach (TableFieldsInfo tableFieldsInfo in lsttableFieldsInfo)
            {
                if (string.IsNullOrEmpty(tableFieldsInfo.GUID))
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
                if (string.IsNullOrEmpty(tableFieldsInfo.GUID))
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
            }*/
        }
    }
}
