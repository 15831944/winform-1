using System;
using System.Text;
using System.Data;
using System.Drawing;
using System.Windows.Forms;
using System.ComponentModel;
using System.Collections.Generic;
using JCodes.Framework.CommonControl.BaseUI;
using JCodes.Framework.CommonControl.Other;
using JCodes.Framework.Common.Framework;
using JCodes.Framework.Entity;
using JCodes.Framework.Common.Databases;
using JCodes.Framework.jCodesenum.BaseEnum;
using JCodes.Framework.CommonControl.Pager.Others;
using JCodes.Framework.Common.Files;
using JCodes.Framework.Common.Office;
using JCodes.Framework.Common;
using JCodes.Framework.CommonControl.PlugInInterface;
using JCodes.Framework.CommonControl.AdvanceSearch;
using JCodes.Framework.CommonControl.Controls;
using JCodes.Framework.BLL;
using JCodes.Framework.Common.Format;
using JCodes.Framework.jCodesenum;
using JCodes.Framework.Common.Extension;

namespace JCodes.Framework.AddIn.Contact
{
    /// <summary>
    /// ͨѶ¼��ϵ��
    /// </summary>	
    public partial class FrmAddressCompany : BaseDock
    {
        public FrmAddressCompany()
        {
            InitializeComponent();

            InitDictItem();

            this.winGridViewPager1.OnPageChanged += new EventHandler(winGridViewPager1_OnPageChanged);
            this.winGridViewPager1.OnStartExport += new EventHandler(winGridViewPager1_OnStartExport);
            this.winGridViewPager1.OnEditSelected += new EventHandler(winGridViewPager1_OnEditSelected);
            this.winGridViewPager1.OnAddNew += new EventHandler(winGridViewPager1_OnAddNew);
            this.winGridViewPager1.OnDeleteSelected += new EventHandler(winGridViewPager1_OnDeleteSelected);
            this.winGridViewPager1.OnRefresh += new EventHandler(winGridViewPager1_OnRefresh);
            this.winGridViewPager1.AppendedMenu = this.contextMenuStrip1;
            this.winGridViewPager1.ShowLineNumber = true;
            this.winGridViewPager1.BestFitColumnWith = false;//�Ƿ�����Ϊ�Զ�������ȣ�falseΪ������
            this.winGridViewPager1.gridView1.DataSourceChanged += new EventHandler(gridView1_DataSourceChanged);
            this.winGridViewPager1.gridView1.CustomColumnDisplayText += new DevExpress.XtraGrid.Views.Base.CustomColumnDisplayTextEventHandler(gridView1_CustomColumnDisplayText);
            this.winGridViewPager1.gridView1.RowCellStyle += new DevExpress.XtraGrid.Views.Grid.RowCellStyleEventHandler(gridView1_RowCellStyle);

            //�����س������в�ѯ
            foreach (Control control in this.layoutControl1.Controls)
            {
                control.KeyUp += new System.Windows.Forms.KeyEventHandler(this.SearchControl_KeyUp);
            }

        }

        void gridView1_RowCellStyle(object sender, DevExpress.XtraGrid.Views.Grid.RowCellStyleEventArgs e)
        {
            //if (e.Column.FieldName == "OrderStatus")
            //{
            //    string status = this.winGridViewPager1.gridView1.GetRowCellValue(e.RowHandle, "OrderStatus").ToString();
            //    Color color = Color.White;
            //    if (status == "�����")
            //    {
            //        e.Appearance.BackColor = Color.Red;
            //        e.Appearance.BackColor2 = Color.LightCyan;
            //    }
            //}
        }
        void gridView1_CustomColumnDisplayText(object sender, DevExpress.XtraGrid.Views.Base.CustomColumnDisplayTextEventArgs e)
        {
            if (e.Column.ColumnType == typeof(DateTime))
            {
                string columnName = e.Column.FieldName;
                if (e.Value != null)
                {
                    if (Convert.ToDateTime(e.Value) <= Convert.ToDateTime("1900-1-1"))
                    {
                        e.DisplayText = "";
                    }
                    else
                    {
                        e.DisplayText = Convert.ToDateTime(e.Value).ToString("yyyy-MM-dd HH:mm");//yyyy-MM-dd
                    }
                }
            }
        }

        /// <summary>
        /// �����ݺ󣬷�����еĿ��
        /// </summary>
        private void gridView1_DataSourceChanged(object sender, EventArgs e) 
        {
            if (this.winGridViewPager1.gridView1.Columns.Count > 0 && this.winGridViewPager1.gridView1.RowCount > 0)
            {
                //ͳһ����100���
                foreach (DevExpress.XtraGrid.Columns.GridColumn column in this.winGridViewPager1.gridView1.Columns)
                {
                    column.Width = 100;
                }

                //�����������ر�Ŀ��
                winGridViewPager1.gridView1.SetGridColumWidth("Email", 200);
                winGridViewPager1.gridView1.SetGridColumWidth("HomeAddress", 200);
                winGridViewPager1.gridView1.SetGridColumWidth("OfficeAddress", 200);
                winGridViewPager1.gridView1.SetGridColumWidth("Note", 200);
                winGridViewPager1.gridView1.SetGridColumWidth("Name", 80);
                winGridViewPager1.gridView1.SetGridColumWidth("Sex", 60);
            }
        }

        /// <summary>
        /// ��д��ʼ�������ʵ�֣���������ˢ��
        /// </summary>
        public override void FormOnLoad()
        {
            InitTree();

            Init_Function();
        }

        void Init_Function()
        {
            btnSearch.Enabled = HasFunction("CommonAddress/ContactSearch");
            btnAddNew.Enabled = HasFunction("CommonAddress/ContactAdd");
            btnBatchAdd.Enabled = HasFunction("CommonAddress/ContactBatchAdd");
            btnImport.Enabled = HasFunction("CommonAddress/ContactExport");
            btnExport.Enabled = HasFunction("CommonAddress/ContactImport");
        }

        /// <summary>
        /// ��ʼ���ֵ��б�����
        /// </summary>
        private void InitDictItem()
        {
            //��ʼ������
        }

        /// <summary>
        /// ��ҳ�ؼ�ˢ�²���
        /// </summary>
        private void winGridViewPager1_OnRefresh(object sender, EventArgs e)
        {
            BindData();
        }

        /// <summary>
        /// ��ҳ�ؼ�ɾ������
        /// </summary>
        private void winGridViewPager1_OnDeleteSelected(object sender, EventArgs e)
        {
            if (!HasFunction("CommonAddress/ContactDel"))
            {
                MessageDxUtil.ShowError(Const.NoAuthMsg);
                return;
            }

            if (MessageDxUtil.ShowYesNoAndTips("��ȷ��ɾ��ѡ���ļ�¼ô��") == DialogResult.No)
            {
                return;
            }

            int[] rowSelected = this.winGridViewPager1.GridView1.GetSelectedRows();
            foreach (int iRow in rowSelected)
            {
                string ID = this.winGridViewPager1.GridView1.GetRowCellDisplayText(iRow, "ID");
                BLLFactory<Address>.Instance.DeleteByUser(ID, LoginUserInfo.Id);
            }

            BindData();
        }

        /// <summary>
        /// ��ҳ�ؼ��༭�����
        /// </summary>
        private void winGridViewPager1_OnEditSelected(object sender, EventArgs e)
        {
            if (!HasFunction("CommonAddress/ContactEdit"))
            {
                MessageDxUtil.ShowError(Const.NoAuthMsg);
                return;
            }

            Int32 Id = this.winGridViewPager1.gridView1.GetFocusedRowCellDisplayText("ID").ToInt32();
            List<Int32> IdList = new List<Int32>();
            for (int i = 0; i < this.winGridViewPager1.gridView1.RowCount; i++)
            {
                Int32 strTemp = this.winGridViewPager1.GridView1.GetRowCellDisplayText(i, "ID").ToInt32();
                IdList.Add(strTemp);
            }

            if (Id > 0)
            {
                FrmEditAddress dlg = new FrmEditAddress();
                dlg.Id = Id;
                dlg.AddressType = AddressType.��˾;
                dlg.IdList = IdList;
                dlg.OnDataSaved += new EventHandler(dlg_OnDataSaved);
                dlg.InitFunction(LoginUserInfo, FunctionDict);//���Ӵ��帳ֵ�û�Ȩ����Ϣ

                if (DialogResult.OK == dlg.ShowDialog())
                {
                    BindData();
                }
            }
        }

        void dlg_OnDataSaved(object sender, EventArgs e)
        {
            BindData();
        }

        /// <summary>
        /// ��ҳ�ؼ���������
        /// </summary>        
        private void winGridViewPager1_OnAddNew(object sender, EventArgs e)
        {
            if (!HasFunction("CommonAddress/ContactAdd"))
            {
                MessageDxUtil.ShowError(Const.NoAuthMsg);
                return;
            }

            btnAddNew_Click(null, null);
        }

        /// <summary>
        /// ��ҳ�ؼ�ȫ����������ǰ�Ĳ���
        /// </summary> 
        private void winGridViewPager1_OnStartExport(object sender, EventArgs e)
        {
            if (!HasFunction("CommonAddress/ContactExport"))
            {
                MessageDxUtil.ShowError(Const.NoAuthMsg);
                return;
            }

            string where = GetConditionSql();
            this.winGridViewPager1.AllToExport = BLLFactory<Address>.Instance.FindToDataTable(where);
        }

        /// <summary>
        /// ��ҳ�ؼ���ҳ�Ĳ���
        /// </summary> 
        private void winGridViewPager1_OnPageChanged(object sender, EventArgs e)
        {
            BindData();
        }

        /// <summary>
        /// �߼���ѯ����������
        /// </summary>
        private SearchCondition advanceCondition;

        /// <summary>
        /// ���ݲ�ѯ���������ѯ���
        /// </summary> 
        private string GetConditionSql()
        {
            //������ڸ߼���ѯ������Ϣ����ʹ�ø߼���ѯ����������ʹ������������ѯ
            SearchCondition condition = advanceCondition;
            if (condition == null)
            {
                condition = new SearchCondition();
                condition.AddCondition("Name", this.txtName.Text.Trim(), SqlOperator.Like);
                condition.AddCondition("Mobile", this.txtMobile.Text.Trim(), SqlOperator.Like);
                condition.AddCondition("Email", this.txtEmail.Text.Trim(), SqlOperator.Like);
                condition.AddCondition("HomeAddress", this.txtHomeAddress.Text.Trim(), SqlOperator.Like);
                condition.AddCondition("OfficeAddress", this.txtOfficeAddress.Text.Trim(), SqlOperator.Like);
                condition.AddCondition("Company", this.txtCompany.Text.Trim(), SqlOperator.Like);
                condition.AddCondition("Note", this.txtNote.Text.Trim(), SqlOperator.Like);
            }
            condition.AddCondition("AddressType", AddressType.��˾.ToString(), SqlOperator.Equal);

            string where = condition.BuildConditionSql().Replace("Where", "");
            //����ǵ����ڵ�õ�����������ʹ�����б�ģ�����ʹ�ò�ѯ������
            if (!string.IsNullOrEmpty(treeConditionSql))
            {
                where = treeConditionSql;
            }

            return where;
        }

        /// <summary>
        /// ���б�����
        /// </summary>
        private void BindData()
        {
            if (!HasFunction("CommonAddress/ContactSearch"))
            {
                return;
            }

            //entity
            this.winGridViewPager1.DisplayColumns = "Name,Sex,Dept,Position,Birthdate,Mobile,OfficeTelephone,Email,QQ,HomeTelephone,HomeAddress,OfficeAddress,Fax,Company,Other,Note,Creator,CreateTime";
            this.winGridViewPager1.ColumnNameAlias = BLLFactory<Address>.Instance.GetColumnNameAlias();//�ֶ�����ʾ����ת��

            #region ��ӱ�������

            //this.winGridViewPager1.AddColumnAlias("Name", "����");
            //this.winGridViewPager1.AddColumnAlias("Sex", "�Ա�");
            //this.winGridViewPager1.AddColumnAlias("Birthdate", "��������");
            //this.winGridViewPager1.AddColumnAlias("Mobile", "�ֻ�");
            //this.winGridViewPager1.AddColumnAlias("Email", "��������");
            //this.winGridViewPager1.AddColumnAlias("Qq", "QQ");
            //this.winGridViewPager1.AddColumnAlias("HomeTelephone", "��ͥ�绰");
            //this.winGridViewPager1.AddColumnAlias("OfficeTelephone", "�칫�绰");
            //this.winGridViewPager1.AddColumnAlias("HomeAddress", "��ͥסַ");
            //this.winGridViewPager1.AddColumnAlias("OfficeAddress", "�칫��ַ");
            //this.winGridViewPager1.AddColumnAlias("Fax", "�������");
            //this.winGridViewPager1.AddColumnAlias("Company", "��˾��λ");
            //this.winGridViewPager1.AddColumnAlias("Dept", "����");
            //this.winGridViewPager1.AddColumnAlias("Other", "����");
            //this.winGridViewPager1.AddColumnAlias("Note", "��ע");
            //this.winGridViewPager1.AddColumnAlias("Creator", "������");
            //this.winGridViewPager1.AddColumnAlias("CreateTime", "����ʱ��");

            #endregion

            string where = GetConditionSql();
            List<AddressInfo> list = BLLFactory<Address>.Instance.FindWithPager(where, this.winGridViewPager1.PagerInfo);
            this.winGridViewPager1.DataSource = new SortableBindingList<AddressInfo>(list);
            this.winGridViewPager1.PrintTitle = "ͨѶ¼��ϵ�˱���";
        }

        /// <summary>
        /// ���б�����
        /// </summary>
        private void BindDataWithGroup(string groupName)
        {
            //entity
            this.winGridViewPager1.DisplayColumns = "Name,Sex,Dept,Position,Birthdate,Mobile,OfficeTelephone,Email,QQ,HomeTelephone,HomeAddress,OfficeAddress,Fax,Company,Other,Note,Creator,CreateTime";
            this.winGridViewPager1.ColumnNameAlias = BLLFactory<Address>.Instance.GetColumnNameAlias();//�ֶ�����ʾ����ת��

            #region ��ӱ�������

            //this.winGridViewPager1.AddColumnAlias("Name", "����");
            //this.winGridViewPager1.AddColumnAlias("Sex", "�Ա�");
            //this.winGridViewPager1.AddColumnAlias("Birthdate", "��������");
            //this.winGridViewPager1.AddColumnAlias("Mobile", "�ֻ�");
            //this.winGridViewPager1.AddColumnAlias("Email", "��������");
            //this.winGridViewPager1.AddColumnAlias("Qq", "QQ");
            //this.winGridViewPager1.AddColumnAlias("HomeTelephone", "��ͥ�绰");
            //this.winGridViewPager1.AddColumnAlias("OfficeTelephone", "�칫�绰");
            //this.winGridViewPager1.AddColumnAlias("HomeAddress", "��ͥסַ");
            //this.winGridViewPager1.AddColumnAlias("OfficeAddress", "�칫��ַ");
            //this.winGridViewPager1.AddColumnAlias("Fax", "�������");
            //this.winGridViewPager1.AddColumnAlias("Company", "��˾��λ");
            //this.winGridViewPager1.AddColumnAlias("Dept", "����");
            //this.winGridViewPager1.AddColumnAlias("Other", "����");
            //this.winGridViewPager1.AddColumnAlias("Note", "��ע");
            //this.winGridViewPager1.AddColumnAlias("Creator", "������");
            //this.winGridViewPager1.AddColumnAlias("CreateTime", "����ʱ��");

            #endregion

            string where = GetConditionSql();
            List<AddressInfo> list = BLLFactory<Address>.Instance.FindByGroupNamePublic(groupName, this.winGridViewPager1.PagerInfo);
            this.winGridViewPager1.DataSource = new SortableBindingList<AddressInfo>(list);
            this.winGridViewPager1.PrintTitle = "ͨѶ¼��ϵ�˱���";
        }
        /// <summary>
        /// ��ѯ���ݲ���
        /// </summary>
        private void btnSearch_Click(object sender, EventArgs e)
        {
            treeConditionSql = null;
            advanceCondition = null;//�������ò�ѯ������������ܻ�ʹ�ø߼���ѯ������
            BindData();
        }

        /// <summary>
        /// �������ݲ���
        /// </summary>
        private void btnAddNew_Click(object sender, EventArgs e)
        {
            FrmEditAddress dlg = new FrmEditAddress();
            dlg.AddressType = AddressType.��˾;
            dlg.OnDataSaved += new EventHandler(dlg_OnDataSaved);
            dlg.InitFunction(LoginUserInfo, FunctionDict);//���Ӵ��帳ֵ�û�Ȩ����Ϣ

            if (DialogResult.OK == dlg.ShowDialog())
            {
                BindData();
            }
        }

        /// <summary>
        /// �ṩ���ؼ��س�ִ�в�ѯ�Ĳ���
        /// </summary>
        private void SearchControl_KeyUp(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                btnSearch_Click(null, null);
            }
        }


        private string moduleName = "ͨѶ¼��ϵ��";
        /// <summary>
        /// ����Excel�Ĳ���
        /// </summary>          
        private void btnImport_Click(object sender, EventArgs e)
        {
            string templateFile = string.Format("{0}-ģ��.xls", moduleName);
            FrmImportExcelData dlg = new FrmImportExcelData();
            dlg.SetTemplate(templateFile, System.IO.Path.Combine(Application.StartupPath, templateFile));
            dlg.OnDataSave += new FrmImportExcelData.SaveDataHandler(ExcelData_OnDataSave);
            dlg.OnRefreshData += new EventHandler(ExcelData_OnRefreshData);
            dlg.ShowDialog();
        }

        void ExcelData_OnRefreshData(object sender, EventArgs e)
        {
            BindData();
        }

        bool ExcelData_OnDataSave(DataRow dr)
        {
            bool success = false;
            bool converted = false;
            DateTime dtDefault = Convert.ToDateTime("1900-01-01");
            DateTime dt;
            AddressInfo info = new AddressInfo();
            info.AddressType = AddressType.��˾;
            info.Name = dr["����"].ToString();
            info.Gender = Convert.ToInt16(dr["�Ա�"]);
            converted = DateTime.TryParse(dr["��������"].ToString(), out dt);
            if (converted && dt > dtDefault)
            {
                info.Birthday = dt;
            }
            info.MobilePhone = dr["�ֻ�"].ToString();
            info.Email = dr["��������"].ToString();
            info.QQ = Convert.ToInt32( dr["QQ"]);
            info.HomePhone = dr["��ͥ�绰"].ToString();
            info.OfficePhone = dr["�칫�绰"].ToString();
            info.HomeAddress = dr["��ͥסַ"].ToString();
            info.OfficeAddress = dr["�칫��ַ"].ToString();
            info.Fax = dr["�������"].ToString();
            info.CompanyName = dr["��˾��λ"].ToString();
            info.DeptName = dr["����"].ToString();
            info.WorkPosition = dr["ְλ"].ToString();
            info.Other = dr["����"].ToString();
            info.Remark = dr["��ע"].ToString();

            info.CreatorId = LoginUserInfo.Id;
            info.CreatorTime = DateTimeHelper.GetServerDateTime2();
            info.EditorId = LoginUserInfo.Id;
            info.LastUpdateTime = DateTimeHelper.GetServerDateTime2();
            info.DeptId = LoginUserInfo.DeptId;
            info.CompanyId = LoginUserInfo.CompanyId;

            success = BLLFactory<Address>.Instance.Insert(info);
            return success;
        }

        /// <summary>
        /// ����Excel�Ĳ���
        /// </summary>
        private void btnExport_Click(object sender, EventArgs e)
        {
            string file = FileDialogHelper.SaveExcel(string.Format("{0}.xls", moduleName));
            if (!string.IsNullOrEmpty(file))
            {
                string where = GetConditionSql();
                List<AddressInfo> list = new List<AddressInfo>();

                TreeNode selectedNode = this.treeView1.SelectedNode;
                if (isUserGroupName && selectedNode != null)
                {
                    //ֻ�������ݿ�ķ����ʹ������
                    if (selectedNode.Text != "������ϵ��" && selectedNode.Text != "δ������ϵ��")
                    {
                        string groupName = this.treeView1.SelectedNode.Text;
                        list = BLLFactory<Address>.Instance.FindByGroupName(LoginUserInfo.Id, groupName);
                    }
                }
                else
                {
                    list = BLLFactory<Address>.Instance.Find(where);
                }

                DataTable dtNew = DataTableHelper.CreateTable("���|int,����,�Ա�,��������,�ֻ�,��������,QQ,��ͥ�绰,�칫�绰,��ͥסַ,�칫��ַ,�������,��˾��λ,����,ְλ,����,��ע,������,����ʱ��");
                DataRow dr;
                int j = 1;
                for (int i = 0; i < list.Count; i++)
                {
                    dr = dtNew.NewRow();
                    dr["���"] = j++;
                    dr["����"] = list[i].Name;
                    dr["�Ա�"] = list[i].Gender;
                    dr["��������"] = list[i].Birthday;
                    dr["�ֻ�"] = list[i].MobilePhone;
                    dr["��������"] = list[i].Email;
                    dr["QQ"] = list[i].QQ;
                    dr["��ͥ�绰"] = list[i].HomePhone;
                    dr["�칫�绰"] = list[i].OfficePhone;
                    dr["��ͥסַ"] = list[i].HomeAddress;
                    dr["�칫��ַ"] = list[i].OfficeAddress;
                    dr["�������"] = list[i].Fax;
                    dr["��˾��λ"] = list[i].CompanyName;
                    dr["����"] = list[i].DeptName;
                    dr["ְλ"] = list[i].WorkPosition;
                    dr["����"] = list[i].Other;
                    dr["��ע"] = list[i].Remark;
                    dr["������"] = list[i].CreatorId;
                    dr["����ʱ��"] = list[i].CreatorTime;
                    dtNew.Rows.Add(dr);
                }

                try
                {
                    string error = "";
                    AsposeExcelTools.DataTableToExcel2(dtNew, file, out error);
                    if (!string.IsNullOrEmpty(error))
                    {
                        MessageDxUtil.ShowError(string.Format("����Excel���ִ���{0}", error));
                    }
                    else
                    {
                        if (MessageDxUtil.ShowYesNoAndTips("�����ɹ����Ƿ���ļ���") == System.Windows.Forms.DialogResult.Yes)
                        {
                            System.Diagnostics.Process.Start(file);
                        }
                    }
                }
                catch (Exception ex)
                {
                    LogHelper.WriteLog(LogLevel.LOG_LEVEL_CRIT, ex, typeof(FrmAddressCompany));
                    MessageDxUtil.ShowError(ex.Message);
                }
            }
        }

        private void InitTree()
        {
            this.treeView1.BeginUpdate();
            this.treeView1.Nodes.Clear();
            //���һ��δ�����ȫ���ͻ������
            TreeNode topNode = new TreeNode("������ϵ��", 0, 0);
            this.treeView1.Nodes.Add(topNode);
            this.treeView1.Nodes.Add(new TreeNode("δ������ϵ��", 2, 2));

            List<AddressGroupNodeInfo> groupList = BLLFactory<AddressGroup>.Instance.GetTree(AddressType.��˾.ToString());
            AddContactGroupTree(groupList, topNode, 1);

            this.treeView1.ExpandAll();
            this.treeView1.EndUpdate();
        }

        /// <summary>
        /// ��ȡ�ͻ����鲢��
        /// </summary>
        private void AddContactGroupTree(List<AddressGroupNodeInfo> nodeList, TreeNode treeNode, int i)
        {
            foreach (AddressGroupNodeInfo nodeInfo in nodeList)
            {
                TreeNode subNode = new TreeNode(nodeInfo.Name, i, i);
                treeNode.Nodes.Add(subNode);

                AddContactGroupTree(nodeInfo.Children, subNode, i);
            }
        }

        bool isUserGroupName = false;
        string treeConditionSql = "";
        private void treeView1_AfterSelect(object sender, TreeViewEventArgs e)
        {
            if (e.Node != null)
            {
                if (e.Node.Text == "������ϵ��")
                {
                    treeConditionSql = "";
                    BindData();
                }
                else if (e.Node.Text == "δ������ϵ��")
                {
                    isUserGroupName = true;
                    BindDataWithGroup(null);
                }
                else
                {
                    isUserGroupName = true;
                    BindDataWithGroup(e.Node.Text);
                }
            }
        }

        private void menuTree_ExpandAll_Click(object sender, EventArgs e)
        {
            this.treeView1.ExpandAll();
        }

        private void menuTree_Clapase_Click(object sender, EventArgs e)
        {
            this.treeView1.CollapseAll();
        }

        private void menuTree_Refresh_Click(object sender, EventArgs e)
        {
            InitTree();
        }

        private void menuTree_AddNew_Click(object sender, EventArgs e)
        {
            btnAddNew_Click(null, null);
        }

        private void menu_GroupManage_Click(object sender, EventArgs e)
        {
            FrmAddressGroup dlg = new FrmAddressGroup();
            dlg.AddressType = AddressType.��˾;
            dlg.InitFunction(LoginUserInfo, FunctionDict);
            dlg.OnDataSaved += new EventHandler(AddressGroup_OnDataSaved);
            dlg.ShowDialog();
        }

        void AddressGroup_OnDataSaved(object sender, EventArgs e)
        {
            InitTree();
            BindData();
        }

        private void btnBatchAdd_Click(object sender, EventArgs e)
        {
            FrmBatchAddAddress dlg = new FrmBatchAddAddress();
            dlg.AddressType = AddressType.��˾;
            dlg.OnDataSaved += new EventHandler(dlg_OnDataSaved);
            dlg.ShowDialog();
        }
    }
}
