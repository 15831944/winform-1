using System.Collections.Generic;
using JCodes.Framework.IDAL;
using JCodes.Framework.Common.Framework;
using JCodes.Framework.Entity.Machines;
using System;

namespace JCodes.Framework.BLL
{
    /// <summary>
    /// ����ҵ�������
    /// </summary>
	public class DongnanhaiVotes : BaseBLL<DongnanhaiVotesInfo>
    {
        public DongnanhaiVotes()
            : base()
        {
            base.Init(this.GetType().FullName, System.Reflection.Assembly.GetExecutingAssembly().GetName().Name);
        }

       
        /// <summary>
        /// ����ʡ�����ƻ�ȡ��Ӧ�ĳ����б�
        /// </summary>
        /// <param name="provinceName">ʡ������</param>
        /// <returns></returns>
        public List<DongnanhaiVotesInfo> GetVotesBylouzhuang(string louzhuang)
        {
            IDongnanhaiVotes dal = baseDal as IDongnanhaiVotes;
            return dal.GetVotesBylouzhuang(louzhuang);
        }

        public Int32 MaxCengHuShu(string louzhuang) {
            IDongnanhaiVotes dal = baseDal as IDongnanhaiVotes;
            return dal.MaxCengHuShu(louzhuang);
        }
        // fanghao='1004' and util='1' and zhuang='8' and yuan='Ǯ�����ϼ�԰'
        public void UpdateFlag(string fanghao, string util, string zhuang, string yuan, Int32 flag)
        {
            IDongnanhaiVotes dal = baseDal as IDongnanhaiVotes;
            dal.UpdateFlag(fanghao, util, zhuang, yuan, flag);
        }
    }
}
