using System;
using System.Collections.Generic;
using System.Text;
using System.Xml;
using System.Runtime.InteropServices;

namespace JCodes.Framework.Common
{
    /// <summary>
    ///	������ʾ����ʱ�䡢ũ������Ф��������
    /// </summary>
    public class CCalendar
    {
        /// <summary>
        /// �ṹ�����ڶ���
        /// </summary>
        struct structDate
        {
            public int year;
            public int month;
            public int day;
            public bool isLeap;			//�Ƿ�����
            public int yearCyl;			//���֧
            public int monthCyl;		//�¸�֧
            public int dayCyl;			//�ո�֧
        }

        /// <summary>
        /// �ṹ�����������ڶ���
        /// </summary>
        public struct StructDateFullInfo
        {
            /// <summary>
            /// ������
            /// </summary>
            public int Year;
            /// <summary>
            /// ������
            /// </summary>
            public int Month;
            /// <summary>
            /// ������
            /// </summary>
            public int Day;
            /// <summary>
            /// �Ƿ�����
            /// </summary>
            public bool IsLeap;			//�Ƿ�����
            /// <summary>
            /// ũ����
            /// </summary>
            public int Cyear;			//ũ����
            /// <summary>
            /// ũ��������
            /// </summary>
            public string Scyear;		//ũ��������
            /// <summary>
            /// ��֧
            /// </summary>
            public string CyearCyl;		//��֧��
            /// <summary>
            /// ũ����
            /// </summary>
            public int Cmonth;			//ũ����
            /// <summary>
            /// ũ��������
            /// </summary>
            public string Scmonth;		//ũ��������
            /// <summary>
            /// ��֧��
            /// </summary>
            public string CmonthCyl;	//��֧��
            /// <summary>
            /// ũ����
            /// </summary>
            public int Cday;			//ũ����
            /// <summary>
            /// ũ��������
            /// </summary>
            public string Scday;		//ũ��������
            /// <summary>
            /// ��֧��
            /// </summary>
            public string CdayCyl;		//��֧��
            /// <summary>
            /// ����
            /// </summary>
            public string solarterm;	//����
            /// <summary>
            /// ���ڼ�
            /// </summary>
            public string DayInWeek;	//���ڼ�
            /// <summary>
            /// ����
            /// </summary>
            public string Feast;		//����
            /// <summary>
            /// ϵͳ�ʺ���
            /// </summary>
            public string Info;			//ϵͳ�ʺ���
            /// <summary>
            /// ����ͼƬ
            /// </summary>
            public string Image;	    //����ͼƬ
            /// <summary>
            /// ������������Ϣ
            /// </summary>
            public string Fullinfo;		//������������Ϣ
            /// <summary>
            /// ���ر���ʺ�����
            /// </summary>
            public bool SayHello;		//���ر���ʺ�����
        }

        #region ũ���������

        //ũ���·���Ϣ
        int[] lunarInfo = new int[]{0x04bd8,0x04ae0,0x0a570,0x054d5,0x0d260,0x0d950,0x16554,0x056a0,0x09ad0,0x055d2, 
									0x04ae0,0x0a5b6,0x0a4d0,0x0d250,0x1d255,0x0b540,0x0d6a0,0x0ada2,0x095b0,0x14977, 
									0x04970,0x0a4b0,0x0b4b5,0x06a50,0x06d40,0x1ab54,0x02b60,0x09570,0x052f2,0x04970, 
									0x06566,0x0d4a0,0x0ea50,0x06e95,0x05ad0,0x02b60,0x186e3,0x092e0,0x1c8d7,0x0c950, 
									0x0d4a0,0x1d8a6,0x0b550,0x056a0,0x1a5b4,0x025d0,0x092d0,0x0d2b2,0x0a950,0x0b557, 
									0x06ca0,0x0b550,0x15355,0x04da0,0x0a5d0,0x14573,0x052d0,0x0a9a8,0x0e950,0x06aa0, 
									0x0aea6,0x0ab50,0x04b60,0x0aae4,0x0a570,0x05260,0x0f263,0x0d950,0x05b57,0x056a0, 
									0x096d0,0x04dd5,0x04ad0,0x0a4d0,0x0d4d4,0x0d250,0x0d558,0x0b540,0x0b5a0,0x195a6, 
									0x095b0,0x049b0,0x0a974,0x0a4b0,0x0b27a,0x06a50,0x06d40,0x0af46,0x0ab60,0x09570, 
									0x04af5,0x04970,0x064b0,0x074a3,0x0ea50,0x06b58,0x055c0,0x0ab60,0x096d5,0x092e0, 
									0x0c960,0x0d954,0x0d4a0,0x0da50,0x07552,0x056a0,0x0abb7,0x025d0,0x092d0,0x0cab5, 
									0x0a950,0x0b4a0,0x0baa4,0x0ad50,0x055d9,0x04ba0,0x0a5b0,0x15176,0x052b0,0x0a930, 
									0x07954,0x06aa0,0x0ad50,0x05b52,0x04b60,0x0a6e6,0x0a4e0,0x0d260,0x0ea65,0x0d530, 
									0x05aa0,0x076a3,0x096d0,0x04bd7,0x04ad0,0x0a4d0,0x1d0b6,0x0d250,0x0d520,0x0dd45, 
									0x0b5a0,0x056d0,0x055b2,0x049b0,0x0a577,0x0a4b0,0x0aa50,0x1b255,0x06d20,0x0ada0};
        //�����·�
        int[] solarMonth = new int[] { 0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };
        string[] cMonthName = new string[] { "", "����", "����", "����", "����", "����", "����", "����", "����", "����", "ʮ��", "ʮһ��", "ʮ����" };

        //���
        string[] gan = new string[] { "��", "��", "��", "��", "��", "��", "��", "��", "��", "��" };
        //��֧
        string[] zhi = new string[] { "��", "��", "��", "î", "��", "��", "��", "δ", "��", "��", "��", "��" };
        //��Ф
        string[] animals = new string[] { "��", "ţ", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��" };
        //����
        string[] solarTerm = new string[] {"С��","��","����","��ˮ","����","����","����","����","����","С��"
										  ,"â��","����","С��","����","����","����","��¶","���","��¶","˪��"
										  ,"����","Сѩ","��ѩ","����"};
        //������Ӧ��ֵ��
        int[] solarTermInfo = new int[] {0,21208,42467,63836,85337,107014,128867,150921,173149,195551,218072
										,240693,263343,285989,308563,331033,353350,375494,397447,419210,440795
										,462224,483532,504758};
        //ũ������
        string[] nStr1 = new string[] { "��", "һ", "��", "��", "��", "��", "��", "��", "��", "��", "ʮ" };
        string[] nStr2 = new string[] { "��", "ʮ", "إ", "ئ", "��" };
        //�����·�����
        string[] monthName = new string[] { "JAN", "FEB", "MAR", "APR", "MAY", "JUN", "JUL", "AUG", "SEP", "OCT", "NOV", "DEC" };

        #endregion

        /// <summary>
        /// Ĭ�Ϲ��캯��
        /// </summary>
        public CCalendar() { }

        //����ũ�� y ���������
        private int GetLYearDays(int y)
        {
            int sum = 348;

            for (int i = 0x8000; i > 0x8; i >>= 1)
            {
                sum += ((lunarInfo[y - 1900] & i) > 0) ? 1 : 0;
            }

            return sum + GetLeapDays(y);
        }

        //����ũ�� y �� m �µ������� 
        private int GetLMonthDays(int y, int m)
        {
            return (((lunarInfo[y - 1900] & (0x10000 >> m)) > 0) ? 30 : 29);
        }

        //����ũ�� y �����ĸ��� 1-12 , û�򴫻� 0
        private int GetLeapMonth(int y)
        {
            return (lunarInfo[y - 1900] & 0xf);
        }

        //����ũ�� y �����µ�����
        private int GetLeapDays(int y)
        {
            if (GetLeapMonth(y) > 0)
            {
                return (((lunarInfo[y - 1900] & 0x10000) > 0) ? 30 : 29);
            }
            else
            {
                return 0;
            }
        }

        //�õ�ũ������
        private structDate GetLunar(DateTime date)
        {
            structDate sd;
            int i = 0;
            int leap = 0, temp = 0;
            DateTime baseDate = new DateTime(1900, 1, 31);	//��׼ʱ��
            int offset = (date - baseDate).Days;			//���׼ʱ���������

            sd.dayCyl = offset + 40;
            sd.monthCyl = 14;

            for (i = 1900; i < 2050 && offset > 0; i++)
            {
                temp = GetLYearDays(i);
                offset -= temp;
                sd.monthCyl += 12;
            }
            if (offset < 0)
            {
                offset += temp;
                i--;
                sd.monthCyl -= 12;
            }

            sd.year = i;
            sd.yearCyl = i - 1864;

            //���ĸ���
            leap = GetLeapMonth(i);
            sd.isLeap = false;
            for (i = 1; i < 13 && offset > 0; i++)
            {
                //���� 
                if (leap > 0 && i == (leap + 1) && sd.isLeap == false)
                {
                    --i;
                    sd.isLeap = true;
                    temp = GetLeapDays(sd.year);
                }
                else
                {
                    temp = GetLMonthDays(sd.year, i);
                }
                //������� 
                if (sd.isLeap == true && i == (leap + 1))
                {
                    sd.isLeap = false;
                }
                offset -= temp;
                if (sd.isLeap == false)
                {
                    sd.monthCyl++;
                }
            }
            if (offset == 0 && leap > 0 && i == leap + 1)
            {
                if (sd.isLeap)
                {
                    sd.isLeap = false;
                }
                else
                {
                    sd.isLeap = true;
                    --i;
                    --sd.monthCyl;
                }
            }
            if (offset < 0)
            {
                offset += temp;
                --i;
                --sd.monthCyl;
            }

            sd.month = i;
            sd.day = offset + 1;

            return sd;
        }

        //���ع��� y �� m �µ����� 
        private int SolarDays(int y, int m)
        {
            if (m == 2)
            {
                return (((y % 4 == 0) && (y % 100 != 0) || (y % 400 == 0)) ? 29 : 28);
            }
            else
            {
                return (solarMonth[m]);
            }
        }

        //���� offset ������ɵ�֧, 0=���� 
        private string Cyclical(int num)
        {
            return (gan[num % 10] + zhi[num % 12]);
        }

        //ĳ��ĵ�n������Ϊ����(��0,��С������)
        //	n:�����±�
        private int GetSolarTermDay(int y, int n)
        {
            double minutes = 0;
            //1900��1��6�գ�С��
            DateTime baseDate = new DateTime(1900, 1, 6, 2, 5, 0);
            minutes = 525948.766245 * (y - 1900) + solarTermInfo[n - 1];

            DateTime veryDate = baseDate.AddMinutes(minutes);

            return veryDate.Day;
        }

        //ũ������ 
        private string GetCDay(int d)
        {
            string s = "";

            switch (d)
            {
                case 10:
                    s = "��ʮ";
                    break;
                case 20:
                    s = "��ʮ";
                    break;
                case 30:
                    s = "��ʮ";
                    break;
                default:
                    s = nStr2[(int)System.Math.Floor((double)d / 10)];
                    s += nStr1[d % 10];
                    break;
            }
            return (s);
        }

        /// <summary>
        /// �õ�������Ϣ
        /// </summary>
        /// <param name="d">����������</param>
        /// <returns>������Ϣ</returns>
        public StructDateFullInfo GetDateInfo(DateTime d)
        {
            string calendarXmlData = FileUtil.ReadFileFromEmbedded(Const.CCalendarDateFile);

            StructDateFullInfo dayinfo;
            structDate day = GetLunar(d);

            dayinfo.IsLeap = day.isLeap;

            dayinfo.Year = d.Year;
            dayinfo.Cyear = day.year;
            dayinfo.Scyear = animals[(day.year - 4) % 12];
            dayinfo.CyearCyl = Cyclical(day.yearCyl);//��֧��

            dayinfo.Month = d.Month;
            dayinfo.Cmonth = day.month;
            dayinfo.Scmonth = cMonthName[day.month];
            dayinfo.CmonthCyl = Cyclical(day.monthCyl);//��֧��

            dayinfo.Day = d.Day;
            dayinfo.Cday = day.day;
            dayinfo.Scday = GetCDay(day.day);//����
            dayinfo.CdayCyl = Cyclical(day.dayCyl);//��֧��

            switch (d.DayOfWeek)
            {
                case DayOfWeek.Sunday:
                    dayinfo.DayInWeek = "������";
                    break;
                case DayOfWeek.Monday:
                    dayinfo.DayInWeek = "����һ";
                    break;
                case DayOfWeek.Tuesday:
                    dayinfo.DayInWeek = "���ڶ�";
                    break;
                case DayOfWeek.Wednesday:
                    dayinfo.DayInWeek = "������";
                    break;
                case DayOfWeek.Thursday:
                    dayinfo.DayInWeek = "������";
                    break;
                case DayOfWeek.Friday:
                    dayinfo.DayInWeek = "������";
                    break;
                case DayOfWeek.Saturday:
                    dayinfo.DayInWeek = "������";
                    break;
                default:
                    dayinfo.DayInWeek = "���ڣ�";
                    break;
            }

            //����
            //ÿ��������������
            int d1 = GetSolarTermDay(d.Year, d.Month * 2 - 1);
            int d2 = GetSolarTermDay(d.Year, d.Month * 2);
            if (dayinfo.Day == d1)
            {
                dayinfo.solarterm = solarTerm[d.Month * 2 - 2];
            }
            else if (dayinfo.Day == d2)
            {
                dayinfo.solarterm = solarTerm[d.Month * 2 - 1];
            }
            else
            {
                dayinfo.solarterm = "";
            }

            //���ռ��ʺ���
            dayinfo.Info = "";
            dayinfo.Feast = "";
            dayinfo.Image = "";
            dayinfo.SayHello = false;
            XmlDocument feastdoc = new XmlDocument();
            feastdoc.LoadXml(calendarXmlData);

            //����
            XmlNodeList nodeList = feastdoc.SelectNodes("descendant::AD/feast[@day='" + d.ToString("MMdd") + "']");
            foreach (XmlNode root in nodeList)
            {
                dayinfo.Feast += root.Attributes["name"].InnerText + " ";
                if (root.Attributes["sayhello"].InnerText == "yes")
                {//��Ҫ��ʾ�����ʺ���
                    dayinfo.Info = root["hello"].InnerText;
                    //�����Ƿ���Ҫ��������
                    if (root["startyear"] != null)
                    {
                        int startyear = Convert.ToInt32(root["startyear"].InnerText);
                        dayinfo.Info = dayinfo.Info.Replace("_YEARS_", (d.Year - startyear).ToString());
                    }
                    dayinfo.Image = root["img"].InnerText;
                    dayinfo.SayHello = true;
                }
            }

            //ũ��
            string smmdd = "";
            smmdd = (dayinfo.Cmonth.ToString().Length == 2) ? dayinfo.Cmonth.ToString() : ("0" + dayinfo.Cmonth.ToString());
            smmdd += (dayinfo.Cday.ToString().Length == 2) ? dayinfo.Cday.ToString() : ("0" + dayinfo.Cday.ToString());
            XmlNode feast = feastdoc.SelectSingleNode("descendant::LUNAR/feast[@day='" + smmdd + "']");
            if (feast != null)
            {
                dayinfo.Feast += feast.Attributes["name"].InnerText;

                if (feast.Attributes["sayhello"].InnerText == "yes")
                {//��Ҫ��ʾ�����ʺ���
                    dayinfo.Info += feast["hello"].InnerText;
                    dayinfo.Image = feast["img"].InnerText;
                    dayinfo.SayHello = true;
                }
            }
            //��ͨ���ӻ�û�������
            if (dayinfo.Info == "")
            {
                feast = feastdoc.SelectSingleNode("descendant::NORMAL/day[@time1<'" + d.ToString("HHmm") + "']");
                if (feast != null)
                {
                    dayinfo.Info = feast["hello"].InnerText;
                    dayinfo.Image = feast["img"].InnerText;
                }
            }

            dayinfo.Fullinfo = dayinfo.Year.ToString() + "��" + dayinfo.Month.ToString() + "��" + dayinfo.Day.ToString() + "��";
            dayinfo.Fullinfo += dayinfo.DayInWeek;
            dayinfo.Fullinfo += " ũ��" + dayinfo.CyearCyl + "[" + dayinfo.Scyear + "]��";
            if (dayinfo.IsLeap)
            {
                dayinfo.Fullinfo += "��";
            }
            dayinfo.Fullinfo += dayinfo.Scmonth + dayinfo.Scday;
            if (dayinfo.solarterm != "")
            {
                dayinfo.Fullinfo += "  " + dayinfo.solarterm;
            }

            return dayinfo;
        }

        /// <summary>
        /// �õ�����������Ϣ���������գ�
        /// </summary>
        /// <param name="d">����������</param>
        /// <returns>������Ϣ</returns>
        public StructDateFullInfo GetDateTidyInfo(DateTime d)
        {
            StructDateFullInfo dayinfo;
            structDate day = GetLunar(d);

            dayinfo.IsLeap = day.isLeap;

            dayinfo.Year = d.Year;
            dayinfo.Cyear = day.year;
            dayinfo.Scyear = animals[(day.year - 4) % 12];
            dayinfo.CyearCyl = Cyclical(day.yearCyl);//��֧��

            dayinfo.Month = d.Month;
            dayinfo.Cmonth = day.month;
            dayinfo.Scmonth = cMonthName[day.month];
            dayinfo.CmonthCyl = Cyclical(day.monthCyl);//��֧��

            dayinfo.Day = d.Day;
            dayinfo.Cday = day.day;
            dayinfo.Scday = GetCDay(day.day);//����
            dayinfo.CdayCyl = Cyclical(day.dayCyl);//��֧��

            switch (d.DayOfWeek)
            {
                case DayOfWeek.Sunday:
                    dayinfo.DayInWeek = "������";
                    break;
                case DayOfWeek.Monday:
                    dayinfo.DayInWeek = "����һ";
                    break;
                case DayOfWeek.Tuesday:
                    dayinfo.DayInWeek = "���ڶ�";
                    break;
                case DayOfWeek.Wednesday:
                    dayinfo.DayInWeek = "������";
                    break;
                case DayOfWeek.Thursday:
                    dayinfo.DayInWeek = "������";
                    break;
                case DayOfWeek.Friday:
                    dayinfo.DayInWeek = "������";
                    break;
                case DayOfWeek.Saturday:
                    dayinfo.DayInWeek = "������";
                    break;
                default:
                    dayinfo.DayInWeek = "���ڣ�";
                    break;
            }

            dayinfo.Info = "";
            dayinfo.Feast = "";
            dayinfo.Image = "";
            dayinfo.SayHello = false;

            //����
            //ÿ��������������
            int d1 = GetSolarTermDay(d.Year, d.Month * 2 - 1);
            int d2 = GetSolarTermDay(d.Year, d.Month * 2);
            if (dayinfo.Day == d1)
            {
                dayinfo.solarterm = solarTerm[d.Month * 2 - 2];
            }
            else if (dayinfo.Day == d2)
            {
                dayinfo.solarterm = solarTerm[d.Month * 2 - 1];
            }
            else
            {
                dayinfo.solarterm = "";
            }

            dayinfo.Fullinfo = dayinfo.Year.ToString() + "��" + dayinfo.Month.ToString() + "��" + dayinfo.Day.ToString() + "��";
            dayinfo.Fullinfo += " " + dayinfo.DayInWeek;
            dayinfo.Fullinfo += " ũ��" + dayinfo.CyearCyl + "��" + dayinfo.Scyear + "����";
            if (dayinfo.IsLeap)
            {
                dayinfo.Fullinfo += "��";
            }
            dayinfo.Fullinfo += dayinfo.Scmonth + dayinfo.Scday;
            if (dayinfo.solarterm != "")
            {
                dayinfo.Fullinfo += " " + dayinfo.solarterm;
            }

            return dayinfo;
        }

    }
}