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
using JCodes.Framework.Common.Extension;

// �ο��ĵ� http://www.cnblogs.com/a1656344531/archive/2012/11/28/2792863.html

namespace JCodes.Framework.AddIn.Proj
{
    /// <summary>
    /// ��½ϵͳ�ĺڰ������б�
    /// </summary>	
    public partial class FrmStdField : BaseDock
    {
        private StdFieldInfo tmpstdFieldInfo = null;

        private XmlHelper xmlhelper = new XmlHelper(@"XML\stdfield.xml");

        private List<string> lstName = new List<string>();

        private List<DictInfo> dictTypeInfoList = null;

        private string xmlModel = "<name>{0}</name><chineseName>{1}</chineseName><datatype>{2}</datatype><dictno>{3}</dictno><remark>{4}</remark>";

        private Int32 _errCount = 0;
        private List<CListItem> _errlst = new List<CListItem>();
        private Int32 _warnCount = 0;
        private List<CListItem> _warnlst = new List<CListItem>();
        private Int32 _infoCount = 0;
        private List<CListItem> _infolst = new List<CListItem>();

        public FrmStdField()
        {
            InitializeComponent();

            LoadDicData();

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
                string filter = string.Format("Name Like '%{0}%' or ChineseName Like '%{0}%' or DataType Like '%{0}%' or  DictNo Like '%{0}%' or  Remark Like '%{0}%' ", txtSearch.Text);
                gridView1.ActiveFilterString = filter;
            }
        }

        /// <summary>
        /// ������
        /// </summary>
        private void BindData()
        {
            XmlNodeList xmlNodeLst = xmlhelper.Read("datatype/dataitem");
            List<StdFieldInfo> stdfieldInfoList = new List<StdFieldInfo>();
            foreach (XmlNode xn1 in xmlNodeLst)
            {
                StdFieldInfo dataTypeInfo = new StdFieldInfo();
                // ���ڵ�ת��ΪԪ�أ����ڵõ��ڵ������ֵ
                XmlElement xe = (XmlElement)xn1;
                // �õ�Type��ISBN�������Ե�����ֵ
                dataTypeInfo.Gid = xe.GetAttribute("gid").ToString();

                // �õ�DataTypeInfo�ڵ�������ӽڵ�
                XmlNodeList xnl0 = xe.ChildNodes;
                dataTypeInfo.Name = xnl0.Item(0).InnerText;
                dataTypeInfo.ChineseName = xnl0.Item(1).InnerText;
                dataTypeInfo.DataType = xnl0.Item(2).InnerText;
                dataTypeInfo.DictNo = xnl0.Item(3).InnerText.ToInt32();
                if (dictTypeInfoList != null)
                { 
                    var dictType = dictTypeInfoList.Find(new Predicate<DictInfo>(dictinfo => dictinfo.Id == dataTypeInfo.DictNo));
                    if (dictType != null) dataTypeInfo.DictNameLst = dictType.Remark;
                }
                dataTypeInfo.Remark = xnl0.Item(4).InnerText;
                dataTypeInfo.lstInfo = new Dictionary<string, DevExpress.XtraEditors.DXErrorProvider.ErrorInfo>();

                stdfieldInfoList.Add(dataTypeInfo);
            }

            // ���һ�п���
            stdfieldInfoList.Add(new StdFieldInfo());
            gridControl1.DataSource = stdfieldInfoList;

            #region ��stdType ����Դ

            XmlHelper datatypexmlHelper = new XmlHelper(@"XML\datatype.xml");
            XmlNodeList datatypexmlNodeLst = datatypexmlHelper.Read("datatype");
            List<CListItem> dataTypeInfoList = new List<CListItem>();
            foreach (XmlNode xn1 in datatypexmlNodeLst)
            {
                // ���ڵ�ת��ΪԪ�أ����ڵõ��ڵ������ֵ
                XmlElement xe = (XmlElement)xn1;
                // �õ�DataTypeInfo�ڵ�������ӽڵ�
                XmlNodeList xnl0 = xe.ChildNodes;
                CListItem listItem = new CListItem(xnl0.Item(0).InnerText, string.Format("{0}-{1}", xnl0.Item(0).InnerText, xnl0.Item(1).InnerText));

                dataTypeInfoList.Add(listItem);
            }

            repositoryItemLookUpEditStdType.DataSource = dataTypeInfoList;
            #endregion

            gridView1.Columns["Gid"].Visible = false;
            gridView1.Columns["lstInfo"].Visible = false;
            gridView1.Columns["DictNameLst"].OptionsColumn.ReadOnly = true;
            gridView1.Columns["DataType"].ColumnEdit = repositoryItemLookUpEditStdType;
        }

        /// <summary>
        /// У����ص������Ƿ�����쳣��
        /// </summary>
        private void ValidateData()
        {
            // ��ѯ�Ƿ����2����ֵ������
            List<StdFieldInfo> lstDataTypeInfo = gridControl1.DataSource as List<StdFieldInfo>;

            // �����ظ���Name��ֵ

            List<String> tmpName = new List<string>();
            foreach (StdFieldInfo dataTypeInfo in lstDataTypeInfo)
            {
                if (string.IsNullOrEmpty(dataTypeInfo.Gid))
                    continue;

                if (lstName.Contains(dataTypeInfo.Name))
                {
                    tmpName.Add(dataTypeInfo.Name);
                }

                lstName.Add(dataTypeInfo.Name);
            }

            foreach (StdFieldInfo dataTypeInfo in lstDataTypeInfo)
            {
                if (string.IsNullOrEmpty(dataTypeInfo.Gid))
                    continue;

                // �ж��ظ��� ������
                if (tmpName.Contains(dataTypeInfo.Name))
                {
                    if (dataTypeInfo.lstInfo.ContainsKey("Name"))
                    {
                        dataTypeInfo.lstInfo["Name"].ErrorText = dataTypeInfo.lstInfo["Name"].ErrorText + "\r\n���ڼ�ֵ��ͬ���ֶ���";
                        dataTypeInfo.lstInfo["Name"].ErrorType = dataTypeInfo.lstInfo["Name"].ErrorType >= DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical ? dataTypeInfo.lstInfo["Name"].ErrorType : DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical;
                    }
                    else
                    {
                        dataTypeInfo.lstInfo.Add("Name", new DevExpress.XtraEditors.DXErrorProvider.ErrorInfo("���ڼ�ֵ��ͬ���ֶ���", DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical));
                        _errCount++;
                        // 20170901 wjm ����key ��value��˳��
                        _errlst.Add(new CListItem("���ڼ�ֵ��ͬ���ֶ���", "�ֶ���" + dataTypeInfo.Name));
                    }
                }
                // �������жϴ��շ�
                if (dataTypeInfo.Name.Length >= 1)
                {
                    if (!string.Equals(dataTypeInfo.Name[0].ToString(), dataTypeInfo.Name[0].ToString().ToUpper(), StringComparison.CurrentCulture))
                    {
                        if (dataTypeInfo.lstInfo.ContainsKey("Name"))
                        {
                            dataTypeInfo.lstInfo["Name"].ErrorText = dataTypeInfo.lstInfo["Name"].ErrorText + "\r\n�ֶ����Դ��շ������淶";
                            dataTypeInfo.lstInfo["Name"].ErrorType = dataTypeInfo.lstInfo["Name"].ErrorType >= DevExpress.XtraEditors.DXErrorProvider.ErrorType.Warning ? dataTypeInfo.lstInfo["Name"].ErrorType : DevExpress.XtraEditors.DXErrorProvider.ErrorType.Warning;
                        }
                        else
                        {
                            dataTypeInfo.lstInfo.Add("Name", new DevExpress.XtraEditors.DXErrorProvider.ErrorInfo("�ֶ����Դ��շ������淶", DevExpress.XtraEditors.DXErrorProvider.ErrorType.Warning));
                            _warnCount++;
                            // 20170901 wjm ����key ��value��˳��
                            _warnlst.Add(new CListItem("�ֶ����Դ��շ������淶", "������" + dataTypeInfo.Name));
                        }
                    }
                }

                // �ж��ֶ����Ƿ�Ϊ��
                if (string.IsNullOrEmpty(dataTypeInfo.Name))
                {
                    if (dataTypeInfo.lstInfo.ContainsKey("Name"))
                    {
                        dataTypeInfo.lstInfo["Name"].ErrorText = dataTypeInfo.lstInfo["Name"].ErrorText + "\r\n�ֶ�������Ϊ��";
                        dataTypeInfo.lstInfo["Name"].ErrorType = dataTypeInfo.lstInfo["Name"].ErrorType >= DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical ? dataTypeInfo.lstInfo["Name"].ErrorType : DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical;
                    }
                    else
                    {
                        dataTypeInfo.lstInfo.Add("Name", new DevExpress.XtraEditors.DXErrorProvider.ErrorInfo("�ֶ�������Ϊ��", DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical));
                        _errCount++;
                        // 20170901 wjm ����key ��value��˳��
                        _errlst.Add(new CListItem("�ֶ�������Ϊ��", "�ֶ���" + dataTypeInfo.Name));
                    }
                }

                // �ж��ֶ������Ƿ�Ϊ��
                if (string.IsNullOrEmpty(dataTypeInfo.ChineseName))
                {
                    if (dataTypeInfo.lstInfo.ContainsKey("ChineseName"))
                    {
                        dataTypeInfo.lstInfo["ChineseName"].ErrorText = dataTypeInfo.lstInfo["ChineseName"].ErrorText + "\r\n�ֶ����Ʋ���Ϊ��";
                        dataTypeInfo.lstInfo["ChineseName"].ErrorType = dataTypeInfo.lstInfo["ChineseName"].ErrorType >= DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical ? dataTypeInfo.lstInfo["ChineseName"].ErrorType : DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical;
                    }
                    else
                    {
                        dataTypeInfo.lstInfo.Add("ChineseName", new DevExpress.XtraEditors.DXErrorProvider.ErrorInfo("�ֶ����Ʋ���Ϊ��", DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical));
                        _errCount++;
                        // 20170901 wjm ����key ��value��˳��
                        _errlst.Add(new CListItem("�ֶ����Ʋ���Ϊ��", "�ֶ�����" + dataTypeInfo.ChineseName));
                    }
                }

                // �ж��ֶ������Ƿ�Ϊ��
                if (string.IsNullOrEmpty(dataTypeInfo.DataType))
                {
                    if (dataTypeInfo.lstInfo.ContainsKey("DataType"))
                    {
                        dataTypeInfo.lstInfo["DataType"].ErrorText = dataTypeInfo.lstInfo["DataType"].ErrorText + "\r\n�ֶ����Ͳ���Ϊ��";
                        dataTypeInfo.lstInfo["DataType"].ErrorType = dataTypeInfo.lstInfo["DataType"].ErrorType >= DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical ? dataTypeInfo.lstInfo["DataType"].ErrorType : DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical;
                    }
                    else
                    {
                        dataTypeInfo.lstInfo.Add("DataType", new DevExpress.XtraEditors.DXErrorProvider.ErrorInfo("�ֶ����Ͳ���Ϊ��", DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical));
                        _errCount++;
                        // 20170901 wjm ����key ��value��˳��
                        _errlst.Add(new CListItem("�ֶ����Ͳ���Ϊ��", "�ֶ�����" + dataTypeInfo.DataType));
                    }
                }

                // ����У�飬��������ֶβ������򱨴�
                if (dataTypeInfo.DictNo > 0 && dictTypeInfoList.Find(new Predicate<DictInfo>(dictinfo => dictinfo.Id == dataTypeInfo.DictNo)) == null)
                {
                    if (dataTypeInfo.lstInfo.ContainsKey("DictNo"))
                    {
                        dataTypeInfo.lstInfo["DictNo"].ErrorText = dataTypeInfo.lstInfo["DictNo"].ErrorText + "\r\n�ֵ���Ŀֵ�������ֵ����Ҳ���";
                        dataTypeInfo.lstInfo["DictNo"].ErrorType = dataTypeInfo.lstInfo["DictNo"].ErrorType >= DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical ? dataTypeInfo.lstInfo["DictNo"].ErrorType : DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical;
                    }
                    else
                    {
                        dataTypeInfo.lstInfo.Add("DictNo", new DevExpress.XtraEditors.DXErrorProvider.ErrorInfo("�ֵ���Ŀֵ�������ֵ����Ҳ���", DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical));
                        _errCount++;
                        // 20170901 wjm ����key ��value��˳��
                        _errlst.Add(new CListItem("�ֵ���Ŀֵ�������ֵ����Ҳ���", "�ֵ���Ŀ" + dataTypeInfo.DataType));
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
            List<StdFieldInfo> lstDataTypeInfo = gridControl1.DataSource as List<StdFieldInfo>;

            foreach (StdFieldInfo dataTypeInfo in lstDataTypeInfo)
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

            XmlNodeList xmlNodeLst = xmlhelper.Read("datatype/dataitem/item[@gid=\"" + tmpstdFieldInfo.Gid + "\"]");
            Int32 idx = -1;

            switch (e.Column.ToString())
            {
                case "����":
                    idx = 0;
                    break;
                case "��������":
                    idx = 1;
                    break;
                case "�ֶ�����":
                    idx = 2;
                    break;
                case "�ֵ���Ŀ":
                    idx = 3;
                    break;
                case "��ע":
                    idx = 4;
                    break;
            }

           if (idx == -1)
                return;

            xmlNodeLst.Item(idx).InnerText = e.Value.ToString();
            xmlhelper.Save(false);

            tmpstdFieldInfo = null;

            if (idx == 3 && dictTypeInfoList != null)
            {


                var dictType = dictTypeInfoList.Find(new Predicate<DictInfo>(dictinfo => dictinfo.Id == e.Value.ToString().ToInt32()));

                // �ҵ�ѡ���е�Gidֵ
                (gridView1.GetFocusedRow() as StdFieldInfo).DictNameLst = dictType.Remark;
                gridView1.RefreshData();
            }
            
        }

        private void gridView1_CellValueChanging(object sender, DevExpress.XtraGrid.Views.Base.CellValueChangedEventArgs e)
        {
            if (string.IsNullOrEmpty((gridView1.GetFocusedRow() as StdFieldInfo).Gid) && (gridView1.FocusedRowHandle + 1 == gridView1.RowCount))
            {
                btnAdd_Click(null, null);
            }

            tmpstdFieldInfo = gridView1.GetRow(e.RowHandle) as StdFieldInfo;
        }

        /// <summary>
        /// ����
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnAdd_Click(object sender, EventArgs e)
        {
            var datatypeInfo = new StdFieldInfo();
            datatypeInfo.Gid = System.Guid.NewGuid().ToString();
            datatypeInfo.lstInfo = new Dictionary<string, DevExpress.XtraEditors.DXErrorProvider.ErrorInfo>();

            xmlhelper.InsertElement("datatype/dataitem", "item", "gid", datatypeInfo.Gid, string.Format(xmlModel, string.Empty, string.Empty, string.Empty, string.Empty, string.Empty));
            xmlhelper.Save(false);

            (gridView1.DataSource as List<StdFieldInfo>).Insert(gridView1.RowCount - 1, datatypeInfo);
            gridView1.RefreshData();
        }

        /// <summary>
        /// ����
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnInsert_Click(object sender, EventArgs e)
        {
            XmlNodeList xmlNodeLst = xmlhelper.Read("datatype/dataitem/item[@gid=\"" + (gridView1.GetFocusedRow() as StdFieldInfo).Gid + "\"]");
            var datatypeInfo = new StdFieldInfo();
            datatypeInfo.Gid = System.Guid.NewGuid().ToString();
            datatypeInfo.lstInfo = new Dictionary<string, DevExpress.XtraEditors.DXErrorProvider.ErrorInfo>();
            xmlhelper.InsertElement("item", "gid", datatypeInfo.Gid, string.Format(xmlModel, string.Empty, string.Empty, string.Empty, string.Empty, string.Empty), xmlNodeLst.Item(0).ParentNode);
            xmlhelper.Save(false);

            (gridView1.DataSource as List<StdFieldInfo>).Insert(gridView1.FocusedRowHandle, datatypeInfo);
            gridView1.RefreshData();
        }

        /// <summary>
        /// ɾ����׼����
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnDel_Click(object sender, EventArgs e)
        {
            // 20171106 wjm �޸�û��������ɾ��������������
            // 20170824 ��������һ�п������ټ�������
            if (gridView1.GetFocusedRow() as StdFieldInfo == null || string.IsNullOrEmpty((gridView1.GetFocusedRow() as StdFieldInfo).Gid))
                return;

            xmlhelper.DeleteByPathNode("datatype/dataitem/item[@gid=\"" + gridView1.GetRowCellDisplayText(gridView1.FocusedRowHandle, "Gid") + "\"]");
            xmlhelper.Save(false);

            // 20170924 wjm ɾ��lstName ��Ӧ��ֵ���浼���ʱ�򻺴�����
            lstName.Remove(gridView1.GetRowCellDisplayText(gridView1.FocusedRowHandle, "Name"));

            (gridView1.DataSource as List<StdFieldInfo>).RemoveAt(gridView1.FocusedRowHandle);
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

            StdFieldInfo cudataTypeInfo = gridView1.GetFocusedRow() as StdFieldInfo;
            StdFieldInfo predataTypeInfo = gridView1.GetRow(gridView1.FocusedRowHandle - 1) as StdFieldInfo;
            // ���
            StdFieldInfo tmpdataTypeInfo = new StdFieldInfo();
            tmpdataTypeInfo.Gid = cudataTypeInfo.Gid;
            tmpdataTypeInfo.Name = cudataTypeInfo.Name;
            tmpdataTypeInfo.ChineseName = cudataTypeInfo.ChineseName;
            tmpdataTypeInfo.DataType = cudataTypeInfo.DataType;
            tmpdataTypeInfo.DictNo = cudataTypeInfo.DictNo;
            tmpdataTypeInfo.Remark = cudataTypeInfo.Remark;
            tmpdataTypeInfo.lstInfo = cudataTypeInfo.lstInfo;

            // ��������
            cudataTypeInfo.Gid = predataTypeInfo.Gid;
            cudataTypeInfo.Name = predataTypeInfo.Name;
            cudataTypeInfo.ChineseName = predataTypeInfo.ChineseName;
            cudataTypeInfo.DataType = predataTypeInfo.DataType;
            cudataTypeInfo.DictNo = predataTypeInfo.DictNo;
            cudataTypeInfo.Remark = predataTypeInfo.Remark;
            cudataTypeInfo.lstInfo = predataTypeInfo.lstInfo;

            predataTypeInfo.Gid = tmpdataTypeInfo.Gid;
            predataTypeInfo.Name = tmpdataTypeInfo.Name;
            predataTypeInfo.ChineseName = tmpdataTypeInfo.ChineseName;
            predataTypeInfo.DataType = tmpdataTypeInfo.DataType;
            predataTypeInfo.DictNo = tmpdataTypeInfo.DictNo;
            predataTypeInfo.Remark = tmpdataTypeInfo.Remark;
            predataTypeInfo.lstInfo = tmpdataTypeInfo.lstInfo;

            // ��ϸXML����
            string cuXMLStr = xmlhelper.ReadInnerXML("datatype/dataitem/item[@gid=\"" + cudataTypeInfo.Gid + "\"]");
            string preXMLStr = xmlhelper.ReadInnerXML("datatype/dataitem/item[@gid=\"" + predataTypeInfo.Gid + "\"]");
            xmlhelper.Replace("datatype/dataitem/item[@gid=\"" + cudataTypeInfo.Gid + "\"]", preXMLStr);
            xmlhelper.Replace("datatype/dataitem/item[@gid=\"" + predataTypeInfo.Gid + "\"]", cuXMLStr);
            // ����Gid
            var cuattribute = xmlhelper.Read("datatype/dataitem/item[@gid=\"" + cudataTypeInfo.Gid + "\"]").Item(0).ParentNode.Attributes["gid"];
            var preattribute = xmlhelper.Read("datatype/dataitem/item[@gid=\"" + predataTypeInfo.Gid + "\"]").Item(0).ParentNode.Attributes["gid"];
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

            StdFieldInfo cudataTypeInfo = gridView1.GetFocusedRow() as StdFieldInfo;
            StdFieldInfo nextdataTypeInfo = gridView1.GetRow(gridView1.FocusedRowHandle + 1) as StdFieldInfo;

            // ���
            StdFieldInfo tmpdataTypeInfo = new StdFieldInfo();
            tmpdataTypeInfo.Gid = cudataTypeInfo.Gid;
            tmpdataTypeInfo.Name = cudataTypeInfo.Name;
            tmpdataTypeInfo.ChineseName = cudataTypeInfo.ChineseName;
            tmpdataTypeInfo.DataType = cudataTypeInfo.DataType;
            tmpdataTypeInfo.DictNo = cudataTypeInfo.DictNo;
            tmpdataTypeInfo.Remark = cudataTypeInfo.Remark;
            tmpdataTypeInfo.lstInfo = cudataTypeInfo.lstInfo;

            // ��������
            cudataTypeInfo.Gid = nextdataTypeInfo.Gid;
            cudataTypeInfo.Name = nextdataTypeInfo.Name;
            cudataTypeInfo.ChineseName = nextdataTypeInfo.ChineseName;
            cudataTypeInfo.DataType = nextdataTypeInfo.DataType;
            cudataTypeInfo.DictNo = nextdataTypeInfo.DictNo;
            cudataTypeInfo.Remark = nextdataTypeInfo.Remark;
            cudataTypeInfo.lstInfo = nextdataTypeInfo.lstInfo;

            nextdataTypeInfo.Gid = tmpdataTypeInfo.Gid;
            nextdataTypeInfo.Name = tmpdataTypeInfo.Name;
            nextdataTypeInfo.ChineseName = tmpdataTypeInfo.ChineseName;
            nextdataTypeInfo.DataType = tmpdataTypeInfo.DataType;
            nextdataTypeInfo.DictNo = tmpdataTypeInfo.DictNo;
            nextdataTypeInfo.Remark = tmpdataTypeInfo.Remark;
            nextdataTypeInfo.lstInfo = tmpdataTypeInfo.lstInfo;

            // ��ϸXML����
            string cuXMLStr = xmlhelper.ReadInnerXML("datatype/dataitem/item[@gid=\"" + cudataTypeInfo.Gid + "\"]");
            string preXMLStr = xmlhelper.ReadInnerXML("datatype/dataitem/item[@gid=\"" + nextdataTypeInfo.Gid + "\"]");
            xmlhelper.Replace("datatype/dataitem/item[@gid=\"" + cudataTypeInfo.Gid + "\"]", preXMLStr);
            xmlhelper.Replace("datatype/dataitem/item[@gid=\"" + nextdataTypeInfo.Gid + "\"]", cuXMLStr);
            // ����Gid
            var cuattribute = xmlhelper.Read("datatype/dataitem/item[@gid=\"" + cudataTypeInfo.Gid + "\"]").Item(0).ParentNode.Attributes["gid"];
            var nextattribute = xmlhelper.Read("datatype/dataitem/item[@gid=\"" + nextdataTypeInfo.Gid + "\"]").Item(0).ParentNode.Attributes["gid"];
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
            DataTable dt = DataTableHelper.CreateTable("�ֶ���,�ֶ�����,�ֶ�����,�ֶ���Ŀ,�ֶ���Ŀ˵��,��ע");
            var lst = (gridView1.DataSource as List<StdFieldInfo>);
            for (int i = 0; i < lst.Count; i++)
            {
                DataRow row = dt.NewRow();
                row[0] = lst[i].Name;
                row[1] = lst[i].ChineseName;
                row[2] = lst[i].DataType;
                row[3] = lst[i].DictNo;
                row[4] = lst[i].DictNameLst;
                row[5] = lst[i].Remark;
                dt.Rows.Add(row);
            }

            string saveFile = FileDialogHelper.SaveExcel("��׼�ֶ�.xls", "C:\\");
            if (!string.IsNullOrEmpty(saveFile))
            {
                MyXlsHelper.Export(dt, saveFile, "��׼�ֶ�", 1, 1);

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

                DataTable dt = MyXlsHelper.Import(importFile, "��׼�ֶ�", 2, 1);

                // ���û�н�����Ͳ��ڼ���
                if (dt == null) return;

                Int32 addRows = 0;
                for (Int32 i = 0; i < dt.Rows.Count; i++)
                { 
                    // �ж��Ƿ���ڲ����������
                    if (!lstName.Contains(dt.Rows[i][0].ToString()))
                    {
                        var datatypeInfo = new StdFieldInfo();
                        datatypeInfo.Gid = System.Guid.NewGuid().ToString();
                        datatypeInfo.Name = dt.Rows[i][0].ToString();
                        datatypeInfo.ChineseName = dt.Rows[i][1].ToString();
                        datatypeInfo.DataType = dt.Rows[i][2].ToString();
                        datatypeInfo.DictNo =  dt.Rows[i][3].ToString().ToInt32();
                        datatypeInfo.Remark = dt.Rows[i][5].ToString();

                        xmlhelper.InsertElement("datatype/dataitem", "item", "gid", datatypeInfo.Gid, string.Format(xmlModel, dt.Rows[i][0].ToString(), dt.Rows[i][1].ToString(), dt.Rows[i][2].ToString(), dt.Rows[i][3].ToString(), dt.Rows[i][5].ToString()));

                        (gridView1.DataSource as List<StdFieldInfo>).Insert(gridView1.RowCount - 1, datatypeInfo);
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

            LoadDicData();

            ValidateData();

            InitView();
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

                dictInfo.Remark = sb.ToString();

                dictTypeInfoList.Add(dictInfo);
            }
            #endregion
        }
    }
}
