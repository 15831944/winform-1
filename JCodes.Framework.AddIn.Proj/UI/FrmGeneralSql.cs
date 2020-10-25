using System.Collections.Generic;
using System.IO;
using System.Windows.Forms;
using DevExpress.XtraBars.Docking2010.Views;
using DevExpress.XtraNavBar;
using JCodes.Framework.CommonControl.BaseUI;
using JCodes.Framework.Common.Files;
using JCodes.Framework.Entity;
using System.Xml;
using System;
using System.Drawing;
using System.Text;
using System.ComponentModel;
using JCodes.Framework.Common.Office;
using JCodes.Framework.Common;
using System.Data;
using JCodes.Framework.Common.Extension;
using JCodes.Framework.jCodesenum;
using DevExpress.XtraEditors;

namespace JCodes.Framework.AddIn.Proj
{
    public partial class FrmGeneralSql : BaseDock
    {
        #region �ؼ�����
        private NavBarControl navBar;
        private NavBarGroup selectedGroup;
        private NavBarItemLink selectedLink;
        private UserControl control;
        ProgressBarControl progressBar;
        #endregion

        #region ���ݻ���
        private List<DictInfo> dictTypeInfoList = null;
        private Dictionary<string, string> guidGroup = new Dictionary<string, string>();
        private Dictionary<string, string> tableGroup = new Dictionary<string, string>();
        #endregion

        #region ����
        //��һ��������BackgroundWorker���󣬲�ע���¼���ִ���߳����塢ִ��UI�����¼���
        private BackgroundWorker backgroundWorker1 = null;
        #endregion

        public FrmGeneralSql()
        {
            InitializeComponent();

            backgroundWorker1 = new System.ComponentModel.BackgroundWorker();
            //���ñ�����ȸ���
            backgroundWorker1.WorkerReportsProgress = true;
            //ע���߳����巽��
            backgroundWorker1.DoWork += new DoWorkEventHandler(backgroundWorker1_DoWork);
            //ע�����UI����
            backgroundWorker1.ProgressChanged += new ProgressChangedEventHandler(backgroundWorker1_ProgressChanged);
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
                    return;
                }
            };
            ucToolbox1.Controls.Add(navBar);
            ((System.ComponentModel.ISupportInitialize)(navBar)).EndInit();

            #region Init NavBarGroup ���� && NavBarItem ����
            List<CListItem> navBarGroups = new List<CListItem>();
            navBarGroups.Add(new CListItem("Table", "��ṹ"));
            navBarGroups.Add(new CListItem("TableData", "���ݽű�"));
            navBarGroups.Add(new CListItem("SysConst", "ϵͳ����"));
            navBarGroups.Add(new CListItem("ErrorNo", "��׼�����"));

            Dictionary<string, List<CListItem>> DicnavBarItems = new Dictionary<string, List<CListItem>>();
            List<CListItem> lstTable = new List<CListItem>();
            lstTable.Add(new CListItem("GenerTableSql", "���ݿ�ű�"));
            DicnavBarItems.Add("Table", lstTable);

            List<CListItem> lstTableData = new List<CListItem>();
            lstTableData.Add(new CListItem("TableDataSql", "�������ݽű�"));
            lstTableData.Add(new CListItem("DictionarySql", "�����ֵ����ݽű�"));
            lstTableData.Add(new CListItem("MenuSql", "ϵͳ�˵����ݽű�"));
            lstTableData.Add(new CListItem("FunctionSql", "ϵͳ�������ݽű�"));
            DicnavBarItems.Add("TableData", lstTableData);

            foreach (CListItem navBarGroup in navBarGroups)
            {
                NavBarGroup standardGroup = navBar.Groups.Add();
                standardGroup.Caption = navBarGroup.Text;
                standardGroup.Tag = navBarGroup.Value;
                standardGroup.Expanded = true;
                // ���û�����������
                if (!DicnavBarItems.ContainsKey(navBarGroup.Value)) continue;
                
                List<CListItem> narBarItems = DicnavBarItems[navBarGroup.Value];
                foreach (CListItem narBarItem in narBarItems)
                {
                    NavBarItem item = new NavBarItem();
                    item.Caption = narBarItem.Text;
                    item.Tag = narBarItem.Value;
                    item.Name = narBarItem.Value;
                    item.Hint = narBarItem.Text;
                    item.LinkClicked += Item_LinkClicked;
                    navBar.Items.Add(item);
                    standardGroup.ItemLinks.Add(item);
                }
            }
            #endregion
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

            control.Name = item.Name;
            control.Text = item.Hint;

            List<object> args = new List<object>();

            #region ��ȡTable.xml ������Ϣ
            XmlHelper xmltableshelper = new XmlHelper(@"XML\tables.xml");
            XmlNodeList xmlNodeLst = xmltableshelper.Read("datatype/tabletype");
            guidGroup.Clear();
            tableGroup.Clear();
            foreach (XmlNode xn1 in xmlNodeLst)
            {
                // ���ڵ�ת��ΪԪ�أ����ڵõ��ڵ������ֵ
                XmlElement xe = (XmlElement)xn1;

                // ��ȡ�ַ����е�Ӣ����ĸ [a-zA-Z]+
                string GroupEnglishName = CRegex.GetText(xe.GetAttribute("name").ToString(), "[a-zA-Z]+", 0);

                guidGroup.Add(xe.GetAttribute("gid").ToString(), string.Format("{0}{1}_", Const.TablePre, GroupEnglishName));
            }

            XmlNodeList xmlNodeLst2 = xmltableshelper.Read("datatype/dataitem");
            foreach (XmlNode xn1 in xmlNodeLst2)
            {
                // ���ڵ�ת��ΪԪ�أ����ڵõ��ڵ������ֵ
                XmlElement xe = (XmlElement)xn1;
                // �õ�Type��ISBN�������Ե�����ֵ

                // �õ�ConstantInfo�ڵ�������ӽڵ�
                XmlNodeList xnl0 = xe.ChildNodes;

                tableGroup.Add(xnl0.Item(0).InnerText, guidGroup[xnl0.Item(3).InnerText]);
            }
            #endregion

            #region ����Name ȥ��̬���ɿؼ�
            switch (control.Name)
            { 
                case "GenerTableSql":
                    #region ����.table������Ϣ
                    string[] filenames = Directory.GetFiles("./XML/", "*.table", SearchOption.TopDirectoryOnly);
                    #endregion 

                    Panel p1 = new Panel();
                    p1.Dock = DockStyle.Top;
                    p1.Height = 30;
                    Panel p2 = new Panel();
                    p2.Dock = DockStyle.Right;
                    p2.Width = 10;
                    progressBar = new ProgressBarControl();
                    //����һ����Сֵ
                    progressBar.Properties.Minimum = 0;
                    //����һ�����ֵ
                    progressBar.Properties.Maximum = filenames.Length;
                    //���ò�������ÿ�����ӵ���
                    progressBar.Properties.Step = 1;
                    //���ý���������ʽ
                    progressBar.Properties.ProgressViewStyle = DevExpress.XtraEditors.Controls.ProgressViewStyle.Solid;
                    progressBar.Dock = DockStyle.Fill;
                    progressBar.Properties.ShowTitle = true;

                    SimpleButton btn = new SimpleButton();
                    btn.Dock = DockStyle.Right;
                    btn.Name = "btnde";
                    btn.Size = new System.Drawing.Size(90, 25);
                    btn.Text = "ִ��";
                    btn.Click += (sender1, e1) => {
                        progressBar.Position = 0;
                        args.Clear();
                        args.Add(control.Name);
                        args.Add(filenames);
                        this.backgroundWorker1.RunWorkerAsync(args);
                    };

                    p1.Controls.Add(progressBar);
                    p1.Controls.Add(p2);
                    p1.Controls.Add(btn);
                    control.Controls.Add(p1);
                    break;

                case "TableDataSql":
                    #region ����.basicdata������Ϣ
                    string[] filenames2 = Directory.GetFiles("./XML/", "*.basicdata", SearchOption.TopDirectoryOnly);
                    #endregion 

                    Panel p3 = new Panel();
                    p3.Dock = DockStyle.Top;
                    p3.Height = 30;
                    Panel p4 = new Panel();
                    p4.Dock = DockStyle.Right;
                    p4.Width = 10;
                    progressBar = new ProgressBarControl();
                    //����һ����Сֵ
                    progressBar.Properties.Minimum = 0;
                    //����һ�����ֵ
                    progressBar.Properties.Maximum = filenames2.Length;
                    //���ò�������ÿ�����ӵ���
                    progressBar.Properties.Step = 1;
                    //���ý���������ʽ
                    progressBar.Properties.ProgressViewStyle = DevExpress.XtraEditors.Controls.ProgressViewStyle.Solid;
                    progressBar.Dock = DockStyle.Fill;
                    progressBar.Properties.ShowTitle = true;

                    SimpleButton btn2 = new SimpleButton();
                    btn2.Dock = DockStyle.Right;
                    btn2.Name = "btnde";
                    btn2.Size = new System.Drawing.Size(90, 25);
                    btn2.Text = "ִ��";
                    btn2.Click += (sender1, e1) =>
                    {
                        progressBar.Position = 0;
                        args.Clear();
                        args.Add(control.Name);
                        args.Add(filenames2);
                        this.backgroundWorker1.RunWorkerAsync(args);
                    };

                    p3.Controls.Add(progressBar);
                    p3.Controls.Add(p4);
                    p3.Controls.Add(btn2);
                    control.Controls.Add(p3);
                    break;

                case "DictionarySql":
                    Panel p5 = new Panel();
                    p5.Dock = DockStyle.Top;
                    p5.Height = 30;
                    Panel p6 = new Panel();
                    p6.Dock = DockStyle.Right;
                    p6.Width = 10;
                    progressBar = new ProgressBarControl();
                    //����һ����Сֵ
                    progressBar.Properties.Minimum = 0;
                    //����һ�����ֵ
                    progressBar.Properties.Maximum = 2;
                    //���ò�������ÿ�����ӵ���
                    progressBar.Properties.Step = 1;
                    //���ý���������ʽ
                    progressBar.Properties.ProgressViewStyle = DevExpress.XtraEditors.Controls.ProgressViewStyle.Solid;
                    progressBar.Dock = DockStyle.Fill;
                    progressBar.Properties.ShowTitle = true;

                    SimpleButton btn3 = new SimpleButton();
                    btn3.Dock = DockStyle.Right;
                    btn3.Name = "btnde";
                    btn3.Size = new System.Drawing.Size(90, 25);
                    btn3.Text = "ִ��";
                    btn3.Click += (sender1, e1) =>
                    {
                        progressBar.Position = 0;
                        args.Clear();
                        args.Add(control.Name);
                        this.backgroundWorker1.RunWorkerAsync(args);
                    };

                    p5.Controls.Add(progressBar);
                    p5.Controls.Add(p6);
                    p5.Controls.Add(btn3);
                    control.Controls.Add(p5);
                    break;
                case "MenuSql":
                    Panel p7 = new Panel();
                    p7.Dock = DockStyle.Top;
                    p7.Height = 30;
                    Panel p8 = new Panel();
                    p8.Dock = DockStyle.Right;
                    p8.Width = 10;
                    progressBar = new ProgressBarControl();
                    //����һ����Сֵ
                    progressBar.Properties.Minimum = 0;
                    //����һ�����ֵ
                    progressBar.Properties.Maximum = 1;
                    //���ò�������ÿ�����ӵ���
                    progressBar.Properties.Step = 1;
                    //���ý���������ʽ
                    progressBar.Properties.ProgressViewStyle = DevExpress.XtraEditors.Controls.ProgressViewStyle.Solid;
                    progressBar.Dock = DockStyle.Fill;
                    progressBar.Properties.ShowTitle = true;

                    SimpleButton btn4 = new SimpleButton();
                    btn4.Dock = DockStyle.Right;
                    btn4.Name = "btnde";
                    btn4.Size = new System.Drawing.Size(90, 25);
                    btn4.Text = "ִ��";
                    btn4.Click += (sender1, e1) =>
                    {
                        progressBar.Position = 0;
                        args.Clear();
                        args.Add(control.Name);
                        this.backgroundWorker1.RunWorkerAsync(args);
                    };

                    p7.Controls.Add(progressBar);
                    p7.Controls.Add(p8);
                    p7.Controls.Add(btn4);
                    control.Controls.Add(p7);
                    break;
                case "FunctionSql":
                    break;
            }

            
            #endregion

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

        //�ڶ���������ִ���߳������¼�
        //�߳����巽��
        public void backgroundWorker1_DoWork(object sender, DoWorkEventArgs e)
        {
            List<object> args = e.Argument as List<object>;

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
            string filePath = xnl0project.Item(9).InnerText;
            #endregion

            switch (args[0].ToString())
            { 
                case "GenerTableSql":
                    string[] filenames = args[1] as string[];
                    Dictionary<string, string> constrainttypelst = new Dictionary<string, string>();
                    constrainttypelst.Add("0", "����");
                    constrainttypelst.Add("1", "����");
                    constrainttypelst.Add("2", "Ψһ����");

                    //���߳��и���UI��ͨ��ReportProgress������
                    //...ִ���߳�����
 
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
                        dataTypeInfo.Gid= xe.GetAttribute("gid").ToString();

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
                    #endregion

                    if (FileUtil.IsExistFile(filePath + "\\TableInit.sql"))
                        FileUtil.DeleteFile(filePath + "\\TableInit.sql");

                    FileUtil.CreateFile(filePath + "\\TableInit.sql");

                    #region ����ÿ��Table�ű�
                    for (Int32 ii = 0; ii < filenames.Length; ii++)
                    {
                        // 20190925 û�����õĲ�����
                        if (filenames[ii].Contains("_TODO"))
                        {
                            Console.WriteLine(string.Format("{0} [{1})]���账��.\r\n", LogLevel.LOG_LEVEL_INFO, filenames[ii]));
                            backgroundWorker1.ReportProgress((Int32)(progressBar.Position + 1) / progressBar.Properties.Maximum, string.Format("{0} [{1})]���账��.\r\n", LogLevel.LOG_LEVEL_INFO, filenames[ii]));
                            continue;
                        }

                        XmlHelper xmltablesinfohelper = new XmlHelper(filenames[ii]);

                        XmlNodeList xmlbasicsLst = xmltablesinfohelper.Read(string.Format("datatype/basicinfo"));
                        XmlNodeList xmlbasicsOne = ((XmlElement)xmlbasicsLst[0]).ChildNodes;
                        string functionStr = xmlbasicsOne.Item(0).InnerText;
                        string englishName = xmlbasicsOne.Item(1).InnerText;
                        string chineseName = xmlbasicsOne.Item(2).InnerText;
                        Boolean checkHis = Convert.ToInt32(xmlbasicsOne.Item(3).InnerText) == 0 ? false : true;

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

                            for (Int32 i = 0; i < stdFieldInfoList.Count; i++)
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

                            tablefieldInfo.IsNull = (short)(xnl0.Item(1).InnerText == "0" ? 0 : 1);
                            tablefieldInfo.Remark = xnl0.Item(2).InnerText;
                            tablefieldInfo.lstInfo = new Dictionary<string, DevExpress.XtraEditors.DXErrorProvider.ErrorInfo>();
                            FieldsInfoLst.Add(tablefieldInfo);
                        }

                        // ���û���ֶ���д��־����
                        if (FieldsInfoLst.Count == 0)
                        {
                            backgroundWorker1.ReportProgress((Int32)(progressBar.Position + 1) / progressBar.Properties.Maximum, string.Format("{0} ��[{1}({2})]�������ֶ�,����,�������.\r\n", LogLevel.LOG_LEVEL_ERR, chineseName, englishName));
                            continue;
                        }

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
                            tableindexsInfo.ConstraintType = string.IsNullOrEmpty(xnl0.Item(2).InnerText) ? (short)-1 : Convert.ToInt16(xnl0.Item(2).InnerText);
                            tableindexsInfo.lstInfo = new Dictionary<string, DevExpress.XtraEditors.DXErrorProvider.ErrorInfo>();
                            IndexsInfoLst.Add(tableindexsInfo);
                        }

                        FileUtil.AppendText(filePath + "\\TableInit.sql", JCodes.Framework.Common.Proj.SqlOperate.initTableInfo(dbType, tableGroup[englishName]+englishName, string.Format("{0}({1})", chineseName, functionStr), checkHis, FieldsInfoLst, IndexsInfoLst, dict), Encoding.UTF8);

                        Console.WriteLine(string.Format("{0} [{1}({2})]�������.\r\n", LogLevel.LOG_LEVEL_INFO, chineseName, englishName));
                        backgroundWorker1.ReportProgress((Int32)(progressBar.Position + 1) / progressBar.Properties.Maximum, string.Format("{0} [{1}({2})]�������.\r\n", LogLevel.LOG_LEVEL_INFO, chineseName, englishName));
                    }
                    #endregion
                    break;
                case "TableDataSql":
                    string[] filenames2 = args[1] as string[];

                    //���߳��и���UI��ͨ��ReportProgress������
                    if (FileUtil.IsExistFile(filePath + "\\TableDataSql.sql"))
                        FileUtil.DeleteFile(filePath + "\\TableDataSql.sql");

                    FileUtil.CreateFile(filePath + "\\TableDataSql.sql");

                    #region ����ÿ��Table�ű�
                    for (Int32 ii = 0; ii < filenames2.Length; ii++)
                    {
                        DataTable dt = new DataTable();
                        // �ȶ�ȡ��ṹ��Ϣ
                        XmlHelper xmltablefieldhelper = new XmlHelper(filenames2[ii].Replace("basicdata", "table"));

                        XmlNodeList xmlfieldsbasicLst = xmltablefieldhelper.Read(string.Format("datatype/basicinfo"));

                        XmlNodeList xnl0basic = ((XmlElement)xmlfieldsbasicLst[0]).ChildNodes;
                        string englishName = xnl0basic.Item(1).InnerText;
                        string chineseName = xnl0basic.Item(2).InnerText;

                        XmlNodeList xmlfieldsLst = xmltablefieldhelper.Read(string.Format("datatype/fieldsinfo"));

                        foreach (XmlNode xn1 in xmlfieldsLst)
                        {
                            // ���ڵ�ת��ΪԪ�أ����ڵõ��ڵ������ֵ
                            XmlElement xe = (XmlElement)xn1;
                            // �õ�DataTypeInfo�ڵ�������ӽڵ�
                            XmlNodeList xnl0 = xe.ChildNodes;

                            dt.Columns.Add(xnl0.Item(0).InnerText);
                        }

                        // ��ȡ������Ϣ
                        XmlHelper xmltabledatahelper = new XmlHelper(filenames2[ii]);
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
                            foreach (var s in tmp)
                            {
                                xe.RemoveAttribute(s);
                            }
                            xmltabledatahelper.Save(false);
                        }

                        FileUtil.AppendText(filePath + "\\TableDataSql.sql", JCodes.Framework.Common.Proj.SqlOperate.initTableDataInfo(dbType, tableGroup[englishName] + englishName, chineseName, dt), Encoding.Default);

                        backgroundWorker1.ReportProgress((Int32)(progressBar.Position + 1) / progressBar.Properties.Maximum, string.Format("{0} [{1}({2})]�������.\r\n", LogLevel.LOG_LEVEL_INFO, chineseName, englishName));
                    }
                    #endregion
                    break;
                case "DictionarySql":
                    //���߳��и���UI��ͨ��ReportProgress������
                    if (FileUtil.IsExistFile(filePath + "\\Dict.sql"))
                        FileUtil.DeleteFile(filePath + "\\Dict.sql");

                    FileUtil.CreateFile(filePath + "\\Dict.sql");

                    #region ����ÿ��Table�ű�
                    XmlHelper xmldicthelper = new XmlHelper(@"XML\dict.xml");
                    XmlNodeList xmlNodeLst2 = xmldicthelper.Read("datatype/dataitem");
                    List<DictInfo> dictTypeInfoList2 = new List<DictInfo>();
                    List<DictDataInfo> dictDetailInfoList = new List<DictDataInfo>();
                    foreach (XmlNode xn1 in xmlNodeLst2)
                    {
                        DictInfo dictInfo = new DictInfo();
                        // ���ڵ�ת��ΪԪ�أ����ڵõ��ڵ������ֵ
                        XmlElement xe = (XmlElement)xn1;
             
                        // �õ�DataTypeInfo�ڵ�������ӽڵ�
                        XmlNodeList xnl0 = xe.ChildNodes;
                        dictInfo.Id = Convert.ToInt32(xnl0.Item(0).InnerText);
                        dictInfo.Pid = Convert.ToInt32(xnl0.Item(1).InnerText);
                        dictInfo.Name = xnl0.Item(2).InnerText;
                        dictInfo.Remark = xnl0.Item(3).InnerText;

                        if (!string.IsNullOrEmpty(xnl0.Item(4).InnerXml))
                        { 
                            System.Xml.XmlDocument doc = new System.Xml.XmlDocument();//�½�����
                            doc.LoadXml("<tmp>" + xnl0.Item(4).InnerXml + "</tmp>");//����xml��ʽ���ַ���
                            var nodes = doc.DocumentElement.ChildNodes;
                            foreach (var node in nodes)
                            {
                                DictDataInfo dicdetailInfo = new DictDataInfo();
                                var dNode = ((XmlElement)node).ChildNodes;
                                dicdetailInfo.DicttypeValue = dNode.Item(0).InnerText.ToInt32();
                                dicdetailInfo.Name = dNode.Item(1).InnerText;
                                dicdetailInfo.Seq = dNode.Item(2).InnerText;
                                dicdetailInfo.Remark = dNode.Item(3).InnerText;
                                dicdetailInfo.DicttypeId = dictInfo.Id;

                                dictDetailInfoList.Add(dicdetailInfo);
                            }
                        }

                        dictTypeInfoList2.Add(dictInfo);
                    }

                    // T_Basic_DictType
                    // T_Basic_DictData
                    FileUtil.AppendText(filePath + "\\Dict.sql", JCodes.Framework.Common.Proj.SqlOperate.initDictTypeInfo(dbType, tableGroup["DictType"] + "DictType", "�����ֵ�����", dictTypeInfoList2), Encoding.Default);

                    backgroundWorker1.ReportProgress((Int32)(progressBar.Position + 1) / progressBar.Properties.Maximum, string.Format("{0} [{1}({2})]�������.\r\n", LogLevel.LOG_LEVEL_INFO, "�����ֵ�����", "DictType"));

                    FileUtil.AppendText(filePath + "\\Dict.sql", JCodes.Framework.Common.Proj.SqlOperate.initDictDataInfo(dbType, tableGroup["DictData"] + "DictData", "�����ֵ���ϸ", dictDetailInfoList), Encoding.Default);

                    backgroundWorker1.ReportProgress((Int32)(progressBar.Position + 1) / progressBar.Properties.Maximum, string.Format("{0} [{1}({2})]�������.\r\n", LogLevel.LOG_LEVEL_INFO, "�����ֵ���ϸ", "DictData"));
 
                    #endregion
                        
                    break;
                case "MenuSql":
                    //���߳��и���UI��ͨ��ReportProgress������
                    if (FileUtil.IsExistFile(filePath + "\\Menu.sql"))
                        FileUtil.DeleteFile(filePath + "\\Menu.sql");

                    FileUtil.CreateFile(filePath + "\\Menu.sql");

                    #region ����ÿ��Table�ű�
                    XmlHelper xmlmenuhelper = new XmlHelper(@"XML\menu.xml");
                    XmlNodeList xmlNodeLst3 = xmlmenuhelper.Read("datatype/dataitem");
                    List<MenuInfo> menuInfolst = new List<MenuInfo>();
                    foreach (XmlNode xn1 in xmlNodeLst3)
                    {
                        MenuInfo menuinfo = new MenuInfo();
                        // ���ڵ�ת��ΪԪ�أ����ڵõ��ڵ������ֵ
                        XmlElement xe = (XmlElement)xn1;

                        // �õ�DataTypeInfo�ڵ�������ӽڵ�
                        XmlNodeList xnl0 = xe.ChildNodes;
                        menuinfo.Gid = xnl0.Item(0).InnerText;
                        menuinfo.Pgid = xnl0.Item(1).InnerText;
                        menuinfo.Name = xnl0.Item(2).InnerText;
                        menuinfo.Icon = xnl0.Item(3).InnerText;
                        menuinfo.Seq = xnl0.Item(4).InnerText;
                        menuinfo.AuthGid = xnl0.Item(5).InnerText;
                        menuinfo.IsVisable = Convert.ToInt16(xnl0.Item(6).InnerText);
                        menuinfo.WinformClass = xnl0.Item(7).InnerText;
                        menuinfo.Url = xnl0.Item(8).InnerText;
                        menuinfo.WebIcon = xnl0.Item(9).InnerText;
                        menuinfo.SystemtypeId = xnl0.Item(10).InnerText;
                        menuinfo.CreatorId = Convert.ToInt32( xnl0.Item(11).InnerText);
                        menuinfo.CreatorTime = Convert.ToDateTime( xnl0.Item(12).InnerText);
                        menuinfo.EditorId = Convert.ToInt32(xnl0.Item(13).InnerText);
                        menuinfo.LastUpdateTime  = Convert.ToDateTime( xnl0.Item(14).InnerText);
                        menuinfo.IsDelete = Convert.ToInt16(xnl0.Item(15).InnerText);
                        menuInfolst.Add(menuinfo);
                    }

                    FileUtil.AppendText(filePath + "\\Menu.sql", JCodes.Framework.Common.Proj.SqlOperate.initMenuInfo(dbType, tableGroup["Menu"] + "Menu", "ϵͳ�˵�", menuInfolst), Encoding.Default);

                    backgroundWorker1.ReportProgress((Int32)(progressBar.Position + 1) / progressBar.Properties.Maximum, string.Format("{0} [{1}({2})]�������.\r\n", LogLevel.LOG_LEVEL_INFO, "ϵͳ�˵�", "Menu"));
                    #endregion
                    break;
                case "FunctionSql":
                    //���߳��и���UI��ͨ��ReportProgress������
                    if (FileUtil.IsExistFile(filePath + "\\Function.sql"))
                        FileUtil.DeleteFile(filePath + "\\Function.sql");

                    FileUtil.CreateFile(filePath + "\\Function.sql");

                    #region ����ÿ��Table�ű�
                    XmlHelper xmlfunctionhelper = new XmlHelper(@"XML\function.xml");
                    XmlNodeList xmlNodeLst4 = xmlfunctionhelper.Read("datatype/dataitem");
                    List<JCodes.Framework.Entity.FunctionInfo> functionInfolst = new List<JCodes.Framework.Entity.FunctionInfo>();
                    foreach (XmlNode xn1 in xmlNodeLst4)
                    {
                        JCodes.Framework.Entity.FunctionInfo functioninfo = new JCodes.Framework.Entity.FunctionInfo();
                        // ���ڵ�ת��ΪԪ�أ����ڵõ��ڵ������ֵ
                        XmlElement xe = (XmlElement)xn1;

                        // �õ�DataTypeInfo�ڵ�������ӽڵ�
                        XmlNodeList xnl0 = xe.ChildNodes;
                        functioninfo.Gid = xnl0.Item(0).InnerText;
                        functioninfo.Pgid = xnl0.Item(1).InnerText;
                        functioninfo.Name = xnl0.Item(2).InnerText;
                        functioninfo.DllPath = xnl0.Item(3).InnerText;
                        functioninfo.SystemtypeId = xnl0.Item(4).InnerText;
                        functioninfo.Seq = xnl0.Item(5).InnerText;
                        functionInfolst.Add(functioninfo);
                    }

                    FileUtil.AppendText(filePath + "\\Function.sql", JCodes.Framework.Common.Proj.SqlOperate.initFunctionInfo(dbType, tableGroup["Function"] + "Function", "ϵͳ����", functionInfolst), Encoding.Default);

                    #endregion
                    break;
            }
            //...ִ���߳���������

            backgroundWorker1.ReportProgress(100, string.Format("{0} ��ȫ���������.\r\n", LogLevel.LOG_LEVEL_INFO));
        }

        //������������ִ��UI�����¼�
        //UI���·���
        public void backgroundWorker1_ProgressChanged(object sender, ProgressChangedEventArgs e)
        {
            richText.Text += e.UserState.ToString();
            richText.Document.CaretPosition = richText.Document.Range.End;
            richText.ScrollToCaret();

            if (e.UserState.ToString().Contains("�������") && progressBar != null)
            {
                progressBar.Position += 1; 
            }
        }
    }
}
