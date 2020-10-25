using System;
using System.Collections;
using System.Data;
using System.Data.Common;
using System.Collections.Generic;
using JCodes.Framework.Common;
using JCodes.Framework.Entity;
using JCodes.Framework.Common.Framework;

namespace JCodes.Framework.IDAL
{
	/// <summary>
    /// IDongnanhaiVotesUser 的摘要说明。
	/// </summary>
    public interface IDongnanhaiVotesUser : IBaseDAL<VoteUserInfo>
	{
        void InsertVoteUser(VoteUserInfo voteUserInfo);
    }
}