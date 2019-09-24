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
    public partial class FrmErrorno : BaseDock
    {
        private ErrornoInfo tmperrornoInfo = null;

        private XmlHelper xmlhelper = new XmlHelper(@"XML\errorno.xml");

        private List<string> lstName = new List<string>();

        private string xmlModel = "<name>{0}</name><chineseName>{1}</chineseName><errType>{2}</errType><remark>{3}</remark>";

        private Int32 _errCount = 0;
        private List<CListItem> _errlst = new List<CListItem>();
        private Int32 _warnCount = 0;
        private List<CListItem> _warnlst = new List<CListItem>();
        private Int32 _infoCount = 0;
        private List<CListItem> _infolst = new List<CListItem>();

        public FrmErrorno()
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
                string filter = string.Format("Name Like '%{0}%' or ChineseName Like '%{0}%' or LogLevel Like '%{0}%' or Remark Like '%{0}%' ", txtSearch.Text);
                gridView1.ActiveFilterString = filter;
            }
            
        }

        /// <summary>
        /// ������
        /// </summary>
        private void BindData()
        {
            XmlNodeList xmlNodeLst = xmlhelper.Read("datatype");
            List<ErrornoInfo> errornoInfoList = new List<ErrornoInfo>();
            foreach (XmlNode xn1 in xmlNodeLst)
            {
                ErrornoInfo errornoInfo = new ErrornoInfo();
                // ���ڵ�ת��ΪԪ�أ����ڵõ��ڵ������ֵ
                XmlElement xe = (XmlElement)xn1;
                // �õ�Type��ISBN�������Ե�����ֵ
                errornoInfo.Gid = xe.GetAttribute("gid").ToString();

                // �õ�ErrornoInfo�ڵ�������ӽڵ�
                XmlNodeList xnl0 = xe.ChildNodes;
                errornoInfo.Name = xnl0.Item(0).InnerText;
                errornoInfo.ChineseName = xnl0.Item(1).InnerText;
                errornoInfo.LogLevel = Convert.ToInt16( xnl0.Item(2).InnerText );
                errornoInfo.Remark = xnl0.Item(3).InnerText;
                errornoInfo.lstInfo = new Dictionary<string, DevExpress.XtraEditors.DXErrorProvider.ErrorInfo>();

                errornoInfoList.Add(errornoInfo);
            }

            // ���һ�п���
            errornoInfoList.Add(new ErrornoInfo());
            gridControl1.DataSource = errornoInfoList;

            #region �󶨴��󼶱� ����Դ 
            // 1 - LOG_LEVEL_EMERG
            // 2 - LOG_LEVEL_ALERT
            // 3 - LOG_LEVEL_CRIT
            // 4 - LOG_LEVEL_ERR
            // 5 - LOG_LEVEL_WARN
            // 6 - LOG_LEVEL_NOTICE
            // 7 - LOG_LEVEL_INFO
            // 8 - LOG_LEVEL_DEBUG
            // 9 - LOG_LEVEL_SQL 
            List<CListItem> errTypeInfoList = new List<CListItem>();
            errTypeInfoList.Add(new CListItem("1", "LOG_LEVEL_EMERG"));
            errTypeInfoList.Add(new CListItem("2", "LOG_LEVEL_ALERT"));
            errTypeInfoList.Add(new CListItem("3", "LOG_LEVEL_CRIT"));
            errTypeInfoList.Add(new CListItem("4", "LOG_LEVEL_ERR"));
            errTypeInfoList.Add(new CListItem("5", "LOG_LEVEL_WARN"));
            errTypeInfoList.Add(new CListItem("6", "LOG_LEVEL_NOTICE"));
            errTypeInfoList.Add(new CListItem("7", "LOG_LEVEL_INFO"));
            errTypeInfoList.Add(new CListItem("8", "LOG_LEVEL_DEBUG"));
            errTypeInfoList.Add(new CListItem("9", "LOG_LEVEL_SQL"));

            repositoryItemLookUpEditStdType.DataSource = errTypeInfoList;
            #endregion

            gridView1.Columns["Gid"].Visible = false;
            gridView1.Columns["lstInfo"].Visible = false;
            gridView1.Columns["LogLevel"].ColumnEdit = repositoryItemLookUpEditStdType;
        }



        /// <summary>
        /// У����ص������Ƿ�����쳣��
        /// </summary>
        private void ValidateData()
        {
            // ��ѯ�Ƿ����2����ֵ������
            List<ErrornoInfo> lstErrornoInfo = gridControl1.DataSource as List<ErrornoInfo>;

            // �����ظ���Name��ֵ

            List<String> tmpName = new List<string>();
            foreach (ErrornoInfo errornoInfo in lstErrornoInfo)
            {
                if (string.IsNullOrEmpty(errornoInfo.Gid))
                    continue;

                if (lstName.Contains(errornoInfo.Name))
                {
                    tmpName.Add(errornoInfo.Name);
                }

                lstName.Add(errornoInfo.Name);
            }

            foreach (ErrornoInfo errornoInfo in lstErrornoInfo)
            {
                if (string.IsNullOrEmpty(errornoInfo.Gid))
                    continue;

                // �ж��ظ��� �����
                if (tmpName.Contains(errornoInfo.Name))
                {
                    if (errornoInfo.lstInfo.ContainsKey("Name"))
                    {
                        errornoInfo.lstInfo["Name"].ErrorText = errornoInfo.lstInfo["Name"].ErrorText + "\r\n���ڼ�ֵ��ͬ�Ĵ����";
                        errornoInfo.lstInfo["Name"].ErrorType = errornoInfo.lstInfo["Name"].ErrorType >= DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical ? errornoInfo.lstInfo["Name"].ErrorType : DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical;
                    }
                    else
                    {
                        errornoInfo.lstInfo.Add("Name", new DevExpress.XtraEditors.DXErrorProvider.ErrorInfo("���ڼ�ֵ��ͬ�Ĵ����", DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical));
                        _errCount++;
                        // 20170901 wjm ����key ��value��˳��
                        _errlst.Add(new CListItem("���ڼ�ֵ��ͬ�Ĵ����", "�����" + errornoInfo.Name));
                    }
                }
                // �������жϴ��շ�
                if (errornoInfo.Name.Length >= 1)
                {
                    if (!string.Equals(errornoInfo.Name[0].ToString(), errornoInfo.Name[0].ToString().ToUpper(), StringComparison.CurrentCulture))
                    {
                        if (errornoInfo.lstInfo.ContainsKey("Name"))
                        {
                            errornoInfo.lstInfo["Name"].ErrorText = errornoInfo.lstInfo["Name"].ErrorText + "\r\n������Դ��շ������淶";
                            errornoInfo.lstInfo["Name"].ErrorType = errornoInfo.lstInfo["Name"].ErrorType >= DevExpress.XtraEditors.DXErrorProvider.ErrorType.Warning ? errornoInfo.lstInfo["Name"].ErrorType : DevExpress.XtraEditors.DXErrorProvider.ErrorType.Warning;
                        }
                        else
                        {
                            errornoInfo.lstInfo.Add("Name", new DevExpress.XtraEditors.DXErrorProvider.ErrorInfo("������Դ��շ�������", DevExpress.XtraEditors.DXErrorProvider.ErrorType.Warning));
                            _warnCount++;
                            // 20170901 wjm ����key ��value��˳��
                            _warnlst.Add(new CListItem("������Դ��շ������淶", "�����" + errornoInfo.Name));
                        }
                    }
                }

                // �ж��������Ƿ�Ϊ��
                if (string.IsNullOrEmpty(errornoInfo.Name))
                {
                    if (errornoInfo.lstInfo.ContainsKey("Name"))
                    {
                        errornoInfo.lstInfo["Name"].ErrorText = errornoInfo.lstInfo["Name"].ErrorText + "\r\n����Ų���Ϊ��";
                        errornoInfo.lstInfo["Name"].ErrorType = errornoInfo.lstInfo["Name"].ErrorType >= DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical ? errornoInfo.lstInfo["Name"].ErrorType : DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical;
                    }
                    else
                    {
                        errornoInfo.lstInfo.Add("Name", new DevExpress.XtraEditors.DXErrorProvider.ErrorInfo("����Ų���Ϊ��", DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical));
                        _errCount++;
                        // 20170901 wjm ����key ��value��˳��
                        _errlst.Add(new CListItem("����Ų���Ϊ��", "�����" + errornoInfo.Name));
                    }
                }

                // ������ʾ˵��
                if (string.IsNullOrEmpty(errornoInfo.ChineseName))
                {
                    if (errornoInfo.lstInfo.ContainsKey("ChineseName"))
                    {
                        errornoInfo.lstInfo["ChineseName"].ErrorText = errornoInfo.lstInfo["ChineseName"].ErrorText + "\r\n������ʾ˵������Ϊ��";
                        errornoInfo.lstInfo["ChineseName"].ErrorType = errornoInfo.lstInfo["ChineseName"].ErrorType >= DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical ? errornoInfo.lstInfo["ChineseName"].ErrorType : DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical;
                    }
                    else
                    {
                        errornoInfo.lstInfo.Add("ChineseName", new DevExpress.XtraEditors.DXErrorProvider.ErrorInfo("������ʾ˵������Ϊ��", DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical));
                        _errCount++;
                        // 20170901 wjm ����key ��value��˳��
                        _errlst.Add(new CListItem("������ʾ˵������Ϊ��", "������ʾ˵��" + errornoInfo.ChineseName));
                    }
                }

                // ������ʾ˵��
                /*if (string.IsNullOrEmpty(errornoInfo.LogLevel))
                {
                    if (errornoInfo.lstInfo.ContainsKey("LogLevel"))
                    {
                        errornoInfo.lstInfo["LogLevel"].ErrorText = errornoInfo.lstInfo["LogLevel"].ErrorText + "\r\n���󼶱���Ϊ��";
                        errornoInfo.lstInfo["LogLevel"].ErrorType = errornoInfo.lstInfo["LogLevel"].ErrorType >= DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical ? errornoInfo.lstInfo["Value"].ErrorType : DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical;
                    }
                    else
                    {
                        errornoInfo.lstInfo.Add("LogLevel", new DevExpress.XtraEditors.DXErrorProvider.ErrorInfo("���󼶱���Ϊ��", DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical));
                        _errCount++;
                        // 20170901 wjm ����key ��value��˳��
                        _errlst.Add(new CListItem("���󼶱���Ϊ��", "���󼶱�" + errornoInfo.Name));
                    }
                }*/
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
            List<ErrornoInfo> lstErrornoInfo = gridControl1.DataSource as List<ErrornoInfo>;

            foreach (ErrornoInfo errornoInfo in lstErrornoInfo)
            {
                if (string.IsNullOrEmpty(errornoInfo.Gid))
                    continue;

                errornoInfo.lstInfo.Clear();
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
            XmlNodeList xmlNodeLst = xmlhelper.Read("datatype/item[@gid=\"" + tmperrornoInfo.Gid + "\"]");
            Int32 idx = -1;

            switch (e.Column.ToString())
            {
                case "�����":
                    idx = 0;
                    break;
                case "������ʾ��Ϣ":
                    idx = 1;
                    break;
                case "���󼶱�":
                    idx = 2;
                    break;
                case "˵��":
                    idx = 3;
                    break;
            }
            
           if (idx == -1)
                return;

            xmlNodeLst.Item(idx).InnerText = e.Value.ToString();
            xmlhelper.Save(false);

            tmperrornoInfo = null;
        }

        private void gridView1_CellValueChanging(object sender, DevExpress.XtraGrid.Views.Base.CellValueChangedEventArgs e)
        {
            if (string.IsNullOrEmpty((gridView1.GetFocusedRow() as ErrornoInfo).Gid) && (gridView1.FocusedRowHandle + 1 == gridView1.RowCount))
            {
                btnAdd_Click(null, null);
            }

            tmperrornoInfo = gridView1.GetRow(e.RowHandle) as ErrornoInfo;
        }

        /// <summary>
        /// ����
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnAdd_Click(object sender, EventArgs e)
        {
            var errornoInfo = new ErrornoInfo();
            errornoInfo.Gid = System.Guid.NewGuid().ToString();
            errornoInfo.lstInfo = new Dictionary<string, DevExpress.XtraEditors.DXErrorProvider.ErrorInfo>();

            xmlhelper.InsertElement("datatype", "item", "gid", errornoInfo.Gid, string.Format(xmlModel, string.Empty, string.Empty, string.Empty, string.Empty));
            xmlhelper.Save(false);

            (gridView1.DataSource as List<ErrornoInfo>).Insert(gridView1.RowCount - 1, errornoInfo);
            gridView1.RefreshData();
        }

        /// <summary>
        /// ����
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnInsert_Click(object sender, EventArgs e)
        {
            XmlNodeList xmlNodeLst = xmlhelper.Read("datatype/item[@gid=\"" + (gridView1.GetFocusedRow() as ErrornoInfo).Gid + "\"]");
            var errornoInfo = new ErrornoInfo();
            errornoInfo.Gid = System.Guid.NewGuid().ToString();
            errornoInfo.lstInfo = new Dictionary<string, DevExpress.XtraEditors.DXErrorProvider.ErrorInfo>();
            xmlhelper.InsertElement("item", "gid", errornoInfo.Gid, string.Format(xmlModel, string.Empty, string.Empty, string.Empty, string.Empty), xmlNodeLst.Item(0).ParentNode);
            xmlhelper.Save(false);

            (gridView1.DataSource as List<ErrornoInfo>).Insert(gridView1.FocusedRowHandle, errornoInfo);
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
            if (string.IsNullOrEmpty((gridView1.GetFocusedRow() as ErrornoInfo).Gid))
                return;

            xmlhelper.DeleteByPathNode("datatype/item[@gid=\"" + gridView1.GetRowCellDisplayText(gridView1.FocusedRowHandle, "Gid") + "\"]");
            xmlhelper.Save(false);

            // 20170924 wjm ɾ��lstName ��Ӧ��ֵ���浼���ʱ�򻺴�����
            lstName.Remove(gridView1.GetRowCellDisplayText(gridView1.FocusedRowHandle, "Name"));
            (gridView1.DataSource as List<ErrornoInfo>).RemoveAt(gridView1.FocusedRowHandle);
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

            ErrornoInfo cuerrornoInfo = gridView1.GetFocusedRow() as ErrornoInfo;
            ErrornoInfo preerrornoInfo = gridView1.GetRow(gridView1.FocusedRowHandle - 1) as ErrornoInfo;
            // ���
            ErrornoInfo tmperrornoInfo = new ErrornoInfo();
            tmperrornoInfo.Gid = cuerrornoInfo.Gid;
            tmperrornoInfo.Name = cuerrornoInfo.Name;
            tmperrornoInfo.ChineseName = cuerrornoInfo.ChineseName;
            tmperrornoInfo.LogLevel = cuerrornoInfo.LogLevel;
            tmperrornoInfo.Remark = cuerrornoInfo.Remark;
            tmperrornoInfo.lstInfo = cuerrornoInfo.lstInfo;

            // ��������
            cuerrornoInfo.Gid = preerrornoInfo.Gid;
            cuerrornoInfo.Name = preerrornoInfo.Name;
            cuerrornoInfo.ChineseName = preerrornoInfo.ChineseName;
            cuerrornoInfo.LogLevel = preerrornoInfo.LogLevel;
            cuerrornoInfo.Remark = preerrornoInfo.Remark;
            cuerrornoInfo.lstInfo = preerrornoInfo.lstInfo;

            preerrornoInfo.Gid = tmperrornoInfo.Gid;
            preerrornoInfo.Name = tmperrornoInfo.Name;
            preerrornoInfo.ChineseName = tmperrornoInfo.ChineseName;
            preerrornoInfo.LogLevel = tmperrornoInfo.LogLevel;
            preerrornoInfo.Remark = tmperrornoInfo.Remark;
            preerrornoInfo.lstInfo = tmperrornoInfo.lstInfo;

            // ��ϸXML����
            string cuXMLStr = xmlhelper.ReadInnerXML("datatype/item[@gid=\"" + cuerrornoInfo.Gid + "\"]");
            string preXMLStr = xmlhelper.ReadInnerXML("datatype/item[@gid=\"" + preerrornoInfo.Gid + "\"]");
            xmlhelper.Replace("datatype/item[@gid=\"" + cuerrornoInfo.Gid + "\"]", preXMLStr);
            xmlhelper.Replace("datatype/item[@gid=\"" + preerrornoInfo.Gid + "\"]", cuXMLStr);
            // ���� Gid
            var cuattribute = xmlhelper.Read("datatype/item[@gid=\"" + cuerrornoInfo.Gid + "\"]").Item(0).ParentNode.Attributes["gid"];
            var preattribute = xmlhelper.Read("datatype/item[@gid=\"" + preerrornoInfo.Gid + "\"]").Item(0).ParentNode.Attributes["gid"];
            cuattribute.Value = preerrornoInfo.Gid;
            preattribute.Value = cuerrornoInfo.Gid;
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

            ErrornoInfo cuerrornoInfo = gridView1.GetFocusedRow() as ErrornoInfo;
            ErrornoInfo nexterrornoInfo = gridView1.GetRow(gridView1.FocusedRowHandle + 1) as ErrornoInfo;

            // ���
            ErrornoInfo tmperrornoInfo = new ErrornoInfo();
            tmperrornoInfo.Gid = cuerrornoInfo.Gid;
            tmperrornoInfo.Name = cuerrornoInfo.Name;
            tmperrornoInfo.ChineseName = cuerrornoInfo.ChineseName;
            tmperrornoInfo.LogLevel = cuerrornoInfo.LogLevel;
            tmperrornoInfo.Remark = cuerrornoInfo.Remark;
            tmperrornoInfo.lstInfo = cuerrornoInfo.lstInfo;

            // ��������
            cuerrornoInfo.Gid = nexterrornoInfo.Gid;
            cuerrornoInfo.Name = nexterrornoInfo.Name;
            cuerrornoInfo.ChineseName = nexterrornoInfo.ChineseName;
            cuerrornoInfo.LogLevel = nexterrornoInfo.LogLevel;
            cuerrornoInfo.Remark = nexterrornoInfo.Remark;
            cuerrornoInfo.lstInfo = nexterrornoInfo.lstInfo;

            nexterrornoInfo.Gid = tmperrornoInfo.Gid;
            nexterrornoInfo.Name = tmperrornoInfo.Name;
            nexterrornoInfo.ChineseName = tmperrornoInfo.ChineseName;
            nexterrornoInfo.LogLevel = tmperrornoInfo.LogLevel;
            nexterrornoInfo.Remark = tmperrornoInfo.Remark;
            nexterrornoInfo.lstInfo = tmperrornoInfo.lstInfo;

            // ��ϸXML����
            string cuXMLStr = xmlhelper.ReadInnerXML("datatype/item[@gid=\"" + cuerrornoInfo.Gid + "\"]");
            string preXMLStr = xmlhelper.ReadInnerXML("datatype/item[@gid=\"" + nexterrornoInfo.Gid + "\"]");
            xmlhelper.Replace("datatype/item[@gid=\"" + cuerrornoInfo.Gid + "\"]", preXMLStr);
            xmlhelper.Replace("datatype/item[@gid=\"" + nexterrornoInfo.Gid + "\"]", cuXMLStr);
            // ���� Gid
            var cuattribute = xmlhelper.Read("datatype/item[@gid=\"" + cuerrornoInfo.Gid + "\"]").Item(0).ParentNode.Attributes["gid"];
            var nextattribute = xmlhelper.Read("datatype/item[@gid=\"" + nexterrornoInfo.Gid + "\"]").Item(0).ParentNode.Attributes["gid"];
            cuattribute.Value = nexterrornoInfo.Gid;
            nextattribute.Value = cuerrornoInfo.Gid;
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
            DataTable dt = DataTableHelper.CreateTable("�����,������ʾ��Ϣ,���󼶱�,˵��");
            var lst = (gridView1.DataSource as List<ErrornoInfo>);
            for (int i = 0; i < lst.Count; i++)
            {
                DataRow row = dt.NewRow();
                row[0] = lst[i].Name;
                row[1] = lst[i].ChineseName;
                row[2] = IntToErrInfo(lst[i].LogLevel);
                row[3] = lst[i].Remark;
                dt.Rows.Add(row);
            }

            string saveFile = FileDialogHelper.SaveExcel("��׼�����.xls", "C:\\");
            if (!string.IsNullOrEmpty(saveFile))
            {
                MyXlsHelper.Export(dt, saveFile, "��׼�����", 1, 1);

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

                DataTable dt = MyXlsHelper.Import(importFile, "��׼�����", 2, 1);

                // ���û�н�����Ͳ��ڼ���
                if (dt == null) return;

                Int32 addRows = 0;
                for (Int32 i = 0; i < dt.Rows.Count; i++)
                { 
                    // �ж��Ƿ���ڲ����������
                    if (!lstName.Contains(dt.Rows[i][0].ToString()))
                    {
                        var errornoInfo = new ErrornoInfo();
                        errornoInfo.Gid = System.Guid.NewGuid().ToString();
                        errornoInfo.Name = dt.Rows[i][0].ToString();
                        errornoInfo.ChineseName = dt.Rows[i][1].ToString();
                        errornoInfo.LogLevel = Convert.ToInt16(ErrInfoToInt(dt.Rows[i][2].ToString()));
                        errornoInfo.Remark = dt.Rows[i][3].ToString();

                        xmlhelper.InsertElement("datatype", "item", "gid", errornoInfo.Gid, string.Format(xmlModel, dt.Rows[i][0].ToString(), dt.Rows[i][1].ToString(), dt.Rows[i][2].ToString(), dt.Rows[i][3].ToString()));

                        (gridView1.DataSource as List<ErrornoInfo>).Insert(gridView1.RowCount - 1, errornoInfo);
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

        private string IntToErrInfo(Int16 strerridx)
        {
            string result = string.Empty;
     
            // 1 - LOG_LEVEL_EMERG
            // 2 - LOG_LEVEL_ALERT
            // 3 - LOG_LEVEL_CRIT
            // 4 - LOG_LEVEL_ERR
            // 5 - LOG_LEVEL_WARN
            // 6 - LOG_LEVEL_NOTICE
            // 7 - LOG_LEVEL_INFO
            // 8 - LOG_LEVEL_DEBUG
            // 9 - LOG_LEVEL_SQL 
            switch (strerridx)
            {
                case 1:
                    result = "LOG_LEVEL_EMERG";
                    break;
                case 2:
                    result = "LOG_LEVEL_ALERT";
                    break;
                case 3:
                    result = "LOG_LEVEL_CRIT";
                    break;
                case 4:
                    result = "LOG_LEVEL_ERR";
                    break;
                case 5:
                    result = "LOG_LEVEL_WARN";
                    break;
                case 6:
                    result = "LOG_LEVEL_NOTICE";
                    break;
                case 7:
                    result = "LOG_LEVEL_INFO";
                    break;
                case 8:
                    result = "LOG_LEVEL_DEBUG";
                    break;
                case 9:
                    result = "LOG_LEVEL_SQL";
                    break;
            }
            return result;
        }

        private Int32 ErrInfoToInt(string errinfo)
        {
            Int32 result = 0;
            // 1 - LOG_LEVEL_EMERG
            // 2 - LOG_LEVEL_ALERT
            // 3 - LOG_LEVEL_CRIT
            // 4 - LOG_LEVEL_ERR
            // 5 - LOG_LEVEL_WARN
            // 6 - LOG_LEVEL_NOTICE
            // 7 - LOG_LEVEL_INFO
            // 8 - LOG_LEVEL_DEBUG
            // 9 - LOG_LEVEL_SQL 
            switch (errinfo)
            {
                case "LOG_LEVEL_EMERG":
                    result = 1;
                    break;
                case "LOG_LEVEL_ALERT":
                    result = 2;
                    break;
                case "LOG_LEVEL_CRIT":
                    result = 3;
                    break;
                case "LOG_LEVEL_ERR":
                    result = 4;
                    break;
                case "LOG_LEVEL_WARN":
                    result = 5;
                    break;
                case "LOG_LEVEL_NOTICE":
                    result = 6;
                    break;
                case "LOG_LEVEL_INFO":
                    result = 7;
                    break;
                case "LOG_LEVEL_DEBUG":
                    result = 8;
                    break;
                case "LOG_LEVEL_SQL":
                    result = 9;
                    break;
            }
            return result;
        }
    }
}
