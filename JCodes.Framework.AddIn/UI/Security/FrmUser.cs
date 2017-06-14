using System;
using System.Text;
using System.Data;
using System.Drawing;
using System.Windows.Forms;
using System.ComponentModel;
using System.Collections.Generic;
using JCodes.Framework.Entity;
using JCodes.Framework.Common;
using JCodes.Framework.jCodesenum.BaseEnum;
using JCodes.Framework.BLL;
using JCodes.Framework.CommonControl;
using JCodes.Framework.CommonControl.BaseUI;
using JCodes.Framework.Common.Framework;
using JCodes.Framework.CommonControl.Other;
using JCodes.Framework.Common.Office;
using JCodes.Framework.Common.Databases;
using JCodes.Framework.Common.Extension;
using JCodes.Framework.AddIn.Other;
using JCodes.Framework.CommonControl.Pager.Others;
using JCodes.Framework.Common.Files;
using JCodes.Framework.Common.Network;
using JCodes.Framework.Common.Device;

namespace JCodes.Framework.AddIn.UI.Security
{
    /// <summary>
    /// ϵͳ�û���Ϣ
    /// </summary>	
    public partial class FrmUser : BaseDock
    {
        public FrmUser()
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
            this.winGridViewPager1.PagerInfo.PageSize = 20;//ָ��20��һҳ

            //�����س������в�ѯ
            foreach (Control control in this.layoutControl1.Controls)
            {
                control.KeyUp += new System.Windows.Forms.KeyEventHandler(this.SearchControl_KeyUp);
            }
        }

        void gridView1_RowCellStyle(object sender, DevExpress.XtraGrid.Views.Grid.RowCellStyleEventArgs e)
        {
            if (e.Column.FieldName == "AuditStatus")
            {
                string status = this.winGridViewPager1.gridView1.GetRowCellValue(e.RowHandle, "AuditStatus").ToString();
                Color color = Color.White;
                if (status == "δ���")
                {
                    e.Appearance.BackColor = Color.Red;
                    e.Appearance.BackColor2 = Color.LightCyan;
                }
            }
            else if (e.Column.FieldName == "IsExpire")
            {
                string status = this.winGridViewPager1.gridView1.GetRowCellValue(e.RowHandle, "IsExpire").ToString();
                Color color = Color.White;
                if (status.ToBoolean())
                {
                    e.Appearance.BackColor = Color.Yellow;
                    e.Appearance.BackColor2 = Color.LightCyan;
                }
            }
            else if (e.Column.FieldName == "Deleted")
            {
                string status = this.winGridViewPager1.gridView1.GetRowCellValue(e.RowHandle, "Deleted").ToString();
                Color color = Color.White;
                if (status.ToBoolean())
                {
                    e.Appearance.BackColor = Color.Yellow;
                    e.Appearance.BackColor2 = Color.LightCyan;
                }
            }
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
                SetGridColumWidth("Gender", 50);
                SetGridColumWidth("Email", 150);
                SetGridColumWidth("Note", 200);
            }
        }

        private void SetGridColumWidth(string columnName, int width)
        {
            DevExpress.XtraGrid.Columns.GridColumn column = this.winGridViewPager1.gridView1.Columns.ColumnByFieldName(columnName);
            if (column != null)
            {
                column.Width = width;
            }
        }

        /// <summary>
        /// ��д��ʼ�������ʵ�֣���������ˢ��
        /// </summary>
        public override void FormOnLoad()
        {
            InitDeptTreeview();
            InitRoleTree();
            BindData();
            Init_Function();
        }

        void Init_Function()
        {
            btnSearch.Enabled = Portal.gc.HasFunction("User/search");
            btnAddNew.Enabled = Portal.gc.HasFunction("User/add");
            btnImport.Enabled = Portal.gc.HasFunction("User/import");
            btnExport.Enabled = Portal.gc.HasFunction("User/export");
        }

        #region ��ʼ����֯�ṹ������

        /// <summary>
        /// ��ʼ����֯�����б�
        /// </summary>
        private void InitDeptTreeview()
        {
            this.treeDept.BeginUpdate();
            this.treeDept.Nodes.Clear();

            List<OUInfo>  list = Portal.gc.GetMyTopGroup();
            foreach (OUInfo groupInfo in list)
            {
                if (groupInfo != null && !groupInfo.Deleted)
                {
                    TreeNode topnode = new TreeNode();
                    topnode.Text = groupInfo.Name;
                    topnode.Name = groupInfo.ID.ToString();
                    topnode.ImageIndex = Portal.gc.GetImageIndex(groupInfo.Category);
                    topnode.SelectedImageIndex = Portal.gc.GetImageIndex(groupInfo.Category);
                    topnode.Tag = string.Format("Company_ID='{0}' ", groupInfo.ID);
                    this.treeDept.Nodes.Add(topnode);

                    List<OUNodeInfo> sublist = BLLFactory<OU>.Instance.GetTreeByID(groupInfo.ID);
                    AddOUNode(sublist, topnode);
                }
            }

            this.treeDept.ExpandAll();
            this.treeDept.EndUpdate();
        }

        private void AddOUNode(List<OUNodeInfo> list, TreeNode parentNode)
        {
            foreach (OUNodeInfo ouInfo in list)
            {
                TreeNode ouNode = new TreeNode();
                ouNode.Text = ouInfo.Name;
                ouNode.Name = ouInfo.ID.ToString();
                if (ouInfo.Deleted)
                {
                    ouNode.ForeColor = Color.Red;
                    continue;//��������ʾ
                }
                ouNode.ImageIndex = Portal.gc.GetImageIndex(ouInfo.Category);
                ouNode.SelectedImageIndex = Portal.gc.GetImageIndex(ouInfo.Category);
                if (ouNode.ImageIndex <= 1)//0,1Ϊ���š���˾
                {
                    ouNode.Tag = string.Format("Company_ID='{0}'", ouInfo.ID);
                }
                else
                {
                    ouNode.Tag = string.Format("Dept_ID={0}", ouInfo.ID);
                }
                parentNode.Nodes.Add(ouNode);

                AddOUNode(ouInfo.Children, ouNode);
            }            
        }

        #endregion

        #region ��ʼ����ɫ������

        /// <summary>
        /// ��ʼ����ɫ�б�
        /// </summary>
        private void InitRoleTree()
        {
            this.treeRole.BeginUpdate();
            this.treeRole.Nodes.Clear();

            List<OUInfo> list = Portal.gc.GetMyTopGroup();
            foreach (OUInfo groupInfo in list)
            {
                if (groupInfo != null && !groupInfo.Deleted)
                {
                    TreeNode topnode = AddOUNode(groupInfo);
                    AddRole(groupInfo, topnode);

                    if (groupInfo.Category == "����")
                    {
                        List<OUInfo> sublist = BLLFactory<OU>.Instance.GetAllCompany(groupInfo.ID);
                        foreach (OUInfo info in sublist)
                        {
                            TreeNode ouNode = AddOUNode(info, topnode);
                            AddRole(info, ouNode);
                        }
                    }
                    this.treeRole.Nodes.Add(topnode);
                }
            }

            this.treeRole.ExpandAll();
            this.treeRole.EndUpdate();
        }

        private TreeNode AddOUNode(OUInfo ouInfo, TreeNode parentNode = null)
        {
            TreeNode ouNode = new TreeNode();
            ouNode.Text = ouInfo.Name;
            ouNode.Tag = string.Format("Company_ID='{0}' ", ouInfo.ID);
            ouNode.ImageIndex = Portal.gc.GetImageIndex(ouInfo.Category);
            ouNode.SelectedImageIndex = Portal.gc.GetImageIndex(ouInfo.Category);

            if (parentNode != null)
            {
                parentNode.Nodes.Add(ouNode);
            }

            return ouNode;
        }

        private void AddRole(OUInfo ouInfo, TreeNode treeNode)
        {
            List<RoleInfo> roleList = BLLFactory<Role>.Instance.GetRolesByCompany(ouInfo.ID.ToString());
            foreach (RoleInfo roleInfo in roleList)
            {
                TreeNode roleNode = new TreeNode();
                roleNode.Text = roleInfo.Name;
                roleNode.Tag = roleInfo.ID;
                roleNode.ImageIndex = 5;
                roleNode.SelectedImageIndex = 5;

                treeNode.Nodes.Add(roleNode);
            }
        }

        #endregion

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
            if (!Portal.gc.HasFunction("User/del"))
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
                BLLFactory<User>.Instance.SetDeletedFlag(ID);
            }

            BindData();
        }

        /// <summary>
        /// ��ҳ�ؼ��༭�����
        /// </summary>
        private void winGridViewPager1_OnEditSelected(object sender, EventArgs e)
        {
            if (!Portal.gc.HasFunction("User/edit"))
            {
                MessageDxUtil.ShowError(Const.NoAuthMsg);
                return;
            }

            string ID = this.winGridViewPager1.gridView1.GetFocusedRowCellDisplayText("ID");
            List<string> IDList = new List<string>();
            for (int i = 0; i < this.winGridViewPager1.gridView1.RowCount; i++)
            {
                string strTemp = this.winGridViewPager1.GridView1.GetRowCellDisplayText(i, "ID");
                IDList.Add(strTemp);
            }

            if (!string.IsNullOrEmpty(ID))
            {
                FrmEditUser dlg = new FrmEditUser();
                dlg.ID = ID;
                dlg.IDList = IDList;
                dlg.OnDataSaved += new EventHandler(dlg_OnDataSaved);

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
            if (!Portal.gc.HasFunction("User/add"))
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
            string where = GetConditionSql();
            this.winGridViewPager1.AllToExport = BLLFactory<User>.Instance.FindToDataTable(where);
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
        private string treeConditionSql = "";
        bool isUseRoleSearch = false;//�Ƿ�ʹ�ý�ɫ��ѯ

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
                condition.AddCondition("HandNo", this.txtHandNo.Text.Trim(), SqlOperator.Like);
                condition.AddCondition("Name", this.txtName.Text.Trim(), SqlOperator.Like);
                condition.AddCondition("FullName", this.txtFullName.Text.Trim(), SqlOperator.Like);
                condition.AddCondition("Nickname", this.txtNickname.Text.Trim(), SqlOperator.Like);
                condition.AddCondition("MobilePhone", this.txtMobilePhone.Text.Trim(), SqlOperator.Like);
                condition.AddCondition("Email", this.txtEmail.Text.Trim(), SqlOperator.Like);
                condition.AddCondition("Gender", this.txtGender.Text.Trim(), SqlOperator.Like);
                condition.AddCondition("QQ", this.txtQq.Text.Trim(), SqlOperator.Like);
            }

            //����ǹ�˾����Ա�����ӹ�˾��ʶ
            if (Portal.gc.UserInRole(RoleInfo.CompanyAdminName))
            {
                condition.AddCondition("Company_ID", Portal.gc.UserInfo.Company_ID, SqlOperator.Equal);
            }

            string where = condition.BuildConditionSql().Replace("Where", "");
            
            //����ǵ����ڵ�õ�����������ʹ�����б�ģ�����ʹ�ò�ѯ������
            if (!string.IsNullOrEmpty(treeConditionSql))
            {
                where = treeConditionSql;
            }

            //���ѡ����ֻ��ʾ�����û�
            if (!this.chkIncludeDelete.Checked)
            {
                where += string.Format(" AND Deleted=0");
            }
            return where;
        }

        /// <summary>
        /// ���б�����
        /// </summary>
        private void BindData()
        {
            //entity
            this.winGridViewPager1.DisplayColumns = "HandNo,Name,FullName,Title,MobilePhone,OfficePhone,Email,Gender,QQ,AuditStatus,IsExpire,Deleted,Note";
            this.winGridViewPager1.ColumnNameAlias = BLLFactory<User>.Instance.GetColumnNameAlias();//�ֶ�����ʾ����ת��
            string where = GetConditionSql();
            List<UserInfo> list = BLLFactory<User>.Instance.FindWithPager(where, this.winGridViewPager1.PagerInfo);
            this.winGridViewPager1.DataSource = new SortableBindingList<UserInfo>(list);
            this.winGridViewPager1.PrintTitle = "ϵͳ�û���Ϣ����";
        }

        /// <summary>
        /// ���б����ݣ����ݽ�ɫ��ѯ��
        /// </summary>
        private void BindDataUseRole(int roleId)
        {
            //entity
            this.winGridViewPager1.DisplayColumns = "HandNo,Name,FullName,Title,MobilePhone,OfficePhone,Email,Gender,QQ,AuditStatus,IsExpire,Deleted,Note";
            this.winGridViewPager1.ColumnNameAlias = BLLFactory<User>.Instance.GetColumnNameAlias();//�ֶ�����ʾ����ת��

            List<UserInfo> list = BLLFactory<User>.Instance.GetUsersByRole(roleId);
            this.winGridViewPager1.DataSource = new SortableBindingList<UserInfo>(list);
            this.winGridViewPager1.PrintTitle = "ϵͳ�û���Ϣ����";
        }

        /// <summary>
        /// ��ѯ���ݲ���
        /// </summary>
        private void btnSearch_Click(object sender, EventArgs e)
        {
            if (!Portal.gc.HasFunction("User/search"))
            {
                MessageDxUtil.ShowError(Const.NoAuthMsg);
                return;
            }

            treeConditionSql = "";
            advanceCondition = null;//�������ò�ѯ������������ܻ�ʹ�ø߼���ѯ������
            isUseRoleSearch = false;

            BindData();
        }

        /// <summary>
        /// �������ݲ���
        /// </summary>
        private void btnAddNew_Click(object sender, EventArgs e)
        {
            //Ĭ�ϲ���
            string deptId = "";
            TreeNode node = treeDept.SelectedNode;
            if (node != null)
            {
                deptId = node.Name;
            }

            FrmEditUser dlg = new FrmEditUser();
            dlg.OnDataSaved += new EventHandler(dlg_OnDataSaved);

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

        string SelectedDeptId = "";
        private string moduleName = "ϵͳ�û���Ϣ";
        /// <summary>
        /// ����Excel�Ĳ���
        /// </summary>          
        private void btnImport_Click(object sender, EventArgs e)
        {
            if (!Portal.gc.HasFunction("User/import"))
            {
                MessageDxUtil.ShowError(Const.NoAuthMsg);
                return;
            }

            //��������Excel��ָ�����ţ���Ĭ��ʹ��ѡ���Ĳ�����Ϊ��¼�Ĳ���
            TreeNode deptNode = this.treeDept.SelectedNode;
            if (deptNode != null)
            {
                SelectedDeptId = deptNode.Name;
            }
            else
            {
                MessageDxUtil.ShowTips("��ѡ����֯�����ڵ㣬Ȼ���ڽ��е��룬Ĭ�ϵ����û����ڸò��Žڵ�");
                return;
            }

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
            string companyName = dr["������˾����"].ToString();
            OUInfo companyInfo = BLLFactory<OU>.Instance.FindByName(companyName);
            if (companyInfo == null)
            {
                //��˾���Ʋ����ڣ���ʾ���󲢼�¼��־
                throw new ArgumentException(string.Format("��˾���ơ�{0}�������ڣ���¼������", companyName));
            }

            string name = dr["�û���/��¼��"].ToString();
            if (string.IsNullOrEmpty(name))
            {
                return false;//�û���Ϊ�գ�������
            }
            else
            {
                //�ж��Ƿ��¼���ظ�������ظ�������ʾ���󣬲���¼����־
                bool isExist = BLLFactory<User>.Instance.IsExistKey("Name", name);
                if (isExist)
                {
                    throw new ArgumentException(string.Format("�û���/��¼����{0}���Ѵ��ڣ���¼������", name));
                }
            }

            string deptName = dr["Ĭ�ϲ�������"].ToString();
            OUInfo deptInfo = null;
            //if (!string.IsNullOrEmpty(deptName))
            //{
            //    deptInfo = BLLFactory<OU>.Instance.FindByName(deptName);
            //}

            //Ĭ��ʹ��ѡ���Ĳ�����Ϊ��¼�Ĳ���                
            if (!string.IsNullOrEmpty(SelectedDeptId))
            {
                deptInfo = BLLFactory<OU>.Instance.FindByID(SelectedDeptId.ToInt32());
            }

            bool success = false;
            bool converted = false;
            DateTime dtDefault = Convert.ToDateTime("1900-01-01");
            DateTime dt;
            UserInfo info = new UserInfo();
            info.HandNo = dr["�û�����"].ToString();
            info.Name = name;
            info.FullName = dr["�û�ȫ��"].ToString();
            info.Nickname = dr["�û��س�"].ToString();
            info.Gender = dr["�Ա�"].ToString();
            info.MobilePhone = dr["�ƶ��绰"].ToString();
            info.Email = dr["�ʼ���ַ"].ToString();
            info.CurrentLoginUserId = Portal.gc.UserInfo.ID.ToString();
            #region ��ѡ�ֶ�

            if (dr.Table.Columns.Contains("�Ƿ����"))
            {
                info.IsExpire = dr["�Ƿ����"].ToString().ToInt32() > 0;
            }
            if (dr.Table.Columns.Contains("ְ��ͷ��"))
            {
                info.Title = dr["ְ��ͷ��"].ToString();
            }
            if (dr.Table.Columns.Contains("���֤����"))
            {
                info.IdentityCard = dr["���֤����"].ToString();
            }
            if (dr.Table.Columns.Contains("�칫�绰"))
            {
                info.OfficePhone = dr["�칫�绰"].ToString();
            }
            if (dr.Table.Columns.Contains("��ͥ�绰"))
            {
                info.HomePhone = dr["��ͥ�绰"].ToString();
            }
            if (dr.Table.Columns.Contains("סַ"))
            {
                info.Address = dr["סַ"].ToString();
            }
            if (dr.Table.Columns.Contains("�칫��ַ"))
            {
                info.WorkAddr = dr["�칫��ַ"].ToString();
            }
            if (dr.Table.Columns.Contains("��������"))
            {
                converted = DateTime.TryParse(dr["��������"].ToString(), out dt);
                if (converted && dt > dtDefault)
                {
                    info.Birthday = dt;
                }
            }
            if (dr.Table.Columns.Contains("QQ����"))
            {
                info.QQ = dr["QQ����"].ToString();
            }
            if (dr.Table.Columns.Contains("����ǩ��"))
            {
                info.Signature = dr["����ǩ��"].ToString();
            }
            if (dr.Table.Columns.Contains("���״̬"))
            {
                info.AuditStatus = dr["���״̬"].ToString();
            }
            if (dr.Table.Columns.Contains("��ע"))
            {
                info.Note = dr["��ע"].ToString();
            }
            if (dr.Table.Columns.Contains("�Զ����ֶ�"))
            {
                info.CustomField = dr["�Զ����ֶ�"].ToString();
            }
            if (dr.Table.Columns.Contains("������"))
            {
                info.SortCode = dr["������"].ToString();
            } 
            #endregion

            #region �Զ��ֶ�

            //Ĭ�ϲ��ţ�����Ϊ��
            info.DeptName = deptName;
            if (deptInfo != null)
            {
                info.Dept_ID = deptInfo.ID.ToString();
            }

            //��˾���ƣ�����Ϊ��
            info.CompanyName = companyName;
            if (companyInfo != null)
            {
                info.Company_ID = companyInfo.ID.ToString();
            }

            info.Creator = Portal.gc.UserInfo.FullName;
            info.Creator_ID = Portal.gc.UserInfo.ID.ToString();
            info.CreateTime = DateTime.Now;
            info.Editor = Portal.gc.UserInfo.FullName;
            info.Editor_ID = Portal.gc.UserInfo.ID.ToString(); 
            #endregion

            success = BLLFactory<User>.Instance.Insert(info);
            return success;
        }

        /// <summary>
        /// ����Excel�Ĳ���
        /// </summary>
        private void btnExport_Click(object sender, EventArgs e)
        {
            if (!Portal.gc.HasFunction("User/export"))
            {
                MessageDxUtil.ShowError(Const.NoAuthMsg);
                return;
            }

            string file = FileDialogHelper.SaveExcel(string.Format("{0}.xls", moduleName));
            if (!string.IsNullOrEmpty(file))
            {
                List<UserInfo> list = new List<UserInfo>();

                TreeNode selectedNode = this.treeRole.SelectedNode;
                if (isUseRoleSearch && selectedNode != null && selectedNode.Tag != null)
                {
                    string roleId = selectedNode.Tag.ToString();
                    if (!string.IsNullOrEmpty(roleId))
                    {
                        list = BLLFactory<User>.Instance.GetUsersByRole(roleId.ToInt32());
                    }
                }
                else
                {
                    string where = GetConditionSql();
                    list = BLLFactory<User>.Instance.Find(where);
                }

                DataTable dtNew = DataTableHelper.CreateTable("���|int,�û�����,�û���/��¼��,�û�ȫ��,�û��س�,�Ƿ����,ְ��ͷ��,���֤����,�ƶ��绰,�칫�绰,��ͥ�绰,�ʼ���ַ,סַ,�칫��ַ,�Ա�,��������,QQ����,����ǩ��,���״̬,��ע,�Զ����ֶ�,Ĭ�ϲ�������,������˾����,������");
                DataRow dr;
                int j = 1;
                DateTime dtDefault = Convert.ToDateTime("1900-01-01");
                for (int i = 0; i < list.Count; i++)
                {
                    dr = dtNew.NewRow();
                    dr["���"] = j++;
                    dr["�û�����"] = list[i].HandNo;
                    dr["�û���/��¼��"] = list[i].Name;
                    dr["�û�ȫ��"] = list[i].FullName;
                    dr["�û��س�"] = list[i].Nickname;
                    dr["�Ƿ����"] = list[i].IsExpire ? "1" : "0";
                    dr["ְ��ͷ��"] = list[i].Title;
                    dr["���֤����"] = list[i].IdentityCard;
                    dr["�ƶ��绰"] = list[i].MobilePhone;
                    dr["�칫�绰"] = list[i].OfficePhone;
                    dr["��ͥ�绰"] = list[i].HomePhone;
                    dr["�ʼ���ַ"] = list[i].Email;
                    dr["סַ"] = list[i].Address;
                    dr["�칫��ַ"] = list[i].WorkAddr;
                    dr["�Ա�"] = list[i].Gender;
                    if (list[i].Birthday > dtDefault)
                    {
                        dr["��������"] = list[i].Birthday;
                    }
                    dr["QQ����"] = list[i].QQ;
                    dr["����ǩ��"] = list[i].Signature;
                    dr["���״̬"] = list[i].AuditStatus;
                    dr["��ע"] = list[i].Note;
                    dr["�Զ����ֶ�"] = list[i].CustomField;
                    dr["Ĭ�ϲ�������"] = list[i].DeptName;
                    dr["������˾����"] = list[i].CompanyName;
                    dr["������"] = list[i].SortCode;
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
                    LogHelper.WriteLog(LogLevel.LOG_LEVEL_CRIT, ex, typeof(FrmUser));
                    MessageDxUtil.ShowError(ex.Message);
                }
            }
        }

        private void treeDept_AfterSelect(object sender, TreeViewEventArgs e)
        {
            if (e.Node != null && e.Node.Tag != null)
            {
                treeConditionSql = e.Node.Tag.ToString();
                BindData();
            }
            else
            {
                treeConditionSql = "";
                BindData();
            }
        }

        private void treeRole_AfterSelect(object sender, TreeViewEventArgs e)
        {
            if (e.Node != null && e.Node.Tag != null)
            {
                if (e.Node.Tag.ToString().StartsWith("Dept_ID", StringComparison.OrdinalIgnoreCase) ||
                    e.Node.Tag.ToString().StartsWith("Company_ID", StringComparison.OrdinalIgnoreCase))
                {
                    treeConditionSql = e.Node.Tag.ToString();
                    BindData();
                }
                else
                {
                    isUseRoleSearch = true;
                    BindDataUseRole(e.Node.Tag.ToString().ToInt32());
                }
            }
            else
            {
                treeConditionSql = "";
                BindData();
            }
        }

        private void menuDept_AddNew_Click(object sender, EventArgs e)
        {
            if (!Portal.gc.HasFunction("User/add"))
            {
                MessageDxUtil.ShowError(Const.NoAuthMsg);
                return;
            }

            btnAddNew_Click(null, null);
        }

        private void menuDept_ExpandAll_Click(object sender, EventArgs e)
        {            
            this.treeDept.ExpandAll();
        }

        private void menuDept_Collapse_Click(object sender, EventArgs e)
        {
            this.treeDept.CollapseAll();
        }

        private void menuDept_Refresh_Click(object sender, EventArgs e)
        {
            InitDeptTreeview();
        }

        private void menuRole_ExpandAll_Click(object sender, EventArgs e)
        {            
            this.treeRole.ExpandAll();
        }

        private void menuRole_Collapse_Click(object sender, EventArgs e)
        {
            this.treeRole.CollapseAll();
        }

        private void menuRole_Refresh_Click(object sender, EventArgs e)
        {
            InitRoleTree();
        }

        private void menu_InitPassword_Click(object sender, EventArgs e)
        {
            if (!Portal.gc.HasFunction("User/initPwd"))
            {
                MessageDxUtil.ShowError(Const.NoAuthMsg);
                return;
            }

            if (MessageDxUtil.ShowYesNoAndTips("��ȷ������ѡ����¼���û�����ô�� \r\n���ú����뽫����Ϊ��12345678��") == DialogResult.No)
            {
                return;
            }

            int[] rowSelected = this.winGridViewPager1.GridView1.GetSelectedRows();
            foreach (int iRow in rowSelected)
            {
                string ip = NetworkUtil.GetLocalIP();
                string macAddr = HardwareInfoHelper.GetMacAddress();
                string changeUserId = this.winGridViewPager1.GridView1.GetRowCellDisplayText(iRow, "ID");

                bool success = BLLFactory<User>.Instance.ResetPassword(Portal.gc.UserInfo.ID, changeUserId.ToInt32(),Portal.gc.SystemType, ip, macAddr);
                MessageDxUtil.ShowTips(success ? "������������ɹ�" : "����ʧ��");
            }
        }

        private void chkIncludeDelete_CheckedChanged(object sender, EventArgs e)
        {
            BindData();
        }

    }
}
