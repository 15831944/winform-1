﻿using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.Win32;
using JCodes.Framework.Common;
using JCodes.Framework.Common.Files;
using JCodes.Framework.Common.Office;

namespace JCodes.Framework.AccessDAL
{
    public class AccessPortal
    {
        public static GlobalTablePre gc = new GlobalTablePre();
    }

    public class GlobalTablePre
    {
        private static AppConfig _appConfig = Cache.Instance["AppConfig"] == null ? new AppConfig() : Cache.Instance["AppConfig"] as AppConfig;
        // 权限对应的表前缀
        public string _securityTablePre = _appConfig.AppConfigGet("SecurityTablePre");

        public string _basicTablePre = _appConfig.AppConfigGet("BasicTablePre");

        public string _contactTablePre = _appConfig.AppConfigGet("ContactTablePre");

        public string _wareHouseTablePre = _appConfig.AppConfigGet("WareHouseTablePre");
    }
}
