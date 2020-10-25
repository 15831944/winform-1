using JCodes.Framework.BLL;
using JCodes.Framework.Entity;
using System;
using System.Collections.Generic;
using System.Web.Mvc;
using JCodes.Framework.Common.Extension;
using JCodes.Framework.Common.Framework;
using JCodes.Framework.jCodesenum.BaseEnum;
using JCodes.Framework.Common;
using JCodes.Framework.jCodesenum;

namespace JCodes.Framework.WebUI.Controllers
{
    /// <summary>
    /// ��ɫ�ɷ������ݣ���֯�������Ŀ�������
    /// </summary>
    public class RoleDataController : BusinessController<RoleData, RoleDataInfo>
    {
        public RoleDataController() : base()
        {
        }
                
        /// <summary>
        /// �����ɫ������Ȩ��
        /// </summary>
        /// <param name="roleId">��ɫID</param>
        /// <param name="ouList">������˾���߲��ţ����ŷֿ�</param>
        /// <returns></returns>
        public ActionResult UpdateData(int roleId, string ouList)
        {
            List<int> companyList = new List<int>();
            List<int> deptList = new List<int>();

            foreach(int id in ouList.ToDelimitedList<int>(","))
            {
                OUInfo info = BLLFactory<OU>.Instance.FindById(id);
                if (info != null && info.OuType == (short)OuType.��˾)
                {
                    companyList.Add(id);
                }
                else
                {
                    deptList.Add(id);
                }
            }

            string belongCompanys = string.Join(",", companyList);
            string belongDepts = string.Join(",", deptList);

            ReturnResult result = new ReturnResult();
            try
            {
                result.ErrorCode = BLLFactory<RoleData>.Instance.UpdateRoleData(roleId, belongCompanys, belongDepts)?0:1;
            }
            catch (Exception ex)
            {
                LogHelper.WriteLog(LogLevel.LOG_LEVEL_CRIT, ex, typeof(RoleDataController));
                result.ErrorMessage = ex.Message;
            }

            return ToJsonContent(result);
        }


        /// <summary>
        /// �����ɫ������Ȩ��
        /// </summary>
        /// <param name="roleId">��ɫID</param>
        /// <param name="belongCompanys">������˾�����ŷֿ�</param>
        /// <param name="belongDepts">�������������ŷֿ�</param>
        /// <returns></returns>
        public ActionResult UpdateRoleData(int roleId, string belongCompanys, string belongDepts)
        {
            ReturnResult result = new ReturnResult();
            try
            {
                result.ErrorCode = BLLFactory<RoleData>.Instance.UpdateRoleData(roleId, belongCompanys, belongDepts)?0:1;
            }
            catch(Exception ex)
            {
                LogHelper.WriteLog(LogLevel.LOG_LEVEL_CRIT, ex, typeof(RoleDataController));
                result.ErrorMessage = ex.Message;
            }

            return ToJsonContent(result);
        }

        /// <summary>
        /// ��ȡ��ɫ����������Ȩ�ޣ���֯����ID�б�
        /// </summary>
        /// <param name="roleId">��ɫID</param>
        /// <returns></returns>
        public ActionResult GetRoleDataList(int roleId)
        {
            Dictionary<int,int> dict = BLLFactory<RoleData>.Instance.GetRoleDataDict(roleId);

            List<int> list = new List<int>(); 
            list.AddRange(dict.Keys);

            return Json(list, JsonRequestBehavior.AllowGet);
        }
    }
}
