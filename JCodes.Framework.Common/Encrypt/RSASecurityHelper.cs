using System;
using System.Security.Cryptography;
using System.Text;
using System.IO;
using JCodes.Framework.jCodesenum.BaseEnum;
using JCodes.Framework.Common.Device;
using JCodes.Framework.Common.Office;
using JCodes.Framework.Common.Files;
using Microsoft.Win32;
using JCodes.Framework.jCodesenum;
using Org.BouncyCastle.Crypto.Parameters;
using System.Xml;
using Org.BouncyCastle.Math;
using Org.BouncyCastle.Asn1.Pkcs;
using Org.BouncyCastle.Asn1.X509;
using Org.BouncyCastle.Pkcs;
using Org.BouncyCastle.Security;
using Org.BouncyCastle.X509;

namespace JCodes.Framework.Common.Encrypt
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

        private RSACryptoServiceProvider CreateRsaProviderFromPrivateKey(string privateKey)
        {
            var privateKeyBits = System.Convert.FromBase64String(privateKey);

            var RSA = new RSACryptoServiceProvider();
            var RSAparams = new RSAParameters();

            using (BinaryReader binr = new BinaryReader(new MemoryStream(privateKeyBits)))
            {
                byte bt = 0;
                ushort twobytes = 0;
                twobytes = binr.ReadUInt16();
                if (twobytes == 0x8130)
                    binr.ReadByte();
                else if (twobytes == 0x8230)
                    binr.ReadInt16();
                else
                    throw new Exception("Unexpected value read binr.ReadUInt16()");

                twobytes = binr.ReadUInt16();
                if (twobytes != 0x0102)
                    throw new Exception("Unexpected version");

                bt = binr.ReadByte();
                if (bt != 0x00)
                    throw new Exception("Unexpected value read binr.ReadByte()");

                RSAparams.Modulus = binr.ReadBytes(GetIntegerSize(binr));
                RSAparams.Exponent = binr.ReadBytes(GetIntegerSize(binr));
                RSAparams.D = binr.ReadBytes(GetIntegerSize(binr));
                RSAparams.P = binr.ReadBytes(GetIntegerSize(binr));
                RSAparams.Q = binr.ReadBytes(GetIntegerSize(binr));
                RSAparams.DP = binr.ReadBytes(GetIntegerSize(binr));
                RSAparams.DQ = binr.ReadBytes(GetIntegerSize(binr));
                RSAparams.InverseQ = binr.ReadBytes(GetIntegerSize(binr));
            }

            RSA.ImportParameters(RSAparams);
            return RSA;
        }

        private int GetIntegerSize(BinaryReader binr)
        {
            byte bt = 0;
            byte lowbyte = 0x00;
            byte highbyte = 0x00;
            int count = 0;
            bt = binr.ReadByte();
            if (bt != 0x02)
                return 0;
            bt = binr.ReadByte();

            if (bt == 0x81)
                count = binr.ReadByte();
            else
                if (bt == 0x82)
                {
                    highbyte = binr.ReadByte();
                    lowbyte = binr.ReadByte();
                    byte[] modint = { lowbyte, highbyte, 0x00, 0x00 };
                    count = BitConverter.ToInt32(modint, 0);
                }
                else
                {
                    count = bt;
                }

            while (binr.ReadByte() == 0x00)
            {
                count -= 1;
            }
            binr.BaseStream.Seek(-1, SeekOrigin.Current);
            return count;
        }

        private RSACryptoServiceProvider CreateRsaProviderFromPublicKey(string publicKeyString)
        {
            // encoded OID sequence for  PKCS #1 rsaEncryption szOID_RSA_RSA = "1.2.840.113549.1.1.1"
            byte[] SeqOID = { 0x30, 0x0D, 0x06, 0x09, 0x2A, 0x86, 0x48, 0x86, 0xF7, 0x0D, 0x01, 0x01, 0x01, 0x05, 0x00 };
            byte[] x509key;
            byte[] seq = new byte[15];
            int x509size;

            x509key = Convert.FromBase64String(publicKeyString);
            x509size = x509key.Length;

            // ---------  Set up stream to read the asn.1 encoded SubjectPublicKeyInfo blob  ------
            using (MemoryStream mem = new MemoryStream(x509key))
            {
                using (BinaryReader binr = new BinaryReader(mem))  //wrap Memory Stream with BinaryReader for easy reading
                {
                    byte bt = 0;
                    ushort twobytes = 0;

                    twobytes = binr.ReadUInt16();
                    if (twobytes == 0x8130) //data read as little endian order (actual data order for Sequence is 30 81)
                        binr.ReadByte();    //advance 1 byte
                    else if (twobytes == 0x8230)
                        binr.ReadInt16();   //advance 2 bytes
                    else
                        return null;

                    seq = binr.ReadBytes(15);       //read the Sequence OID
                    if (!CompareBytearrays(seq, SeqOID))    //make sure Sequence for OID is correct
                        return null;

                    twobytes = binr.ReadUInt16();
                    if (twobytes == 0x8103) //data read as little endian order (actual data order for Bit String is 03 81)
                        binr.ReadByte();    //advance 1 byte
                    else if (twobytes == 0x8203)
                        binr.ReadInt16();   //advance 2 bytes
                    else
                        return null;

                    bt = binr.ReadByte();
                    if (bt != 0x00)     //expect null byte next
                        return null;

                    twobytes = binr.ReadUInt16();
                    if (twobytes == 0x8130) //data read as little endian order (actual data order for Sequence is 30 81)
                        binr.ReadByte();    //advance 1 byte
                    else if (twobytes == 0x8230)
                        binr.ReadInt16();   //advance 2 bytes
                    else
                        return null;

                    twobytes = binr.ReadUInt16();
                    byte lowbyte = 0x00;
                    byte highbyte = 0x00;

                    if (twobytes == 0x8102) //data read as little endian order (actual data order for Integer is 02 81)
                        lowbyte = binr.ReadByte();  // read next bytes which is bytes in modulus
                    else if (twobytes == 0x8202)
                    {
                        highbyte = binr.ReadByte(); //advance 2 bytes
                        lowbyte = binr.ReadByte();
                    }
                    else
                        return null;
                    byte[] modint = { lowbyte, highbyte, 0x00, 0x00 };   //reverse byte order since asn.1 key uses big endian order
                    int modsize = BitConverter.ToInt32(modint, 0);

                    int firstbyte = binr.PeekChar();
                    if (firstbyte == 0x00)
                    {   //if first byte (highest order) of modulus is zero, don't include it
                        binr.ReadByte();    //skip this null byte
                        modsize -= 1;   //reduce modulus buffer size by 1
                    }

                    byte[] modulus = binr.ReadBytes(modsize);   //read the modulus bytes

                    if (binr.ReadByte() != 0x02)            //expect an Integer for the exponent data
                        return null;
                    int expbytes = (int)binr.ReadByte();        // should only need one byte for actual exponent data (for all useful values)
                    byte[] exponent = binr.ReadBytes(expbytes);

                    // ------- create RSACryptoServiceProvider instance and initialize with public key -----
                    RSACryptoServiceProvider RSA = new RSACryptoServiceProvider();
                    RSAParameters RSAKeyInfo = new RSAParameters();
                    RSAKeyInfo.Modulus = modulus;
                    RSAKeyInfo.Exponent = exponent;
                    RSA.ImportParameters(RSAKeyInfo);

                    return RSA;
                }

            }
        }

        private bool CompareBytearrays(byte[] a, byte[] b)
        {
            if (a.Length != b.Length)
                return false;
            int i = 0;
            foreach (byte c in a)
            {
                if (c != b[i])
                    return false;
                i++;
            }
            return true;
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
                catch (Exception ex)
                {
                    LogHelper.WriteLog(LogLevel.LOG_LEVEL_CRIT, ex, typeof(RSASecurityHelper));
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
        public static string GetRegistrationCode(string userName, string Company)
        {
            string machineCode = HardwareInfoHelper.GetCPUId();
            string expireDate = Convert.ToDateTime(Data.getSysDate()).AddYears(1).ToString("yyyy-MM-dd");
            string publicKey = Const.publicKey;
            return RSASecurityHelper.RSAEncrypt(publicKey, machineCode + Const.VerticalLine + expireDate + Const.VerticalLine + Company + Const.VerticalLine + userName);
        }

  
        /// <summary>
        /// ��֤ע������Ϣ(������|��Ч����|ע�ṫ˾|ע���û�)
        /// </summary>
        /// <param name="encryptedString"> ע������Ϣ </param>
        /// <returns>����0 ��ʾ��ȷ��-1��ʾע�������-2��ʾ��������� -3��ʾע���ѹ��ڣ� -4��ʾ�����ڲ�����, -5 ע����Ա��Ϣ����-6ע�ṫ˾����</returns>
        public static Int32 CheckRegistrationCode(string encryptedString, string struserName, string strcompany)
        {
            string originalString = null;
            try
            {
                originalString = RSASecurityHelper.RSADecrypt(Const.privateKey, encryptedString);
            }
            catch (Exception ex)
            {
                LogHelper.WriteLog(LogLevel.LOG_LEVEL_CRIT, ex, typeof(RSASecurityHelper));
                return -1;
            }

            string[] d2 = originalString.Split('|');
            if (d2.Length != 4)
                return -4;

            string machineCode = d2[0];
            string expireDate = d2[1];
            string companyName = d2[2];
            string userName = d2[3];
            if (!string.Equals(machineCode, HardwareInfoHelper.GetCPUId(), StringComparison.OrdinalIgnoreCase))
                return -2;

            DateTime nowdt = Convert.ToDateTime( Data.getSysDate() );
            DateTime expiredt = Convert.ToDateTime( expireDate);
            if (nowdt > expiredt)
                return -3;

            AppConfig config = Cache.Instance["AppConfig"] as AppConfig;
            if (config == null)
            {
                config = new AppConfig();
                Cache.Instance["AppConfig"] = config;
            }

            string LicensePath = config.AppConfigGet("LicensePath");
            if (!string.Equals(struserName, userName, StringComparison.OrdinalIgnoreCase))
                return -5;
            if (!string.Equals(strcompany, companyName, StringComparison.OrdinalIgnoreCase))
                return -6;

            RegistryKey reg;
            string regkey = UIConstants.SoftwareRegistryKey;
            reg = Registry.CurrentUser.OpenSubKey(regkey, true);
            if (null == reg)
            {
                reg = Registry.CurrentUser.CreateSubKey(regkey);
            }
            if (null != reg)
            {
                reg.SetValue("productName", UIConstants.SoftwareProductName);
                reg.SetValue("version", UIConstants.SoftwareVersion);
                reg.SetValue("SysDate", expireDate);
                reg.SetValue("UserName", userName);
                reg.SetValue("Company", companyName);
                reg.SetValue("regCode", encryptedString);
            }

            // д��lic �ļ�
            FileUtil.WriteText(LicensePath, encryptedString+Const.VerticalLine+userName+Const.VerticalLine+companyName, Encoding.Default);

            return 0;
        }
        #endregion
    }
}