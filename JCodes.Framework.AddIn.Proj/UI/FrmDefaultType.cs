using System;
using System.Text;
using System.Data;
using System.ComponentModel;
using System.Collections.Generic;
using JCodes.Framework.CommonControl.BaseUI;
using System.Windows.Forms;
using System.Xml;
using JCodes.Framework.Common.Files;
using JCodes.Framework.Entity;
using DevExpress.XtraGrid.Views.Base;
using JCodes.Framework.Common.Databases;
using JCodes.Framework.Common.Format;
using JCodes.Framework.CommonControl.Other;
using JCodes.Framework.Common.Office;
using System.Linq;
using System.Drawing;
using DevExpress.XtraGrid.Views.Grid.ViewInfo;
using DevExpress.Utils;

// �ο��ĵ� http://www.cnblogs.com/a1656344531/archive/2012/11/28/2792863.html

namespace JCodes.Framework.AddIn.Proj
{
    /// <summary>
    /// ��½ϵͳ�ĺڰ������б�
    /// </summary>	
    public partial class FrmDefaultType : BaseDock
    {
        private DefaultTypeInfo tmpdataTypeInfo = null;

        private XmlHelper xmlhelper = new XmlHelper(@"XML\defaulttype.xml");

        private List<string> lstName = new List<string>();

        private string xmlModel = "<name>{0}</name><chineseName>{1}</chineseName><oracle>{2}</oracle><mysql>{3}</mysql><db2>{4}</db2><sqlserver>{5}</sqlserver><sqlite>{6}</sqlite><access>{7}</access><cshort>{8}</cshort>";

        private Int32 _errCount = 0;
        private List<CListItem> _errlst = new List<CListItem>();
        private Int32 _warnCount = 0;
        private List<CListItem> _warnlst = new List<CListItem>();
        private Int32 _infoCount = 0;
        private List<CListItem> _infolst = new List<CListItem>();

        public FrmDefaultType()
        {
            InitializeComponent();

            BindData();

            ValidateData();

            InitView();
        }

        /// <summary>
        /// �س��¼�
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void txtSearch_KeyDown(object sender, System.Windows.Forms.KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                btnSearch_Click(null, null);
            }
        }

        /// <summary>
        /// ��ѯ�¼�
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnSearch_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtSearch.Text))
            {
                gridView1.ActiveFilterString = string.Empty;
            }
            else
            {
                // ��ѯ�¼� ģ����ѯ
                string filter = string.Format("Name Like '%{0}%' or ChineseName Like '%{0}%' or Oracle Like '%{0}%' or  Mysql Like '%{0}%' or  DB2 Like '%{0}%' or  SqlServer Like '%{0}%' or Sqlite Like '%{0}%' or Access Like '%{0}%' or CShort Like '%{0}%'", txtSearch.Text);
                gridView1.ActiveFilterString = filter;
            }
            
        }

        /// <summary>
        /// ������
        /// </summary>
        private void BindData()
        {
            XmlNodeList xmlNodeLst = xmlhelper.Read("datatype");
            List<DefaultTypeInfo> dataTypeInfoList = new List<DefaultTypeInfo>();
            foreach (XmlNode xn1 in xmlNodeLst)
            {
                DefaultTypeInfo dataTypeInfo = new DefaultTypeInfo();
                // ���ڵ�ת��ΪԪ�أ����ڵõ��ڵ������ֵ
                XmlElement xe = (XmlElement)xn1;
                // �õ�Type��ISBN�������Ե�����ֵ
                dataTypeInfo.Gid = xe.GetAttribute("gid").ToString();

                // �õ�DataTypeInfo�ڵ�������ӽڵ�
                XmlNodeList xnl0 = xe.ChildNodes;
                dataTypeInfo.Name = xnl0.Item(0).InnerText;
                dataTypeInfo.ChineseName = xnl0.Item(1).InnerText;
                dataTypeInfo.Oracle = xnl0.Item(2).InnerText;
                dataTypeInfo.Mysql = xnl0.Item(3).InnerText;
                dataTypeInfo.DB2 = xnl0.Item(4).InnerText;
                dataTypeInfo.SqlServer = xnl0.Item(5).InnerText;
                dataTypeInfo.Sqlite = xnl0.Item(6).InnerText;
                dataTypeInfo.Access = xnl0.Item(7).InnerText;
                dataTypeInfo.CShort = xnl0.Item(8).InnerText;
                dataTypeInfo.lstInfo = new Dictionary<string, DevExpress.XtraEditors.DXErrorProvider.ErrorInfo>();

                dataTypeInfoList.Add(dataTypeInfo);
            }

            // ���һ�п���
            dataTypeInfoList.Add(new DefaultTypeInfo());
            gridControl1.DataSource = dataTypeInfoList;

            gridView1.Columns["Gid"].Visible = false;
            gridView1.Columns["lstInfo"].Visible = false;
        }

        /// <summary>
        /// У����ص������Ƿ�����쳣��
        /// </summary>
        private void ValidateData()
        {
            // ��ѯ�Ƿ����2����ֵ������
            List<DefaultTypeInfo> lstDataTypeInfo = gridControl1.DataSource as List<DefaultTypeInfo>;

            // �����ظ���Name��ֵ

            List<String> tmpName = new List<string>();
            foreach (DefaultTypeInfo dataTypeInfo in lstDataTypeInfo)
            {
                if (string.IsNullOrEmpty(dataTypeInfo.Gid))
                    continue;

                if (lstName.Contains(dataTypeInfo.Name))
                {
                    tmpName.Add(dataTypeInfo.Name);
                }

                lstName.Add(dataTypeInfo.Name);
            }

            foreach (DefaultTypeInfo dataTypeInfo in lstDataTypeInfo)
            {
                if (string.IsNullOrEmpty(dataTypeInfo.Gid))
                    continue;

                // �ж��ظ��� ������
                if (tmpName.Contains(dataTypeInfo.Name))
                {
                    if (dataTypeInfo.lstInfo.ContainsKey("Name"))
                    {
                        dataTypeInfo.lstInfo["Name"].ErrorText = dataTypeInfo.lstInfo["Name"].ErrorText + "\r\n���ڼ�ֵ��ͬ��������";
                        dataTypeInfo.lstInfo["Name"].ErrorType = dataTypeInfo.lstInfo["Name"].ErrorType >= DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical ? dataTypeInfo.lstInfo["Name"].ErrorType : DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical;
                    }
                    else
                    {
                        dataTypeInfo.lstInfo.Add("Name", new DevExpress.XtraEditors.DXErrorProvider.ErrorInfo("���ڼ�ֵ��ͬ��������", DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical));
                        _errCount++;
                        // 20170901 wjm ����key ��value��˳��
                        _errlst.Add(new CListItem( "���ڼ�ֵ��ͬ��������", "������" + dataTypeInfo.Name));
                    }
                }
                // �������жϴ��շ�
                if (dataTypeInfo.Name.Length >= 1)
                {
                    if (!string.Equals(dataTypeInfo.Name[0].ToString(), dataTypeInfo.Name[0].ToString().ToUpper(), StringComparison.CurrentCulture))
                    {
                        if (dataTypeInfo.lstInfo.ContainsKey("Name"))
                        {
                            dataTypeInfo.lstInfo["Name"].ErrorText = dataTypeInfo.lstInfo["Name"].ErrorText + "\r\n�������Դ��շ������淶";
                            dataTypeInfo.lstInfo["Name"].ErrorType = dataTypeInfo.lstInfo["Name"].ErrorType >= DevExpress.XtraEditors.DXErrorProvider.ErrorType.Warning ? dataTypeInfo.lstInfo["Name"].ErrorType : DevExpress.XtraEditors.DXErrorProvider.ErrorType.Warning;
                        }
                        else
                        {
                            dataTypeInfo.lstInfo.Add("Name", new DevExpress.XtraEditors.DXErrorProvider.ErrorInfo("�������Դ��շ������淶", DevExpress.XtraEditors.DXErrorProvider.ErrorType.Warning));
                            _warnCount++;
                            // 20170901 wjm ����key ��value��˳��
                            _warnlst.Add(new CListItem("�������Դ��շ������淶", "������" + dataTypeInfo.Name));
                        }
                    }
                }

                // �ж��������Ƿ�Ϊ��
                if (string.IsNullOrEmpty(dataTypeInfo.Name))
                {
                    if (dataTypeInfo.lstInfo.ContainsKey("Name"))
                    {
                        dataTypeInfo.lstInfo["Name"].ErrorText = dataTypeInfo.lstInfo["Name"].ErrorText + "\r\n����������Ϊ��";
                        dataTypeInfo.lstInfo["Name"].ErrorType = dataTypeInfo.lstInfo["Name"].ErrorType >= DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical ? dataTypeInfo.lstInfo["Name"].ErrorType : DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical;
                    }
                    else
                    {
                        dataTypeInfo.lstInfo.Add("Name", new DevExpress.XtraEditors.DXErrorProvider.ErrorInfo("����������Ϊ��", DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical));
                        _errCount++;
                        // 20170901 wjm ����key ��value��˳��
                        _errlst.Add(new CListItem("����������Ϊ��", "������" + dataTypeInfo.Name));
                    }
                }
                // �ж������Ƿ�Ϊ��
                if (string.IsNullOrEmpty(dataTypeInfo.ChineseName))
                {
                    if (dataTypeInfo.lstInfo.ContainsKey("ChineseName"))
                    {
                        dataTypeInfo.lstInfo["ChineseName"].ErrorText = dataTypeInfo.lstInfo["ChineseName"].ErrorText + "\r\n���Ʋ���Ϊ��";
                        dataTypeInfo.lstInfo["ChineseName"].ErrorType = dataTypeInfo.lstInfo["ChineseName"].ErrorType >= DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical ? dataTypeInfo.lstInfo["ChineseName"].ErrorType : DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical;
                    }
                    else
                    {
                        dataTypeInfo.lstInfo.Add("ChineseName", new DevExpress.XtraEditors.DXErrorProvider.ErrorInfo("���Ʋ���Ϊ��", DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical));
                        _errCount++;
                        // 20170901 wjm ����key ��value��˳��
                        _errlst.Add(new CListItem("���Ʋ���Ϊ��", "����" + dataTypeInfo.Name));
                    }
                }
                // �ж�Oracle�Ƿ�Ϊ��
                if (string.IsNullOrEmpty(dataTypeInfo.Oracle))
                {
                    if (dataTypeInfo.lstInfo.ContainsKey("Oracle"))
                    {
                        dataTypeInfo.lstInfo["Oracle"].ErrorText = dataTypeInfo.lstInfo["Oracle"].ErrorText + "\r\nOracle����Ϊ��";
                        dataTypeInfo.lstInfo["Oracle"].ErrorType = dataTypeInfo.lstInfo["Oracle"].ErrorType >= DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical ? dataTypeInfo.lstInfo["Oracle"].ErrorType : DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical;
                    }
                    else
                    {
                        dataTypeInfo.lstInfo.Add("Oracle", new DevExpress.XtraEditors.DXErrorProvider.ErrorInfo("Oracle����Ϊ��", DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical));
                        _errCount++;
                        // 20170901 wjm ����key ��value��˳��
                        _errlst.Add(new CListItem("Oracle����Ϊ��", "Oracle" + dataTypeInfo.Name));
                    }
                }
                // �ж�Mysql�Ƿ�Ϊ��
                if (string.IsNullOrEmpty(dataTypeInfo.Mysql))
                {
                    if (dataTypeInfo.lstInfo.ContainsKey("Mysql"))
                    {
                        dataTypeInfo.lstInfo["Mysql"].ErrorText = dataTypeInfo.lstInfo["Mysql"].ErrorText + "\r\nMysql����Ϊ��";
                        dataTypeInfo.lstInfo["Mysql"].ErrorType = dataTypeInfo.lstInfo["Mysql"].ErrorType >= DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical ? dataTypeInfo.lstInfo["Mysql"].ErrorType : DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical;
                    }
                    else
                    {
                        dataTypeInfo.lstInfo.Add("Mysql", new DevExpress.XtraEditors.DXErrorProvider.ErrorInfo("Mysql����Ϊ��", DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical));
                        _errCount++;
                        // 20170901 wjm ����key ��value��˳��
                        _errlst.Add(new CListItem("Mysql����Ϊ��", "Mysql" + dataTypeInfo.Name));
                    }
                }
                // �ж�DB2�Ƿ�Ϊ��
                if (string.IsNullOrEmpty(dataTypeInfo.DB2))
                {
                    if (dataTypeInfo.lstInfo.ContainsKey("DB2"))
                    {
                        dataTypeInfo.lstInfo["DB2"].ErrorText = dataTypeInfo.lstInfo["DB2"].ErrorText + "\r\nDB2����Ϊ��";
                        dataTypeInfo.lstInfo["DB2"].ErrorType = dataTypeInfo.lstInfo["DB2"].ErrorType >= DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical ? dataTypeInfo.lstInfo["DB2"].ErrorType : DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical;
                    }
                    else
                    {
                        dataTypeInfo.lstInfo.Add("DB2", new DevExpress.XtraEditors.DXErrorProvider.ErrorInfo("DB2����Ϊ��", DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical));
                        _errCount++;
                        // 20170901 wjm ����key ��value��˳��
                        _errlst.Add(new CListItem( "DB2����Ϊ��", "DB2" + dataTypeInfo.Name));
                    }
                }
                // �ж�SqlServer�Ƿ�Ϊ��
                if (string.IsNullOrEmpty(dataTypeInfo.SqlServer))
                {
                    if (dataTypeInfo.lstInfo.ContainsKey("SqlServer"))
                    {
                        dataTypeInfo.lstInfo["SqlServer"].ErrorText = dataTypeInfo.lstInfo["SqlServer"].ErrorText + "\r\nSqlServer����Ϊ��";
                        dataTypeInfo.lstInfo["SqlServer"].ErrorType = dataTypeInfo.lstInfo["SqlServer"].ErrorType >= DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical ? dataTypeInfo.lstInfo["SqlServer"].ErrorType : DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical;
                    }
                    else
                    {
                        dataTypeInfo.lstInfo.Add("SqlServer", new DevExpress.XtraEditors.DXErrorProvider.ErrorInfo("SqlServer����Ϊ��", DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical));
                        _errCount++;
                        // 20170901 wjm ����key ��value��˳��
                        _errlst.Add(new CListItem("SqlServer����Ϊ��", "SqlServer" + dataTypeInfo.Name));
                    }
                }
                // �ж�Sqlite�Ƿ�Ϊ��
                if (string.IsNullOrEmpty(dataTypeInfo.Sqlite))
                {
                    if (dataTypeInfo.lstInfo.ContainsKey("Sqlite"))
                    {
                        dataTypeInfo.lstInfo["Sqlite"].ErrorText = dataTypeInfo.lstInfo["Sqlite"].ErrorText + "\r\nSqlite����Ϊ��";
                        dataTypeInfo.lstInfo["Sqlite"].ErrorType = dataTypeInfo.lstInfo["Sqlite"].ErrorType >= DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical ? dataTypeInfo.lstInfo["Sqlite"].ErrorType : DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical;
                    }
                    else
                    {
                        dataTypeInfo.lstInfo.Add("Sqlite", new DevExpress.XtraEditors.DXErrorProvider.ErrorInfo("Sqlite����Ϊ��", DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical));
                        _errCount++;
                        // 20170901 wjm ����key ��value��˳��
                        _errlst.Add(new CListItem("Sqlite����Ϊ��", "Sqlite" + dataTypeInfo.Name));
                    }
                }
                // �ж�Access�Ƿ�Ϊ��
                if (string.IsNullOrEmpty(dataTypeInfo.Access))
                {
                    if (dataTypeInfo.lstInfo.ContainsKey("Access"))
                    {
                        dataTypeInfo.lstInfo["Access"].ErrorText = dataTypeInfo.lstInfo["Access"].ErrorText + "\r\nAccess����Ϊ��";
                        dataTypeInfo.lstInfo["Access"].ErrorType = dataTypeInfo.lstInfo["Access"].ErrorType >= DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical ? dataTypeInfo.lstInfo["Access"].ErrorType : DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical;
                    }
                    else
                    {
                        dataTypeInfo.lstInfo.Add("Access", new DevExpress.XtraEditors.DXErrorProvider.ErrorInfo("Access����Ϊ��", DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical));
                        _errCount++;
                        // 20170901 wjm ����key ��value��˳��
                        _errlst.Add(new CListItem("Access����Ϊ��", "Access" + dataTypeInfo.Name));
                    }
                }
                if (string.IsNullOrEmpty(dataTypeInfo.CShort))
                {
                    if (dataTypeInfo.lstInfo.ContainsKey("CShort"))
                    {
                        dataTypeInfo.lstInfo["CShort"].ErrorText = dataTypeInfo.lstInfo["CShort"].ErrorText + "\r\nCShort����Ϊ��";
                        dataTypeInfo.lstInfo["CShort"].ErrorType = dataTypeInfo.lstInfo["CShort"].ErrorType >= DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical ? dataTypeInfo.lstInfo["CShort"].ErrorType : DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical;
                    }
                    else
                    {
                        dataTypeInfo.lstInfo.Add("CShort", new DevExpress.XtraEditors.DXErrorProvider.ErrorInfo("CShort����Ϊ��", DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical));
                        _errCount++;
                        // 20170901 wjm ����key ��value��˳��
                        _errlst.Add(new CListItem("CShort����Ϊ��", "CShort" + dataTypeInfo.Name));
                    }
                }
            }
        }

        /// <summary>
        /// ������������
        /// </summary>
        private void ClearValidate()
        {
            // ��ʼ������
            _errCount = 0;
            _warnCount = 0;
            _infoCount = 0;
            _errlst.Clear();
            _warnlst.Clear();
            _infolst.Clear();
            lstName.Clear();

              // ��ѯ�Ƿ����2����ֵ������
            List<DefaultTypeInfo> lstDataTypeInfo = gridControl1.DataSource as List<DefaultTypeInfo>;

            foreach (DefaultTypeInfo dataTypeInfo in lstDataTypeInfo)
            {
                if (string.IsNullOrEmpty(dataTypeInfo.Gid))
                    continue;

                dataTypeInfo.lstInfo.Clear();
            }
        }

        /// <summary>
        /// ��ʼ������Ԫ��
        /// </summary>
        private void InitView()
        {
            barErrText.Caption = string.Format("{0} ��������Ϣ", _errCount);
            barWarningText.Caption = string.Format("{0} ��������Ϣ", _warnCount);
            barInfoText.Caption = string.Format("{0} ����ʾ��Ϣ", _infoCount);
        }

        private void gridView1_CellValueChanged(object sender, DevExpress.XtraGrid.Views.Base.CellValueChangedEventArgs e)
        {

            // xmlhelper.Read("bookstore/book[@ISBN=\"7-111-19149-6\"]") Attributes ������
            // xmlhelper.Read("bookstore/book[title=\"�����Ӳ����������\"]") �ڲ��ڵ�

            XmlNodeList xmlNodeLst = xmlhelper.Read("datatype/item[@gid=\"" + tmpdataTypeInfo.Gid + "\"]");
            Int32 idx = -1;

            switch (e.Column.ToString())
            {
                case "������":
                    idx = 0;
                    break;
                case "����":
                    idx = 1;
                    break;
                case "Oracle":
                    idx = 2;
                    break;
                case "Mysql":
                    idx = 3;
                    break;
                case "DB2":
                    idx = 4;
                    break;
                case "Sql Server":
                    idx = 5;
                    break;
                case "Sqlite":
                    idx = 6;
                    break;
                case "Access":
                    idx = 7;
                    break;
                case "CShort":
                    idx = 8;
                    break;
            }
            
           if (idx == -1)
                return;

            xmlNodeLst.Item(idx).InnerText = e.Value.ToString();
            xmlhelper.Save(false);

            tmpdataTypeInfo = null;
        }

        private void gridView1_CellValueChanging(object sender, DevExpress.XtraGrid.Views.Base.CellValueChangedEventArgs e)
        {
            if (string.IsNullOrEmpty((gridView1.GetFocusedRow() as DefaultTypeInfo).Gid) && (gridView1.FocusedRowHandle + 1 == gridView1.RowCount))
            {
                btnAdd_Click(null, null);
            }

            tmpdataTypeInfo = gridView1.GetRow(e.RowHandle) as DefaultTypeInfo;
        }

        /// <summary>
        /// ����
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnAdd_Click(object sender, EventArgs e)
        {
            // �����ڲ�ѯȥ����ѯ������
            if (!string.IsNullOrEmpty(gridView1.ActiveFilterString))
                gridView1.ActiveFilterString = "";

            var datatypeInfo = new DefaultTypeInfo();
            datatypeInfo.Gid = System.Guid.NewGuid().ToString();
            datatypeInfo.lstInfo = new Dictionary<string, DevExpress.XtraEditors.DXErrorProvider.ErrorInfo>();

            xmlhelper.InsertElement("datatype", "item", "gid", datatypeInfo.Gid, string.Format(xmlModel, string.Empty, string.Empty, string.Empty, string.Empty, string.Empty, string.Empty, string.Empty, string.Empty, string.Empty));
            xmlhelper.Save(false);

            (gridView1.DataSource as List<DefaultTypeInfo>).Insert((gridView1.DataSource as List<DefaultTypeInfo>).Count - 1, datatypeInfo);
            gridView1.RefreshData();
        }

        /// <summary>
        /// ����
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnInsert_Click(object sender, EventArgs e)
        {
            XmlNodeList xmlNodeLst = xmlhelper.Read("datatype/item[@gid=\"" + (gridView1.GetFocusedRow() as DefaultTypeInfo).Gid + "\"]");
            var datatypeInfo = new DefaultTypeInfo();
            datatypeInfo.Gid = System.Guid.NewGuid().ToString();
            datatypeInfo.lstInfo = new Dictionary<string, DevExpress.XtraEditors.DXErrorProvider.ErrorInfo>();
            xmlhelper.InsertElement("item", "gid", datatypeInfo.Gid, string.Format(xmlModel, string.Empty, string.Empty, string.Empty, string.Empty, string.Empty, string.Empty, string.Empty, string.Empty, string.Empty), xmlNodeLst.Item(0).ParentNode);
            xmlhelper.Save(false);

            (gridView1.DataSource as List<DefaultTypeInfo>).Insert(gridView1.FocusedRowHandle, datatypeInfo);
            gridView1.RefreshData();
        }

        /// <summary>
        /// ɾ����׼����
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnDel_Click(object sender, EventArgs e)
        {
            // 20171106 wjm �޸�û������ɾ����������
            // 20170824 ��������һ�п������ټ�������
            if (gridView1.GetFocusedRow() as DefaultTypeInfo == null || string.IsNullOrEmpty((gridView1.GetFocusedRow() as DefaultTypeInfo).Gid))
                return;

            xmlhelper.DeleteByPathNode("datatype/item[@gid=\"" + gridView1.GetRowCellDisplayText(gridView1.FocusedRowHandle, "Gid") + "\"]");
            xmlhelper.Save(false);

            // 20170924 wjm ɾ��lstName ��Ӧ��ֵ���浼���ʱ�򻺴�����
            lstName.Remove(gridView1.GetRowCellDisplayText(gridView1.FocusedRowHandle, "Name"));

            (gridView1.DataSource as List<DefaultTypeInfo>).RemoveAt(gridView1.FocusedRowHandle);
            gridView1.RefreshData();
        }

        /// <summary>
        /// ����
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnMoveUp_Click(object sender, EventArgs e)
        {
            if (gridView1.FocusedRowHandle == 0)
                return;

            DefaultTypeInfo cudataTypeInfo = gridView1.GetFocusedRow() as DefaultTypeInfo;
            DefaultTypeInfo predataTypeInfo = gridView1.GetRow(gridView1.FocusedRowHandle - 1) as DefaultTypeInfo;
            // ���
            DefaultTypeInfo tmpdataTypeInfo = new DefaultTypeInfo();
            tmpdataTypeInfo.Gid = cudataTypeInfo.Gid;
            tmpdataTypeInfo.Name = cudataTypeInfo.Name;
            tmpdataTypeInfo.ChineseName = cudataTypeInfo.ChineseName;
            tmpdataTypeInfo.Oracle = cudataTypeInfo.Oracle;
            tmpdataTypeInfo.Mysql = cudataTypeInfo.Mysql;
            tmpdataTypeInfo.DB2 = cudataTypeInfo.DB2;
            tmpdataTypeInfo.SqlServer = cudataTypeInfo.SqlServer;
            tmpdataTypeInfo.Sqlite = cudataTypeInfo.Sqlite;
            tmpdataTypeInfo.Access = cudataTypeInfo.Access;
            tmpdataTypeInfo.CShort = cudataTypeInfo.CShort;
            tmpdataTypeInfo.lstInfo = cudataTypeInfo.lstInfo;

            // ��������
            cudataTypeInfo.Gid = predataTypeInfo.Gid;
            cudataTypeInfo.Name = predataTypeInfo.Name;
            cudataTypeInfo.ChineseName = predataTypeInfo.ChineseName;
            cudataTypeInfo.Oracle = predataTypeInfo.Oracle;
            cudataTypeInfo.Mysql = predataTypeInfo.Mysql;
            cudataTypeInfo.DB2 = predataTypeInfo.DB2;
            cudataTypeInfo.SqlServer = predataTypeInfo.SqlServer;
            cudataTypeInfo.Sqlite = predataTypeInfo.Sqlite;
            cudataTypeInfo.Access = predataTypeInfo.Access;
            cudataTypeInfo.CShort = predataTypeInfo.CShort;
            cudataTypeInfo.lstInfo = predataTypeInfo.lstInfo;

            predataTypeInfo.Gid = tmpdataTypeInfo.Gid;
            predataTypeInfo.Name = tmpdataTypeInfo.Name;
            predataTypeInfo.ChineseName = tmpdataTypeInfo.ChineseName;
            predataTypeInfo.Oracle = tmpdataTypeInfo.Oracle;
            predataTypeInfo.Mysql = tmpdataTypeInfo.Mysql;
            predataTypeInfo.DB2 = tmpdataTypeInfo.DB2;
            predataTypeInfo.SqlServer = tmpdataTypeInfo.SqlServer;
            predataTypeInfo.Sqlite = tmpdataTypeInfo.Sqlite;
            predataTypeInfo.Access = tmpdataTypeInfo.Access;
            predataTypeInfo.CShort = tmpdataTypeInfo.CShort;
            predataTypeInfo.lstInfo = tmpdataTypeInfo.lstInfo;

            // ��ϸXML����
            string cuXMLStr = xmlhelper.ReadInnerXML("datatype/item[@gid=\"" + cudataTypeInfo.Gid + "\"]");
            string preXMLStr = xmlhelper.ReadInnerXML("datatype/item[@gid=\"" + predataTypeInfo.Gid + "\"]");
            xmlhelper.Replace("datatype/item[@gid=\"" + cudataTypeInfo.Gid + "\"]", preXMLStr);
            xmlhelper.Replace("datatype/item[@gid=\"" + predataTypeInfo.Gid + "\"]", cuXMLStr);
            // ���� gid
            var cuattribute = xmlhelper.Read("datatype/item[@gid=\"" + cudataTypeInfo.Gid + "\"]").Item(0).ParentNode.Attributes["gid"];
            var preattribute = xmlhelper.Read("datatype/item[@gid=\"" + predataTypeInfo.Gid + "\"]").Item(0).ParentNode.Attributes["gid"];
            cuattribute.Value = predataTypeInfo.Gid;
            preattribute.Value = cudataTypeInfo.Gid;
            xmlhelper.Save(false);

            gridView1.RefreshData();
            gridView1.FocusedRowHandle = gridView1.FocusedRowHandle - 1;
        }

        /// <summary>
        /// ����
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnMoveDown_Click(object sender, EventArgs e)
        {
            if (gridView1.FocusedRowHandle == (gridView1.RowCount - 2))
                return;

            DefaultTypeInfo cudataTypeInfo = gridView1.GetFocusedRow() as DefaultTypeInfo;
            DefaultTypeInfo nextdataTypeInfo = gridView1.GetRow(gridView1.FocusedRowHandle + 1) as DefaultTypeInfo;

            // ���
            DefaultTypeInfo tmpdataTypeInfo = new DefaultTypeInfo();
            tmpdataTypeInfo.Gid = cudataTypeInfo.Gid;
            tmpdataTypeInfo.Name = cudataTypeInfo.Name;
            tmpdataTypeInfo.ChineseName = cudataTypeInfo.ChineseName;
            tmpdataTypeInfo.Oracle = cudataTypeInfo.Oracle;
            tmpdataTypeInfo.Mysql = cudataTypeInfo.Mysql;
            tmpdataTypeInfo.DB2 = cudataTypeInfo.DB2;
            tmpdataTypeInfo.SqlServer = cudataTypeInfo.SqlServer;
            tmpdataTypeInfo.Sqlite = cudataTypeInfo.Sqlite;
            tmpdataTypeInfo.Access = cudataTypeInfo.Access;
            tmpdataTypeInfo.CShort = cudataTypeInfo.CShort;
            tmpdataTypeInfo.lstInfo = cudataTypeInfo.lstInfo;

            // ��������
            cudataTypeInfo.Gid = nextdataTypeInfo.Gid;
            cudataTypeInfo.Name = nextdataTypeInfo.Name;
            cudataTypeInfo.ChineseName = nextdataTypeInfo.ChineseName;
            cudataTypeInfo.Oracle = nextdataTypeInfo.Oracle;
            cudataTypeInfo.Mysql = nextdataTypeInfo.Mysql;
            cudataTypeInfo.DB2 = nextdataTypeInfo.DB2;
            cudataTypeInfo.SqlServer = nextdataTypeInfo.SqlServer;
            cudataTypeInfo.Sqlite = nextdataTypeInfo.Sqlite;
            cudataTypeInfo.Access = nextdataTypeInfo.Access;
            cudataTypeInfo.CShort = nextdataTypeInfo.CShort;
            cudataTypeInfo.lstInfo = nextdataTypeInfo.lstInfo;

            nextdataTypeInfo.Gid = tmpdataTypeInfo.Gid;
            nextdataTypeInfo.Name = tmpdataTypeInfo.Name;
            nextdataTypeInfo.ChineseName = tmpdataTypeInfo.ChineseName;
            nextdataTypeInfo.Oracle = tmpdataTypeInfo.Oracle;
            nextdataTypeInfo.Mysql = tmpdataTypeInfo.Mysql;
            nextdataTypeInfo.DB2 = tmpdataTypeInfo.DB2;
            nextdataTypeInfo.SqlServer = tmpdataTypeInfo.SqlServer;
            nextdataTypeInfo.Sqlite = tmpdataTypeInfo.Sqlite;
            nextdataTypeInfo.Access = tmpdataTypeInfo.Access;
            nextdataTypeInfo.CShort = tmpdataTypeInfo.CShort;
            nextdataTypeInfo.lstInfo = tmpdataTypeInfo.lstInfo;

            // ��ϸXML����
            string cuXMLStr = xmlhelper.ReadInnerXML("datatype/item[@gid=\"" + cudataTypeInfo.Gid + "\"]");
            string preXMLStr = xmlhelper.ReadInnerXML("datatype/item[@gid=\"" + nextdataTypeInfo.Gid + "\"]");
            xmlhelper.Replace("datatype/item[@gid=\"" + cudataTypeInfo.Gid + "\"]", preXMLStr);
            xmlhelper.Replace("datatype/item[@gid=\"" + nextdataTypeInfo.Gid + "\"]", cuXMLStr);
            // ���� gid
            var cuattribute = xmlhelper.Read("datatype/item[@gid=\"" + cudataTypeInfo.Gid + "\"]").Item(0).ParentNode.Attributes["gid"];
            var nextattribute = xmlhelper.Read("datatype/item[@gid=\"" + nextdataTypeInfo.Gid + "\"]").Item(0).ParentNode.Attributes["gid"];
            cuattribute.Value = nextdataTypeInfo.Gid;
            nextattribute.Value = cudataTypeInfo.Gid;
            xmlhelper.Save(false);

            gridView1.RefreshData();
            gridView1.FocusedRowHandle = gridView1.FocusedRowHandle + 1;
        }

        /// <summary>
        /// ����
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnExport_Click(object sender, EventArgs e)
        {
            DataTable dt = DataTableHelper.CreateTable("������,����,Oracle,Mysql,DB2,SqlServer,Sqlite,Access");
            var lst = (gridView1.DataSource as List<DefaultTypeInfo>);
            for (int i = 0; i < lst.Count; i++)
            {
                DataRow row = dt.NewRow();
                row[0] = lst[i].Name;
                row[1] = lst[i].ChineseName;
                row[2] = lst[i].Oracle;
                row[3] = lst[i].Mysql;
                row[4] = lst[i].DB2;
                row[5] = lst[i].SqlServer;
                row[6] = lst[i].Sqlite;
                row[7] = lst[i].Access;
                row[8] = lst[i].CShort;
                dt.Rows.Add(row);
            }

            string saveFile = FileDialogHelper.SaveExcel("��׼��������.xls", "C:\\");
            if (!string.IsNullOrEmpty(saveFile))
            {
                MyXlsHelper.Export(dt, saveFile, "��׼��������", 1, 1);

                if (MessageDxUtil.ShowYesNoAndTips("����ɹ����Ƿ���ļ���") == System.Windows.Forms.DialogResult.Yes)
                {
                    System.Diagnostics.Process.Start(saveFile);
                }
            }
        }

        /// <summary>
        /// ����
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnImport_Click(object sender, EventArgs e)
        {
            string importFile = FileDialogHelper.OpenExcel(false);
            if (!string.IsNullOrEmpty(importFile))
            {
                // �ж��ļ��Ƿ�ռ��
                if (FileUtil.FileIsUsing(importFile))
                {
                    MessageDxUtil.ShowWarning(string.Format("�ļ�[{0}]��ռ�ã����ȹر��ļ���������!", importFile));
                    return;
                }

                DataTable dt = MyXlsHelper.Import(importFile, "��׼��������", 2, 1);

                // ���û�н�����Ͳ��ڼ���
                if (dt == null) return;

                Int32 addRows = 0;
                for (Int32 i = 0; i < dt.Rows.Count; i++)
                { 
                    // �ж��Ƿ���ڲ����������
                    if (!lstName.Contains(dt.Rows[i][0].ToString()))
                    {
                        var datatypeInfo = new DefaultTypeInfo();
                        datatypeInfo.Gid = System.Guid.NewGuid().ToString();
                        datatypeInfo.Name = dt.Rows[i][0].ToString();
                        datatypeInfo.ChineseName = dt.Rows[i][1].ToString();
                        datatypeInfo.Oracle = dt.Rows[i][2].ToString();
                        datatypeInfo.Mysql = dt.Rows[i][3].ToString();
                        datatypeInfo.DB2 = dt.Rows[i][4].ToString();
                        datatypeInfo.SqlServer = dt.Rows[i][5].ToString();
                        datatypeInfo.Sqlite = dt.Rows[i][6].ToString();
                        datatypeInfo.Access = dt.Rows[i][7].ToString();
                        datatypeInfo.CShort = dt.Rows[i][8].ToString();

                        xmlhelper.InsertElement("datatype", "item", "gid", datatypeInfo.Gid, string.Format(xmlModel, dt.Rows[i][0].ToString(), dt.Rows[i][1].ToString(), dt.Rows[i][2].ToString(), dt.Rows[i][3].ToString(), dt.Rows[i][4].ToString(), dt.Rows[i][5].ToString(), dt.Rows[i][6].ToString(), dt.Rows[i][7].ToString(), dt.Rows[i][8].ToString()));

                        (gridView1.DataSource as List<DefaultTypeInfo>).Insert((gridView1.DataSource as List<DefaultTypeInfo>).Count - 1, datatypeInfo);
                        addRows++;
                        lstName.Add(dt.Rows[i][0].ToString());
                    }
                }
                xmlhelper.Save(false);

                gridView1.RefreshData();
            }
        }

        /// <summary>
        /// ������Ϣ
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void barErrText_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var infoDetail = new FrmInfoDetail(0, _errlst);
            infoDetail.ShowDialog();
        }

        /// <summary>
        /// ������Ϣ
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void barWarningText_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var infoDetail = new FrmInfoDetail(1, _warnlst);
            infoDetail.ShowDialog();
        }

        /// <summary>
        /// ��ʾ��Ϣ
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void barInfoText_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var infoDetail = new FrmInfoDetail(2, _infolst);
            infoDetail.ShowDialog();
        }

        private void gridView1_ValidateRow(object sender, ValidateRowEventArgs e)
        {
            ClearValidate();

            ValidateData();

            InitView();
        }
    }
}
