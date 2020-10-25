using System;
using Microsoft.Win32;
using System.Windows.Forms;
using JCodes.Framework.Common.Files;
using JCodes.Framework.Common.Encrypt;
using JCodes.Framework.jCodesenum;

namespace JCodes.Framework.Common.Office
{
    /// <summary>
    /// ע�����������࣬ͨ��Ĭ��ָ��ע����ǰ׺·�������ٵ��ø����ԡ�
    /// </summary>
    public sealed class RegistryHelper
    {
        #region ������������ȡ�ͱ��棩
        private static string Software_Key = @"Software\DeepLand\OrderWater";

        /// <summary>
        /// ��ȡע������ֵ������ü������ڣ��򷵻ؿ��ַ�����
        /// </summary>
        /// <param name="key">ע����</param>
        /// <returns>ָ�������ص�ֵ</returns>
        public static string GetValue(string key)
        {
            return GetValue(Software_Key, key);
        }

        /// <summary>
        /// ��ȡע������ֵ������ü������ڣ��򷵻ؿ��ַ�����
        /// </summary>
        /// <param name="softwareKey">ע������ǰ׺·��</param>
        /// <param name="key">ע����</param>
        /// <returns>ָ�������ص�ֵ</returns>
        public static string GetValue(string softwareKey, string key)
        {
            return GetValue(softwareKey, key, Registry.CurrentUser);
        }

        /// <summary>
        /// ��ȡע������ֵ������ü������ڣ��򷵻ؿ��ַ�����
        /// </summary>
        /// <param name="softwareKey">ע������ǰ׺·��</param>
        /// <param name="key">ע����</param>
        /// <param name="rootRegistry">��ʼ�ĸ��ڵ㣨Registry.CurrentUser����Registry.LocalMachine�ȣ�</param>
        /// <returns>ָ�������ص�ֵ</returns>
        public static string GetValue(string softwareKey, string key, RegistryKey rootRegistry)
        {
            if (null == key)
            {
                throw new ArgumentNullException(Const.parameter);
            }

            string strRet = string.Empty;
            try
            {
                RegistryKey regKey = rootRegistry.OpenSubKey(softwareKey);
                strRet = regKey.GetValue(key).ToString();
            }
            catch (Exception ex)
            {
                strRet = "";
                LogHelper.WriteLog(LogLevel.LOG_LEVEL_CRIT, ex, typeof(RegistryHelper));
            }
            return strRet;
        }

        /// <summary>
        /// �����ֵ��ע���
        /// </summary>
        /// <param name="key">ע����</param>
        /// <param name="value">����ֵ����</param>
        /// <returns>�������ɹ�����true������Ϊfalse</returns>
        public static bool SaveValue(string key, string value)
        {
            return SaveValue(Software_Key, key, value);
        }

        /// <summary>
        /// �����ֵ��ע���
        /// </summary>
        /// <param name="softwareKey">ע������ǰ׺·��</param>
        /// <param name="key">ע����</param>
        /// <param name="value">����ֵ����</param>
        /// <returns>�������ɹ�����true������Ϊfalse</returns>
        public static bool SaveValue(string softwareKey, string key, string value)
        {
            return SaveValue(softwareKey, key, value, Registry.CurrentUser);
        }

        /// <summary>
        /// �����ֵ��ע���
        /// </summary>
        /// <param name="softwareKey">ע������ǰ׺·��</param>
        /// <param name="key">ע����</param>
        /// <param name="value">����ֵ����</param>
        /// <param name="rootRegistry">��ʼ�ĸ��ڵ㣨Registry.CurrentUser����Registry.LocalMachine�ȣ�</param>
        /// <returns>�������ɹ�����true������Ϊfalse</returns>
        public static bool SaveValue(string softwareKey, string key, string value, RegistryKey rootRegistry)
        {
            if (null == key)
            {
                throw new ArgumentNullException(Const.parameter1);
            }

            if (null == value)
            {
                throw new ArgumentNullException(Const.parameter2);
            }

            RegistryKey reg;
            reg = rootRegistry.OpenSubKey(softwareKey, true);

            if (null == reg)
            {
                reg = rootRegistry.CreateSubKey(softwareKey);
            }
            reg.SetValue(key, value);

            return true;
        }

        /// <summary>
        /// ÿ�γ�������ʱ��,����û��Ƿ�ע��(�����һ��, ��ôд���һ������ʱ��)
        /// </summary>
        /// <returns>����û��Ѿ�ע��, ��ô����True, ����ΪFalse</returns>
        public static bool CheckRegister()
        {
            // ����ע�������Ϣ
            string regCode = string.Empty;              //ע����
            string userName = string.Empty;             // ע���û�
            string company = string.Empty;              // ע�ṫ˾

            RegistryKey reg = Registry.CurrentUser.OpenSubKey(UIConstants.SoftwareRegistryKey, true);

            // �����ж�ע������Ƿ����regCode ע�������Ϣ�����û���ڴ�lic�ļ��ж�ȡ�ļ������2��������������֤��ͨ��
            if (null == reg)
            {
                AppConfig config = Cache.Instance["AppConfig"] as AppConfig;
                if (config == null)
                {
                    config = new AppConfig();
                    Cache.Instance["AppConfig"] = config;
                }
                string LicensePath = config.AppConfigGet("LicensePath");
                if (FileUtil.IsExistFile(LicensePath))
                {
                    
                    string[] tmpstr = FileUtil.FileToString(LicensePath).Split(Convert.ToChar(Const.VerticalLine));

                    if (tmpstr.Length == 3)
                    {
                        regCode = tmpstr[0];
                        userName = tmpstr[1];
                        company = tmpstr[2];
                    }
                }
            }

            // 20170815 wujianming �޸��²��𻷾����� δ����ʵ����������
            if (null != reg && reg.GetValue("regCode") != null)
            {
                // ��ȡ��֤��
                regCode = reg.GetValue("regCode").ToString();
                userName = reg.GetValue("UserName").ToString();
                company = reg.GetValue("Company").ToString();
            }

            // ��ȥ���ñ������
            if (string.Equals(regCode, string.Empty))
            {
                AppConfig config = Cache.Instance["AppConfig"] as AppConfig;
                if (config == null)
                {
                    config = new AppConfig();
                    Cache.Instance["AppConfig"] = config;
                }

                string LicensePath = config.AppConfigGet("LicensePath");
                if (FileUtil.IsExistFile(LicensePath))
                {
                    string[] tmpstr = FileUtil.FileToString(LicensePath).Split(Convert.ToChar(Const.VerticalLine));

                    if (tmpstr.Length == 3)
                    {
                        regCode = tmpstr[0];
                        userName = tmpstr[1];
                        company = tmpstr[2];
                    }
                }
            }

            // 2����û�л�ȡ��ע������Ϣ����Ϊû��ע���
            if (string.Equals(regCode, string.Empty))
            {
                return false;
            }
            Int32 passed = RSASecurityHelper.CheckRegistrationCode(regCode,userName, company);
            if (passed == 0)
            { return true; }
            else
            {
                return false;
            }

        }
        #endregion

        #region �Զ�������������

        /// <summary>
        /// ����Ƿ���ϵͳ����
        /// </summary>
        /// <returns></returns>
        public static bool CheckStartWithWindows()
        {
            RegistryKey regkey = Registry.CurrentUser.OpenSubKey(@"SOFTWARE\Microsoft\Windows\CurrentVersion\Run");
            if (regkey != null && (string)regkey.GetValue(Application.ProductName, "null", RegistryValueOptions.None) != "null")
            {
                Registry.CurrentUser.Flush();
                return true;
            }

            Registry.CurrentUser.Flush();
            return false;
        }

        /// <summary>
        /// ������ϵͳ����
        /// </summary>
        /// <param name="startWin"></param>
        public static void SetStartWithWindows(bool startWin)
        {
            RegistryKey regkey = Registry.CurrentUser.OpenSubKey(@"SOFTWARE\Microsoft\Windows\CurrentVersion\Run", true);
            if (regkey != null)
            {
                if (startWin)
                {
                    regkey.SetValue(Application.ProductName, Application.ExecutablePath, RegistryValueKind.String);
                }
                else
                {
                    regkey.DeleteValue(Application.ProductName, false);
                }

                Registry.CurrentUser.Flush();
            }
        }

        #endregion
    }
}