﻿using System;
using System.Runtime.Serialization;
using System.ComponentModel;

namespace JCodes.Framework.Entity
{
	/// <summary>
	/// 优惠券信息(CouponInfo)
	/// 对象号: 100001
	/// 备注信息: 
	/// </summary>
	[Serializable]
	[DataContract]
	public partial class CouponInfo : BaseEntity
	{
		#region Field Members

		/// <summary>
		/// ID序号
		/// </summary>
		private Int32 m_Id = 0;

		/// <summary>
		/// 优惠券分类
		/// </summary>
		private Int32 m_CouponCategoryId = 0;

		/// <summary>
		/// 优惠券分类名字
		/// </summary>
		private String m_CouponCategoryName = string.Empty;

		/// <summary>
		/// 公司Id
		/// </summary>
		private Int32 m_CompanyId = 0;

		/// <summary>
		/// 创建人编号
		/// </summary>
		private Int32 m_CreatorId = 0;

		/// <summary>
		/// 创建时间
		/// </summary>
		private DateTime m_CreatorTime = DateTime.Now;

		/// <summary>
		/// 编辑人编号
		/// </summary>
		private Int32 m_EditorId = 0;

		/// <summary>
		/// 最后更新时间
		/// </summary>
		private DateTime m_LastUpdateTime = DateTime.Now;

		/// <summary>
		/// 手机
		/// </summary>
		private String m_MobilePhone = string.Empty;

		/// <summary>
		/// 联系人
		/// </summary>
		private String m_Contacts = string.Empty;

		/// <summary>
		/// 开始时间
		/// </summary>
		private DateTime m_StartTime = DateTime.Now;

		/// <summary>
		/// 结束时间
		/// </summary>
		private DateTime m_EndTime = DateTime.Now;

		/// <summary>
		/// 是否删除
		/// </summary>
		private Int16 m_IsDelete = 0;
		#endregion

		#region Property Members

		/// <summary>
		/// ID序号
		/// </summary>
		[DataMember]
		[DisplayName("ID序号")]
		public virtual Int32 Id
		{
			get
			{
				return this.m_Id;
			}
			set
			{
				this.m_Id = value;
			}
		}

		/// <summary>
		/// 优惠券分类
		/// </summary>
		[DataMember]
		[DisplayName("优惠券分类")]
		public virtual Int32 CouponCategoryId
		{
			get
			{
				return this.m_CouponCategoryId;
			}
			set
			{
				this.m_CouponCategoryId = value;
			}
		}

		/// <summary>
		/// 优惠券分类名字
		/// </summary>
		[DataMember]
		[DisplayName("优惠券分类名字")]
		public virtual String CouponCategoryName
		{
			get
			{
				return this.m_CouponCategoryName;
			}
			set
			{
				this.m_CouponCategoryName = value;
			}
		}

		/// <summary>
		/// 公司Id
		/// </summary>
		[DataMember]
		[DisplayName("公司Id")]
		public virtual Int32 CompanyId
		{
			get
			{
				return this.m_CompanyId;
			}
			set
			{
				this.m_CompanyId = value;
			}
		}

		/// <summary>
		/// 创建人编号
		/// </summary>
		[DataMember]
		[DisplayName("创建人编号")]
		public virtual Int32 CreatorId
		{
			get
			{
				return this.m_CreatorId;
			}
			set
			{
				this.m_CreatorId = value;
			}
		}

		/// <summary>
		/// 创建时间
		/// </summary>
		[DataMember]
		[DisplayName("创建时间")]
		public virtual DateTime CreatorTime
		{
			get
			{
				return this.m_CreatorTime;
			}
			set
			{
				this.m_CreatorTime = value;
			}
		}

		/// <summary>
		/// 编辑人编号
		/// </summary>
		[DataMember]
		[DisplayName("编辑人编号")]
		public virtual Int32 EditorId
		{
			get
			{
				return this.m_EditorId;
			}
			set
			{
				this.m_EditorId = value;
			}
		}

		/// <summary>
		/// 最后更新时间
		/// </summary>
		[DataMember]
		[DisplayName("最后更新时间")]
		public virtual DateTime LastUpdateTime
		{
			get
			{
				return this.m_LastUpdateTime;
			}
			set
			{
				this.m_LastUpdateTime = value;
			}
		}

		/// <summary>
		/// 手机
		/// </summary>
		[DataMember]
		[DisplayName("手机")]
		public virtual String MobilePhone
		{
			get
			{
				return this.m_MobilePhone;
			}
			set
			{
				this.m_MobilePhone = value;
			}
		}

		/// <summary>
		/// 联系人
		/// </summary>
		[DataMember]
		[DisplayName("联系人")]
		public virtual String Contacts
		{
			get
			{
				return this.m_Contacts;
			}
			set
			{
				this.m_Contacts = value;
			}
		}

		/// <summary>
		/// 开始时间
		/// </summary>
		[DataMember]
		[DisplayName("开始时间")]
		public virtual DateTime StartTime
		{
			get
			{
				return this.m_StartTime;
			}
			set
			{
				this.m_StartTime = value;
			}
		}

		/// <summary>
		/// 结束时间
		/// </summary>
		[DataMember]
		[DisplayName("结束时间")]
		public virtual DateTime EndTime
		{
			get
			{
				return this.m_EndTime;
			}
			set
			{
				this.m_EndTime = value;
			}
		}

		/// <summary>
		/// 是否删除
		/// 1-是,
		/// 2-否
		/// </summary>
		[DataMember]
		[DisplayName("是否删除")]
		public virtual Int16 IsDelete
		{
			get
			{
				return this.m_IsDelete;
			}
			set
			{
				this.m_IsDelete = value;
			}
		}
		#endregion
	}
}