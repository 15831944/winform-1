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

namespace JCodes.Framework.AddIn.Dictionary
{
    /// <summary>
    /// ��½ϵͳ�ĺڰ������б�
    /// </summary>	
    public partial class FrmSearchSysparameter : BaseDock
    {
        public Int32 ID = 0;

        public FrmSearchSysparameter()
        {
            InitializeComponent();
            InitDictItem();
            this.winGridViewPager1.OnEditSelected += new EventHandler(winGridViewPager1_OnEditSelected);
            this.winGridViewPager1.OnRefresh += new EventHandler(winGridViewPager1_OnRefresh);
            this.winGridViewPager1.ShowLineNumber = true;
            this.winGridViewPager1.BestFitColumnWith = false;//�Ƿ�����Ϊ�Զ�������ȣ�falseΪ������
			this.winGridViewPager1.gridView1.DataSourceChanged +=new EventHandler(gridView1_DataSourceChanged);
            this.winGridViewPager1.gridView1.CustomColumnDisplayText += new DevExpress.XtraGrid.Views.Base.CustomColumnDisplayTextEventHandler(gridView1_CustomColumnDisplayText);
            //�����س������в�ѯ
            foreach (Control control in this.layoutControl1.Controls)
            {
                control.KeyUp += new System.Windows.Forms.KeyEventHandler(this.SearchControl_KeyUp);
            }

            ID = 0;
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
            else if (string.Equals(e.Column.FieldName, "SysId", StringComparison.CurrentCultureIgnoreCase))
            {
                if (e.Value != null && !string.IsNullOrEmpty(e.Value.ToString()))
                {
                    e.DisplayText = BLLFactory<DictData>.Instance.GetDictName(Const.DIC_PARAMETER, Convert.ToInt32(e.Value));
                }
            }
            else if (string.Equals(e.Column.FieldName, "Editor", StringComparison.CurrentCultureIgnoreCase))
            {
                if (e.Value != null && !string.IsNullOrEmpty(e.Value.ToString()))
                {
                    e.DisplayText = BLLFactory<User>.Instance.FindByID(Convert.ToInt32(e.Value)).FullName;
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
                winGridViewPager1.gridView1.SetGridColumWidth("SysId", 30);
                winGridViewPager1.gridView1.SetGridColumWidth("Name", 120);
                winGridViewPager1.gridView1.SetGridColumWidth("Value", 60);
                winGridViewPager1.gridView1.SetGridColumWidth("Remark", 120);
                winGridViewPager1.gridView1.SetGridColumWidth("Seq", 50);
                winGridViewPager1.gridView1.SetGridColumWidth("Editor", 80);
                winGridViewPager1.gridView1.SetGridColumWidth("EditorTime", 100);
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
        /// ��ʼ���ֵ��б�����
        /// </summary>
        private void InitDictItem()
        {
            ccbbSysIds.BindDictItems(Const.DIC_PARAMETER);
        }
        
        /// <summary>
        /// ��ҳ�ؼ�ˢ�²���
        /// </summary>
        private void winGridViewPager1_OnRefresh(object sender, EventArgs e)
        {
            BindData();
        }
        
       
        
        /// <summary>
        /// ��ҳ�ؼ��༭�����
        /// </summary>
        private void winGridViewPager1_OnEditSelected(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.OK;
            string strID = this.winGridViewPager1.gridView1.GetFocusedRowCellDisplayText("ID");
            if (!string.IsNullOrEmpty(strID))
                this.ID = Convert.ToInt32(strID);
        }        
 
        /// <summary>
        /// ���ݲ�ѯ���������ѯ���
        /// </summary> 
        private string GetConditionSql()
        {
            //������ڸ߼���ѯ������Ϣ����ʹ�ø߼���ѯ����������ʹ������������ѯ
            SearchCondition condition = new SearchCondition();
            condition.AddCondition("Name", this.txtName.Text.Trim(), SqlOperator.Like);
            condition.AddCondition("SysId", ccbbSysIds.GetCheckedComboBoxValue(), SqlOperator.In);
            string where = condition.BuildConditionSql().Replace("Where", "");
            return where;
        }
        
        /// <summary>
        /// ���б�����
        /// </summary>
        private void BindData()
        {
            //entity
            this.winGridViewPager1.DisplayColumns = "SysId, Name, Value, Remark, Seq, Editor, EditorTime";
            this.winGridViewPager1.ColumnNameAlias = BLLFactory<Sysparameter>.Instance.GetColumnNameAlias();//�ֶ�����ʾ����ת��
            string where = GetConditionSql();
            if (!string.IsNullOrEmpty(txtName.Text))
            {
                List<SysparameterInfo> list = BLLFactory<Sysparameter>.Instance.Find(where);
                this.winGridViewPager1.DataSource = new SortableBindingList<SysparameterInfo>(list);
            }
            else
            {
                this.winGridViewPager1.DataSource = new List<SysparameterInfo>();
            }
            this.winGridViewPager1.PrintTitle = "ϵͳ������";
        }
        
        /// <summary>
        /// ��ѯ���ݲ���
        /// </summary>
        private void btnSearch_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(ccbbSysIds.GetCheckedComboBoxValue()))
            {
                MessageDxUtil.ShowWarning("��ѡ��������");
                return;
            }

            if (string.IsNullOrEmpty(txtName.Text))
            {
                MessageDxUtil.ShowWarning("�������������");
                return;
            }
            BindData();
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
