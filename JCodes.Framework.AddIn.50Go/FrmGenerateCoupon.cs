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
using JCodes.Framework.CommonControl.Other;
using JCodes.Framework.Common.Format;
using JCodes.Framework.Common.Extension;
using JCodes.Framework.Common.Framework;
using JCodes.Framework.AddIn.Basic;
using JCodes.Framework.CommonControl.Controls;
using JCodes.Framework.jCodesenum;

namespace JCodes.Framework.AddIn._50Go
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
            else if (this.txtLoginName.Text.Length == 0)
            {
                MessageDxUtil.ShowWarning(Const.MsgCheckInput + lblLoginName.Text.Replace(Const.MsgCheckSign, string.Empty));
                this.txtLoginName.Focus();
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
                // 20170901 wjm ����key ��value��˳��
                this.txtCategory.Properties.Items.Add(new CListItem(couponCategory.Id.ToString(), couponCategory.GeneralCode + "-" + couponCategory.Name ));
            }
        }

        /// <summary>
        /// ������ʾ�ĺ���
        /// </summary>
        public override void DisplayData()
        {
            InitDictItem();//�����ֵ���أ����ã�

            if (Id > 0)
            {
                #region ��ʾ��Ϣ
                CouponInfo info = BLLFactory<Coupon>.Instance.FindById(Id);
                if (info != null)
                {
                    txtID.Text = Id.ToString();
                    CouponCategoryInfo info2 = BLLFactory<CouponCategory>.Instance.FindById(info.CouponCategoryId);
                    if (info2 != null)
                    {
                        txtCategory.SelectedText = info2.GeneralCode + "-" + info2.Name;
                    }
                    txtMobilePhone.Text = info.MobilePhone;
                    txtLoginName.Text = info.Contacts;
                    txtEndTime.DateTime = info.EndTime;
                    txtStartTime.DateTime = info.StartTime;
                    txtEnabled.SelectedIndex = info.IsDelete;
                    txtCreator.Text = info.CreatorId.ToString();
                    txtCreateTime.SetDateTime(info.CreatorTime);
                }
                #endregion           
            }
            else
            {
                txtCreator.Text = Portal.gc.UserInfo.LoginName;  //Ĭ��Ϊ��ǰ��¼�û�
                txtCreateTime.DateTime = DateTimeHelper.GetServerDateTime2();          //Ĭ�ϵ�ǰʱ��
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
            info.Id = Convert.ToInt32( txtID.Text.Trim() );
            if (Id > 0)
            {
                info.CreatorId = Portal.gc.UserInfo.Id;
                info.CreatorTime = DateTimeHelper.GetServerDateTime2();
            }
            info.CouponCategoryId = Convert.ToInt32((txtCategory.SelectedItem as CListItem).Value);
            CouponCategoryInfo couponCategoryInfo = BLLFactory<CouponCategory>.Instance.FindById(info.CouponCategoryId);
            if (couponCategoryInfo != null)
            {
                info.CouponCategoryName = couponCategoryInfo.Name;
                info.CompanyId = Convert.ToInt32(couponCategoryInfo.CompanyLst);
            }
           
            info.MobilePhone = txtMobilePhone.Text;
            info.Contacts = txtLoginName.Text;
            info.StartTime = txtStartTime.DateTime;
            info.EndTime = txtEndTime.DateTime;
            info.IsDelete = (short)txtEnabled.SelectedIndex;
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

            CouponInfo info = BLLFactory<Coupon>.Instance.FindById(Id);
            if (info != null)
            {
                SetInfo(info);

                try
                {
                    #region ��������
                    bool succeed = BLLFactory<Coupon>.Instance.Update(info, info.Id);
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
