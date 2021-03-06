using JCodes.Framework.Common.Framework;
using JCodes.Framework.Entity;
using JCodes.Framework.jCodesenum;
using System;

namespace JCodes.Framework.IDAL
{
    /// <summary>
    /// 用户对指定内容的操作状态记录
    /// </summary>
	public interface IInformationStatus : IBaseDAL<InformationStatusInfo>
	{
        /// <summary>
        /// 设置状态
        /// </summary>
        /// <param name="UserID">用户ID</param>
        /// <param name="InfoType">信息类型</param>
        /// <param name="InfoID">信息主键ID</param>
        /// <param name="Status">状态</param>
        void SetStatus(Int32 userId, Int32 infoType, Int32 InfoID, Int32 dealStatus);

        /// <summary>
        /// 匹配状态
        /// </summary>
        /// <param name="UserID">用户ID</param>
        /// <param name="InfoType">信息类型</param>
        /// <param name="InfoID">信息主键ID</param>
        /// <param name="Status">状态</param>
        /// <returns></returns>
        bool CheckStatus(string UserID, InformationCategory InfoType, string InfoID, int Status);
    }
}