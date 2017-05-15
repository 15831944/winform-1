using System;
using System.Xml.Serialization;
using System.Runtime.Serialization;

namespace JCodes.Framework.Entity
{
    [Serializable]
    [DataContract]
    public class CityInfo : BaseEntity
    {    
        #region Field Members

        private int m_ID = 0;         
        private string m_CityName;         
        private string m_ZipCode;
        private int m_ProvinceID = 0;         

        #endregion

        #region Property Members

        /// <summary>
        /// ����ID
        /// </summary>
        [DataMember]
        public virtual int ID
        {
            get
            {
                return this.m_ID;
            }
            set
            {
                this.m_ID = value;
            }
        }

        /// <summary>
        /// ��������
        /// </summary>
        [DataMember]
        public virtual string CityName
        {
            get
            {
                return this.m_CityName;
            }
            set
            {
                this.m_CityName = value;
            }
        }

        /// <summary>
        /// ��������
        /// </summary>
        [DataMember]
        public virtual string ZipCode
        {
            get
            {
                return this.m_ZipCode;
            }
            set
            {
                this.m_ZipCode = value;
            }
        }

        /// <summary>
        /// ����ʡ��ID
        /// </summary>
        [DataMember]
        public virtual int ProvinceID
        {
            get
            {
                return this.m_ProvinceID;
            }
            set
            {
                this.m_ProvinceID = value;
            }
        }

        #endregion

    }
}