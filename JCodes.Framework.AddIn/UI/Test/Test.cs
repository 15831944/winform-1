﻿using System;
using System.Reflection;
using System.Reflection.Emit;
using System.Diagnostics;
using JCodes.Framework.AddIn.Other;
using JCodes.Framework.CommonControl.Framework;
using JCodes.Framework.CommonControl.BaseUI;
using JCodes.Framework.CommonControl.Other;
using JCodes.Framework.Common.Office;
using JCodes.Framework.Common.Framework;

namespace JCodes.Framework.AddIn.Test
{
    public partial class Test : BaseDock
    {
        public Test()
        {
            InitializeComponent();
        }

        public delegate void SetValueDelegate(object target, object arg);

        private void button1_Click(object sender, EventArgs e)
        {
            txtLog.AppendText(System.Runtime.InteropServices.RuntimeEnvironment.GetSystemVersion()+"\r\n");

            int count = 1000000;

            OrderInfo testObj = new OrderInfo();
            PropertyInfo propInfo = typeof(OrderInfo).GetProperty("OrderId");

            txtLog.AppendText("直接访问花费时间：       " + "\r\n");
            Stopwatch watch1 = Stopwatch.StartNew();

            for (int i = 0; i < count; i++)
                testObj.OrderId = 123;

            watch1.Stop();
            txtLog.AppendText(watch1.Elapsed.ToString() + "\r\n");

            SetValueDelegate setter2 = DynamicMethodFactory.CreatePropertySetter(propInfo);
            txtLog.AppendText("EmitSet花费时间：        " + "\r\n");
            Stopwatch watch2 = Stopwatch.StartNew();

            for (int i = 0; i < count; i++)
                setter2(testObj, 123);

            watch2.Stop();
            txtLog.AppendText(watch2.Elapsed.ToString() + "\r\n");

            txtLog.AppendText("纯反射花费时间：　       " + "\r\n");
            Stopwatch watch3 = Stopwatch.StartNew();

            for (int i = 0; i < count; i++)
                propInfo.SetValue(testObj, 123, null);

            watch3.Stop();
            txtLog.AppendText(watch3.Elapsed.ToString() + "\r\n");

            txtLog.AppendText("-------------------" + "\r\n");
            txtLog.AppendText(string.Format("{0} / {1} = {2}",
                watch3.Elapsed.ToString(),
                watch1.Elapsed.ToString(),
                watch3.Elapsed.TotalMilliseconds / watch1.Elapsed.TotalMilliseconds) + "\r\n");

            txtLog.AppendText(string.Format("{0} / {1} = {2}",
                watch3.Elapsed.ToString(),
                watch2.Elapsed.ToString(),
                watch3.Elapsed.TotalMilliseconds / watch2.Elapsed.TotalMilliseconds) + "\r\n");

            txtLog.AppendText(string.Format("{0} / {1} = {2}",
                watch2.Elapsed.ToString(),
                watch1.Elapsed.ToString(),
                watch2.Elapsed.TotalMilliseconds / watch1.Elapsed.TotalMilliseconds) + "\r\n");
        }

        public static class DynamicMethodFactory
        {
            public static SetValueDelegate CreatePropertySetter(PropertyInfo property)
            {
                if (property == null)
                    throw new ArgumentNullException("property");

                if (!property.CanWrite)
                    return null;

                MethodInfo setMethod = property.GetSetMethod(true);

                DynamicMethod dm = new DynamicMethod("PropertySetter", null,
                    new Type[] { typeof(object), typeof(object) }, property.DeclaringType, true);

                ILGenerator il = dm.GetILGenerator();

                if (!setMethod.IsStatic)
                {
                    il.Emit(OpCodes.Ldarg_0);
                }
                il.Emit(OpCodes.Ldarg_1);

                EmitCastToReference(il, property.PropertyType);
                if (!setMethod.IsStatic && !property.DeclaringType.IsValueType)
                {
                    il.EmitCall(OpCodes.Callvirt, setMethod, null);
                }
                else
                    il.EmitCall(OpCodes.Call, setMethod, null);

                il.Emit(OpCodes.Ret);

                return (SetValueDelegate)dm.CreateDelegate(typeof(SetValueDelegate));
            }

            private static void EmitCastToReference(ILGenerator il, Type type)
            {
                if (type.IsValueType)
                    il.Emit(OpCodes.Unbox_Any, type);
                else
                    il.Emit(OpCodes.Castclass, type);
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            txtLog.Text = string.Empty;
        }

        private void btnException_Click(object sender, EventArgs e)
        {
            throw new Exception("啊..我这行代码异常了...");
        }

        private void btnException2_Click(object sender, EventArgs e)
        {
            FrmException frmException = new FrmException(new Exception("自己创建的异常窗体"));
            frmException.ShowDialog();
        }

        private void Test_Load(object sender, EventArgs e)
        {

            this.comboBoxEdit1.BindDictItems(100000);
            comboBoxEdit1.SetComboBoxItem(1);
            checkedComboBoxEdit1.BindDictItems(100000);
            checkedComboBoxEdit1.SetEditValue("0,1");
            /*var lst = BLLFactory<DictData>.Instance.GetDictByTypeID(100000);
            comboBoxEdit1.Properties.Items.Clear();
            comboBoxEdit1.Properties.Items.Add(new CListItem(Const.NoSelectMsg, Const.NoSeletValue.ToString()));
            foreach(var one in lst)
            {
                comboBoxEdit1.Properties.Items.Add(new CListItem(one.Name, one.Value.ToString()));
            }
            labelControl1.Text = BLLFactory<DictData>.Instance.GetDictName(100000, 1);

            checkedComboBoxEdit1.Properties.Items.Clear();
            checkedComboBoxEdit1.Properties.Items.Add(new CListItem(Const.NoSelectMsg, Const.NoSeletValue.ToString()));
            foreach (var one in lst)
            {
                checkedComboBoxEdit1.Properties.Items.Add(new CListItem(one.Name, one.Value.ToString()));
            }*/
        }

        /// <summary>
        /// 下拉框取值
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void button3_Click(object sender, EventArgs e)
        {
            MessageDxUtil.ShowError("单选下拉框comboBoxEdit1取值:" + comboBoxEdit1.GetComboBoxIntValue());
            MessageDxUtil.ShowError("多选下拉框checkedComboBoxEdit1取值:" + checkedComboBoxEdit1.GetCheckedComboBoxValue());
        }

        private void btnMessage_Click(object sender, EventArgs e)
        {
            Portal.gc.Notify("提示消息中心", "这里是提示的消息中心体内容，情关注消息中心");
        }

        private void btnCache_Click(object sender, EventArgs e)
        {
            Cache.Instance["CacheTest1"] = "这里你可以保存任何对象，没有有效期";
            MessageDxUtil.ShowTips(Cache.Instance["CacheTest1"] as string);
        }

        private void btnMemory_Click(object sender, EventArgs e)
        {
            string key = "MemoryTest1";
            string fullName = MemoryCacheHelper.GetCacheItem<string>(key,
                delegate() { return "这里可以写Factory方法去查询并缓存到内存中时间为30分钟"; },
                new TimeSpan(0, 30, 0));//30分钟过期
            MessageDxUtil.ShowTips(fullName);
        }

        private void ccbb_Properties_KeyDown(object sender, System.Windows.Forms.KeyEventArgs e)
        {

        }
    }

    public class OrderInfo {
        private int orderId;

        /// <summary>
        /// 订单号
        /// </summary>
        public int OrderId
        {
            get { return orderId; }
            set { orderId = value; }
        }
    }
}