using System.Collections.Generic;
using JCodes.Framework.IDAL;
using JCodes.Framework.Common.Framework;
using System;
using JCodes.Framework.Entity;

namespace JCodes.Framework.BLL
{
    /// <summary>
    /// ����ҵ�������
    /// </summary>
	public class DongnanhaiVotesUser : BaseBLL<VoteUserInfo>
    {
        public DongnanhaiVotesUser()
            : base()
        {
            base.Init(this.GetType().FullName, System.Reflection.Assembly.GetExecutingAssembly().GetName().Name);
        }

       
        /// <summary>
        /// ����ʡ�����ƻ�ȡ��Ӧ�ĳ����б�
        /// </summary>
        /// <param name="provinceName">ʡ������</param>
        /// <returns></returns>
        public void InsertVoteUser(VoteUserInfo voteUserInfo)
        {
            IDongnanhaiVotesUser dal = baseDal as IDongnanhaiVotesUser;
            dal.InsertVoteUser(voteUserInfo);
        }
    }
}
