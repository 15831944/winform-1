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
    public partial class FrmConstant : BaseDock
    {
        private ConstantInfo tmpconstantInfo = null;

        private XmlHelper xmlhelper = new XmlHelper(@"XML\constant.xml");

        private List<string> lstName = new List<string>();

        private string xmlModel = "<name>{0}</name><value>{1}</value><remark>{2}</remark>";

        private Int32 _errCount = 0;
        private List<CListItem> _errlst = new List<CListItem>();
        private Int32 _warnCount = 0;
        private List<CListItem> _warnlst = new List<CListItem>();
        private Int32 _infoCount = 0;
        private List<CListItem> _infolst = new List<CListItem>();

        public FrmConstant()
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
                string filter = string.Format("Name Like '%{0}%' or Value Like '%{0}%' or Remark Like '%{0}%'", txtSearch.Text);
                gridView1.ActiveFilterString = filter;
            }
            
        }

        /// <summary>
        /// ������
        /// </summary>
        private void BindData()
        {
            XmlNodeList xmlNodeLst = xmlhelper.Read("datatype");
            List<ConstantInfo> constantInfoList = new List<ConstantInfo>();
            foreach (XmlNode xn1 in xmlNodeLst)
            {
                ConstantInfo constantInfo = new ConstantInfo();
                // ���ڵ�ת��ΪԪ�أ����ڵõ��ڵ������ֵ
                XmlElement xe = (XmlElement)xn1;
                // �õ�Type��ISBN�������Ե�����ֵ
                constantInfo.GUID = xe.GetAttribute("guid").ToString();

                // �õ�ConstantInfo�ڵ�������ӽڵ�
                XmlNodeList xnl0 = xe.ChildNodes;
                constantInfo.Name = xnl0.Item(0).InnerText;
                constantInfo.Value = xnl0.Item(1).InnerText;
                constantInfo.Remark = xnl0.Item(2).InnerText;
                constantInfo.lstInfo = new Dictionary<string, DevExpress.XtraEditors.DXErrorProvider.ErrorInfo>();

                constantInfoList.Add(constantInfo);
            }

            // ���һ�п���
            constantInfoList.Add(new ConstantInfo());
            gridControl1.DataSource = constantInfoList;

            gridView1.Columns["GUID"].Visible = false;
            gridView1.Columns["lstInfo"].Visible = false;
        }



        /// <summary>
        /// У����ص������Ƿ�����쳣��
        /// </summary>
        private void ValidateData()
        {
            // ��ѯ�Ƿ����2����ֵ������
            List<ConstantInfo> lstConstantInfo = gridControl1.DataSource as List<ConstantInfo>;

            // �����ظ���Name��ֵ

            List<String> tmpName = new List<string>();
            foreach (ConstantInfo constantInfo in lstConstantInfo)
            {
                if (string.IsNullOrEmpty(constantInfo.GUID))
                    continue;

                if (lstName.Contains(constantInfo.Name))
                {
                    tmpName.Add(constantInfo.Name);
                }

                lstName.Add(constantInfo.Name);
            }

            foreach (ConstantInfo constantInfo in lstConstantInfo)
            {
                if (string.IsNullOrEmpty(constantInfo.GUID))
                    continue;

                // �ж��ظ��� ������
                if (tmpName.Contains(constantInfo.Name))
                {
                    if (constantInfo.lstInfo.ContainsKey("Name"))
                    {
                        constantInfo.lstInfo["Name"].ErrorText = constantInfo.lstInfo["Name"].ErrorText + "\r\n���ڼ�ֵ��ͬ������";
                        constantInfo.lstInfo["Name"].ErrorType = constantInfo.lstInfo["Name"].ErrorType >= DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical ? constantInfo.lstInfo["Name"].ErrorType : DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical;
                    }
                    else
                    {
                        constantInfo.lstInfo.Add("Name", new DevExpress.XtraEditors.DXErrorProvider.ErrorInfo("���ڼ�ֵ��ͬ������", DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical));
                        _errCount++;
                        // 20170901 wjm ����key ��value��˳��
                        _errlst.Add(new CListItem("���ڼ�ֵ��ͬ������", "����" + constantInfo.Name));
                    }
                }
                // �������жϴ��շ�
                if (constantInfo.Name.Length >= 1)
                {
                    if (!string.Equals(constantInfo.Name[0].ToString(), constantInfo.Name[0].ToString().ToUpper(), StringComparison.CurrentCulture))
                    {
                        if (constantInfo.lstInfo.ContainsKey("Name"))
                        {
                            constantInfo.lstInfo["Name"].ErrorText = constantInfo.lstInfo["Name"].ErrorText + "\r\n�����Դ��շ������淶";
                            constantInfo.lstInfo["Name"].ErrorType = constantInfo.lstInfo["Name"].ErrorType >= DevExpress.XtraEditors.DXErrorProvider.ErrorType.Warning ? constantInfo.lstInfo["Name"].ErrorType : DevExpress.XtraEditors.DXErrorProvider.ErrorType.Warning;
                        }
                        else
                        {
                            constantInfo.lstInfo.Add("Name", new DevExpress.XtraEditors.DXErrorProvider.ErrorInfo("�������Դ��շ�������", DevExpress.XtraEditors.DXErrorProvider.ErrorType.Warning));
                            _warnCount++;
                            // 20170901 wjm ����key ��value��˳��
                            _warnlst.Add(new CListItem("�����Դ��շ������淶", "����" + constantInfo.Name));
                        }
                    }
                }

                // �ж��������Ƿ�Ϊ��
                if (string.IsNullOrEmpty(constantInfo.Name))
                {
                    if (constantInfo.lstInfo.ContainsKey("Name"))
                    {
                        constantInfo.lstInfo["Name"].ErrorText = constantInfo.lstInfo["Name"].ErrorText + "\r\n���Ʋ���Ϊ��";
                        constantInfo.lstInfo["Name"].ErrorType = constantInfo.lstInfo["Name"].ErrorType >= DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical ? constantInfo.lstInfo["Name"].ErrorType : DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical;
                    }
                    else
                    {
                        constantInfo.lstInfo.Add("Name", new DevExpress.XtraEditors.DXErrorProvider.ErrorInfo("���Ʋ���Ϊ��", DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical));
                        _errCount++;
                        // 20170901 wjm ����key ��value��˳��
                        _errlst.Add(new CListItem("���Ʋ���Ϊ��", "����" + constantInfo.Name));
                    }
                }
                // �ж������Ƿ�Ϊ��
                if (string.IsNullOrEmpty(constantInfo.Value))
                {
                    if (constantInfo.lstInfo.ContainsKey("Value"))
                    {
                        constantInfo.lstInfo["Value"].ErrorText = constantInfo.lstInfo["Value"].ErrorText + "\r\n����ֵ����Ϊ��";
                        constantInfo.lstInfo["Value"].ErrorType = constantInfo.lstInfo["Value"].ErrorType >= DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical ? constantInfo.lstInfo["Value"].ErrorType : DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical;
                    }
                    else
                    {
                        constantInfo.lstInfo.Add("Value", new DevExpress.XtraEditors.DXErrorProvider.ErrorInfo("����ֵ����Ϊ��", DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical));
                        _errCount++;
                        // 20170901 wjm ����key ��value��˳��
                        _errlst.Add(new CListItem("����ֵ����Ϊ��", "����ֵ" + constantInfo.Name));
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
            List<ConstantInfo> lstConstantInfo = gridControl1.DataSource as List<ConstantInfo>;

            foreach (ConstantInfo constantInfo in lstConstantInfo)
            {
                if (string.IsNullOrEmpty(constantInfo.GUID))
                    continue;

                constantInfo.lstInfo.Clear();
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
            XmlNodeList xmlNodeLst = xmlhelper.Read("datatype/item[@guid=\"" + tmpconstantInfo.GUID + "\"]");
            Int32 idx = -1;

            switch (e.Column.ToString())
            {
                case "����":
                    idx = 0;
                    break;
                case "����ֵ":
                    idx = 1;
                    break;
                case "˵��":
                    idx = 2;
                    break;
            }
            
           if (idx == -1)
                return;

            xmlNodeLst.Item(idx).InnerText = e.Value.ToString();
            xmlhelper.Save(false);

            tmpconstantInfo = null;
        }

        private void gridView1_CellValueChanging(object sender, DevExpress.XtraGrid.Views.Base.CellValueChangedEventArgs e)
        {
            if (string.IsNullOrEmpty((gridView1.GetFocusedRow() as ConstantInfo).GUID) && (gridView1.FocusedRowHandle + 1 == gridView1.RowCount))
            {
                btnAdd_Click(null, null);
            }

            tmpconstantInfo = gridView1.GetRow(e.RowHandle) as ConstantInfo;
        }

        /// <summary>
        /// ����
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnAdd_Click(object sender, EventArgs e)
        {
            var constantInfo = new ConstantInfo();
            constantInfo.GUID = System.Guid.NewGuid().ToString();
            constantInfo.lstInfo = new Dictionary<string, DevExpress.XtraEditors.DXErrorProvider.ErrorInfo>();

            xmlhelper.InsertElement("datatype", "item", "guid", constantInfo.GUID, string.Format(xmlModel, string.Empty, string.Empty, string.Empty));
            xmlhelper.Save(false);

            (gridView1.DataSource as List<ConstantInfo>).Insert(gridView1.RowCount - 1, constantInfo);
            gridView1.RefreshData();
        }

        /// <summary>
        /// ����
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnInsert_Click(object sender, EventArgs e)
        {
            XmlNodeList xmlNodeLst = xmlhelper.Read("datatype/item[@guid=\"" + (gridView1.GetFocusedRow() as ConstantInfo).GUID + "\"]");
            var constantInfo = new ConstantInfo();
            constantInfo.GUID = System.Guid.NewGuid().ToString();
            constantInfo.lstInfo = new Dictionary<string, DevExpress.XtraEditors.DXErrorProvider.ErrorInfo>();
            xmlhelper.InsertElement("item", "guid", constantInfo.GUID, string.Format(xmlModel, string.Empty, string.Empty, string.Empty), xmlNodeLst.Item(0).ParentNode);
            xmlhelper.Save(false);

            (gridView1.DataSource as List<ConstantInfo>).Insert(gridView1.FocusedRowHandle, constantInfo);
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
            if (string.IsNullOrEmpty((gridView1.GetFocusedRow() as ConstantInfo).GUID))
                return;

            xmlhelper.DeleteByPathNode("datatype/item[@guid=\"" + gridView1.GetRowCellDisplayText(gridView1.FocusedRowHandle, "GUID") + "\"]");
            xmlhelper.Save(false);

            // 20170924 wjm ɾ��lstName ��Ӧ��ֵ���浼���ʱ�򻺴�����
            lstName.Remove(gridView1.GetRowCellDisplayText(gridView1.FocusedRowHandle, "Name"));

            (gridView1.DataSource as List<ConstantInfo>).RemoveAt(gridView1.FocusedRowHandle);
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

            ConstantInfo cuconstantInfo = gridView1.GetFocusedRow() as ConstantInfo;
            ConstantInfo preconstantInfo = gridView1.GetRow(gridView1.FocusedRowHandle - 1) as ConstantInfo;
            // ���
            ConstantInfo tmpconstantInfo = new ConstantInfo();
            tmpconstantInfo.GUID = cuconstantInfo.GUID;
            tmpconstantInfo.Name = cuconstantInfo.Name;
            tmpconstantInfo.Value = cuconstantInfo.Value;
            tmpconstantInfo.Remark = cuconstantInfo.Remark;
            tmpconstantInfo.lstInfo = cuconstantInfo.lstInfo;

            // ��������
            cuconstantInfo.GUID = preconstantInfo.GUID;
            cuconstantInfo.Name = preconstantInfo.Name;
            cuconstantInfo.Value = preconstantInfo.Value;
            cuconstantInfo.Remark = preconstantInfo.Remark;
            cuconstantInfo.lstInfo = preconstantInfo.lstInfo;

            preconstantInfo.GUID = tmpconstantInfo.GUID;
            preconstantInfo.Name = tmpconstantInfo.Name;
            preconstantInfo.Value = tmpconstantInfo.Value;
            preconstantInfo.Remark = tmpconstantInfo.Remark;
            preconstantInfo.lstInfo = tmpconstantInfo.lstInfo;

            // ��ϸXML����
            string cuXMLStr = xmlhelper.ReadInnerXML("datatype/item[@guid=\"" + cuconstantInfo.GUID + "\"]");
            string preXMLStr = xmlhelper.ReadInnerXML("datatype/item[@guid=\"" + preconstantInfo.GUID + "\"]");
            xmlhelper.Replace("datatype/item[@guid=\"" + cuconstantInfo.GUID + "\"]", preXMLStr);
            xmlhelper.Replace("datatype/item[@guid=\"" + preconstantInfo.GUID + "\"]", cuXMLStr);
            // ����GUID
            var cuattribute = xmlhelper.Read("datatype/item[@guid=\"" + cuconstantInfo.GUID + "\"]").Item(0).ParentNode.Attributes["guid"];
            var preattribute = xmlhelper.Read("datatype/item[@guid=\"" + preconstantInfo.GUID + "\"]").Item(0).ParentNode.Attributes["guid"];
            cuattribute.Value = preconstantInfo.GUID;
            preattribute.Value = cuconstantInfo.GUID;
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

            ConstantInfo cuconstantInfo = gridView1.GetFocusedRow() as ConstantInfo;
            ConstantInfo nextconstantInfo = gridView1.GetRow(gridView1.FocusedRowHandle + 1) as ConstantInfo;

            // ���
            ConstantInfo tmpconstantInfo = new ConstantInfo();
            tmpconstantInfo.GUID = cuconstantInfo.GUID;
            tmpconstantInfo.Name = cuconstantInfo.Name;
            tmpconstantInfo.Value = cuconstantInfo.Value;
            tmpconstantInfo.Remark = cuconstantInfo.Remark;
            tmpconstantInfo.lstInfo = cuconstantInfo.lstInfo;

            // ��������
            cuconstantInfo.GUID = nextconstantInfo.GUID;
            cuconstantInfo.Name = nextconstantInfo.Name;
            cuconstantInfo.Value = nextconstantInfo.Value;
            cuconstantInfo.Remark = nextconstantInfo.Remark;
            cuconstantInfo.lstInfo = nextconstantInfo.lstInfo;

            nextconstantInfo.GUID = tmpconstantInfo.GUID;
            nextconstantInfo.Name = tmpconstantInfo.Name;
            nextconstantInfo.Value = tmpconstantInfo.Value;
            nextconstantInfo.Remark = tmpconstantInfo.Remark;
            nextconstantInfo.lstInfo = tmpconstantInfo.lstInfo;

            // ��ϸXML����
            string cuXMLStr = xmlhelper.ReadInnerXML("datatype/item[@guid=\"" + cuconstantInfo.GUID + "\"]");
            string preXMLStr = xmlhelper.ReadInnerXML("datatype/item[@guid=\"" + nextconstantInfo.GUID + "\"]");
            xmlhelper.Replace("datatype/item[@guid=\"" + cuconstantInfo.GUID + "\"]", preXMLStr);
            xmlhelper.Replace("datatype/item[@guid=\"" + nextconstantInfo.GUID + "\"]", cuXMLStr);
            // ����GUID
            var cuattribute = xmlhelper.Read("datatype/item[@guid=\"" + cuconstantInfo.GUID + "\"]").Item(0).ParentNode.Attributes["guid"];
            var nextattribute = xmlhelper.Read("datatype/item[@guid=\"" + nextconstantInfo.GUID + "\"]").Item(0).ParentNode.Attributes["guid"];
            cuattribute.Value = nextconstantInfo.GUID;
            nextattribute.Value = cuconstantInfo.GUID;
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
            DataTable dt = DataTableHelper.CreateTable("����,����ֵ,˵��");
            var lst = (gridView1.DataSource as List<ConstantInfo>);
            for (int i = 0; i < lst.Count; i++)
            {
                DataRow row = dt.NewRow();
                row[0] = lst[i].Name;
                row[1] = lst[i].Value;
                row[2] = lst[i].Remark;
                dt.Rows.Add(row);
            }

            string saveFile = FileDialogHelper.SaveExcel("�û�����.xls", "C:\\");
            if (!string.IsNullOrEmpty(saveFile))
            {
                MyXlsHelper.Export(dt, saveFile, "�û�����", 1, 1);

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

                DataTable dt = MyXlsHelper.Import(importFile, "�û�����", 2, 1);

                // ���û�н�����Ͳ��ڼ���
                if (dt == null) return;

                Int32 addRows = 0;
                for (Int32 i = 0; i < dt.Rows.Count; i++)
                { 
                    // �ж��Ƿ���ڲ����������
                    if (!lstName.Contains(dt.Rows[i][0].ToString()))
                    {
                        var constantInfo = new ConstantInfo();
                        constantInfo.GUID = System.Guid.NewGuid().ToString();
                        constantInfo.Name = dt.Rows[i][0].ToString();
                        constantInfo.Value = dt.Rows[i][1].ToString();
                        constantInfo.Remark = dt.Rows[i][2].ToString();

                        xmlhelper.InsertElement("datatype", "item", "guid", constantInfo.GUID, string.Format(xmlModel, dt.Rows[i][0].ToString(), dt.Rows[i][1].ToString(), dt.Rows[i][2].ToString()));

                        (gridView1.DataSource as List<ConstantInfo>).Insert(gridView1.RowCount - 1, constantInfo);
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
