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
	public class DictData : BaseBLL<DictDataInfo>
    {
        public DictData()
        {
            base.Init(this.GetType().FullName, System.Reflection.Assembly.GetExecutingAssembly().GetName().Name);
        }
                        
        /// <summary>
        /// �����ֵ�����ID��ȡ���и����͵��ֵ��б���
        /// </summary>
        /// <param name="dictTypeId"></param>
        /// <returns></returns>
        public List<DictDataInfo> FindByTypeID(string dictTypeId)
        {
            IDictData dal = baseDal as IDictData;
            return dal.FindByTypeID(dictTypeId);
        }

        /// <summary>
        /// �����ֵ��������ƻ�ȡ���и����͵��ֵ��б���
        /// </summary>
        /// <param name="dictType">�ֵ���������</param>
        /// <returns></returns>
        public List<DictDataInfo> FindByDictType(string dictTypeName)
        {
            IDictData dal = baseDal as IDictData;
            return dal.FindByDictType(dictTypeName);
        }
                
        /// <summary>
        /// ��ȡ���е��ֵ��б���(KeyΪ���ƣ�ValueΪֵ��
        /// </summary>
        /// <returns></returns>
        public Dictionary<string, string> GetAllDict()
        {
            IDictData dal = baseDal as IDictData;
            return dal.GetAllDict();

        }

        /// <summary>
        /// �����ֵ�����ID��ȡ���и����͵��ֵ��б���(KeyΪ���ƣ�ValueΪֵ��
        /// </summary>
        /// <param name="dictTypeId">�ֵ�����ID</param>
        /// <returns></returns>
        public Dictionary<string, string> GetDictByTypeID(string dictTypeId)
        {
            IDictData dal = baseDal as IDictData;
            return dal.GetDictByTypeID(dictTypeId);
        }

        /// <summary>
        /// �����ֵ��������ƻ�ȡ���и����͵��ֵ��б���(KeyΪ���ƣ�ValueΪֵ��
        /// </summary>
        /// <param name="dictType">�ֵ���������</param>
        /// <returns></returns>
        public Dictionary<string, string> GetDictByDictType(string dictTypeName)
        {
            IDictData dal = baseDal as IDictData;
            return dal.GetDictByDictType(dictTypeName);
        }

        /// <summary>
        /// �����ֵ����ͻ�ȡ��Ӧ��CListItem����
        /// </summary>
        /// <param name="dictTypeName"></param>
        /// <returns></returns>
        public CListItem[] GetDictListItemByDictType(string dictTypeName)
        {
            IDictData dal = baseDal as IDictData;
            List<CListItem> itemList = new List<CListItem>();
            Dictionary<string, string> dict = dal.GetDictByDictType(dictTypeName);
            foreach (string key in dict.Keys)
            {
                itemList.Add(new CListItem(key, dict[key]));
            }
            return itemList.ToArray();
        }
                
        /// <summary>
        /// �����ֵ��������ƺ��ֵ�Valueֵ�����ֵ���룩���������ֵ��Ӧ������
        /// </summary>
        /// <param name="dictTypeName">�ֵ���������</param>
        /// <param name="dictValue">�ֵ�Valueֵ�����ֵ����</param>
        /// <returns>�ֵ��Ӧ������</returns>
        public string GetDictName(string dictTypeName, string dictValue)
        {
            IDictData dal = baseDal as IDictData;
            return dal.GetDictName(dictTypeName, dictValue);
        }
    }
}
