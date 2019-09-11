using System;
using System.Text;
using System.Data;
using System.Drawing;
using System.Windows.Forms;
using System.ComponentModel;
using System.Collections.Generic;
using JCodes.Framework.Common;
using JCodes.Framework.jCodesenum.BaseEnum;
using JCodes.Framework.Entity;
using JCodes.Framework.BLL;
using JCodes.Framework.CommonControl;
using JCodes.Framework.CommonControl.BaseUI;
using JCodes.Framework.CommonControl.Other;
using JCodes.Framework.Common.Framework;
using JCodes.Framework.Common.Databases;
using JCodes.Framework.CommonControl.Pager.Others;
using JCodes.Framework.Common.Files;
using JCodes.Framework.Common.Office;
using JCodes.Framework.CommonControl.Controls;
using JCodes.Framework.Common.Extension;

namespace JCodes.Framework.AddIn.Security
{
    public partial class FrmMenu : BaseDock
    {
        public FrmMenu()
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
            this.winGridViewPager1.BestFitColumnWith = false;
            this.winGridViewPager1.gridView1.DataSourceChanged += new EventHandler(gridView1_DataSourceChanged);

            //�����س������в�ѯ
            foreach (Control control in this.layoutControl1.Controls)
            {
                control.KeyUp += new System.Windows.Forms.KeyEventHandler(this.SearchControl_KeyUp);
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
                winGridViewPager1.gridView1.SetGridColumWidth("Name", 150);
                winGridViewPager1.gridView1.SetGridColumWidth("Icon", 200);
                winGridViewPager1.gridView1.SetGridColumWidth("Seq", 80);
                winGridViewPager1.gridView1.SetGridColumWidth("IsVisable", 80);
                winGridViewPager1.gridView1.SetGridColumWidth("WinformClass", 400);
                winGridViewPager1.gridView1.SetGridColumWidth("WebIcon", 200);
                winGridViewPager1.gridView1.SetGridColumWidth("Url", 200);
                winGridViewPager1.gridView1.SetGridColumWidth("Note", 200);
            }
        }

        /// <summary>
        /// ��д��ʼ�������ʵ�֣���������ˢ��
        /// </summary>
        public override void FormOnLoad()
        {
            InitTree();
            BindData();
            Init_Function();
        }

        void Init_Function()
        {
            btnSearch.Enabled = HasFunction("Menu/search");
            btnAddNew.Enabled = HasFunction("Menu/add");
            btnExport.Enabled = HasFunction("Menu/Export");
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
            if (!HasFunction("Menu/del"))
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
                BLLFactory<Menus>.Instance.DeleteByUser(ID, LoginUserInfo.Id);
            }

            BindData();
        }

        /// <summary>
        /// ��ҳ�ؼ��༭�����
        /// </summary>
        private void winGridViewPager1_OnEditSelected(object sender, EventArgs e)
        {
            if (!HasFunction("Menu/edit"))
            {
                MessageDxUtil.ShowError(Const.NoAuthMsg);
                return;
            }

            Int32 Id = this.winGridViewPager1.gridView1.GetFocusedRowCellDisplayText("ID").ToInt32();
            List<Int32> IdList = new List<Int32>();
            for (int i = 0; i < this.winGridViewPager1.gridView1.RowCount; i++)
            {
                Int32 intTemp = this.winGridViewPager1.GridView1.GetRowCellDisplayText(i, "ID").ToInt32();
                IdList.Add(intTemp);
            }

            if (Id > 0)
            {
                FrmEditMenu dlg = new FrmEditMenu();
                dlg.Id = Id;
                dlg.IdList = IdList;
                dlg.OnDataSaved += new EventHandler(dlg_OnDataSaved);
                if (DialogResult.OK == dlg.ShowDialog())
                {
                    BindData();
                }
            }
        }

        void dlg_OnDataSaved(object sender, EventArgs e)
        {
            InitTree();
            BindData();
        }

        /// <summary>
        /// ��ҳ�ؼ���������
        /// </summary>        
        private void winGridViewPager1_OnAddNew(object sender, EventArgs e)
        {
            if (!HasFunction("Menu/add"))
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
            if (!HasFunction("Menu/Export"))
            {
                MessageDxUtil.ShowError(Const.NoAuthMsg);
                return;
            }

            string where = GetConditionSql();
            this.winGridViewPager1.AllToExport = BLLFactory<Menus>.Instance.FindToDataTable(where);
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
            SearchCondition condition = new SearchCondition();
            condition.AddCondition("Name", this.txtName.Text, SqlOperator.Like);
            condition.AddCondition("FunctionId", this.txtFunctionId.Text, SqlOperator.Like);
            condition.AddCondition("WinformType", this.txtWinformType.Text, SqlOperator.Like);
            condition.AddCondition("Url", this.txtUrl.Text, SqlOperator.Like);
            if (this.txtVisible.Checked)
            {
                condition.AddCondition("Visible", 1, SqlOperator.Equal);
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
            this.winGridViewPager1.DisplayColumns = "Name,Icon,Seq,FunctionId,Visible,WinformType,WebIcon,Url";
            #region ��ӱ�������

            this.winGridViewPager1.AddColumnAlias("ID", "");
            this.winGridViewPager1.AddColumnAlias("Name", "��ʾ����");
            this.winGridViewPager1.AddColumnAlias("Icon", "ͼ��");
            this.winGridViewPager1.AddColumnAlias("Seq", "����");
            this.winGridViewPager1.AddColumnAlias("FunctionId", "����ID");
            this.winGridViewPager1.AddColumnAlias("Visible", "�˵��ɼ�");
            this.winGridViewPager1.AddColumnAlias("WinformType", "Winform��������");
            this.winGridViewPager1.AddColumnAlias("WebIcon", "Web����Ĳ˵�ͼ��");
            this.winGridViewPager1.AddColumnAlias("Url", "Web����Url��ַ");

            #endregion

            string where = GetConditionSql();
            List<MenuInfo> list = BLLFactory<Menus>.Instance.FindWithPager(where, this.winGridViewPager1.PagerInfo);
            this.winGridViewPager1.DataSource = new SortableBindingList<MenuInfo>(list);
            this.winGridViewPager1.PrintTitle = "���ܲ˵���Ϣ����";
        }

        /// <summary>
        /// ��ѯ���ݲ���
        /// </summary>
        private void btnSearch_Click(object sender, EventArgs e)
        {
            if (!HasFunction("Menu/search"))
            {
                MessageDxUtil.ShowError(Const.NoAuthMsg);
                return;
            }

            treeConditionSql = "";
            BindData();
        }

        /// <summary>
        /// �������ݲ���
        /// </summary>
        private void btnAddNew_Click(object sender, EventArgs e)
        {
            string selectId = "";
            string systemType = "";
            TreeNode node = this.treeView1.SelectedNode;
            if (node != null)
            {
                if (node.Tag != null)
                {
                    MenuNodeInfo menuInfo = node.Tag as MenuNodeInfo;
                    if (menuInfo != null)
                    {
                        selectId = menuInfo.Gid;
                        systemType = menuInfo.SystemtypeId;
                    }
                }
                else
                {
                    systemType = node.Name;
                }
            }

            FrmEditMenu dlg = new FrmEditMenu();
            dlg.PID = selectId;
            dlg.SystemType_ID = systemType;
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

        private string moduleName = "���ܲ˵�";

        /// <summary>
        /// ����Excel�Ĳ���
        /// </summary>
        private void btnExport_Click(object sender, EventArgs e)
        {
            string file = FileDialogHelper.SaveExcel(string.Format("{0}.xls", moduleName));
            if (!string.IsNullOrEmpty(file))
            {
                List<MenuInfo> list = BLLFactory<Menus>.Instance.GetAll();
                DataTable dtNew = DataTableHelper.CreateTable("���|int,��ID,��ʾ����,ͼ��,����,����ID,�˵��ɼ�,Winform��������,Web����Ĳ˵�ͼ��,Web����Url��ַ,ϵͳ���");
                DataRow dr;
                int j = 1;
                for (int i = 0; i < list.Count; i++)
                {
                    dr = dtNew.NewRow();
                    dr["���"] = j++;
                    dr["��ID"] = list[i].Pgid;
                    dr["��ʾ����"] = list[i].Name;
                    dr["ͼ��"] = list[i].Icon;
                    dr["����"] = list[i].Seq;
                    dr["����ID"] = list[i].AuthGid;
                    dr["�˵��ɼ�"] = list[i].IsVisable;
                    dr["Winform��������"] = list[i].WinformClass;
                    dr["Web����Ĳ˵�ͼ��"] = list[i].WebIcon;
                    dr["Web����Url��ַ"] = list[i].Url;
                    dr["ϵͳ���"] = list[i].SystemtypeId;
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
                    LogHelper.WriteLog(LogLevel.LOG_LEVEL_CRIT, ex, typeof(FrmMenu));
                    MessageDxUtil.ShowError(ex.Message);
                }
            }
        }

        /// <summary>
        /// ����������
        /// </summary>
        private void InitTree()
        {
            treeView1.Nodes.Clear();
            treeView1.BeginUpdate();
            Cursor.Current = Cursors.WaitCursor;

            //�Ȼ�ȡϵͳ���ͣ�Ȼ��Բ�ͬ��ϵͳ�����µĲ˵����а���ʾ
            List<SystemTypeInfo> typeList = BLLFactory<SystemType>.Instance.GetAll();
            foreach (SystemTypeInfo typeInfo in typeList)
            {
                TreeNode pNode = new TreeNode();
                pNode.Text = typeInfo.Name;//ϵͳ���ͽڵ�
                pNode.Name = typeInfo.OID;
                pNode.ImageIndex = 0;
                pNode.SelectedImageIndex = 0;
                this.treeView1.Nodes.Add(pNode);

                string systemType = typeInfo.OID;//ϵͳ��ʶID

                //�����ؼ�
                //һ������£���Ribbon��ʽ���ԣ�һ���˵���ʾRibbonPage�������˵���ʾPageGroup;�����˵�����BarButtonItem���յĲ˵��
                List<MenuNodeInfo> menuList = BLLFactory<Menus>.Instance.GetTree(systemType);
                foreach (MenuNodeInfo info in menuList)
                {
                    TreeNode item = new TreeNode();
                    item.Name = info.Pgid;
                    item.Text = info.Name;//һ���˵��ڵ�
                    item.Tag = info;//�Բ˵����ԣ���¼��MenuNodeInfo��Tag�У���Ϊ�ж�����
                    item.ImageIndex = 1;
                    item.SelectedImageIndex = 1;
                    pNode.Nodes.Add(item);

                    AddChildNode(info.Children, item);
                }
            }

            Cursor.Current = Cursors.Default;
            treeView1.EndUpdate();
            this.treeView1.ExpandAll();
        }

        private void AddChildNode(List<MenuNodeInfo> list, TreeNode fnode)
        {
            foreach (MenuNodeInfo info in list)
            {
                TreeNode item = new TreeNode();
                item.Name = info.Pgid;
                item.Text = info.Name;//���������˵��ڵ�
                item.Tag = info;//�Բ˵����ԣ���¼��MenuNodeInfo��Tag�У���Ϊ�ж�����
                int index = (fnode.ImageIndex + 1 > 3) ? 3 : fnode.ImageIndex + 1;
                item.ImageIndex = index;
                item.SelectedImageIndex = index; 
                fnode.Nodes.Add(item);

                AddChildNode(info.Children, item);
            }
        }

        string treeConditionSql = "";
        private void treeView1_AfterSelect(object sender, TreeViewEventArgs e)
        {
            if (e.Node != null)
            {
                if (e.Node.Tag != null)
                {
                    string menuId = e.Node.Name;
                    treeConditionSql = string.Format("Pgid='{0}' ", menuId);
                    BindData();
                }
                else
                {
                    string systemTypeID = e.Node.Name;
                    treeConditionSql = string.Format("SystemType_ID='{0}' ", systemTypeID);
                    BindData();
                }
            }
        }

        private void ctxMenuTree_Refresh_Click(object sender, EventArgs e)
        {
            InitTree();
        }

        private void SelectTreeItem()
        {
            //�������ָ���Ĳ˵������ƶ���ʱ��ͬʱ�������β˵���λ��
            string ID = this.winGridViewPager1.gridView1.GetFocusedRowCellDisplayText("Pgid");
            if (!string.IsNullOrEmpty(ID))
            {
                TreeNode node = FindNode(this.treeView1.Nodes, ID);
                if (node != null)
                {
                    this.treeView1.SelectedNode = node;
                }
            }
        }

        private TreeNode FindNode(TreeNodeCollection nodes, string menuId)
        {
            foreach (TreeNode node in nodes)
            {
                if (node.Tag != null)
                {
                    MenuNodeInfo info = node.Tag as MenuNodeInfo;
                    if (info != null && info.Gid == menuId)
                    {
                        return node;
                    }
                }

                TreeNode candidate = FindNode(node.Nodes, menuId);
                if (candidate != null)
                    return candidate;
            }

            return null;
        }

        private void txtVisible_CheckedChanged(object sender, EventArgs e)
        {
            btnSearch_Click(null, null);
        }
    }
}
