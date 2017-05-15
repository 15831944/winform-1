using System;
using System.Xml.Serialization;
using System.Runtime.Serialization;

namespace JCodes.Framework.Entity
{
    [Serializable]
    [DataContract]
    public class ProvinceInfo : BaseEntity
    {    
        #region Field Members

        private int m_ID = 0;         
        private string m_ProvinceName = "";         

        #endregion

        #region Property Members

        /// <summary>
        /// ʡ��ID
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
        /// ʡ������
        /// </summary>
        [DataMember]
        public virtual string ProvinceName
        {
            get
            {
                return this.m_ProvinceName;
            }
            set
            {
                this.m_ProvinceName = value;
            }
        }


        #endregion

    }
}