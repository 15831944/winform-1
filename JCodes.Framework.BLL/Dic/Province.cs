using System;
using System.Collections;
using System.Data;
using System.Data.Common;
using System.Collections.Generic;
using JCodes.Framework.Common;
using JCodes.Framework.Entity;

namespace JCodes.Framework.BLL
{
    /// <summary>
    /// �й�ʡ��ҵ�������
    /// </summary>
	public class Province : BaseBLL<ProvinceInfo>
    {
        public Province() : base()
        {
            base.Init(this.GetType().FullName, System.Reflection.Assembly.GetExecutingAssembly().GetName().Name);
        }
    }
}
