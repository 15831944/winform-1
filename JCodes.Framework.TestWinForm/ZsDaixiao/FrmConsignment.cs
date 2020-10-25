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
using JCodes.Framework.CommonControl.Controls;
using JCodes.Framework.jCodesenum;

namespace JCodes.Framework.TestWinForm
{
    /// <summary>
    /// ��½ϵͳ�ĺڰ������б�
    /// </summary>	
    public partial class FrmConsignment : BaseDock
    {
        public FrmConsignment()
        {
            InitializeComponent();
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

        /// <summary>
        /// �༭����ɫ
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void gridView1_RowCellStyle(object sender, DevExpress.XtraGrid.Views.Grid.RowCellStyleEventArgs e)
        {
            //AuthorizeType,Forbid
            if (e.Column.FieldName == "EnableStatus")
            {
                Color color = Color.White;
                if (e.CellValue.ToString().ToInt16() == (short)EnableStatus.����)
                {
                    e.Appearance.BackColor = Color.Green;
                    e.Appearance.BackColor2 = Color.LightCyan;
                }
                else
                {
                    e.Appearance.BackColor = Color.Red;
                }
            }
        }

        /// <summary>
        /// ����չʾ�޸�
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
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
            else if (e.Column.FieldName == "EnableStatus")
            {
                if (e.Value != null)
                {
                    e.DisplayText = EnumHelper.GetMemberName<EnableStatus>(e.Value);
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
                //winGridViewPager1.gridView1.SetGridColumWidth("Name", 200);
            }
        }

        /// <summary>
        /// ��д��ʼ�������ʵ�֣���������ˢ��
        /// </summary>
        public override void  FormOnLoad()
        {   
            BindData();
        }
        
        /// <summary>
        /// ��ҳ�ؼ�ˢ�²���
        /// </summary>
        private void winGridViewPager1_OnRefresh(object sender, EventArgs e)
        {
            BindData();
        }
        
        /// <summary>
        /// ɾ������
        /// </summary>
        private void winGridViewPager1_OnDeleteSelected(object sender, EventArgs e)
        {
            if (MessageDxUtil.ShowYesNoAndTips("��ȷ��ɾ��ѡ���ļ�¼ô��") == DialogResult.No)
            {
                return;
            }

            int[] rowSelected = this.winGridViewPager1.GridView1.GetSelectedRows();

            // ��֧�ֶ���ɾ��
            if (rowSelected.Length > 2)
            {
                MessageDxUtil.ShowWarning("��֧�ֶ���ɾ��");
                return;
            }

            foreach (int iRow in rowSelected)
            {
                Int32 Id = this.winGridViewPager1.GridView1.GetRowCellDisplayText(iRow, "Id").ToInt32();
                BLLFactory<Consignment>.Instance.DeleteConsignmentById(Id);
            }
             
            BindData();
        }
        
        /// <summary>
        /// �༭�����
        /// </summary>
        private void winGridViewPager1_OnEditSelected(object sender, EventArgs e)
        {
            Int32 Id = this.winGridViewPager1.gridView1.GetFocusedRowCellDisplayText("Id").ToInt32();
           
            if (Id > 0)
            {
                FrmEditConsignment dlg = new FrmEditConsignment();
                dlg.Id = Id;
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
            DataTable dt = BLLFactory<Consignment>.Instance.FindToDataTable(where);
            foreach (DataColumn col in dt.Columns)
            {
                if (col.ColumnName == "EnableStatus")
                {
                    //�޸�������
                    col.DataType = typeof(String);
                }
            }

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                dt.Rows[i][3] = EnumHelper.GetMemberName<EnableStatus>(dt.Rows[i][3].ToString().ToInt16());
            }

            this.winGridViewPager1.AllToExport = dt;
        }

        /// <summary>
        /// ���ݲ�ѯ���������ѯ���
        /// </summary> 
        private string GetConditionSql()
        {
            //������ڸ߼���ѯ������Ϣ����ʹ�ø߼���ѯ����������ʹ������������ѯ
            SearchCondition condition = new SearchCondition();
            condition.AddCondition("StrValue", txtSearch.Text.Trim(), SqlOperator.Like, true, "SearchData");
            condition.AddCondition("Name", txtSearch.Text.Trim(), SqlOperator.Like, true, "SearchData");
            condition.AddCondition("SysValue", txtSearch.Text.Trim(), SqlOperator.Like, true, "SearchData");
            return condition.BuildConditionSql().Replace("Where", "");
        }
        
        /// <summary>
        /// ���б�����
        /// </summary>
        private void BindData()
        {
            //entity
            this.winGridViewPager1.DisplayColumns = "Id,StrValue,Name,EnableStatus,SysValue";
            this.winGridViewPager1.ColumnNameAlias = BLLFactory<Consignment>.Instance.GetColumnNameAlias();//�ֶ�����ʾ����ת��
            this.winGridViewPager1.AddColumnAlias("StrValue", "С�˺�");
            this.winGridViewPager1.AddColumnAlias("Name", "��������");
            this.winGridViewPager1.AddColumnAlias("SysValue", "�����̺�");
            string where = GetConditionSql();
            List<ConsignmentInfo> list = BLLFactory<Consignment>.Instance.GetAllConsignmentInfo(where);
            this.winGridViewPager1.DataSource = new SortableBindingList<ConsignmentInfo>(list);
            this.winGridViewPager1.PrintTitle = "�������ݱ���";
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
            FrmEditConsignment dlg = new FrmEditConsignment();
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
    }
}
