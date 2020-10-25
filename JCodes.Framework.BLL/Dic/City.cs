using System;
using System.Collections;
using System.Data;
using System.Data.Common;
using System.Collections.Generic;
using JCodes.Framework.Common;
using JCodes.Framework.Entity;
using JCodes.Framework.IDAL;
using JCodes.Framework.Common.Framework;
using JCodes.Framework.Common.Files;
using JCodes.Framework.Common.Office;

namespace JCodes.Framework.BLL
{
    /// <summary>
    /// ����ҵ�������
    /// </summary>
	public class City : BaseBLL<CityInfo>
    {
        private ICity dal = null;

        public City() : base()
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

            dal = baseDal as ICity;
        }

        /// <summary>
        /// ����ʡ��ID��ȡ��Ӧ�ĳ����б�
        /// </summary>
        /// <param name="provinceID">ʡ��ID</param>
        /// <returns></returns>
        public List<CityInfo> GetCitysByProvinceId(Int32 provinceId)
        {
            string condition = string.Format("ProvinceId ={0} ", provinceId);
            return baseDal.Find(condition);
        }

        /// <summary>
        /// ����ʡ�����ƻ�ȡ��Ӧ�ĳ����б�
        /// </summary>
        /// <param name="provinceName">ʡ������</param>
        /// <returns></returns>
        public List<CityInfo> GetCitysByProvinceName(string provinceName)
        {
            return dal.GetCitysByProvinceName(provinceName);
        }
    }
}
