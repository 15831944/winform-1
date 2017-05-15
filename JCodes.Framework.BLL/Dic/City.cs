using System;
using System.Collections;
using System.Data;
using System.Data.Common;
using System.Collections.Generic;
using JCodes.Framework.Common;
using JCodes.Framework.Entity;
using JCodes.Framework.IDAL;

namespace JCodes.Framework.BLL
{
    /// <summary>
    /// ����ҵ�������
    /// </summary>
	public class City : BaseBLL<CityInfo>
    {
        public City() : base()
        {
            base.Init(this.GetType().FullName, System.Reflection.Assembly.GetExecutingAssembly().GetName().Name);
        }

        /// <summary>
        /// ����ʡ��ID��ȡ��Ӧ�ĳ����б�
        /// </summary>
        /// <param name="provinceID">ʡ��ID</param>
        /// <returns></returns>
        public List<CityInfo> GetCitysByProvinceID(string provinceID)
        {
            string condition = string.Format("ProvinceID ={0} ", provinceID);
            return baseDal.Find(condition);
        }

        /// <summary>
        /// ����ʡ�����ƻ�ȡ��Ӧ�ĳ����б�
        /// </summary>
        /// <param name="provinceName">ʡ������</param>
        /// <returns></returns>
        public List<CityInfo> GetCitysByProvinceName(string provinceName)
        {
            ICity dal = baseDal as ICity;
            return dal.GetCitysByProvinceName(provinceName);
        }
    }
}
