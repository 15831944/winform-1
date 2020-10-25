using System;
using System.Collections;
using System.Data;
using System.Data.Common;
using System.Collections.Generic;
using JCodes.Framework.Common;
using JCodes.Framework.Entity;
using JCodes.Framework.Common.Framework;
using JCodes.Framework.jCodesenum;

namespace JCodes.Framework.IDAL
{
    /// <summary>
    /// �ϴ��ļ�����
    /// </summary>
    public interface IFileUpload : IBaseDAL<FileUploadInfo>
	{
        /// <summary>
        /// ��ȡָ���û����ϴ���Ϣ
        /// </summary>
        /// <param name="userId">�û�ID</param>
        /// <returns></returns>
        List<FileUploadInfo> GetAllByUserId(Int32 userId, bool isSuperAdmin, IsDelete isDelete);

        /// <summary>
        /// ��ȡָ���û����ϴ���Ϣ
        /// </summary>
        /// <param name="userId">�û�ID</param>
        /// <param name="category">�������ࣺ���˸�����ҵ�񸽼�</param>
        /// <param name="pagerInfo">��ҳ��Ϣ</param>
        /// <returns></returns>
        List<FileUploadInfo> GetAllByUserId(Int32 userId, AttachmentType attachmentType, PagerInfo pagerInfo);
                        
        /// <summary>
        /// ��ȡָ��������GUID�ĸ�����Ϣ
        /// </summary>
        /// <param name="attachmentGUID">������GUID</param>
        /// <param name="pagerInfo">��ҳ��Ϣ</param>
        /// <returns></returns>
        List<FileUploadInfo> GetByAttachGid(string attachmentGid, PagerInfo pagerInfo);
                        
        /// <summary>
        /// ��ȡָ��������GUID�ĸ�����Ϣ
        /// </summary>
        /// <param name="attachmentGUID">������GUID</param>
        /// <returns></returns>
        List<FileUploadInfo> GetByAttachGid(string attachmentGid);

        /// <summary>
        /// �����ļ������·����ɾ���ļ�
        /// </summary>
        /// <param name="savePath"></param>
        /// <returns></returns>
        bool DeleteByFilePath(string savePath, Int32 userId);

        /// <summary>
        /// ���ݸ�����GUID��ȡ��Ӧ���ļ����б������г��ļ���
        /// </summary>
        /// <param name="attachmentGUID">������GUID</param>
        /// <returns>����ID���ļ������б�</returns>
        Dictionary<string, string> GetFileNames(string attachmentGid);

        /// <summary>
        /// ���Ϊɾ������ֱ��ɾ��)
        /// </summary>
        /// <param name="id">�ļ���ID</param>
        /// <returns></returns>
        bool SetDeleteFlag(string Id);

    }
}