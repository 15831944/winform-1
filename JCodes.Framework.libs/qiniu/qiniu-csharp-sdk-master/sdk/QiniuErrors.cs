﻿using System;
using System.Collections.Generic;

namespace qiniu
{
	public class QiniuErrors
	{
		/// <summary>
		/// See http://developer.qiniu.com/docs/v6/api/reference/codes.html, 作废了
        /// See https://developer.qiniu.com/kodo/3928/error-responses
        /*298	部分操作执行成功
        400	请求报文格式错误
        包括上传时，上传表单格式错误。例如incorrect region表示上传域名与上传空间的区域不符，此时需要升级 SDK 版本。
        401	认证授权失败
        错误信息包括密钥信息不正确；数字签名错误；授权已超时，例如token not specified表示上传请求中没有带 token ，可以抓包验证后排查代码逻辑; token out of date表示 token 过期，推荐 token 过期时间设置为 3600 秒（1 小时），如果是客户端上传，建议每次上传从服务端获取新的 token；bad token表示 token 错误，说明生成 token 的算法有问题，建议直接使用七牛服务端 SDK 生成 token。
        403	权限不足，拒绝访问。
        例如key doesn't match scope表示上传文件指定的 key 和上传 token 中，putPolicy 的 scope 字段不符。上传指定的 key 必须跟 scope 里的 key 完全匹配或者前缀匹配；ExpUser can only upload image/audio/video/plaintext表示账号是体验用户，体验用户只能上传文本、图片、音频、视频类型的文件，完成实名认证即可解决；not allowed表示您是体验用户，若想继续操作，请先前往实名认证。
        404	资源不存在
        包括空间资源不存在；镜像源资源不存在。
        405	请求方式错误
        主要指非预期的请求方式。
        406	上传的数据 CRC32 校验错误
        413	请求资源大小大于指定的最大值
        419	用户账号被冻结
        478	镜像回源失败
        主要指镜像源服务器出现异常。
        502	错误网关
        503	服务端不可用
        504	服务端操作超时
        573	单个资源访问频率过高
        579	上传成功但是回调失败
        包括业务服务器异常；七牛服务器异常；服务器间网络异常。需要确认回调服务器接受 POST 请求，并可以给出 200 的响应。
        599	服务端操作失败
        608	资源内容被修改
        612	指定资源不存在或已被删除
        614	目标资源已存在
        630	已创建的空间数量达到上限，无法创建新空间。
        631	指定空间不存在
        640	调用列举资源(list)接口时，指定非法的marker参数。
        701	在断点续上传过程中，后续上传接收地址不正确或ctx信息已过期。*/
		/// </summary>
		public static Dictionary<int,string> ErrorCodes = new Dictionary<int, string> {
			{298,"部分操作执行成功"},
			{400,"请求报文格式错误"},
			{401,"认证授权失败，可能是密钥信息不正确、数字签名错误或授权已超时"},
            {403,"权限不足，拒绝访问"},
			{404,"资源不存在"},
			{405,"请求方式错误，非预期的请求方式"},
            {406,"上传的数据 CRC32 校验错"},
            {413,"请求资源大小大于指定的最大值"},
			{419,"用户账号被冻结"},
            {502,"错误网关"},
			{503,"服务端不可用"},
			{504,"服务端操作超时"},
            {573,"单个资源访问频率过高"},
			{579,"上传成功但是回调失败"},
			{599,"服务端操作失败"},
			{608,"资源内容被修改"},
			{612,"指定资源不存在或已被删除"},
			{614,"目标资源已存在"},
			{630,"已创建的空间数量达到上限，无法创建新空间"},
			{631,"指定空间不存在"},
            {640,"调用列举资源(list)接口时，指定非法的marker参数"},
			{701,"在断点续上传过程中，后续上传接收地址不正确或ctx信息已过期"}
		};

		private int httpCode;

		/// <summary>
		/// Gets the http code.
		/// </summary>
		/// <value>The http code.</value>
		public int HttpCode {
			get { return httpCode; }
		}

        private string httpErrInfo;

        public string HttpErrInfo { 
            get { return httpErrInfo; }
        }

		/// <summary>
		/// Initializes a new instance of the <see cref="qiniu.QiniuErrors"/> class.
		/// </summary>
		/// <param name="code">Code.</param>
		public QiniuErrors (int code)
		{
			this.httpCode = code;
		}

		/// <summary>
		/// Returns a <see cref="System.String"/> that represents the current <see cref="qiniu.QiniuErrors"/>.
		/// </summary>
		/// <returns>A <see cref="System.String"/> that represents the current <see cref="qiniu.QiniuErrors"/>.</returns>
		public override string ToString ()
		{
            if (string.IsNullOrEmpty(this.httpErrInfo))
            {
                return ErrorCodes[this.httpCode];
            }
            else
            {
                return string.Format("错误代码:{0}, 错误信息:{1}", this.httpCode, this.httpErrInfo);
            }
		}

        public QiniuErrors(int code, string httpErrInfo)
        {
            this.httpCode = code;
            this.httpErrInfo = httpErrInfo;
        }
	}
}

