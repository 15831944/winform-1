using System;
using System.Security.Cryptography;
using System.Text;
using System.IO;
using JCodes.Framework.jCodesenum.BaseEnum;

namespace JCodes.Framework.Common
{
    /// <summary>
    /// �ǶԳƼ��ܡ����ܡ���֤������
    /// </summary>
    public class RSASecurityHelper
    {
        /// <summary>
        /// �ǶԳƼ������ɵ�˽Կ�͹�Կ 
        /// </summary>
        /// <param name="privateKey">˽Կ</param>
        /// <param name="publicKey">��Կ</param>
        public static void GenerateRSAKey(out string privateKey, out string publicKey)
        {
            RSACryptoServiceProvider rsa = new RSACryptoServiceProvider();
            privateKey = rsa.ToXmlString(true);
            publicKey = rsa.ToXmlString(false);
        }
        
        #region �ǶԳ����ݼ��ܣ���Կ���ܣ�

        /// <summary>
        /// �ǶԳƼ����ַ������ݣ����ؼ��ܺ������
        /// </summary>
        /// <param name="publicKey">��Կ</param>
        /// <param name="originalString">�����ܵ��ַ���</param>
        /// <returns>���ܺ������</returns>
        public static string RSAEncrypt(string publicKey, string originalString)
        {
            byte[] PlainTextBArray;
            byte[] CypherTextBArray;
            string Result;
            RSACryptoServiceProvider rsa = new RSACryptoServiceProvider();
            rsa.FromXmlString(publicKey);
            PlainTextBArray = (new UnicodeEncoding()).GetBytes(originalString);
            CypherTextBArray = rsa.Encrypt(PlainTextBArray, false);
            Result = Convert.ToBase64String(CypherTextBArray);
            return Result;
        }

        /// <summary>
        /// �ǶԳƼ����ֽ����飬���ؼ��ܺ������
        /// </summary>
        /// <param name="publicKey">��Կ</param>
        /// <param name="originalBytes">�����ܵ��ֽ�����</param>
        /// <returns>���ؼ��ܺ������</returns>
        public static string RSAEncrypt(string publicKey, byte[] originalBytes)
        {
            byte[] CypherTextBArray;
            string Result;
            RSACryptoServiceProvider rsa = new RSACryptoServiceProvider();
            rsa.FromXmlString(publicKey);
            CypherTextBArray = rsa.Encrypt(originalBytes, false);
            Result = Convert.ToBase64String(CypherTextBArray);
            return Result;
        } 

        #endregion

        #region �ǶԳƽ��ܣ�˽Կ���ܣ�

        /// <summary>
        /// �ǶԳƽ����ַ��������ؽ��ܺ������
        /// </summary>
        /// <param name="privateKey">˽Կ</param>
        /// <param name="encryptedString">����������</param>
        /// <returns>���ؽ��ܺ������</returns>
        public static string RSADecrypt(string privateKey, string encryptedString)
        {
            byte[] PlainTextBArray;
            byte[] DypherTextBArray;
            string Result;
            System.Security.Cryptography.RSACryptoServiceProvider rsa = new RSACryptoServiceProvider();
            rsa.FromXmlString(privateKey);
            PlainTextBArray = Convert.FromBase64String(encryptedString);
            DypherTextBArray = rsa.Decrypt(PlainTextBArray, false);
            Result = (new UnicodeEncoding()).GetString(DypherTextBArray);
            return Result;
        }

        /// <summary>
        /// �ǶԳƽ����ֽ����飬���ؽ��ܺ������
        /// </summary>
        /// <param name="privateKey">˽Կ</param>
        /// <param name="encryptedBytes">����������</param>
        /// <returns></returns>
        public static string RSADecrypt(string privateKey, byte[] encryptedBytes)
        {
            byte[] DypherTextBArray;
            string Result;
            System.Security.Cryptography.RSACryptoServiceProvider rsa = new RSACryptoServiceProvider();
            rsa.FromXmlString(privateKey);
            DypherTextBArray = rsa.Decrypt(encryptedBytes, false);
            Result = (new UnicodeEncoding()).GetString(DypherTextBArray);
            return Result;
        } 
        #endregion

        #region �ǶԳƼ���ǩ������֤

        /// <summary>
        /// ʹ�÷ǶԳƼ���ǩ������
        /// </summary>
        /// <param name="privateKey">˽Կ</param>
        /// <param name="originalString">�����ܵ��ַ���</param>
        /// <returns>���ܺ������</returns>
        public static string RSAEncrypSignature(string privateKey, string originalString)
        {
            string signature;
            using (RSACryptoServiceProvider rsa = new RSACryptoServiceProvider())
            {
                rsa.FromXmlString(privateKey); //˽Կ
                // ���ܶ��� 
                RSAPKCS1SignatureFormatter f = new RSAPKCS1SignatureFormatter(rsa);
                f.SetHashAlgorithm("SHA1");
                byte[] source = ASCIIEncoding.ASCII.GetBytes(originalString);
                SHA1Managed sha = new SHA1Managed();
                byte[] result = sha.ComputeHash(source);
                byte[] b = f.CreateSignature(result);
                signature = Convert.ToBase64String(b);
            }
            return signature;
        }

        /// <summary>
        /// ��˽Կ����ǩ�����ַ�����ʹ�ù�Կ���������֤
        /// </summary>
        /// <param name="originalString">δ���ܵ��ı����������</param>
        /// <param name="encrytedString">���ܺ���ı�����ע�����к�</param>
        /// <returns>�����֤�ɹ�����True������ΪFalse</returns>
        public static bool Validate(string originalString, string encrytedString)
        {
            return Validate(originalString, encrytedString, UIConstants.PublicKey);
        }

        /// <summary>
        /// ��˽Կ���ܵ��ַ�����ʹ�ù�Կ���������֤
        /// </summary>
        /// <param name="originalString">δ���ܵ��ı����������</param>
        /// <param name="encrytedString">���ܺ���ı�����ע�����к�</param>
        /// <param name="publicKey">�ǶԳƼ��ܵĹ�Կ</param>
        /// <returns>�����֤�ɹ�����True������ΪFalse</returns>
        public static bool Validate(string originalString, string encrytedString, string publicKey)
        {
            bool bPassed = false;
            using (RSACryptoServiceProvider rsa = new RSACryptoServiceProvider())
            {
                try
                {
                    rsa.FromXmlString(publicKey); //��Կ
                    RSAPKCS1SignatureDeformatter formatter = new RSAPKCS1SignatureDeformatter(rsa);
                    formatter.SetHashAlgorithm("SHA1");

                    byte[] key = Convert.FromBase64String(encrytedString); //��֤
                    SHA1Managed sha = new SHA1Managed();
                    byte[] name = sha.ComputeHash(ASCIIEncoding.ASCII.GetBytes(originalString));
                    if (formatter.VerifySignature(name, key))
                    {
                        bPassed = true;
                    }
                }
                catch
                {
                }
            }
            return bPassed;
        }

        #endregion

        #region Hash ����

        /// <summary> Hash ���� </summary>
        /// <param name="str2Hash"></param>
        /// <returns></returns>
        public static int HashEncrypt(string str2Hash)
        {
            str2Hash += Const.strHash;       // ����һ�������ַ���

            int len = str2Hash.Length;
            int result = (str2Hash[len - 1] - 31) * 95 + Const.salt;
            for (int i = 0; i < len - 1; i++)
            {
                result = (result * 95) + (str2Hash[i] - 32);
            }

            return result;
        }

        /// <summary>
        /// MD5����
        /// </summary>
        /// <param name="str">�������ִ�</param>
        /// <returns>���ܺ���ִ�</returns>
        public static string ComputeMD5(string str)
        {
            byte[] hashValue = ComputeMD5Data(str);
            return BitConverter.ToString(hashValue).Replace("-", "");
        }

        /// <summary>
        /// MD5����
        /// </summary>
        /// <param name="input">�������ִ�</param>
        /// <returns>���ܺ���ִ�</returns>
        public static byte[] ComputeMD5Data(string input)
        {
            byte[] buffer = Encoding.UTF8.GetBytes(input);
            return MD5.Create().ComputeHash(buffer);
        }

        /// <summary>
        /// MD5����
        /// </summary>
        /// <param name="data">����������</param>
        /// <returns>���ܺ���ִ�</returns>
        public static byte[] ComputeMD5Data(byte[] data)
        {
            return MD5.Create().ComputeHash(data);
        }

        /// <summary>
        /// MD5����
        /// </summary>
        /// <param name="stream">��������</param>
        /// <returns>���ܺ���ִ�</returns>
        public static byte[] ComputeMD5Data(Stream stream)
        {
            return MD5.Create().ComputeHash(stream);
        }

        /// <summary>
        /// ����ע������Ϣ (�ù�Կ����)
        /// </summary>
        /// <returns></returns>
        public static string GetRegistrationCode()
        {
            string machineCode = HardwareInfoHelper.GetCPUId();
            string expireDate = Convert.ToDateTime(Data.getSysDate()).AddYears(1).ToString("yyyy-MM-dd");
            string publicKey = Const.publicKey;
            return RSASecurityHelper.RSAEncrypt(publicKey, machineCode + Const.VerticalLine + expireDate);
        }

  
        /// <summary>
        /// ��֤ע������Ϣ
        /// </summary>
        /// <param name="encryptedString"> ע������Ϣ </param>
        /// <returns>����0 ��ʾ��ȷ��-1��ʾע�������-2��ʾ��������� -3��ʾע���ѹ��ڣ� -4��ʾ�����ڲ�����</returns>
        public static Int32 CheckRegistrationCode(string encryptedString)
        {
            string originalString = null;
            try
            {
                originalString = RSASecurityHelper.RSADecrypt(Const.privateKey, encryptedString);
            }
            catch (Exception ex)
            {
                return -1;
            }

            string[] d2 = originalString.Split('|');
            if (d2.Length != 2)
                return -4;

            string machineCode = d2[0];
            string expireDate = d2[1];
            if (!string.Equals(machineCode, HardwareInfoHelper.GetCPUId(), StringComparison.OrdinalIgnoreCase))
                return -2;
            
            DateTime nowdt = Convert.ToDateTime( Data.getSysDate() );
            DateTime expiredt = Convert.ToDateTime( expireDate);
            if (nowdt > expiredt)
                return -3;

            return 0;
        }
        #endregion
    }
}