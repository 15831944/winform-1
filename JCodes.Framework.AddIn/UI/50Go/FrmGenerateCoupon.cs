using System;
using System.Text;
using System.Data;
using System.Drawing;
using System.Windows.Forms;
using System.ComponentModel;
using System.Collections.Generic;
using System.Net;
using JCodes.Framework.Entity;
using JCodes.Framework.Common;
using JCodes.Framework.BLL;
using JCodes.Framework.CommonControl;
using JCodes.Framework.jCodesenum.BaseEnum;
using JCodes.Framework.CommonControl.BaseUI;
using JCodes.Framework.AddIn.Other;
using JCodes.Framework.CommonControl.Other;
using JCodes.Framework.Common.Format;
using JCodes.Framework.Common.Extension;
using JCodes.Framework.Common.Framework;
using JCodes.Framework.AddIn.UI.Security;

namespace JCodes.Framework.AddIn.UI._50Go
{
    public partial class FrmGenerateCoupon : BaseEditForm
    {
        public FrmGenerateCoupon()
        {
            InitializeComponent();
        }

        /// <summary>
        /// ʵ�ֿؼ�������ĺ���
        /// </summary>
        /// <returns></returns>
        public override bool CheckInput()
        {
            bool result = true;//Ĭ���ǿ���ͨ��

            #region MyRegion
            if (this.txtCategory.Text.Length == 0)
            {
                MessageDxUtil.ShowWarning(Const.MsgCheckInput + lblCategory.Text.Replace(Const.MsgCheckSign, string.Empty));
                this.txtCategory.Focus();
                result = false;
            }
            else if (this.txtStartTime.Text.Length == 0)
            {
                MessageDxUtil.ShowWarning(Const.MsgCheckInput + lblStartTime.Text.Replace(Const.MsgCheckSign, string.Empty));
                this.txtStartTime.Focus();
                result = false;
            }
            else if (this.txtEndTime.Text.Length == 0)
            {
                MessageDxUtil.ShowWarning(Const.MsgCheckInput + lblEndTime.Text.Replace(Const.MsgCheckSign, string.Empty));
                this.txtEndTime.Focus();
                result = false;
            }
            else if (this.txtMobilePhone.Text.Length == 0)
            {
                MessageDxUtil.ShowWarning(Const.MsgCheckInput + lblMobilePhone.Text.Replace(Const.MsgCheckSign, string.Empty));
                this.txtMobilePhone.Focus();
                result = false;
            }
            else if (this.txtFullName.Text.Length == 0)
            {
                MessageDxUtil.ShowWarning(Const.MsgCheckInput + lblFullName.Text.Replace(Const.MsgCheckSign, string.Empty));
                this.txtFullName.Focus();
                result = false;
            }
            else if (this.txtEnabled.Text.Length == 0)
            {
                MessageDxUtil.ShowWarning(Const.MsgCheckInput + lblEnabled.Text.Replace(Const.MsgCheckSign, string.Empty));
                this.txtEnabled.Focus();
                result = false;
            }
            #endregion

            return result;
        }

        /// <summary>
        /// ��ʼ�������ֵ�
        /// </summary>
        private void InitDictItem()
        {
            // ��ʼ����� 
            this.txtCategory.Properties.Items.Clear();
            List<CouponCategoryInfo> lst = BLLFactory<CouponCategory>.Instance.GetAllCouponCategory();
            foreach (var couponCategory in lst)
            {
                this.txtCategory.Properties.Items.Add(new CListItem(couponCategory.HandNo + "-" + couponCategory.Name, couponCategory.ID));
            }
        }

        /// <summary>
        /// ������ʾ�ĺ���
        /// </summary>
        public override void DisplayData()
        {
            InitDictItem();//�����ֵ���أ����ã�

            if (!string.IsNullOrEmpty(ID))
            {
                #region ��ʾ��Ϣ
                CouponInfo info = BLLFactory<Coupon>.Instance.FindByID(ID);
                if (info != null)
                {
                    txtID.Text = ID;
                    CouponCategoryInfo info2 = BLLFactory<CouponCategory>.Instance.FindByID(info.CouponCategory_ID);
                    if (info2 != null)
                    {
                        txtCategory.SelectedText = info2.HandNo + "-" + info2.Name;
                    }
                    txtMobilePhone.Text = info.MobilePhone;
                    txtFullName.Text = info.FullName;
                    txtEndTime.DateTime = info.EndTime;
                    txtStartTime.DateTime = info.StartTime;
                    txtEnabled.SelectedIndex = info.DELETED;
                    txtCreator.Text = info.Creator;
                    txtCreateTime.SetDateTime(info.CreateTime);
                }
                #endregion           
            }
            else
            {
                txtCreator.Text = Portal.gc.UserInfo.FullName;  //Ĭ��Ϊ��ǰ��¼�û�
                txtCreateTime.DateTime = DateTime.Now;          //Ĭ�ϵ�ǰʱ��
                txtID.Text = Guid.NewGuid().ToString();
            }
        }

        public override void ClearScreen()
        {
            base.ClearScreen();
        }

        /// <summary>
        /// �༭���߱���״̬��ȡֵ����
        /// </summary>
        /// <param name="info"></param>
        private void SetInfo(CouponInfo info)
        {
            info.ID = txtID.Text.Trim();
            if (string.IsNullOrEmpty(ID))
            {
                info.Creator = Portal.gc.UserInfo.FullName;
                info.Creator_ID = Portal.gc.UserInfo.ID.ToString();
                info.CreateTime = DateTime.Now;
            }
            info.CouponCategory_ID = (txtCategory.SelectedItem as CListItem).Value;
            CouponCategoryInfo couponCategoryInfo = BLLFactory<CouponCategory>.Instance.FindByID(info.CouponCategory_ID);
            if (couponCategoryInfo != null)
            {
                info.CouponCategory_Name = couponCategoryInfo.Name;
                info.Company_ID = couponCategoryInfo.BelongCompanys;
                OUInfo ouInfo = BLLFactory<OU>.Instance.FindByID(info.Company_ID);
                info.Company_Name = ouInfo.Name;
            }
           
            info.MobilePhone = txtMobilePhone.Text;
            info.FullName = txtFullName.Text;
            info.StartTime = txtStartTime.DateTime;
            info.EndTime = txtEndTime.DateTime;
            info.DELETED = txtEnabled.SelectedIndex;
        }

        /// <summary>
        /// ����״̬�µ����ݱ���
        /// </summary>
        /// <returns></returns>
        public override bool SaveAddNew()
        {
            CouponInfo info = new CouponInfo();//����ʹ�ô��ڵľֲ���������Ϊ������Ϣ���ܱ�����ʹ��
            SetInfo(info);
            try
            {
                #region ��������

                bool succeed = BLLFactory<Coupon>.Instance.Insert(info);
                if (succeed)
                {
                    //�����������������

                    return true;
                }
                #endregion
            }
            catch (Exception ex)
            {
                LogHelper.WriteLog(LogLevel.LOG_LEVEL_CRIT, ex, typeof(FrmGenerateCoupon));
                MessageDxUtil.ShowError(ex.Message);
            }
            return false;
        }

        /// <summary>
        /// �༭״̬�µ����ݱ���
        /// </summary>
        /// <returns></returns>
        public override bool SaveUpdated()
        {

            CouponInfo info = BLLFactory<Coupon>.Instance.FindByID(ID);
            if (info != null)
            {
                SetInfo(info);

                try
                {
                    #region ��������
                    bool succeed = BLLFactory<Coupon>.Instance.Update(info, info.ID);
                    if (succeed)
                    {
                        //�����������������

                        return true;
                    }
                    #endregion
                }
                catch (Exception ex)
                {
                    LogHelper.WriteLog(LogLevel.LOG_LEVEL_CRIT, ex, typeof(FrmGenerateCoupon));
                    MessageDxUtil.ShowError(ex.Message);
                }
            }
            return false;
        }
    }
}
