using System;
using System.Collections;
using System.Globalization;
using System.Reflection;
using System.Text;
using Microsoft.VisualBasic;
using JCodes.Framework.jCodesenum.BaseEnum;
using JCodes.Framework.jCodesenum;

namespace JCodes.Framework.Common.Format
{
    /// <summary>
    /// �ַ�����Сд����ز���������
    /// </summary>
    public class StringUtil
    {
        private StringUtil()
        {
        }

        /// <summary>
        /// ת��ΪCamel�ַ�����ʽ��ȥ���ַ�֮��Ŀո��Լ���ʼ"_"����
        /// </summary>
        /// <param name="name">��ת���ַ���</param>
        /// <returns></returns>
        public static string ToCamel(string name)
        {
            string clone = name.TrimStart('_');
            clone = RemoveSpaces(ToProperCase(clone));
            return String.Format("{0}{1}", Char.ToLower(clone[0]),
                                 clone.Substring(1, clone.Length - 1));
        }

        /// <summary>
        /// ת��ΪCapital��ʽ��ʾ��ȥ���ַ�֮��Ŀո��Լ���ʼ"_"����
        /// </summary>
        /// <param name="name">��ת���ַ���</param>
        /// <returns></returns>
        public static string ToCapit(String name)
        {
            string clone = name.TrimStart('_');
            return RemoveSpaces(ToProperCase(clone));
        }

        /// <summary>
        /// �Ƴ��ַ�������һ���ַ�
        /// </summary>
        /// <param name="s"></param>
        /// <returns></returns>
        public static string RemoveFinalChar(string s)
        {
            if (s.Length > 1)
            {
                s = s.Substring(0, s.Length - 1);
            }
            return s;
        }

        /// <summary>
        /// �Ƴ��ַ���������һ������
        /// </summary>
        /// <param name="s">�������ַ���</param>
        /// <returns></returns>
        public static string RemoveFinalComma(string s)
        {
            if (s.Trim().Length > 0)
            {
                int c = s.LastIndexOf(",");
                if (c > 0)
                {
                    s = s.Substring(0, s.Length - (s.Length - c));
                }
            }
            return s;
        }

        /// <summary>
        /// �Ƴ��ַ���Ŀո�
        /// </summary>
        /// <param name="s">�������ַ���</param>
        /// <returns></returns>
        public static string RemoveSpaces(string s)
        {
            s = s.Trim();
            s = s.Replace(" ", "");
            return s;
        }

        /// <summary>
        /// ���ַ���ת��Ϊ���ʵĴ�Сд
        /// </summary>
        /// <param name="s">�������ַ���</param>
        /// <returns></returns>
        public static string ToProperCase(string s)
        {
            string revised = "";
            if (s.Length > 0)
            {
                if (s.IndexOf(" ") > 0)
                {
                    revised = Strings.StrConv(s, VbStrConv.ProperCase, 1033);
                }
                else
                {
                    string firstLetter = s.Substring(0, 1).ToUpper(new CultureInfo("en-US"));
                    revised = firstLetter + s.Substring(1, s.Length - 1);
                }
            }
            return revised;
        }

        /// <summary>
        /// ����ַ���Ŀո񣬲�ת��Ϊ���ʵĴ�Сд
        /// </summary>
        /// <param name="s"></param>
        /// <returns></returns>
        public static string ToTrimmedProperCase(string s)
        {
            return RemoveSpaces(ToProperCase(s));
        }

        /// <summary>
        /// ת������Ϊ�ַ�����ʾ
        /// </summary>
        /// <param name="o">��������</param>
        /// <returns></returns>
        public static string ToString(Object o)
        {
            Type t = o.GetType();
            PropertyInfo[] pi = t.GetProperties();

            StringBuilder sb = new StringBuilder();
            sb.Append("Properties for: " + o.GetType().Name + Environment.NewLine);
            foreach (PropertyInfo i in pi)
            {
                try
                {
                    sb.Append("\t" + i.Name + "(" + i.PropertyType.ToString() + "): ");
                    if (null != i.GetValue(o, null))
                    {
                        sb.Append(i.GetValue(o, null).ToString());
                    }
                }
                catch (Exception ex)
                {
                    LogHelper.WriteLog(LogLevel.LOG_LEVEL_CRIT, ex, typeof(StringUtil));
                }
                sb.Append(Environment.NewLine);
            }

            FieldInfo[] fi = t.GetFields();
            foreach (FieldInfo i in fi)
            {
                try
                {
                    sb.Append("\t" + i.Name + "(" + i.FieldType.ToString() + "): ");
                    if (null != i.GetValue(o))
                    {
                        sb.Append(i.GetValue(o).ToString());
                    }
                }
                catch (Exception ex)
                {
                    LogHelper.WriteLog(LogLevel.LOG_LEVEL_CRIT, ex, typeof(StringUtil));
                }
                sb.Append(Environment.NewLine);
            }

            return sb.ToString();
        }

        /// <summary>
        /// ���ַ����У�ָ����ʼ�ַ��ͽ����ַ�����ȡ�м������
        /// </summary>
        /// <param name="content">�������ַ���</param>
        /// <param name="start">��ʼ�ַ�</param>
        /// <param name="end">�����ַ�</param>
        /// <returns></returns>
        public static ArrayList ExtractInnerContent(string content, string start, string end)
        {
            int sindex = -1, eindex = -1, msindex = -1;
            int span = 0;

            ArrayList al = new ArrayList();

            sindex = content.IndexOf(start);
            msindex = sindex + start.Length;
            eindex = content.IndexOf(end, msindex);
            span = eindex - msindex;

            if (sindex >= 0 && eindex > sindex)
            {
                al.Add(content.Substring(msindex, span));
            }

            while (sindex >= 0 && eindex > 0)
            {
                sindex = content.IndexOf(start, eindex);
                if (sindex > 0)
                {
                    eindex = content.IndexOf(end, sindex);
                    msindex = sindex + start.Length;
                    span = eindex - msindex;

                    if (msindex > 0 && eindex > 0)
                    {
                        al.Add(content.Substring(msindex, span));
                    }
                }
            }

            return al;
        }

        /// <summary>
        /// ���ַ����У�ָ����ʼ�ַ��ͽ����ַ�����ȡ���м������
        /// </summary>
        /// <param name="content">���������ַ�</param>
        /// <param name="start">��ʼ�ַ�</param>
        /// <param name="end">�����ַ�</param>
        /// <returns></returns>
        public static ArrayList ExtractOuterContent(string content, string start, string end)
        {
            int sindex = -1, eindex = -1;

            ArrayList al = new ArrayList();

            sindex = content.IndexOf(start);
            eindex = content.IndexOf(end);
            if (sindex >= 0 && eindex > sindex)
            {
                al.Add(content.Substring(sindex, eindex + end.Length - sindex));
            }

            while (sindex >= 0 && eindex > 0)
            {
                sindex = content.IndexOf(start, eindex);
                if (sindex > 0)
                {
                    eindex = content.IndexOf(end, sindex);
                    if (sindex > 0 && eindex > 0)
                    {
                        al.Add(content.Substring(sindex, eindex + end.Length - sindex));
                    }
                }
            }

            return al;
        }

        /// <summary>
        /// ȥ��ָ���ַ���ǰ׺���㷨
        /// </summary>
        /// <param name="content">����ȥ�ض��ַ���������</param>
        /// <param name="prefixString">�ض��ַ����б�(�Զ���,�ֺ�,�ո�ȱ�ʶ)</param>
        /// <returns></returns>
        public static string RemovePrefix(string content, string prefixString)
        {
            if (string.IsNullOrEmpty(prefixString) || prefixString.Trim() == string.Empty)
            {
                return content;
            }

            char[] splitChars = new char[] {',', ';', ' '};            
            string strReturn = content;
            prefixString = prefixString.Trim(splitChars); //����ǰ�����ķָ�����,�������׳���

            string[] suffixArray = prefixString.Split(splitChars);
            foreach (string suffix in suffixArray)
            {
                int sindex = strReturn.IndexOf(suffix, StringComparison.OrdinalIgnoreCase);// �Ǵ�Сд����
                if (sindex == 0)
                {
                    strReturn = strReturn.Substring(suffix.Length);
                    break; //ƥ��һ�ξ�Ӧ�ó���
                }
            }

            return strReturn;
        }

        /// <summary>
        /// �ַ���תUnicode
        /// </summary>
        /// <param name="source">Դ�ַ���</param>
        /// <returns>Unicode�������ַ���</returns>
        public static string String2Unicode(string source)
        {
            var bytes = Encoding.Unicode.GetBytes(source);
            var stringBuilder = new StringBuilder();
            for (var i = 0; i < bytes.Length; i += 2)
            {     
                stringBuilder.AppendFormat("\\u{0:x2}{1:x2}", bytes[i + 1], bytes[i]);
            }
            return stringBuilder.ToString();
        }
        /// <summary>  
        /// �ַ���תΪUniCode���ַ���  
        /// </summary>  
        /// <param name="s"></param>  
        /// <returns></returns>  
        public static string StringToUnicode(string s)
        {
            char[] charbuffers = s.ToCharArray();
            byte[] buffer;
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < charbuffers.Length; i++)
            {
                buffer = System.Text.Encoding.Unicode.GetBytes(charbuffers[i].ToString());
                sb.Append(String.Format("\\u{0:X2}{1:X2}", buffer[1], buffer[0]));
            }
            return sb.ToString();
        }
        /// <summary>  
        /// Unicode�ַ���תΪ�����ַ���  
        /// </summary>  
        /// <param name="srcText"></param>  
        /// <returns></returns>  
        public static string UnicodeToString(string srcText)
        {
            string dst = "";
            string src = srcText;
            int len = srcText.Length / 6;
            for (int i = 0; i <= len - 1; i++)
            {
                string str = "";
                str = src.Substring(0, 6).Substring(2);
                src = src.Substring(6);
                byte[] bytes = new byte[2];
                bytes[1] = byte.Parse(int.Parse(str.Substring(0, 2), System.Globalization.NumberStyles.HexNumber).ToString());
                bytes[0] = byte.Parse(int.Parse(str.Substring(2, 2), System.Globalization.NumberStyles.HexNumber).ToString());
                dst += Encoding.Unicode.GetString(bytes);
            }
            return dst;
        }
    }
}