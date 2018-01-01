using System;
using System.Collections;
using System.Data;
using System.Data.Common;
using System.Collections.Generic;
using JCodes.Framework.Common;
using JCodes.Framework.Entity;
using JCodes.Framework.Common.Framework;

namespace JCodes.Framework.IDAL
{
    /// <summary>
    /// �ϴ��ļ�����
    /// </summary>
	public interface IFileUploads : IBaseDAL<FileUploadInfo>
	{
        /// <summary>
        /// ��ȡָ���û����ϴ���Ϣ
        /// </summary>
        /// <param name="userId">�û�ID</param>
        /// <returns></returns>
        List<FileUploadInfo> GetAllByUser(Int32 userId);
                
        /// <summary>
        /// ��ȡָ���û����ϴ���Ϣ
        /// </summary>
        /// <param name="userId">�û�ID</param>
        /// <param name="category">�������ࣺ���˸�����ҵ�񸽼�</param>
        /// <param name="pagerInfo">��ҳ��Ϣ</param>
        /// <returns></returns>
        List<FileUploadInfo> GetAllByUser(Int32 userId, string category, PagerInfo pagerInfo);
                        
        /// <summary>
        /// ��ȡָ��������GUID�ĸ�����Ϣ
        /// </summary>
        /// <param name="attachmentGUID">������GUID</param>
        /// <param name="pagerInfo">��ҳ��Ϣ</param>
        /// <returns></returns>
        List<FileUploadInfo> GetByAttachGUID(string attachmentGUID, PagerInfo pagerInfo);
                        
        /// <summary>
        /// ��ȡָ��������GUID�ĸ�����Ϣ
        /// </summary>
        /// <param name="attachmentGUID">������GUID</param>
        /// <returns></returns>
        List<FileUploadInfo> GetByAttachGUID(string attachmentGUID);

        /// <summary>
        /// �����ļ������·����ɾ���ļ�
        /// </summary>
        /// <param name="filePath"></param>
        /// <returns></returns>
        bool DeleteByFilePath(string relativeFilePath, string userId);

        /// <summary>
        /// ���ݸ�����GUID��ȡ��Ӧ���ļ����б������г��ļ���
        /// </summary>
        /// <param name="attachmentGUID">������GUID</param>
        /// <returns>����ID���ļ������б�</returns>
        Dictionary<string, string> GetFileNames(string attachmentGUID);

        /// <summary>
        /// ���Ϊɾ������ֱ��ɾ��)
        /// </summary>
        /// <param name="id">�ļ���ID</param>
        /// <returns></returns>
        bool SetDeleteFlag(string id);

    }
}