using System;
using System.Collections;
using System.Data;
using System.Data.Common;
using System.Collections.Generic;
using JCodes.Framework.Common;
using JCodes.Framework.Entity;
using JCodes.Framework.IDAL;
using JCodes.Framework.Common.Framework;

namespace JCodes.Framework.BLL
{
    /// <summary>
    /// ����ҵ�������
    /// </summary>
	public class Coupon : BaseBLL<CouponInfo>
    {
        public Coupon()
            : base()
        {
            base.Init(this.GetType().FullName, System.Reflection.Assembly.GetExecutingAssembly().GetName().Name);
        }

        /// <summary>
        /// ��ȡȫ���Ż�ȯ
        /// </summary>
        /// <returns></returns>
        public List<CouponInfo> GetAllCoupon()
        {
            ICoupon dal = baseDal as ICoupon;
            return dal.GetAllCoupon();
        }

        /// <summary>
        /// ��ȡȫ���Ż�ȯ
        /// </summary>
        /// <returns></returns>
        public List<CouponInfo> GetCouponByCategoryId(string CouponCategoryID)
        {
            ICoupon dal = baseDal as ICoupon;
            return dal.GetCouponByCategory(CouponCategoryID);
        }

        public void UseCoupon(string ID, string Editor, string Editor_ID, DateTime EditTime)
        {
            ICoupon dal = baseDal as ICoupon;
            dal.UseCoupon(ID, Editor, Editor_ID, EditTime);
        }
    }
}
