﻿using System;
using System.Runtime.Serialization;
using System.ComponentModel;

namespace JCodes.Framework.Entity
{
	/// <summary>
	/// 仓库信息(WareHouseInfo)
	/// 对象号: 100081
	/// 备注信息: 
	/// </summary>
	[Serializable]
	[DataContract]
	public partial class WareHouseInfo : BaseEntity
	{
		#region Field Members

		/// <summary>
		/// ID序号
		/// </summary>
		private Int32 m_Id = 0;

		/// <summary>
		/// 名称
		/// </summary>
		private String m_Name = string.Empty;

		/// <summary>
		/// 用户Id
		/// </summary>
		private Int32 m_UserId = 0;

		/// <summary>
		/// 手机
		/// </summary>
		private String m_MobilePhone = string.Empty;

		/// <summary>
		/// 地址
		/// </summary>
		private String m_Address = string.Empty;

		/// <summary>
		/// 备注
		/// </summary>
		private String m_Remark = string.Empty;
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
		/// 名称
		/// </summary>
		[DataMember]
		[DisplayName("名称")]
		public virtual String Name
		{
			get
			{
				return this.m_Name;
			}
			set
			{
				this.m_Name = value;
			}
		}

		/// <summary>
		/// 用户Id
		/// </summary>
		[DataMember]
		[DisplayName("用户Id")]
		public virtual Int32 UserId
		{
			get
			{
				return this.m_UserId;
			}
			set
			{
				this.m_UserId = value;
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
		/// 地址
		/// </summary>
		[DataMember]
		[DisplayName("地址")]
		public virtual String Address
		{
			get
			{
				return this.m_Address;
			}
			set
			{
				this.m_Address = value;
			}
		}

		/// <summary>
		/// 备注
		/// </summary>
		[DataMember]
		[DisplayName("备注")]
		public virtual String Remark
		{
			get
			{
				return this.m_Remark;
			}
			set
			{
				this.m_Remark = value;
			}
		}
		#endregion
	}
}