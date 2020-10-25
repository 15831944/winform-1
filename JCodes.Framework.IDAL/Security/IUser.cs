﻿using JCodes.Framework.Common;
using JCodes.Framework.Common.Framework;
using JCodes.Framework.Entity;
using JCodes.Framework.jCodesenum;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.Common;

namespace JCodes.Framework.IDAL
{
    public interface IUser : IBaseDAL<UserInfo>
	{               
        /// <summary>
        /// 根据查询条件获取简单用户对象列表
        /// </summary>
        /// <param name="condition">查询条件</param>
        /// <returns></returns>
        List<SimpleUserInfo> FindSimpleUsers(string condition, IsDelete isDelete = IsDelete.否);

        /// <summary>
        /// 获取全部用户简单对象信息列表
        /// </summary>
        /// <returns></returns>
        List<SimpleUserInfo> GetSimpleUsers(IsDelete isDelete = IsDelete.否);

        /// <summary>
        /// 根据，获取用户简单对象信息列表
        /// </summary>
        /// <param name="userIDs">用户ID字符串</param>
        /// <returns></returns>
        List<SimpleUserInfo> GetSimpleUsers(string userIds, IsDelete isDelete = IsDelete.否);

        /// <summary>
        /// 根据机构ID获取用户简单对象信息列表
        /// </summary>
        /// <param name="ouID">机构ID</param>
        /// <returns></returns>
        List<SimpleUserInfo> GetSimpleUsersByOUId(Int32 ouId, IsDelete isDelete = IsDelete.否);

        /// <summary>
        /// 根据角色ID获取用户简单对象信息列表
        /// </summary>
        /// <param name="roleID">角色ID</param>
        /// <returns></returns>
        List<SimpleUserInfo> GetSimpleUsersByRoleId(Int32 roleId, IsDelete isDelete = IsDelete.否);

        /// <summary>
        /// 根据机构iD获取用户简单对象信息列表
        /// </summary>
        /// <param name="ouID">机构iD</param>
        /// <returns></returns>
        List<UserInfo> GetUsersByOUId(Int32 ouId, IsDelete isDelete = IsDelete.否);

        /// <summary>
        /// 根据角色ID获取用户简单对象信息列表
        /// </summary>
        /// <param name="roleID">角色ID</param>
        /// <returns></returns>
        List<UserInfo> GetUsersByRoleId(Int32 roleId, IsDelete isDelete = IsDelete.否);                     

        /// <summary>
        /// 根据用户ID获取用户全名称
        /// </summary>
        /// <param name="userID">用户ID</param>
        /// <returns></returns>
        string GetNameById(Int32 userId);

        /// <summary>
        /// 根据用户登陆名称，获取用户全名
        /// </summary>
        /// <param name="userName">用户登陆名称</param>
        /// <returns></returns>
        string GetLoginNameByName(string userName);

        /// <summary>
        /// 根据个人图片枚举类型获取图片数据
        /// </summary>
        /// <param name="imagetype">图片枚举类型</param>
        /// <returns></returns>
        byte[] GetPersonImageBytes(UserImageType imagetype, Int32 userId);

        /// <summary>
        /// 更新个人相关图片数据
        /// </summary>
        /// <param name="imagetype">图片类型</param>
        /// <param name="userId">用户ID</param>
        /// <param name="imageBytes">图片字节数组</param>
        /// <returns></returns>
        bool UpdatePersonImageBytes(UserImageType imagetype, Int32 userId, byte[] imageBytes);

        /// <summary>
        /// 设置删除标志
        /// </summary>
        /// <param name="id">记录ID</param>
        /// <param name="deleted">是否删除</param>
        /// <param name="trans">事务对象</param>
        /// <returns></returns>
        bool SetDeletedFlag(Int32 Id, DbTransaction trans = null);
                      
        /// <summary>
        /// 更新用户登录的时间和IP地址
        /// </summary>
        /// <param name="id">用户ID</param>
        /// <param name="ip">IP地址</param>
        /// <param name="macAddr">MAC地址</param>
        /// <returns></returns>
        bool UpdateUserLoginData(Int32 Id, string ip, string mac);
	}
}