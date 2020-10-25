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
    /// <summary>
    /// ����ҵ����
    /// </summary>
	public class District : BaseBLL<DistrictInfo>
    {
        private IDistrict dal = null;

        public District() : base()
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

            dal = baseDal as IDistrict;
        }

        /// <summary>
        /// ���ݳ���ID��ȡ��Ӧ�ĵ����б�
        /// </summary>
        /// <param name="cityId">����ID</param>
        /// <returns></returns>
        public List<DistrictInfo> GetDistrictByCityId(Int32 cityId)
        {
            string condition = string.Format("CityId={0}", cityId);
            return Find(condition);
        }

        /// <summary>
        /// ���ݳ�������ȡ��Ӧ����������
        /// </summary>
        /// <param name="cityName">������</param>
        /// <returns></returns>
        public List<DistrictInfo> GetDistrictByCityName(string cityName)
        {
            return dal.GetDistrictByCityName(cityName);
        }
    }
}
