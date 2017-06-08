using System;
using System.Text;
using System.Data;
using System.Drawing;
using System.Windows.Forms;
using System.ComponentModel;
using System.Collections.Generic;
using JCodes.Framework.Entity;
using JCodes.Framework.Common;
using JCodes.Framework.BLL;
using JCodes.Framework.jCodesenum.BaseEnum;
using JCodes.Framework.CommonControl;
using JCodes.Framework.CommonControl.BaseUI;
using JCodes.Framework.CommonControl.Other;
using JCodes.Framework.Common.Framework;
using JCodes.Framework.Common.Format;
using JCodes.Framework.Common.Databases;
using JCodes.Framework.CommonControl.Pager.Others;
using JCodes.Framework.Common.Extension;
using JCodes.Framework.AddIn.Other;

namespace JCodes.Framework.AddIn.UI.Security
{
    /// <summary>
    /// ��½ϵͳ�ĺڰ������б�
    /// </summary>	
    public partial class FrmBlackIP : BaseDock
    {
        public FrmBlackIP()
        {
            InitializeComponent();
            InitDictItem();
            this.winGridViewPager1.OnStartExport += new EventHandler(winGridViewPager1_OnStartExport);
            this.winGridViewPager1.OnEditSelected += new EventHandler(winGridViewPager1_OnEditSelected);
            this.winGridViewPager1.OnAddNew += new EventHandler(winGridViewPager1_OnAddNew);
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
            //AuthorizeType,Forbid
            if (e.Column.FieldName == "AuthorizeType")
            {
                Color color = Color.White;
                if (e.CellValue.ToString() == "0")
                {
                    e.Appearance.BackColor = Color.Black;
                    e.Appearance.BackColor2 = Color.LightCyan;
                }
                else
                {
                    e.Appearance.BackColor = Color.White;
                }
            }
            if (e.Column.FieldName == "Forbid")
            {
                Color color = Color.White;
                if (e.CellValue.ToString().ToBoolean())
                {
                    e.Appearance.BackColor = Color.Red;
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
            else if (e.Column.FieldName == "AuthorizeType")
            {
                if (e.Value != null)
                {
                    e.DisplayText = ((AuthrizeType)e.Value).ToString();
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
                SetGridColumWidth("Name", 200);
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
            BindData();

            Init_Function();
        }

        void Init_Function()
        {
            btnSearch.Enabled = Portal.gc.HasFunction("BlackIP/search");
            btnAddNew.Enabled = Portal.gc.HasFunction("BlackIP/add");
        }

        /// <summary>
        /// ��ʼ���ֵ��б�����
        /// </summary>
        private void InitDictItem()
        {
            //��ʼ������
            Dictionary<string, object> dictEnum = EnumHelper.GetMemberKeyValue<AuthrizeType>();
            this.txtAuthorizeType.Properties.Items.Clear();
            foreach (string item in dictEnum.Keys)
            {
                this.txtAuthorizeType.Properties.Items.Add(new CListItem(item, dictEnum[item].ToString()));
            }
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
            if (!Portal.gc.HasFunction("BlackIP/del"))
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
                BLLFactory<BlackIP>.Instance.Delete(ID);
            }
             
            BindData();
        }
        
        /// <summary>
        /// ��ҳ�ؼ��༭�����
        /// </summary>
        private void winGridViewPager1_OnEditSelected(object sender, EventArgs e)
        {
            if (!Portal.gc.HasFunction("BlackIP/edit"))
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
                FrmEditBlackIP dlg = new FrmEditBlackIP();
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
            if (!Portal.gc.HasFunction("BlackIP/add"))
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
            this.winGridViewPager1.AllToExport = BLLFactory<BlackIP>.Instance.FindToDataTable(where);
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
            condition.AddCondition("Name", this.txtName.Text.Trim(), SqlOperator.Like);

            if (this.txtAuthorizeType.Text.Length > 0)
            {
                condition.AddCondition("AuthorizeType", this.txtAuthorizeType.GetComboBoxValue().ToInt32(), SqlOperator.Equal); //��ֵ����
            }
            if (this.txtForbid.Checked)
            {
                condition.AddCondition("Forbid", 1, SqlOperator.Equal);//��ֵ����
            }

            string where = condition.BuildConditionSql().Replace("Where", "");
            return where;
        }
        
        /// <summary>
        /// ���б�����
        /// </summary>
        private void BindData()
        {
            //entity
            this.winGridViewPager1.DisplayColumns = "Name,AuthorizeType,Forbid,IPStart,IPEnd,Note,Creator,CreateTime";
            this.winGridViewPager1.ColumnNameAlias = BLLFactory<BlackIP>.Instance.GetColumnNameAlias();//�ֶ�����ʾ����ת��
            string where = GetConditionSql();
            List<BlackIPInfo> list = BLLFactory<BlackIP>.Instance.Find(where);
            this.winGridViewPager1.DataSource = new SortableBindingList<BlackIPInfo>(list);
            this.winGridViewPager1.PrintTitle = "��½ϵͳ�ĺڰ������б���";
        }
        
        /// <summary>
        /// ��ѯ���ݲ���
        /// </summary>
        private void btnSearch_Click(object sender, EventArgs e)
        {
            BindData();
        }
        
        /// <summary>
        /// �������ݲ���
        /// </summary>
        private void btnAddNew_Click(object sender, EventArgs e)
        {
            FrmEditBlackIP dlg = new FrmEditBlackIP();
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
                if (!Portal.gc.HasFunction("BlackIP/search"))
                {
                    return;
                }

                btnSearch_Click(null, null);
            }
        }

        private void txtForbid_CheckedChanged(object sender, EventArgs e)
        {
            BindData();
        }        					 						 						 						 						 						 						 						 						 						 						 	 						 	 
    }
}
