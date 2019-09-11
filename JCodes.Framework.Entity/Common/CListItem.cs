using System;
using System.Text;
using System.Collections.Generic;
using System.Runtime.Serialization;
using System.Text.RegularExpressions;

namespace JCodes.Framework.Entity
{
    /// <summary>
    /// ���������¼�ֵ��ֵ���࣬����Comobox�ȿؼ������ֵ���� ����Ҫ��ȡ��
    /// </summary>
    [Serializable]
    [DataContract]
    public class CListItem
    {
        /// <summary>
        /// ����������CListItem����
        /// 20170901 wjm ����key ��value��˳��
        /// </summary>
        /// <param name="text">��ʾ������</param>
        /// <param name="value">ʵ�ʵ�ֵ����</param>
        public CListItem(string value, string text)
        {
            this._text = text;
            this._value = value;
        }

        /// <summary>
        /// ����������CListItem����
        /// </summary>
        /// <param name="text">��ʾ������</param>
        public CListItem(string text)
        {
            this._text = text;
            this._value = text;
        }

        private string _text;
        private string _value;

        /// <summary>
        /// ��ʾ����
        /// </summary>
        [DataMember]
        public string Text
        {
            get { return _text; }
            set { _text = value; }
        }

        /// <summary>
        /// ʵ��ֵ����
        /// </summary>
        [DataMember]
        public string Value
        {
            get { return this._value; }
            set { this._value = value; }
        }

        /// <summary>
        /// ��ʾ����
        /// </summary>
        /// <returns></returns>
        public override string ToString()
        {
            if (Regex.IsMatch(_value, "[A-F0-9]{8}(-[A-F0-9]{4}){3}-[A-F0-9]{12}|[A-F0-9]{32}", RegexOptions.IgnoreCase))
            {
                return _text;
            }
            else
            {
                return string.Format("{0}-{1}",_value, _text);
            }
        }

    }

    /// <summary>
    /// ���������¼�ֵ��ֵ���࣬����Comobox�ȿؼ������ֵ����
    /// </summary>
    [Serializable]
    [DataContract]
    public class CDicKeyValue
    {
        /// <summary>
        /// ����������CListItem����
        /// </summary>
        /// <param name="text">��ʾ������</param>
        /// <param name="value">ʵ�ʵ�ֵ����</param>
        public CDicKeyValue(Int32 value, string text)
        {
            this._text = text;
            this._value = value;
        }

        private string _text;
        private Int32 _value;

        /// <summary>
        /// ��ʾ����
        /// </summary>
        [DataMember]
        public string Text
        {
            get { return _text; }
            set { _text = value; }
        }

        /// <summary>
        /// ʵ��ֵ����
        /// </summary>
        [DataMember]
        public Int32 Value
        {
            get { return this._value; }
            set { this._value = value; }
        }

        /// <summary>
        /// ������ʾ������
        /// </summary>
        /// <returns></returns>
        public override string ToString()
        {
            return string.Format("{0}-{1}", _value, _text);
        }

    }
}
