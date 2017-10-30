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
    public partial class FrmDataType : BaseDock
    {
        private DataTypeInfo tmpdataTypeInfo = null;

        private XmlHelper xmlhelper = new XmlHelper(@"XML\datatype.xml");

        private List<string> lstName = new List<string>();

        private string xmlModel = "<name>{0}</name><chineseName>{1}</chineseName><stdType>{2}</stdType><length>{3}</length><precision>{4}</precision><remark>{5}</remark>";

        private Int32 _errCount = 0;
        private List<CListItem> _errlst = new List<CListItem>();
        private Int32 _warnCount = 0;
        private List<CListItem> _warnlst = new List<CListItem>();
        private Int32 _infoCount = 0;
        private List<CListItem> _infolst = new List<CListItem>();

        public FrmDataType()
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
                string filter = string.Format("Name Like '%{0}%' or ChineseName Like '%{0}%' or StdType Like '%{0}%' or  Length Like '%{0}%' or  Precision Like '%{0}%' or  Remark Like '%{0}%'", txtSearch.Text);
                gridView1.ActiveFilterString = filter;
            }
            
        }

        /// <summary>
        /// ������
        /// </summary>
        private void BindData()
        {
            XmlNodeList xmlNodeLst = xmlhelper.Read("datatype");
            List<DataTypeInfo> dataTypeInfoList = new List<DataTypeInfo>();
            foreach (XmlNode xn1 in xmlNodeLst)
            {
                DataTypeInfo dataTypeInfo = new DataTypeInfo();
                // ���ڵ�ת��ΪԪ�أ����ڵõ��ڵ������ֵ
                XmlElement xe = (XmlElement)xn1;
                // �õ�Type��ISBN�������Ե�����ֵ
                dataTypeInfo.GUID = xe.GetAttribute("guid").ToString();

                // �õ�DataTypeInfo�ڵ�������ӽڵ�
                XmlNodeList xnl0 = xe.ChildNodes;
                dataTypeInfo.Name = xnl0.Item(0).InnerText;
                dataTypeInfo.ChineseName = xnl0.Item(1).InnerText;
                dataTypeInfo.StdType = xnl0.Item(2).InnerText;
                dataTypeInfo.Length = xnl0.Item(3).InnerText;
                dataTypeInfo.Precision = xnl0.Item(4).InnerText;
                dataTypeInfo.Remark = xnl0.Item(5).InnerText;
                dataTypeInfo.lstInfo = new Dictionary<string, DevExpress.XtraEditors.DXErrorProvider.ErrorInfo>();

                dataTypeInfoList.Add(dataTypeInfo);
            }

            #region ��stdType ����Դ

            XmlHelper defaulttypexmlHelper = new XmlHelper(@"XML\defaulttype.xml");
            XmlNodeList defaulttypexmlNodeLst = defaulttypexmlHelper.Read("datatype");
            List<CListItem> defaultTypeInfoList = new List<CListItem>();
            foreach (XmlNode xn1 in defaulttypexmlNodeLst)
            {
                // ���ڵ�ת��ΪԪ�أ����ڵõ��ڵ������ֵ
                XmlElement xe = (XmlElement)xn1;
                // �õ�DataTypeInfo�ڵ�������ӽڵ�
                XmlNodeList xnl0 = xe.ChildNodes;
                CListItem listItem = new CListItem(xnl0.Item(0).InnerText, string.Format("{0}-{1}", xnl0.Item(0).InnerText, xnl0.Item(1).InnerText));

                defaultTypeInfoList.Add(listItem);
            }

            repositoryItemLookUpEditStdType.DataSource = defaultTypeInfoList;
            #endregion

            // ���һ�п���
            dataTypeInfoList.Add(new DataTypeInfo());
            gridControl1.DataSource = dataTypeInfoList;

            gridView1.Columns["GUID"].Visible = false;
            gridView1.Columns["lstInfo"].Visible = false;
            gridView1.Columns["StdType"].ColumnEdit = repositoryItemLookUpEditStdType;
            gridView1.Columns["Length"].ColumnEdit = repositoryItemSpinEditLength;
            gridView1.Columns["Precision"].ColumnEdit = repositoryItemSpinEditPrecision;
        }



        /// <summary>
        /// У����ص������Ƿ�����쳣��
        /// </summary>
        private void ValidateData()
        {
            // ��ѯ�Ƿ����2����ֵ������
            List<DataTypeInfo> lstDataTypeInfo = gridControl1.DataSource as List<DataTypeInfo>;

            // �����ظ���Name��ֵ

            List<String> tmpName = new List<string>();
            foreach (DataTypeInfo dataTypeInfo in lstDataTypeInfo)
            {
                if (string.IsNullOrEmpty(dataTypeInfo.GUID))
                    continue;

                if (lstName.Contains(dataTypeInfo.Name))
                {
                    tmpName.Add(dataTypeInfo.Name);
                }

                lstName.Add(dataTypeInfo.Name);
            }

            foreach (DataTypeInfo dataTypeInfo in lstDataTypeInfo)
            {
                if (string.IsNullOrEmpty(dataTypeInfo.GUID))
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
                        _errlst.Add(new CListItem("���ڼ�ֵ��ͬ��������", "������" + dataTypeInfo.Name));
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
                        _errlst.Add(new CListItem( "����������Ϊ��", "������" + dataTypeInfo.Name));
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
                // �жϱ�׼�����Ƿ�Ϊ��
                if (string.IsNullOrEmpty(dataTypeInfo.StdType))
                {
                    if (dataTypeInfo.lstInfo.ContainsKey("StdType"))
                    {
                        dataTypeInfo.lstInfo["StdType"].ErrorText = dataTypeInfo.lstInfo["StdType"].ErrorText + "\r\n��׼���Ͳ���Ϊ��";
                        dataTypeInfo.lstInfo["StdType"].ErrorType = dataTypeInfo.lstInfo["StdType"].ErrorType >= DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical ? dataTypeInfo.lstInfo["StdType"].ErrorType : DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical;
                    }
                    else
                    {
                        dataTypeInfo.lstInfo.Add("StdType", new DevExpress.XtraEditors.DXErrorProvider.ErrorInfo("��׼���Ͳ���Ϊ��", DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical));
                        _errCount++;
                        // 20170901 wjm ����key ��value��˳��
                        _errlst.Add(new CListItem("��׼���Ͳ���Ϊ��", "StdType" + dataTypeInfo.Name));
                    }
                }
                // �жϳ����Ƿ�Ϊ��
                if (string.IsNullOrEmpty(dataTypeInfo.Length))
                {
                    if (dataTypeInfo.lstInfo.ContainsKey("Length"))
                    {
                        dataTypeInfo.lstInfo["Length"].ErrorText = dataTypeInfo.lstInfo["Length"].ErrorText + "\r\n���Ȳ���Ϊ��";
                        dataTypeInfo.lstInfo["Length"].ErrorType = dataTypeInfo.lstInfo["Length"].ErrorType >= DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical ? dataTypeInfo.lstInfo["Length"].ErrorType : DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical;
                    }
                    else
                    {
                        dataTypeInfo.lstInfo.Add("Length", new DevExpress.XtraEditors.DXErrorProvider.ErrorInfo("���Ȳ���Ϊ��", DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical));
                        _errCount++;
                        // 20170901 wjm ����key ��value��˳��
                        _errlst.Add(new CListItem( "���Ȳ���Ϊ��", "Length" + dataTypeInfo.Name));
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
            List<DataTypeInfo> lstDataTypeInfo = gridControl1.DataSource as List<DataTypeInfo>;

            foreach (DataTypeInfo dataTypeInfo in lstDataTypeInfo)
            {
                if (string.IsNullOrEmpty(dataTypeInfo.GUID))
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

        private void gridView1_DoubleClick(object sender, EventArgs e)
        {
            gridView1.OptionsBehavior.Editable = true;
        }

        private void gridView1_BeforeLeaveRow(object sender, DevExpress.XtraGrid.Views.Base.RowAllowEventArgs e)
        {
            gridView1.OptionsBehavior.Editable = false;
        }

        private void gridView1_CellValueChanged(object sender, DevExpress.XtraGrid.Views.Base.CellValueChangedEventArgs e)
        {

            // xmlhelper.Read("bookstore/book[@ISBN=\"7-111-19149-6\"]") Attributes ������
            // xmlhelper.Read("bookstore/book[title=\"�����Ӳ����������\"]") �ڲ��ڵ�
            XmlNodeList xmlNodeLst = xmlhelper.Read("datatype/item[@guid=\"" + tmpdataTypeInfo.GUID + "\"]");
            Int32 idx = -1;

            switch (e.Column.ToString())
            {
                case "������":
                    idx = 0;
                    break;
                case "��������":
                    idx = 1;
                    break;
                case "��׼����":
                    idx = 2;
                    break;
                case "����":
                    idx = 3;
                    break;
                case "����":
                    idx = 4;
                    break;
                case "��ע":
                    idx = 5;
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
            if (string.IsNullOrEmpty((gridView1.GetFocusedRow() as DataTypeInfo).GUID) && (gridView1.FocusedRowHandle + 1 == gridView1.RowCount))
            {
                btnAdd_Click(null, null);
            }

            tmpdataTypeInfo = gridView1.GetRow(e.RowHandle) as DataTypeInfo;
        }

        /// <summary>
        /// ����
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnAdd_Click(object sender, EventArgs e)
        {
            var datatypeInfo = new DataTypeInfo();
            datatypeInfo.GUID = System.Guid.NewGuid().ToString();
            datatypeInfo.lstInfo = new Dictionary<string, DevExpress.XtraEditors.DXErrorProvider.ErrorInfo>();

            xmlhelper.InsertElement("datatype", "item", "guid", datatypeInfo.GUID, string.Format(xmlModel, string.Empty, string.Empty, string.Empty, string.Empty, string.Empty, string.Empty, string.Empty, string.Empty));
            xmlhelper.Save(false);

            (gridView1.DataSource as List<DataTypeInfo>).Insert(gridView1.RowCount - 1, datatypeInfo);
            gridView1.RefreshData();
        }

        /// <summary>
        /// ����
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnInsert_Click(object sender, EventArgs e)
        {
            XmlNodeList xmlNodeLst = xmlhelper.Read("datatype/item[@guid=\"" + (gridView1.GetFocusedRow() as DataTypeInfo).GUID + "\"]");
            var datatypeInfo = new DataTypeInfo();
            datatypeInfo.GUID = System.Guid.NewGuid().ToString();
            datatypeInfo.lstInfo = new Dictionary<string, DevExpress.XtraEditors.DXErrorProvider.ErrorInfo>();
            xmlhelper.InsertElement("item", "guid", datatypeInfo.GUID, string.Format(xmlModel, string.Empty, string.Empty, string.Empty, string.Empty, string.Empty, string.Empty, string.Empty, string.Empty), xmlNodeLst.Item(0).ParentNode);
            xmlhelper.Save(false);

            (gridView1.DataSource as List<DataTypeInfo>).Insert(gridView1.FocusedRowHandle, datatypeInfo);
            gridView1.RefreshData();
        }

        /// <summary>
        /// ɾ����׼����
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnDel_Click(object sender, EventArgs e)
        {
            // 20170824 ��������һ�п������ټ�������
            if (string.IsNullOrEmpty((gridView1.GetFocusedRow() as DataTypeInfo).GUID))
                return;

            xmlhelper.DeleteByPathNode("datatype/item[@guid=\"" + gridView1.GetRowCellDisplayText(gridView1.FocusedRowHandle, "GUID") + "\"]");
            xmlhelper.Save(false);

            // 20170924 wjm ɾ��lstName ��Ӧ��ֵ���浼���ʱ�򻺴�����
            lstName.Remove(gridView1.GetRowCellDisplayText(gridView1.FocusedRowHandle, "Name"));

            (gridView1.DataSource as List<DataTypeInfo>).RemoveAt(gridView1.FocusedRowHandle);
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

            DataTypeInfo cudataTypeInfo = gridView1.GetFocusedRow() as DataTypeInfo;
            DataTypeInfo predataTypeInfo = gridView1.GetRow(gridView1.FocusedRowHandle - 1) as DataTypeInfo;
            // ���
            DataTypeInfo tmpdataTypeInfo = new DataTypeInfo();
            tmpdataTypeInfo.GUID = cudataTypeInfo.GUID;
            tmpdataTypeInfo.Name = cudataTypeInfo.Name;
            tmpdataTypeInfo.ChineseName = cudataTypeInfo.ChineseName;
            tmpdataTypeInfo.StdType = cudataTypeInfo.StdType;
            tmpdataTypeInfo.Length = cudataTypeInfo.Length;
            tmpdataTypeInfo.Precision = cudataTypeInfo.Precision;
            tmpdataTypeInfo.Remark = cudataTypeInfo.Remark;
            tmpdataTypeInfo.lstInfo = cudataTypeInfo.lstInfo;

            // ��������
            cudataTypeInfo.GUID = predataTypeInfo.GUID;
            cudataTypeInfo.Name = predataTypeInfo.Name;
            cudataTypeInfo.ChineseName = predataTypeInfo.ChineseName;
            cudataTypeInfo.StdType = predataTypeInfo.StdType;
            cudataTypeInfo.Length = predataTypeInfo.Length;
            cudataTypeInfo.Precision = predataTypeInfo.Precision;
            cudataTypeInfo.Remark = predataTypeInfo.Remark;
            cudataTypeInfo.lstInfo = predataTypeInfo.lstInfo;

            predataTypeInfo.GUID = tmpdataTypeInfo.GUID;
            predataTypeInfo.Name = tmpdataTypeInfo.Name;
            predataTypeInfo.ChineseName = tmpdataTypeInfo.ChineseName;
            predataTypeInfo.StdType = tmpdataTypeInfo.StdType;
            predataTypeInfo.Length = tmpdataTypeInfo.Length;
            predataTypeInfo.Precision = tmpdataTypeInfo.Precision;
            predataTypeInfo.Remark = tmpdataTypeInfo.Remark;
            predataTypeInfo.lstInfo = tmpdataTypeInfo.lstInfo;

            // ��ϸXML����
            string cuXMLStr = xmlhelper.ReadInnerXML("datatype/item[@guid=\"" + cudataTypeInfo.GUID + "\"]");
            string preXMLStr = xmlhelper.ReadInnerXML("datatype/item[@guid=\"" + predataTypeInfo.GUID + "\"]");
            xmlhelper.Replace("datatype/item[@guid=\"" + cudataTypeInfo.GUID + "\"]", preXMLStr);
            xmlhelper.Replace("datatype/item[@guid=\"" + predataTypeInfo.GUID + "\"]", cuXMLStr);
            // ����GUID
            var cuattribute = xmlhelper.Read("datatype/item[@guid=\"" + cudataTypeInfo.GUID + "\"]").Item(0).ParentNode.Attributes["guid"];
            var preattribute = xmlhelper.Read("datatype/item[@guid=\"" + predataTypeInfo.GUID + "\"]").Item(0).ParentNode.Attributes["guid"];
            cuattribute.Value = predataTypeInfo.GUID;
            preattribute.Value = cudataTypeInfo.GUID;
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

            DataTypeInfo cudataTypeInfo = gridView1.GetFocusedRow() as DataTypeInfo;
            DataTypeInfo nextdataTypeInfo = gridView1.GetRow(gridView1.FocusedRowHandle + 1) as DataTypeInfo;

            // ���
            DataTypeInfo tmpdataTypeInfo = new DataTypeInfo();
            tmpdataTypeInfo.GUID = cudataTypeInfo.GUID;
            tmpdataTypeInfo.Name = cudataTypeInfo.Name;
            tmpdataTypeInfo.ChineseName = cudataTypeInfo.ChineseName;
            tmpdataTypeInfo.StdType = cudataTypeInfo.StdType;
            tmpdataTypeInfo.Length = cudataTypeInfo.Length;
            tmpdataTypeInfo.Precision = cudataTypeInfo.Precision;
            tmpdataTypeInfo.Remark = cudataTypeInfo.Remark;
            tmpdataTypeInfo.lstInfo = cudataTypeInfo.lstInfo;

            // ��������
            cudataTypeInfo.GUID = nextdataTypeInfo.GUID;
            cudataTypeInfo.Name = nextdataTypeInfo.Name;
            cudataTypeInfo.ChineseName = nextdataTypeInfo.ChineseName;
            cudataTypeInfo.StdType = nextdataTypeInfo.StdType;
            cudataTypeInfo.Length = nextdataTypeInfo.Length;
            cudataTypeInfo.Precision = nextdataTypeInfo.Precision;
            cudataTypeInfo.Remark = nextdataTypeInfo.Remark;
            cudataTypeInfo.lstInfo = nextdataTypeInfo.lstInfo;

            nextdataTypeInfo.GUID = tmpdataTypeInfo.GUID;
            nextdataTypeInfo.Name = tmpdataTypeInfo.Name;
            nextdataTypeInfo.ChineseName = tmpdataTypeInfo.ChineseName;
            nextdataTypeInfo.StdType = tmpdataTypeInfo.StdType;
            nextdataTypeInfo.Length = tmpdataTypeInfo.Length;
            nextdataTypeInfo.Precision = tmpdataTypeInfo.Precision;
            nextdataTypeInfo.Remark = tmpdataTypeInfo.Remark;
            nextdataTypeInfo.lstInfo = tmpdataTypeInfo.lstInfo;

            // ��ϸXML����
            string cuXMLStr = xmlhelper.ReadInnerXML("datatype/item[@guid=\"" + cudataTypeInfo.GUID + "\"]");
            string preXMLStr = xmlhelper.ReadInnerXML("datatype/item[@guid=\"" + nextdataTypeInfo.GUID + "\"]");
            xmlhelper.Replace("datatype/item[@guid=\"" + cudataTypeInfo.GUID + "\"]", preXMLStr);
            xmlhelper.Replace("datatype/item[@guid=\"" + nextdataTypeInfo.GUID + "\"]", cuXMLStr);
            // ����GUID
            var cuattribute = xmlhelper.Read("datatype/item[@guid=\"" + cudataTypeInfo.GUID + "\"]").Item(0).ParentNode.Attributes["guid"];
            var nextattribute = xmlhelper.Read("datatype/item[@guid=\"" + nextdataTypeInfo.GUID + "\"]").Item(0).ParentNode.Attributes["guid"];
            cuattribute.Value = nextdataTypeInfo.GUID;
            nextattribute.Value = cudataTypeInfo.GUID;
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
            var lst = (gridView1.DataSource as List<DataTypeInfo>);
            for (int i = 0; i < lst.Count; i++)
            {
                DataRow row = dt.NewRow();
                row[0] = lst[i].Name;
                row[1] = lst[i].ChineseName;
                row[2] = lst[i].StdType;
                row[3] = lst[i].Length;
                row[4] = lst[i].Precision;
                row[5] = lst[i].Remark;
                dt.Rows.Add(row);
            }

            string saveFile = FileDialogHelper.SaveExcel("ҵ����������.xls", "C:\\");
            if (!string.IsNullOrEmpty(saveFile))
            {
                MyXlsHelper.Export(dt, saveFile, "ҵ����������", 1, 1);

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
                        var datatypeInfo = new DataTypeInfo();
                        datatypeInfo.GUID = System.Guid.NewGuid().ToString();
                        datatypeInfo.Name = dt.Rows[i][0].ToString();
                        datatypeInfo.ChineseName = dt.Rows[i][1].ToString();
                        datatypeInfo.StdType = dt.Rows[i][2].ToString();
                        datatypeInfo.Length = dt.Rows[i][3].ToString();
                        datatypeInfo.Precision = dt.Rows[i][4].ToString();
                        datatypeInfo.Remark = dt.Rows[i][5].ToString();
                    
                        xmlhelper.InsertElement("datatype", "item", "guid", datatypeInfo.GUID, string.Format(xmlModel, dt.Rows[i][0].ToString(), dt.Rows[i][1].ToString(), dt.Rows[i][2].ToString(), dt.Rows[i][3].ToString(), dt.Rows[i][4].ToString(), dt.Rows[i][5].ToString(), dt.Rows[i][6].ToString(), dt.Rows[i][7].ToString()));

                        (gridView1.DataSource as List<DataTypeInfo>).Insert(gridView1.RowCount - 1, datatypeInfo);
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

        /// <summary>
        /// �㿪ҵ�����͵�ʱ��ˢ���������ֵ
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void gridView1_CustomRowCellEditForEditing(object sender, DevExpress.XtraGrid.Views.Grid.CustomRowCellEditEventArgs e)
        {
            if (string.Equals(e.Column.FieldName, "StdType"))
            {
                #region ��stdType ����Դ

                XmlHelper defaulttypexmlHelper = new XmlHelper(@"XML\defaulttype.xml");
                XmlNodeList defaulttypexmlNodeLst = defaulttypexmlHelper.Read("datatype");
                List<CListItem> defaultTypeInfoList = new List<CListItem>();
                foreach (XmlNode xn1 in defaulttypexmlNodeLst)
                {
                    // ���ڵ�ת��ΪԪ�أ����ڵõ��ڵ������ֵ
                    XmlElement xe = (XmlElement)xn1;
                    // �õ�DataTypeInfo�ڵ�������ӽڵ�
                    XmlNodeList xnl0 = xe.ChildNodes;
                    CListItem listItem = new CListItem(xnl0.Item(0).InnerText, string.Format("{0}-{1}", xnl0.Item(0).InnerText, xnl0.Item(1).InnerText));

                    defaultTypeInfoList.Add(listItem);
                }

                repositoryItemLookUpEditStdType.DataSource = defaultTypeInfoList;
                #endregion
            }
        }
    }
}
