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
using System.Reflection;

namespace JCodes.Framework.BLL
{
	public class DictData : BaseBLL<DictDataInfo>
    {
        private IDictData dal = null;

        public DictData()
        {
            if (isMultiDatabase)
            {
                base.Init(this.GetType().FullName, System.Reflection.Assembly.GetExecutingAssembly().GetName().Name, dicmultiDatabase[this.GetType().Name].ToString());
            }
            else
            {
                base.Init(this.GetType().FullName, System.Reflection.Assembly.GetExecutingAssembly().GetName().Name);
            }

            baseDal.OnOperationLog += new OperationLogEventHandler(OperationLog.OnOperationLog);//�����Ҫ��¼������־����ʵ������¼�

            dal = baseDal as IDictData;
        }
                        
        /// <summary>
        /// �����ֵ�����ID��ȡ���и����͵��ֵ��б���
        /// </summary>
        /// <param name="dictTypeId"></param>
        /// <returns></returns>
        public List<DictDataInfo> FindByTypeId(Int32 dictTypeId)
        {
            return dal.FindByTypeId(dictTypeId);
        }
                
        /// <summary>
        /// ��ȡ���е��ֵ��б���(KeyΪ���ƣ�ValueΪֵ��
        /// </summary>
        /// <returns></returns>
        public List<DicKeyValueInfo> GetAllDict()
        {
            // 20200319 wujiaming ���»����������⣬ǿ��ˢ��
            /*var lst = Cache.Instance["DictData"] as List<DicKeyValueInfo>;
            if (lst != null)
            {
                return lst;
            }
            else 
            {
                return dal.GetAllDict();
            }*/
            return dal.GetAllDict();
        }

        /// <summary>
        /// �����ֵ�����ID��ȡ���и����͵��ֵ��б���(KeyΪ���ƣ�ValueΪֵ��
        /// </summary>
        /// <param name="dictTypeId">�ֵ�����ID</param>
        /// <returns></returns>
        public List<DicKeyValueInfo> GetDictByTypeId(Int32 dictTypeId)
        {
            List<DicKeyValueInfo> lst = GetAllDict();
            lst = lst.FindAll(s => s.DicttypeId == dictTypeId);
            lst.Sort(delegate(DicKeyValueInfo info1, DicKeyValueInfo info2) { return info1.DicttypeValue.CompareTo(info2.DicttypeValue); });
            return lst;
        }

        public string GetDictName(Int32 dictTypeId, Int32 value)
        {
            List<DicKeyValueInfo> lst = GetAllDict();
            return lst.Find(s => s.DicttypeId == dictTypeId && s.DicttypeValue == value).Name;
        }

    }
}
