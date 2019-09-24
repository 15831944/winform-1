using JCodes.Framework.BLL;
using JCodes.Framework.Common.Framework;
using JCodes.Framework.Entity;
using System;
using System.Collections.Generic;
using System.Web.Mvc;

namespace JCodes.Framework.WebUI.Controllers
{
    public class ContactGroupController : BusinessController<ContactGroup, ContactGroupInfo>
    {
        public ContactGroupController() : base()
        {
        }

        #region д������ǰ�޸Ĳ�������
        protected override void OnBeforeInsert(ContactGroupInfo info)
        {
            //��������Բ�����������޸�
            info.CreatorTime = DateTime.Now;
            info.CreatorId = CurrentUser.Id;
            info.CompanyId = CurrentUser.CompanyId;
            info.DeptId = CurrentUser.DeptId;
        }

        protected override void OnBeforeUpdate(ContactGroupInfo info)
        {
            //��������Բ�����������޸�
            info.EditorId = CurrentUser.Id;
            info.LastUpdateTime = DateTime.Now;
        }
        #endregion

        #region Bootstrap�����б�

        /// <summary>
        /// ��ȡ������б����������б�
        /// </summary>
        /// <param name="creator">��ǰ�û���ID</param>
        /// <returns></returns>
        public ActionResult GetDictJson(string creator)
        {
            List<CDicKeyValue> treeList = new List<CDicKeyValue>();
            CDicKeyValue topNode = new CDicKeyValue(-1, "��");
            treeList.Add(topNode);

            List<ContactGroupNodeInfo> groupList = BLLFactory<ContactGroup>.Instance.GetTree(creator);
            AddGroupDict(groupList, treeList);

            return ToJsonContent(treeList);
        }
        private void AddGroupDict(List<ContactGroupNodeInfo> nodeList, List<CDicKeyValue> treeList)
        {
            foreach (ContactGroupNodeInfo nodeInfo in nodeList)
            {
                CDicKeyValue subNode = new CDicKeyValue(nodeInfo.Id, nodeInfo.Name);
                treeList.Add(subNode);

                AddGroupDict(nodeInfo.Children, treeList);
            }
        }

        /// <summary>
        /// ��ȡ��ϵ�˷�����Json�ַ���
        /// </summary>
        /// <returns></returns>
        public ActionResult GetGroupJsTreeJson(string userId)
        {
            //���һ��δ�����ȫ���ͻ������
            List<JsTreeData> treeList = new List<JsTreeData>();
            JsTreeData pNode = new JsTreeData("", "������ϵ��", "fa fa-users icon-state-warning icon-lg");
            treeList.Insert(0, pNode);
            treeList.Add(new JsTreeData("", "δ������ϵ��", "fa fa-users icon-state-warning icon-lg"));

            List<ContactGroupNodeInfo> groupList = BLLFactory<ContactGroup>.Instance.GetTree(userId);
            AddContactGroupJsTree(groupList, pNode);

            return ToJsonContent(treeList);
        }

        /// <summary>
        /// ��ʼ�����󶨿ͻ����˷�����Ϣ
        /// </summary>
        public ActionResult GetMyContactGroupJsTree(string contactId, string userId)
        {
            List<ContactGroupInfo> myGroupList = BLLFactory<ContactGroup>.Instance.GetByContact(contactId);
            List<Int32> groupIdList = new List<Int32>();
            foreach (ContactGroupInfo info in myGroupList)
            {
                groupIdList.Add(info.Id);
            }

            List<ContactGroupNodeInfo> groupList = BLLFactory<ContactGroup>.Instance.GetTree(userId);

            List<JsTreeData> treeList = new List<JsTreeData>();
            foreach (ContactGroupNodeInfo nodeInfo in groupList)
            {
                Int16 check = (short)(groupIdList.Contains(nodeInfo.Id) ? 1 : 0);
                JsTreeData treeData = new JsTreeData(nodeInfo.Id.ToString(), nodeInfo.Name);
                treeData.JsTreeStatus = new JsTreeStatus((short)1, check);

                treeList.Add(treeData);
            }

            return ToJsonContent(treeList);
        }

        /// <summary>
        /// ��ȡ�ͻ����鲢��
        /// </summary>
        private void AddContactGroupJsTree(List<ContactGroupNodeInfo> nodeList, JsTreeData treeNode)
        {
            foreach (ContactGroupNodeInfo nodeInfo in nodeList)
            {
                JsTreeData subNode = new JsTreeData(nodeInfo.Id, nodeInfo.Name, "fa fa-user icon-state-warning icon-lg");
                treeNode.children.Add(subNode);

                AddContactGroupJsTree(nodeInfo.Children, subNode);
            }
        }
        #endregion

        /// <summary>
        /// ����ID��ȡ��������
        /// </summary>
        /// <param name="id">����ID</param>
        /// <returns></returns>
        public ActionResult GetNameByID(string id)
        {
            string name = baseBLL.GetFieldValue(id, "Name");
            name = string.IsNullOrEmpty(name) ? "��" : name;
            return ToJsonContent(name);
        }
    }
}
