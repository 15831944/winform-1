using System;
using System.Collections;
using System.Data;
using System.Data.Common;
using System.Collections.Generic;
using JCodes.Framework.Common;
using JCodes.Framework.Entity;
using JCodes.Framework.IDAL;
using JCodes.Framework.Common.Framework;
using JCodes.Framework.Common.Office;

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
        public List<DictDataInfo> FindByTypeID(Int32 dictTypeId)
        {
            IDictData dal = baseDal as IDictData;
            return dal.FindByTypeID(dictTypeId);
        }
                
        /// <summary>
        /// ��ȡ���е��ֵ��б���(KeyΪ���ƣ�ValueΪֵ��
        /// </summary>
        /// <returns></returns>
        public List<DicKeyValueInfo> GetAllDict()
        {
            var lst = Cache.Instance["DictData"] as List<DicKeyValueInfo>;
            if (lst != null)
            {
                return lst;
            }
            else 
            {
                IDictData dal = baseDal as IDictData;
                return dal.GetAllDict();
            }
        }

        /// <summary>
        /// �����ֵ�����ID��ȡ���и����͵��ֵ��б���(KeyΪ���ƣ�ValueΪֵ��
        /// </summary>
        /// <param name="dictTypeId">�ֵ�����ID</param>
        /// <returns></returns>
        public List<DicKeyValueInfo> GetDictByTypeID(Int32 dictTypeId)
        {
            List<DicKeyValueInfo> lst = GetAllDict();
            return lst.FindAll(s => s.DicttypeID == dictTypeId);
        }

        public string GetDictName(Int32 dictTypeId, Int32 value)
        {
            List<DicKeyValueInfo> lst = GetAllDict();
            return lst.Find(s => s.DicttypeID == dictTypeId && s.Value == value).Name;
        }

    }
}
