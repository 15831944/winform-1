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
using JCodes.Framework.AddIn.Basic;
using JCodes.Framework.BLL._50Go;

namespace JCodes.Framework.AddIn._50Go
{
    /// <summary>
    /// ��½ϵͳ�ĺڰ������б�
    /// </summary>	
    public partial class FrmCoupon : BaseDock
    {
        /// <summary>
        /// ����˽�б����������ʶ��ȯ�Ƿ��ѱ�ʹ��
        /// </summary>
        private CouponInfo couponInfo = null;

        public FrmCoupon()
        {
            InitializeComponent();
            this.winGridViewPager1.OnEditSelected += new EventHandler(winGridViewPager1_OnEditSelected);
            this.winGridViewPager1.OnRefresh += new EventHandler(winGridViewPager1_OnRefresh);
            this.winGridViewPager1.AppendedMenu = this.contextMenuStrip1;
            this.winGridViewPager1.ShowLineNumber = true;
            this.winGridViewPager1.BestFitColumnWith = false;//�Ƿ�����Ϊ�Զ�������ȣ�falseΪ������
            this.winGridViewPager1.gridView1.CustomColumnDisplayText += new DevExpress.XtraGrid.Views.Base.CustomColumnDisplayTextEventHandler(gridView1_CustomColumnDisplayText);
            //�����س������в�ѯ
            foreach (Control control in this.layoutControl1.Controls)
            {
                control.KeyUp += new System.Windows.Forms.KeyEventHandler(this.SearchControl_KeyUp);
            }

            InitControl();
        }

        private void InitControl()
        {
            if (!HasFunction("Exchangecoupons/search"))
            {
                btnSearch.Enabled = false;
            }
        }
       
        void gridView1_CustomColumnDisplayText(object sender, DevExpress.XtraGrid.Views.Base.CustomColumnDisplayTextEventArgs e)
        {
            if (e.Column.FieldName == "DELETED")
            {
                e.DisplayText = Convert.ToInt32(e.Value) == 0 ? "��" : "��";
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
        /// ��ҳ�ؼ��༭�����
        /// </summary>
        private void winGridViewPager1_OnEditSelected(object sender, EventArgs e)
        {
            if (!HasFunction("Exchangecoupons/exchange"))
            {
                MessageDxUtil.ShowError(Const.NoAuthMsg);
                return;
            }

            if (!CheckCoupon())
            {
                return;
            }

            if (MessageDxUtil.ShowYesNoAndTips("ȷ��Ҫʹ���Ż�ȯ�𣿴˲���������") == DialogResult.No)
            {
                return;
            }

            string ID = this.winGridViewPager1.gridView1.GetFocusedRowCellDisplayText("ID");

            if (this.winGridViewPager1.gridView1.RowCount == 0 || this.winGridViewPager1.gridView1.RowCount > 1)
                return;
            
            // ֱ�Ӹ��±༭�˺�״̬;
            BLLFactory<Coupon>.Instance.UseCoupon(ID, Portal.gc.UserInfo.Creator, Portal.gc.UserInfo.Creator_ID, DateTime.Now);

            MessageDxUtil.ShowYesNoAndTips("�����ɹ�");
       
        }

        private bool CheckCoupon()
        {
            if (couponInfo == null)
                return false;

            // ���Ȩ��
            // ����˲���Ա���������˾�����
            if (couponInfo.Company_ID != Portal.gc.UserInfo.Company_ID)
            { 
                // �ٴ�ȷ�ϴ˲���Ա�Ƿ���ڼ������� TODO ��ʱ��������ô����˲���
                MessageDxUtil.ShowTips("�˲���Ա������繫˾ʹ���Ż�ȯ");
                return false;
            }
            // ���ȯ����Ч��
            DateTime dt = DateTime.Now;
            if (dt < couponInfo.StartTime || dt > couponInfo.EndTime)
            {
                MessageDxUtil.ShowTips("���Ż�ȯ����ʹ��ʱ�䷶Χ��");
                return false;
            }
            // �Ƿ�ʹ��
            if (couponInfo.DELETED == 1)
            {
                MessageDxUtil.ShowTips("���Ż�ȯ�ѱ�ʹ�ã��������ظ�ʹ��");
                return false;
            }

            return true;
        }
  
        /// <summary>
        /// ���ݲ�ѯ���������ѯ���
        /// </summary> 
        private string GetConditionSql()
        {
            //������ڸ߼���ѯ������Ϣ����ʹ�ø߼���ѯ����������ʹ������������ѯ
            SearchCondition condition = new SearchCondition();
            condition.AddCondition("ID", this.txtID.Text.Trim(), SqlOperator.Equal);
            condition.AddCondition("LoginName", this.txtLoginName.Text.Trim(), SqlOperator.Equal);
            condition.AddCondition("MobilePhone", this.txtMobilePhone.Text.Trim(), SqlOperator.Equal);
            string where = condition.BuildConditionSql().Replace("Where", "");
            return where;
        }
        
        /// <summary>
        /// ���б�����
        /// </summary>
        private void BindData()
        {
            this.winGridViewPager1.DisplayColumns = "ID,CouponCategory_Name,Company_Name,Creator,Creator_ID,CreateTime,Editor,Editor_ID, EditTime,MobilePhone,LoginName,StartTime,EndTime,DELETED";
            this.winGridViewPager1.ColumnNameAlias = BLLFactory<Coupon>.Instance.GetColumnNameAlias();//�ֶ�����ʾ����ת��

            string where = GetConditionSql();
            List<CouponInfo> list = BLLFactory<Coupon>.Instance.Find(where);
            this.winGridViewPager1.DataSource = new SortableBindingList<CouponInfo>(list);
            this.winGridViewPager1.PrintTitle = "�Ż�ȯ��Ϣ����";

            if (list.Count == 1)
                couponInfo = list[0];
        }
        
        /// <summary>
        /// ��ѯ���ݲ���
        /// </summary>
        private void btnSearch_Click(object sender, EventArgs e)
        {
            couponInfo = null;

            if (this.txtID.Text.Length == 0)
            {
                MessageDxUtil.ShowTips("������һ���");
                this.txtID.Focus();
                return;
            }
            else if (this.txtLoginName.Text.Length == 0)
            {
                MessageDxUtil.ShowTips("��������ϵ��");
                this.txtLoginName.Focus();
                return;
            }
            else if (this.txtMobilePhone.Text.Length == 0)
            {
                MessageDxUtil.ShowTips("��������ϵ��ʽ");
                this.txtMobilePhone.Focus();
                return;
            }

            BindData();

            CheckCoupon();
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
