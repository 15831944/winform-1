using System;
using System.Collections.Generic;
using System.Text;

namespace JCodes.Framework.Common.Format
{
    /// <summary>
    /// ������֤��ͨ��У�鸨����
    /// </summary>
    public sealed class ArgumentValidation
    {
        private ArgumentValidation()
        {
        }

        /// <summary>
        /// <para>������<paramref name="variable"/>�Ƿ�Ϊ���ַ�����</para>
        /// </summary>
        /// <param name="variable">������ֵ</param>
        /// <param name="variableName">����������</param>
        public static void CheckForEmptyString(string variable, string variableName)
        {
            CheckForNullReference(variable, variableName);
            CheckForNullReference(variableName, "variableName");
            if (variable.Length == 0)
            {
                string message = string.Format(Const.ExceptionEmptyString, variableName);
                throw new ArgumentException(message);
            }
        }

        /// <summary>
        /// <para>������<paramref name="variable"/>�Ƿ�Ϊ������(Null)��</para>
        /// </summary>
        /// <param name="variable">������ֵ</param>
        /// <param name="variableName">��������������</param>
        public static void CheckForNullReference(object variable, string variableName)
        {
            if (variableName == null)
            {
                throw new ArgumentNullException("variableName");
            }

            if (null == variable)
            {
                throw new ArgumentNullException(variableName);
            }
        }

        /// <summary>
        /// ��֤����Ĳ���messageName�ǿ��ַ�����Ҳ�ǿ�����
        /// </summary>
        /// <param name="name">��������</param>
        /// <param name="messageName">������ֵ</param>
        public static void CheckForInvalidNullNameReference(string name, string messageName)
        {
            if ((null == name) || (name.Length == 0))
            {
                string message = string.Format(Const.ExceptionInvalidNullNameArgument, messageName);
                throw new InvalidOperationException(message);
            }
        }

        /// <summary>
        /// <para>��֤����<paramref name="bytes"/>���㳤�ȣ����Ϊ�㳤�ȣ����׳��쳣<see cref="ArgumentException"/>��</para>
        /// </summary>
        /// <param name="bytes">�������ֽ�����</param>
        /// <param name="variableName">��������������</param>
        public static void CheckForZeroBytes(byte[] bytes, string variableName)
        {
            CheckForNullReference(bytes, "bytes");
            CheckForNullReference(variableName, "variableName");
            if (bytes.Length == 0)
            {
                string message = string.Format(Const.ExceptionByteArrayValueMustBeGreaterThanZeroBytes, variableName);
                throw new ArgumentException(message);
            }
        }

        /// <summary>
        /// <para>������<paramref name="variable"/>�Ƿ����ָ�������͡�</para>
        /// </summary>
        /// <param name="variable">������ֵ</param>
        /// <param name="type">����variable������</param>
        public static void CheckExpectedType(object variable, Type type)
        {
            CheckForNullReference(variable, "variable");
            CheckForNullReference(type, "type");
            if (!type.IsAssignableFrom(variable.GetType()))
            {
                string message = string.Format(Const.ExceptionExpectedType, type.FullName);
                throw new ArgumentException(message);
            }
        }

        /// <summary>
        /// ���variable�Ƿ�һ����Ч��<paramref name="enumType"/>ö������
        /// </summary>
        /// <param name="variable">������ֵ</param>
        /// <param name="enumType">����variable��ö������</param>
        /// <param name="variableName">����variable������</param>
        public static void CheckEnumeration(Type enumType, object variable, string variableName)
        {
            CheckForNullReference(variable, "variable");
            CheckForNullReference(enumType, "enumType");
            CheckForNullReference(variableName, "variableName");

            if (!Enum.IsDefined(enumType, variable))
            {
                string message = string.Format(Const.ExceptionEnumerationNotDefined,
                    variable.ToString(), enumType.FullName, variableName);
                throw new ArgumentException(message);
            }
        }
    }
}
