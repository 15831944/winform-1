//using System;
//using System.IO;
//using System.Data;
//using System.Data.Common;
//using System.Text;
//using System.Linq;
//using System.Web;
//using System.Web.Mvc;
//using System.Collections;
//using System.Collections.Generic;
//using Newtonsoft.Json;
//using Aspose.Cells;
//using JCodes.Framework.Entity;
//using JCodes.Framework.Common.Framework;
//using JCodes.Framework.BLL;
//using JCodes.Framework.Common;
//using JCodes.Framework.jCodesenum.BaseEnum;
//using JCodes.Framework.Common.Databases;
//using JCodes.Framework.Common.Extension;
//using JCodes.Framework.jCodesenum;

//namespace JCodes.Framework.WebUI.Controllers
//{
//    public class ContactController : BusinessController<Contact, ContactInfo>
//    {
//        public ContactController() : base()
//        {
//        }


//        #region ����Excel���ݲ���
        
//        //����򵼳����ֶ��б�    
//        string columnString = "�ͻ�����,���,����,���֤����,��������,�Ա�,�칫�绰,��ͥ�绰,����,��ϵ���ֻ�,��ϵ�˵�ַ,��������,�����ʼ�,QQ����,��ע,�������,����ʡ��,����,����������,����,��ͥסַ,����,�����̶�,��ҵѧУ,������ò,ְҵ����,ְ��,ְ��,���ڲ���,����,����,����,����״̬,����״��,��Ҫ����,�Ͽɳ̶�,��ϵ,��������,�����ص�,��������,����,����,�Ⱦ�,���,����,����,���˼���";

//        /// <summary>
//        /// ���Excel�ļ����ֶ��Ƿ�����˱�����ֶ�
//        /// </summary>
//        /// <param name="guid">������GUID</param>
//        /// <returns></returns>
//        public ActionResult CheckExcelColumns(string guid)
//        {
//            ReturnResult result = new ReturnResult();

//            try
//            {
//                DataTable dt = ConvertExcelFileToTable(guid);
//                if (dt != null)
//                {
//                    //����б��Ƿ����������ֶ�
//                    result.ErrorCode = DataTableHelper.ContainAllColumns(dt, columnString)?0:1;
//                }
//            }
//            catch (Exception ex)
//            {
//                LogHelper.WriteLog(LogLevel.LOG_LEVEL_CRIT, ex, typeof(ContactController));
//                result.ErrorMessage = ex.Message;
//            }

//            return ToJsonContent(result);
//        }

//        /// <summary>
//        /// ��ȡ�������ϵ�Excel�ļ���������ת��Ϊʵ���б��ظ��ͻ���
//        /// </summary>
//        /// <param name="guid">������GUID</param>
//        /// <returns></returns>
//        public ActionResult GetExcelData(string guid)
//        {
//            if (string.IsNullOrEmpty(guid))
//            {
//                return null;
//            }

//            List<ContactInfo> list = new List<ContactInfo>();

//            DataTable table = ConvertExcelFileToTable(guid);
//            if (table != null)
//            {
//                #region ����ת��
//                foreach (DataRow dr in table.Rows)
//                {
//                    string customerName = dr["�ͻ�����"].ToString();
//                    if (string.IsNullOrEmpty(customerName))
//                    {
//                        continue;//�ͻ�����Ϊ�գ���¼����
//                    }

//                    CustomerInfo customerInfo = BLLFactory<Customer>.Instance.FindByName(customerName);
//                    if (customerInfo == null)
//                    {
//                        continue;//�ͻ����Ʋ����ڣ���¼����
//                    }

//                    bool converted = false;
//                    DateTime dtDefault = Convert.ToDateTime("1900-01-01");
//                    DateTime dt;
//                    ContactInfo info = new ContactInfo();
//                    /*info.Id = customerInfo.Id;//�ͻ�ID
//                   info.UserCode = dr["���"].ToString();
//                   info.Name = dr["����"].ToString();
//                   info.IDCarNo = dr["���֤����"].ToString();
//                   converted = DateTime.TryParse(dr["��������"].ToString(), out dt);
//                   if (converted && dt > dtDefault)
//                   {
//                       info.Birthday = dt;
//                   }
//                   info.Gender = dr["�Ա�"].ToString().ToInt32();
//                   info.OfficePhone = dr["�칫�绰"].ToString();
//                   info.HomePhone = dr["��ͥ�绰"].ToString();
//                   info.Fax = dr["����"].ToString();
//                   info.MobilePhone = dr["��ϵ���ֻ�"].ToString();
//                   info.Address = dr["��ϵ�˵�ַ"].ToString();
//                   info.ZipCode = dr["��������"].ToString();
//                   info.Email = dr["�����ʼ�"].ToString();
//                   info.QQ = dr["QQ����"].ToString();
//                   info.Note = dr["��ע"].ToString();
//                   info.Seq = dr["�������"].ToString();
//                   info.Province = dr["����ʡ��"].ToString();
//                   info.City = dr["����"].ToString();
//                   info.District = dr["����������"].ToString();
//                   info.NativePlace = dr["����"].ToString();
//                   info.HomeAddress = dr["��ͥסַ"].ToString();
//                   info.Nationality = dr["����"].ToString();
//                   info.Eduction = dr["�����̶�"].ToString();
//                   info.GraduateSchool = dr["��ҵѧУ"].ToString();
//                   info.Political = dr["������ò"].ToString();
//                   info.JobType = dr["ְҵ����"].ToString();
//                   info.Titles = dr["ְ��"].ToString();
//                   info.Rank = dr["ְ��"].ToString();
//                   info.Department = dr["���ڲ���"].ToString();
//                   info.Hobby = dr["����"].ToString();
//                   info.Animal = dr["����"].ToString();
//                   info.Constellation = dr["����"].ToString();
//                   info.MarriageStatus = dr["����״̬"].ToString();
//                   info.HealthCondition = dr["����״��"].ToString();
//                   info.Importance = dr["��Ҫ����"].ToString();
//                   info.Recognition = dr["�Ͽɳ̶�"].ToString();
//                   info.RelationShip = dr["��ϵ"].ToString();
//                   info.ResponseDemand = dr["��������"].ToString();
//                   info.CareFocus = dr["�����ص�"].ToString();
//                   info.InterestDemand = dr["��������"].ToString();
//                   info.BodyType = dr["����"].ToString();
//                   info.Smoking = dr["����"].ToString();
//                   info.Drink = dr["�Ⱦ�"].ToString();
//                   info.Height = dr["���"].ToString();
//                   info.Weight = dr["����"].ToString();
//                   info.Vision = dr["����"].ToString();
//                   info.Introduce = dr["���˼���"].ToString();

//                   info.CreatorId = CurrentUser.Id;
//                   info.CreatorTime = DateTime.Now;
//                   info.EditorId = CurrentUser.Id;
//                   info.EditTime = DateTime.Now;*/

//                    //����һ�������ֶε�ת��
//                    info.Data1 = BLLFactory<Customer>.Instance.GetCustomerNameById(info.Id);

//                    list.Add(info);
//                }
//                #endregion
//            }

//            #region ����ת�����
//            ////����һ���ͻ������ֶΣ�Ȼ����н���������һ��DataTable����
//            //DataTable dtReturn = DataTableHelper.ListToDataTable<ContactInfo>(list);
//            //dtReturn.Columns.Add("CustomerName");

//            //foreach (DataRow row in dtReturn.Rows)
//            //{
//            //    row["CustomerName"] = BLLFactory<Customer>.Instance.GetCustomerName(row["Customer_ID"].ToString());
//            //}
//            //var result = new { total = dtReturn.Rows.Count, rows = dtReturn }; 
//            #endregion

//            var result = new { total = list.Count, rows = list };
//            return ToJsonContentDate(result);
//        }

//        /// <summary>
//        /// ����ͻ����ϴ�����������б�
//        /// </summary>
//        /// <param name="list">�����б�</param>
//        /// <returns></returns>
//        public ActionResult SaveExcelData(List<ContactInfo> list)
//        {
//            ReturnResult result = new ReturnResult();
//            if (list != null && list.Count > 0)
//            {
//                #region ����������������ύ

//                DbTransaction trans = BLLFactory<Contact>.Instance.CreateTransaction();
//                if (trans != null)
//                {
//                    try
//                    {
//                        //int seq = 1;
//                        foreach (ContactInfo detail in list)
//                        {
//                            //detail.Seq = seq++;//����1
//                            detail.CreatorTime = DateTime.Now;
//                            detail.CreatorId = CurrentUser.Id;
//                            detail.EditorId = CurrentUser.Id;
//                            detail.LastUpdateTime = DateTime.Now;

//                            detail.CompanyId = CurrentUser.CompanyId;
//                            detail.DeptId = CurrentUser.DeptId;

//                            BLLFactory<Contact>.Instance.Insert(detail, trans);
//                        }
//                        trans.Commit();
//                        result.ErrorCode = 0;
//                    }
//                    catch (Exception ex)
//                    {
//                        LogHelper.WriteLog(LogLevel.LOG_LEVEL_CRIT, ex, typeof(ContactController));
//                        result.ErrorMessage = ex.Message;
//                        trans.Rollback();
//                    }
//                }
//                #endregion
//            }
//            else
//            {
//                result.ErrorMessage = "������Ϣ����Ϊ��";
//            }

//            return ToJsonContent(result);
//        }

//        /// <summary>
//        /// ���ݲ�ѯ���������б�����
//        /// </summary>
//        /// <returns></returns>
//        public ActionResult Export()
//        {
//            #region ���ݲ�����ȡList�б�
//            string where = GetPagerCondition();
//            string CustomedCondition = Request["CustomedCondition"] ?? "";
//            List<ContactInfo> list = new List<ContactInfo>();

//            if (!string.IsNullOrWhiteSpace(CustomedCondition))
//            {
//                Dictionary<string, string> dict = JsonConvert.DeserializeObject<Dictionary<string, string>>(CustomedCondition);
//                if (dict != null)
//                {
//                    string id = dict["id"];
//                    string groupname = dict["groupname"];
//                    string userid = dict["userid"];

//                    if (string.IsNullOrEmpty(id))
//                    {
//                        if (groupname == "������ϵ��")
//                        {
//                            where = "";//ֱ��ʹ�ÿ�����
//                            list = baseBLL.Find(where);
//                        }
//                        else if (groupname == "δ������ϵ��")
//                        {
//                            list = BLLFactory<Contact>.Instance.FindByGroupName(userid, null);
//                        }
//                    }
//                    else
//                    {
//                        list = BLLFactory<Contact>.Instance.FindByGroupName(userid, groupname);
//                    }
//                }
//            }
//            else
//            {
//                list = baseBLL.Find(where);
//            }
//            #endregion

//            #region ���б�ת��ΪDataTable
//            DataTable datatable = DataTableHelper.CreateTable("���|int," + columnString);
//            DataRow dr;
//            int j = 1;
//            for (int i = 0; i < list.Count; i++)
//            {
//                /*dr = datatable.NewRow();
//                dr["���"] = j++;
//                dr["�ͻ�����"] = BLLFactory<Customer>.Instance.GetCustomerNameById(list[i].Id);//ת��Ϊ�ͻ�����
//                dr["���"] = list[i].UserCode;
//                dr["����"] = list[i].Name;
//                dr["���֤����"] = list[i].IDCarNo;
//                dr["��������"] = list[i].Birthday;
//                dr["�Ա�"] = list[i].Gender.ToString();
//                dr["�칫�绰"] = list[i].OfficePhone;
//                dr["��ͥ�绰"] = list[i].HomePhone;
//                dr["����"] = list[i].Fax;
//                dr["��ϵ���ֻ�"] = list[i].MobilePhone;
//                dr["��ϵ�˵�ַ"] = list[i].Address;
//                dr["��������"] = list[i].ZipCode;
//                dr["�����ʼ�"] = list[i].Email;
//                dr["QQ����"] = list[i].QQ;
//                dr["��ע"] = list[i].Note;
//                dr["�������"] = list[i].Seq;
//                dr["����ʡ��"] = list[i].Province;
//                dr["����"] = list[i].City;
//                dr["����������"] = list[i].District;
//                dr["����"] = list[i].NativePlace;
//                dr["��ͥסַ"] = list[i].HomeAddress;
//                dr["����"] = list[i].Nationality;
//                dr["�����̶�"] = list[i].Eduction;
//                dr["��ҵѧУ"] = list[i].GraduateSchool;
//                dr["������ò"] = list[i].Political;
//                dr["ְҵ����"] = list[i].JobType;
//                dr["ְ��"] = list[i].Titles;
//                dr["ְ��"] = list[i].Rank;
//                dr["���ڲ���"] = list[i].Department;
//                dr["����"] = list[i].Hobby;
//                dr["����"] = list[i].Animal;
//                dr["����"] = list[i].Constellation;
//                dr["����״̬"] = list[i].MarriageStatus;
//                dr["����״��"] = list[i].HealthCondition;
//                dr["��Ҫ����"] = list[i].Importance;
//                dr["�Ͽɳ̶�"] = list[i].Recognition;
//                dr["��ϵ"] = list[i].RelationShip;
//                dr["��������"] = list[i].ResponseDemand;
//                dr["�����ص�"] = list[i].CareFocus;
//                dr["��������"] = list[i].InterestDemand;
//                dr["����"] = list[i].BodyType;
//                dr["����"] = list[i].Smoking;
//                dr["�Ⱦ�"] = list[i].Drink;
//                dr["���"] = list[i].Height;
//                dr["����"] = list[i].Weight;
//                dr["����"] = list[i].Vision;
//                dr["���˼���"] = list[i].Introduce;

//                datatable.Rows.Add(dr);*/
//            } 
//            #endregion

//            #region ��DataTableת��ΪExcel�����

//            //�����û�����Ŀ¼��ȷ�����ɵ��ļ����������ͻ
//            string filePath = string.Format("/GenerateFiles/{0}/Contact.xls", CurrentUser.Name);
//            GenerateExcel(datatable, filePath);

//            #endregion

//            //�������ɺ���ļ�·�����ÿͻ��˸��ݵ�ַ����
//            return Content(filePath);
//        }

//        #endregion


//        #region д������ǰ�޸Ĳ�������
//        protected override void OnBeforeInsert(ContactInfo info)
//        {
//            //��������Բ�����������޸�
//            info.CreatorTime = DateTime.Now;
//            info.CreatorId = CurrentUser.Id;
//            info.CompanyId = CurrentUser.CompanyId;
//            info.DeptId = CurrentUser.DeptId;
//        }

//        protected override void OnBeforeUpdate(ContactInfo info)
//        {
//            //��������Բ�����������޸�
//            info.EditorId = CurrentUser.Id;
//            info.LastUpdateTime = DateTime.Now;
//        }
//        #endregion

//        public override ActionResult FindWithPager()
//        {
//            //����û��Ƿ���Ȩ�ޣ������׳�MyDenyAccessException�쳣
//            base.CheckAuthorized(authorizeKeyInfo.ListKey);

//            string where = GetPagerCondition();
//            PagerInfo pagerInfo = GetPagerInfo();
//            List<ContactInfo> list = new List<ContactInfo>();

//            //����Զ����ѯ�����ǿգ���ô�����Զ����ѯ����
//            string CustomedCondition = Request["CustomedCondition"] ?? "";
//            if (!string.IsNullOrWhiteSpace(CustomedCondition))
//            {
//                Dictionary<string, string> dict = JsonConvert.DeserializeObject<Dictionary<string, string>>(CustomedCondition);
//                if (dict != null)
//                {
//                    string id = dict["id"];
//                    string groupname = dict["groupname"];
//                    string userid = dict["userid"];

//                    if (string.IsNullOrEmpty(id) || id.StartsWith("j")) //����JSTree���idΪ�գ����Զ�����һ��j*���Զ�ID
//                    {
//                        if (groupname == "������ϵ��")
//                        {
//                            where = "";//ֱ��ʹ�ÿ�����
//                            list = baseBLL.FindWithPager(where, pagerInfo);
//                        }
//                        else if (groupname == "δ������ϵ��")
//                        {
//                            list = BLLFactory<Contact>.Instance.FindByGroupName(userid, null, pagerInfo);
//                        }
//                    }
//                    else
//                    {
//                        list = BLLFactory<Contact>.Instance.FindByGroupName(userid, groupname, pagerInfo);
//                    }
//                }
//            }
//            else
//            {
//                list = baseBLL.FindWithPager(where, pagerInfo);
//            }

//            foreach (ContactInfo info in list)
//            {
//                //����һ�������ֶε�ת��
//                info.Data1 = BLLFactory<Customer>.Instance.GetCustomerNameById(info.Id);
//            }

//            //Json��ʽ��Ҫ��{total:22,rows:{}}
//            //�����Json�ĸ�ʽ����
//            var result = new { total = pagerInfo.RecordCount, rows = list };
//            return ToJsonContentDate(result);
//        }

//        /// <summary>
//        /// ������ϵ�˵����
//        /// </summary>
//        /// <param name="contactId">��ϵ��ID</param>
//        /// <param name="groupIdList">����Id����</param>
//        /// <returns></returns>
//        public ActionResult ModifyContactGroup(string contactId, string groupIdList)
//        {
//            List<string> idList = new List<string>();
//            if (!string.IsNullOrEmpty(groupIdList))
//            {
//                idList = groupIdList.ToDelimitedList<string>(",");
//            }

//            ReturnResult result = new ReturnResult();
//            try
//            {
//                result.ErrorCode = BLLFactory<Contact>.Instance.ModifyContactGroup(contactId, idList)?0:1;
//            }
//            catch (Exception ex)
//            {
//                LogHelper.WriteLog(LogLevel.LOG_LEVEL_CRIT, ex, typeof(ContactController));
//                result.ErrorMessage = ex.Message;
//            }
//            return ToJsonContent(result);
//        }
//    }
//}
