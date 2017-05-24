using System;
using System.Text;
using System.Data;
using System.Drawing;
using System.Windows.Forms;
using System.ComponentModel;
using System.Collections.Generic;
using JCodes.Framework.Common;
using JCodes.Framework.BLL;
using JCodes.Framework.Entity;
using JCodes.Framework.jCodesenum.BaseEnum;
using JCodes.Framework.CommonControl;
using JCodes.Framework.CommonControl.BaseUI;
using JCodes.Framework.CommonControl.Other;
using JCodes.Framework.Common.Framework;
using JCodes.Framework.Common.Databases;
using JCodes.Framework.AddIn.Other;
using JCodes.Framework.CommonControl.Pager.Others;
using JCodes.Framework.Common.Files;
using JCodes.Framework.Common.Office;
using JCodes.Framework.Common.Winform;

namespace JCodes.Framework.AddIn.UI.Basic
{
    /// <summary>
    /// �û��ؼ�������¼
    /// </summary>	
    public partial class FrmOperationLog : BaseDock
    {
        public FrmOperationLog()
        {
            InitializeComponent();

            InitDictItem();

            this.winGridViewPager1.OnPageChanged += new EventHandler(winGridViewPager1_OnPageChanged);
            this.winGridViewPager1.OnStartExport += new EventHandler(winGridViewPager1_OnStartExport);
            this.winGridViewPager1.OnEditSelected += new EventHandler(winGridViewPager1_OnEditSelected);
            //this.winGridViewPager1.OnAddNew += new EventHandler(winGridViewPager1_OnAddNew);
            this.winGridViewPager1.OnDeleteSelected += new EventHandler(winGridViewPager1_OnDeleteSelected);
            this.winGridViewPager1.OnRefresh += new EventHandler(winGridViewPager1_OnRefresh);
            this.winGridViewPager1.AppendedMenu = this.contextMenuStrip1;
            this.winGridViewPager1.ShowLineNumber = true;
            this.winGridViewPager1.BestFitColumnWith = false;//�Ƿ�����Ϊ�Զ�������ȣ�falseΪ������
			this.winGridViewPager1.gridView1.DataSourceChanged +=new EventHandler(gridView1_DataSourceChanged);
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
            //else if (e.Column.FieldName == "Age")
            //{
            //    e.DisplayText = string.Format("{0}��", e.Value);
            //}
            //else if (Column.FieldName == "ReceivedMoney")
            //{
            //    if (e.Value != null)
            //    {
            //        e.DisplayText = e.Value.ToString().ToDecimal().ToString("C");
            //    }
            //}
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
                SetGridColumWidth("MacAddress", 150);
                SetGridColumWidth("CreateTime", 150);
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
        public override void  FormOnLoad()
        {
            InitTree();
            BindData();
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
            if (MessageDxUtil.ShowYesNoAndTips("��ȷ��ɾ��ѡ���ļ�¼ô��") == DialogResult.No)
            {
                return;
            }

            int[] rowSelected = this.winGridViewPager1.GridView1.GetSelectedRows();
            foreach (int iRow in rowSelected)
            {
                string ID = this.winGridViewPager1.GridView1.GetRowCellDisplayText(iRow, "ID");
                BLLFactory<OperationLog>.Instance.Delete(ID);
            }
             
            BindData();
        }
        
        /// <summary>
        /// ��ҳ�ؼ��༭�����
        /// </summary>
        private void winGridViewPager1_OnEditSelected(object sender, EventArgs e)
        {
            string ID = this.winGridViewPager1.gridView1.GetFocusedRowCellDisplayText("ID");
            List<string> IDList = new List<string>();
            for (int i = 0; i < this.winGridViewPager1.gridView1.RowCount; i++)
            {
                string strTemp = this.winGridViewPager1.GridView1.GetRowCellDisplayText(i, "ID");
                IDList.Add(strTemp);
            }

            if (!string.IsNullOrEmpty(ID))
            {
                FrmEditOperationLog dlg = new FrmEditOperationLog();
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
            btnAddNew_Click(null, null);
        }
        
        /// <summary>
        /// ��ҳ�ؼ�ȫ����������ǰ�Ĳ���
        /// </summary> 
        private void winGridViewPager1_OnStartExport(object sender, EventArgs e)
        {
            string where = GetConditionSql();
            this.winGridViewPager1.AllToExport = BLLFactory<OperationLog>.Instance.FindToDataTable(where);
         }

        /// <summary>
        /// ��ҳ�ؼ���ҳ�Ĳ���
        /// </summary> 
        private void winGridViewPager1_OnPageChanged(object sender, EventArgs e)
        {
            BindData();
        }
        
        /// <summary>
        /// ���ݲ�ѯ���������ѯ���
        /// </summary> 
        private string GetConditionSql()
        {
            //������ڸ߼���ѯ������Ϣ����ʹ�ø߼���ѯ����������ʹ������������ѯ
            SearchCondition condition = new SearchCondition();
            condition.AddCondition("LoginName", this.txtLoginName.Text.Trim(), SqlOperator.Like);
            condition.AddCondition("TableName", this.txtTableName.Text.Trim(), SqlOperator.Like);
            condition.AddCondition("OperationType", this.txtOperationType.Text.Trim(), SqlOperator.Like);
            condition.AddDateCondition("CreateTime", this.txtCreateTime1, this.txtCreateTime2); //��������

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
            return where;
        }
        
        /// <summary>
        /// ���б�����
        /// </summary>
        private void BindData()
        {
        	//entity
            this.winGridViewPager1.DisplayColumns = "LoginName,FullName,CompanyName,TableName,OperationType,IPAddress,MacAddress,CreateTime";
            this.winGridViewPager1.ColumnNameAlias = BLLFactory<OperationLog>.Instance.GetColumnNameAlias();//�ֶ�����ʾ����ת��

            #region ��ӱ�������

            //this.winGridViewPager1.AddColumnAlias("LoginName", "��¼��");
            //this.winGridViewPager1.AddColumnAlias("FullName", "��ʵ����");
            //this.winGridViewPager1.AddColumnAlias("CompanyName", "������˾����");
            //this.winGridViewPager1.AddColumnAlias("TableName", "����������");
            //this.winGridViewPager1.AddColumnAlias("OperationType", "��������");
            //this.winGridViewPager1.AddColumnAlias("CreateTime", "����ʱ��");

            #endregion

            string where = GetConditionSql();
	            List<OperationLogInfo> list = BLLFactory<OperationLog>.Instance.FindWithPager(where, this.winGridViewPager1.PagerInfo);
            this.winGridViewPager1.DataSource = new SortableBindingList<OperationLogInfo>(list);
                this.winGridViewPager1.PrintTitle = "�û��ؼ�������¼����";
         }
        
        /// <summary>
        /// ��ѯ���ݲ���
        /// </summary>
        private void btnSearch_Click(object sender, EventArgs e)
        {
            treeConditionSql = "";
            BindData();
        }
        
        /// <summary>
        /// �������ݲ���
        /// </summary>
        private void btnAddNew_Click(object sender, EventArgs e)
        {
            FrmEditOperationLog dlg = new FrmEditOperationLog();
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

	 						 						 						 						 						 						 						 						 						 
        private string moduleName = "�û��ؼ�������¼";

        /// <summary>
        /// ����Excel�Ĳ���
        /// </summary>
        private void btnExport_Click(object sender, EventArgs e)
        {
            string file = FileDialogHelper.SaveExcel(string.Format("{0}.xls", moduleName));
            if (!string.IsNullOrEmpty(file))
            {
                string where = GetConditionSql();
                List<OperationLogInfo> list = BLLFactory<OperationLog>.Instance.Find(where);
                DataTable dtNew = DataTableHelper.CreateTable("���|int,��¼�û�ID,��¼��,��ʵ����,������˾ID,������˾����,����������,��������,��־����,IP��ַ,Mac��ַ,����ʱ��");
                DataRow dr;
                int j = 1;
                for (int i = 0; i < list.Count; i++)
                {
                    dr = dtNew.NewRow();
                    dr["���"] = j++;
                     dr["��¼�û�ID"] = list[i].User_ID;
                     dr["��¼��"] = list[i].LoginName;
                     dr["��ʵ����"] = list[i].FullName;
                     dr["������˾ID"] = list[i].Company_ID;
                     dr["������˾����"] = list[i].CompanyName;
                     dr["����������"] = list[i].TableName;
                     dr["��������"] = list[i].OperationType;
                     dr["��־����"] = list[i].Note;
                     dr["IP��ַ"] = list[i].IPAddress;
                     dr["Mac��ַ"] = list[i].MacAddress;
                     dr["����ʱ��"] = list[i].CreateTime;
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
                    LogHelper.WriteLog(LogLevel.LOG_LEVEL_CRIT, ex, typeof(FrmOperationLog));
                    MessageDxUtil.ShowError(ex.Message);
                }
            }
         }

        private void btnSetTableLog_Click(object sender, EventArgs e)
        {
            //FrmOperationLogSetting dlg = new FrmOperationLogSetting();
            //dlg.ShowDialog();
            ChildWinManagement.LoadMdiForm(Portal.gc.MainDialog, typeof(FrmOperationLogSetting));
        }

        private void InitTree()
        {
            this.treeView1.BeginUpdate();
            this.treeView1.Nodes.Clear();
            //���һ��δ�����ȫ���ͻ������
            TreeNode topNode = new TreeNode("���м�¼", 0, 0);
            this.treeView1.Nodes.Add(topNode);

            TreeNode companyNode = new TreeNode("������˾", 1, 1);
            this.treeView1.Nodes.Add(companyNode);

            List<OUInfo> companyList = new List<OUInfo>();
            if (Portal.gc.UserInRole(RoleInfo.SuperAdminName))
            {
                List<OUInfo> list = Portal.gc.GetMyTopGroup();
                foreach (OUInfo groupInfo in list)
                {
                    companyList.AddRange(BLLFactory<OU>.Instance.GetAllCompany(groupInfo.ID));
                }
            }
            else
            {
                OUInfo myCompanyInfo = BLLFactory<OU>.Instance.FindByID(Portal.gc.UserInfo.Company_ID);
                if (myCompanyInfo != null)
                {
                    companyList.Add(myCompanyInfo);
                }
            }

            foreach (OUInfo info in companyList)
            {
                TreeNode subNode = new TreeNode(info.Name, 1, 1);
                subNode.Tag = string.Format("Company_ID='{0}' ", info.ID);
                companyNode.Nodes.Add(subNode);
            }

            TreeNode tableNode = new TreeNode("���ݿ��", 2, 2);
            this.treeView1.Nodes.Add(tableNode);
            List<string> tableList = BLLFactory<OperationLog>.Instance.GetFieldList("TableName");

            bool isCompanyAdmin = Portal.gc.UserInRole(RoleInfo.CompanyAdminName);
            foreach (string tablename in tableList)
            {
                TreeNode subNode = new TreeNode(tablename, 3, 3);                
                //����ǹ�˾����Ա�����ӹ�˾��ʶ
                if (isCompanyAdmin)
                {
                    subNode.Tag = string.Format("TableName='{0}' AND Company_ID='{1}' ", tablename, Portal.gc.UserInfo.Company_ID);
                }
                else
                {
                    subNode.Tag = string.Format("TableName='{0}' ", tablename);
                }
                tableNode.Nodes.Add(subNode);

                List<string> operationList = new List<string>() { "����", "�޸�", "ɾ��"};
                foreach (string operationType in operationList)
                {
                    TreeNode operationNode = new TreeNode(operationType, 4, 4);                    
                    //����ǹ�˾����Ա�����ӹ�˾��ʶ
                    if (isCompanyAdmin)
                    {
                        operationNode.Tag = string.Format("TableName='{0}'  AND OperationType='{1}' AND Company_ID='{2}' ",
                            tablename, operationType, Portal.gc.UserInfo.Company_ID);
                    }
                    else
                    {
                        operationNode.Tag = string.Format("TableName='{0}' AND OperationType='{1}' ", tablename, operationType);
                    }
                    subNode.Nodes.Add(operationNode);
                }
            }

            this.treeView1.ExpandAll();
            this.treeView1.EndUpdate();
        }

        string treeConditionSql = "";
        private void treeView1_AfterSelect(object sender, TreeViewEventArgs e)
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

    }
}
