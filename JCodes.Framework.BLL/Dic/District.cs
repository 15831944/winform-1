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
    /// ����ҵ����
    /// </summary>
	public class District : BaseBLL<DistrictInfo>
    {
        public District() : base()
        {
            base.Init(this.GetType().FullName, System.Reflection.Assembly.GetExecutingAssembly().GetName().Name);
        }

        /// <summary>
        /// ���ݳ���ID��ȡ��Ӧ�ĵ����б�
        /// </summary>
        /// <param name="cityId">����ID</param>
        /// <returns></returns>
        public List<DistrictInfo> GetDistrictByCity(string cityId)
        {
            string condition = string.Format("CityID={0}", cityId);
            return Find(condition);
        }

        /// <summary>
        /// ���ݳ�������ȡ��Ӧ����������
        /// </summary>
        /// <param name="cityName">������</param>
        /// <returns></returns>
        public List<DistrictInfo> GetDistrictByCityName(string cityName)
        {
            IDistrict dal = baseDal as IDistrict;
            return dal.GetDistrictByCityName(cityName);
        }
    }
}
