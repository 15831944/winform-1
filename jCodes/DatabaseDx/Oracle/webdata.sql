
INSERT INTO T_ACL_BlackIP (ID, Name, AuthorizeType, Forbid, IPStart, IPEnd, Note, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime) VALUES ('91f60acf-a12f-4cab-8b0e-9681c6816680', '管理员用户禁止IP登陆设置', 0, 1, '192.168.1.1', '192.168.1.244', '管理员用户禁止在指定的IP登陆
', '管理员', '1', NULL, '管理员', '1', NULL);
INSERT INTO T_ACL_BlackIP (ID, Name, AuthorizeType, Forbid, IPStart, IPEnd, Note, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime) VALUES ('c6ce6ed8-13f4-421a-bfb0-97abf33862c6', '允许管理员登陆的IP', 1, 1, '192.168.1.244', '192.168.1.244', '允许管理员登陆的IP', '管理员', '1', NULL, '管理员', '1', NULL);

INSERT INTO T_ACL_BlackIP_User (BlackIP_ID, User_ID)  VALUES ('91f60acf-a12f-4cab-8b0e-9681c6816680', 1);
INSERT INTO T_ACL_BlackIP_User (BlackIP_ID, User_ID)  VALUES ('c6ce6ed8-13f4-421a-bfb0-97abf33862c6', 1);

INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode)  VALUES ('1', '-1', '仓库管理系统', 'WareMis', 'WareMis', NULL);
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode)  VALUES ('2', '1', '备件入库管理', 'Purchase', 'WareMis', NULL);
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode)  VALUES ('3', '1', '备件出库管理', 'TakeOut', 'WareMis', NULL);
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode)  VALUES ('4', '1', '库存查询', 'StockSearch', 'WareMis', NULL);
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode)  VALUES ('5', '1', '备件信息', 'ItemDetail', 'WareMis', NULL);
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode)  VALUES ('6', '5', '添加备件信息', 'ItemDetail/Add', 'WareMis', NULL);
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode)  VALUES ('7', '5', '删除备件信息', 'ItemDetail/Delete', 'WareMis', NULL);
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode)  VALUES ('8', '2', '导出入库单', 'Purchase/Export', 'WareMis', NULL);
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('9', '1', '业务报表管理', 'Report', 'WareMis', NULL);
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('10', '1', '数据字典管理', 'Dictionary', 'WareMis', NULL);
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('11', '1', '库房管理', 'WareHouse', 'WareMis', NULL);
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('12', '5', '编辑备件信息', 'ItemDetail/Edit', 'WareMis', NULL);
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('13', '3', '导出出库单', 'TakeOut/Export', 'WareMis', NULL);
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('14', '4', '设置库存报警', 'Stok/SetAlarm', 'WareMis', NULL);
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('15', '1', '登录日志管理', 'LoginLog', 'WareMis', NULL);
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('16', '15', '删除登录日志', 'LoginLog/Delete', 'WareMis', NULL);
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('17', '4', '调整库房数量', 'Stock/Modify', 'WareMis', NULL);
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('18', '1', '月结操作', 'MonthlyStatistic', 'WareMis', NULL);
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('19', '1', '年度汇总操作', 'AnnualStatistic', 'WareMis', NULL);
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('20', '1', '初始化业务数据', 'ClearAllData', 'WareMis', NULL);
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('21', '1', '备件资料及库存导入', 'ImportItemDetail', 'WareMis', NULL);
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('5f5f97f3-25b5-445f-9db4-24f02ff9a399', '-1', '客户关系管理', 'CRMMis', 'WareMis', '');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('09c67ebe-8490-4404-a285-fe9488999fb6', '5f5f97f3-25b5-445f-9db4-24f02ff9a399', '客户资料', 'Customer', 'WareMis', '');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('a09e1743-9472-4541-9464-7f97e8294cc5', '09c67ebe-8490-4404-a285-fe9488999fb6', '添加客户资料', 'Customer/Add', 'WareMis', '01');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('5e511c79-fa8a-4098-b583-3c2beda95624', '09c67ebe-8490-4404-a285-fe9488999fb6', '删除客户资料', 'Customer/Delete', 'WareMis', '03');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('b1c81af5-92bf-42d9-a683-49d02f911db6', '09c67ebe-8490-4404-a285-fe9488999fb6', '修改客户资料', 'Customer/Edit', 'WareMis', '02');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('c8edb27f-edff-4acc-91a3-1a20521f6fdb', '09c67ebe-8490-4404-a285-fe9488999fb6', '查看客户资料', 'Customer/View', 'WareMis', '04');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('313a095e-e1a9-474f-bed1-b71aea7af8f1', '09c67ebe-8490-4404-a285-fe9488999fb6', '导入客户资料', 'Customer/Import', 'WareMis', '05');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('957e9934-0e88-4fab-9b8a-bb0dae275968', '09c67ebe-8490-4404-a285-fe9488999fb6', '导出客户资料', 'Customer/Export', 'WareMis', '06');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('3d990c6c-da45-4c18-aff2-609b9561f53d', '5f5f97f3-25b5-445f-9db4-24f02ff9a399', '客户联系人', 'Contact', 'WareMis', NULL);
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('b9066816-48bb-48dd-8335-970678d14de7', '3d990c6c-da45-4c18-aff2-609b9561f53d', '添加客户联系人', 'Contact/Add', 'WareMis', '01');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('920f5ea7-9cae-49a0-a64e-f4ec0303d90c', '3d990c6c-da45-4c18-aff2-609b9561f53d', '删除客户联系人', 'Contact/Delete', 'WareMis', '02');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('282aaebe-e763-4d41-95b7-be25460483ee', '3d990c6c-da45-4c18-aff2-609b9561f53d', '修改客户联系人', 'Contact/Edit', 'WareMis', '03');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('46b75046-de8d-400f-af9f-aa7bd3d2e2e5', '3d990c6c-da45-4c18-aff2-609b9561f53d', '查看客户联系人', 'Contact/View', 'WareMis', '04');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('2f50ae12-5ab6-4948-af24-53e4cc1184d6', '3d990c6c-da45-4c18-aff2-609b9561f53d', '导入客户联系人', 'Contact/Import', 'WareMis', '05');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('eb612ab7-1dfc-4809-af6e-78903335016e', '3d990c6c-da45-4c18-aff2-609b9561f53d', '导出客户联系人', 'Contact/Export', 'WareMis', '06');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('df9efacb-b065-44a9-994c-d0d7f9a73bfd', '5f5f97f3-25b5-445f-9db4-24f02ff9a399', '客户发货地址', 'Shipping', 'WareMis', NULL);
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('98e72e2e-e05a-44aa-9941-8e8f5b7fc351', 'df9efacb-b065-44a9-994c-d0d7f9a73bfd', '添加客户发货地址', 'Shipping/Add', 'WareMis', '01');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('d03221fe-9f44-4a77-9d70-31fdb0036d92', 'df9efacb-b065-44a9-994c-d0d7f9a73bfd', '删除客户发货地址', 'Shipping/Delete', 'WareMis', '02');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('3dc99e62-3a32-462f-93b7-b8d8070a0ebb', 'df9efacb-b065-44a9-994c-d0d7f9a73bfd', '修改客户发货地址', 'Shipping/Edit', 'WareMis', '03');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('719dd6f3-8447-4952-9084-afefed1c5423', 'df9efacb-b065-44a9-994c-d0d7f9a73bfd', '查看客户发货地址', 'Shipping/View', 'WareMis', '04');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('3161bd07-2f53-4cc0-920f-5e2af6115005', 'df9efacb-b065-44a9-994c-d0d7f9a73bfd', '导入客户发货地址', 'Shipping/Import', 'WareMis', '05');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('3cc934bb-5056-471b-9463-eb5427f21eac', 'df9efacb-b065-44a9-994c-d0d7f9a73bfd', '导出客户发货地址', 'Shipping/Export', 'WareMis', '06');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('9abc6066-7615-42bf-b94e-03fe004cbcc5', '5f5f97f3-25b5-445f-9db4-24f02ff9a399', '供应商信息', 'Manufacturer', 'WareMis', NULL);
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('0523a4da-9fdc-4eb4-b1c4-ec295cf1f17b', '9abc6066-7615-42bf-b94e-03fe004cbcc5', '添加供应商信息', 'Manufacturer/Add', 'WareMis', '01');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('c98be4bc-a3da-4e46-83dc-def8c5c0622a', '9abc6066-7615-42bf-b94e-03fe004cbcc5', '删除供应商信息', 'Manufacturer/Delete', 'WareMis', '02');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('df99eca3-2830-45b3-a5e0-ef0ed0908f95', '9abc6066-7615-42bf-b94e-03fe004cbcc5', '修改供应商信息', 'Manufacturer/Edit', 'WareMis', '03');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('f7ecd42d-146e-458d-89d0-b1b8dd720962', '9abc6066-7615-42bf-b94e-03fe004cbcc5', '查看供应商信息', 'Manufacturer/View', 'WareMis', '04');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('e6bb6503-3a6e-462d-9070-624d8ea97817', '9abc6066-7615-42bf-b94e-03fe004cbcc5', '导入供应商信息', 'Manufacturer/Import', 'WareMis', '05');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('843e6cd8-24b5-4462-88e1-dc0bee67d422', '5f5f97f3-25b5-445f-9db4-24f02ff9a399', '客户纪念日', 'MemorialDay', 'WareMis', NULL);
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('ea0f2170-4020-4108-b67c-6bcbb0ba922f', '843e6cd8-24b5-4462-88e1-dc0bee67d422', '添加客户纪念日', 'MemorialDay/Add', 'WareMis', '01');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('52c41acc-609e-4c8b-b377-da2cb7d9e2cf', '843e6cd8-24b5-4462-88e1-dc0bee67d422', '删除客户纪念日', 'MemorialDay/Delete', 'WareMis', '02');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('431b4d49-a235-4c90-951b-e848c21d239b', '843e6cd8-24b5-4462-88e1-dc0bee67d422', '修改客户纪念日', 'MemorialDay/Edit', 'WareMis', '03');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('a97c0323-85ba-46e3-ac87-c42ce3b5a7be', '843e6cd8-24b5-4462-88e1-dc0bee67d422', '查看客户纪念日', 'MemorialDay/View', 'WareMis', '04');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('859bb03c-be62-4db2-9eb3-07906ac764d9', '843e6cd8-24b5-4462-88e1-dc0bee67d422', '导入客户纪念日', 'MemorialDay/Import', 'WareMis', '05');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('0309804e-1367-4345-8bdd-03c1a42b3dec', '843e6cd8-24b5-4462-88e1-dc0bee67d422', '导出客户纪念日', 'MemorialDay/Export', 'WareMis', '06');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('642ea575-c1b2-4c9b-b41e-198394c870c0', '5f5f97f3-25b5-445f-9db4-24f02ff9a399', '客户来电记录', 'ComingCall', 'WareMis', NULL);
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('8d4d318f-bd73-451a-a04b-225bf79ed200', '642ea575-c1b2-4c9b-b41e-198394c870c0', '添加客户来电记录', 'ComingCall/Add', 'WareMis', '01');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('f5323f8f-5c2b-4531-a06d-5db11cdf1c67', '642ea575-c1b2-4c9b-b41e-198394c870c0', '删除客户来电记录', 'ComingCall/Delete', 'WareMis', '02');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('7545a583-d58f-4998-a718-598adf9ec7ae', '642ea575-c1b2-4c9b-b41e-198394c870c0', '修改客户来电记录', 'ComingCall/Edit', 'WareMis', '03');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('506bcaf9-4556-4f10-920a-7bcfdcd7fba0', '642ea575-c1b2-4c9b-b41e-198394c870c0', '查看客户来电记录', 'ComingCall/View', 'WareMis', '04');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('d589506e-beb0-45bb-99da-c22d5a93afb7', '642ea575-c1b2-4c9b-b41e-198394c870c0', '导入客户来电记录', 'ComingCall/Import', 'WareMis', '05');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('f2ee45db-813a-4695-8a3c-91f8ec9369e6', '642ea575-c1b2-4c9b-b41e-198394c870c0', '导出客户来电记录', 'ComingCall/Export', 'WareMis', '06');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('ea451efa-2094-4717-9dfe-9f59bb6a6d44', '5f5f97f3-25b5-445f-9db4-24f02ff9a399', '产品信息', 'Product', 'WareMis', NULL);
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('395f482f-6e32-417d-8c60-3332b5fb33ae', 'ea451efa-2094-4717-9dfe-9f59bb6a6d44', '添加产品信息', 'Product/Add', 'WareMis', '01');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('725a388a-aa32-422b-93bc-016d64e350d5', 'ea451efa-2094-4717-9dfe-9f59bb6a6d44', '删除产品信息', 'Product/Delete', 'WareMis', '02');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('368cc740-0083-44c8-a981-c856d3774a91', 'ea451efa-2094-4717-9dfe-9f59bb6a6d44', '修改产品信息', 'Product/Edit', 'WareMis', '03');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('e0aa379c-b99c-4dfe-8c4c-4df30d0be72f', 'ea451efa-2094-4717-9dfe-9f59bb6a6d44', '查看产品信息', 'Product/View', 'WareMis', '04');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('ddecc61f-c352-40ce-8ef9-8bbe446edbc4', 'ea451efa-2094-4717-9dfe-9f59bb6a6d44', '导入产品信息', 'Product/Import', 'WareMis', '05');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('39884a5e-20f9-46dc-acb0-e71e2a0ce114', 'ea451efa-2094-4717-9dfe-9f59bb6a6d44', '导出产品信息', 'Product/Export', 'WareMis', '06');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('7f7a46ea-a8b9-4157-b34b-8fcf73717d2c', '5f5f97f3-25b5-445f-9db4-24f02ff9a399', '竞争对手产品信息', 'CompetitiveProduct', 'WareMis', NULL);
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('d2041508-c7d0-4766-af55-7212f0819b0e', '7f7a46ea-a8b9-4157-b34b-8fcf73717d2c', '添加竞争对手产品信息', 'CompetitiveProduct/Add', 'WareMis', '01');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('c5156b6c-785c-4206-89ce-167f0d05b7bd', '7f7a46ea-a8b9-4157-b34b-8fcf73717d2c', '删除竞争对手产品信息', 'CompetitiveProduct/Delete', 'WareMis', '02');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('4a644401-a623-4de9-8d81-95fd540eff5f', '7f7a46ea-a8b9-4157-b34b-8fcf73717d2c', '修改竞争对手产品信息', 'CompetitiveProduct/Edit', 'WareMis', '03');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('3058d3da-e70c-4549-853d-eb623d92da10', '7f7a46ea-a8b9-4157-b34b-8fcf73717d2c', '查看竞争对手产品信息', 'CompetitiveProduct/View', 'WareMis', '04');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('8b3b3c24-1520-41f0-832d-a64d06bbcd24', '7f7a46ea-a8b9-4157-b34b-8fcf73717d2c', '导入竞争对手产品信息', 'CompetitiveProduct/Import', 'WareMis', '05');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('a495dd9c-c861-470a-a811-aad864d106ad', '7f7a46ea-a8b9-4157-b34b-8fcf73717d2c', '导出竞争对手产品信息', 'CompetitiveProduct/Export', 'WareMis', '06');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('8ac5e7dd-ce6e-44f7-9e3c-d40dbe9e6ff0', '5f5f97f3-25b5-445f-9db4-24f02ff9a399', '销售机会管理', 'Chance', 'WareMis', NULL);
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('fed33b0a-1f09-4f88-9b01-a0791308324a', '8ac5e7dd-ce6e-44f7-9e3c-d40dbe9e6ff0', '添加销售机会管理', 'Chance/Add', 'WareMis', '01');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('e009fe21-3440-4d11-9f8e-fcfd5c1caf92', '8ac5e7dd-ce6e-44f7-9e3c-d40dbe9e6ff0', '删除销售机会管理', 'Chance/Delete', 'WareMis', '02');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('3dc00c51-4cfa-4425-9f15-021447431f3b', '8ac5e7dd-ce6e-44f7-9e3c-d40dbe9e6ff0', '修改销售机会管理', 'Chance/Edit', 'WareMis', '03');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('eed3a951-e9e8-4398-a59f-f70d64184e94', '8ac5e7dd-ce6e-44f7-9e3c-d40dbe9e6ff0', '查看销售机会管理', 'Chance/View', 'WareMis', '04');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('0c368397-a2f0-4346-8209-d2de61eefb03', '8ac5e7dd-ce6e-44f7-9e3c-d40dbe9e6ff0', '导入销售机会管理', 'Chance/Import', 'WareMis', '05');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('57df0130-c582-4825-a853-f5bec89e20ea', '9abc6066-7615-42bf-b94e-03fe004cbcc5', '导出供应商信息', 'Manufacturer/Export', 'WareMis', '06');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('b67b9237-eb3e-428f-90a2-910d09dc903c', '5f5f97f3-25b5-445f-9db4-24f02ff9a399', '竞争对手信息', 'Competitor', 'WareMis', NULL);
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('bf38b532-8ba4-4458-9a36-ece3e928784c', 'b67b9237-eb3e-428f-90a2-910d09dc903c', '添加竞争对手信息', 'Competitor/Add', 'WareMis', '01');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('bb12de68-37bd-4e72-9c2b-888a5bc10f94', 'b67b9237-eb3e-428f-90a2-910d09dc903c', '删除竞争对手信息', 'Competitor/Delete', 'WareMis', '02');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('2a2860f3-1ce5-4d28-b2ea-b307a238993c', 'b67b9237-eb3e-428f-90a2-910d09dc903c', '修改竞争对手信息', 'Competitor/Edit', 'WareMis', '03');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('b4a48748-6464-4150-8ade-6a4ab7d67b5c', 'b67b9237-eb3e-428f-90a2-910d09dc903c', '查看竞争对手信息', 'Competitor/View', 'WareMis', '04');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('6d8e8e0b-7ffb-4954-a164-42f62346c83c', 'b67b9237-eb3e-428f-90a2-910d09dc903c', '导入竞争对手信息', 'Competitor/Import', 'WareMis', '05');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('2b043dad-b967-4754-b7ae-4dc801a27301', 'b67b9237-eb3e-428f-90a2-910d09dc903c', '导出竞争对手信息', 'Competitor/Export', 'WareMis', '06');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('de00dae4-3f88-408c-ad78-1f5e4090c96f', '5f5f97f3-25b5-445f-9db4-24f02ff9a399', '客户文档', 'FileData', 'WareMis', NULL);
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('2859cccd-ad43-4b3d-b48b-9e8cd6e36435', 'de00dae4-3f88-408c-ad78-1f5e4090c96f', '添加客户文档', 'FileData/Add', 'WareMis', '01');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('a9ac458a-2527-41a2-afbb-ce480630def7', 'de00dae4-3f88-408c-ad78-1f5e4090c96f', '删除客户文档', 'FileData/Delete', 'WareMis', '02');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('e5cc0a04-c454-48ad-bb16-9257050e7030', 'de00dae4-3f88-408c-ad78-1f5e4090c96f', '修改客户文档', 'FileData/Edit', 'WareMis', '03');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('e795ceff-95ff-4ae1-81ae-e7c7cbe9de9c', 'de00dae4-3f88-408c-ad78-1f5e4090c96f', '查看客户文档', 'FileData/View', 'WareMis', '04');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('ec04767e-de54-4d94-bb1c-bf5078485a74', 'de00dae4-3f88-408c-ad78-1f5e4090c96f', '导入客户文档', 'FileData/Import', 'WareMis', '05');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('2711d9f5-fdb8-4746-b7bb-ad23c023e6fd', 'de00dae4-3f88-408c-ad78-1f5e4090c96f', '导出客户文档', 'FileData/Export', 'WareMis', '06');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('886be1c5-0b46-4b3e-8ff7-29cd482513a5', '5f5f97f3-25b5-445f-9db4-24f02ff9a399', '客户拜访', 'Visit', 'WareMis', NULL);
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('c90a32ae-5936-40dd-ab28-cd55b0cbdf7f', '886be1c5-0b46-4b3e-8ff7-29cd482513a5', '添加客户拜访', 'Visit/Add', 'WareMis', '01');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('81446114-a220-4ef4-b19f-4a2a484e8b8a', '886be1c5-0b46-4b3e-8ff7-29cd482513a5', '删除客户拜访', 'Visit/Delete', 'WareMis', '02');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('b533abff-d542-4349-98e7-a5264b6b49d2', '886be1c5-0b46-4b3e-8ff7-29cd482513a5', '修改客户拜访', 'Visit/Edit', 'WareMis', '03');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('f93d3fcd-ac5f-4bb9-9457-be93d74c6208', '886be1c5-0b46-4b3e-8ff7-29cd482513a5', '查看客户拜访', 'Visit/View', 'WareMis', '04');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('fdb6b1ce-f99c-44a3-a8ff-02f389119e43', '886be1c5-0b46-4b3e-8ff7-29cd482513a5', '导入客户拜访', 'Visit/Import', 'WareMis', '05');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('3ab0bed8-4c91-423d-af87-fb9f5e3ce550', '886be1c5-0b46-4b3e-8ff7-29cd482513a5', '导出客户拜访', 'Visit/Export', 'WareMis', '06');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('d30866f0-83a0-4526-9f7a-c6e214103cfa', '5f5f97f3-25b5-445f-9db4-24f02ff9a399', '产品报价单', 'Quotation', 'WareMis', NULL);
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('35958d2e-091d-4bb6-ab77-c4d4c6e9f3e3', 'd30866f0-83a0-4526-9f7a-c6e214103cfa', '添加产品报价单', 'Quotation/Add', 'WareMis', '01');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('4956f863-3e48-4e0c-b8de-1b4f85f75c13', 'd30866f0-83a0-4526-9f7a-c6e214103cfa', '删除产品报价单', 'Quotation/Delete', 'WareMis', '02');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('6a38eb8f-c6d5-4a21-9bb6-79323cbd1825', 'd30866f0-83a0-4526-9f7a-c6e214103cfa', '修改产品报价单', 'Quotation/Edit', 'WareMis', '03');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('27a9f0ad-c52f-4720-ab2b-a7da569d44b2', 'd30866f0-83a0-4526-9f7a-c6e214103cfa', '查看产品报价单', 'Quotation/View', 'WareMis', '04');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('827a522c-e86b-460a-820b-1ad9cf751e11', 'd30866f0-83a0-4526-9f7a-c6e214103cfa', '导入产品报价单', 'Quotation/Import', 'WareMis', '05');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('6fb85f23-aa56-4f78-9ff0-a5c60afea746', 'd30866f0-83a0-4526-9f7a-c6e214103cfa', '导出产品报价单', 'Quotation/Export', 'WareMis', '06');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('4701c835-09f7-4e24-9028-718db935b6c1', '5f5f97f3-25b5-445f-9db4-24f02ff9a399', '产品售后记录', 'AfterSell', 'WareMis', NULL);
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('dc5efbe9-c237-4a56-9f3c-9165f44e1fa6', '4701c835-09f7-4e24-9028-718db935b6c1', '添加产品售后记录', 'AfterSell/Add', 'WareMis', '01');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('0e55a030-3467-41a9-8384-395de3fe38aa', '4701c835-09f7-4e24-9028-718db935b6c1', '删除产品售后记录', 'AfterSell/Delete', 'WareMis', '02');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('a9e5c283-4ebe-4855-8563-9268e4ddc662', '4701c835-09f7-4e24-9028-718db935b6c1', '修改产品售后记录', 'AfterSell/Edit', 'WareMis', '03');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('2661fd37-1526-4546-a2c5-21a30d717eab', '4701c835-09f7-4e24-9028-718db935b6c1', '查看产品售后记录', 'AfterSell/View', 'WareMis', '04');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('164cd871-3baf-4e13-9e57-424eae670b4a', '4701c835-09f7-4e24-9028-718db935b6c1', '导入产品售后记录', 'AfterSell/Import', 'WareMis', '05');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('c8c399fc-2ec6-4d5f-b2f8-cf70a0077955', '8ac5e7dd-ce6e-44f7-9e3c-d40dbe9e6ff0', '导出销售机会管理', 'Chance/Export', 'WareMis', '06');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('5f2c542d-6327-46aa-8a53-b13b2f3b03ff', '5f5f97f3-25b5-445f-9db4-24f02ff9a399', '客户投诉管理', 'Complaint', 'WareMis', NULL);
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('59127428-a575-4114-9eb9-328e12cfe1ed', '5f2c542d-6327-46aa-8a53-b13b2f3b03ff', '添加客户投诉管理', 'Complaint/Add', 'WareMis', '01');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('0490eefe-f890-4cf4-81aa-f91ab386524d', '5f2c542d-6327-46aa-8a53-b13b2f3b03ff', '删除客户投诉管理', 'Complaint/Delete', 'WareMis', '02');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('66a390df-130c-46a7-9aad-ab1b08aa3a7c', '5f2c542d-6327-46aa-8a53-b13b2f3b03ff', '修改客户投诉管理', 'Complaint/Edit', 'WareMis', '03');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('f12b4eba-344a-4d8b-9ee3-b8bf3ef22d89', '5f2c542d-6327-46aa-8a53-b13b2f3b03ff', '查看客户投诉管理', 'Complaint/View', 'WareMis', '04');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('33839567-456a-4f9a-98e0-bc8f2161e95b', '5f2c542d-6327-46aa-8a53-b13b2f3b03ff', '导入客户投诉管理', 'Complaint/Import', 'WareMis', '05');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('710b71fe-22f1-4345-9abe-be42261700fb', '5f2c542d-6327-46aa-8a53-b13b2f3b03ff', '导出客户投诉管理', 'Complaint/Export', 'WareMis', '06');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('bf098f26-6512-4970-8ab8-914413de3f5c', '5f5f97f3-25b5-445f-9db4-24f02ff9a399', '客户开票信息', 'Invoice', 'WareMis', NULL);
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('2427d15a-a77f-4522-9924-ebbee884efad', 'bf098f26-6512-4970-8ab8-914413de3f5c', '添加客户开票信息', 'Invoice/Add', 'WareMis', '01');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('ec46889c-630e-4e5f-a6cd-1654c9d8655b', 'bf098f26-6512-4970-8ab8-914413de3f5c', '删除客户开票信息', 'Invoice/Delete', 'WareMis', '02');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('92088c67-931c-4fe7-89c5-3f3f06bd4c9a', 'bf098f26-6512-4970-8ab8-914413de3f5c', '修改客户开票信息', 'Invoice/Edit', 'WareMis', '03');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('2f362b2e-04d8-49a5-9bb1-c7bce9799574', 'bf098f26-6512-4970-8ab8-914413de3f5c', '查看客户开票信息', 'Invoice/View', 'WareMis', '04');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('158485f3-6019-4b29-8e26-87ecaa3ea614', 'bf098f26-6512-4970-8ab8-914413de3f5c', '导入客户开票信息', 'Invoice/Import', 'WareMis', '05');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('b9a84dba-afe3-4130-a896-27036bad7fbb', 'bf098f26-6512-4970-8ab8-914413de3f5c', '导出客户开票信息', 'Invoice/Export', 'WareMis', '06');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('6c1b8cd6-37a8-4df6-9b06-f89929cac217', '5f5f97f3-25b5-445f-9db4-24f02ff9a399', '产品销售记录', 'Sell', 'WareMis', NULL);
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('f763c480-ea1a-4202-819b-4362b5235bb5', '6c1b8cd6-37a8-4df6-9b06-f89929cac217', '添加产品销售记录', 'Sell/Add', 'WareMis', '01');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('8ea4cfba-5abc-4512-9a65-899ca878ca56', '6c1b8cd6-37a8-4df6-9b06-f89929cac217', '删除产品销售记录', 'Sell/Delete', 'WareMis', '02');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('0c2b77ba-2294-4d14-bb07-2ffb56dfb68f', '6c1b8cd6-37a8-4df6-9b06-f89929cac217', '修改产品销售记录', 'Sell/Edit', 'WareMis', '03');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('1d3749c2-d4d1-4b71-8f6a-579927b8f26f', '6c1b8cd6-37a8-4df6-9b06-f89929cac217', '查看产品销售记录', 'Sell/View', 'WareMis', '04');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('f3427e77-1196-4958-b85d-04d8b4af29b1', '6c1b8cd6-37a8-4df6-9b06-f89929cac217', '导入产品销售记录', 'Sell/Import', 'WareMis', '05');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('8fdbbdb6-bd3b-4baa-9f91-97a4599330d5', '6c1b8cd6-37a8-4df6-9b06-f89929cac217', '导出产品销售记录', 'Sell/Export', 'WareMis', '06');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('7068ac75-d813-42b7-8df3-d64bd514af01', '5f5f97f3-25b5-445f-9db4-24f02ff9a399', '客户合同信息', 'Contract', 'WareMis', NULL);
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('bca930db-fa30-4650-a04a-855530236351', '7068ac75-d813-42b7-8df3-d64bd514af01', '添加客户合同信息', 'Contract/Add', 'WareMis', '01');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('53f1a522-4df6-4ed8-b462-9562bc67add8', '7068ac75-d813-42b7-8df3-d64bd514af01', '删除客户合同信息', 'Contract/Delete', 'WareMis', '02');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('9c3a0183-e4a1-4391-bdb7-1602f7cda732', '7068ac75-d813-42b7-8df3-d64bd514af01', '修改客户合同信息', 'Contract/Edit', 'WareMis', '03');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('aabd4e6f-054b-446c-b28f-b5d6bdaaf972', '7068ac75-d813-42b7-8df3-d64bd514af01', '查看客户合同信息', 'Contract/View', 'WareMis', '04');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('0d2ac23b-5287-4738-b131-fae43d0e752c', '7068ac75-d813-42b7-8df3-d64bd514af01', '导入客户合同信息', 'Contract/Import', 'WareMis', '05');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('9cfce854-4769-4501-8165-6bf7d6cea0a0', '7068ac75-d813-42b7-8df3-d64bd514af01', '导出客户合同信息', 'Contract/Export', 'WareMis', '06');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('82cbedc1-053a-443d-9080-cd12d6f3509b', '5f5f97f3-25b5-445f-9db4-24f02ff9a399', '客户跟进', 'Follow', 'WareMis', NULL);
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('b2158791-154f-433b-b1d1-a9c227e3eebf', '82cbedc1-053a-443d-9080-cd12d6f3509b', '添加客户跟进', 'Follow/Add', 'WareMis', '01');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('5f9ac6c9-ab27-4861-8c58-817d50f94f00', '82cbedc1-053a-443d-9080-cd12d6f3509b', '删除客户跟进', 'Follow/Delete', 'WareMis', '02');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('52a7a364-8885-490b-b0a4-5fb06c5d8110', '82cbedc1-053a-443d-9080-cd12d6f3509b', '修改客户跟进', 'Follow/Edit', 'WareMis', '03');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('1be71a61-29ce-4554-9add-54fc951f0e32', '82cbedc1-053a-443d-9080-cd12d6f3509b', '查看客户跟进', 'Follow/View', 'WareMis', '04');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('0c8c3f13-d571-40bd-b673-6144da1940f6', '82cbedc1-053a-443d-9080-cd12d6f3509b', '导入客户跟进', 'Follow/Import', 'WareMis', '05');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('14c46006-b297-4c2d-8bfc-f142dbeb03b5', '4701c835-09f7-4e24-9028-718db935b6c1', '导出产品售后记录', 'AfterSell/Export', 'WareMis', '06');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('cfcd3cde-aac7-4677-a3c0-22ae12da161f', '82cbedc1-053a-443d-9080-cd12d6f3509b', '导出客户跟进', 'Follow/Export', 'WareMis', '06');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('19ae112f-e515-4416-b315-c79331ea194d', '5f5f97f3-25b5-445f-9db4-24f02ff9a399', '客户维修维护', 'Maintenace', 'WareMis', NULL);
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('c49dd910-3c59-43dd-a053-a3bfdd1a899f', '19ae112f-e515-4416-b315-c79331ea194d', '添加客户维修维护', 'Maintenace/Add', 'WareMis', '01');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('a88f2c58-4e4c-4cd6-aac2-e4be5e62788a', '19ae112f-e515-4416-b315-c79331ea194d', '删除客户维修维护', 'Maintenace/Delete', 'WareMis', '02');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('811c04b6-cf72-4c91-931f-76cb108277b9', '19ae112f-e515-4416-b315-c79331ea194d', '修改客户维修维护', 'Maintenace/Edit', 'WareMis', '03');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('77917fc2-82e4-4f42-a86b-f6030fc14c2a', '19ae112f-e515-4416-b315-c79331ea194d', '查看客户维修维护', 'Maintenace/View', 'WareMis', '04');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('89a2d3f3-9c6a-41ca-bee2-87e48c4906d4', '19ae112f-e515-4416-b315-c79331ea194d', '导入客户维修维护', 'Maintenace/Import', 'WareMis', '05');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('5db0b095-07c6-4295-9d90-47ab39dace0f', '19ae112f-e515-4416-b315-c79331ea194d', '导出客户维修维护', 'Maintenace/Export', 'WareMis', '06');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('f4e17c19-fb64-4700-b5b7-98c6ffc02f31', '5f5f97f3-25b5-445f-9db4-24f02ff9a399', '通讯录联系人', 'Address', 'WareMis', NULL);
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('77f0ea7e-da5c-4da1-a03d-1fd823091607', 'f4e17c19-fb64-4700-b5b7-98c6ffc02f31', '添加通讯录联系人', 'Address/Add', 'WareMis', '01');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('d36feb40-5d78-48b8-8534-dd2c1c8020db', 'f4e17c19-fb64-4700-b5b7-98c6ffc02f31', '删除通讯录联系人', 'Address/Delete', 'WareMis', '02');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('4fde61cb-ffdc-4909-9b2f-2c15902c2e95', 'f4e17c19-fb64-4700-b5b7-98c6ffc02f31', '修改通讯录联系人', 'Address/Edit', 'WareMis', '03');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('14ff4fff-e70b-4123-9099-07d68b654e94', 'f4e17c19-fb64-4700-b5b7-98c6ffc02f31', '查看通讯录联系人', 'Address/View', 'WareMis', '04');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('b5870ba0-ad38-46c3-9278-b4fb671e6573', 'f4e17c19-fb64-4700-b5b7-98c6ffc02f31', '导入通讯录联系人', 'Address/Import', 'WareMis', '05');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('2191e261-2534-4e84-9eaf-eaf777bbb5bd', 'f4e17c19-fb64-4700-b5b7-98c6ffc02f31', '导出通讯录联系人', 'Address/Export', 'WareMis', '06');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('9560efb6-d2ae-4f27-8030-f12bdff29d3a', '5f5f97f3-25b5-445f-9db4-24f02ff9a399', '邮件发送记录', 'MailHistory', 'WareMis', NULL);
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('6616b08f-d98c-4451-a95c-654979de81a9', '9560efb6-d2ae-4f27-8030-f12bdff29d3a', '添加邮件发送记录', 'MailHistory/Add', 'WareMis', '01');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('f9364658-0d6f-4d1d-a16d-193550061642', '9560efb6-d2ae-4f27-8030-f12bdff29d3a', '删除邮件发送记录', 'MailHistory/Delete', 'WareMis', '02');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('5c2db333-5009-4630-a998-4e3e4042d2b8', '9560efb6-d2ae-4f27-8030-f12bdff29d3a', '修改邮件发送记录', 'MailHistory/Edit', 'WareMis', '03');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('b785666c-1d1c-4adc-aca7-1c029ccee311', '9560efb6-d2ae-4f27-8030-f12bdff29d3a', '查看邮件发送记录', 'MailHistory/View', 'WareMis', '04');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('53571467-ab56-4141-bbc8-7bd14f82890f', '9560efb6-d2ae-4f27-8030-f12bdff29d3a', '导入邮件发送记录', 'MailHistory/Import', 'WareMis', '05');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('919ef0e3-0f82-4e73-81b6-db6558f2498c', '9560efb6-d2ae-4f27-8030-f12bdff29d3a', '导出邮件发送记录', 'MailHistory/Export', 'WareMis', '06');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('655ee8d1-b1cf-4ac2-a116-3e6611270dbf', '5f5f97f3-25b5-445f-9db4-24f02ff9a399', '系统广播', 'BroadHistory', 'WareMis', NULL);
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('420cc01f-0716-46c5-9f12-a43175ae460f', '655ee8d1-b1cf-4ac2-a116-3e6611270dbf', '添加系统广播', 'BroadHistory/Add', 'WareMis', '01');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('96a02b35-5c12-4af1-8985-fd6ed28263e8', '655ee8d1-b1cf-4ac2-a116-3e6611270dbf', '删除系统广播', 'BroadHistory/Delete', 'WareMis', '02');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('cc8bb692-5e11-4aaa-95ce-25143672f2bb', '655ee8d1-b1cf-4ac2-a116-3e6611270dbf', '修改系统广播', 'BroadHistory/Edit', 'WareMis', '03');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('b674930b-69fc-4994-a5af-2579609a1fb7', '655ee8d1-b1cf-4ac2-a116-3e6611270dbf', '查看系统广播', 'BroadHistory/View', 'WareMis', '04');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('2d2bb8bd-41f5-4d0f-8fcf-d9362d5931c6', '655ee8d1-b1cf-4ac2-a116-3e6611270dbf', '导入系统广播', 'BroadHistory/Import', 'WareMis', '05');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('fa7eec71-9309-41e3-9257-6756bd766003', '655ee8d1-b1cf-4ac2-a116-3e6611270dbf', '导出系统广播', 'BroadHistory/Export', 'WareMis', '06');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('b9839094-6061-4dc1-8671-f1645829e4de', '5f5f97f3-25b5-445f-9db4-24f02ff9a399', '人员信息', 'Staff', 'WareMis', NULL);
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('c2828a48-9488-4961-a6dd-cc99ea5d8fc6', 'b9839094-6061-4dc1-8671-f1645829e4de', '添加人员信息', 'Staff/Add', 'WareMis', '01');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('58473146-724e-481e-a0cb-03602ceed397', 'b9839094-6061-4dc1-8671-f1645829e4de', '删除人员信息', 'Staff/Delete', 'WareMis', '02');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('2da801a7-1272-4b5c-92d5-2f4ed1d1bbd1', 'b9839094-6061-4dc1-8671-f1645829e4de', '修改人员信息', 'Staff/Edit', 'WareMis', '03');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('d24f4847-e551-4dfd-bdf7-8e63cf38ca81', '5f5f97f3-25b5-445f-9db4-24f02ff9a399', '短信发送记录', 'SMSHistory', 'WareMis', NULL);
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('22686155-24b7-4aff-8526-f6952a73f286', 'd24f4847-e551-4dfd-bdf7-8e63cf38ca81', '添加短信发送记录', 'SMSHistory/Add', 'WareMis', '01');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('927ded80-3494-43d4-8dc5-66500b676805', 'd24f4847-e551-4dfd-bdf7-8e63cf38ca81', '删除短信发送记录', 'SMSHistory/Delete', 'WareMis', '02');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('16756e4f-93c5-4e28-a37e-c24ce77e4f67', 'd24f4847-e551-4dfd-bdf7-8e63cf38ca81', '修改短信发送记录', 'SMSHistory/Edit', 'WareMis', '03');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('f5f74ac5-ba53-4e77-bc39-518aeb472f7e', 'd24f4847-e551-4dfd-bdf7-8e63cf38ca81', '查看短信发送记录', 'SMSHistory/View', 'WareMis', '04');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('10391976-afa7-498b-99a4-047b80399ad9', 'd24f4847-e551-4dfd-bdf7-8e63cf38ca81', '导入短信发送记录', 'SMSHistory/Import', 'WareMis', '05');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('cc560c2c-8293-4264-860b-aee446256971', 'd24f4847-e551-4dfd-bdf7-8e63cf38ca81', '导出短信发送记录', 'SMSHistory/Export', 'WareMis', '06');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('912d72a6-5284-457b-93ff-665d24d519c1', 'b9839094-6061-4dc1-8671-f1645829e4de', '查看人员信息', 'Staff/View', 'WareMis', '04');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('0d894d3d-7e35-4c5b-8017-149f1988ca76', 'b9839094-6061-4dc1-8671-f1645829e4de', '导入人员信息', 'Staff/Import', 'WareMis', '05');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('175e6e6c-5d85-42d2-96f1-86e358d96715', 'b9839094-6061-4dc1-8671-f1645829e4de', '导出人员信息', 'Staff/Export', 'WareMis', '06');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('9ea1d70f-ee33-4df1-8358-91c8817848d6', '5f5f97f3-25b5-445f-9db4-24f02ff9a399', '客户活动', 'Activity', 'WareMis', NULL);
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('a4cd9c9c-190b-4b5c-8c3e-1e1e603ba6fc', '9ea1d70f-ee33-4df1-8358-91c8817848d6', '添加客户活动', 'Activity/Add', 'WareMis', NULL);
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('f9870f06-df97-4d08-b349-00079114b794', '9ea1d70f-ee33-4df1-8358-91c8817848d6', '删除客户活动', 'Activity/Delete', 'WareMis', NULL);
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('940a573e-bcf5-4708-8b57-5519a8142483', '9ea1d70f-ee33-4df1-8358-91c8817848d6', '修改客户活动', 'Activity/Edit', 'WareMis', NULL);
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('62fb56d6-3974-4aa0-b8ba-93f718492b4d', '9ea1d70f-ee33-4df1-8358-91c8817848d6', '查看客户活动', 'Activity/View', 'WareMis', NULL);
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('fed7086c-9ae5-4981-a2ca-78b06ee4cddc', '9ea1d70f-ee33-4df1-8358-91c8817848d6', '导入客户活动', 'Activity/Import', 'WareMis', NULL);
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('a27d557c-1169-4aae-ad0f-d856e9af8a47', '9ea1d70f-ee33-4df1-8358-91c8817848d6', '导出客户活动', 'Activity/Export', 'WareMis', NULL);
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('b48b1e22-f2a2-487c-be99-be1bafabd748', '5f5f97f3-25b5-445f-9db4-24f02ff9a399', '公司通讯录', 'AddressCompany', 'WareMis', NULL);
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('4b100b92-59e8-4198-84c6-d8abadafefd9', 'b48b1e22-f2a2-487c-be99-be1bafabd748', '添加公司通讯录', 'AddressCompany/Add', 'WareMis', '01');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('cab23422-e84d-4eac-bf40-592087db6ca5', 'b48b1e22-f2a2-487c-be99-be1bafabd748', '删除公司通讯录', 'AddressCompany/Delete', 'WareMis', '02');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('11388203-abb4-4f9e-b6c2-b3acd4b078b0', 'b48b1e22-f2a2-487c-be99-be1bafabd748', '修改公司通讯录', 'AddressCompany/Edit', 'WareMis', '03');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('cfdaf831-c73b-407f-a5fd-671a247f1565', 'b48b1e22-f2a2-487c-be99-be1bafabd748', '查看公司通讯录', 'AddressCompany/View', 'WareMis', '04');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('0edaac28-7c36-4e20-b4d4-f35591671e42', 'b48b1e22-f2a2-487c-be99-be1bafabd748', '导入公司通讯录', 'AddressCompany/Import', 'WareMis', '05');
INSERT INTO T_ACL_Function (ID, PID, Name, ControlID, SystemType_ID, SortCode) VALUES ('0fa338b5-c140-47ec-a1ca-4d8987766814', 'b48b1e22-f2a2-487c-be99-be1bafabd748', '导出公司通讯录', 'AddressCompany/Export', 'WareMis', '06');

commit;


INSERT INTO T_ACL_Menu (ID, PID, Name, Icon, Seq, FunctionId, Visible, WinformType, Url, WebIcon, SystemType_ID, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted) VALUES ('313efe70-2047-4e90-8a8e-f35b313c1c22', 'b40caf03-0ef2-46a9-bac0-3a4e9b807ae2', '仓库管理', '', '001', '', 1, '', '#', '', 'WareMis', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_Menu (ID, PID, Name, Icon, Seq, FunctionId, Visible, WinformType, Url, WebIcon, SystemType_ID, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted) VALUES ('3349b2ae-e3d8-4e86-a4d0-537877af9172', 'dce84de3-b4e8-4073-812d-41959b027682', '业务报表', '', '001', '', 1, '', '#', NULL, 'WareMis', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_Menu (ID, PID, Name, Icon, Seq, FunctionId, Visible, WinformType, Url, WebIcon, SystemType_ID, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted) VALUES ('40ada5ea-fc10-4901-901e-1dcfe47e4257', '3349b2ae-e3d8-4e86-a4d0-537877af9172', '业务报表', 'Images\MenuIcon\201.ico', '001', '', 1, 'WHC.WareHouseMis.UI.FrmReports,WHC.Framework.WareHouseDx.dll', '', '', 'WareMis', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_Menu (ID, PID, Name, Icon, Seq, FunctionId, Visible, WinformType, Url, WebIcon, SystemType_ID, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted) VALUES ('485ae618-89d4-4755-a4e3-80026f36df11', '313efe70-2047-4e90-8a8e-f35b313c1c22', '库存查询', 'Images\MenuIcon\103.ico', '003', '', 1, 'WHC.WareHouseMis.UI.FrmStockSearch,WHC.Framework.WareHouseDx.dll', '#', '', 'WareMis', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_Menu (ID, PID, Name, Icon, Seq, FunctionId, Visible, WinformType, Url, WebIcon, SystemType_ID, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted) VALUES ('4e894440-b85f-43d0-b381-aa7b1c423255', 'b40caf03-0ef2-46a9-bac0-3a4e9b807ae2', '数据管理', '', '002', '', 1, '', '#', NULL, 'WareMis', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_Menu (ID, PID, Name, Icon, Seq, FunctionId, Visible, WinformType, Url, WebIcon, SystemType_ID, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted) VALUES ('56a42e4a-209d-4852-8ecf-1f4eb088224c', '313efe70-2047-4e90-8a8e-f35b313c1c22', '备件信息', 'Images\MenuIcon\104.ico', '004', '', 1, 'WHC.WareHouseMis.UI.FrmItemDetail,WHC.Framework.WareHouseDx.dll', '#', '', 'WareMis', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_Menu (ID, PID, Name, Icon, Seq, FunctionId, Visible, WinformType, Url, WebIcon, SystemType_ID, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted) VALUES ('619b2f55-4022-4c9e-b9b4-32bec0de7e3c', '4e894440-b85f-43d0-b381-aa7b1c423255', '初始化业务数据', 'Images\MenuIcon\105.ico', '001', '', 1, 'WHC.WareHouseMis.UI.FrmClearAll,WHC.Framework.WareHouseDx.dll,1', '#', '', 'WareMis', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_Menu (ID, PID, Name, Icon, Seq, FunctionId, Visible, WinformType, Url, WebIcon, SystemType_ID, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted) VALUES ('6c9bf061-e250-4606-8dfa-b94746dbd7b2', 'a323de28-cc17-43d3-a600-276b7c792840', '员工管理', 'Images\MenuIcon\301.ico', '001', '', 1, 'WHC.StaffData.UI.FrmStaff,WHC.StaffDataDx.dll', '#', '', 'WareMis', NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO T_ACL_Menu (ID, PID, Name, Icon, Seq, FunctionId, Visible, WinformType, Url, WebIcon, SystemType_ID, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted) VALUES ('71365086-4633-40e9-aeca-26f4dfb33af9', '313efe70-2047-4e90-8a8e-f35b313c1c22', '备件入库', 'Images\MenuIcon\101.ico', '001', 'Purchase', 1, 'WHC.WareHouseMis.UI.FrmPurchase,WHC.Framework.WareHouseDx.dll', '#', '', 'WareMis', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_Menu (ID, PID, Name, Icon, Seq, FunctionId, Visible, WinformType, Url, WebIcon, SystemType_ID, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted) VALUES ('7602293a-cd01-4352-a2d6-2edcbb23bfd0', '3349b2ae-e3d8-4e86-a4d0-537877af9172', '月结操作', 'Images\MenuIcon\203.ico', '003', '', 1, 'WHC.WareHouseMis.UI.FrmMonthlyStatistic,WHC.Framework.WareHouseDx.dll', '#', '', 'WareMis', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_Menu (ID, PID, Name, Icon, Seq, FunctionId, Visible, WinformType, Url, WebIcon, SystemType_ID, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted) VALUES ('7c4f00f4-8c58-46b5-a0f8-257944f5ccbc', '4e894440-b85f-43d0-b381-aa7b1c423255', '库房管理', 'Images\MenuIcon\207.ICO', '003', '', 1, 'WHC.WareHouseMis.UI.FrmWareHouse,WHC.Framework.WareHouseDx.dll', '#', '', 'WareMis', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_Menu (ID, PID, Name, Icon, Seq, FunctionId, Visible, WinformType, Url, WebIcon, SystemType_ID, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted) VALUES ('7e12179a-bb5c-4803-8372-46cdc724dc29', 'a323de28-cc17-43d3-a600-276b7c792840', '公共通讯录', 'Images\MenuIcon\303.ico', '003', '', 1, 'WHC.ContactBook.UI.FrmAddressCompany,WHC.ContactBookDx.dll', '#', '', 'WareMis', NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO T_ACL_Menu (ID, PID, Name, Icon, Seq, FunctionId, Visible, WinformType, Url, WebIcon, SystemType_ID, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted) VALUES ('7ff3286c-103b-4faa-a2d3-bae41597cffe', '3349b2ae-e3d8-4e86-a4d0-537877af9172', '年度汇总报表', 'Images\MenuIcon\204.ico', '004', '', 1, 'WHC.WareHouseMis.UI.FrmAnnualSummary,WHC.Framework.WareHouseDx.dll', '#', '', 'WareMis', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_Menu (ID, PID, Name, Icon, Seq, FunctionId, Visible, WinformType, Url, WebIcon, SystemType_ID, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted) VALUES ('805ee945-51ac-486d-9066-539cff3910aa', 'a323de28-cc17-43d3-a600-276b7c792840', '个人通讯录', 'Images\MenuIcon\302.ico', '002', '', 1, 'WHC.ContactBook.UI.FrmAddress,WHC.ContactBookDx.dll', '#', '', 'WareMis', NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO T_ACL_Menu (ID, PID, Name, Icon, Seq, FunctionId, Visible, WinformType, Url, WebIcon, SystemType_ID, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted) VALUES ('8e3ceed3-5f0f-4fcb-9834-fbd593bb16e1', '4e894440-b85f-43d0-b381-aa7b1c423255', '数据字典', 'Images\MenuIcon\107.ico', '004', '', 0, 'WHC.Dictionary.UI.FrmDictionary,WHC.DictionaryDx.dll,1', '#', '', 'WareMis', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_Menu (ID, PID, Name, Icon, Seq, FunctionId, Visible, WinformType, Url, WebIcon, SystemType_ID, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted) VALUES ('90d0ffb8-639b-431a-aeb5-836b32dada40', '4e894440-b85f-43d0-b381-aa7b1c423255', '备件及库存导入', 'Images\MenuIcon\106.ico', '002', '', 1, 'WHC.WareHouseMis.UI.FrmImportItemStock,WHC.Framework.WareHouseDx.dll', '#', '', 'WareMis', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_Menu (ID, PID, Name, Icon, Seq, FunctionId, Visible, WinformType, Url, WebIcon, SystemType_ID, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted) VALUES ('a323de28-cc17-43d3-a600-276b7c792840', 'b40caf03-0ef2-46a9-bac0-3a4e9b807ae2', '其他管理', 'Images\MenuIcon\301.ico', '003', '', 1, '', '#', '', 'WareMis', NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO T_ACL_Menu (ID, PID, Name, Icon, Seq, FunctionId, Visible, WinformType, Url, WebIcon, SystemType_ID, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted) VALUES ('a652865d-ae29-4553-a1fd-9f734780e14b', '3349b2ae-e3d8-4e86-a4d0-537877af9172', '图表统计', 'Images\MenuIcon\202.ico', '002', '', 1, 'WHC.WareHouseMis.UI.FrmStatisticReport,WHC.Framework.WareHouseDx.dll', '#', '', 'WareMis', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_Menu (ID, PID, Name, Icon, Seq, FunctionId, Visible, WinformType, Url, WebIcon, SystemType_ID, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted) VALUES ('ac24e152-cf0e-4046-bb06-2222cf172bf2', 'a323de28-cc17-43d3-a600-276b7c792840', '客户管理', 'Images\MenuIcon\207.ICO', '004', '', 1, 'WHC.TestProject.UI.FrmCustomer,WHC.TestProject.UIDX.dll', '#', '', 'WareMis', NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO T_ACL_Menu (ID, PID, Name, Icon, Seq, FunctionId, Visible, WinformType, Url, WebIcon, SystemType_ID, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted) VALUES ('b40caf03-0ef2-46a9-bac0-3a4e9b807ae2', '-1', '仓库管理', '', '001', '', 1, '', '#', NULL, 'WareMis', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_Menu (ID, PID, Name, Icon, Seq, FunctionId, Visible, WinformType, Url, WebIcon, SystemType_ID, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted) VALUES ('dce84de3-b4e8-4073-812d-41959b027682', '-1', '业务报表', '', '002', '', 1, '', '#', NULL, 'WareMis', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_Menu (ID, PID, Name, Icon, Seq, FunctionId, Visible, WinformType, Url, WebIcon, SystemType_ID, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted) VALUES ('dcec159f-d65f-48aa-8c4b-555b7451af7d', '3349b2ae-e3d8-4e86-a4d0-537877af9172', '系统信息提示', 'Images\MenuIcon\205.ico', '005', '', 1, 'WHC.WareHouseMis.UI.FrmSystemMessage,WHC.Framework.WareHouseDx.dll,1', '#', '', 'WareMis', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_Menu (ID, PID, Name, Icon, Seq, FunctionId, Visible, WinformType, Url, WebIcon, SystemType_ID, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted) VALUES ('f43867f5-ee4e-4d43-9ee9-1765031bb052', '313efe70-2047-4e90-8a8e-f35b313c1c22', '备件出库', 'Images\MenuIcon\102.ico', '002', 'TakeOut', 1, 'WHC.WareHouseMis.UI.FrmTakeOut,WHC.Framework.WareHouseDx.dll', '#', '', 'WareMis', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

commit;


INSERT INTO T_ACL_OperationLog (ID, User_ID, LoginName, FullName, Company_ID, CompanyName, TableName, OperationType, Note, IPAddress, MacAddress, CreateTime) VALUES ('0bd63da1-96ae-46d0-81c8-92241eb7ed6c', '1', 'admin', '管理员', '3', '广州分公司', 'T_CRM_Contact', '增加', 'Deleted(是否已删除):0

InterestDemand(利益诉求):

Name(姓名):李经理

Weight(体重):

Dept_ID(所属部门):6

Creator(创建人):1

Introduce(个人简述):

Rank(职务):市场总监

RelationShip(关系):

Importance(重要级别):

Animal(属相):

EditTime(编辑时间):2014-01-28 10:38:04

Email(电子邮件):

District(所在行政区):

BodyType(体型):

Fax(传真):

Editor(编辑人):1

HandNo(编号):1003

Titles(职称):

Eduction(教育程度):

Company_ID(所属公司):3

MarriageStatus(婚姻状态):

QQ:

AttachGUID(附件组别ID):8095f142-bbc2-475c-bb61-8d4f41beaa8a

Smoking(吸烟):

Recognition(认可程度):

CreateTime(创建时间):2014-01-28 10:38:04

Drink(喝酒):

Address(联系人地址):

ZipCode(邮政编码):

Sex(性别):男

Political(政治面貌):

JobType(职业类型):

Customer_ID(客户名称):3FAE7718-EC1D-4EC7-9924-BD0F027C6ACF

Hobby(爱好):

Note(备注):

Height(身高):

Department(所在部门):市场部

Nationality(民族):

IDCarNo(身份证号码):

HealthCondition(健康状况):

CareFocus(关心重点):

Hometown(籍贯):

ResponseDemand(负责需求):

ID(编号):87c675d7-1771-490f-b567-d71cadc73de4

Province(所在省份):

Birthday(出生日期):0001-01-01 00:00:00

Constellation(星座):

GraduateSchool(毕业学校):

Mobile(联系人手机):

OfficePhone(办公电话):

HomeAddress(家庭住址):

City(城市):

Vision(视力):

HomePhone(家庭电话):

Seq(排序序号):


', '192.168.1.244', 'C8:3A:35:C1:14:0F', NULL);
INSERT INTO T_ACL_OperationLog (ID, User_ID, LoginName, FullName, Company_ID, CompanyName, TableName, OperationType, Note, IPAddress, MacAddress, CreateTime) VALUES ('0cd1977c-bfcb-40ed-bfe0-d52a020ac57f', '1', 'admin', '管理员', '3', '广州分公司', 'T_ACL_OU', '修改', 'EditTime(编辑时间):
	 2014-06-16 09:31:09 -> 2014-06-16 09:31:15

PID(父ID):
	 1 -> -1


', '192.168.1.244', 'C8:3A:35:C1:14:0F', NULL);
INSERT INTO T_ACL_OperationLog (ID, User_ID, LoginName, FullName, Company_ID, CompanyName, TableName, OperationType, Note, IPAddress, MacAddress, CreateTime) VALUES ('0e352b7e-d89e-4e5b-8222-41e5b4250f9b', '1', 'admin', '管理员', '3', '广州分公司', 'TB_Address', '修改', 'EditTime(编辑时间):
	 2014-02-13 16:36:47 -> 2014-02-13 16:37:23

Birthdate(出生日期):
	 1900-01-01 00:00:00 -> 0001-01-01 00:00:00


', '192.168.1.244', 'C8:3A:35:C1:14:0F', NULL);
INSERT INTO T_ACL_OperationLog (ID, User_ID, LoginName, FullName, Company_ID, CompanyName, TableName, OperationType, Note, IPAddress, MacAddress, CreateTime) VALUES ('0fe0f221-8132-4924-a12a-59e969dfd25d', '1', 'admin', '管理员', '3', '广州分公司', 'T_CRM_Contact', '修改', 'EditTime(编辑时间):
	 2014-01-28 10:42:50 -> 2014-01-28 10:48:10

QQ:
	  -> 379729222

Birthday(出生日期):
	 1900-01-01 00:00:00 -> 0001-01-01 00:00:00


', '192.168.1.244', 'C8:3A:35:C1:14:0F', NULL);
INSERT INTO T_ACL_OperationLog (ID, User_ID, LoginName, FullName, Company_ID, CompanyName, TableName, OperationType, Note, IPAddress, MacAddress, CreateTime) VALUES ('1', '1', 'admin', '管理员', '3', '广州分公司', 'T_ACL_BlackIP', '修改', 'Name(显示名称):
		 管理员用户禁止IP登陆 -> 管理员用户禁止IP登陆设置
EditTime(编辑时间):
		 2013-12-26 12:14:15 -> 2013-12-26 12:31:51

', NULL, NULL, NULL);
INSERT INTO T_ACL_OperationLog (ID, User_ID, LoginName, FullName, Company_ID, CompanyName, TableName, OperationType, Note, IPAddress, MacAddress, CreateTime) VALUES ('15fac2d7-8d0e-4168-926f-2c4cb7a4c05d', '1', 'admin', '管理员', '3', '广州分公司', 'TB_Address', '增加', 'HomeTelephone(家庭电话):

ID(编号):fc8547bd-25f9-48e0-9458-bb4e7e19c4d6

Other(其他):

EditTime(编辑时间):2014-02-13 16:37:09

QQ(QQ):

Fax(传真号码):

Name(姓名):伍华聪3

Company_ID(所属公司):3

CreateTime(创建时间):2014-02-13 16:37:09

Note(备注):

OfficeTelephone(办公电话):

Mobile(手机):

Creator(创建人):1

Editor(编辑人):1

Birthdate(出生日期):0001-01-01 00:00:00

Sex(性别):男

AddressType(通讯录类型个人,公司):个人

Dept(部门):

Email(电子邮箱):wuhuacong2011@163.com

OfficeAddress(办公地址):

Dept_ID(所属部门):6

Company(公司单位):

HomeAddress(家庭住址):


', '192.168.1.244', 'C8:3A:35:C1:14:0F', NULL);
INSERT INTO T_ACL_OperationLog (ID, User_ID, LoginName, FullName, Company_ID, CompanyName, TableName, OperationType, Note, IPAddress, MacAddress, CreateTime) VALUES ('1e7d9236-bbb4-429d-b5e6-182804953747', '1', 'admin', '管理员', '3', '广州分公司', 'TB_Address', '增加', 'HomeTelephone(家庭电话):

ID(编号):04758556-d054-4850-8daa-f08085db7e79

Other(其他):

EditTime(编辑时间):2014-02-13 16:36:47

QQ(QQ):

Fax(传真号码):

Name(姓名):伍华聪2

Company_ID(所属公司):3

CreateTime(创建时间):2014-02-13 16:36:47

Note(备注):

OfficeTelephone(办公电话):

Mobile(手机):

Creator(创建人):1

Editor(编辑人):1

Birthdate(出生日期):0001-01-01 00:00:00

Sex(性别):男

AddressType(通讯录类型个人,公司):个人

Dept(部门):

Email(电子邮箱):wuhuacong2012@163.com

OfficeAddress(办公地址):

Dept_ID(所属部门):6

Company(公司单位):

HomeAddress(家庭住址):


', '192.168.1.244', 'C8:3A:35:C1:14:0F', NULL);
INSERT INTO T_ACL_OperationLog (ID, User_ID, LoginName, FullName, Company_ID, CompanyName, TableName, OperationType, Note, IPAddress, MacAddress, CreateTime) VALUES ('21662681-de58-4e3b-aa0f-db80f2ebdf71', '1', 'admin', '管理员', '3', '广州分公司', 'T_ACL_OU', '增加', 'Creator_ID(创建人ID):1

Address(机构地址):

OuterPhone(外线电话):

HandNo(机构编码):1001.05.01

SortCode(排序码):1001.05

Name(机构名称):市场一部

Editor_ID(编辑人ID):1

CreateTime(创建时间):2013-12-27 10:44:14

Note(备注):

Creator(创建人):管理员

Deleted(是否已删除):0

Editor(编辑人):管理员

Enabled(有效标志):1

Category(角色分类):部门

EditTime(编辑时间):2013-12-27 10:43:22

InnerPhone(内线电话):

PID(父ID):10


', '192.168.1.244', 'C8:3A:35:C1:14:0F', NULL);
INSERT INTO T_ACL_OperationLog (ID, User_ID, LoginName, FullName, Company_ID, CompanyName, TableName, OperationType, Note, IPAddress, MacAddress, CreateTime) VALUES ('2a7f69ca-7d46-4d28-859d-434562a5881a', '1', 'admin', '管理员', '3', '广州分公司', 'TB_Address', '修改', 'EditTime(编辑时间):
	 2014-02-13 16:37:09 -> 2014-02-13 16:37:19

Birthdate(出生日期):
	 1900-01-01 00:00:00 -> 0001-01-01 00:00:00


', '192.168.1.244', 'C8:3A:35:C1:14:0F', NULL);
INSERT INTO T_ACL_OperationLog (ID, User_ID, LoginName, FullName, Company_ID, CompanyName, TableName, OperationType, Note, IPAddress, MacAddress, CreateTime) VALUES ('2d1be53a-4834-47d0-9006-20aad782202f', '1', 'admin', '管理员', '3', '广州分公司', 'T_ACL_BlackIP', '修改', 'Note(备注):
		 管理员用户禁止在指定的IP登陆
伍华聪 2013年12月26日12:13:41 -> 管理员用户禁止在指定的IP登陆


EditTime(编辑时间):
		 2013-12-26 12:31:51 -> 2013-12-27 10:32:49


', '192.168.1.244', 'C8:3A:35:C1:14:0F', NULL);
INSERT INTO T_ACL_OperationLog (ID, User_ID, LoginName, FullName, Company_ID, CompanyName, TableName, OperationType, Note, IPAddress, MacAddress, CreateTime) VALUES ('2d80db1f-411b-41a2-bad7-4969993e9d91', '1', 'admin', '管理员', '3', '广州分公司', 'T_ACL_OU', '修改', 'EditTime(编辑时间):
	 2014-06-27 13:02:55 -> 2014-06-27 13:03:00

PID(父ID):
	 1 -> -1


', '192.168.1.244', 'C8:3A:35:C1:14:0F', NULL);
INSERT INTO T_ACL_OperationLog (ID, User_ID, LoginName, FullName, Company_ID, CompanyName, TableName, OperationType, Note, IPAddress, MacAddress, CreateTime) VALUES ('3a13a164-0020-4b47-be5e-4e0586166a5d', '1', 'admin', '管理员', '3', '广州分公司', 'TB_Address', '增加', 'HomeTelephone(家庭电话):

ID(编号):a72fb995-597c-4747-9a50-ffe6215137af

Other(其他):

EditTime(编辑时间):2014-02-19 16:27:07

QQ(QQ):

Fax(传真号码):

Name(姓名):张三

Company_ID(所属公司):3

CreateTime(创建时间):2014-02-19 16:27:07

Note(备注):

OfficeTelephone(办公电话):

Mobile(手机):

Creator(创建人):1

Editor(编辑人):1

Birthdate(出生日期):0001-01-01 00:00:00

Sex(性别):

AddressType(通讯录类型个人,公司):个人

Dept(部门):

Email(电子邮箱):test@163.com

OfficeAddress(办公地址):

Dept_ID(所属部门):6

Company(公司单位):

HomeAddress(家庭住址):


', '192.168.1.244', 'C8:3A:35:C1:14:0F', NULL);
INSERT INTO T_ACL_OperationLog (ID, User_ID, LoginName, FullName, Company_ID, CompanyName, TableName, OperationType, Note, IPAddress, MacAddress, CreateTime) VALUES ('5014931a-cd85-48df-90c1-f39390f122da', '1', 'admin', '管理员', '3', '广州分公司', 'T_ACL_BlackIP', '修改', 'IPEnd(IP结束地址):
	 192.168.1.241 -> 192.168.1.244

EditTime(编辑时间):
	 2013-12-27 10:32:49 -> 2014-01-13 11:00:28


', '192.168.1.244', 'C8:3A:35:C1:14:0F', NULL);
INSERT INTO T_ACL_OperationLog (ID, User_ID, LoginName, FullName, Company_ID, CompanyName, TableName, OperationType, Note, IPAddress, MacAddress, CreateTime) VALUES ('55adbaea-9f5b-47b3-aec7-fa31f580336a', '1', 'admin', '管理员', '3', '广州分公司', 'T_ACL_OU', '增加', 'Creator_ID(创建人ID):1

Address(机构地址):

OuterPhone(外线电话):

HandNo(机构编码):2001

SortCode(排序码):1001

Name(机构名称):测试集团

Editor_ID(编辑人ID):1

CreateTime(创建时间):2014-06-16 09:31:09

Note(备注):

Creator(创建人):管理员

Deleted(是否已删除):0

Editor(编辑人):管理员

Enabled(有效标志):1

Category(机构分类):集团

EditTime(编辑时间):2014-06-16 09:31:09

Company_ID(所属公司ID):

InnerPhone(内线电话):

PID(父ID):1

CompanyName(所属公司名称):


', '192.168.1.244', 'C8:3A:35:C1:14:0F', NULL);
INSERT INTO T_ACL_OperationLog (ID, User_ID, LoginName, FullName, Company_ID, CompanyName, TableName, OperationType, Note, IPAddress, MacAddress, CreateTime) VALUES ('60239b12-7492-4b44-a48a-12b94c87c86f', '1', 'admin', '管理员', '3', '广州分公司', 'T_ACL_BlackIP', '修改', 'Forbid(是否禁用):
	 0 -> 1

EditTime(编辑时间):
	 2013-12-24 11:20:36 -> 2014-01-13 11:00:00


', '192.168.1.244', 'C8:3A:35:C1:14:0F', NULL);
INSERT INTO T_ACL_OperationLog (ID, User_ID, LoginName, FullName, Company_ID, CompanyName, TableName, OperationType, Note, IPAddress, MacAddress, CreateTime) VALUES ('60f44afc-e56b-41e5-a1fd-85f8856a01e8', '1', 'admin', '管理员', '3', '广州分公司', 'T_CRM_Contact', '修改', 'EditTime(编辑时间):
	 2014-01-28 10:38:04 -> 2014-01-28 10:42:50

Birthday(出生日期):
	 1900-01-01 00:00:00 -> 0001-01-01 00:00:00

Mobile(联系人手机):
	  -> 13825153389


', '192.168.1.244', 'C8:3A:35:C1:14:0F', NULL);
INSERT INTO T_ACL_OperationLog (ID, User_ID, LoginName, FullName, Company_ID, CompanyName, TableName, OperationType, Note, IPAddress, MacAddress, CreateTime) VALUES ('70e8d9fa-a761-4c95-91ab-4ca7698cc558', '1', 'admin', '管理员', '3', '广州分公司', 'TB_Address', '增加', 'HomeTelephone(家庭电话):

ID(编号):d3890fcd-2af3-4b54-8373-bb407fc027a0

Other(其他):

EditTime(编辑时间):2014-02-13 16:37:51

QQ(QQ):

Fax(传真号码):

Name(姓名):伍华聪4

Company_ID(所属公司):3

CreateTime(创建时间):2014-02-13 16:37:51

Note(备注):

OfficeTelephone(办公电话):

Mobile(手机):

Creator(创建人):1

Editor(编辑人):1

Birthdate(出生日期):0001-01-01 00:00:00

Sex(性别):

AddressType(通讯录类型个人,公司):个人

Dept(部门):

Email(电子邮箱):wuhuacong2013@163.com

OfficeAddress(办公地址):

Dept_ID(所属部门):6

Company(公司单位):

HomeAddress(家庭住址):


', '192.168.1.244', 'C8:3A:35:C1:14:0F', NULL);
INSERT INTO T_ACL_OperationLog (ID, User_ID, LoginName, FullName, Company_ID, CompanyName, TableName, OperationType, Note, IPAddress, MacAddress, CreateTime) VALUES ('7938a811-bd79-4a4f-bad7-be9a90e5b978', '1', 'admin', '管理员', '3', '广州分公司', 'T_ACL_BlackIP', '修改', 'Forbid(是否禁用):
	 0 -> 1

EditTime(编辑时间):
	 2014-01-13 11:00:00 -> 2014-01-28 10:41:52


', '192.168.1.244', 'C8:3A:35:C1:14:0F', NULL);
INSERT INTO T_ACL_OperationLog (ID, User_ID, LoginName, FullName, Company_ID, CompanyName, TableName, OperationType, Note, IPAddress, MacAddress, CreateTime) VALUES ('7d038136-09f0-4001-8107-848edd357bed', '1', 'admin', '管理员', '3', '广州分公司', 'T_ACL_BlackIP', '修改', 'Forbid(是否禁用):
	 0 -> 1

EditTime(编辑时间):
	 2014-01-13 11:00:28 -> 2014-01-28 10:41:55


', '192.168.1.244', 'C8:3A:35:C1:14:0F', NULL);
INSERT INTO T_ACL_OperationLog (ID, User_ID, LoginName, FullName, Company_ID, CompanyName, TableName, OperationType, Note, IPAddress, MacAddress, CreateTime) VALUES ('8304c0f2-1e47-45f3-8121-7f25089dcfe0', '1', 'admin', '管理员', '3', '广州分公司', 'T_ACL_Role', '增加', 'Creator_ID(创建人ID):1

PID(父ID):-1

CompanyName(所属公司名称):北京分公司

SortCode(排序码):2002

Name(角色名称):副总经理

Company_ID(所属公司ID):5

CreateTime(创建时间):2013-12-27 12:04:33

Editor(编辑人):管理员

Creator(创建人):管理员

Note(备注):

Deleted(是否已删除):0

Enabled(有效标志):1

Editor_ID(编辑人ID):1

Category(角色分类):业务角色

EditTime(编辑时间):2013-12-27 12:04:33

HandNo(角色编码):2002


', '192.168.1.244', 'C8:3A:35:C1:14:0F', NULL);
INSERT INTO T_ACL_OperationLog (ID, User_ID, LoginName, FullName, Company_ID, CompanyName, TableName, OperationType, Note, IPAddress, MacAddress, CreateTime) VALUES ('894077dc-1d19-4ce2-be87-098533d44d6d', '1', 'admin', '管理员', '3', '广州分公司', 'T_ACL_OU', '增加', 'Creator_ID(创建人ID):1

Address(机构地址):

OuterPhone(外线电话):

HandNo(机构编码):

SortCode(排序码):1001

Name(机构名称):集团3

Editor_ID(编辑人ID):1

CreateTime(创建时间):2014-06-27 13:02:55

Note(备注):

Creator(创建人):管理员

Deleted(是否已删除):0

Editor(编辑人):管理员

Enabled(有效标志):1

Category(机构分类):集团

EditTime(编辑时间):2014-06-27 13:02:55

Company_ID(所属公司ID):

InnerPhone(内线电话):

PID(父ID):1

CompanyName(所属公司名称):


', '192.168.1.244', 'C8:3A:35:C1:14:0F', NULL);
INSERT INTO T_ACL_OperationLog (ID, User_ID, LoginName, FullName, Company_ID, CompanyName, TableName, OperationType, Note, IPAddress, MacAddress, CreateTime) VALUES ('aa5e6523-f6b8-475c-af70-25298db7f8e5', '1', 'admin', '管理员', '3', '广州分公司', 'T_ACL_OU', '增加', 'Creator_ID(创建人ID):1

Address(机构地址):

OuterPhone(外线电话):

HandNo(机构编码):1001.05.02

SortCode(排序码):1001.05.02

Name(机构名称):市场二部

Editor_ID(编辑人ID):1

CreateTime(创建时间):2013-12-27 10:44:37

Note(备注):

Creator(创建人):管理员

Deleted(是否已删除):0

Editor(编辑人):管理员

Enabled(有效标志):1

Category(角色分类):部门

EditTime(编辑时间):2013-12-27 10:44:37

InnerPhone(内线电话):

PID(父ID):10


', '192.168.1.244', 'C8:3A:35:C1:14:0F', NULL);
INSERT INTO T_ACL_OperationLog (ID, User_ID, LoginName, FullName, Company_ID, CompanyName, TableName, OperationType, Note, IPAddress, MacAddress, CreateTime) VALUES ('b5e96185-740b-485e-925c-b42f37ab5c6a', '1', 'admin', '管理员', '3', '广州分公司', 'T_ACL_OU', '增加', 'Creator_ID(创建人ID):1

Address(机构地址):

OuterPhone(外线电话):

HandNo(机构编码):

SortCode(排序码):1003

Name(机构名称):test

Editor_ID(编辑人ID):1

CreateTime(创建时间):2014-04-08 08:56:58

Note(备注):

Creator(创建人):管理员

Deleted(是否已删除):0

Editor(编辑人):管理员

Enabled(有效标志):1

Category(机构分类):部门

EditTime(编辑时间):2014-04-08 08:56:58

Company_ID(所属公司ID):5

InnerPhone(内线电话):

PID(父ID):5

CompanyName(所属公司名称):北京分公司


', '192.168.1.244', 'C8:3A:35:C1:14:0F', NULL);
INSERT INTO T_ACL_OperationLog (ID, User_ID, LoginName, FullName, Company_ID, CompanyName, TableName, OperationType, Note, IPAddress, MacAddress, CreateTime) VALUES ('b7549d38-6121-40b2-b420-ffc144a05bc3', '1', 'admin', '管理员', '3', '广州分公司', 'T_ACL_Role', '修改', 'Name(角色名称):
	 测试部门 -> 测试

EditTime(编辑时间):
	 2014-06-16 11:18:06 -> 2014-06-16 11:20:09


', '192.168.1.244', 'C8:3A:35:C1:14:0F', NULL);
INSERT INTO T_ACL_OperationLog (ID, User_ID, LoginName, FullName, Company_ID, CompanyName, TableName, OperationType, Note, IPAddress, MacAddress, CreateTime) VALUES ('b7ed3b6a-a7e9-4746-ba73-19f516ad5f64', '1', 'admin', '管理员', '3', '广州分公司', 'T_ACL_Role', '修改', 'SortCode(排序码):
		 2002 -> 3001.02

EditTime(编辑时间):
		 2013-12-27 12:04:33 -> 2013-12-27 12:05:01

HandNo(角色编码):
		 2002 -> 3002


', '192.168.1.244', 'C8:3A:35:C1:14:0F', NULL);
INSERT INTO T_ACL_OperationLog (ID, User_ID, LoginName, FullName, Company_ID, CompanyName, TableName, OperationType, Note, IPAddress, MacAddress, CreateTime) VALUES ('c38b1b3e-27ae-443a-91e3-1d948ad6195f', '1', 'admin', '管理员', '3', '广州分公司', 'T_ACL_Role', '增加', 'Creator_ID(创建人ID):1

PID(父ID):-1

CompanyName(所属公司名称):测试集团

SortCode(排序码):2001.01

Name(角色名称):测试部门

Company_ID(所属公司ID):28

CreateTime(创建时间):2014-06-16 11:18:06

Editor(编辑人):管理员

Creator(创建人):管理员

Note(备注):

Deleted(是否已删除):0

Enabled(有效标志):1

Editor_ID(编辑人ID):1

Category(角色分类):系统角色

EditTime(编辑时间):2014-06-16 11:18:06

HandNo(角色编码):2001.01


', '192.168.1.244', 'C8:3A:35:C1:14:0F', NULL);
INSERT INTO T_ACL_OperationLog (ID, User_ID, LoginName, FullName, Company_ID, CompanyName, TableName, OperationType, Note, IPAddress, MacAddress, CreateTime) VALUES ('c964b876-ac2c-4179-a4f4-5eb17f7b3b7f', '1', 'admin', '管理员', '3', '广州分公司', 'T_ACL_OU', '修改', 'EditTime(编辑时间):
	 2013-12-27 10:43:22 -> 2013-12-31 12:37:20


', '192.168.1.244', 'C8:3A:35:C1:14:0F', NULL);
INSERT INTO T_ACL_OperationLog (ID, User_ID, LoginName, FullName, Company_ID, CompanyName, TableName, OperationType, Note, IPAddress, MacAddress, CreateTime) VALUES ('ce5af769-16e8-4cff-8f80-5ec2cbe15102', '1', 'admin', '管理员', '3', '广州分公司', 'TB_Address', '修改', 'EditTime(编辑时间):
	 2014-02-13 16:37:51 -> 2014-02-13 16:37:57

Birthdate(出生日期):
	 1900-01-01 00:00:00 -> 0001-01-01 00:00:00

Sex(性别):
	  -> 男


', '192.168.1.244', 'C8:3A:35:C1:14:0F', NULL);
INSERT INTO T_ACL_OperationLog (ID, User_ID, LoginName, FullName, Company_ID, CompanyName, TableName, OperationType, Note, IPAddress, MacAddress, CreateTime) VALUES ('da8f245f-2b94-488b-9c4a-59e4bcf5c066', '1', 'admin', '管理员', '3', '广州分公司', 'T_ACL_OU', '增加', 'Creator_ID(创建人ID):1

Address(机构地址):

OuterPhone(外线电话):

HandNo(机构编码):

SortCode(排序码):1001

Name(机构名称):集团2

Editor_ID(编辑人ID):1

CreateTime(创建时间):2014-06-27 13:02:41

Note(备注):

Creator(创建人):管理员

Deleted(是否已删除):0

Editor(编辑人):管理员

Enabled(有效标志):1

Category(机构分类):集团

EditTime(编辑时间):2014-06-27 13:02:41

Company_ID(所属公司ID):

InnerPhone(内线电话):

PID(父ID):-1

CompanyName(所属公司名称):


', '192.168.1.244', 'C8:3A:35:C1:14:0F', NULL);
INSERT INTO T_ACL_OperationLog (ID, User_ID, LoginName, FullName, Company_ID, CompanyName, TableName, OperationType, Note, IPAddress, MacAddress, CreateTime) VALUES ('eb1c55c7-522c-45df-b976-94096f586db8', '1', 'admin', '管理员', '3', '广州分公司', 'T_ACL_OU', '修改', 'EditTime(编辑时间):
	 2013-12-27 10:44:37 -> 2013-12-31 12:37:24

Company_ID(所属公司ID):
	  -> 3

CompanyName(所属公司名称):
	  -> 广州分公司


', '192.168.1.244', 'C8:3A:35:C1:14:0F', NULL);

INSERT INTO T_ACL_OperationLogSetting (ID, Forbid, TableName, InsertLog, DeleteLog, UpdateLog, Note, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime) VALUES ('08391d86-4075-46f5-b142-c76533321f37', 0, 'T_CRM_Visit', 1, 1, 1, '', '管理员', '1', NULL, '管理员', '1', NULL);
INSERT INTO T_ACL_OperationLogSetting (ID, Forbid, TableName, InsertLog, DeleteLog, UpdateLog, Note, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime) VALUES ('0dfbdc6e-b84b-45dc-9bd6-6620a9d81f3a', 0, 'T_CRM_Sell', 1, 1, 1, '', '管理员', '1', NULL, '管理员', '1', NULL);
INSERT INTO T_ACL_OperationLogSetting (ID, Forbid, TableName, InsertLog, DeleteLog, UpdateLog, Note, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime) VALUES ('1', 0, 'T_ACL_BlackIP', 1, 1, 1, NULL, '管理员', '1', NULL, '管理员', '1', NULL);
INSERT INTO T_ACL_OperationLogSetting (ID, Forbid, TableName, InsertLog, DeleteLog, UpdateLog, Note, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime) VALUES ('152aaade-b49e-4683-98e6-96f28edf8c69', 0, 'T_CRM_CustomerGroup', 1, 1, 1, '', '管理员', '1', NULL, '管理员', '1', NULL);
INSERT INTO T_ACL_OperationLogSetting (ID, Forbid, TableName, InsertLog, DeleteLog, UpdateLog, Note, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime) VALUES ('1a37e69d-44af-408b-ba9c-6d9e07328dca', 0, 'T_CRM_AfterSell', 1, 1, 1, '', '管理员', '1', NULL, '管理员', '1', NULL);
INSERT INTO T_ACL_OperationLogSetting (ID, Forbid, TableName, InsertLog, DeleteLog, UpdateLog, Note, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime) VALUES ('1e4d161c-2318-4fd6-bd90-6ab3c7f1666d', 0, 'T_CRM_Manufacturer', 1, 1, 1, '', '管理员', '1', NULL, '管理员', '1', NULL);
INSERT INTO T_ACL_OperationLogSetting (ID, Forbid, TableName, InsertLog, DeleteLog, UpdateLog, Note, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime) VALUES ('2', 0, 'T_ACL_OU', 1, 1, 1, NULL, '管理员', '1', NULL, '管理员', '1', NULL);
INSERT INTO T_ACL_OperationLogSetting (ID, Forbid, TableName, InsertLog, DeleteLog, UpdateLog, Note, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime) VALUES ('2004b6ed-b77f-46d3-ac8a-07f1dd28a19c', 0, 'T_CRM_Contact', 1, 1, 1, '', '管理员', '1', NULL, '管理员', '1', NULL);
INSERT INTO T_ACL_OperationLogSetting (ID, Forbid, TableName, InsertLog, DeleteLog, UpdateLog, Note, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime) VALUES ('3', 0, 'T_ACL_Role', 1, 1, 1, '', '管理员', '1', NULL, '管理员', '1', NULL);
INSERT INTO T_ACL_OperationLogSetting (ID, Forbid, TableName, InsertLog, DeleteLog, UpdateLog, Note, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime) VALUES ('31062f11-d47e-4b96-a4cf-6dc82d49d893', 0, 'T_CRM_ContactGroup', 1, 1, 1, '', '管理员', '1', NULL, '管理员', '1', NULL);
INSERT INTO T_ACL_OperationLogSetting (ID, Forbid, TableName, InsertLog, DeleteLog, UpdateLog, Note, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime) VALUES ('3c02cfb0-9dbe-47fa-a16a-48b02145f978', 0, 'T_CRM_Maintenace', 1, 1, 1, '', '管理员', '1', NULL, '管理员', '1', NULL);
INSERT INTO T_ACL_OperationLogSetting (ID, Forbid, TableName, InsertLog, DeleteLog, UpdateLog, Note, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime) VALUES ('3ea863c0-09ec-4ec0-aa9b-7d4efa8e98e4', 0, 'T_CRM_Chance', 1, 1, 1, '', '管理员', '1', NULL, '管理员', '1', NULL);
INSERT INTO T_ACL_OperationLogSetting (ID, Forbid, TableName, InsertLog, DeleteLog, UpdateLog, Note, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime) VALUES ('4cca38f1-f043-4aaa-8ddc-2789f977ac12', 0, 'T_CRM_Complaint', 1, 1, 1, '', '管理员', '1', NULL, '管理员', '1', NULL);
INSERT INTO T_ACL_OperationLogSetting (ID, Forbid, TableName, InsertLog, DeleteLog, UpdateLog, Note, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime) VALUES ('63ba3db1-bd5b-41b0-9470-e014fcbcbc9c', 0, 'T_CRM_Customer', 1, 1, 1, '', '管理员', '1', NULL, '管理员', '1', NULL);
INSERT INTO T_ACL_OperationLogSetting (ID, Forbid, TableName, InsertLog, DeleteLog, UpdateLog, Note, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime) VALUES ('8489439c-bb0e-4749-aacc-c639ad92fd65', 0, 'TB_Address', 1, 1, 1, '', '管理员', '1', NULL, '管理员', '1', NULL);
INSERT INTO T_ACL_OperationLogSetting (ID, Forbid, TableName, InsertLog, DeleteLog, UpdateLog, Note, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime) VALUES ('979c2943-142a-4678-ac8d-771a004d9399', 0, 'T_CRM_Product', 1, 1, 1, '', '管理员', '1', NULL, '管理员', '1', NULL);
INSERT INTO T_ACL_OperationLogSetting (ID, Forbid, TableName, InsertLog, DeleteLog, UpdateLog, Note, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime) VALUES ('a517227b-5ca1-43fd-afdc-38b8ee51b756', 0, 'T_CRM_Competitor', 1, 1, 1, '', '管理员', '1', NULL, '管理员', '1', NULL);
INSERT INTO T_ACL_OperationLogSetting (ID, Forbid, TableName, InsertLog, DeleteLog, UpdateLog, Note, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime) VALUES ('b41dde47-eb69-4098-8048-6d2233add649', 0, 'T_CRM_Follow', 1, 1, 1, '', '管理员', '1', NULL, '管理员', '1', NULL);
INSERT INTO T_ACL_OperationLogSetting (ID, Forbid, TableName, InsertLog, DeleteLog, UpdateLog, Note, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime) VALUES ('b7686c64-5fa9-49b7-ba36-fe3039b43a82', 0, 'T_CRM_Invoice', 1, 1, 1, '', '管理员', '1', NULL, '管理员', '1', NULL);
INSERT INTO T_ACL_OperationLogSetting (ID, Forbid, TableName, InsertLog, DeleteLog, UpdateLog, Note, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime) VALUES ('c64eed21-f4c5-4118-998b-a71223c38bfa', 0, 'T_CRM_Quotation', 1, 1, 1, '', '管理员', '1', NULL, '管理员', '1', NULL);
INSERT INTO T_ACL_OperationLogSetting (ID, Forbid, TableName, InsertLog, DeleteLog, UpdateLog, Note, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime) VALUES ('d1af6ddd-d2a1-4c5f-81cb-9c92fa4068e9', 0, 'T_CRM_Activity', 1, 1, 1, '', '管理员', '1', NULL, '管理员', '1', NULL);
INSERT INTO T_ACL_OperationLogSetting (ID, Forbid, TableName, InsertLog, DeleteLog, UpdateLog, Note, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime) VALUES ('d9e86cfe-a8ab-4f27-9c2f-740958ff653d', 0, 'T_CRM_FileData', 1, 1, 1, '', '管理员', '1', NULL, '管理员', '1', NULL);


commit;


INSERT INTO T_ACL_OU (ID, PID, HandNo, Name, SortCode, Category, Address, OuterPhone, InnerPhone, Note, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Enabled, Company_ID, CompanyName) VALUES (1, -1, '1001', '爱奇迪集团', '1001', '集团', NULL, NULL, NULL, NULL, '管理员', '1', NULL, '管理员', '1', NULL, 0, 1, NULL, NULL);
INSERT INTO T_ACL_OU (ID, PID, HandNo, Name, SortCode, Category, Address, OuterPhone, InnerPhone, Note, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Enabled, Company_ID, CompanyName) VALUES (3, 1, '1001', '广州分公司', '1001', '公司', '', '', '', '', '管理员', '1', NULL, '管理员', '1', NULL, 0, 1, NULL, NULL);
INSERT INTO T_ACL_OU (ID, PID, HandNo, Name, SortCode, Category, Address, OuterPhone, InnerPhone, Note, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Enabled, Company_ID, CompanyName) VALUES (4, 1, '1002', '上海分公司', '1002', '公司', '', '', '', '', '管理员', '1', NULL, '管理员', '1', NULL, 0, 1, NULL, NULL);
INSERT INTO T_ACL_OU (ID, PID, HandNo, Name, SortCode, Category, Address, OuterPhone, InnerPhone, Note, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Enabled, Company_ID, CompanyName) VALUES (5, 1, '1003', '北京分公司', '1003', '公司', '', '', '', '', '管理员', '1', NULL, '管理员', '1', NULL, 0, 1, NULL, NULL);
INSERT INTO T_ACL_OU (ID, PID, HandNo, Name, SortCode, Category, Address, OuterPhone, InnerPhone, Note, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Enabled, Company_ID, CompanyName) VALUES (6, 3, '1001.01', '总经办', '1001.01', '部门', '', '', '', '', '管理员', '1', NULL, '管理员', '1', NULL, 0, 1, '3', '广州分公司');
INSERT INTO T_ACL_OU (ID, PID, HandNo, Name, SortCode, Category, Address, OuterPhone, InnerPhone, Note, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Enabled, Company_ID, CompanyName) VALUES (7, 3, '1001.02', '财务部', '1001.02', '部门', '', '', '', '', '管理员', '1', NULL, '管理员', '1', NULL, 0, 1, '3', '广州分公司');
INSERT INTO T_ACL_OU (ID, PID, HandNo, Name, SortCode, Category, Address, OuterPhone, InnerPhone, Note, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Enabled, Company_ID, CompanyName) VALUES (8, 3, '1001.03', '工程部', '1001.03', '部门', '', '', '', '', '管理员', '1', NULL, '管理员', '1', NULL, 0, 1, '3', '广州分公司');
INSERT INTO T_ACL_OU (ID, PID, HandNo, Name, SortCode, Category, Address, OuterPhone, InnerPhone, Note, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Enabled, Company_ID, CompanyName) VALUES (9, 3, '1001.04', '产品研发部', '1001.04', '部门', '', '', '', '', '管理员', '1', NULL, '管理员', '1', NULL, 0, 1, '3', '广州分公司');
INSERT INTO T_ACL_OU (ID, PID, HandNo, Name, SortCode, Category, Address, OuterPhone, InnerPhone, Note, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Enabled, Company_ID, CompanyName) VALUES (10, 3, '1001.05', '市场部', '1001.05', '部门', '', '', '', '', '管理员', '1', NULL, '管理员', '1', NULL, 0, 1, '3', '广州分公司');
INSERT INTO T_ACL_OU (ID, PID, HandNo, Name, SortCode, Category, Address, OuterPhone, InnerPhone, Note, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Enabled, Company_ID, CompanyName) VALUES (11, 3, '1001.06', '综合部', '1001.06', '部门', '', '', '', '', '管理员', '1', NULL, '管理员', '1', NULL, 0, 1, '3', '广州分公司');
INSERT INTO T_ACL_OU (ID, PID, HandNo, Name, SortCode, Category, Address, OuterPhone, InnerPhone, Note, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Enabled, Company_ID, CompanyName) VALUES (12, 3, '1001.07', '生产部', '1001.07', '部门', '', '', '', '', '管理员', '1', NULL, '管理员', '1', NULL, 0, 1, '3', '广州分公司');
INSERT INTO T_ACL_OU (ID, PID, HandNo, Name, SortCode, Category, Address, OuterPhone, InnerPhone, Note, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Enabled, Company_ID, CompanyName) VALUES (13, 3, '1001.08', '人力资源部', '1001.08', '部门', '', '', '', '', '管理员', '1', NULL, '管理员', '1', NULL, 0, 1, '3', '广州分公司');
INSERT INTO T_ACL_OU (ID, PID, HandNo, Name, SortCode, Category, Address, OuterPhone, InnerPhone, Note, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Enabled, Company_ID, CompanyName) VALUES (14, 9, '1001.04.01', '开发一组', '1001.04.01', '工作组', '', '', '', '', '管理员', '1', NULL, '管理员', '1', NULL, 0, 1, '3', '广州分公司');
INSERT INTO T_ACL_OU (ID, PID, HandNo, Name, SortCode, Category, Address, OuterPhone, InnerPhone, Note, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Enabled, Company_ID, CompanyName) VALUES (15, 9, '1001.04.02', '开发二组', '1001.04.02', '工作组', '', '', '', '', '管理员', '1', NULL, '管理员', '1', NULL, 0, 1, '3', '广州分公司');
INSERT INTO T_ACL_OU (ID, PID, HandNo, Name, SortCode, Category, Address, OuterPhone, InnerPhone, Note, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Enabled, Company_ID, CompanyName) VALUES (16, 9, '1001.04.03', '测试组', '1001.04.03', '工作组', '', '', '', '', '管理员', '1', NULL, '管理员', '1', NULL, 0, 1, '3', '广州分公司');
INSERT INTO T_ACL_OU (ID, PID, HandNo, Name, SortCode, Category, Address, OuterPhone, InnerPhone, Note, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Enabled, Company_ID, CompanyName) VALUES (19, 4, '1002.01', '财务部', '1002.01', '部门', '', '', '', '', '管理员', '1', NULL, '管理员', '1', NULL, 0, 1, '4', '上海分公司');
INSERT INTO T_ACL_OU (ID, PID, HandNo, Name, SortCode, Category, Address, OuterPhone, InnerPhone, Note, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Enabled, Company_ID, CompanyName) VALUES (20, 4, '1002.02', '市场部', '1002.02', '部门', '', '', '', '', '管理员', '1', NULL, '管理员', '1', NULL, 0, 1, '4', '上海分公司');
INSERT INTO T_ACL_OU (ID, PID, HandNo, Name, SortCode, Category, Address, OuterPhone, InnerPhone, Note, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Enabled, Company_ID, CompanyName) VALUES (21, 5, '1003.01', '财务部', '1003.01', '部门', '', '', '', '', '管理员', '1', NULL, '管理员', '1', NULL, 0, 1, '5', '北京分公司');
INSERT INTO T_ACL_OU (ID, PID, HandNo, Name, SortCode, Category, Address, OuterPhone, InnerPhone, Note, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Enabled, Company_ID, CompanyName) VALUES (22, 5, '1003.02', '市场部', '1003.02', '部门', '', '', '', '', '管理员', '1', NULL, '管理员', '1', NULL, 0, 1, '5', '北京分公司');
INSERT INTO T_ACL_OU (ID, PID, HandNo, Name, SortCode, Category, Address, OuterPhone, InnerPhone, Note, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Enabled, Company_ID, CompanyName) VALUES (23, 10, '1001.05.01', '市场一部', '1001.05', '部门', '', '', '', '', '管理员', '1', NULL, '管理员', '1', NULL, 0, 1, '3', '广州分公司');
INSERT INTO T_ACL_OU (ID, PID, HandNo, Name, SortCode, Category, Address, OuterPhone, InnerPhone, Note, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Enabled, Company_ID, CompanyName) VALUES (24, 10, '1001.05.02', '市场二部', '1001.05.02', '部门', '', '', '', '', '管理员', '1', NULL, '管理员', '1', NULL, 0, 1, '3', '广州分公司');


commit;

INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (1, -1, '1001', 'admin', 'YwJmAGUCbAhvCm4IaQpoAGgCbwBuAmUIZApnCH4KUQBQAlcAVgJdCFwKWwhWClkAWAI=', '管理员', '管理员', 0, '技术总监', '', '18620292076', '', '', 'wuhuacong@163.com', '', '广州市白云区同和路**小区**号', '男', NULL, '6966254', '', '已审核', NULL, '系统管理员', '', '6', '总经办', '3', '广州分公司', 'admin', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, '192.168.1.244', NULL, 'C8:3A:35:C1:14:0F', '192.168.1.244', NULL, 'C8:3A:35:C1:14:0F', NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (2, -1, '100683', '100683', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '吴珏妹', '', 0, NULL, NULL, '13811181124', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '8', '', '3', '广州分公司', '100683', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (3, -1, '100464', '100464', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '徐晓悦', '', 0, NULL, NULL, '13861300928', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '8', '', '3', '广州分公司', '100464', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (4, -1, '100388', '100388', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '董春燕', '', 0, NULL, NULL, '15003485298', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '8', '', '3', '广州分公司', '100388', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (5, -1, '100552', '100552', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '董梅晴', '', 0, NULL, NULL, '18638540657', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '8', '', '3', '广州分公司', '100552', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (6, -1, '100104', '100104', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '刘志升', '', 0, NULL, NULL, '13757195758', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '8', '', '3', '广州分公司', '100104', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (7, -1, '100783', '100783', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '龚珍蕾', '', 0, NULL, NULL, '13956936408', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '8', '', '3', '广州分公司', '100783', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (8, -1, '100569', '100569', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '夏晶', '', 0, NULL, NULL, '18155152125', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '8', '', '3', '广州分公司', '100569', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (9, -1, '100763', '100763', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '杨梅', '', 0, NULL, NULL, '13681463018', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '8', '', '3', '广州分公司', '100763', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (10, -1, '100727', '100727', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '傅丹', '', 0, NULL, NULL, '13810911691', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '8', '', '3', '广州分公司', '100727', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (11, -1, '100386', '100386', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '于晓', '', 0, NULL, NULL, '13623660596', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '8', '', '3', '广州分公司', '100386', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (12, -1, '100153', '100153', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '黄春连', '', 0, NULL, NULL, '13682163394', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '8', '', '3', '广州分公司', '100153', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (13, -1, '100100', '100100', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '彭岩', '', 0, NULL, NULL, '13735846272', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '8', '', '3', '广州分公司', '100100', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (14, -1, '100501', '100501', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '杨晓萌', '', 0, NULL, NULL, '15295793675', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '8', '', '3', '广州分公司', '100501', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (15, -1, '100720', '100720', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '陈菊美', '', 0, NULL, NULL, '13466664090', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '8', '', '3', '广州分公司', '100720', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (16, -1, '100777', '100777', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '吴可', '', 0, NULL, NULL, '15055778899', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '8', '', '3', '广州分公司', '100777', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (17, -1, '100076', '100076', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '刘敏霞', '', 0, NULL, NULL, '13806603588', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '8', '', '3', '广州分公司', '100076', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (18, -1, '100001', '100001', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '陈莉', '', 0, NULL, NULL, '13810107123', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '8', '', '3', '广州分公司', '100001', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (19, -1, '100374', '100374', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '黄伟', '', 0, NULL, NULL, '18691126041', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '8', '', '3', '广州分公司', '100374', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (20, -1, '100513', '100513', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '江宁', '', 0, NULL, NULL, '13815064080', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '8', '', '3', '广州分公司', '100513', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (21, -1, '100022', '100022', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '周黎晶', '', 0, NULL, NULL, '13452332225', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '8', '', '3', '广州分公司', '100022', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (22, -1, '100139', '100139', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '赖凤琪', '', 0, NULL, NULL, '13820516908', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '8', '', '3', '广州分公司', '100139', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (23, -1, '100183', '100183', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', 'j江颖', '', 0, NULL, NULL, '15928107907', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '8', '', '3', '广州分公司', '100183', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (24, -1, '100169', '100169', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '吴珣', '', 0, NULL, NULL, '13550175234', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '8', '', '3', '广州分公司', '100169', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (25, -1, '100625', '100625', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '张洁', '', 0, NULL, NULL, '13679771493', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '8', '', '3', '广州分公司', '100625', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (26, -1, '100121', '100121', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '马骋', '', 0, NULL, NULL, '15824278925', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '8', '', '3', '广州分公司', '100121', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (27, -1, '100241', '100241', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '黄晋国', '', 0, NULL, NULL, '13817793670', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '8', '', '3', '广州分公司', '100241', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (28, -1, '100677', '100677', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '蔡梦婕', '', 0, NULL, NULL, '15901007075', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '8', '', '3', '广州分公司', '100677', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (29, -1, '100406', '100406', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '赵亚琼', '', 0, NULL, NULL, '18661717886', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '8', '', '3', '广州分公司', '100406', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (30, -1, '100047', '100047', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '胡静', '', 0, NULL, NULL, '13867168168', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '8', '', '3', '广州分公司', '100047', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (31, -1, '100280', '100280', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '王惠强', '', 0, NULL, NULL, '15900988227', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '8', '', '3', '广州分公司', '100280', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (32, -1, '100633', '100633', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '周培琼', '', 0, NULL, NULL, '15002528003', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '8', '', '3', '广州分公司', '100633', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (33, -1, '100237', '100237', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '赵炎', '', 0, NULL, NULL, '13818143187', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '8', '', '3', '广州分公司', '100237', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (34, -1, '100214', '100214', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '林俊', '', 0, NULL, NULL, '13601610211', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '8', '', '3', '广州分公司', '100214', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (35, -1, '100084', '100084', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '周莹', '', 0, NULL, NULL, '13456285391', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '8', '', '3', '广州分公司', '100084', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (36, -1, '100210', '100210', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '何泳祺', '', 0, NULL, NULL, '18621625685', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '8', '', '3', '广州分公司', '100210', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (37, -1, '100553', '100553', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '蒋秀萍', '', 0, NULL, NULL, '13592520130', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '8', '', '3', '广州分公司', '100553', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (38, -1, '100158', '100158', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '许洪', '', 0, NULL, NULL, '15162636627', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '8', '', '3', '广州分公司', '100158', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (39, -1, '100303', '100303', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '丁莉莉', '', 0, NULL, NULL, '15801838675', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '8', '', '3', '广州分公司', '100303', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (40, -1, '100126', '100126', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '储娜芳', '', 0, NULL, NULL, '18687946637', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '8', '', '3', '广州分公司', '100126', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (41, -1, '100042', '100042', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '陈超', '', 0, NULL, NULL, '18668111157', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '8', '', '3', '广州分公司', '100042', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (42, -1, '100391', '100391', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '王金华', '', 0, NULL, NULL, '13793361918', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '8', '', '3', '广州分公司', '100391', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (43, -1, '100779', '100779', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '高培蓓', '', 0, NULL, NULL, '13865629154', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '8', '', '3', '广州分公司', '100779', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (44, -1, '100172', '100172', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '谢清华', '', 0, NULL, NULL, '18381116793', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '8', '', '3', '广州分公司', '100172', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (45, -1, '100120', '100120', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '李贯夏', '', 0, NULL, NULL, '18957810047', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '8', '', '3', '广州分公司', '100120', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (46, -1, '100571', '100571', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '冷维', '', 0, NULL, NULL, '15878750338', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '8', '', '3', '广州分公司', '100571', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (47, -1, '100218', '100218', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '廖康', '', 0, NULL, NULL, '13564365107', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '8', '', '3', '广州分公司', '100218', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (48, -1, '100255', '100255', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '潘杰', '', 0, NULL, NULL, '13621877511', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '8', '', '3', '广州分公司', '100255', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (49, -1, '100556', '100556', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '郭玉华', '', 0, NULL, NULL, '18600383297', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '8', '', '3', '广州分公司', '100556', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (50, -1, '100325', '100325', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '童勇', '', 0, NULL, NULL, '13661507072', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '8', '', '3', '广州分公司', '100325', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (51, -1, '100077', '100077', 'MQA2BDcEPAg/CDoMOwwoAHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '刘代英', '', 0, '', '', '18267777126', '', '', '', '', '', '女', NULL, '', '', '', NULL, '', '', '14', '', '3', '广州分公司', '100077', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (52, -1, '100616', '100616', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '董飞', '', 0, NULL, NULL, '13676201563', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '14', '', '3', '广州分公司', '100616', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (53, -1, '100012', '100012', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '朱丽华', '', 0, NULL, NULL, '13661246623', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '14', '', '3', '广州分公司', '100012', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (54, -1, '100290', '100290', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '卢海燕', '', 0, NULL, NULL, '13671913013', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '14', '', '3', '广州分公司', '100290', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (55, -1, '100543', '100543', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '殷雷', '', 0, NULL, NULL, '18672233993', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '14', '', '3', '广州分公司', '100543', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (56, -1, '100511', '100511', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '贺凌燕', '', 0, NULL, NULL, '13401376106', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '14', '', '3', '广州分公司', '100511', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (57, -1, '100162', '100162', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '王笑明', '', 0, NULL, NULL, '13584418839', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '14', '', '3', '广州分公司', '100162', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (58, -1, '100653', '100653', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '安宁宁', '', 0, NULL, NULL, '13950210275', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '14', '', '3', '广州分公司', '100653', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (59, -1, '100615', '100615', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '李德欣', '', 0, NULL, NULL, '13631417877', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '14', '', '3', '广州分公司', '100615', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (60, -1, '100564', '100564', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '陈燕华', '', 0, NULL, NULL, '13811491100', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '14', '', '3', '广州分公司', '100564', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (61, -1, '100155', '100155', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '江雪玉', '', 0, NULL, NULL, '13920739389', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '14', '', '3', '广州分公司', '100155', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (62, -1, '100233', '100233', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '张岳峰', '', 0, NULL, NULL, '13818139960', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '14', '', '3', '广州分公司', '100233', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (63, -1, '100184', '100184', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '杨婷', '', 0, NULL, NULL, '18030863278', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '14', '', '3', '广州分公司', '100184', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (64, -1, '100442', '100442', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '范佩英', '', 0, NULL, NULL, '15070061126', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '14', '', '3', '广州分公司', '100442', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (65, -1, '100557', '100557', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '许洁', '', 0, NULL, NULL, '18509252709', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '14', '', '3', '广州分公司', '100557', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (66, -1, '100187', '100187', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '谭泳安', '', 0, NULL, NULL, '13518163306', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '14', '', '3', '广州分公司', '100187', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (67, -1, '100767', '100767', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '吴建英', '', 0, NULL, NULL, '18811052255', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '14', '', '3', '广州分公司', '100767', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (68, -1, '100423', '100423', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '王春', '', 0, NULL, NULL, '18601140716', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '14', '', '3', '广州分公司', '100423', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (69, -1, '100737', '100737', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '林茜', '', 0, NULL, NULL, '15110151960', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '14', '', '3', '广州分公司', '100737', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (70, -1, '100211', '100211', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '王涛', '', 0, NULL, NULL, '13918319818', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '14', '', '3', '广州分公司', '100211', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (71, -1, '100030', '100030', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '韩冬', '', 0, NULL, NULL, '13594136753', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '14', '', '3', '广州分公司', '100030', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (72, -1, '100348', '100348', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '王嘉', '', 0, NULL, NULL, '13761631826', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '14', '', '3', '广州分公司', '100348', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (73, -1, '100199', '100199', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '孙红', '', 0, NULL, NULL, '13636675987', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '14', '', '3', '广州分公司', '100199', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (74, -1, '100240', '100240', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '孟羽', '', 0, NULL, NULL, '13774201813', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '14', '', '3', '广州分公司', '100240', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (75, -1, '100725', '100725', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '吴德民', '', 0, NULL, NULL, '13911115696', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '14', '', '3', '广州分公司', '100725', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (76, -1, '100657', '100657', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '张敏琦', '', 0, NULL, NULL, '13511076628', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '14', '', '3', '广州分公司', '100657', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (77, -1, '100757', '100757', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '何宁', '', 0, NULL, NULL, '13581738108', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '14', '', '3', '广州分公司', '100757', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (78, -1, '100299', '100299', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '冯玮', '', 0, NULL, NULL, '13916083141', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '14', '', '3', '广州分公司', '100299', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (79, -1, '100111', '100111', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '王少华', '', 0, NULL, NULL, '13777866466', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '14', '', '3', '广州分公司', '100111', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (80, -1, '100334', '100334', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '徐银银', '', 0, NULL, NULL, '13671774876', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '14', '', '3', '广州分公司', '100334', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (81, -1, '100486', '100486', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '齐雯雯', '', 0, NULL, NULL, '18652049277', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '14', '', '3', '广州分公司', '100486', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (82, -1, '100040', '100040', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '任建辉', '', 0, NULL, NULL, '13586594557', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '14', '', '3', '广州分公司', '100040', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (83, -1, '100246', '100246', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '唐彪', '', 0, NULL, NULL, '13764251850', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '14', '', '3', '广州分公司', '100246', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (84, -1, '100207', '100207', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '张菲菲', '', 0, NULL, NULL, '13817919489', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '14', '', '3', '广州分公司', '100207', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (85, -1, '100538', '100538', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '邬育佳', '', 0, NULL, NULL, '18062501799', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '14', '', '3', '广州分公司', '100538', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (86, -1, '100551', '100551', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '李涛', '', 0, NULL, NULL, '18639551578', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '14', '', '3', '广州分公司', '100551', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (87, -1, '100558', '100558', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '王静', '', 0, NULL, NULL, '18631788571', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '14', '', '3', '广州分公司', '100558', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (88, -1, '100213', '100213', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '黄桂坚', '', 0, NULL, NULL, '18616211199', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '14', '', '3', '广州分公司', '100213', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (89, -1, '100300', '100300', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '胡荣玲', '', 0, NULL, NULL, '13611960486', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '14', '', '3', '广州分公司', '100300', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (90, -1, '100150', '100150', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '杨晓东', '', 0, NULL, NULL, '18920016009', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '14', '', '3', '广州分公司', '100150', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (91, -1, '100075', '100075', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '赵纯', '', 0, NULL, NULL, '13075705577', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '14', '', '3', '广州分公司', '100075', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (92, -1, '100678', '100678', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '张炯', '', 0, NULL, NULL, '13693012897', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '14', '', '3', '广州分公司', '100678', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (93, -1, '100004', '100004', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '邓卉', '', 0, NULL, NULL, '13917028898', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '14', '', '3', '广州分公司', '100004', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (94, -1, '100754', '100754', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '郑结敏', '', 0, NULL, NULL, '13683128120', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '14', '', '3', '广州分公司', '100754', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (95, -1, '100145', '100145', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '刘成晟', '', 0, NULL, NULL, '13821004528', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '14', '', '3', '广州分公司', '100145', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (96, -1, '100208', '100208', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '龙珠', '', 0, NULL, NULL, '13916342217', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '14', '', '3', '广州分公司', '100208', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (97, -1, '100251', '100251', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '陈玥铭', '', 0, NULL, NULL, '15900903847', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '14', '', '3', '广州分公司', '100251', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (98, -1, '100488', '100488', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '朱敏怡', '', 0, NULL, NULL, '13913948787', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '14', '', '3', '广州分公司', '100488', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (99, -1, '100776', '100776', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '沈嘉', '', 0, NULL, NULL, '13811190763', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '14', '', '3', '广州分公司', '100776', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (100, -1, '100499', '100499', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '林有强', '', 0, NULL, NULL, '15150437200', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '14', '', '3', '广州分公司', '100499', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (101, -1, '100684', '100684', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '胡菡', '', 0, NULL, NULL, '13901255149', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '15', '', '3', '广州分公司', '100684', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (102, -1, '100295', '100295', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '季宇嘉', '', 0, NULL, NULL, '13681968933', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '15', '', '3', '广州分公司', '100295', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (103, -1, '100463', '100463', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '王成莹', '', 0, NULL, NULL, '13701415018', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '15', '', '3', '广州分公司', '100463', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (104, -1, '100112', '100112', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '张桂英', '', 0, NULL, NULL, '13588766286', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '15', '', '3', '广州分公司', '100112', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (105, -1, '100343', '100343', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '韩天', '', 0, NULL, NULL, '15900721566', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '15', '', '3', '广州分公司', '100343', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (106, -1, '100785', '100785', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '施丽丽', '', 0, NULL, NULL, '13605518630', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '15', '', '3', '广州分公司', '100785', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (107, -1, '100401', '100401', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '顾宏娟', '', 0, NULL, NULL, '18660239766', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '15', '', '3', '广州分公司', '100401', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (108, -1, '100470', '100470', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '南冰凝', '', 0, NULL, NULL, '15150558884', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '15', '', '3', '广州分公司', '100470', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (109, -1, '100491', '100491', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '曾良斌', '', 0, NULL, NULL, '15651988676', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '15', '', '3', '广州分公司', '100491', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (110, -1, '100532', '100532', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '谢美云', '', 0, NULL, NULL, '13545770003', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '15', '', '3', '广州分公司', '100532', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (111, -1, '100378', '100378', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '赵娜娜', '', 0, NULL, NULL, '18753431102', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '15', '', '3', '广州分公司', '100378', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (112, -1, '100381', '100381', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '姚岚', '', 0, NULL, NULL, '18629347227', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '15', '', '3', '广州分公司', '100381', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (113, -1, '100588', '100588', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '黄嬿', '', 0, NULL, NULL, '18665339993', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '15', '', '3', '广州分公司', '100588', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (114, -1, '100611', '100611', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '魏倩', '', 0, NULL, NULL, '13711702255', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '15', '', '3', '广州分公司', '100611', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (115, -1, '100355', '100355', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '蒋子杨', '', 0, NULL, NULL, '18001921967', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '15', '', '3', '广州分公司', '100355', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (116, -1, '100662', '100662', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '胡韬', '', 0, NULL, NULL, '13522512016', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '15', '', '3', '广州分公司', '100662', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (117, -1, '100474', '100474', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '朱莉莉', '', 0, NULL, NULL, '13776651608', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '15', '', '3', '广州分公司', '100474', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (118, -1, '100025', '100025', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '陈晓萌', '', 0, NULL, NULL, '18623400401', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '15', '', '3', '广州分公司', '100025', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (119, -1, '100424', '100424', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '庄俊英', '', 0, NULL, NULL, '15661460746', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '15', '', '3', '广州分公司', '100424', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (120, -1, '100444', '100444', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '徐耀辉', '', 0, NULL, NULL, '13763988858', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '15', '', '3', '广州分公司', '100444', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (121, -1, '100175', '100175', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '时伟', '', 0, NULL, NULL, '13980571528', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '15', '', '3', '广州分公司', '100175', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (122, -1, '100712', '100712', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '高婷婷', '', 0, NULL, NULL, '13810454058', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '15', '', '3', '广州分公司', '100712', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (123, -1, '100102', '100102', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '焦莹', '', 0, NULL, NULL, '13958017348', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '15', '', '3', '广州分公司', '100102', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (124, -1, '100555', '100555', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '敖芳', '', 0, NULL, NULL, '18639351789', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '15', '', '3', '广州分公司', '100555', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (125, -1, '100702', '100702', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '曹昱', '', 0, NULL, NULL, '18901337757', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '15', '', '3', '广州分公司', '100702', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (126, -1, '100784', '100784', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '阎顺', '', 0, NULL, NULL, '13805699025', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '15', '', '3', '广州分公司', '100784', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (127, -1, '100018', '100018', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '杨维艳', '', 0, NULL, NULL, '13996351507', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '15', '', '3', '广州分公司', '100018', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (128, -1, '100421', '100421', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '柴旭琴', '', 0, NULL, NULL, '13995172330', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '15', '', '3', '广州分公司', '100421', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (129, -1, '100046', '100046', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '韩金姬', '', 0, NULL, NULL, '13567199181', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '15', '', '3', '广州分公司', '100046', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (130, -1, '100578', '100578', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '张毅', '', 0, NULL, NULL, '13929155277', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '15', '', '3', '广州分公司', '100578', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (131, -1, '100379', '100379', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '杨培培', '', 0, NULL, NULL, '15902907909', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '15', '', '3', '广州分公司', '100379', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (132, -1, '100384', '100384', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '苏郁洁', '', 0, NULL, NULL, '13834676668', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '15', '', '3', '广州分公司', '100384', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (133, -1, '100346', '100346', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '朱麒蓉', '', 0, NULL, NULL, '13764185309', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '15', '', '3', '广州分公司', '100346', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (134, -1, '100759', '100759', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '吴建英', '', 0, NULL, NULL, '18600089196', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '15', '', '3', '广州分公司', '100759', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (135, -1, '100164', '100164', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '王小敏', '', 0, NULL, NULL, '15312159107', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '15', '', '3', '广州分公司', '100164', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (136, -1, '100152', '100152', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '李焱非', '', 0, NULL, NULL, '18622566528', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '15', '', '3', '广州分公司', '100152', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (137, -1, '100063', '100063', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '巫莉华', '', 0, NULL, NULL, '13429299462', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '15', '', '3', '广州分公司', '100063', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (138, -1, '100201', '100201', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '谢锦瑜', '', 0, NULL, NULL, '13916659536', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '15', '', '3', '广州分公司', '100201', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (139, -1, '100631', '100631', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '周正松', '', 0, NULL, NULL, '13809627211', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '15', '', '3', '广州分公司', '100631', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (140, -1, '100357', '100357', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '李顺华', '', 0, NULL, NULL, '13916278030', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '15', '', '3', '广州分公司', '100357', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (141, -1, '100219', '100219', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '廖品彩', '', 0, NULL, NULL, '18917650049', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '15', '', '3', '广州分公司', '100219', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (142, -1, '100573', '100573', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '费莉芳', '', 0, NULL, NULL, '18607777719', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '15', '', '3', '广州分公司', '100573', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (143, -1, '100225', '100225', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '黄剑锋', '', 0, NULL, NULL, '13918064128', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '15', '', '3', '广州分公司', '100225', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (144, -1, '100267', '100267', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '张亮', '', 0, NULL, NULL, '13817799250', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '15', '', '3', '广州分公司', '100267', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (145, -1, '100006', '100006', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '黄晓雪', '', 0, NULL, NULL, '18674042588', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '15', '', '3', '广州分公司', '100006', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (146, -1, '100734', '100734', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '朱叶丽', '', 0, NULL, NULL, '13810020507', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '15', '', '3', '广州分公司', '100734', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (147, -1, '100628', '100628', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '刘春红', '', 0, NULL, NULL, '13632691429', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '15', '', '3', '广州分公司', '100628', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (148, -1, '100664', '100664', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '赵汝春', '', 0, NULL, NULL, '18611631579', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '15', '', '3', '广州分公司', '100664', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (149, -1, '100434', '100434', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '袁晓丽', '', 0, NULL, NULL, '15095338575', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '15', '', '3', '广州分公司', '100434', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (150, -1, '100157', '100157', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '郑必蓉', '', 0, NULL, NULL, '15501543911', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '15', '', '3', '广州分公司', '100157', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (151, -1, '100216', '100216', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '苏汝勤', '', 0, NULL, NULL, '13817768266', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '16', '', '3', '广州分公司', '100216', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (152, -1, '100253', '100253', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '胡晓青', '', 0, NULL, NULL, '18602120748', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '16', '', '3', '广州分公司', '100253', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (153, -1, '100402', '100402', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '李红瑞', '', 0, NULL, NULL, '13953201818', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '16', '', '3', '广州分公司', '100402', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (154, -1, '100770', '100770', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '何雯', '', 0, NULL, NULL, '13622321603', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '16', '', '3', '广州分公司', '100770', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (155, -1, '100493', '100493', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '蒋文娴', '', 0, NULL, NULL, '13962441224', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '16', '', '3', '广州分公司', '100493', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (156, -1, '100171', '100171', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '邓俊贤', '', 0, NULL, NULL, '13880215312', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '16', '', '3', '广州分公司', '100171', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (157, -1, '100613', '100613', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '杨阳', '', 0, NULL, NULL, '13392650450', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '16', '', '3', '广州分公司', '100613', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (158, -1, '100081', '100081', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '王维娟', '', 0, NULL, NULL, '18967670101', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '16', '', '3', '广州分公司', '100081', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (159, -1, '100049', '100049', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '戴晨龙', '', 0, NULL, NULL, '13567780163', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '16', '', '3', '广州分公司', '100049', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (160, -1, '100128', '100128', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '贯熠馨', '', 0, NULL, NULL, '13398808149', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '16', '', '3', '广州分公司', '100128', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (161, -1, '100675', '100675', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '王贝贝', '', 0, NULL, NULL, '13581553996', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '16', '', '3', '广州分公司', '100675', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (162, -1, '100227', '100227', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '陈玉', '', 0, NULL, NULL, '13321989782', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '16', '', '3', '广州分公司', '100227', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (163, -1, '100096', '100096', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '邓菲菲', '', 0, NULL, NULL, '13675820241', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '16', '', '3', '广州分公司', '100096', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (164, -1, '100612', '100612', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '王俊', '', 0, NULL, NULL, '13632297285', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '16', '', '3', '广州分公司', '100612', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (165, -1, '100766', '100766', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '李静', '', 0, NULL, NULL, '13810228810', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '16', '', '3', '广州分公司', '100766', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (166, -1, '100623', '100623', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '陈红彬', '', 0, NULL, NULL, '15989975047', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '16', '', '3', '广州分公司', '100623', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (167, -1, '100666', '100666', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '王浩', '', 0, NULL, NULL, '15811551831', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '16', '', '3', '广州分公司', '100666', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (168, -1, '100287', '100287', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '周悦', '', 0, NULL, NULL, '13917202974', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '16', '', '3', '广州分公司', '100287', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (169, -1, '100340', '100340', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '王在国', '', 0, NULL, NULL, '15102159558', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '16', '', '3', '广州分公司', '100340', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (170, -1, '100585', '100585', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '朱国秀', '', 0, NULL, NULL, '13028817872', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '16', '', '3', '广州分公司', '100585', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (171, -1, '100435', '100435', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '王晓燕', '', 0, NULL, NULL, '15524688858', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '10', '', '3', '广州分公司', '100435', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (172, -1, '100586', '100586', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '胡璇', '', 0, NULL, NULL, '18675507731', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '10', '', '3', '广州分公司', '100586', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (173, -1, '100181', '100181', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '刘蕾', '', 0, NULL, NULL, '18628211403', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '10', '', '3', '广州分公司', '100181', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (174, -1, '100331', '100331', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '吴文桥', '', 0, NULL, NULL, '13701778951', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '10', '', '3', '广州分公司', '100331', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (175, -1, '100341', '100341', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '张婷', '', 0, NULL, NULL, '18721023356', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '10', '', '3', '广州分公司', '100341', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (176, -1, '100705', '100705', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '吴铭杰', '', 0, NULL, NULL, '13911371681', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '10', '', '3', '广州分公司', '100705', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (177, -1, '100132', '100132', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '莫丹', '', 0, NULL, NULL, '15111033440', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '10', '', '3', '广州分公司', '100132', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (178, -1, '100125', '100125', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '朱小娟', '', 0, NULL, NULL, '15096793310', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '10', '', '3', '广州分公司', '100125', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (179, -1, '100710', '100710', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '林巧', '', 0, NULL, NULL, '13811018107', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '10', '', '3', '广州分公司', '100710', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (180, -1, '100284', '100284', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '陆云松', '', 0, NULL, NULL, '13564491500', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '10', '', '3', '广州分公司', '100284', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (181, -1, '100587', '100587', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '杨业奎', '', 0, NULL, NULL, '13723463807', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '10', '', '3', '广州分公司', '100587', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (182, -1, '100560', '100560', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '汤静萍', '', 0, NULL, NULL, '13933458850', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '10', '', '3', '广州分公司', '100560', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (183, -1, '100294', '100294', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '张燕', '', 0, NULL, NULL, '18616388772', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '10', '', '3', '广州分公司', '100294', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (184, -1, '100438', '100438', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '曾露依', '', 0, NULL, NULL, '18698699663', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '10', '', '3', '广州分公司', '100438', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (185, -1, '100601', '100601', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '康宁', '', 0, NULL, NULL, '13927038928', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '10', '', '3', '广州分公司', '100601', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (186, -1, '100596', '100596', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '王珂', '', 0, NULL, NULL, '13826589960', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '10', '', '3', '广州分公司', '100596', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (187, -1, '100209', '100209', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '龙珠', '', 0, NULL, NULL, '13641947211', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '10', '', '3', '广州分公司', '100209', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (188, -1, '100743', '100743', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '郭盼园', '', 0, NULL, NULL, '13811556808', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '10', '', '3', '广州分公司', '100743', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (189, -1, '100604', '100604', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '陈敏', '', 0, NULL, NULL, '13632533591', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '10', '', '3', '广州分公司', '100604', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (190, -1, '100091', '100091', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '蔡峰', '', 0, NULL, NULL, '13706502418', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '10', '', '3', '广州分公司', '100091', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (191, -1, '100600', '100600', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '刘杰', '', 0, NULL, NULL, '13816599177', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '10', '', '3', '广州分公司', '100600', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (192, -1, '100477', '100477', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '王昊', '', 0, NULL, NULL, '18936008163', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '10', '', '3', '广州分公司', '100477', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (193, -1, '100141', '100141', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '李兰芳', '', 0, NULL, NULL, '15522619726', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '10', '', '3', '广州分公司', '100141', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (194, -1, '100411', '100411', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '黄斯言', '', 0, NULL, NULL, '15064701030', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '10', '', '3', '广州分公司', '100411', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (195, -1, '100629', '100629', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '王玲玲', '', 0, NULL, NULL, '13825777206', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '10', '', '3', '广州分公司', '100629', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (196, -1, '100635', '100635', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '韩文铮', '', 0, NULL, NULL, '13696923253', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '10', '', '3', '广州分公司', '100635', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (197, -1, '100296', '100296', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '徐颖琦', '', 0, NULL, NULL, '18616813557', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '10', '', '3', '广州分公司', '100296', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (198, -1, '100367', '100367', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '胡环宇', '', 0, NULL, NULL, '18910555901', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '10', '', '3', '广州分公司', '100367', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (199, -1, '100788', '100788', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '陈泓', '', 0, NULL, NULL, '13655527803', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '10', '', '3', '广州分公司', '100788', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (200, -1, '100106', '100106', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '郭辉', '', 0, NULL, NULL, '13588186940', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '10', '', '3', '广州分公司', '100106', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (201, -1, '100086', '100086', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '林芯竹', '', 0, NULL, NULL, '15990613535', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '10', '', '3', '广州分公司', '100086', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (202, -1, '100361', '100361', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '王雪', '', 0, NULL, NULL, '13801709708', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '10', '', '3', '广州分公司', '100361', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (203, -1, '100764', '100764', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '刘洋波', '', 0, NULL, NULL, '13811991331', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '10', '', '3', '广州分公司', '100764', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (204, -1, '100472', '100472', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '洪绚', '', 0, NULL, NULL, '15951808126', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '10', '', '3', '广州分公司', '100472', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (205, -1, '100337', '100337', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '陈晶晶', '', 0, NULL, NULL, '15021081711', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '10', '', '3', '广州分公司', '100337', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (206, -1, '100546', '100546', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '于晔', '', 0, NULL, NULL, '18627777322', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '10', '', '3', '广州分公司', '100546', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (207, -1, '100073', '100073', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '张腾', '', 0, NULL, NULL, '15067877768', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '10', '', '3', '广州分公司', '100073', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (208, -1, '100749', '100749', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '徐文亚', '', 0, NULL, NULL, '13426015429', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '10', '', '3', '广州分公司', '100749', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (209, -1, '100238', '100238', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '赵田路', '', 0, NULL, NULL, '13764107208', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '10', '', '3', '广州分公司', '100238', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (210, -1, '100036', '100036', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '王海燕', '', 0, NULL, NULL, '13824779380', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '10', '', '3', '广州分公司', '100036', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (211, -1, '100035', '100035', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '徐莉', '', 0, NULL, NULL, '18623490678', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '10', '', '3', '广州分公司', '100035', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (212, -1, '100415', '100415', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '宋佳', '', 0, NULL, NULL, '15562430213', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '10', '', '3', '广州分公司', '100415', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (213, -1, '100484', '100484', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '章涵之', '', 0, NULL, NULL, '13912950800', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '10', '', '3', '广州分公司', '100484', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (214, -1, '100274', '100274', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '朱明强', '', 0, NULL, NULL, '13611621186', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '10', '', '3', '广州分公司', '100274', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (215, -1, '100429', '100429', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '陶玉兰', '', 0, NULL, NULL, '13840197772', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '10', '', '3', '广州分公司', '100429', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (216, -1, '100203', '100203', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '高山', '', 0, NULL, NULL, '13636380342', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '10', '', '3', '广州分公司', '100203', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (217, -1, '100561', '100561', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '周梅玲', '', 0, NULL, NULL, '13803159985', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '10', '', '3', '广州分公司', '100561', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (218, -1, '100147', '100147', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '林瑞欣', '', 0, NULL, NULL, '2284292686', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '10', '', '3', '广州分公司', '100147', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (219, -1, '100466', '100466', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '赵浪波', '', 0, NULL, NULL, '13862942279', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '10', '', '3', '广州分公司', '100466', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (220, -1, '100138', '100138', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '俞德霞', '', 0, NULL, NULL, '18606668008', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '10', '', '3', '广州分公司', '100138', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (221, -1, '100526', '100526', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '周怡君', '', 0, NULL, NULL, '13467717180', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '11', '', '3', '广州分公司', '100526', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (222, -1, '100451', '100451', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '周成达', '', 0, NULL, NULL, '13611905517', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '11', '', '3', '广州分公司', '100451', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (223, -1, '100462', '100462', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '杨虹', '', 0, NULL, NULL, '13656213535', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '11', '', '3', '广州分公司', '100462', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (224, -1, '100735', '100735', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '杨盼盼', '', 0, NULL, NULL, '13801309951', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '11', '', '3', '广州分公司', '100735', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (225, -1, '100603', '100603', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '莫曜霞', '', 0, NULL, NULL, '13809855977', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '11', '', '3', '广州分公司', '100603', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (226, -1, '100060', '100060', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '周洁', '', 0, NULL, NULL, '18658192106', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '11', '', '3', '广州分公司', '100060', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (227, -1, '100387', '100387', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '何丹', '', 0, NULL, NULL, '13754855569', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '11', '', '3', '广州分公司', '100387', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (228, -1, '100480', '100480', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '曲宏蕾', '', 0, NULL, NULL, '15850598889', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '11', '', '3', '广州分公司', '100480', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (229, -1, '100549', '100549', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '孙雍容', '', 0, NULL, NULL, '18686877127', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '11', '', '3', '广州分公司', '100549', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (230, -1, '100711', '100711', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '葛晓庆', '', 0, NULL, NULL, '18618484090', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '11', '', '3', '广州分公司', '100711', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (231, -1, '100051', '100051', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '郭磊', '', 0, NULL, NULL, '13757308889', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '11', '', '3', '广州分公司', '100051', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (232, -1, '100070', '100070', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '杨泽锋', '', 0, NULL, NULL, '13396781008', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '11', '', '3', '广州分公司', '100070', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (233, -1, '100264', '100264', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '张丝', '', 0, NULL, NULL, '13917245712', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '11', '', '3', '广州分公司', '100264', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (234, -1, '100554', '100554', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '朱慧', '', 0, NULL, NULL, '13569861511', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '11', '', '3', '广州分公司', '100554', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (235, -1, '100404', '100404', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '袁高峰', '', 0, NULL, NULL, '15588996982', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '11', '', '3', '广州分公司', '100404', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (236, -1, '100206', '100206', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '段永强', '', 0, NULL, NULL, '13917693261', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '11', '', '3', '广州分公司', '100206', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (237, -1, '100649', '100649', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '徐平', '', 0, NULL, NULL, '13600995276', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '11', '', '3', '广州分公司', '100649', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (238, -1, '100289', '100289', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '韩丽', '', 0, NULL, NULL, '15921263030', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '11', '', '3', '广州分公司', '100289', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (239, -1, '100447', '100447', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '朱琳', '', 0, NULL, NULL, '15950239799', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '11', '', '3', '广州分公司', '100447', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (240, -1, '100163', '100163', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '黄晓国', '', 0, NULL, NULL, '15162607619', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '11', '', '3', '广州分公司', '100163', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (241, -1, '100529', '100529', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '周丽娟', '', 0, NULL, NULL, '13874973140', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '11', '', '3', '广州分公司', '100529', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (242, -1, '100029', '100029', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '郭锦', '', 0, NULL, NULL, '13883844451', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '11', '', '3', '广州分公司', '100029', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (243, -1, '100674', '100674', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '王伟', '', 0, NULL, NULL, '18611371655', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '11', '', '3', '广州分公司', '100674', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (244, -1, '100627', '100627', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '卫平', '', 0, NULL, NULL, '13500252320', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '11', '', '3', '广州分公司', '100627', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (245, -1, '100716', '100716', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '陈琼央', '', 0, NULL, NULL, '13520052822', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '11', '', '3', '广州分公司', '100716', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (246, -1, '100706', '100706', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '朱晓芳', '', 0, NULL, NULL, '13811020704', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '11', '', '3', '广州分公司', '100706', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (247, -1, '100638', '100638', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '毛锐', '', 0, NULL, NULL, '13906035955', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '11', '', '3', '广州分公司', '100638', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (248, -1, '100414', '100414', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '陈新', '', 0, NULL, NULL, '13853100345', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '11', '', '3', '广州分公司', '100414', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (249, -1, '100478', '100478', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '徐玉静', '', 0, NULL, NULL, '13951690516', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '11', '', '3', '广州分公司', '100478', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (250, -1, '100458', '100458', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '王方', '', 0, NULL, NULL, '18806220703', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '11', '', '3', '广州分公司', '100458', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (251, -1, '100244', '100244', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '邓尚婧', '', 0, NULL, NULL, '13301637565', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '11', '', '3', '广州分公司', '100244', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (252, -1, '100731', '100731', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '陈叶', '', 0, NULL, NULL, '13717564425', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '11', '', '3', '广州分公司', '100731', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (253, -1, '100740', '100740', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '袁蓓蕾', '', 0, NULL, NULL, '18701011896', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '11', '', '3', '广州分公司', '100740', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (254, -1, '100507', '100507', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '叶慧', '', 0, NULL, NULL, '15961139299', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '11', '', '3', '广州分公司', '100507', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (255, -1, '100583', '100583', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '俞人杰', '', 0, NULL, NULL, '13416167918', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '11', '', '3', '广州分公司', '100583', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (256, -1, '100658', '100658', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '李斌', '', 0, NULL, NULL, '13311330500', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '11', '', '3', '广州分公司', '100658', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (257, -1, '100115', '100115', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '邵小蕊', '', 0, NULL, NULL, '13588282687', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '11', '', '3', '广州分公司', '100115', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (258, -1, '100741', '100741', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '张烨', '', 0, NULL, NULL, '13505159413', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '11', '', '3', '广州分公司', '100741', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (259, -1, '100349', '100349', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '吴芳', '', 0, NULL, NULL, '18017512782', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '11', '', '3', '广州分公司', '100349', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (260, -1, '100494', '100494', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '王一磊', '', 0, NULL, NULL, '13771280053', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '11', '', '3', '广州分公司', '100494', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (261, -1, '100191', '100191', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '姚晓晗', '', 0, NULL, NULL, '18008096016', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '11', '', '3', '广州分公司', '100191', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (262, -1, '100534', '100534', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '张嬙', '', 0, NULL, NULL, '18627172777', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '11', '', '3', '广州分公司', '100534', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (263, -1, '100392', '100392', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '张馨', '', 0, NULL, NULL, '13863064537', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '11', '', '3', '广州分公司', '100392', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (264, -1, '100297', '100297', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '梁恩超', '', 0, NULL, NULL, '13818473590', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '11', '', '3', '广州分公司', '100297', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (265, -1, '100273', '100273', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '单羽锋', '', 0, NULL, NULL, '13004102922', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '11', '', '3', '广州分公司', '100273', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (266, -1, '100056', '100056', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '田欣', '', 0, NULL, NULL, '15867966315', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '11', '', '3', '广州分公司', '100056', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (267, -1, '100137', '100137', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '尹凌颖', '', 0, NULL, NULL, '13752267226', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '11', '', '3', '广州分公司', '100137', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (268, -1, '100640', '100640', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '陈振宇', '', 0, NULL, NULL, '18030275022', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '11', '', '3', '广州分公司', '100640', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (269, -1, '100069', '100069', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '潘宁', '', 0, NULL, NULL, '15888093326', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '11', '', '3', '广州分公司', '100069', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (270, -1, '100198', '100198', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '王敏', '', 0, NULL, NULL, '18610543891', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '11', '', '3', '广州分公司', '100198', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (271, -1, '100146', '100146', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '杨扬', '', 0, NULL, NULL, '13820900415', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100146', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (272, -1, '100037', '100037', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '高妮妮', '', 0, NULL, NULL, '13616512799', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100037', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (273, -1, '100510', '100510', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '丁丽嘉', '', 0, NULL, NULL, '13270386866', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100510', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (274, -1, '100197', '100197', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '林伟和', '', 0, NULL, NULL, '13666169172', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100197', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (275, -1, '100516', '100516', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '潘华洁', '', 0, NULL, NULL, '13913652052', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100516', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (276, -1, '100786', '100786', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '马涛', '', 0, NULL, NULL, '13500520116', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100786', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (277, -1, '100750', '100750', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '王璐琳', '', 0, NULL, NULL, '18601017599', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100750', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (278, -1, '100673', '100673', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '韩磊', '', 0, NULL, NULL, '13810601080', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100673', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (279, -1, '100122', '100122', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '赵先武', '', 0, NULL, NULL, '15306689318', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100122', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (280, -1, '100345', '100345', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '王文怡', '', 0, NULL, NULL, '13818958214', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100345', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (281, -1, '100736', '100736', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '陈春琴', '', 0, NULL, NULL, '13911651315', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100736', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (282, -1, '100223', '100223', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '王郑', '', 0, NULL, NULL, '13701875722', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100223', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (283, -1, '100135', '100135', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '刘棋烨', '', 0, NULL, NULL, '13899447733', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100135', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (284, -1, '100469', '100469', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '季冲', '', 0, NULL, NULL, '13913030686', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100469', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (285, -1, '100266', '100266', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '杨永志', '', 0, NULL, NULL, '15801963947', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100266', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (286, -1, '100475', '100475', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '刘林', '', 0, NULL, NULL, '13851972070', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100475', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (287, -1, '100262', '100262', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '谢媛芳', '', 0, NULL, NULL, '13601906070', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100262', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (288, -1, '100057', '100057', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '杨宁', '', 0, NULL, NULL, '13566563463', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100057', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (289, -1, '100502', '100502', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '朱臻葆', '', 0, NULL, NULL, '13705192224', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100502', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (290, -1, '100691', '100691', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '葛丽华', '', 0, NULL, NULL, '13426168607', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100691', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (291, -1, '100205', '100205', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '刘峰', '', 0, NULL, NULL, '13524055239', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100205', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (292, -1, '100373', '100373', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '曹超', '', 0, NULL, NULL, '13816729128', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100373', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (293, -1, '100385', '100385', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '张晓蔚', '', 0, NULL, NULL, '18635157966', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100385', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (294, -1, '100064', '100064', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '钟炜', '', 0, NULL, NULL, '15957485446', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100064', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (295, -1, '100078', '100078', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '陈小庆', '', 0, NULL, NULL, '13706600029', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100078', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (296, -1, '100641', '100641', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '张文迪', '', 0, NULL, NULL, '18859577999', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100641', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (297, -1, '100732', '100732', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '陆惠芳', '', 0, NULL, NULL, '13601339459', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100732', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (298, -1, '100461', '100461', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '孙洁', '', 0, NULL, NULL, '13915511110', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100461', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (299, -1, '100579', '100579', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '冯昀', '', 0, NULL, NULL, '13825513704', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100579', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (300, -1, '100195', '100195', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '柳杰', '', 0, NULL, NULL, '13708096476', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100195', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (301, -1, '100768', '100768', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '陈敏', '', 0, NULL, NULL, '15921984336', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100768', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (302, -1, '100453', '100453', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '倪菁', '', 0, NULL, NULL, '13861737219', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100453', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (303, -1, '100708', '100708', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '李云斌', '', 0, NULL, NULL, '13811060559', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100708', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (304, -1, '100659', '100659', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '杨勇', '', 0, NULL, NULL, '15110277583', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100659', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (305, -1, '100074', '100074', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '吴志坚', '', 0, NULL, NULL, '15158672320', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100074', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (306, -1, '100220', '100220', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '刘美燕', '', 0, NULL, NULL, '13818013211', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100220', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (307, -1, '100617', '100617', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '袁竹', '', 0, NULL, NULL, '13570973353', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100617', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (308, -1, '100055', '100055', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '陈新', '', 0, NULL, NULL, '13626880670', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100055', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (309, -1, '100643', '100643', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '张荣春', '', 0, NULL, NULL, '13599197785', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100643', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (310, -1, '100590', '100590', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '张锋', '', 0, NULL, NULL, '13590181137', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100590', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (311, -1, '100689', '100689', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '何佳莉', '', 0, NULL, NULL, '18618405340', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100689', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (312, -1, '100695', '100695', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '阮芳芳', '', 0, NULL, NULL, '13311030721', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100695', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (313, -1, '100338', '100338', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '陈惠娜', '', 0, NULL, NULL, '13816580928', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100338', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (314, -1, '100109', '100109', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '吴迪', '', 0, NULL, NULL, '18658813520', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100109', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (315, -1, '100134', '100134', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '陈艳青', '', 0, NULL, NULL, '13761748727', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100134', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (316, -1, '100496', '100496', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '周志浩', '', 0, NULL, NULL, '15950138197', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100496', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (317, -1, '100395', '100395', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '轩扬', '', 0, NULL, NULL, '15863336087', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100395', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (318, -1, '100481', '100481', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '徐晓伟', '', 0, NULL, NULL, '13675151559', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100481', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (319, -1, '100514', '100514', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '佘莉莺', '', 0, NULL, NULL, '18362228887', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100514', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (320, -1, '100293', '100293', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '徐力', '', 0, NULL, NULL, '15026699875', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100293', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (321, -1, '100566', '100566', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '陆霞', '', 0, NULL, NULL, '13933965393', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100566', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (322, -1, '100202', '100202', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '蒋亮亮', '', 0, NULL, NULL, '13816746817', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100202', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (323, -1, '100671', '100671', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '徐海飞', '', 0, NULL, NULL, '13810107236', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100671', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (324, -1, '100650', '100650', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '乔丽', '', 0, NULL, NULL, '15905069288', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100650', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (325, -1, '100052', '100052', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '李丹若', '', 0, NULL, NULL, '13958577899', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100052', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (326, -1, '100655', '100655', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '刘汉江', '', 0, NULL, NULL, '13799421779', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100655', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (327, -1, '100131', '100131', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '石震华', '', 0, NULL, NULL, '18687520168', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100131', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (328, -1, '100370', '100370', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '陈洁', '', 0, NULL, NULL, '13482263308', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100370', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (329, -1, '100258', '100258', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '李露', '', 0, NULL, NULL, '18930290723', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100258', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (330, -1, '100101', '100101', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '余洁玮', '', 0, NULL, NULL, '15057199113', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100101', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (331, -1, '100393', '100393', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '李静', '', 0, NULL, NULL, '15169315666', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100393', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (332, -1, '100594', '100594', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '王程', '', 0, NULL, NULL, '13816599177', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100594', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (333, -1, '100399', '100399', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '李琳琳', '', 0, NULL, NULL, '13210003339', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100399', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (334, -1, '100747', '100747', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '谢志斌', '', 0, NULL, NULL, '18910150893', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100747', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (335, -1, '100724', '100724', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '张杰', '', 0, NULL, NULL, '13810158993', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100724', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (336, -1, '100465', '100465', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '宋琳', '', 0, NULL, NULL, '13776007069', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100465', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (337, -1, '100408', '100408', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '魏征', '', 0, NULL, NULL, '18678922883', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100408', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (338, -1, '100621', '100621', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '李翠兰', '', 0, NULL, NULL, '13902266632', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100621', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (339, -1, '100327', '100327', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '戴伟星', '', 0, NULL, NULL, '13818229760', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100327', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (340, -1, '100268', '100268', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '韩烨', '', 0, NULL, NULL, '13764192193', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100268', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (341, -1, '100584', '100584', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '王磊', '', 0, NULL, NULL, '13925237086', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100584', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (342, -1, '100323', '100323', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '张芳芳', '', 0, NULL, NULL, '13524373768', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100323', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (343, -1, '100428', '100428', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '俞晓丽', '', 0, NULL, NULL, '18940257890', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100428', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (344, -1, '100619', '100619', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '王朝杰', '', 0, NULL, NULL, '13580300396', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100619', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (345, -1, '100719', '100719', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '周庆芬', '', 0, NULL, NULL, '18612559991', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100719', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (346, -1, '100523', '100523', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '马承丽', '', 0, NULL, NULL, '13618408227', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100523', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (347, -1, '100336', '100336', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '葛洁倩', '', 0, NULL, NULL, '13918607027', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100336', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (348, -1, '100755', '100755', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '向思颖', '', 0, NULL, NULL, '13439144333', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100755', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (349, -1, '100281', '100281', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '糜兰', '', 0, NULL, NULL, '13564886061', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100281', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (350, -1, '100009', '100009', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '王景景', '', 0, NULL, NULL, '13761601760', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100009', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (351, -1, '100592', '100592', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '胡炫', '', 0, NULL, NULL, '15899851017', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100592', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (352, -1, '100364', '100364', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '魏丽斯', '', 0, NULL, NULL, '18918054348', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100364', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (353, -1, '100456', '100456', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '陆虹旻', '', 0, NULL, NULL, '18261573216', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100456', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (354, -1, '100682', '100682', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '朱先生', '', 0, NULL, NULL, '13701266807', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100682', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (355, -1, '100455', '100455', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '王科娃', '', 0, NULL, NULL, '15895340022', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100455', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (356, -1, '100173', '100173', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '盘嘉荣', '', 0, NULL, NULL, '13688443970', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100173', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (357, -1, '100228', '100228', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '陈溪', '', 0, NULL, NULL, '13585686803', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100228', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (358, -1, '100537', '100537', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '马娟华', '', 0, NULL, NULL, '18627080101', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100537', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (359, -1, '100761', '100761', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '陈雅婕', '', 0, NULL, NULL, '15811063827', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100761', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (360, -1, '100215', '100215', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '侯伟', '', 0, NULL, NULL, '13918950467', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100215', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (361, -1, '100563', '100563', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '陈静静', '', 0, NULL, NULL, '18631191717', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100563', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (362, -1, '100275', '100275', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '吴佳虎', '', 0, NULL, NULL, '13701953664', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100275', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (363, -1, '100505', '100505', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '许玮', '', 0, NULL, NULL, '15380011368', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100505', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (364, -1, '100680', '100680', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '郎正清', '', 0, NULL, NULL, '13681509326', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100680', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (365, -1, '100089', '100089', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '温晓威', '', 0, NULL, NULL, '13758205652', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100089', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (366, -1, '100639', '100639', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '翟媛媛', '', 0, NULL, NULL, '18650816699', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100639', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (367, -1, '100506', '100506', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '王伯晏', '', 0, NULL, NULL, '15006120066', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100506', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (368, -1, '100490', '100490', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '王佳', '', 0, NULL, NULL, '13851602872', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100490', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (369, -1, '100271', '100271', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '宋莹', '', 0, NULL, NULL, '13918677322', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100271', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (370, -1, '100503', '100503', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '肖俊杰', '', 0, NULL, NULL, '18262426699', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '12', '', '3', '广州分公司', '100503', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (371, -1, '100028', '100028', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '黄乐瑄', '', 0, NULL, NULL, '18602333677', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '13', '', '3', '广州分公司', '100028', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (372, -1, '100765', '100765', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '黄竹渝', '', 0, NULL, NULL, '18601040166', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '13', '', '3', '广州分公司', '100765', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (373, -1, '100548', '100548', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '张晓薇', '', 0, NULL, NULL, '15846389465', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '13', '', '3', '广州分公司', '100548', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (374, -1, '100504', '100504', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '李捷', '', 0, NULL, NULL, '13806106864', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '13', '', '3', '广州分公司', '100504', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (375, -1, '100630', '100630', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '毛岸伟', '', 0, NULL, NULL, '13925208023', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '13', '', '3', '广州分公司', '100630', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (376, -1, '100058', '100058', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '谭诗佳', '', 0, NULL, NULL, '13486585135', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '13', '', '3', '广州分公司', '100058', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (377, -1, '100291', '100291', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '李静', '', 0, NULL, NULL, '13801608886', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '13', '', '3', '广州分公司', '100291', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (378, -1, '100416', '100416', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '岳妍瑛', '', 0, NULL, NULL, '13656419825', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '13', '', '3', '广州分公司', '100416', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (379, -1, '100522', '100522', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '陶丽雯', '', 0, NULL, NULL, '18686687800', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '13', '', '3', '广州分公司', '100522', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (380, -1, '100550', '100550', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '江芳芳', '', 0, NULL, NULL, '13019715639', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '13', '', '3', '广州分公司', '100550', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (381, -1, '100781', '100781', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '杜悦静', '', 0, NULL, NULL, '15215516511', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '13', '', '3', '广州分公司', '100781', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (382, -1, '100307', '100307', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '张磊', '', 0, NULL, NULL, '13817813686', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '13', '', '3', '广州分公司', '100307', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (383, -1, '100143', '100143', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '颜湖德', '', 0, NULL, NULL, '15011583626', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '13', '', '3', '广州分公司', '100143', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (384, -1, '100647', '100647', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '刘岩', '', 0, NULL, NULL, '15992903512', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '13', '', '3', '广州分公司', '100647', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (385, -1, '100762', '100762', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '吕美昭', '', 0, NULL, NULL, '18601218029', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '13', '', '3', '广州分公司', '100762', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (386, -1, '100212', '100212', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '欧阳业宏', '', 0, NULL, NULL, '13795482918', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '13', '', '3', '广州分公司', '100212', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (387, -1, '100099', '100099', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '李嘉源', '', 0, NULL, NULL, '13857160693', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '13', '', '3', '广州分公司', '100099', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (388, -1, '100425', '100425', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '吴昊舜', '', 0, NULL, NULL, '13889291425', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '13', '', '3', '广州分公司', '100425', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (389, -1, '100648', '100648', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '王雅群', '', 0, NULL, NULL, '13806986382', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '13', '', '3', '广州分公司', '100648', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (390, -1, '100699', '100699', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '孔旭芳', '', 0, NULL, NULL, '13601020482', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '13', '', '3', '广州分公司', '100699', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (391, -1, '100524', '100524', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '江丽雯', '', 0, NULL, NULL, '18844039927', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '13', '', '3', '广州分公司', '100524', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (392, -1, '100261', '100261', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '吴琨', '', 0, NULL, NULL, '13916941711', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '13', '', '3', '广州分公司', '100261', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (393, -1, '100310', '100310', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '朱晓雯', '', 0, NULL, NULL, '18602132022', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '13', '', '3', '广州分公司', '100310', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (394, -1, '100124', '100124', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '宫新红', '', 0, NULL, NULL, '13911655650', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '13', '', '3', '广州分公司', '100124', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (395, -1, '100278', '100278', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '付彪', '', 0, NULL, NULL, '18616562001', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '13', '', '3', '广州分公司', '100278', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (396, -1, '100597', '100597', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '康忠录', '', 0, NULL, NULL, '13600146698', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '13', '', '3', '广州分公司', '100597', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (397, -1, '100333', '100333', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '姜静', '', 0, NULL, NULL, '18917868192', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '13', '', '3', '广州分公司', '100333', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (398, -1, '100665', '100665', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '孔娟', '', 0, NULL, NULL, '13910050651', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '13', '', '3', '广州分公司', '100665', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (399, -1, '100471', '100471', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '俞佩华', '', 0, NULL, NULL, '15951971920', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '13', '', '3', '广州分公司', '100471', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (400, -1, '100454', '100454', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '王磊', '', 0, NULL, NULL, '15052200966', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '13', '', '3', '广州分公司', '100454', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (401, -1, '100167', '100167', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '陈蕾', '', 0, NULL, NULL, '15182233929', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '13', '', '3', '广州分公司', '100167', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (402, -1, '100599', '100599', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '聂珊', '', 0, NULL, NULL, '13713849637', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '13', '', '3', '广州分公司', '100599', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (403, -1, '100156', '100156', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '郭毅文', '', 0, NULL, NULL, '51250320107', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '13', '', '3', '广州分公司', '100156', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (404, -1, '100178', '100178', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '巫瑞琛', '', 0, NULL, NULL, '13882227677', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '13', '', '3', '广州分公司', '100178', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (405, -1, '100168', '100168', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '陈强', '', 0, NULL, NULL, '13608056341', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '13', '', '3', '广州分公司', '100168', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (406, -1, '100149', '100149', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '林金钻', '', 0, NULL, NULL, '13502079513', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '13', '', '3', '广州分公司', '100149', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (407, -1, '100288', '100288', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '王菲', '', 0, NULL, NULL, '18101840301', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '13', '', '3', '广州分公司', '100288', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (408, -1, '100427', '100427', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '周珏', '', 0, NULL, NULL, '13940050825', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '13', '', '3', '广州分公司', '100427', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (409, -1, '100398', '100398', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '左林', '', 0, NULL, NULL, '13455233606', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '13', '', '3', '广州分公司', '100398', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (410, -1, '100704', '100704', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '季兆尧', '', 0, NULL, NULL, '13683397032', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '13', '', '3', '广州分公司', '100704', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (411, -1, '100738', '100738', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '谢佳', '', 0, NULL, NULL, '13810058818', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '13', '', '3', '广州分公司', '100738', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (412, -1, '100318', '100318', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '李静琳', '', 0, NULL, NULL, '13916720672', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '13', '', '3', '广州分公司', '100318', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (413, -1, '100044', '100044', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '江波', '', 0, NULL, NULL, '13777719186', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '13', '', '3', '广州分公司', '100044', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (414, -1, '100681', '100681', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '朱柏洁', '', 0, NULL, NULL, '18600088286', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '13', '', '3', '广州分公司', '100681', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (415, -1, '100263', '100263', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '刘冬湘', '', 0, NULL, NULL, '13801865756', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '13', '', '3', '广州分公司', '100263', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (416, -1, '100422', '100422', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '蒯慧佳', '', 0, NULL, NULL, '13909510132', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '13', '', '3', '广州分公司', '100422', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (417, -1, '100140', '100140', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '苏雄彪', '', 0, NULL, NULL, '13752177940', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '13', '', '3', '广州分公司', '100140', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (418, -1, '100642', '100642', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '窦达菲', '', 0, NULL, NULL, '13850798692', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '13', '', '3', '广州分公司', '100642', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (419, -1, '100450', '100450', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '苏昭蓉', '', 0, NULL, NULL, '18662568095', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '13', '', '3', '广州分公司', '100450', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (420, -1, '100301', '100301', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '纪国蔚', '', 0, NULL, NULL, '13917770824', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '13', '', '3', '广州分公司', '100301', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (421, 423, '100189', '100189', 'MQA2BDcEPAg9CDoMOwwoAHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '李陈佳', '', 1, '项目经理', '', '13666125517', '', '', '13666125517@136.com', '', '', '男', NULL, '', '', '未审核', NULL, '', '', '6', '总经办', '3', '广州分公司', '100189', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (422, -1, '100095', '100095', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '秀景琪', '', 0, '', '', '13675850552', '', '', '', '', '', '男', NULL, '', '', '', NULL, '', '', '6', '总经办', '3', '广州分公司', '100095', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (423, -1, '100467', '100467', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '吕萍', '', 0, '', '', '13584660797', '', '', '', '', '', '男', NULL, '', '', '', NULL, '', '', '6', '总经办', '3', '广州分公司', '100467', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (424, -1, '100618', '100618', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '胡欣', '', 0, NULL, NULL, '13826006444', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '6', '', '3', '广州分公司', '100618', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, '192.168.1.244', NULL, 'C8:3A:35:C1:14:0F', NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (425, -1, '100369', '100369', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '张静春', '', 0, NULL, NULL, '13918150910', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '6', '', '3', '广州分公司', '100369', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (426, -1, '100432', '100432', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '梁爽', '', 0, NULL, NULL, '18641165906', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '6', '', '3', '广州分公司', '100432', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (427, -1, '100020', '100020', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '包英浩', '', 0, NULL, NULL, '18628056055', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '6', '', '3', '广州分公司', '100020', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (428, -1, '100123', '100123', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '王珣', '', 0, NULL, NULL, '13736130037', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '6', '', '3', '广州分公司', '100123', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (429, -1, '100311', '100311', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '罗雪', '', 0, NULL, NULL, '13621654317', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '6', '', '3', '广州分公司', '100311', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (430, -1, '100024', '100024', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '张烨', '', 0, NULL, NULL, '18623555060', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '6', '', '3', '广州分公司', '100024', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (431, -1, '100371', '100371', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '高璇', '', 0, NULL, NULL, '13801960789', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '7', '', '3', '广州分公司', '100371', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (432, -1, '100656', '100656', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '贺婕', '', 0, NULL, NULL, '13599084839', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '7', '', '3', '广州分公司', '100656', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (433, -1, '100437', '100437', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '刘琦', '', 0, NULL, NULL, '15566933077', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '7', '', '3', '广州分公司', '100437', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (434, -1, '100634', '100634', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '陈荣勇', '', 0, NULL, NULL, '13696917291', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '7', '', '3', '广州分公司', '100634', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (435, -1, '100059', '100059', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '高菲', '', 0, NULL, NULL, '13967835866', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '7', '', '3', '广州分公司', '100059', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (436, -1, '100713', '100713', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '郑晓珍', '', 0, NULL, NULL, '13301365626', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '7', '', '3', '广州分公司', '100713', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (437, -1, '100021', '100021', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '黄志辉', '', 0, NULL, NULL, '18696665275', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '7', '', '3', '广州分公司', '100021', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (438, -1, '100015', '100015', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '王伟', '', 0, NULL, NULL, '13370717219', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '7', '', '3', '广州分公司', '100015', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (439, -1, '100260', '100260', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '虞平', '', 0, NULL, NULL, '15821001986', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '7', '', '3', '广州分公司', '100260', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (440, -1, '100236', '100236', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '史菲', '', 0, NULL, NULL, '13585797207', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '7', '', '3', '广州分公司', '100236', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (441, -1, '100324', '100324', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '张凌', '', 0, NULL, NULL, '13917513900', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '19', '', '4', '北京分公司', '100324', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (442, -1, '100177', '100177', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '李朝勇', '', 0, NULL, NULL, '18980880561', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '19', '', '4', '北京分公司', '100177', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (443, -1, '100426', '100426', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '张辰婷', '', 0, NULL, NULL, '13889167009', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '19', '', '4', '北京分公司', '100426', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (444, -1, '100376', '100376', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '李艳', '', 0, NULL, NULL, '18729220856', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '19', '', '4', '北京分公司', '100376', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, '192.168.1.244', NULL, 'C8:3A:35:C1:14:0F', NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (445, -1, '100003', '100003', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '阮琪琦', '', 0, NULL, NULL, '13575509680', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '19', '', '4', '北京分公司', '100003', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (446, -1, '100670', '100670', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '孙燕娜', '', 0, NULL, NULL, '18600802595', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '21', '', '5', '北京分公司', '100670', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (447, -1, '100441', '100441', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '顾婷婷', '', 0, NULL, NULL, '13607919306', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '21', '', '5', '北京分公司', '100441', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (448, -1, '100317', '100317', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '张淮北', '', 0, NULL, NULL, '13816055953', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '21', '', '5', '北京分公司', '100317', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (449, -1, '100319', '100319', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '周淼', '', 0, NULL, NULL, '18621983418', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '21', '', '5', '北京分公司', '100319', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (450, -1, '100105', '100105', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '宋爱琦', '', 0, NULL, NULL, '13858183418', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '21', '', '5', '北京分公司', '100105', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (451, -1, '100023', '100023', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '邱海维', '', 0, NULL, NULL, '13102321127', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '22', '', '5', '北京分公司', '100023', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (452, -1, '100039', '100039', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '张乐君', '', 0, NULL, NULL, '13906696187', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '22', '', '5', '北京分公司', '100039', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (453, -1, '100350', '100350', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '包蕾', '', 0, NULL, NULL, '18939761587', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '22', '', '5', '北京分公司', '100350', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (454, -1, '100239', '100239', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '杨珂', '', 0, NULL, NULL, '13701711064', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '22', '', '5', '北京分公司', '100239', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (455, -1, '100315', '100315', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '张慧', '', 0, NULL, NULL, '18616566373', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '22', '', '5', '北京分公司', '100315', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (456, -1, '100636', '100636', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '林姐', '', 0, NULL, NULL, '18650817992', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '20', '', '4', '上海分公司', '100636', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (457, -1, '100031', '100031', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '迟晓辰', '', 0, NULL, NULL, '13102321127', NULL, NULL, '', NULL, NULL, '女', NULL, '', NULL, NULL, NULL, '', NULL, '20', '', '4', '上海分公司', '100031', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (458, -1, '100270', '100270', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '马亭新', '', 0, NULL, NULL, '13764386435', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '20', '', '4', '上海分公司', '100270', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (459, -1, '100309', '100309', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '李薇薇', '', 0, NULL, NULL, '13916963976', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '20', '', '4', '上海分公司', '100309', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (460, -1, '100272', '100272', 'YQBmBGcEbAhvCGoMawx4AHoAfwR6BHUIdghzDGwMUQBQAFcEUARdCF4IWwxWDEkASgA=', '王艳凤', '', 0, NULL, NULL, '13761559820', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '20', '', '4', '上海分公司', '100272', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (461, -1, '100254', '100254', 'YQBmBGcEbAhtCGoMawx4AHoAfwR4BHUIdghzDGwMUQBSAFcEUARdCF4IWwxUDEkASgA=', '卢媛媛', '', 0, NULL, NULL, '18502120277', NULL, NULL, '', NULL, NULL, '男', NULL, '', NULL, NULL, NULL, '', NULL, '20', '', '4', '上海分公司', '100254', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (462, 0, 'shadmin', 'shadmin', 'YwJmBGUGbAhvCmoMaQ54AGgCbwRqBmUIZApjDG4OUQBQAlcEUgZdCFwKWwxWDlkAWAI=', '上海管理员', '', 0, '', '', '', '', '', '', '', '', '男', NULL, '6966265', '', '', NULL, '上海分公司管理员', '', '19', '财务部', '4', '上海分公司', '', '管理员', '1', NULL, '上海管理员', '462', NULL, 0, NULL, NULL, '192.168.1.244', NULL, 'C8:3A:35:C1:14:0F', '192.168.1.244', NULL, 'C8:3A:35:C1:14:0F', NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (463, 0, 'bjadmin', 'bjadmin', 'YwJmBGUGbAhvCmoMaQ5oAGgCbwRqBmUIZApjDH4OUQBQAlcEUgZdCFwKWwxWDlkAWAI=', '北京管理员', '', 0, '', '', '', '', '', '', '', '', '男', NULL, '', '', '', NULL, '北京分公司管理员', '', '21', '财务部', '5', '北京分公司', '', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, '', NULL, '', NULL);
INSERT INTO T_ACL_User (ID, PID, HandNo, Name, Password, FullName, Nickname, IsExpire, Title, IdentityCard, MobilePhone, OfficePhone, HomePhone, Email, Address, WorkAddr, Gender, Birthday, QQ, Signature, AuditStatus, Portrait, Note, CustomField, Dept_ID, DeptName, Company_ID, CompanyName, SortCode, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Question, Answer, LastLoginIP, LastLoginTime, LastMacAddress, CurrentLoginIP, CurrentLoginTime, CurrentMacAddress, LastPasswordTime) VALUES (464, 0, 'gzadmin', 'gzadmin', 'YwJmBGUGbAhvCmoMaQ5oAHgCbwRqBmUIZApjDH4OUQBQAlcEUgZdCFwKWwxWDlkAWAI=', '广州管理员', '', 0, '', '', '', '', '', '', '', '', '男', NULL, '', '', '', NULL, '广州分公司管理员', '', '7', '财务部', '3', '广州分公司', '', '管理员', '1', NULL, '管理员', '1', NULL, 0, NULL, NULL, '192.168.1.244', NULL, 'C8:3A:35:C1:14:0F', '192.168.1.244', NULL, 'C8:3A:35:C1:14:0F', NULL);

commit;



INSERT INTO T_ACL_OU_User (User_ID, OU_ID) VALUES (1, 6);
INSERT INTO T_ACL_OU_User (User_ID, OU_ID) VALUES (421, 6);
INSERT INTO T_ACL_OU_User (User_ID, OU_ID) VALUES (422, 6);
INSERT INTO T_ACL_OU_User (User_ID, OU_ID) VALUES (423, 6);
INSERT INTO T_ACL_OU_User (User_ID, OU_ID) VALUES (424, 6);
INSERT INTO T_ACL_OU_User (User_ID, OU_ID) VALUES (425, 6);
INSERT INTO T_ACL_OU_User (User_ID, OU_ID) VALUES (426, 6);
INSERT INTO T_ACL_OU_User (User_ID, OU_ID) VALUES (427, 6);
INSERT INTO T_ACL_OU_User (User_ID, OU_ID) VALUES (428, 6);
INSERT INTO T_ACL_OU_User (User_ID, OU_ID) VALUES (429, 6);
INSERT INTO T_ACL_OU_User (User_ID, OU_ID) VALUES (430, 6);


INSERT INTO T_ACL_Role (ID, PID, HandNo, Name, Note, SortCode, Category, Company_ID, CompanyName, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Enabled) VALUES (1, -1, '0001', '超级管理员', '超级管理员', '0001', '系统角色', '1', '爱奇迪集团', '管理员', '1', NULL, '管理员', '1', NULL, 0, 1);
INSERT INTO T_ACL_Role (ID, PID, HandNo, Name, Note, SortCode, Category, Company_ID, CompanyName, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Enabled) VALUES (2, -1, '1001', '系统管理员', '', '1001', '系统角色', '3', '广州分公司', '管理员', '1', NULL, '管理员', '1', NULL, 0, 1);
INSERT INTO T_ACL_Role (ID, PID, HandNo, Name, Note, SortCode, Category, Company_ID, CompanyName, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Enabled) VALUES (3, -1, '1002', '总经理', '', '1002', '业务角色', '3', '广州分公司', '管理员', '1', NULL, '管理员', '1', NULL, 0, 1);
INSERT INTO T_ACL_Role (ID, PID, HandNo, Name, Note, SortCode, Category, Company_ID, CompanyName, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Enabled) VALUES (4, -1, '1003', '副总经理', '', '1003', '业务角色', '3', '广州分公司', '管理员', '1', NULL, '管理员', '1', NULL, 0, 1);
INSERT INTO T_ACL_Role (ID, PID, HandNo, Name, Note, SortCode, Category, Company_ID, CompanyName, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Enabled) VALUES (5, -1, '1004', '技术总监', '', '1004', '业务角色', '3', '广州分公司', '管理员', '1', NULL, '管理员', '1', NULL, 0, 1);
INSERT INTO T_ACL_Role (ID, PID, HandNo, Name, Note, SortCode, Category, Company_ID, CompanyName, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Enabled) VALUES (6, -1, '1005', '财务部经理', '', '1005', '业务角色', '3', '广州分公司', '管理员', '1', NULL, '管理员', '1', NULL, 0, 1);
INSERT INTO T_ACL_Role (ID, PID, HandNo, Name, Note, SortCode, Category, Company_ID, CompanyName, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Enabled) VALUES (7, -1, '1006', '部门经理', '', '1006', '业务角色', '3', '广州分公司', '管理员', '1', NULL, '管理员', '1', NULL, 0, 1);
INSERT INTO T_ACL_Role (ID, PID, HandNo, Name, Note, SortCode, Category, Company_ID, CompanyName, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Enabled) VALUES (8, -1, '1007', '部门副经理', '', '1007', '业务角色', '3', '广州分公司', '管理员', '1', NULL, '管理员', '1', NULL, 0, 1);
INSERT INTO T_ACL_Role (ID, PID, HandNo, Name, Note, SortCode, Category, Company_ID, CompanyName, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Enabled) VALUES (9, -1, '1008', '会计', '', '1008', '业务角色', '3', '广州分公司', '管理员', '1', NULL, '管理员', '1', NULL, 0, 1);
INSERT INTO T_ACL_Role (ID, PID, HandNo, Name, Note, SortCode, Category, Company_ID, CompanyName, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Enabled) VALUES (10, -1, '1009', '出纳', '', '1009', '业务角色', '3', '广州分公司', '管理员', '1', NULL, '管理员', '1', NULL, 0, 1);
INSERT INTO T_ACL_Role (ID, PID, HandNo, Name, Note, SortCode, Category, Company_ID, CompanyName, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Enabled) VALUES (11, -1, '2001', '系统管理员', '', '2001', '系统角色', '4', '上海分公司', '管理员', '1', NULL, '管理员', '1', NULL, 0, 1);
INSERT INTO T_ACL_Role (ID, PID, HandNo, Name, Note, SortCode, Category, Company_ID, CompanyName, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Enabled) VALUES (12, -1, '3001', '系统管理员', '', '3001', '系统角色', '5', '北京分公司', '管理员', '1', NULL, '管理员', '1', NULL, 0, 1);
INSERT INTO T_ACL_Role (ID, PID, HandNo, Name, Note, SortCode, Category, Company_ID, CompanyName, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Enabled) VALUES (13, -1, '2003', '部门经理', '', '2003', '业务角色', '4', '上海分公司', '管理员', '1', NULL, '管理员', '1', NULL, 0, 1);
INSERT INTO T_ACL_Role (ID, PID, HandNo, Name, Note, SortCode, Category, Company_ID, CompanyName, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Enabled) VALUES (14, -1, '2004', '财务部经理', '', '2004', '业务角色', '4', '上海分公司', '管理员', '1', NULL, '管理员', '1', NULL, 0, 1);
INSERT INTO T_ACL_Role (ID, PID, HandNo, Name, Note, SortCode, Category, Company_ID, CompanyName, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Enabled) VALUES (15, -1, '3002', '部门经理', '', '3002', '业务角色', '5', '北京分公司', '管理员', '1', NULL, '管理员', '1', NULL, 0, 1);
INSERT INTO T_ACL_Role (ID, PID, HandNo, Name, Note, SortCode, Category, Company_ID, CompanyName, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Enabled) VALUES (16, -1, '3003', '财务部经理', '', '3003', '业务角色', '5', '北京分公司', '管理员', '1', NULL, '管理员', '1', NULL, 0, 1);
INSERT INTO T_ACL_Role (ID, PID, HandNo, Name, Note, SortCode, Category, Company_ID, CompanyName, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Enabled) VALUES (18, -1, '2002', '副总经理', '', '2002', '业务角色', '4', '上海分公司', '管理员', '1', NULL, '管理员', '1', NULL, 0, 1);
INSERT INTO T_ACL_Role (ID, PID, HandNo, Name, Note, SortCode, Category, Company_ID, CompanyName, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Enabled) VALUES (19, -1, '3002', '副总经理', '', '3001.02', '业务角色', '5', '北京分公司', '管理员', '1', NULL, '管理员', '1', NULL, 0, 1);
INSERT INTO T_ACL_Role (ID, PID, HandNo, Name, Note, SortCode, Category, Company_ID, CompanyName, Creator, Creator_ID, CreateTime, Editor, Editor_ID, EditTime, Deleted, Enabled) VALUES (20, -1, '2001.01', '测试', '', '2001.01', '系统角色', '28', '测试集团', '管理员', '1', NULL, '管理员', '1', NULL, 1, 1);


INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '1');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '3');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '13');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '2');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '8');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '5');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '12');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '7');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '6');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '21');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '20');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '15');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '16');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '4');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '17');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '14');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '11');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '19');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '10');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '9');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '18');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (2, '1');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (2, '3');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (2, '13');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (2, '2');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (2, '8');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (2, '5');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (2, '12');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (2, '7');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (2, '6');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (2, '21');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (2, '20');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (2, '15');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (2, '16');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (2, '4');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (2, '17');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (2, '14');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (2, '11');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (2, '19');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (2, '10');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (2, '9');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (2, '18');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '5f5f97f3-25b5-445f-9db4-24f02ff9a399');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '19ae112f-e515-4416-b315-c79331ea194d');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'c49dd910-3c59-43dd-a053-a3bfdd1a899f');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'a88f2c58-4e4c-4cd6-aac2-e4be5e62788a');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (11, '1');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (11, '3');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (11, '13');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (11, '2');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (11, '8');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (11, '5');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (11, '12');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (11, '7');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (11, '6');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (11, '15');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (11, '16');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (11, '4');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (11, '17');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (11, '14');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (11, '11');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (11, '10');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (11, '9');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '5f5f97f3-25b5-445f-9db4-24f02ff9a399');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'd30866f0-83a0-4526-9f7a-c6e214103cfa');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '35958d2e-091d-4bb6-ab77-c4d4c6e9f3e3');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '4956f863-3e48-4e0c-b8de-1b4f85f75c13');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '6a38eb8f-c6d5-4a21-9bb6-79323cbd1825');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '27a9f0ad-c52f-4720-ab2b-a7da569d44b2');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '827a522c-e86b-460a-820b-1ad9cf751e11');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '6fb85f23-aa56-4f78-9ff0-a5c60afea746');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '4701c835-09f7-4e24-9028-718db935b6c1');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'dc5efbe9-c237-4a56-9f3c-9165f44e1fa6');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '0e55a030-3467-41a9-8384-395de3fe38aa');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'a9e5c283-4ebe-4855-8563-9268e4ddc662');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '2661fd37-1526-4546-a2c5-21a30d717eab');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '164cd871-3baf-4e13-9e57-424eae670b4a');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '14c46006-b297-4c2d-8bfc-f142dbeb03b5');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '6c1b8cd6-37a8-4df6-9b06-f89929cac217');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'f763c480-ea1a-4202-819b-4362b5235bb5');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '8ea4cfba-5abc-4512-9a65-899ca878ca56');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '0c2b77ba-2294-4d14-bb07-2ffb56dfb68f');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '1d3749c2-d4d1-4b71-8f6a-579927b8f26f');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'f3427e77-1196-4958-b85d-04d8b4af29b1');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '8fdbbdb6-bd3b-4baa-9f91-97a4599330d5');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'ea451efa-2094-4717-9dfe-9f59bb6a6d44');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '395f482f-6e32-417d-8c60-3332b5fb33ae');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '725a388a-aa32-422b-93bc-016d64e350d5');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '368cc740-0083-44c8-a981-c856d3774a91');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'e0aa379c-b99c-4dfe-8c4c-4df30d0be72f');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'ddecc61f-c352-40ce-8ef9-8bbe446edbc4');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '39884a5e-20f9-46dc-acb0-e71e2a0ce114');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'd24f4847-e551-4dfd-bdf7-8e63cf38ca81');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '22686155-24b7-4aff-8526-f6952a73f286');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '927ded80-3494-43d4-8dc5-66500b676805');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '16756e4f-93c5-4e28-a37e-c24ce77e4f67');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'f5f74ac5-ba53-4e77-bc39-518aeb472f7e');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '10391976-afa7-498b-99a4-047b80399ad9');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'cc560c2c-8293-4264-860b-aee446256971');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'b48b1e22-f2a2-487c-be99-be1bafabd748');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '4b100b92-59e8-4198-84c6-d8abadafefd9');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'cab23422-e84d-4eac-bf40-592087db6ca5');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '11388203-abb4-4f9e-b6c2-b3acd4b078b0');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'cfdaf831-c73b-407f-a5fd-671a247f1565');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '0edaac28-7c36-4e20-b4d4-f35591671e42');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '0fa338b5-c140-47ec-a1ca-4d8987766814');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '9abc6066-7615-42bf-b94e-03fe004cbcc5');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '0523a4da-9fdc-4eb4-b1c4-ec295cf1f17b');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'c98be4bc-a3da-4e46-83dc-def8c5c0622a');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'df99eca3-2830-45b3-a5e0-ef0ed0908f95');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'f7ecd42d-146e-458d-89d0-b1b8dd720962');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'e6bb6503-3a6e-462d-9070-624d8ea97817');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '57df0130-c582-4825-a853-f5bec89e20ea');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '7f7a46ea-a8b9-4157-b34b-8fcf73717d2c');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'd2041508-c7d0-4766-af55-7212f0819b0e');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'c5156b6c-785c-4206-89ce-167f0d05b7bd');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '4a644401-a623-4de9-8d81-95fd540eff5f');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '3058d3da-e70c-4549-853d-eb623d92da10');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '8b3b3c24-1520-41f0-832d-a64d06bbcd24');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'a495dd9c-c861-470a-a811-aad864d106ad');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'b67b9237-eb3e-428f-90a2-910d09dc903c');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'bf38b532-8ba4-4458-9a36-ece3e928784c');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'bb12de68-37bd-4e72-9c2b-888a5bc10f94');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '2a2860f3-1ce5-4d28-b2ea-b307a238993c');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'b4a48748-6464-4150-8ade-6a4ab7d67b5c');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '6d8e8e0b-7ffb-4954-a164-42f62346c83c');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '2b043dad-b967-4754-b7ae-4dc801a27301');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '886be1c5-0b46-4b3e-8ff7-29cd482513a5');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'c90a32ae-5936-40dd-ab28-cd55b0cbdf7f');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '81446114-a220-4ef4-b19f-4a2a484e8b8a');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'b533abff-d542-4349-98e7-a5264b6b49d2');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'f93d3fcd-ac5f-4bb9-9457-be93d74c6208');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'fdb6b1ce-f99c-44a3-a8ff-02f389119e43');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '3ab0bed8-4c91-423d-af87-fb9f5e3ce550');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'df9efacb-b065-44a9-994c-d0d7f9a73bfd');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '98e72e2e-e05a-44aa-9941-8e8f5b7fc351');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'd03221fe-9f44-4a77-9d70-31fdb0036d92');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '3dc99e62-3a32-462f-93b7-b8d8070a0ebb');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '719dd6f3-8447-4952-9084-afefed1c5423');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '3161bd07-2f53-4cc0-920f-5e2af6115005');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '3cc934bb-5056-471b-9463-eb5427f21eac');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '82cbedc1-053a-443d-9080-cd12d6f3509b');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'b2158791-154f-433b-b1d1-a9c227e3eebf');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '5f9ac6c9-ab27-4861-8c58-817d50f94f00');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '52a7a364-8885-490b-b0a4-5fb06c5d8110');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '1be71a61-29ce-4554-9add-54fc951f0e32');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '0c8c3f13-d571-40bd-b673-6144da1940f6');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'cfcd3cde-aac7-4677-a3c0-22ae12da161f');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '7068ac75-d813-42b7-8df3-d64bd514af01');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'bca930db-fa30-4650-a04a-855530236351');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '53f1a522-4df6-4ed8-b462-9562bc67add8');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '9c3a0183-e4a1-4391-bdb7-1602f7cda732');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'aabd4e6f-054b-446c-b28f-b5d6bdaaf972');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '0d2ac23b-5287-4738-b131-fae43d0e752c');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '9cfce854-4769-4501-8165-6bf7d6cea0a0');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '843e6cd8-24b5-4462-88e1-dc0bee67d422');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'ea0f2170-4020-4108-b67c-6bcbb0ba922f');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '52c41acc-609e-4c8b-b377-da2cb7d9e2cf');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '431b4d49-a235-4c90-951b-e848c21d239b');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'a97c0323-85ba-46e3-ac87-c42ce3b5a7be');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '859bb03c-be62-4db2-9eb3-07906ac764d9');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '0309804e-1367-4345-8bdd-03c1a42b3dec');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'bf098f26-6512-4970-8ab8-914413de3f5c');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '2427d15a-a77f-4522-9924-ebbee884efad');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'ec46889c-630e-4e5f-a6cd-1654c9d8655b');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '92088c67-931c-4fe7-89c5-3f3f06bd4c9a');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '2f362b2e-04d8-49a5-9bb1-c7bce9799574');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '158485f3-6019-4b29-8e26-87ecaa3ea614');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'b9a84dba-afe3-4130-a896-27036bad7fbb');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '642ea575-c1b2-4c9b-b41e-198394c870c0');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '8d4d318f-bd73-451a-a04b-225bf79ed200');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'f5323f8f-5c2b-4531-a06d-5db11cdf1c67');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '7545a583-d58f-4998-a718-598adf9ec7ae');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '506bcaf9-4556-4f10-920a-7bcfdcd7fba0');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'd589506e-beb0-45bb-99da-c22d5a93afb7');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'f2ee45db-813a-4695-8a3c-91f8ec9369e6');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '3d990c6c-da45-4c18-aff2-609b9561f53d');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'b9066816-48bb-48dd-8335-970678d14de7');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '920f5ea7-9cae-49a0-a64e-f4ec0303d90c');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '282aaebe-e763-4d41-95b7-be25460483ee');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '46b75046-de8d-400f-af9f-aa7bd3d2e2e5');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '2f50ae12-5ab6-4948-af24-53e4cc1184d6');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'eb612ab7-1dfc-4809-af6e-78903335016e');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '5f2c542d-6327-46aa-8a53-b13b2f3b03ff');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '59127428-a575-4114-9eb9-328e12cfe1ed');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '0490eefe-f890-4cf4-81aa-f91ab386524d');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '66a390df-130c-46a7-9aad-ab1b08aa3a7c');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'f12b4eba-344a-4d8b-9ee3-b8bf3ef22d89');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '33839567-456a-4f9a-98e0-bc8f2161e95b');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '710b71fe-22f1-4345-9abe-be42261700fb');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '19ae112f-e515-4416-b315-c79331ea194d');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'c49dd910-3c59-43dd-a053-a3bfdd1a899f');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'a88f2c58-4e4c-4cd6-aac2-e4be5e62788a');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '811c04b6-cf72-4c91-931f-76cb108277b9');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '77917fc2-82e4-4f42-a86b-f6030fc14c2a');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '89a2d3f3-9c6a-41ca-bee2-87e48c4906d4');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '5db0b095-07c6-4295-9d90-47ab39dace0f');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'de00dae4-3f88-408c-ad78-1f5e4090c96f');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '2859cccd-ad43-4b3d-b48b-9e8cd6e36435');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'a9ac458a-2527-41a2-afbb-ce480630def7');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'e5cc0a04-c454-48ad-bb16-9257050e7030');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'e795ceff-95ff-4ae1-81ae-e7c7cbe9de9c');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'ec04767e-de54-4d94-bb1c-bf5078485a74');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '2711d9f5-fdb8-4746-b7bb-ad23c023e6fd');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'b9839094-6061-4dc1-8671-f1645829e4de');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'c2828a48-9488-4961-a6dd-cc99ea5d8fc6');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '58473146-724e-481e-a0cb-03602ceed397');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '2da801a7-1272-4b5c-92d5-2f4ed1d1bbd1');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '912d72a6-5284-457b-93ff-665d24d519c1');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '0d894d3d-7e35-4c5b-8017-149f1988ca76');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '175e6e6c-5d85-42d2-96f1-86e358d96715');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'f4e17c19-fb64-4700-b5b7-98c6ffc02f31');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '77f0ea7e-da5c-4da1-a03d-1fd823091607');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'd36feb40-5d78-48b8-8534-dd2c1c8020db');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '4fde61cb-ffdc-4909-9b2f-2c15902c2e95');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '14ff4fff-e70b-4123-9099-07d68b654e94');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'b5870ba0-ad38-46c3-9278-b4fb671e6573');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '2191e261-2534-4e84-9eaf-eaf777bbb5bd');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '655ee8d1-b1cf-4ac2-a116-3e6611270dbf');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '420cc01f-0716-46c5-9f12-a43175ae460f');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '96a02b35-5c12-4af1-8985-fd6ed28263e8');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'cc8bb692-5e11-4aaa-95ce-25143672f2bb');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'b674930b-69fc-4994-a5af-2579609a1fb7');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '2d2bb8bd-41f5-4d0f-8fcf-d9362d5931c6');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'fa7eec71-9309-41e3-9257-6756bd766003');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '8ac5e7dd-ce6e-44f7-9e3c-d40dbe9e6ff0');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'fed33b0a-1f09-4f88-9b01-a0791308324a');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'e009fe21-3440-4d11-9f8e-fcfd5c1caf92');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '3dc00c51-4cfa-4425-9f15-021447431f3b');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'eed3a951-e9e8-4398-a59f-f70d64184e94');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '0c368397-a2f0-4346-8209-d2de61eefb03');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'c8c399fc-2ec6-4d5f-b2f8-cf70a0077955');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '9560efb6-d2ae-4f27-8030-f12bdff29d3a');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '6616b08f-d98c-4451-a95c-654979de81a9');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'f9364658-0d6f-4d1d-a16d-193550061642');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '5c2db333-5009-4630-a998-4e3e4042d2b8');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'b785666c-1d1c-4adc-aca7-1c029ccee311');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '53571467-ab56-4141-bbc8-7bd14f82890f');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '919ef0e3-0f82-4e73-81b6-db6558f2498c');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '09c67ebe-8490-4404-a285-fe9488999fb6');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'a09e1743-9472-4541-9464-7f97e8294cc5');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'b1c81af5-92bf-42d9-a683-49d02f911db6');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '5e511c79-fa8a-4098-b583-3c2beda95624');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'c8edb27f-edff-4acc-91a3-1a20521f6fdb');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '313a095e-e1a9-474f-bed1-b71aea7af8f1');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '957e9934-0e88-4fab-9b8a-bb0dae275968');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (18, '1');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (18, '2');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (18, '8');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (18, '3');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (18, '13');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (18, '4');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (18, '14');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (18, '17');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (18, '5');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (18, '6');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (18, '7');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (18, '12');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (18, '9');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (18, '10');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (18, '11');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '9ea1d70f-ee33-4df1-8358-91c8817848d6');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '62fb56d6-3974-4aa0-b8ba-93f718492b4d');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'a27d557c-1169-4aae-ad0f-d856e9af8a47');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'fed7086c-9ae5-4981-a2ca-78b06ee4cddc');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'f9870f06-df97-4d08-b349-00079114b794');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, 'a4cd9c9c-190b-4b5c-8c3e-1e1e603ba6fc');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (1, '940a573e-bcf5-4708-8b57-5519a8142483');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '811c04b6-cf72-4c91-931f-76cb108277b9');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '5db0b095-07c6-4295-9d90-47ab39dace0f');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '3d990c6c-da45-4c18-aff2-609b9561f53d');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'b9066816-48bb-48dd-8335-970678d14de7');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '920f5ea7-9cae-49a0-a64e-f4ec0303d90c');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '282aaebe-e763-4d41-95b7-be25460483ee');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '46b75046-de8d-400f-af9f-aa7bd3d2e2e5');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '2f50ae12-5ab6-4948-af24-53e4cc1184d6');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'eb612ab7-1dfc-4809-af6e-78903335016e');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '4701c835-09f7-4e24-9028-718db935b6c1');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'dc5efbe9-c237-4a56-9f3c-9165f44e1fa6');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '0e55a030-3467-41a9-8384-395de3fe38aa');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'a9e5c283-4ebe-4855-8563-9268e4ddc662');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '2661fd37-1526-4546-a2c5-21a30d717eab');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '164cd871-3baf-4e13-9e57-424eae670b4a');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '14c46006-b297-4c2d-8bfc-f142dbeb03b5');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '5f2c542d-6327-46aa-8a53-b13b2f3b03ff');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '59127428-a575-4114-9eb9-328e12cfe1ed');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '0490eefe-f890-4cf4-81aa-f91ab386524d');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '66a390df-130c-46a7-9aad-ab1b08aa3a7c');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'f12b4eba-344a-4d8b-9ee3-b8bf3ef22d89');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '33839567-456a-4f9a-98e0-bc8f2161e95b');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '710b71fe-22f1-4345-9abe-be42261700fb');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '642ea575-c1b2-4c9b-b41e-198394c870c0');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '8d4d318f-bd73-451a-a04b-225bf79ed200');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'f5323f8f-5c2b-4531-a06d-5db11cdf1c67');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '7545a583-d58f-4998-a718-598adf9ec7ae');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '506bcaf9-4556-4f10-920a-7bcfdcd7fba0');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'd589506e-beb0-45bb-99da-c22d5a93afb7');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'f2ee45db-813a-4695-8a3c-91f8ec9369e6');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '655ee8d1-b1cf-4ac2-a116-3e6611270dbf');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '420cc01f-0716-46c5-9f12-a43175ae460f');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '96a02b35-5c12-4af1-8985-fd6ed28263e8');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'cc8bb692-5e11-4aaa-95ce-25143672f2bb');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'b674930b-69fc-4994-a5af-2579609a1fb7');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '2d2bb8bd-41f5-4d0f-8fcf-d9362d5931c6');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '77917fc2-82e4-4f42-a86b-f6030fc14c2a');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'fa7eec71-9309-41e3-9257-6756bd766003');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '6c1b8cd6-37a8-4df6-9b06-f89929cac217');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'f763c480-ea1a-4202-819b-4362b5235bb5');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '8ea4cfba-5abc-4512-9a65-899ca878ca56');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '0c2b77ba-2294-4d14-bb07-2ffb56dfb68f');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '1d3749c2-d4d1-4b71-8f6a-579927b8f26f');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'f3427e77-1196-4958-b85d-04d8b4af29b1');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '8fdbbdb6-bd3b-4baa-9f91-97a4599330d5');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '7068ac75-d813-42b7-8df3-d64bd514af01');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'bca930db-fa30-4650-a04a-855530236351');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '53f1a522-4df6-4ed8-b462-9562bc67add8');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '9c3a0183-e4a1-4391-bdb7-1602f7cda732');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'aabd4e6f-054b-446c-b28f-b5d6bdaaf972');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '0d2ac23b-5287-4738-b131-fae43d0e752c');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '9cfce854-4769-4501-8165-6bf7d6cea0a0');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '7f7a46ea-a8b9-4157-b34b-8fcf73717d2c');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'd2041508-c7d0-4766-af55-7212f0819b0e');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'c5156b6c-785c-4206-89ce-167f0d05b7bd');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '4a644401-a623-4de9-8d81-95fd540eff5f');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '3058d3da-e70c-4549-853d-eb623d92da10');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '8b3b3c24-1520-41f0-832d-a64d06bbcd24');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'a495dd9c-c861-470a-a811-aad864d106ad');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '82cbedc1-053a-443d-9080-cd12d6f3509b');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'b2158791-154f-433b-b1d1-a9c227e3eebf');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '5f9ac6c9-ab27-4861-8c58-817d50f94f00');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '52a7a364-8885-490b-b0a4-5fb06c5d8110');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '1be71a61-29ce-4554-9add-54fc951f0e32');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '0c8c3f13-d571-40bd-b673-6144da1940f6');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'cfcd3cde-aac7-4677-a3c0-22ae12da161f');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '843e6cd8-24b5-4462-88e1-dc0bee67d422');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'ea0f2170-4020-4108-b67c-6bcbb0ba922f');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '52c41acc-609e-4c8b-b377-da2cb7d9e2cf');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '431b4d49-a235-4c90-951b-e848c21d239b');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'a97c0323-85ba-46e3-ac87-c42ce3b5a7be');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '859bb03c-be62-4db2-9eb3-07906ac764d9');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '0309804e-1367-4345-8bdd-03c1a42b3dec');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '886be1c5-0b46-4b3e-8ff7-29cd482513a5');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'c90a32ae-5936-40dd-ab28-cd55b0cbdf7f');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '81446114-a220-4ef4-b19f-4a2a484e8b8a');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'b533abff-d542-4349-98e7-a5264b6b49d2');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'f93d3fcd-ac5f-4bb9-9457-be93d74c6208');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'fdb6b1ce-f99c-44a3-a8ff-02f389119e43');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '3ab0bed8-4c91-423d-af87-fb9f5e3ce550');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '8ac5e7dd-ce6e-44f7-9e3c-d40dbe9e6ff0');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'fed33b0a-1f09-4f88-9b01-a0791308324a');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'e009fe21-3440-4d11-9f8e-fcfd5c1caf92');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '3dc00c51-4cfa-4425-9f15-021447431f3b');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'eed3a951-e9e8-4398-a59f-f70d64184e94');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '0c368397-a2f0-4346-8209-d2de61eefb03');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'c8c399fc-2ec6-4d5f-b2f8-cf70a0077955');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '9560efb6-d2ae-4f27-8030-f12bdff29d3a');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '6616b08f-d98c-4451-a95c-654979de81a9');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'f9364658-0d6f-4d1d-a16d-193550061642');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '5c2db333-5009-4630-a998-4e3e4042d2b8');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'b785666c-1d1c-4adc-aca7-1c029ccee311');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '53571467-ab56-4141-bbc8-7bd14f82890f');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '919ef0e3-0f82-4e73-81b6-db6558f2498c');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '9abc6066-7615-42bf-b94e-03fe004cbcc5');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '0523a4da-9fdc-4eb4-b1c4-ec295cf1f17b');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'c98be4bc-a3da-4e46-83dc-def8c5c0622a');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'df99eca3-2830-45b3-a5e0-ef0ed0908f95');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'f7ecd42d-146e-458d-89d0-b1b8dd720962');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'e6bb6503-3a6e-462d-9070-624d8ea97817');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '57df0130-c582-4825-a853-f5bec89e20ea');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '9ea1d70f-ee33-4df1-8358-91c8817848d6');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '62fb56d6-3974-4aa0-b8ba-93f718492b4d');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '940a573e-bcf5-4708-8b57-5519a8142483');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'a27d557c-1169-4aae-ad0f-d856e9af8a47');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'a4cd9c9c-190b-4b5c-8c3e-1e1e603ba6fc');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'f9870f06-df97-4d08-b349-00079114b794');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'fed7086c-9ae5-4981-a2ca-78b06ee4cddc');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'b48b1e22-f2a2-487c-be99-be1bafabd748');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '4b100b92-59e8-4198-84c6-d8abadafefd9');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'cab23422-e84d-4eac-bf40-592087db6ca5');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '11388203-abb4-4f9e-b6c2-b3acd4b078b0');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'cfdaf831-c73b-407f-a5fd-671a247f1565');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '0edaac28-7c36-4e20-b4d4-f35591671e42');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '0fa338b5-c140-47ec-a1ca-4d8987766814');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'b67b9237-eb3e-428f-90a2-910d09dc903c');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'bf38b532-8ba4-4458-9a36-ece3e928784c');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'bb12de68-37bd-4e72-9c2b-888a5bc10f94');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '2a2860f3-1ce5-4d28-b2ea-b307a238993c');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'b4a48748-6464-4150-8ade-6a4ab7d67b5c');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '6d8e8e0b-7ffb-4954-a164-42f62346c83c');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '2b043dad-b967-4754-b7ae-4dc801a27301');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'b9839094-6061-4dc1-8671-f1645829e4de');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '89a2d3f3-9c6a-41ca-bee2-87e48c4906d4');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'c2828a48-9488-4961-a6dd-cc99ea5d8fc6');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '58473146-724e-481e-a0cb-03602ceed397');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '2da801a7-1272-4b5c-92d5-2f4ed1d1bbd1');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '912d72a6-5284-457b-93ff-665d24d519c1');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '0d894d3d-7e35-4c5b-8017-149f1988ca76');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '175e6e6c-5d85-42d2-96f1-86e358d96715');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'bf098f26-6512-4970-8ab8-914413de3f5c');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '2427d15a-a77f-4522-9924-ebbee884efad');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'ec46889c-630e-4e5f-a6cd-1654c9d8655b');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '92088c67-931c-4fe7-89c5-3f3f06bd4c9a');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '2f362b2e-04d8-49a5-9bb1-c7bce9799574');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '158485f3-6019-4b29-8e26-87ecaa3ea614');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'b9a84dba-afe3-4130-a896-27036bad7fbb');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'd24f4847-e551-4dfd-bdf7-8e63cf38ca81');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '22686155-24b7-4aff-8526-f6952a73f286');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '927ded80-3494-43d4-8dc5-66500b676805');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '16756e4f-93c5-4e28-a37e-c24ce77e4f67');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'f5f74ac5-ba53-4e77-bc39-518aeb472f7e');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '10391976-afa7-498b-99a4-047b80399ad9');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'cc560c2c-8293-4264-860b-aee446256971');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'd30866f0-83a0-4526-9f7a-c6e214103cfa');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '35958d2e-091d-4bb6-ab77-c4d4c6e9f3e3');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '4956f863-3e48-4e0c-b8de-1b4f85f75c13');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '6a38eb8f-c6d5-4a21-9bb6-79323cbd1825');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '27a9f0ad-c52f-4720-ab2b-a7da569d44b2');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '827a522c-e86b-460a-820b-1ad9cf751e11');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '6fb85f23-aa56-4f78-9ff0-a5c60afea746');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'de00dae4-3f88-408c-ad78-1f5e4090c96f');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '2859cccd-ad43-4b3d-b48b-9e8cd6e36435');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'a9ac458a-2527-41a2-afbb-ce480630def7');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'e5cc0a04-c454-48ad-bb16-9257050e7030');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'e795ceff-95ff-4ae1-81ae-e7c7cbe9de9c');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'ec04767e-de54-4d94-bb1c-bf5078485a74');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '2711d9f5-fdb8-4746-b7bb-ad23c023e6fd');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'df9efacb-b065-44a9-994c-d0d7f9a73bfd');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '98e72e2e-e05a-44aa-9941-8e8f5b7fc351');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'd03221fe-9f44-4a77-9d70-31fdb0036d92');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '3dc99e62-3a32-462f-93b7-b8d8070a0ebb');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '719dd6f3-8447-4952-9084-afefed1c5423');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '3161bd07-2f53-4cc0-920f-5e2af6115005');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '3cc934bb-5056-471b-9463-eb5427f21eac');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'ea451efa-2094-4717-9dfe-9f59bb6a6d44');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '395f482f-6e32-417d-8c60-3332b5fb33ae');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '725a388a-aa32-422b-93bc-016d64e350d5');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '368cc740-0083-44c8-a981-c856d3774a91');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'e0aa379c-b99c-4dfe-8c4c-4df30d0be72f');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'ddecc61f-c352-40ce-8ef9-8bbe446edbc4');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '39884a5e-20f9-46dc-acb0-e71e2a0ce114');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'f4e17c19-fb64-4700-b5b7-98c6ffc02f31');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '77f0ea7e-da5c-4da1-a03d-1fd823091607');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'd36feb40-5d78-48b8-8534-dd2c1c8020db');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '4fde61cb-ffdc-4909-9b2f-2c15902c2e95');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '14ff4fff-e70b-4123-9099-07d68b654e94');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'b5870ba0-ad38-46c3-9278-b4fb671e6573');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '2191e261-2534-4e84-9eaf-eaf777bbb5bd');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '09c67ebe-8490-4404-a285-fe9488999fb6');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'a09e1743-9472-4541-9464-7f97e8294cc5');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'b1c81af5-92bf-42d9-a683-49d02f911db6');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '5e511c79-fa8a-4098-b583-3c2beda95624');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, 'c8edb27f-edff-4acc-91a3-1a20521f6fdb');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '313a095e-e1a9-474f-bed1-b71aea7af8f1');
INSERT INTO T_ACL_Role_Function (Role_ID, Function_ID) VALUES (12, '957e9934-0e88-4fab-9b8a-bb0dae275968');


INSERT INTO T_ACL_RoleData (ID, Role_ID, BelongCompanys, BelongDepts, ExcludeDepts, Note) VALUES ('cce92af0-6d1e-45dc-8d9e-6d4843337d75', 2, '3', '', '', '');
INSERT INTO T_ACL_SystemType (OID, Name, CustomID, Authorize, Note) VALUES ('WareMis', '企业信息化管理系统', '', '', '');

INSERT INTO T_ACL_User_Role (User_ID, Role_ID) VALUES (1, 1);
INSERT INTO T_ACL_User_Role (User_ID, Role_ID) VALUES (462, 11);
INSERT INTO T_ACL_User_Role (User_ID, Role_ID) VALUES (463, 12);
INSERT INTO T_ACL_User_Role (User_ID, Role_ID) VALUES (464, 2);

commit;



INSERT INTO TB_Province (ID, ProvinceName) VALUES (1, '北京市');
INSERT INTO TB_Province (ID, ProvinceName) VALUES (2, '天津市');
INSERT INTO TB_Province (ID, ProvinceName) VALUES (3, '河北省');
INSERT INTO TB_Province (ID, ProvinceName) VALUES (4, '山西省');
INSERT INTO TB_Province (ID, ProvinceName) VALUES (5, '内蒙古自治区');
INSERT INTO TB_Province (ID, ProvinceName) VALUES (6, '辽宁省');
INSERT INTO TB_Province (ID, ProvinceName) VALUES (7, '吉林省');
INSERT INTO TB_Province (ID, ProvinceName) VALUES (8, '黑龙江省');
INSERT INTO TB_Province (ID, ProvinceName) VALUES (9, '上海市');
INSERT INTO TB_Province (ID, ProvinceName) VALUES (10, '江苏省');
INSERT INTO TB_Province (ID, ProvinceName) VALUES (11, '浙江省');
INSERT INTO TB_Province (ID, ProvinceName) VALUES (12, '安徽省');
INSERT INTO TB_Province (ID, ProvinceName) VALUES (13, '福建省');
INSERT INTO TB_Province (ID, ProvinceName) VALUES (14, '江西省');
INSERT INTO TB_Province (ID, ProvinceName) VALUES (15, '山东省');
INSERT INTO TB_Province (ID, ProvinceName) VALUES (16, '河南省');
INSERT INTO TB_Province (ID, ProvinceName) VALUES (17, '湖北省');
INSERT INTO TB_Province (ID, ProvinceName) VALUES (18, '湖南省');
INSERT INTO TB_Province (ID, ProvinceName) VALUES (19, '广东省');
INSERT INTO TB_Province (ID, ProvinceName) VALUES (20, '广西壮族自治区');
INSERT INTO TB_Province (ID, ProvinceName) VALUES (21, '海南省');
INSERT INTO TB_Province (ID, ProvinceName) VALUES (22, '重庆市');
INSERT INTO TB_Province (ID, ProvinceName) VALUES (23, '四川省');
INSERT INTO TB_Province (ID, ProvinceName) VALUES (24, '贵州省');
INSERT INTO TB_Province (ID, ProvinceName) VALUES (25, '云南省');
INSERT INTO TB_Province (ID, ProvinceName) VALUES (26, '西藏自治区');
INSERT INTO TB_Province (ID, ProvinceName) VALUES (27, '陕西省');
INSERT INTO TB_Province (ID, ProvinceName) VALUES (28, '甘肃省');
INSERT INTO TB_Province (ID, ProvinceName) VALUES (29, '青海省');
INSERT INTO TB_Province (ID, ProvinceName) VALUES (30, '宁夏回族自治区');
INSERT INTO TB_Province (ID, ProvinceName) VALUES (31, '新疆维吾尔自治区');
INSERT INTO TB_Province (ID, ProvinceName) VALUES (32, '香港特别行政区');
INSERT INTO TB_Province (ID, ProvinceName) VALUES (33, '澳门特别行政区');
INSERT INTO TB_Province (ID, ProvinceName) VALUES (34, '台湾省');

INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (1, '北京市', '100000', 1);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (2, '天津市', '100000', 2);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (3, '石家庄市', '050000', 3);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (4, '唐山市', '063000', 3);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (5, '秦皇岛市', '066000', 3);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (6, '邯郸市', '056000', 3);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (7, '邢台市', '054000', 3);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (8, '保定市', '071000', 3);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (9, '张家口市', '075000', 3);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (10, '承德市', '067000', 3);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (11, '沧州市', '061000', 3);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (12, '廊坊市', '065000', 3);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (13, '衡水市', '053000', 3);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (14, '太原市', '030000', 4);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (15, '大同市', '037000', 4);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (16, '阳泉市', '045000', 4);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (17, '长治市', '046000', 4);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (18, '晋城市', '048000', 4);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (19, '朔州市', '036000', 4);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (20, '晋中市', '030600', 4);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (21, '运城市', '044000', 4);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (22, '忻州市', '034000', 4);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (23, '临汾市', '041000', 4);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (24, '吕梁市', '030500', 4);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (25, '呼和浩特市', '010000', 5);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (26, '包头市', '014000', 5);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (27, '乌海市', '016000', 5);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (28, '赤峰市', '024000', 5);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (29, '通辽市', '028000', 5);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (30, '鄂尔多斯市', '010300', 5);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (31, '呼伦贝尔市', '021000', 5);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (32, '巴彦淖尔市', '014400', 5);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (33, '乌兰察布市', '011800', 5);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (34, '兴安盟', '137500', 5);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (35, '锡林郭勒盟', '011100', 5);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (36, '阿拉善盟', '016000', 5);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (37, '沈阳市', '110000', 6);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (38, '大连市', '116000', 6);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (39, '鞍山市', '114000', 6);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (40, '抚顺市', '113000', 6);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (41, '本溪市', '117000', 6);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (42, '丹东市', '118000', 6);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (43, '锦州市', '121000', 6);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (44, '营口市', '115000', 6);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (45, '阜新市', '123000', 6);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (46, '辽阳市', '111000', 6);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (47, '盘锦市', '124000', 6);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (48, '铁岭市', '112000', 6);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (49, '朝阳市', '122000', 6);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (50, '葫芦岛市', '125000', 6);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (51, '长春市', '130000', 7);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (52, '吉林市', '132000', 7);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (53, '四平市', '136000', 7);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (54, '辽源市', '136200', 7);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (55, '通化市', '134000', 7);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (56, '白山市', '134300', 7);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (57, '松原市', '131100', 7);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (58, '白城市', '137000', 7);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (59, '延边朝鲜族自治州', '133000', 7);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (60, '哈尔滨市', '150000', 8);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (61, '齐齐哈尔市', '161000', 8);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (62, '鸡西市', '158100', 8);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (63, '鹤岗市', '154100', 8);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (64, '双鸭山市', '155100', 8);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (65, '大庆市', '163000', 8);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (66, '伊春市', '152300', 8);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (67, '佳木斯市', '154000', 8);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (68, '七台河市', '154600', 8);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (69, '牡丹江市', '157000', 8);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (70, '黑河市', '164300', 8);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (71, '绥化市', '152000', 8);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (72, '大兴安岭地区', '165000', 8);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (73, '上海市', '200000', 9);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (74, '南京市', '210000', 10);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (75, '无锡市', '214000', 10);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (76, '徐州市', '221000', 10);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (77, '常州市', '213000', 10);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (78, '苏州市', '215000', 10);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (79, '南通市', '226000', 10);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (80, '连云港市', '222000', 10);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (81, '淮安市', '223200', 10);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (82, '盐城市', '224000', 10);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (83, '扬州市', '225000', 10);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (84, '镇江市', '212000', 10);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (85, '泰州市', '225300', 10);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (86, '宿迁市', '223800', 10);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (87, '杭州市', '310000', 11);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (88, '宁波市', '315000', 11);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (89, '温州市', '325000', 11);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (90, '嘉兴市', '314000', 11);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (91, '湖州市', '313000', 11);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (92, '绍兴市', '312000', 11);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (93, '金华市', '321000', 11);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (94, '衢州市', '324000', 11);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (95, '舟山市', '316000', 11);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (96, '台州市', '318000', 11);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (97, '丽水市', '323000', 11);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (98, '合肥市', '230000', 12);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (99, '芜湖市', '241000', 12);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (100, '蚌埠市', '233000', 12);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (101, '淮南市', '232000', 12);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (102, '马鞍山市', '243000', 12);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (103, '淮北市', '235000', 12);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (104, '铜陵市', '244000', 12);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (105, '安庆市', '246000', 12);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (106, '黄山市', '242700', 12);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (107, '滁州市', '239000', 12);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (108, '阜阳市', '236100', 12);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (109, '宿州市', '234100', 12);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (111, '六安市', '237000', 12);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (112, '亳州市', '236800', 12);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (113, '池州市', '247100', 12);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (114, '宣城市', '366000', 12);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (115, '福州市', '350000', 13);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (116, '厦门市', '361000', 13);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (117, '莆田市', '351100', 13);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (118, '三明市', '365000', 13);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (119, '泉州市', '362000', 13);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (120, '漳州市', '363000', 13);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (121, '南平市', '353000', 13);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (122, '龙岩市', '364000', 13);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (123, '宁德市', '352100', 13);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (124, '南昌市', '330000', 14);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (125, '景德镇市', '333000', 14);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (126, '萍乡市', '337000', 14);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (127, '九江市', '332000', 14);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (128, '新余市', '338000', 14);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (129, '鹰潭市', '335000', 14);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (130, '赣州市', '341000', 14);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (131, '吉安市', '343000', 14);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (132, '宜春市', '336000', 14);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (133, '抚州市', '332900', 14);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (134, '上饶市', '334000', 14);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (135, '济南市', '250000', 15);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (136, '青岛市', '266000', 15);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (137, '淄博市', '255000', 15);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (138, '枣庄市', '277100', 15);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (139, '东营市', '257000', 15);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (140, '烟台市', '264000', 15);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (141, '潍坊市', '261000', 15);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (142, '济宁市', '272100', 15);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (143, '泰安市', '271000', 15);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (144, '威海市', '265700', 15);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (145, '日照市', '276800', 15);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (146, '莱芜市', '271100', 15);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (147, '临沂市', '276000', 15);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (148, '德州市', '253000', 15);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (149, '聊城市', '252000', 15);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (150, '滨州市', '256600', 15);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (151, '荷泽市', '255000', 15);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (152, '郑州市', '450000', 16);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (153, '开封市', '475000', 16);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (154, '洛阳市', '471000', 16);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (155, '平顶山市', '467000', 16);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (156, '安阳市', '454900', 16);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (157, '鹤壁市', '456600', 16);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (158, '新乡市', '453000', 16);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (159, '焦作市', '454100', 16);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (160, '濮阳市', '457000', 16);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (161, '许昌市', '461000', 16);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (162, '漯河市', '462000', 16);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (163, '三门峡市', '472000', 16);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (164, '南阳市', '473000', 16);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (165, '商丘市', '476000', 16);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (166, '信阳市', '464000', 16);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (167, '周口市', '466000', 16);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (168, '驻马店市', '463000', 16);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (169, '武汉市', '430000', 17);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (170, '黄石市', '435000', 17);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (171, '十堰市', '442000', 17);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (172, '宜昌市', '443000', 17);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (173, '襄阳市', '441000', 17);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (174, '鄂州市', '436000', 17);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (175, '荆门市', '448000', 17);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (176, '孝感市', '432100', 17);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (177, '荆州市', '434000', 17);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (178, '黄冈市', '438000', 17);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (179, '咸宁市', '437000', 17);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (180, '随州市', '441300', 17);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (181, '恩施土家族苗族自治州', '445000', 17);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (182, '神农架', '442400', 17);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (183, '长沙市', '410000', 18);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (184, '株洲市', '412000', 18);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (185, '湘潭市', '411100', 18);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (186, '衡阳市', '421000', 18);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (187, '邵阳市', '422000', 18);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (188, '岳阳市', '414000', 18);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (189, '常德市', '415000', 18);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (190, '张家界市', '427000', 18);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (191, '益阳市', '413000', 18);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (192, '郴州市', '423000', 18);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (193, '永州市', '425000', 18);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (194, '怀化市', '418000', 18);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (195, '娄底市', '417000', 18);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (196, '湘西土家族苗族自治州', '416000', 18);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (197, '广州市', '510000', 19);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (198, '韶关市', '521000', 19);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (199, '深圳市', '518000', 19);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (200, '珠海市', '519000', 19);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (201, '汕头市', '515000', 19);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (202, '佛山市', '528000', 19);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (203, '江门市', '529000', 19);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (204, '湛江市', '524000', 19);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (205, '茂名市', '525000', 19);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (206, '肇庆市', '526000', 19);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (207, '惠州市', '516000', 19);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (208, '梅州市', '514000', 19);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (209, '汕尾市', '516600', 19);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (210, '河源市', '517000', 19);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (211, '阳江市', '529500', 19);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (212, '清远市', '511500', 19);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (213, '东莞市', '511700', 19);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (214, '中山市', '528400', 19);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (215, '潮州市', '515600', 19);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (216, '揭阳市', '522000', 19);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (217, '云浮市', '527300', 19);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (218, '南宁市', '530000', 20);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (219, '柳州市', '545000', 20);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (220, '桂林市', '541000', 20);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (221, '梧州市', '543000', 20);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (222, '北海市', '536000', 20);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (223, '防城港市', '538000', 20);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (224, '钦州市', '535000', 20);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (225, '贵港市', '537100', 20);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (226, '玉林市', '537000', 20);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (227, '百色市', '533000', 20);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (228, '贺州市', '542800', 20);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (229, '河池市', '547000', 20);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (230, '来宾市', '546100', 20);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (231, '崇左市', '532200', 20);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (232, '海口市', '570000', 21);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (233, '三沙市', '572000', 21);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (234, '重庆市', '400000', 22);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (235, '成都市', '610000', 23);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (236, '自贡市', '643000', 23);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (237, '攀枝花市', '617000', 23);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (238, '泸州市', '646100', 23);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (239, '德阳市', '618000', 23);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (240, '绵阳市', '621000', 23);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (241, '广元市', '628000', 23);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (242, '遂宁市', '629000', 23);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (243, '内江市', '641000', 23);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (244, '乐山市', '614000', 23);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (245, '南充市', '637000', 23);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (246, '眉山市', '612100', 23);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (247, '宜宾市', '644000', 23);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (248, '广安市', '638000', 23);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (249, '达州市', '635000', 23);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (250, '雅安市', '625000', 23);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (251, '巴中市', '635500', 23);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (252, '资阳市', '641300', 23);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (253, '阿坝藏族羌族自治州', '624600', 23);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (254, '甘孜藏族自治州', '626000', 23);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (255, '凉山彝族自治州', '615000', 23);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (256, '贵阳市', '55000', 24);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (257, '六盘水市', '553000', 24);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (258, '遵义市', '563000', 24);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (259, '安顺市', '561000', 24);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (260, '铜仁市', '554300', 24);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (261, '黔西南布依族苗族自治州', '551500', 24);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (262, '毕节市', '551700', 24);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (263, '黔东南苗族侗族自治州', '551500', 24);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (264, '黔南布依族苗族自治州', '550100', 24);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (265, '昆明市', '650000', 25);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (266, '曲靖市', '655000', 25);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (267, '玉溪市', '653100', 25);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (268, '保山市', '678000', 25);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (269, '昭通市', '657000', 25);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (270, '丽江市', '674100', 25);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (271, '普洱市', '665000', 25);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (272, '临沧市', '677000', 25);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (273, '楚雄彝族自治州', '675000', 25);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (274, '红河哈尼族彝族自治州', '654400', 25);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (275, '文山壮族苗族自治州', '663000', 25);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (276, '西双版纳傣族自治州', '666200', 25);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (277, '大理白族自治州', '671000', 25);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (278, '德宏傣族景颇族自治州', '678400', 25);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (279, '怒江傈僳族自治州', '671400', 25);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (280, '迪庆藏族自治州', '674400', 25);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (281, '拉萨市', '850000', 26);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (282, '昌都地区', '854000', 26);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (283, '山南地区', '856000', 26);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (284, '日喀则地区', '857000', 26);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (285, '那曲地区', '852000', 26);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (286, '阿里地区', '859100', 26);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (287, '林芝地区', '860100', 26);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (288, '西安市', '710000', 27);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (289, '铜川市', '727000', 27);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (290, '宝鸡市', '721000', 27);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (291, '咸阳市', '712000', 27);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (292, '渭南市', '714000', 27);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (293, '延安市', '716000', 27);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (294, '汉中市', '723000', 27);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (295, '榆林市', '719000', 27);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (296, '安康市', '725000', 27);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (297, '商洛市', '711500', 27);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (298, '兰州市', '730000', 28);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (300, '嘉峪关市', '737100', 28);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (301, '白银市', '730900', 28);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (302, '天水市', '741000', 28);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (303, '武威市', '733000', 28);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (304, '张掖市', '734000', 28);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (305, '平凉市', '744000', 28);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (306, '酒泉市', '735000', 28);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (307, '庆阳市', '744500', 28);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (308, '定西市', '743000', 28);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (309, '陇南市', '742100', 28);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (310, '临夏回族自治州', '731100', 28);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (311, '甘南藏族自治州', '747000', 28);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (312, '西宁市', '810000', 29);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (313, '海东地区', '810600', 29);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (314, '海北藏族自治州', '810300', 29);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (315, '黄南藏族自治州', '811300', 29);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (316, '海南藏族自治州', '813000', 29);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (317, '果洛藏族自治州', '814000', 29);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (318, '玉树藏族自治州', '815000', 29);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (319, '海西蒙古族藏族自治州', '817000', 29);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (320, '银川市', '750000', 30);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (321, '石嘴山市', '753000', 30);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (322, '吴忠市', '751100', 30);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (323, '固原市', '756000', 30);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (324, '中卫市', '751700', 30);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (325, '乌鲁木齐市', '830000', 31);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (326, '克拉玛依市', '834000', 31);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (327, '吐鲁番地区', '838000', 31);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (328, '哈密地区', '839000', 31);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (329, '昌吉回族自治州', '831100', 31);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (330, '博尔塔拉蒙古自治州', '833400', 31);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (331, '巴音郭楞蒙古自治州', '841000', 31);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (332, '阿克苏地区', '843000', 31);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (333, '克孜勒苏柯尔克孜自治州', '835600', 31);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (334, '喀什地区', '844000', 31);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (335, '和田地区', '848000', 31);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (336, '伊犁哈萨克自治州', '833200', 31);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (337, '塔城地区', '834700', 31);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (338, '阿勒泰地区', '836500', 31);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (339, '石河子市', '832000', 31);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (340, '阿拉尔市', '843300', 31);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (341, '图木舒克市', '843900', 31);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (342, '五家渠市', '831300', 31);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (343, '香港特别行政区', '000000', 32);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (344, '澳门特别行政区', '000000', 33);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (345, '台湾省', '000000', 34);
INSERT INTO TB_City (ID, CityName, ZipCode, ProvinceID) VALUES (346, '三亚市', NULL, 21);

commit;

INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('0007f3d4-7b3b-42f9-b112-004245f6dc34', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '朝鲜族', '朝鲜族', '', '010', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('003f83d1-44e7-4b19-91d8-9758b686e632', '3ab0d14c-f354-4615-b11a-c923d556a23d', '申请人必选', '2', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('00651db6-1a99-4a21-9a7a-9bbc0cc7593a', '285812c6-9be9-4771-b367-bda057574801', '已终止', '已终止', '', '004', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('008573d3-3b92-4e08-8008-ff09032d1bab', '0e757254-32eb-41df-b11e-b10a35fff914', '之后1级审批', '5', '', '006', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('01bdcb27-acca-4e65-8c2f-efe761019548', 'cf51ef77-c235-4eee-9ce0-6b699ed9649b', '服务反馈', '服务反馈', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('030c3b16-9357-4a65-8126-3bf38f0d413a', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '哈尼族', '哈尼族', '', '016', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('03286ee8-4d2f-4540-883f-914860435bc5', 'fe544cd4-a649-42ca-af2f-6a36e42458c8', '未结算', '未结算', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('03B5F0A4-6A3B-476E-A1BC-CE03164664DF', '194fb27f-7f59-4e98-9681-f9b51a40e757', '自定义处理16', '-16', NULL, '0116', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('040e244a-2aa5-45d8-a03e-c11c6231c7c6', 'ba42a1c5-7bd3-4189-b4b4-9c1db4462cf1', 'Win*12', 'Win*12', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('04290b90-dbf9-4b1d-9176-a720e00fc8e7', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '京族', '京族', '', '049', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('042f06d3-e905-46c9-ac75-7aebf6318af0', '0d90ee9b-a98c-4fa8-9fd9-944385c4fb34', '车辆信息', '车辆信息', '', '007', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('046c5dcd-bb33-4514-9e14-ddf95c138f1b', '6c82bee6-e2aa-4343-a74c-71a06755464c', '护师', '护师', '', '006', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('04e9dd14-43f8-42a9-98f9-6240a6107472', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '纳西族', '纳西族', '', '027', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('0502130e-b23c-4d65-9a79-848d02925241', '1d48a505-4c35-4d9a-a376-6751df02f5bb', '收入类', '收入类', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('05d800ef-dadd-4e2d-b3af-2bdcca053e56', '0ff6715d-3db6-4569-a000-069e09887001', '助理护士', '助理护士', '', '012', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('06176ce1-2716-497d-af8a-1d800e31c614', 'ecdadf43-728d-48cc-aac7-b7e79f5b0037', '强生', '强生', '', '02', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('062BD6A1-6EF1-4F5D-BA5E-35C72928A320', '194fb27f-7f59-4e98-9681-f9b51a40e757', '自定义处理7', '-7', NULL, '0107', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('063dec68-06d6-49e2-88d8-1e576a911703', '194fb27f-7f59-4e98-9681-f9b51a40e757', '审批', '1', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('06D117EC-78C5-48C6-9DFF-0E6AFC49258F', '194fb27f-7f59-4e98-9681-f9b51a40e757', '自定义处理47', '-47', NULL, '0147', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('070c4cc4-baa2-4565-9988-3d4bd54526e3', 'ecdadf43-728d-48cc-aac7-b7e79f5b0037', '美敦力', '美敦力', '', '22', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('07f4bad7-4d12-4fb7-8adb-13ccb0a6229a', '837e6b55-02e7-49b3-9b5d-6a16b0543f70', '已撤消', '3', '', '004', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('08086c0d-e496-447e-a25b-7d2d32cc0fd0', 'b3807598-19b7-494e-9372-45907132d048', '20070215轧钢准备点检站1700作业区', '20070215轧钢准备点检站1700作业区', NULL, '106', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('089f50e5-017c-4145-8ebe-7c6fec87de0f', '194fb27f-7f59-4e98-9681-f9b51a40e757', '会签', '3', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('09806BA0-7A99-4544-B36C-887331CFFEE4', '194fb27f-7f59-4e98-9681-f9b51a40e757', '自定义处理33', '-33', NULL, '0133', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('09a7ebc1-3ca0-4cc1-8b46-0e970bcfffa8', '3db1549f-91f7-4972-a5ad-b120608cab66', '良好', '良好', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('09dcea75-83c8-4c48-907f-0ccbf8788e4e', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '苗族', '苗族', '', '006', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('0a1645b2-f5df-460a-b09c-bebcbae2a9b2', 'b604114a-d241-45ce-9710-e5cc97fea8d1', '属蛇', '属蛇', '', '006', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('0a76dc6d-9e88-4ebb-a3d6-091639636484', 'b89cb83b-eea0-4aa2-9df6-4cd7ed1e0570', '已放弃', '已放弃', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('0c0a2fff-36bd-4779-920d-efd6be45de11', '3355862d-1978-4b9e-a177-56ecac86dfcd', '企业客户群体', '企业客户群体', '', '007', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('0c12b02b-b5cb-454b-a76b-1e45676662de', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '柯尔克孜族', '柯尔克孜族', '', '029', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('0c15fd28-db8e-484b-88e7-d2ced9d26b7f', '37496fab-d279-45f8-be17-3e6839d831d0', '不可选择', '0', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('0c6f66df-926e-4155-b3b6-60e1e7a21055', 'dcae8f36-e5f0-44c1-b15e-fd5af9b0e578', '代表', '代表', '', '004', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('0d838431-fb76-490e-ac69-5355bb6f0a7f', '168f663f-ec21-4559-8964-4750fa492a21', '致公党党员', '致公党党员', '', '008', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('0df733bd-bbf0-492b-9513-326a9d58c67c', '5032cb80-bea6-4f5a-b3ce-3e336ee8a52f', '连铸维修区', '连铸维修区', NULL, '108', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('0e406918-da03-42af-85d2-4874319b1439', '0e757254-32eb-41df-b11e-b10a35fff914', '不可增加环节', '0', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('0f06b86a-6ee0-4322-a635-488b8ca802c0', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '汉族', '汉族', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('0f464668-fa56-4ea7-a6ed-e13a46fd9d5e', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '佤族', '佤族', '', '021', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('0f72f7a3-ee66-4d23-82ca-9456dcf438e2', 'b604114a-d241-45ce-9710-e5cc97fea8d1', '属牛', '属牛', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('0f970328-5569-4ce6-9294-fb580acc6fea', '508811e9-c7cb-4daa-9bae-350966551283', '能用', '能用', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('101eb402-4f73-4df1-9433-0b5023f736dc', 'b63e67ca-2206-4916-aa02-b522a2d9258d', 'XL', 'XL', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('114a880f-04fb-407a-8042-b4edc255f097', 'cf51ef77-c235-4eee-9ce0-6b699ed9649b', '业务联系', '业务联系', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('114c5533-37af-4631-8652-a06f0a8266c1', '2a9fdfcf-4166-4151-9522-bf7312882167', '白羊座', '白羊座', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('1170f66e-8ba1-48e1-823d-11de55554869', 'ecdadf43-728d-48cc-aac7-b7e79f5b0037', '礼来', '礼来', '', '18', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('11fdc6d3-96ca-4420-8b20-fe0547f35ab5', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '德昂族', '德昂族', '', '046', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('1230907d-f38b-40a6-ac49-33032159f535', '837e6b55-02e7-49b3-9b5d-6a16b0543f70', '已退回', '2', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('12402abb-7ee3-48b2-ad46-d227eebbef1e', '285812c6-9be9-4771-b367-bda057574801', '已完成', '已完成', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('124b199f-531b-4fe2-8080-fcfede4b3d9e', '68fef6f4-b392-4f94-b655-a1bd7e83ccbd', 'M', 'M', NULL, '109', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('125d955e-1318-44ee-882f-6a153e261240', '43b9b923-3a15-4e56-96b0-8ff70606b982', '很紧急', '很紧急', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('1277CD3A-A787-4457-8F05-92021A35AFBA', '194fb27f-7f59-4e98-9681-f9b51a40e757', '自定义处理34', '-34', NULL, '0134', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('12cdd460-f8c3-4e9f-8f06-a42682e91741', '0e757254-32eb-41df-b11e-b10a35fff914', '之后增加多级', '3', '', '004', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('132e8224-f3a2-4d09-b8d6-b14e606470ae', 'bfad0e7f-af4f-40d9-9680-acedf51adcbf', '客户介绍', '客户介绍', '', '007', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('13306851-e5fb-4b5b-8990-146dd345f86f', 'b1cd8c2d-46c0-4cd0-8b2a-598ff33ec66c', '非标件（进口）', '非标件（进口）', NULL, '3', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('135ebbbe-c4a3-48a5-8035-463b27ae5ef0', '37496fab-d279-45f8-be17-3e6839d831d0', '申请人必选', '2', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('13d8cb4d-b3ab-4ca4-985c-7bce3eccb1d4', '68fef6f4-b392-4f94-b655-a1bd7e83ccbd', 'TAI', 'TAI', NULL, '116', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('143206e8-8a99-4f77-8aef-d70fb603074c', '3ab0d14c-f354-4615-b11a-c923d556a23d', '都可以选择', '5', '', '006', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('148c7a50-20ee-4296-bbea-495a8894f6f7', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '鄂温克族', '鄂温克族', '', '045', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('14B3386B-38E7-4910-91A1-BE078B91236C', '194fb27f-7f59-4e98-9681-f9b51a40e757', '自定义处理23', '-23', NULL, '0123', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('15b7ac39-72b2-46f9-b7e0-67d36fd6e385', 'b3807598-19b7-494e-9372-45907132d048', '20070214轧钢准备点检站1810作业区', '20070214轧钢准备点检站1810作业区', NULL, '105', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('15da513f-c97c-48cd-91a3-3961f4170be8', 'cc8b32e6-57e9-466a-b5dd-8df9c37f32d8', '跟进', '跟进', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('15e40fd4-e804-4870-a0ab-ac69905ab47d', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '哈萨克族', '哈萨克族', '', '017', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('166d9a41-e229-4495-864b-1de3d913c7ac', 'd0da80d5-2b6d-462b-801d-ec5f110540e9', '已处理待回访', '已处理待回访', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('170a95e6-58da-4943-bda9-75e54da261c5', '123f080f-76da-4ee4-99d8-10b6dc143eee', 'VIP客户', 'VIP客户', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('1722c05b-319c-4174-9932-8ba81cff9474', '3db1549f-91f7-4972-a5ad-b120608cab66', '优秀', '优秀', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('17675577-022f-4e85-8f2f-43768d09ce0c', 'ea1545ad-b66a-46cd-9a68-09db44309ec7', '产品更新', '产品更新', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('1791ba93-1c83-44b0-be61-6b1f8f74db42', '287f4727-1ec6-474f-9da9-c7b2a05bdd39', '博士后', '博士后', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('17e25cc7-bb53-472b-a59b-f0596f72f88e', 'f3833cd2-d3e8-44b4-a44c-bb86ba121619', '试用客户', '试用客户', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('17fcfb81-7366-43b5-984f-8ba5c3785173', 'f8a1af13-d810-48f4-98b4-1cf2e0908665', '非常严重', '非常严重', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('1899e7e6-b775-4bef-a02a-3932a488038d', 'cc8b32e6-57e9-466a-b5dd-8df9c37f32d8', '潜在', '潜在', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('189da5ae-c88b-46e3-9fb6-b78d430b792f', '4c9973ae-06c3-47f5-9001-c6008080d868', '推广服务', '推广服务', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('199dc09e-2232-4135-a1e2-3b03b4b4e4f1', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '藏族', '藏族', '', '004', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('1a11a519-0249-4ce6-886d-abee962bfdd5', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '阿昌族', '阿昌族', '', '039', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('1b4c365c-1a45-44aa-bbdf-9b0af212a47a', '06a9dc90-1575-423b-96be-2aa94f91f76d', '住宿和餐饮业', '住宿和餐饮业', '', '007', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('1b984cdc-40e4-43f1-ba52-1baf0f4563e7', '41770ea3-997f-4866-b0f4-15c953235fa2', '个', '个', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('1ba86220-1e17-44b3-a327-21949595c383', '5407140b-5234-430f-9099-9808225eb0a6', '必须参加', '必须参加', '', '007', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('1c2dc061-b269-41fe-a8f2-61d7a9449eea', '2a9fdfcf-4166-4151-9522-bf7312882167', '狮子座', '狮子座', '', '008', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('1c7d6832-6a97-4d28-8c1d-02d4fc387c66', '5238c1ed-7a5e-4279-8c8e-804ebb366544', '专利', '专利', '', '004', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('1cd413ec-a227-4e87-b19b-48494fd0d0e3', 'b3807598-19b7-494e-9372-45907132d048', '20070218轧区运行点检站1700作业区', '20070218轧区运行点检站1700作业区', NULL, '109', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('1d77a317-bb81-476b-8152-a1a0fdd4a040', '5032cb80-bea6-4f5a-b3ce-3e336ee8a52f', '连一铜板', '连一铜板', NULL, '106', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('1d8f799f-63ad-4077-a3dd-b4ac474724ca', '2d56e5d3-3b2a-4747-98ba-eed265fd0b2e', '现金', '现金', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('1ea1c3e1-a914-42c3-9a60-8bf60142cab9', 'f3833cd2-d3e8-44b4-a44c-bb86ba121619', '其他', '其他', '', '007', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('1eb7262b-e35d-4f6d-85ab-14de6a5cda5f', '508811e9-c7cb-4daa-9bae-350966551283', '尽心尽职', '尽心尽职', '', '011', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('1f2a9639-d275-483b-a242-ba47e164b1f3', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '毛南族', '毛南族', '', '036', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('1f38ca92-b6b7-4613-b562-80e275dc436e', '5407140b-5234-430f-9099-9808225eb0a6', '生日', '生日', '', '004', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('1f7aef16-f0c6-4990-a5a2-9d2eab95d5e7', '5a7eedc1-11e6-43a5-8bbd-12fe104c142a', '正常', '正常', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('2029b081-535d-49d8-81c9-97ee485e4483', 'b3807598-19b7-494e-9372-45907132d048', '20060209钢区炼钢点检站转炉', '20060209钢区炼钢点检站转炉', NULL, '112', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('211efac9-6352-421c-a083-82ca48df1179', '5bc898b7-aa45-4c3e-9136-ee4d2be71d61', '加工订做', '加工订做', '', '080', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('2142b256-5575-4718-adb8-21a6fab9827a', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '其他', '其他', '', '057', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('215094df-e6c1-4780-8e89-5ca83709a38f', '508811e9-c7cb-4daa-9bae-350966551283', '热心帮助企业成功', '热心帮助企业成功', '', '008', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('215123fd-a26c-4125-8bfa-98616658f9a1', '168f663f-ec21-4559-8964-4750fa492a21', '民盟盟员', '民盟盟员', '', '005', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('23ad0e19-b0bd-4948-992c-1143c48c9b2f', 'b270278a-6b9f-4c8e-80e8-4ce8dea6af97', '办公用品', '办公用品', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('2438e393-861e-4d84-aa86-d61603a8671c', '168f663f-ec21-4559-8964-4750fa492a21', '共青团员', '共青团员', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('246d670c-c736-4767-b1e7-d34ade0e5667', '194fb27f-7f59-4e98-9681-f9b51a40e757', '内部广播', '6', '', '006', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('24b1765d-b65f-4d84-b61c-19be149041d3', 'e07c08f3-f614-4755-b233-7e3157fcdb7a', '回访', '回访', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('2599a339-96f6-480d-8f11-f300dd198e82', '80bf30d7-e9f0-4f9a-8cb3-255857d8e533', '研究生', '研究生', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('25d9f939-00da-420f-9c05-edd650ffff8a', '0d90ee9b-a98c-4fa8-9fd9-944385c4fb34', '公司介绍', '公司介绍', '', '005', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('262ff3bc-57f7-41e3-804c-b1191b821641', 'ad044d3f-8315-4e25-b2a6-fb504c680ccd', '中级管理人员', '中级管理人员', '', '005', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('267ceb65-015d-4fd8-97f1-0d5e350f246e', '2a9fdfcf-4166-4151-9522-bf7312882167', '摩羯座', '摩羯座', '', '006', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('27096599-154d-47a8-ad27-ea483075cdb9', 'c49a42fd-3a9a-4a24-b7c4-9c8a053e94e3', '待处理', '待处理', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('275bebea-95d1-4b67-8aa2-cf7266e19216', '5e0f29da-c9f3-45f4-8555-5ab1baf884a6', '新生儿外科', '新生儿外科', '', '011', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('284FD02F-18A9-4229-B739-A1CD2744D312', '194fb27f-7f59-4e98-9681-f9b51a40e757', '自定义处理44', '-44', NULL, '0144', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('286fb78d-f244-426b-84c9-50207238b1da', '875ea4f2-2fc4-4d49-95dc-1b5ca4eb7669', '身材瘦小', '身材瘦小', '', '005', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('2876275d-54ea-4414-ab58-a1fe2572fc90', '5e0f29da-c9f3-45f4-8555-5ab1baf884a6', '泌尿外科', '泌尿外科', '', '006', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('29dc023e-b1f8-45bd-a0a0-9304ed68c6b9', '5d04e671-4c21-499f-95e0-779d5ce7b1b8', '红', '红', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('2a0bdf8d-aea2-480c-9bfe-3d4c149c339e', '0ff6715d-3db6-4569-a000-069e09887001', '主管护师', '主管护师', '', '009', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('2a5607c7-9bc0-49cc-afb4-6f4a9cc1dd20', '3355862d-1978-4b9e-a177-56ecac86dfcd', '安全', '安全', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('2a5fa2c6-ad94-4ef9-b1fc-db0a1229b1d7', '0e757254-32eb-41df-b11e-b10a35fff914', '之前1级审批', '4', '', '005', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('2a9df4d2-1c98-4568-8f89-b13be0567788', '6c82bee6-e2aa-4343-a74c-71a06755464c', '主治医师', '主治医师', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('2abf2abc-49b3-4a44-a911-9a3d958b536c', 'f0b69ae1-ee14-4029-a755-caae10daf351', '1000', '1000', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('2b183051-953d-425b-8323-00f876ae1016', '37496fab-d279-45f8-be17-3e6839d831d0', '申请人可选', '1', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('2bcff442-22a8-4220-8575-052403045ac4', '5032cb80-bea6-4f5a-b3ce-3e336ee8a52f', '日常备件', '日常备件', NULL, '100', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('2d5839c2-9f8f-4386-81c9-296c7a627fd9', 'ee0818a8-dba5-49ae-b189-9e33492b3f02', '电气科', '电气科', NULL, '166', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('2dacd32f-9564-47b5-b89c-6a2bed83717a', 'ecdadf43-728d-48cc-aac7-b7e79f5b0037', '齐柏林', '齐柏林', '', '20', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('2e3a2a1e-4a19-4642-9790-4bae5fb84a00', '06a9dc90-1575-423b-96be-2aa94f91f76d', '批发和零售业', '批发和零售业', '', '004', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('2ee209dc-f2cf-4602-98b0-5e2a79bb4031', '5032cb80-bea6-4f5a-b3ce-3e336ee8a52f', '修复件', '修复件', NULL, '103', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('2f244111-5d71-4586-9c63-9d99291ab4f9', '2a9fdfcf-4166-4151-9522-bf7312882167', '金牛座', '金牛座', '', '004', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('300fc9f7-4370-47e7-87a9-64e6f0b2329c', 'fafe19d9-42dd-4860-98c5-2d102a259082', '续费合同', '续费合同', '', '006', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('302b82b0-7853-4604-a71d-ab03cdc2ea98', '0e757254-32eb-41df-b11e-b10a35fff914', '之后1级会签', '7', '', '008', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('3052412B-0FFC-49C1-A93F-954FDEE50F15', '194fb27f-7f59-4e98-9681-f9b51a40e757', '自定义处理5', '-5', NULL, '0105', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('30f8c751-64b1-42f5-be3c-608afba2a3fd', 'fb46eec1-2ae7-4206-9477-939fe29e0643', '较为重要', '较为重要', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('3105a41e-6300-49c4-9133-93717d5b5fab', '733b7578-94ab-4c76-aaf5-da18b4e431c4', '商务谈判', '商务谈判', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('31443b18-dc38-4393-a16c-9ca7422e4278', '2d56e5d3-3b2a-4747-98ba-eed265fd0b2e', '签单', '签单', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('31655ff7-38c2-455f-a099-8e0f2f072d80', '875ea4f2-2fc4-4d49-95dc-1b5ca4eb7669', '中等身材', '中等身材', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('323720ba-e717-4ec5-85b9-87a4969c6978', '2a9fdfcf-4166-4151-9522-bf7312882167', '射手座', '射手座', '', '007', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('329d5c40-269b-4988-9f08-7baf66c77224', 'ee0818a8-dba5-49ae-b189-9e33492b3f02', '连二', '连二', NULL, '18', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('32a98a07-c35e-4653-b290-323685acd6ee', 'b1cd8c2d-46c0-4cd0-8b2a-598ff33ec66c', '标准件（进口）', '标准件（进口）', NULL, '2', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('32c8944c-c29d-4fbb-a9ad-596cb4a40fd3', 'ecdadf43-728d-48cc-aac7-b7e79f5b0037', '齐鲁制药', '齐鲁制药', '', '11', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('33670f3b-6a8d-40a6-bde3-1dfb9751d396', '68fef6f4-b392-4f94-b655-a1bd7e83ccbd', 'EA', 'EA', NULL, '103', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('35a9ca6d-c4aa-4b37-be64-beb75c837162', 'd8a5bdd9-a1b9-450f-9885-0b3330536b93', '投诉回访', '投诉回访', '', '004', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('36009ea2-a761-44ef-abe5-9279e42d0eca', '20189b21-7f37-49eb-b67d-5d0bc65b3b8d', '常规维护', '常规维护', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('3621ee29-2977-48b3-9786-695828274845', '2a9fdfcf-4166-4151-9522-bf7312882167', '双鱼座', '双鱼座', '', '009', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('36604142-6449-4CED-AE91-C10592EF4552', '194fb27f-7f59-4e98-9681-f9b51a40e757', '自定义处理35', '-35', NULL, '0135', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('36a836d0-ae23-46e2-a09f-bfef1b431b7f', 'ee0818a8-dba5-49ae-b189-9e33492b3f02', '生产科', '生产科', NULL, '168', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('370fc5bb-6898-46be-bb02-e34292131217', 'c2700c07-1f08-4c58-b810-39356ef64096', '新产品开发', '新产品开发', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('37f9b902-d8f9-4efa-b252-d1c69a53f22b', '0e757254-32eb-41df-b11e-b10a35fff914', '之后多级审批', '8', '', '009', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('385fba18-bfaf-49e2-839d-ce4a08f9e3be', 'fafe19d9-42dd-4860-98c5-2d102a259082', '水电费', '水电费', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('3894ba23-31a1-48b2-9309-a75d978d2102', '3db1549f-91f7-4972-a5ad-b120608cab66', '体弱', '体弱', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('3981339e-6e11-49a5-a28e-cd4e57cdefa9', 'b604114a-d241-45ce-9710-e5cc97fea8d1', '未知', '未知', '', '000', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('39c36154-426e-4424-8d8b-2cf2621158bc', '5e0f29da-c9f3-45f4-8555-5ab1baf884a6', '心胸外科 骨科', '心胸外科 骨科', '', '009', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('3a03d90b-9db7-4327-a824-1fcded62cfee', 'bfad0e7f-af4f-40d9-9680-acedf51adcbf', '展会展览', '展会展览', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('3a4e2431-4336-49ce-b49d-f535f9bbd542', 'd0da80d5-2b6d-462b-801d-ec5f110540e9', '未处理', '未处理', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('3b628db7-3367-44b4-85aa-8ee717c656b2', 'ac2ea234-30be-4f8b-897f-db338a92de77', '忠诚度一般', '忠诚度一般', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('3b877038-e574-4499-b1d1-c38ba2d700b1', '0d90ee9b-a98c-4fa8-9fd9-944385c4fb34', '产品服务文档', '产品服务文档', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('3c46007e-d064-45d5-b593-5bc892ec0e41', '68fef6f4-b392-4f94-b655-a1bd7e83ccbd', 'KG', 'KG', NULL, '107', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('3ca18824-ba48-4128-b994-e816e1624328', '0ff6715d-3db6-4569-a000-069e09887001', '主任医师、教授', '主任医师、教授', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('3d991672-f14a-44eb-a9ec-fb2cad0d10e0', 'fc0a3960-2cff-40d3-8cfe-89df26d25eda', '广播短信邮件', '7', '', '008', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('3d9bbddc-e55b-4f5a-85e9-c825f176a0d8', 'ee0818a8-dba5-49ae-b189-9e33492b3f02', '轧区点检站', '轧区点检站', NULL, '11', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('3dd3e17b-f6d3-4378-b508-78eb013b0358', '68fef6f4-b392-4f94-b655-a1bd7e83ccbd', 'TO', 'TO', NULL, '119', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('3e508cd8-b6b8-47a7-81f4-cb5c738496be', '6c82bee6-e2aa-4343-a74c-71a06755464c', '副主任医师', '副主任医师', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('3e586c6c-fcd0-402f-9871-d90e698f938e', 'ecdadf43-728d-48cc-aac7-b7e79f5b0037', '丽珠集团', '丽珠集团', '', '03', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('3e81fe72-b427-40ac-b370-94f9f2bc535b', 'f0b69ae1-ee14-4029-a755-caae10daf351', '600', '600', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('3e978842-425e-4f15-ab43-5198056516d0', '3355862d-1978-4b9e-a177-56ecac86dfcd', '可维护性', '可维护性', '', '006', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('3f035d37-7cdb-4882-90f4-ca0142b35b21', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '仡佬族', '仡佬族', '', '037', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('3f262697-104c-4c0d-b3cc-68ce9e46ffc3', '0e757254-32eb-41df-b11e-b10a35fff914', '之前1级会签', '6', '', '007', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('3f6043a7-ffed-437f-a13a-f532a93158ac', 'b270278a-6b9f-4c8e-80e8-4ce8dea6af97', '病人资料管理系统', '病人资料管理系统', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('3f75f010-d7c8-4124-839c-3a243c921b3e', 'ad044d3f-8315-4e25-b2a6-fb504c680ccd', '高级管理人员', '高级管理人员', '', '006', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('3ff94531-fe33-414f-a74f-af8db933bdee', '37496fab-d279-45f8-be17-3e6839d831d0', '前一级必选', '4', '', '005', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('41732896-d2d5-4f1f-82e7-0d92029b3083', 'fb46eec1-2ae7-4206-9477-939fe29e0643', '一般', '一般', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('41a94ce3-3f37-48b8-979c-b399d54ecc6a', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '彝族', '彝族', '', '007', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('41f6e3b3-707b-4938-b501-3b7468da4e54', '5032cb80-bea6-4f5a-b3ce-3e336ee8a52f', '胶管承包', '胶管承包', NULL, '109', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('4207CA51-5090-47F9-9ED1-8AD90DFDC878', '194fb27f-7f59-4e98-9681-f9b51a40e757', '自定义处理9', '-9', NULL, '0109', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('4212fd77-7347-45b1-b680-a2df63809e8d', '5238c1ed-7a5e-4279-8c8e-804ebb366544', '课题', '课题', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('424093D2-B6CC-4AB4-B021-021B7327A936', '194fb27f-7f59-4e98-9681-f9b51a40e757', '自定义处理42', '-42', NULL, '0142', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('42607a21-0984-4ebd-a2c0-1d8be5854718', 'f1fd2d73-6207-42c2-82a1-4cd3094aad65', '一般', '一般', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('42b635ed-b8e3-4642-ab0d-b06019500c09', 'ee0818a8-dba5-49ae-b189-9e33492b3f02', '运行车间', '运行车间', NULL, '12', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('42c16da4-0dee-445b-9b57-c922e2682260', '095a28e1-335b-452f-bdf4-49c564cd1407', '西南地区', '西南地区', '', '005', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('42d65c36-585e-453c-ba40-d6d1806e6949', '095a28e1-335b-452f-bdf4-49c564cd1407', '华南地区', '华南地区', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('43039dac-f310-4641-82a0-f5e926acbd8f', '168f663f-ec21-4559-8964-4750fa492a21', '民建会员', '民建会员', '', '006', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('4371608F-5C1E-4CFD-A30D-2D6A3E3C43B1', '194fb27f-7f59-4e98-9681-f9b51a40e757', '自定义处理13', '-13', NULL, '0113', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('4428344B-9E16-448B-A4C6-945B1C0DAF11', '194fb27f-7f59-4e98-9681-f9b51a40e757', '自定义处理32', '-32', NULL, '0132', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('44bd5f10-f961-4154-95cd-110657d5751e', 'cc8b32e6-57e9-466a-b5dd-8df9c37f32d8', '暂停', '暂停', '', '004', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('44d35960-b47a-4494-869c-e453c00753d2', '78e31276-8cc1-4be2-8437-c8f0a436e658', '态度恶劣', '态度恶劣', '', '004', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('44dcb3f2-f585-4513-b11a-98339580159a', 'b604114a-d241-45ce-9710-e5cc97fea8d1', '属羊', '属羊', '', '008', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('45a62c93-d458-49a3-a4a6-084c15b1e1bc', 'b89cb83b-eea0-4aa2-9df6-4cd7ed1e0570', '已完成', '已完成', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('45c8bd6c-bb39-4fba-b431-7d792cca796e', 'b604114a-d241-45ce-9710-e5cc97fea8d1', '属狗', '属狗', '', '011', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('46143207-bb48-4ae9-9ab7-a77752cfd689', 'ee0818a8-dba5-49ae-b189-9e33492b3f02', '轧钢准备', '轧钢准备', NULL, '14', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('4652e5f4-4ddf-41f0-aac8-f42491348bae', 'b3807598-19b7-494e-9372-45907132d048', '20070209轧区加热炉点检站1810作业区', '20070209轧区加热炉点检站1810作业区', NULL, '100', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('467C0EDF-4DAC-4803-8106-443DD33ABED2', '194fb27f-7f59-4e98-9681-f9b51a40e757', '自定义处理31', '-31', NULL, '0131', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('46ac51b0-f0d1-4163-a652-c8dc257adae0', '0ff6715d-3db6-4569-a000-069e09887001', '主任护师', '主任护师', '', '007', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('46b31533-e45b-4fdc-b6d6-257f866de3ff', 'ac2ea234-30be-4f8b-897f-db338a92de77', '忠诚度高', '忠诚度高', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('46de795a-7477-41af-9e4c-ce5f51385695', 'b3807598-19b7-494e-9372-45907132d048', '20060210钢区炼钢点检站RH精炼炉', '20060210钢区炼钢点检站RH精炼炉', NULL, '113', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('4715daed-f828-4145-8d18-44338083f138', '0d90ee9b-a98c-4fa8-9fd9-944385c4fb34', '架构图', '架构图', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('47ece017-9fec-40df-b8d1-e6e43ace21f5', '3355862d-1978-4b9e-a177-56ecac86dfcd', '可靠性', '可靠性', '', '014', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('488e725b-1a69-41d1-ab27-6d5093b97394', '5e0f29da-c9f3-45f4-8555-5ab1baf884a6', '泌尿外科', '泌尿外科', '', '010', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('48cf6fec-9a37-4b41-ac2d-b52ee4c954e2', '0d90ee9b-a98c-4fa8-9fd9-944385c4fb34', '报价表', '报价表', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('49fa8e4b-9001-4de3-a507-67cee871859d', 'b604114a-d241-45ce-9710-e5cc97fea8d1', '属虎', '属虎', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('49fe121a-cb9b-493e-89b7-26254b285746', '095a28e1-335b-452f-bdf4-49c564cd1407', '华北地区', '华北地区', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('4BC16ED7-87D4-4667-B193-937B08899CE3', '194fb27f-7f59-4e98-9681-f9b51a40e757', '自定义处理36', '-36', NULL, '0136', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('4ce20c57-775e-49d5-97bc-318051b65e2d', 'c49a42fd-3a9a-4a24-b7c4-9c8a053e94e3', '已完成', '已完成', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('4ce4f924-fd81-41b9-91ad-1010e94d1521', '5407140b-5234-430f-9099-9808225eb0a6', '电话', '电话', '', '006', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('4D31B769-22D9-426C-9B96-F8A175919CF7', '194fb27f-7f59-4e98-9681-f9b51a40e757', '自定义处理12', '-12', NULL, '0112', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('4d7d83ad-2bd1-4aff-9a3b-b7935094839f', '5407140b-5234-430f-9099-9808225eb0a6', '休假', '休假', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('4e6a510d-8cf8-4638-b950-41a2a4c9ed12', '6c82bee6-e2aa-4343-a74c-71a06755464c', '主管护师', '主管护师', '', '007', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('4ef25afd-5daa-48d9-88bb-07ac125114a4', 'ad044d3f-8315-4e25-b2a6-fb504c680ccd', '专业高工', '专业高工', '', '004', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('4fca528b-dd19-44cd-8606-891af3072426', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '塔塔尔族', '塔塔尔族', '', '050', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('50014292-53bc-4dda-aae9-9e8800b77097', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '满族', '满族', '', '011', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('5013c89f-00a7-43f1-9f95-586a15e36e24', 'f3833cd2-d3e8-44b4-a44c-bb86ba121619', '合作伙伴', '合作伙伴', '', '005', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('506719d6-1027-4719-ae42-9e051d69e9de', '06a9dc90-1575-423b-96be-2aa94f91f76d', '医疗行业', '医疗行业', '', '005', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('507ee465-8f3f-4985-935d-5dbaf07de5e0', 'a2a5ac49-01ef-40c3-9758-07cba6610776', '教授', '教授', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('511e2083-21c7-4f28-b646-1bb09b012774', '168f663f-ec21-4559-8964-4750fa492a21', '民进会员', '民进会员', '', '007', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('51326c36-44aa-4dcb-b09c-f6588deb312c', '1d48a505-4c35-4d9a-a376-6751df02f5bb', '描述类型', '描述类型', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('5236adc3-086f-4598-ad0b-d9a6095af9d3', 'ecdadf43-728d-48cc-aac7-b7e79f5b0037', '礼来', '礼来', '', '26', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('523aa220-cece-454f-8a3f-aab5258bf30b', '5a7eedc1-11e6-43a5-8bbd-12fe104c142a', '作废', '作废', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('5252C4CB-CC45-4DD6-87DD-12FE46C38BB7', '194fb27f-7f59-4e98-9681-f9b51a40e757', '自定义处理45', '-45', NULL, '0145', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('5300021F-90FF-48AE-BDDA-FFE4744C0EBB', '194fb27f-7f59-4e98-9681-f9b51a40e757', '自定义处理43', '-43', NULL, '0143', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('53716dfa-2a80-4e6f-b5c6-6ffba0458d1d', '3355862d-1978-4b9e-a177-56ecac86dfcd', '便利性', '便利性', '', '005', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('53882adf-a892-471d-ac4c-048105df7193', '68fef6f4-b392-4f94-b655-a1bd7e83ccbd', 'BA', 'BA', NULL, '100', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('5399610c-697f-4294-8010-45c9eba0077e', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '珞巴族', '珞巴族', '', '055', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('53ad7f28-c21b-4674-9fa0-39568497aa5e', 'ad044d3f-8315-4e25-b2a6-fb504c680ccd', '专业人员', '专业人员', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('540b9240-bc2a-4105-806f-f0ade9258078', '5032cb80-bea6-4f5a-b3ce-3e336ee8a52f', '电机承包', '电机承包', NULL, '110', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('54c54597-cafc-4fff-ae64-8eca0fca1fda', '6c82bee6-e2aa-4343-a74c-71a06755464c', '医师', '医师', '', '004', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('55eb3c82-b193-4455-8724-2f2efc10bd73', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '塔吉克族', '塔吉克族', '', '041', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('56077928-3b90-4daa-9cfa-48457c08aacc', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '黎族', '黎族', '', '019', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('561c13b5-bc2f-4e84-bc7a-22298d53147e', 'e07c08f3-f614-4755-b233-7e3157fcdb7a', '送货', '送货', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('573bb31e-52fd-4ef6-91ba-83a220eb5649', '508811e9-c7cb-4daa-9bae-350966551283', '最低价获取', '最低价获取', '', '004', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('57e96d00-3f15-4b86-bf12-b51a65bddce5', '194fb27f-7f59-4e98-9681-f9b51a40e757', '阅办', '4', '', '004', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('5825d4d5-3d94-4ed4-ab3b-360f24fa9eaf', 'f1fd2d73-6207-42c2-82a1-4cd3094aad65', '游离', '游离', '', '004', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('5932e84b-a68b-4222-a045-7b1c34b07dfa', 'fc0a3960-2cff-40d3-8cfe-89df26d25eda', '广播短信', '3', '', '004', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('597e0866-b895-435b-847d-2c48b21fc926', 'ee0818a8-dba5-49ae-b189-9e33492b3f02', '辅供', '辅供', NULL, '27', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('59af95b6-0263-439d-9f52-41b09a929875', '4c9973ae-06c3-47f5-9001-c6008080d868', '维护服务', '维护服务', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('5a7e57cd-d5b9-40ab-9bcc-8e816e99d41e', '5bc898b7-aa45-4c3e-9136-ee4d2be71d61', '病人资料管理系统', '病人资料管理系统', '', '010', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('5aad9a24-774a-4aec-b7f0-e0c68814a5b7', '68fef6f4-b392-4f94-b655-a1bd7e83ccbd', 'GE', 'GE', NULL, '105', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('5b8c7078-50e6-4ebb-8eec-603fa7985abe', '508811e9-c7cb-4daa-9bae-350966551283', '社会影响', '社会影响', '', '006', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('5b97a3ba-3d3d-4d29-b7fa-bf29ec96e0ef', 'ecdadf43-728d-48cc-aac7-b7e79f5b0037', '先声', '先声', '', '10', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('5c955b83-eaa7-4787-a52d-b0bbf910120f', '095a28e1-335b-452f-bdf4-49c564cd1407', '华东地区', '华东地区', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('5d5ac5f6-7e71-488a-836e-56c537143589', '11442abb-14ee-48fc-867b-341b731070da', '其他', '其他', '', '005', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('5de67d22-8eb5-4f64-9228-2a92d78603ab', 'ee0818a8-dba5-49ae-b189-9e33492b3f02', '钢区点检站', '钢区点检站', NULL, '10', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('5e24500d-690d-4a86-9e04-7d8c9f5b4635', 'ee0818a8-dba5-49ae-b189-9e33492b3f02', '运行', '运行', NULL, '21', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('5e7bc2d2-d51a-4023-8e1c-a4d7498f62ab', '0e757254-32eb-41df-b11e-b10a35fff914', '之前增加多级', '2', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('5ed61589-1f59-4fdc-862d-536963fb5a1f', '5407140b-5234-430f-9099-9808225eb0a6', '商业', '商业', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('5f1e459b-d037-4d4f-b067-db490d151e01', 'd0da80d5-2b6d-462b-801d-ec5f110540e9', '处理中', '处理中', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('5ff918ea-485c-4e41-a903-10aaf7f82fe4', 'fc0a3960-2cff-40d3-8cfe-89df26d25eda', '邮件', '4', '', '005', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('6175642e-52e1-485c-9d72-aa518ad33a53', '837e6b55-02e7-49b3-9b5d-6a16b0543f70', '已完成', '1', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('61dff520-0dec-413a-b0eb-de71cebe24f8', 'dcae8f36-e5f0-44c1-b15e-fd5af9b0e578', 'VIP', 'VIP', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('61f395da-f991-4a7f-86ca-9a598456ce24', '0ff6715d-3db6-4569-a000-069e09887001', '研究员', '研究员', '', '018', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('625a0529-6d4d-4220-9bed-4ecc2423b612', '0ff6715d-3db6-4569-a000-069e09887001', '副主任医师', '副主任医师', '', '004', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('625CB570-CA64-4DA5-803F-D2FE974BBB96', '194fb27f-7f59-4e98-9681-f9b51a40e757', '自定义处理18', '-18', NULL, '0118', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('62e765a7-1dc4-43da-bd2f-d24c06339297', 'b3807598-19b7-494e-9372-45907132d048', '20070216轧钢准备点检站平整分卷作业区', '20070216轧钢准备点检站平整分卷作业区', NULL, '107', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('62ffa372-691f-48e8-bb02-fbf46433cde6', 'd7fb636d-919f-4ef1-8a95-8bc2b404f656', '良好', '良好', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('633d4508-eeab-4dcb-9d1e-b852b181689f', 'ecdadf43-728d-48cc-aac7-b7e79f5b0037', '长沙驰睿', '长沙驰睿', '', '27', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('639bb2bd-2af0-478b-802e-6e922add87e6', 'd2cd90f8-b7e9-4beb-85a0-72ffefd7cddf', '企业版', '企业版', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('63AA1865-9208-4B8D-BBE7-06799EEC6ADD', '194fb27f-7f59-4e98-9681-f9b51a40e757', '自定义处理30', '-30', NULL, '0130', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('64178a7c-5c23-48a4-9fc8-43860380a52b', '5d04e671-4c21-499f-95e0-779d5ce7b1b8', '黄', '黄', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('645b3d73-62a7-485a-adb1-5edbde0312c7', '508811e9-c7cb-4daa-9bae-350966551283', '得到认可', '得到认可', '', '009', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('647a8dde-c163-47c1-8584-84abb8fa9978', '68fef6f4-b392-4f94-b655-a1bd7e83ccbd', 'TAO', 'TAO', NULL, '117', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('6502d506-2755-4935-9283-f8aec2f2ef58', 'b604114a-d241-45ce-9710-e5cc97fea8d1', '属鼠', '属鼠', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('650307d7-0640-46b1-9fd8-aa4cdc4ead19', '5e0f29da-c9f3-45f4-8555-5ab1baf884a6', '新生儿外科 普外科', '新生儿外科 普外科', '', '007', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('65442b86-f6c5-4fad-ad17-76dd389f2090', 'c49a42fd-3a9a-4a24-b7c4-9c8a053e94e3', '处理中', '处理中', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('66858dca-08c2-4b99-afde-89afbb0d5d02', '17975510-5337-4c45-939c-5c92cb662466', '客户推荐介绍', '客户推荐介绍', '', '005', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('678344f9-152f-489e-a46a-1f3f0bc04b0e', '0e757254-32eb-41df-b11e-b10a35fff914', '可以增加多级', '1', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('678372f0-4977-4d81-a284-c744e502c09f', 'ecdadf43-728d-48cc-aac7-b7e79f5b0037', '强生生物外科李', '强生生物外科李', '', '23', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('67a755ed-4647-4cc6-b370-50b6a87db4cb', '095a28e1-335b-452f-bdf4-49c564cd1407', '华中地区', '华中地区', '', '004', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('69395388-2321-41db-b354-4e9cce60bafb', '68fef6f4-b392-4f94-b655-a1bd7e83ccbd', 'JIE', 'JIE', NULL, '106', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('69c8a6e8-9ca4-4f0b-a92c-d64c9fbf3e82', '5032cb80-bea6-4f5a-b3ce-3e336ee8a52f', '事故件', '事故件', NULL, '104', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('6a67a1c2-12c3-4654-96fb-e794fa2a31c7', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '基诺族', '基诺族', '', '056', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('6ab5c8a3-9703-4805-b12b-0fec4ccc2dd0', 'cf51ef77-c235-4eee-9ce0-6b699ed9649b', '客户回访', '客户回访', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('6b408894-2ea0-4ab7-acf1-2111d70b07c8', '168f663f-ec21-4559-8964-4750fa492a21', '中共预备党员', '中共预备党员', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('6b90fa50-8a6d-419a-82e8-311d60131409', 'ecdadf43-728d-48cc-aac7-b7e79f5b0037', '西赛尔', '西赛尔', '', '19', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('6c35e85b-8dce-464a-8dfd-48fa54f8cecc', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '傈僳族', '傈僳族', '', '020', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('6ea17a88-b986-4953-a7e6-e7c4099c13a6', '287f4727-1ec6-474f-9da9-c7b2a05bdd39', '其他', '其他', '', '012', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('6f949b98-8d52-44f9-a00f-effd8a6911c1', '168f663f-ec21-4559-8964-4750fa492a21', '群众', '群众', '', '010', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('6fea52eb-0f29-4864-87c9-38a834222622', 'c2700c07-1f08-4c58-b810-39356ef64096', '维护需求', '维护需求', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('702a5eda-c96b-42bb-be08-00e78bef673b', 'fe544cd4-a649-42ca-af2f-6a36e42458c8', '暂停', '暂停', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('70330e64-c5fe-4633-84c0-e50ba351e60f', '20189b21-7f37-49eb-b67d-5d0bc65b3b8d', '操作培训', '操作培训', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('706239d8-f915-4eee-b288-a0591f62f4df', '875ea4f2-2fc4-4d49-95dc-1b5ca4eb7669', '身材高大', '身材高大', '', '004', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('70752097-f62b-492a-b472-f1af0d6ec24e', '5e0f29da-c9f3-45f4-8555-5ab1baf884a6', '神经外科', '神经外科', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('70d80a02-ea5e-4460-a2f8-22a7aa5b91e5', '78e31276-8cc1-4be2-8437-c8f0a436e658', '易用性问题', '易用性问题', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('72819e90-a1a4-4d26-809f-feb9e73360c3', '35aa8c07-216e-4306-9d21-ace3363d9655', '政务审批', '政务审批', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('728aa8de-d55c-4df5-b96d-a2945b14db65', 'cc8b32e6-57e9-466a-b5dd-8df9c37f32d8', '合作', '合作', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('72c9773d-06ba-4b0f-a5fd-8a080d0d8224', '2a9fdfcf-4166-4151-9522-bf7312882167', '处女座', '处女座', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('7309fa0d-d8be-4638-a5b7-65bbdf411323', '7598b134-03a7-4131-9cdb-1456bc3b7e40', '未知', '未知', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('731c1575-f1b2-4441-bd84-f0295e872ee7', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '土族', '土族', '', '030', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('73bb24b3-f1ad-403b-9f5c-a12a5cc1e3db', 'ee0818a8-dba5-49ae-b189-9e33492b3f02', '加热炉', '加热炉', NULL, '13', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('73e9add7-051f-4c4e-9228-8cc36d752a5f', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '拉祜族', '拉祜族', '', '024', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('743a3a3e-6cd9-425d-9320-15cb75269ab5', '3ab0d14c-f354-4615-b11a-c923d556a23d', '前一级可选', '3', '', '004', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('74be55e1-4f47-41b1-83a5-6d7b09ac46f0', '508811e9-c7cb-4daa-9bae-350966551283', '其它', '其它', '', '012', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('75125ecb-a3e1-4298-b0f9-c2fe37b490c1', '2a9fdfcf-4166-4151-9522-bf7312882167', '天蝎座', '天蝎座', '', '012', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('7536d2dd-ed76-43d9-9cdf-b9c9f8791ba6', '41770ea3-997f-4866-b0f4-15c953235fa2', '件', '件', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('768f42d0-cdf7-4dff-8872-5b1cda6da0f1', '68fef6f4-b392-4f94-b655-a1bd7e83ccbd', 'SHT', 'SHT', NULL, '114', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('77906960-92b3-4941-81ab-83b58bd36a22', 'f1fd2d73-6207-42c2-82a1-4cd3094aad65', '紧密', '紧密', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('77c3855b-4155-4bf3-a6c9-60f649df7322', '06a9dc90-1575-423b-96be-2aa94f91f76d', '金融业', '金融业', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('782b8e04-d68c-4581-a076-108fa783dc84', '68fef6f4-b392-4f94-b655-a1bd7e83ccbd', 'PC', 'PC', NULL, '113', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('78fc83c1-991c-4b23-a8f5-cb009dacc8d9', 'ee0818a8-dba5-49ae-b189-9e33492b3f02', '平整', '平整', NULL, '22', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('79178a41-b773-4e6e-8db4-0da3534bb842', '285812c6-9be9-4771-b367-bda057574801', '执行中', '执行中', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('799d0751-7129-4e0d-a166-2de93160f397', '5e0f29da-c9f3-45f4-8555-5ab1baf884a6', '普外科', '普外科', '', '004', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('79c47d88-036d-4785-98b1-a3e5aaec3bde', '35aa8c07-216e-4306-9d21-ace3363d9655', '日常办公', '日常办公', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('7a44d1f8-1c3b-45e3-a079-dc30de266297', '7598b134-03a7-4131-9cdb-1456bc3b7e40', '未婚', '未婚', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('7aa08a98-d32e-437e-a065-0e2846fccfe8', 'ecdadf43-728d-48cc-aac7-b7e79f5b0037', '福娜瑞', '福娜瑞', '', '25', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('7ac01286-a2e9-4901-beb4-6d44e522fc0e', 'd7fb636d-919f-4ef1-8a95-8bc2b404f656', '差', '差', '', '004', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('7b711a4c-b084-4e3f-816a-910261bcbe5c', '06a9dc90-1575-423b-96be-2aa94f91f76d', '政府机关', '政府机关', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('7b9af543-eb1e-439c-b678-b26cadcc76b2', '123f080f-76da-4ee4-99d8-10b6dc143eee', '普通客户', '普通客户', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('801e86bb-43da-4fe9-9981-26aa3360b366', '37496fab-d279-45f8-be17-3e6839d831d0', '前一级可选', '3', '', '004', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('803f2de3-8640-4f51-aee3-aaf84af2a600', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '侗族', '侗族', '', '012', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('80b00bfb-3bba-4d4f-a9bf-20c5bddef74c', 'ecdadf43-728d-48cc-aac7-b7e79f5b0037', '美科创新', '美科创新', '', '16', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('80bee2ad-59e5-4e4d-8df8-7a8e4960bf20', 'b604114a-d241-45ce-9710-e5cc97fea8d1', '属猴', '属猴', '', '009', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('80dabdfe-91eb-419b-aac0-9c774743df48', 'ac2ea234-30be-4f8b-897f-db338a92de77', '游离客户', '游离客户', '', '004', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('82255f64-f3e1-474e-8367-01fad09f983a', '6c82bee6-e2aa-4343-a74c-71a06755464c', '主任护师', '主任护师', '', '009', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('8280bf99-9d6a-463a-8e9d-23537bb6f052', 'cc8b32e6-57e9-466a-b5dd-8df9c37f32d8', '流失', '流失', '', '005', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('82c18738-3e38-4c5e-b617-95b3a60943cf', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '羌族', '羌族', '', '033', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('830e130e-73bc-486b-b88e-844d59d8ecf3', '3355862d-1978-4b9e-a177-56ecac86dfcd', '人员综合素质', '人员综合素质', '', '009', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('83e41478-ee6a-4fae-95c7-eaccd2079c88', '733b7578-94ab-4c76-aaf5-da18b4e431c4', '论坛会议', '论坛会议', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('840af872-c322-42a2-b006-dad7684195a9', 'fc618794-6c5b-473b-bcb4-aaa940da149a', '态度一般', '态度一般', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('842af289-aa66-43a2-a1bd-aadf18794b3f', '5032cb80-bea6-4f5a-b3ce-3e336ee8a52f', '连二铜板', '连二铜板', NULL, '107', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('845224c6-1a7e-4eef-b324-2f3654a4598f', '5032cb80-bea6-4f5a-b3ce-3e336ee8a52f', '大修件', '大修件', NULL, '101', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('84e97a76-1c0a-40e4-a318-401358f34334', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '布朗族', '布朗族', '', '034', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('852755c8-bfff-425c-a40b-15e9ede16006', 'b3807598-19b7-494e-9372-45907132d048', '20070210轧区加热炉点检站1700作业区', '20070210轧区加热炉点检站1700作业区', NULL, '101', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('8594e9b7-bf05-41bf-9528-68a69d6e60f0', 'a2a5ac49-01ef-40c3-9758-07cba6610776', '护士长', '护士长', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('869E829F-E42D-441D-A7C9-81262E14D6D6', '194fb27f-7f59-4e98-9681-f9b51a40e757', '自定义处理37', '-37', NULL, '0137', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('8703fe16-32f0-4cf3-b184-86881a1717b2', 'ad044d3f-8315-4e25-b2a6-fb504c680ccd', '专业工程师', '专业工程师', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('87632acf-3229-4f8a-847a-66291a1eba5e', '5bc898b7-aa45-4c3e-9136-ee4d2be71d61', '开发框架产品', '开发框架产品', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('87670d39-28df-4ad4-b4f2-9cdbdcc4ac9c', '17975510-5337-4c45-939c-5c92cb662466', '客户回访联系', '客户回访联系', '', '004', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('87ccfa20-94b6-4d32-9ff7-18ec50ae3e74', '0d90ee9b-a98c-4fa8-9fd9-944385c4fb34', '方案', '方案', '', '004', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('8839e216-dbf1-49d7-aa85-1693286309fd', '0ff6715d-3db6-4569-a000-069e09887001', '副研究员', '副研究员', '', '017', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('889061d5-2bf1-44c6-9945-13d17c76cd03', '2d56e5d3-3b2a-4747-98ba-eed265fd0b2e', '欠费', '欠费', '', '004', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('893342d2-c272-428e-b117-44fae379c318', '80bf30d7-e9f0-4f9a-8cb3-255857d8e533', '实习生', '实习生', '', '004', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('89aa0b7b-aa89-4590-9e6e-86139e49c95c', 'd8a5bdd9-a1b9-450f-9885-0b3330536b93', '维修维护', '维修维护', '', '006', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('89b47c71-1acd-4a1b-8ade-a5f132f6aaed', '5032cb80-bea6-4f5a-b3ce-3e336ee8a52f', '其他承包件', '其他承包件', NULL, '111', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('8a05479a-4264-42f0-8bbc-af1c41b603e0', '06a9dc90-1575-423b-96be-2aa94f91f76d', '信息传输、计算机服务和软件业', '信息传输、计算机服务和软件业', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('8a2367c6-e5a6-406e-b78b-f521caa35089', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '达斡尔族', '达斡尔族', '', '031', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('8a710134-9a81-4459-bdd2-eb010fbe25b5', 'cf51ef77-c235-4eee-9ce0-6b699ed9649b', '客户报价', '客户报价', '', '004', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('8af7f25c-b8bb-4040-a4e2-7810d80cd4a7', '3355862d-1978-4b9e-a177-56ecac86dfcd', '其它', '其它', '', '015', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('8af8b474-7686-461f-860d-e1b0bc3b7f60', 'fc0a3960-2cff-40d3-8cfe-89df26d25eda', '短信邮件', '6', '', '007', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('8B763BE0-C6C8-4C4A-8D46-ECC34B2C1AF3', '194fb27f-7f59-4e98-9681-f9b51a40e757', '自定义处理28', '-28', NULL, '0128', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('8b7a7fc0-f3ea-400b-a9fb-fce108f32174', 'fc618794-6c5b-473b-bcb4-aaa940da149a', '态度非常恶劣', '态度非常恶劣', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('8c010ab1-ce91-40c7-8629-8f54e0ae414e', '78e31276-8cc1-4be2-8437-c8f0a436e658', '质量问题', '质量问题', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('8cc039c8-eb54-4e2d-9841-c30681acab72', '68fef6f4-b392-4f94-b655-a1bd7e83ccbd', 'BOT', 'BOT', NULL, '102', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('8d454452-beff-4a0e-a429-0814e7f030a0', '194fb27f-7f59-4e98-9681-f9b51a40e757', '内部邮件', '5', '', '005', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('8dd5a653-a480-4a94-bf54-fb40d1a2dbed', '3ab0d14c-f354-4615-b11a-c923d556a23d', '不可选择', '0', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('8e627462-e7f3-43ef-ab11-bc9ace5afd3e', '5bc898b7-aa45-4c3e-9136-ee4d2be71d61', '服务类型', '服务类型', '', '070', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('8e686d7c-7c34-4e38-a2b9-032655384d79', '6c82bee6-e2aa-4343-a74c-71a06755464c', '住院医师', '住院医师', '', '010', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('8eefa7d7-1453-4fb0-a3cb-7eb2ecf8cdc0', 'fafe19d9-42dd-4860-98c5-2d102a259082', '人才推进', '人才推进', '', '008', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('8fe2f778-80e1-4d36-97aa-26b8f654318d', 'fe544cd4-a649-42ca-af2f-6a36e42458c8', '已结算', '已结算', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('90437e85-9684-4f7f-b5c3-500a031e3b6a', 'ee0818a8-dba5-49ae-b189-9e33492b3f02', '轧一', '轧一', NULL, '19', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('90821cdd-6312-4a68-ac2b-b6180f39c21f', 'b89cb83b-eea0-4aa2-9df6-4cd7ed1e0570', '搁置挂起', '搁置挂起', '', '004', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('910397cb-e6d9-43a6-96fe-1b54b6fa6d60', 'd8a5bdd9-a1b9-450f-9885-0b3330536b93', '售后回访', '售后回访', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('91613d24-d035-4501-b2d6-69c049614733', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '景颇族', '景颇族', '', '028', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('91a15585-a8af-46f1-9938-cd0962e59d2d', '3ab0d14c-f354-4615-b11a-c923d556a23d', '申请人可选', '1', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('91ad0dfc-91e8-4793-8174-a66ead63ed27', 'ecdadf43-728d-48cc-aac7-b7e79f5b0037', '康拓', '康拓', '', '20', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('9208fd71-1421-4fb5-8c41-ea215e5ec8c9', '6c82bee6-e2aa-4343-a74c-71a06755464c', '护士', '护士', '', '005', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('9210fb5c-ade9-4337-994b-68c9ea782117', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '裕固族', '裕固族', '', '048', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('9314b287-5bc6-4b07-a3a3-9bf84b81003e', 'b3807598-19b7-494e-9372-45907132d048', '20060203钢区运行车间', '20060203钢区运行车间', NULL, '111', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('94e905e2-28e3-4c64-975e-32f993926e2a', '68fef6f4-b392-4f94-b655-a1bd7e83ccbd', 'KUA', 'KUA', NULL, '108', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('94f23eac-ff78-4955-bd35-a560acf5535d', 'ecdadf43-728d-48cc-aac7-b7e79f5b0037', '美中互利', '美中互利', '', '13', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('94f857ec-08e9-4360-8eef-5566481d0366', 'd8a5bdd9-a1b9-450f-9885-0b3330536b93', '客户关怀', '客户关怀', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('95226124-fbdf-4ad8-9444-33d431060c44', '6e8b7dbd-2506-47e2-9f2e-a8fa4fdadcc3', '使用位置', '使用位置', NULL, '0', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('959d071a-166f-4838-9a33-90a125da3a00', 'f3833cd2-d3e8-44b4-a44c-bb86ba121619', '供应商', '供应商', '', '004', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('95b49a76-bade-46d6-9ee7-2781563973e7', 'ecdadf43-728d-48cc-aac7-b7e79f5b0037', '默沙东', '默沙东', '', '01', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('95b64109-93ad-4cff-943d-24ae4c9e4d2f', '168f663f-ec21-4559-8964-4750fa492a21', '中共党员', '中共党员', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('95dcb926-f441-448c-aee8-9e131a0bd12b', 'ee0818a8-dba5-49ae-b189-9e33492b3f02', '浇注车间', '浇注车间', NULL, '181', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('95fecec2-611e-4c5e-813c-33c983547043', '3355862d-1978-4b9e-a177-56ecac86dfcd', '简便', '简便', '', '004', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('96903201-7816-47c1-810a-5fda8a2244fb', '2a9fdfcf-4166-4151-9522-bf7312882167', '宝瓶座', '宝瓶座', '', '013', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('977e7cd1-1175-42a9-b98b-d8fbd0a0c507', 'ee0818a8-dba5-49ae-b189-9e33492b3f02', '精炼车间', '精炼车间', NULL, '1692', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('977ead9e-3aba-4e0d-ba82-46357d3ff7cf', '3355862d-1978-4b9e-a177-56ecac86dfcd', '准确性', '准确性', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('97d0c38c-303e-4aec-a91d-c609d5cd7a32', '41770ea3-997f-4866-b0f4-15c953235fa2', '台', '台', '', '004', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('99195ebc-b2c7-4a02-a1dd-282ab161e3ac', 'b3807598-19b7-494e-9372-45907132d048', '20070213轧钢点检站平整分卷作业区', '20070213轧钢点检站平整分卷作业区', NULL, '104', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('995447F6-6A3D-4E0E-8B9F-F9103BAB920D', '194fb27f-7f59-4e98-9681-f9b51a40e757', '自定义处理1', '-1', NULL, '0101', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('99716c49-3341-4e63-aa4f-56211f9dafe3', 'b1cd8c2d-46c0-4cd0-8b2a-598ff33ec66c', '标准件（国产）', '标准件（国产）', NULL, '0', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('9b325f04-b431-4d7e-bcf1-c8212be88e51', 'fafe19d9-42dd-4860-98c5-2d102a259082', '代理合作合同', '代理合作合同', '', '004', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('9B5F7604-D50D-4854-AD5A-9A2476A0B60E', '194fb27f-7f59-4e98-9681-f9b51a40e757', '自定义处理17', '-17', NULL, '0117', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('9B77E983-015B-4779-9E8A-7AB7CCBF4094', '194fb27f-7f59-4e98-9681-f9b51a40e757', '自定义处理3', '-3', NULL, '0103', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('9b93f49d-1ae5-4c1d-95a4-797e3e5b436e', 'ecdadf43-728d-48cc-aac7-b7e79f5b0037', '美敦力', '美敦力', '', '07', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('9baccd62-5dac-4b2c-b1e1-12a60de9e22e', 'b604114a-d241-45ce-9710-e5cc97fea8d1', '属猪', '属猪', '', '012', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('9bba97eb-12b7-49c4-b9c9-c73440b58de7', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '维吾尔族', '维吾尔族', '', '005', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('9bc3db8a-1a3f-4f4d-aa99-3f1a830d737e', '68fef6f4-b392-4f94-b655-a1bd7e83ccbd', 'FU', 'FU', NULL, '104', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('9bcf06ee-fa96-4358-843c-e4a5e48ff38e', 'd7fb636d-919f-4ef1-8a95-8bc2b404f656', '黑名单', '黑名单', '', '005', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('9c1d79b9-51a4-471b-91f5-0f8dbbec24e5', '3355862d-1978-4b9e-a177-56ecac86dfcd', '产品外观形象', '产品外观形象', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('9cc9a42b-60ee-4ca4-a515-491356c56713', '2a9fdfcf-4166-4151-9522-bf7312882167', '双子座', '双子座', '', '010', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('9cf4a34f-bd11-4343-9f40-102e9d4e7865', '5238c1ed-7a5e-4279-8c8e-804ebb366544', '文章', '文章', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('9da224db-36c2-46a5-9adb-63337e91d9d3', '0ff6715d-3db6-4569-a000-069e09887001', '医师', '医师', '', '006', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('9db98251-b5ff-47be-89fc-ac3d3b2a491a', 'ecdadf43-728d-48cc-aac7-b7e79f5b0037', '蛇牌', '蛇牌', '', '12', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('9ec1fa6b-e09d-4d36-900d-429d49383762', '68d4c4df-921d-4e4c-aa67-ca8ef4c1a165', '已取消', '已取消', '', '004', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('9f765782-ae74-415d-84f0-fef887cbd901', 'ad044d3f-8315-4e25-b2a6-fb504c680ccd', '一般职员', '一般职员', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('a0ce92c5-4b4f-4ee7-b964-e9ffe80fa245', '06a9dc90-1575-423b-96be-2aa94f91f76d', '仓储和邮政业', '仓储和邮政业', '', '009', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('a0d8812b-6793-4862-b1b6-c894ee9b3e0f', '0ff6715d-3db6-4569-a000-069e09887001', '副主任医师、副教授', '副主任医师、副教授', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('a102b9d2-860f-46dd-9cf8-4dcb8598e1e4', '1d48a505-4c35-4d9a-a376-6751df02f5bb', '支出类', '支出类', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('a140ec3a-293b-49e0-b568-2372c5cbc34f', '68fef6f4-b392-4f94-b655-a1bd7e83ccbd', 'M2', 'M2', NULL, '110', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('a16dce75-075b-4e8c-9a3d-bf915c64a14c', '80bf30d7-e9f0-4f9a-8cb3-255857d8e533', '护士', '护士', '', '005', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('a37fc2ca-26db-4020-bed3-c42252b7601a', '17975510-5337-4c45-939c-5c92cb662466', '客户来电', '客户来电', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('a3870cfd-af8c-421e-9389-1979fbce723b', 'e07c08f3-f614-4755-b233-7e3157fcdb7a', '安装', '安装', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('A3AF40C1-5A20-4276-B292-6B612CFE38E0', '194fb27f-7f59-4e98-9681-f9b51a40e757', '自定义处理38', '-38', NULL, '0138', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('a3f3c9ba-986a-4175-81b9-2dbd0d52f3b4', 'bfad0e7f-af4f-40d9-9680-acedf51adcbf', '广告媒体', '广告媒体', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('a3fbe670-d147-4bc2-a7cd-5e60cf4ca3ec', '43b9b923-3a15-4e56-96b0-8ff70606b982', '不紧急', '不紧急', '', '004', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('a3fce22b-6561-4780-b092-c59f3c2c561c', '4a382ca3-4e34-405a-8763-e23eaab5429f', '凯旋华美达', '凯旋华美达', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('A400AE5D-52E3-408B-B487-18042E1E9F6B', '194fb27f-7f59-4e98-9681-f9b51a40e757', '自定义处理25', '-25', NULL, '0125', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('a42111d1-da1b-4aac-b589-a32b6bd87fe0', 'fc618794-6c5b-473b-bcb4-aaa940da149a', '态度较好', '态度较好', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('a508a4ee-46e8-4d59-a973-dc7f35bdb0b4', '0ff6715d-3db6-4569-a000-069e09887001', '护师', '护师', '', '010', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('a53cca51-e54f-4e06-926f-b7451b45686d', '80bf30d7-e9f0-4f9a-8cb3-255857d8e533', '其他', '其他', '', '006', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('a54e89c1-ca43-4b67-9f12-cf5b1c1f13a1', 'ecdadf43-728d-48cc-aac7-b7e79f5b0037', '强生生物外科孙', '强生生物外科孙', '', '08', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('a6a03a4c-23da-4d22-8404-3db691053215', '2a9fdfcf-4166-4151-9522-bf7312882167', '巨蟹座', '巨蟹座', '', '005', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('a6db8837-ebad-4a71-b1c4-ab3fdc0abfc5', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '撒拉族', '撒拉族', '', '035', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('a713943f-b941-4bc4-937f-f68d90890cd8', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '乌孜别克族', '乌孜别克族', '', '043', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('a7999c2c-258c-43ab-8253-759b14eb47eb', '875ea4f2-2fc4-4d49-95dc-1b5ca4eb7669', '偏胖', '偏胖', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('a7eb8318-9bf2-4692-93db-b2fb3180fa18', 'f8a1af13-d810-48f4-98b4-1cf2e0908665', '一般', '一般', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('a8b3ae00-b022-41ee-9ec6-f5d2a273c7b4', '78e31276-8cc1-4be2-8437-c8f0a436e658', '服务延时', '服务延时', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('a8dd9188-e572-41ce-bf26-64d57769acc4', 'b3807598-19b7-494e-9372-45907132d048', '20060211钢区炼钢点检站浇注', '20060211钢区炼钢点检站浇注', NULL, '114', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('a8ec2365-c56f-4323-8b31-a02fc8872d75', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '独龙族', '独龙族', '', '051', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('a93e216d-180d-4d3b-8f00-1e18644fca44', '35aa8c07-216e-4306-9d21-ace3363d9655', '路政业务', '路政业务', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('a976d0df-a159-4899-9c24-b01cf882c43f', '5e0f29da-c9f3-45f4-8555-5ab1baf884a6', '皮肤科', '皮肤科', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('a9971b17-99d0-4086-94cf-de8958758d3a', '194fb27f-7f59-4e98-9681-f9b51a40e757', '归挡', '2', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('AA5D1B5F-4A9B-4070-BB0B-0E3F68271937', '194fb27f-7f59-4e98-9681-f9b51a40e757', '自定义处理26', '-26', NULL, '0126', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('aa8fdab4-dbcc-4aa8-8c31-ecadff2af584', '17975510-5337-4c45-939c-5c92cb662466', '公司网站', '公司网站', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('aaa90e88-7021-4dba-9f5a-070cb7997cee', 'bfad0e7f-af4f-40d9-9680-acedf51adcbf', '朋友介绍', '朋友介绍', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('aacbffcb-6559-4b0d-b84f-6d85e2cb0322', 'ecdadf43-728d-48cc-aac7-b7e79f5b0037', '纽迪西亚', '纽迪西亚', '', '06', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('ab24207d-fbd3-4cce-947f-d1f6a7df44c9', 'ea1545ad-b66a-46cd-9a68-09db44309ec7', '业务推广', '业务推广', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('ab403cfe-843d-4298-b934-684e488b2429', '43b9b923-3a15-4e56-96b0-8ff70606b982', '一般', '一般', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('abb13e4d-1f9f-46cc-a4f9-a8ad05697113', '5238c1ed-7a5e-4279-8c8e-804ebb366544', '专著', '专著', '', '005', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('ac2b038f-27b8-496b-90dd-d2bba6891808', 'ecdadf43-728d-48cc-aac7-b7e79f5b0037', '诺其（诺和诺德）', '诺其（诺和诺德）', '', '17', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('ac3432aa-8d99-4c52-8318-4d63aec6106b', '2a9fdfcf-4166-4151-9522-bf7312882167', '天秤座', '天秤座', '', '011', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('ACFB711C-643C-4118-8BD9-53B7B7BD3171', '194fb27f-7f59-4e98-9681-f9b51a40e757', '自定义处理14', '-14', NULL, '0114', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('ad061776-8133-42f0-88db-3353c19b71c4', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '门巴族', '门巴族', '', '054', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('ad8faf74-77bd-4d17-9945-55c840831018', 'bfad0e7f-af4f-40d9-9680-acedf51adcbf', '业务开发', '业务开发', '', '006', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('adbd69d6-fe6b-4563-8ff9-f53c8adfdb98', '095a28e1-335b-452f-bdf4-49c564cd1407', '西北地区', '西北地区', '', '006', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('adfa8996-7252-44ca-9eb6-e4c85aeef0a3', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '白族', '白族', '', '014', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('ae7e8392-bddd-4e58-b8f9-69514e699940', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '回族', '回族', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('aef2f351-0f29-465e-a181-38e9c0fb6071', '0ff6715d-3db6-4569-a000-069e09887001', '主任技师', '主任技师', '', '016', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('afcb1778-9c6e-4584-9675-35e6c950f1da', 'f5b3aac2-3870-49b4-a1bb-373f6f100649', '电话投诉', '电话投诉', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('b015892a-cbc8-4238-b665-8a88e13afbfc', 'b63e67ca-2206-4916-aa02-b522a2d9258d', 'L', 'L', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('b055aa43-eb3d-40d7-b58d-55ee8c7c2441', '5032cb80-bea6-4f5a-b3ce-3e336ee8a52f', '油品', '油品', NULL, '105', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('b0aa807a-ca11-40e6-ab2d-af220707889c', '11442abb-14ee-48fc-867b-341b731070da', '学士', '学士', '', '004', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('b0b0cab9-3092-4936-9de1-51b6819e5fba', '168f663f-ec21-4559-8964-4750fa492a21', '无党派民主人士', '无党派民主人士', '', '009', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('b1c04d9a-2f69-494d-9565-d7f85e8fd8d2', '0ff6715d-3db6-4569-a000-069e09887001', '主治医师', '主治医师', '', '005', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('b269dff8-3cad-4c54-a2b6-3f36d77021f9', '2d56e5d3-3b2a-4747-98ba-eed265fd0b2e', '预收款', '预收款', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('b2ba569d-b63f-46f7-9d4f-466710adb5ea', 'ecdadf43-728d-48cc-aac7-b7e79f5b0037', '卡尔史托斯', '卡尔史托斯', '', '21', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('b2e4bfca-9521-4b80-9470-13bb98f2e414', '5032cb80-bea6-4f5a-b3ce-3e336ee8a52f', '技改件', '技改件', NULL, '102', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('b36ea6fa-6120-4555-b1a1-bb2996bdacc6', 'ecdadf43-728d-48cc-aac7-b7e79f5b0037', '阿斯利康', '阿斯利康', '', '09', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('b3a9a6bc-f06d-4752-b476-417208edab23', 'd8a5bdd9-a1b9-450f-9885-0b3330536b93', '销售联系', '销售联系', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('b3e95123-070a-42d9-b741-8ba07fd5e5bd', '508811e9-c7cb-4daa-9bae-350966551283', '严格严谨', '严格严谨', '', '010', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('B5935EC5-80C3-42FB-BF29-98242DA36B21', '194fb27f-7f59-4e98-9681-f9b51a40e757', '自定义处理10', '-10', NULL, '0110', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('b61877d3-9f28-485b-93b6-7726f75505d3', 'b604114a-d241-45ce-9710-e5cc97fea8d1', '属兔', '属兔', '', '004', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('b62c97bb-184b-445b-ae7b-4641231d039e', 'd8a5bdd9-a1b9-450f-9885-0b3330536b93', '客户投诉', '客户投诉', '', '007', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('b6a29d52-327d-4349-976e-4e76d727ffbd', '5d04e671-4c21-499f-95e0-779d5ce7b1b8', '绿', '绿', '', '004', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('b6bcdf75-828d-4681-8cf4-a0f95536fe94', '5407140b-5234-430f-9099-9808225eb0a6', '纪念', '纪念', '', '005', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('b7eef502-08b0-45cb-9b4d-909e0efb85e2', '6c82bee6-e2aa-4343-a74c-71a06755464c', '副主任护师', '副主任护师', '', '008', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('b8320076-7d4a-428f-bfa3-0c17702eeede', 'ee0818a8-dba5-49ae-b189-9e33492b3f02', '转炉车间', '转炉车间', NULL, '1691', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('b8ac24b7-0905-4999-a8d1-026a3c60a2bd', '68fef6f4-b392-4f94-b655-a1bd7e83ccbd', 'TIA', 'TIA', NULL, '118', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('b8afbb6d-0bf2-431e-a42a-a37a55d4495f', 'b604114a-d241-45ce-9710-e5cc97fea8d1', '属鸡', '属鸡', '', '010', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('b90155de-d035-4407-8585-92982fd11b81', '2a9fdfcf-4166-4151-9522-bf7312882167', '未知', '未知', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('b9108029-66df-4767-bf71-bac477a2a730', 'd8a5bdd9-a1b9-450f-9885-0b3330536b93', '服务支持', '服务支持', '', '005', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('ba0a6de1-71b4-4483-a68e-1b42d226f6d6', '123f080f-76da-4ee4-99d8-10b6dc143eee', '高级VIP会员', '高级VIP会员', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('ba3b7f78-b87a-45cf-abfc-19a155ecc824', 'ecdadf43-728d-48cc-aac7-b7e79f5b0037', '安斯泰来', '安斯泰来', '', '05', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('BA50F34B-7D6E-40EF-8DCE-7758E4323875', '194fb27f-7f59-4e98-9681-f9b51a40e757', '自定义处理4', '-4', NULL, '0104', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('ba7771d1-94b3-46f2-85e2-6a7e8062ed92', '285812c6-9be9-4771-b367-bda057574801', '未执行', '未执行', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('BB62F22C-E1C9-4734-90CC-C3078DD2D622', '194fb27f-7f59-4e98-9681-f9b51a40e757', '自定义处理48', '-48', NULL, '0148', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('bccdbb14-8d2c-4f8c-9da8-5b846e3e0fa5', '287f4727-1ec6-474f-9da9-c7b2a05bdd39', '博士', '博士', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('bd1f0d43-07f5-4418-af47-b6fc418a4f15', '4a382ca3-4e34-405a-8763-e23eaab5429f', '珠江宾馆', '珠江宾馆', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('bd67e3d9-a2f4-4d55-a092-6151f6191308', 'ee0818a8-dba5-49ae-b189-9e33492b3f02', '轧二', '轧二', NULL, '20', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('bd77a955-4610-4b31-8eaa-6165d8fef113', 'ee0818a8-dba5-49ae-b189-9e33492b3f02', '连一', '连一', NULL, '17', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('bd8d25cc-6627-4aba-a195-f5725861d8df', '20189b21-7f37-49eb-b67d-5d0bc65b3b8d', '客户要求', '客户要求', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('bde1a751-d4d9-4edd-aeaf-b14625f0399c', 'f1fd2d73-6207-42c2-82a1-4cd3094aad65', '反感', '反感', '', '006', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('bed3b26a-88b4-4b99-af70-d5cb2c554f58', '65ea650f-974c-4b3f-911d-ccd437195218', '中国', '中国', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('befbdb8b-d8e0-490a-9cd2-e7bbffeb7463', '0ff6715d-3db6-4569-a000-069e09887001', '主任医师', '主任医师', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('bf3b635f-4636-4a22-9a98-3067136cdbd7', '3355862d-1978-4b9e-a177-56ecac86dfcd', '企业品牌形象', '企业品牌形象', '', '008', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('bf82fcfa-e4d9-48bb-99d1-59d35652921a', 'b3807598-19b7-494e-9372-45907132d048', '20070217轧区运行点检站1810作业区', '20070217轧区运行点检站1810作业区', NULL, '108', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('c0b3b122-bb37-4eff-97a6-e799e83a1dca', '3355862d-1978-4b9e-a177-56ecac86dfcd', '使用成本价格', '使用成本价格', '', '010', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('c225af3c-4860-4efb-bd5b-144cd23192f1', 'd0da80d5-2b6d-462b-801d-ec5f110540e9', '已回访待处理', '已回访待处理', '', '004', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('c2867e50-c554-40ef-a72e-a04389250298', 'ea1545ad-b66a-46cd-9a68-09db44309ec7', '客户通知', '客户通知', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('c3356ab7-7ee7-45a9-a153-49293d8b401d', '837e6b55-02e7-49b3-9b5d-6a16b0543f70', '处理中', '0', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('c3ab4a9d-e82d-4389-935f-f423b9e45890', '65ea650f-974c-4b3f-911d-ccd437195218', '美国', '美国', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('c4a2a963-ef6f-45f9-b7d1-24abec6c16df', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '赫哲族', '赫哲族', '', '053', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('c53a29cb-e2b1-47ec-a802-3e73d806e1d9', 'd0da80d5-2b6d-462b-801d-ec5f110540e9', '已完成关闭', '已完成关闭', '', '005', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('c60213fc-a731-4636-80db-1cb7aa871e1d', 'd0da80d5-2b6d-462b-801d-ec5f110540e9', '异常关闭', '异常关闭', '', '006', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('C68541B9-9AAF-46C3-BB36-37AAECEDCC96', '194fb27f-7f59-4e98-9681-f9b51a40e757', '自定义处理19', '-19', NULL, '0119', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('c6c60f32-644e-4676-93ab-9e1fa34ad402', '06a9dc90-1575-423b-96be-2aa94f91f76d', '文化、体育和娱乐业', '文化、体育和娱乐业', '', '006', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('c70abe3c-c1b7-45b6-9ff3-aa6339eec97f', 'b3807598-19b7-494e-9372-45907132d048', '20070212轧钢点检站1700作业区', '20070212轧钢点检站1700作业区', NULL, '103', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('c73dc0d6-6db4-4a79-a1ea-ebf8d8334096', 'f0b69ae1-ee14-4029-a755-caae10daf351', '免费', '免费', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('c77fe499-f67e-4615-bef3-b9f385394061', '11442abb-14ee-48fc-867b-341b731070da', '硕士', '硕士', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('c8228aef-fda0-4ea4-a778-261964c25550', '287f4727-1ec6-474f-9da9-c7b2a05bdd39', '本科', '本科', '', '004', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('c8aaa18d-1d4c-4932-a2ac-196298bc0f69', 'bfad0e7f-af4f-40d9-9680-acedf51adcbf', '主动联系', '主动联系', '', '005', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('c8b4e195-ea3e-41cb-9aa3-1ef7b71a1d84', '3ab0d14c-f354-4615-b11a-c923d556a23d', '前一级必选', '4', '', '005', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('c9330e3b-7375-407c-ba97-c2fd1d3ef1cc', 'b3807598-19b7-494e-9372-45907132d048', '20070219轧区运行点检站平整分卷作业区', '20070219轧区运行点检站平整分卷作业区', NULL, '110', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('ca28c8df-ae33-4392-90dd-b632e6c41c81', 'b3807598-19b7-494e-9372-45907132d048', '20060214钢区连铸点检站LF精炼炉', '20060214钢区连铸点检站LF精炼炉', NULL, '117', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('cab109eb-0b09-43db-880d-a5b143d4d95b', 'f3833cd2-d3e8-44b4-a44c-bb86ba121619', '正式客户', '正式客户', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('cad67c59-107b-41f0-93cd-cb759cada6af', 'b3807598-19b7-494e-9372-45907132d048', '20060213钢区连铸点检站薄板连铸机', '20060213钢区连铸点检站薄板连铸机', NULL, '116', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('cb286d98-a553-43c6-a703-d946b535fd1b', '5bc898b7-aa45-4c3e-9136-ee4d2be71d61', '日用品', '日用品', '', '090', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('cb4b30ea-0a91-4451-8292-352d5af68f37', 'fc0a3960-2cff-40d3-8cfe-89df26d25eda', '不发送通知', '0', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('cd61efda-1611-4e3e-96d1-b861dd93f196', '5d04e671-4c21-499f-95e0-779d5ce7b1b8', '蓝', '蓝', '', '005', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('cd98865e-be66-447e-a034-d4e20cfb3b7d', 'fafe19d9-42dd-4860-98c5-2d102a259082', '网站推广合同', '网站推广合同', '', '005', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('cdae3903-e6b2-4f2d-a9ea-fbe299233b1e', '508811e9-c7cb-4daa-9bae-350966551283', '提升专业成功欲望', '提升专业成功欲望', '', '007', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('cdaee681-495b-4b93-83fe-b4aa78944562', '23f63b66-e28c-4e0f-9749-6344e647d1fd', '售前跟踪', '售前跟踪', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('ce0f6cda-f695-42c3-8b61-59b3e780135c', 'fc0a3960-2cff-40d3-8cfe-89df26d25eda', '短信', '2', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('ce22b68e-9f15-451c-9cd3-289c715939d3', 'ecdadf43-728d-48cc-aac7-b7e79f5b0037', '华瑞制药', '华瑞制药', '', '04', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('ce65fdb5-397c-48e6-9689-bb67b320a1fd', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '怒族', '怒族', '', '042', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('ce7ffaaf-f086-41c8-b18f-10e32bf0a73f', 'f1fd2d73-6207-42c2-82a1-4cd3094aad65', '排斥', '排斥', '', '005', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('cee119c0-bca2-4b5c-9237-2333879b8555', '508811e9-c7cb-4daa-9bae-350966551283', '价低', '价低', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('cf04b7f0-17be-4314-911b-ecd5dba897e9', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '土家族', '土家族', '', '015', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('cf9094e4-5e32-4ef1-b8f3-a35e6b429fa3', '3355862d-1978-4b9e-a177-56ecac86dfcd', '易用', '易用', '', '011', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('CF953D3F-B835-4BDE-9F37-C677547750ED', '194fb27f-7f59-4e98-9681-f9b51a40e757', '自定义处理46', '-46', NULL, '0146', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('cffe2bb8-f3bf-456a-940c-03de09eca43d', '23f63b66-e28c-4e0f-9749-6344e647d1fd', '合同执行', '合同执行', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('D00245A7-D125-4625-B515-C8BBAF72A84E', '194fb27f-7f59-4e98-9681-f9b51a40e757', '自定义处理6', '-6', NULL, '0106', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('D015E063-49F5-4666-84BA-B8756CCA3FBA', '194fb27f-7f59-4e98-9681-f9b51a40e757', '自定义处理2', '-2', NULL, '0102', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('d0d8bdd5-23f2-4f76-b7ac-71859726568b', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '蒙古族', '蒙古族', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('d0e8d62e-0f48-43df-bfe1-10ecb4242bbb', 'f1fd2d73-6207-42c2-82a1-4cd3094aad65', '好', '好', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('d182bdad-483d-463c-85d9-984461185296', '06a9dc90-1575-423b-96be-2aa94f91f76d', '交通运输', '交通运输', '', '008', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('d1a2ac8e-8da1-4908-a086-fd8da4bf3177', 'fc0a3960-2cff-40d3-8cfe-89df26d25eda', '广播邮件', '5', '', '006', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('d228a1f1-cb2e-43c5-b527-7754d27df320', 'b63e67ca-2206-4916-aa02-b522a2d9258d', 'XXL', 'XXL', '', '004', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('D27EDC7B-7F69-41CF-AE03-A189220850F2', '194fb27f-7f59-4e98-9681-f9b51a40e757', '自定义处理15', '-15', NULL, '0115', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('d2db3213-d60b-477d-8ac2-6e3ffbfb5244', '5bc898b7-aa45-4c3e-9136-ee4d2be71d61', '营销类软件', '营销类软件', '', '030', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('d2f3e325-e013-4c36-98b3-3648f3805c8d', '68fef6f4-b392-4f94-b655-a1bd7e83ccbd', 'PA', 'PA', NULL, '112', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('d317c954-d242-4602-ab5d-cbfd52429b7e', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '鄂伦春族', '鄂伦春族', '', '052', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('d31bb623-2111-4fbf-ac74-7fdefbb0c729', 'cf51ef77-c235-4eee-9ce0-6b699ed9649b', '其他', '其他', '', '005', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('d3491ea2-ad6d-492d-a01d-a50a6b513b4a', 'c2700c07-1f08-4c58-b810-39356ef64096', '旧产品升级', '旧产品升级', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('d3c12fdb-1196-4bea-b488-6a5995ebed22', '5407140b-5234-430f-9099-9808225eb0a6', '私人', '私人', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('d49c842d-c1e5-483e-9b7f-d7043a825a8b', '37496fab-d279-45f8-be17-3e6839d831d0', '都可以选择', '5', '', '006', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('d4b02e8e-a67a-4510-846c-d6505d87d3b2', '733b7578-94ab-4c76-aaf5-da18b4e431c4', '专家会诊', '专家会诊', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('d4b9b008-3c77-404d-a495-882737b1be5a', '17975510-5337-4c45-939c-5c92cb662466', '广告媒体', '广告媒体', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('d4e81f7a-e90a-4fdc-a31c-020c09595a6e', 'bfad0e7f-af4f-40d9-9680-acedf51adcbf', '互联网', '互联网', '', '004', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('D50E7E45-B5E8-470D-AD5F-0A02DEDCF32D', '194fb27f-7f59-4e98-9681-f9b51a40e757', '自定义处理20', '-20', NULL, '0120', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('d53f2e9e-f695-4ade-9349-fb61abc16c42', 'ae01982a-5a52-4bc8-894d-4d81bb782557', '非常不满意', '非常不满意', '', '005', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('d5e66309-4254-43c6-b990-aed0fa97c235', 'b270278a-6b9f-4c8e-80e8-4ce8dea6af97', 'Winform开发框架', 'Winform开发框架', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('D623C1B2-A72B-4F25-BF8E-704BC621A518', '194fb27f-7f59-4e98-9681-f9b51a40e757', '自定义处理29', '-29', NULL, '0129', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('D634FED0-7416-4F4D-9EC6-4BE2C2141D09', '194fb27f-7f59-4e98-9681-f9b51a40e757', '自定义处理40', '-40', NULL, '0140', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('d637bb80-a501-44dc-a85c-d015b819cada', 'fafe19d9-42dd-4860-98c5-2d102a259082', '其他合同', '其他合同', '', '007', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('d6c1d0b3-cfba-4881-91bc-1c089aef1660', 'd7fb636d-919f-4ef1-8a95-8bc2b404f656', '一般', '一般', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('d6e26a3a-a3c8-4284-9e80-c9b4771adf01', 'd2cd90f8-b7e9-4beb-85a0-72ffefd7cddf', '个人开发版', '个人开发版', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('d6f20e32-9baa-4da7-be1b-d784bcfb7683', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '锡伯族', '锡伯族', '', '038', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('d6fe5e81-4bc7-4ad5-aaad-97bb7f83be48', '5d04e671-4c21-499f-95e0-779d5ce7b1b8', '紫', '紫', '', '007', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('d717e1b1-161c-4349-8f68-89ff4a88702e', '1d426d7f-2d93-4e3c-84e4-bcea0795382c', '未审核', '未审核', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('d7a08730-7c28-4ce2-ac46-da5035c50de8', 'dcae8f36-e5f0-44c1-b15e-fd5af9b0e578', 'VVIP', 'VVIP', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('d7e9ecf8-8812-4c70-9023-949cc388221d', '68fef6f4-b392-4f94-b655-a1bd7e83ccbd', 'BAG', 'BAG', NULL, '101', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('d81777a1-c639-405f-bd56-3e9c2b30ff21', '194fb27f-7f59-4e98-9681-f9b51a40e757', '手机短信', '7', '', '007', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('d837dc48-146f-4303-b69e-b28f446226d4', 'b63e67ca-2206-4916-aa02-b522a2d9258d', 'M', 'M', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('d8aa394d-443b-402a-a5f5-cddff88e41ca', '72d6407e-5f0c-4e10-8bdb-af2929407b62', '测试供货商', '测试供货商', NULL, '0', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('d8fba6b3-716a-4135-8355-b34c550f8287', '3355862d-1978-4b9e-a177-56ecac86dfcd', '稳定性', '稳定性', '', '012', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('d94531fc-db00-4559-a41d-78e77a467e07', '68fef6f4-b392-4f94-b655-a1bd7e83ccbd', 'ZI', 'ZI', NULL, '121', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('d947a8aa-363d-45b2-8964-0f47ed03bb7d', 'ae01982a-5a52-4bc8-894d-4d81bb782557', '不满意', '不满意', '', '004', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('d9d8f6bd-f2be-4d46-8c21-d213fd67a5b5', 'ae01982a-5a52-4bc8-894d-4d81bb782557', '满意', '满意', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('d9dd724d-4ed7-42c7-8a69-5f5ddaf97d05', '875ea4f2-2fc4-4d49-95dc-1b5ca4eb7669', '偏瘦', '偏瘦', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('d9f2238e-6d54-48fd-b2c8-34ba4f635d82', 'f5b3aac2-3870-49b4-a1bb-373f6f100649', '上门投诉', '上门投诉', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('dac21c5f-8b39-4958-b314-43a96b729114', 'ae01982a-5a52-4bc8-894d-4d81bb782557', '一般', '一般', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('dac4fa00-5e6f-4ddd-87e1-57ad35bb2066', '5e0f29da-c9f3-45f4-8555-5ab1baf884a6', '神经外科', '神经外科', '', '012', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('db728fe3-3da4-42de-9432-aa1895a2b5fb', '68d4c4df-921d-4e4c-aa67-ca8ef4c1a165', '已完成', '已完成', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('dbad009d-1af1-4cc4-994a-a53f8f4b3505', 'b604114a-d241-45ce-9710-e5cc97fea8d1', '属马', '属马', '', '007', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('dbdd3499-2e67-4060-af36-fe4f84d3d4bc', 'dcae8f36-e5f0-44c1-b15e-fd5af9b0e578', 'VIP广东', 'VIP广东', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('dc04ea23-c137-452c-a7ca-5b7e57cecc23', '68d4c4df-921d-4e4c-aa67-ca8ef4c1a165', '发货中', '发货中', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('dd12ce8d-2c30-4125-9413-09697aeeca10', 'ecdadf43-728d-48cc-aac7-b7e79f5b0037', '北大之路', '北大之路', '', '14', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('dd14c669-fdb1-4e25-9e0b-db4bd0ea72f0', '5238c1ed-7a5e-4279-8c8e-804ebb366544', '其他', '其他', '', '006', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('dd2591e1-ecc7-443b-8cb6-0f97d0f337d9', '4a382ca3-4e34-405a-8763-e23eaab5429f', '索菲特', '索菲特', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('DD4DE270-8ECB-403A-8240-7E21A5E6410C', '194fb27f-7f59-4e98-9681-f9b51a40e757', '自定义处理41', '-41', NULL, '0141', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('dde096dd-c242-49f1-a43b-01b154017001', 'ba42a1c5-7bd3-4189-b4b4-9c1db4462cf1', 'Win*10', 'Win*10', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('dde583f8-ed7b-40ed-80ff-5ae7658219d7', 'f3833cd2-d3e8-44b4-a44c-bb86ba121619', '潜在客户', '潜在客户', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('de033b63-5d6f-4424-96c5-ad999e30b4ac', '168f663f-ec21-4559-8964-4750fa492a21', '民革会员', '民革会员', '', '004', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('de895d2f-e2b9-4852-9bad-2466d49a2107', 'b3807598-19b7-494e-9372-45907132d048', '20060216钢区连铸点检站辅供设备', '20060216钢区连铸点检站辅供设备', NULL, '118', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('deb600a9-600c-4286-b654-c9c47b34d43f', 'b3807598-19b7-494e-9372-45907132d048', '20060212钢区连铸点检站中板连铸机', '20060212钢区连铸点检站中板连铸机', NULL, '115', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('df2efc06-80fe-4829-8afb-bbdc9ef3a8bc', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '水族', '水族', '', '025', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('e0591e6b-661b-4edb-89dd-d01ad11a3acc', '095a28e1-335b-452f-bdf4-49c564cd1407', '东北地区', '东北地区', '', '007', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('e08e07b5-9329-4b57-ad6c-79107ebc1a46', '41770ea3-997f-4866-b0f4-15c953235fa2', '套', '套', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('e09b1a9a-6670-4960-a46e-ff098bcd8fbd', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '畲族', '畲族', '', '022', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('e0d6b546-4b81-4704-bf7e-e36e76029b68', 'fafe19d9-42dd-4860-98c5-2d102a259082', '软件销售合同', '软件销售合同', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('e26b0f16-acc5-4c24-b821-e85e37d47c32', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '瑶族', '瑶族', '', '013', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('e2e81c7b-7d2e-405c-8e1b-a0568e7f23fe', '4c9973ae-06c3-47f5-9001-c6008080d868', '产品研发', '产品研发', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('E36A3464-2A6E-4829-8FD9-A03FEC574DAC', '194fb27f-7f59-4e98-9681-f9b51a40e757', '自定义处理22', '-22', NULL, '0122', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('e373ded8-651d-440c-834b-b7574fce8bbd', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '高山族', '高山族', '', '023', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('e38ffa9f-1d3d-45a2-acea-f09270abda0a', '0ff6715d-3db6-4569-a000-069e09887001', '副主任护师', '副主任护师', '', '008', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('e4b0ddc5-56c6-4948-949b-fc17812f9ecc', '6c82bee6-e2aa-4343-a74c-71a06755464c', '主任医师、教授', '主任医师、教授', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('e4e70ef5-205b-44f9-9def-053c2c0385cd', 'f5b3aac2-3870-49b4-a1bb-373f6f100649', '邮件投诉', '邮件投诉', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('e6018dbb-e6bf-40ed-b99f-b91ac591d6b8', 'f8a1af13-d810-48f4-98b4-1cf2e0908665', '很严重', '很严重', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('E6914904-8A77-4BDC-B3C2-430366A33511', '194fb27f-7f59-4e98-9681-f9b51a40e757', '自定义处理27', '-27', NULL, '0127', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('e6942e69-44f1-4d84-8a47-aeb206f31cc9', 'fc0a3960-2cff-40d3-8cfe-89df26d25eda', '广播', '1', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('e699d1be-51ce-412a-aeb9-87196b7c403d', '508811e9-c7cb-4daa-9bae-350966551283', '满足需求', '满足需求', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('e69c25fe-64b2-44a7-9961-022d1309acff', '1d426d7f-2d93-4e3c-84e4-bcea0795382c', '已生成订单', '已生成订单', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('e6e6a0e6-d640-4098-a7db-2937e3ff9cb9', '68d4c4df-921d-4e4c-aa67-ca8ef4c1a165', '处理中', '处理中', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('e769ef89-bc06-481b-a09a-c4e923bc33ac', 'fafe19d9-42dd-4860-98c5-2d102a259082', '人才招聘合同', '人才招聘合同', '', '009', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('e849b8c3-928d-42f9-8826-b43802f67740', 'b3807598-19b7-494e-9372-45907132d048', '20070211轧钢点检站1810作业区', '20070211轧钢点检站1810作业区', NULL, '102', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('e84f2933-4aab-40a3-8158-4f98af9b959c', 'ee0818a8-dba5-49ae-b189-9e33492b3f02', '设备科', '设备科', NULL, '167', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('e9270047-f605-4a62-8a3a-392587b7c4d4', 'fafe19d9-42dd-4860-98c5-2d102a259082', '项目开发', '项目开发', '', '010', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('E9C55BE9-711F-4C0E-BDAA-5B8BF665AFCA', '194fb27f-7f59-4e98-9681-f9b51a40e757', '自定义处理24', '-24', NULL, '0124', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('eaf765d0-39d9-4ee6-882e-9ed2a9d2cf9c', '5e0f29da-c9f3-45f4-8555-5ab1baf884a6', '肿瘤外科', '肿瘤外科', '', '008', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('eb3f30f7-7e13-4481-ba71-29eae4f7fd97', '3355862d-1978-4b9e-a177-56ecac86dfcd', '专业', '专业', '', '013', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('eb8c4c4f-4737-4e09-88d6-e59abd8e7416', '5e0f29da-c9f3-45f4-8555-5ab1baf884a6', '血液科', '血液科', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('ec34a420-95b2-4452-86d9-5b2894edbaeb', '11442abb-14ee-48fc-867b-341b731070da', '名誉博士', '名誉博士', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('ec51c097-d48f-439b-8124-023c0d6bc9a0', '5d04e671-4c21-499f-95e0-779d5ce7b1b8', '橙', '橙', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('ec80e4da-98f8-4760-87d0-32d67062694d', '68fef6f4-b392-4f94-b655-a1bd7e83ccbd', 'SHU', 'SHU', NULL, '115', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('eed9e096-9cb7-4539-a1df-557ef7a541f1', '43b9b923-3a15-4e56-96b0-8ff70606b982', '非常紧急', '非常紧急', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('EF0886CE-F907-429E-A107-05ABE2722096', '194fb27f-7f59-4e98-9681-f9b51a40e757', '自定义处理49', '-49', NULL, '0149', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('ef4588ef-3e03-4133-9b3d-5eb8f54e6b87', 'ae01982a-5a52-4bc8-894d-4d81bb782557', '非常满意', '非常满意', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('efffe7e9-79a5-4192-b5b9-114d449bd8c8', '5e0f29da-c9f3-45f4-8555-5ab1baf884a6', '骨科', '骨科', '', '005', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('f023b179-916b-455c-acf2-448e062a3717', '5238c1ed-7a5e-4279-8c8e-804ebb366544', '获奖', '获奖', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('f050fd8e-1ecd-4b30-977c-be816f22816b', 'b1cd8c2d-46c0-4cd0-8b2a-598ff33ec66c', '非标件（国产）', '非标件（国产）', NULL, '1', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('f07e1a36-b04b-4159-8593-ceebd83194dd', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '俄罗斯族', '俄罗斯族', '', '044', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('f096f249-0e29-4d6e-a478-a90064535330', '65ea650f-974c-4b3f-911d-ccd437195218', '英国', '英国', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('F0BC4ED9-F399-4DB2-A70B-DF7B7C3505AB', '194fb27f-7f59-4e98-9681-f9b51a40e757', '自定义处理11', '-11', NULL, '0111', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('f0ea94ea-1e66-40f5-942f-d88071d65699', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '仫佬族', '仫佬族', '', '032', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('f19b617a-3d20-4754-bbd6-9d307968a2c9', '11442abb-14ee-48fc-867b-341b731070da', '博士', '博士', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('f21457ce-dce0-4af8-81ee-d8d0630a3c0a', '0ff6715d-3db6-4569-a000-069e09887001', '护士', '护士', '', '011', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('f2269b4a-c64a-414b-8cb1-96e710747fac', '1d426d7f-2d93-4e3c-84e4-bcea0795382c', '已审核', '已审核', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('f283dfb4-4edd-47b6-a6c5-7751dda42965', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '布依族', '布依族', '', '009', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('f2b1a3fa-df33-40b3-853e-bc5b491efece', 'fafe19d9-42dd-4860-98c5-2d102a259082', '房租', '房租', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('f3006ffe-92c7-4c4c-8d67-ddefad06cdf1', 'f3833cd2-d3e8-44b4-a44c-bb86ba121619', '地区分销商', '地区分销商', '', '006', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('f345a51b-80d7-4d18-aaa4-fc420b90cc56', '5d04e671-4c21-499f-95e0-779d5ce7b1b8', '靛', '靛', '', '006', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('f3853796-7e89-4375-ac00-895c186f58a3', 'ee0818a8-dba5-49ae-b189-9e33492b3f02', '自动化公司', '自动化公司', NULL, '169', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('f3b39724-c5e9-4a7c-8ae2-9cef1635ba41', '287f4727-1ec6-474f-9da9-c7b2a05bdd39', '硕士', '硕士', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('f40fbfbc-514b-4457-8ebc-e69b8b74fa3d', 'ecdadf43-728d-48cc-aac7-b7e79f5b0037', '天新福', '天新福', '', '15', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('f4255ce1-35d7-4eb0-a27e-0ec6b3aa70fd', '7598b134-03a7-4131-9cdb-1456bc3b7e40', '已婚', '已婚', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('f4d1795f-f87b-4be2-a27f-27c94efefd52', 'f8a1af13-d810-48f4-98b4-1cf2e0908665', '不严重', '不严重', '', '004', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('f59c253f-c5a7-441c-98b4-536135437045', 'a87531e2-bcc3-498c-bcf1-cd92e4057043', '供应处', '供应处', NULL, '10', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('f5a04a6f-8d22-42f3-8606-8e5543e38e59', '23f63b66-e28c-4e0f-9749-6344e647d1fd', '售后服务', '售后服务', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('f5b3b92c-f739-45ea-913c-c4fb1cc0e5a7', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '普米族', '普米族', '', '040', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('f5ea63f5-325e-49ef-a9a0-4846d6f442e9', 'fb46eec1-2ae7-4206-9477-939fe29e0643', '非常重要', '非常重要', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('f697fa55-2ece-46ff-beb3-0594b4f21d1a', '508811e9-c7cb-4daa-9bae-350966551283', '提升形象', '提升形象', '', '005', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('f7025d6f-58bc-460a-b3b1-f0c9ab734845', '68fef6f4-b392-4f94-b655-a1bd7e83ccbd', 'ZHI', 'ZHI', NULL, '120', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('f7677253-0aa1-4782-9505-e762f867a507', 'd7fb636d-919f-4ef1-8a95-8bc2b404f656', '优秀', '优秀', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('f7968148-d5fd-4ae3-ac78-83c2e4027250', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '壮族', '壮族', '', '008', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('f7d75233-9e3c-46ae-8f9d-eef0b7c83f02', 'a87531e2-bcc3-498c-bcf1-cd92e4057043', '机动处', '机动处', NULL, '0', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('f7d953b8-69a6-4a13-bb72-ab47f444ec5a', '80bf30d7-e9f0-4f9a-8cb3-255857d8e533', '进修医师', '进修医师', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('f87346ed-0a3d-4e73-b479-43fa4a9cad3a', '0ff6715d-3db6-4569-a000-069e09887001', '技士', '技士', '', '013', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('f962b3a3-2e02-46bf-904b-b868a8ea4c84', 'b89cb83b-eea0-4aa2-9df6-4cd7ed1e0570', '跟进中', '跟进中', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('faaca9ad-4b26-45c0-9657-67fb3028a8f1', '80bf30d7-e9f0-4f9a-8cb3-255857d8e533', '本院医师', '本院医师', '', '001', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('fab6f79b-d424-45ea-b222-b03c33250080', '68fef6f4-b392-4f94-b655-a1bd7e83ccbd', 'M3', 'M3', NULL, '111', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('fb582d19-3821-4a08-8910-f07065d23cd3', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '保安族', '保安族', '', '047', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('fb5ad3d7-a7ec-4a88-aa50-60d6d55632b1', '0d90ee9b-a98c-4fa8-9fd9-944385c4fb34', '其它', '其它', '', '006', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('fbd24a66-7996-4754-b771-df688c7f4616', '0ff6715d-3db6-4569-a000-069e09887001', '技师', '技师', '', '014', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('fbdfc2b3-4b77-4bbe-82ea-d8d2ff0db1e7', 'ac2ea234-30be-4f8b-897f-db338a92de77', '忠诚度低', '忠诚度低', '', '003', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('fca8e0a6-ee98-487f-8904-21cdd320c55e', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '东乡族', '东乡族', '', '026', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('FCCC69D1-77A4-45D8-B0AF-764C78125A42', '194fb27f-7f59-4e98-9681-f9b51a40e757', '自定义处理8', '-8', NULL, '0108', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('FD060AD7-7D4C-47B0-BE75-C9CD0A736D24', '194fb27f-7f59-4e98-9681-f9b51a40e757', '自定义处理50', '-50', NULL, '0150', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('FD152B69-B48D-48EF-A0D4-6D002E8B0209', '194fb27f-7f59-4e98-9681-f9b51a40e757', '自定义处理39', '-39', NULL, '0139', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('fd244a86-8f81-4be4-b8dd-3fe4918bea03', '5bc898b7-aa45-4c3e-9136-ee4d2be71d61', '开发控件产品', '开发控件产品', '', '002', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('fd4d42ce-c409-4d55-8d08-817d7ce126b3', 'b604114a-d241-45ce-9710-e5cc97fea8d1', '属龙', '属龙', '', '005', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('fdbe9a30-f0d8-4ea2-b0c5-0e4542461206', '287f4727-1ec6-474f-9da9-c7b2a05bdd39', '大专', '大专', '', '005', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('ff395c99-cd1d-4e57-8002-7fa93ef452dd', '4a2edd43-290c-4f2a-85f2-988368b5c2bb', '傣族', '傣族', '', '018', '', NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('FF5647DA-7840-462A-BF16-CE6B5B14DFA7', '194fb27f-7f59-4e98-9681-f9b51a40e757', '自定义处理21', '-21', NULL, '0121', NULL, NULL);
INSERT INTO TB_DictData (ID, DictType_ID, Name, Value, Remark, Seq, Editor, LastUpdated) VALUES ('ff7103b2-8bca-412e-a910-a85dda8afad1', '0ff6715d-3db6-4569-a000-069e09887001', '副主任技师', '副主任技师', '', '015', '', NULL);

commit;


INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('02edce56-00ef-4cb4-9872-bd36e9664374', '轮转亚专业', '', '011', '', NULL, '8251d39c-b74f-4b4e-b295-4b6a0da61ae3');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('06a9dc90-1575-423b-96be-2aa94f91f76d', '客户行业', '', '004', '', NULL, 'e92f2d60-38b5-4aae-9f10-17fce7e3f001');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('095a28e1-335b-452f-bdf4-49c564cd1407', '市场分区', '', '011', '', NULL, 'e92f2d60-38b5-4aae-9f10-17fce7e3f001');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('0d90ee9b-a98c-4fa8-9fd9-944385c4fb34', '客户资料类别', '', '040', '', NULL, 'e92f2d60-38b5-4aae-9f10-17fce7e3f001');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('0e757254-32eb-41df-b11e-b10a35fff914', '增加流程环节', '系统流程模块', '002', '0', NULL, '36f902e3-ada0-4b80-8877-de3086935262');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('0ff6715d-3db6-4569-a000-069e09887001', '职称', '', '006', '', NULL, '8251d39c-b74f-4b4e-b295-4b6a0da61ae3');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('11442abb-14ee-48fc-867b-341b731070da', '学位', '', '005', '', NULL, '8251d39c-b74f-4b4e-b295-4b6a0da61ae3');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('123f080f-76da-4ee4-99d8-10b6dc143eee', '客户级别', '', '003', '', NULL, 'e92f2d60-38b5-4aae-9f10-17fce7e3f001');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('168f663f-ec21-4559-8964-4750fa492a21', '政治面貌', '', '001', '', NULL, '8251d39c-b74f-4b4e-b295-4b6a0da61ae3');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('17975510-5337-4c45-939c-5c92cb662466', '机会来源', '', '034', '', NULL, 'e92f2d60-38b5-4aae-9f10-17fce7e3f001');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('194fb27f-7f59-4e98-9681-f9b51a40e757', '处理类型', '', '006', '0', NULL, '36f902e3-ada0-4b80-8877-de3086935262');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('1d426d7f-2d93-4e3c-84e4-bcea0795382c', '报价单状态', '', '043', '', NULL, 'e92f2d60-38b5-4aae-9f10-17fce7e3f001');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('1d48a505-4c35-4d9a-a376-6751df02f5bb', '合同收支类型', '', '030', '', NULL, 'e92f2d60-38b5-4aae-9f10-17fce7e3f001');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('20189b21-7f37-49eb-b67d-5d0bc65b3b8d', '维护服务类型', '', '034', '', NULL, 'e92f2d60-38b5-4aae-9f10-17fce7e3f001');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('23f63b66-e28c-4e0f-9749-6344e647d1fd', '客户阶段', '', '006', '', NULL, 'e92f2d60-38b5-4aae-9f10-17fce7e3f001');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('285812c6-9be9-4771-b367-bda057574801', '合同执行状态', '', '030', '', NULL, 'e92f2d60-38b5-4aae-9f10-17fce7e3f001');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('287f4727-1ec6-474f-9da9-c7b2a05bdd39', '学历', '', '004', '', NULL, '8251d39c-b74f-4b4e-b295-4b6a0da61ae3');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('2a9fdfcf-4166-4151-9522-bf7312882167', '星座', '', '020', '', NULL, 'e92f2d60-38b5-4aae-9f10-17fce7e3f001');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('2d56e5d3-3b2a-4747-98ba-eed265fd0b2e', '销售支付方式', '', '041', '', NULL, 'e92f2d60-38b5-4aae-9f10-17fce7e3f001');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('3355862d-1978-4b9e-a177-56ecac86dfcd', '客户关心重点', '', '016', '', NULL, 'e92f2d60-38b5-4aae-9f10-17fce7e3f001');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('35aa8c07-216e-4306-9d21-ace3363d9655', '表单类型', '', '007', '', NULL, '36f902e3-ada0-4b80-8877-de3086935262');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('36f902e3-ada0-4b80-8877-de3086935262', '工作流字典管理', '', '030', '', NULL, '-1');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('36f902e3-ada0-4b80-8877-de3086935263', '论坛数据字典', '', '020', '', NULL, '-1');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('37496fab-d279-45f8-be17-3e6839d831d0', '选择处理人', '系统流程模块', '001', '0', NULL, '36f902e3-ada0-4b80-8877-de3086935262');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('3ab0d14c-f354-4615-b11a-c923d556a23d', '处理人信息', '', '004', '0', NULL, '36f902e3-ada0-4b80-8877-de3086935262');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('3db1549f-91f7-4972-a5ad-b120608cab66', '健康状况', '', '017', '', NULL, 'e92f2d60-38b5-4aae-9f10-17fce7e3f001');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('41770ea3-997f-4866-b0f4-15c953235fa2', '产品标准单位', '', '056', '', NULL, '56c6bc92-d70d-428e-a922-2aef0a12ea58');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('43b9b923-3a15-4e56-96b0-8ff70606b982', '紧急程度', '', '022', '', NULL, 'e92f2d60-38b5-4aae-9f10-17fce7e3f001');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('4a2edd43-290c-4f2a-85f2-988368b5c2bb', '民族', '', '002', '', NULL, '8251d39c-b74f-4b4e-b295-4b6a0da61ae3');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('4a382ca3-4e34-405a-8763-e23eaab5429f', '入住酒店', '', '007', '', NULL, '36f902e3-ada0-4b80-8877-de3086935263');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('4c9973ae-06c3-47f5-9001-c6008080d868', '负责需求', '', '015', '', NULL, 'e92f2d60-38b5-4aae-9f10-17fce7e3f001');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('5032cb80-bea6-4f5a-b3ce-3e336ee8a52f', '备件类别', '', '1', '0', NULL, '6754a66f-d131-4696-a72e-19123e2c7403');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('508811e9-c7cb-4daa-9bae-350966551283', '客户利益诉求', '', '015', '', NULL, 'e92f2d60-38b5-4aae-9f10-17fce7e3f001');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('5238c1ed-7a5e-4279-8c8e-804ebb366544', '科研情况分类', '', '007', '', NULL, '8251d39c-b74f-4b4e-b295-4b6a0da61ae3');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('5407140b-5234-430f-9099-9808225eb0a6', '客户活动类别', '', '032', '', NULL, 'e92f2d60-38b5-4aae-9f10-17fce7e3f001');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('56c6bc92-d70d-428e-a922-2aef0a12ea58', '产品及销售', '', '005', '', NULL, '-1');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('5a7eedc1-11e6-43a5-8bbd-12fe104c142a', '发票状态', '', '046', '', NULL, 'e92f2d60-38b5-4aae-9f10-17fce7e3f001');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('5bc898b7-aa45-4c3e-9136-ee4d2be71d61', '产品类型', '', '050', '', NULL, '56c6bc92-d70d-428e-a922-2aef0a12ea58');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('5d04e671-4c21-499f-95e0-779d5ce7b1b8', '产品颜色', '', '054', '', NULL, '56c6bc92-d70d-428e-a922-2aef0a12ea58');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('5e0f29da-c9f3-45f4-8555-5ab1baf884a6', '轮转科室', '', '010', '', NULL, '8251d39c-b74f-4b4e-b295-4b6a0da61ae3');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('65ea650f-974c-4b3f-911d-ccd437195218', '国别', '', '009', '', NULL, '8251d39c-b74f-4b4e-b295-4b6a0da61ae3');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('6754a66f-d131-4696-a72e-19123e2c7403', '仓库管理字典', '', '005', '', NULL, '-1');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('68d4c4df-921d-4e4c-aa67-ca8ef4c1a165', '销售订单状态', '', '042', '', NULL, 'e92f2d60-38b5-4aae-9f10-17fce7e3f001');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('68fef6f4-b392-4f94-b655-a1bd7e83ccbd', '单位', '', '6', '0', NULL, '6754a66f-d131-4696-a72e-19123e2c7403');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('6c82bee6-e2aa-4343-a74c-71a06755464c', '职称职别', '', '001', '0', NULL, '36f902e3-ada0-4b80-8877-de3086935263');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('6e8b7dbd-2506-47e2-9f2e-a8fa4fdadcc3', '使用位置', '', '7', '0', NULL, '6754a66f-d131-4696-a72e-19123e2c7403');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('72d6407e-5f0c-4e10-8bdb-af2929407b62', '供货商', '', '8', '0', NULL, '6754a66f-d131-4696-a72e-19123e2c7403');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('733b7578-94ab-4c76-aaf5-da18b4e431c4', '出差原因', '', '012', '', NULL, '8251d39c-b74f-4b4e-b295-4b6a0da61ae3');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('7598b134-03a7-4131-9cdb-1456bc3b7e40', '婚姻状况', '', '016', '', NULL, 'e92f2d60-38b5-4aae-9f10-17fce7e3f001');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('78e31276-8cc1-4be2-8437-c8f0a436e658', '投诉类别', '', '026', '', NULL, 'e92f2d60-38b5-4aae-9f10-17fce7e3f001');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('80bf30d7-e9f0-4f9a-8cb3-255857d8e533', '身份', '', '008', '', NULL, '8251d39c-b74f-4b4e-b295-4b6a0da61ae3');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('8251d39c-b74f-4b4e-b295-4b6a0da61ae3', '人员信息字典', '', '010', '', NULL, '-1');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('837e6b55-02e7-49b3-9b5d-6a16b0543f70', '表单状态', '系统流程模块', '003', '0', NULL, '36f902e3-ada0-4b80-8877-de3086935262');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('875ea4f2-2fc4-4d49-95dc-1b5ca4eb7669', '体型', '', '018', '', NULL, 'e92f2d60-38b5-4aae-9f10-17fce7e3f001');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('a2a5ac49-01ef-40c3-9758-07cba6610776', '职务', '', '003', '', NULL, '8251d39c-b74f-4b4e-b295-4b6a0da61ae3');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('a87531e2-bcc3-498c-bcf1-cd92e4057043', '来源', '', '4', '0', NULL, '6754a66f-d131-4696-a72e-19123e2c7403');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('ac2ea234-30be-4f8b-897f-db338a92de77', '对公司认可程度', '', '014', '', NULL, 'e92f2d60-38b5-4aae-9f10-17fce7e3f001');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('ad044d3f-8315-4e25-b2a6-fb504c680ccd', '职业类型', '', '020', '', NULL, 'e92f2d60-38b5-4aae-9f10-17fce7e3f001');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('ae01982a-5a52-4bc8-894d-4d81bb782557', '客户满意度', '', '027', '', NULL, 'e92f2d60-38b5-4aae-9f10-17fce7e3f001');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('b1cd8c2d-46c0-4cd0-8b2a-598ff33ec66c', '备件属类', '', '0', '0', NULL, '6754a66f-d131-4696-a72e-19123e2c7403');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('b270278a-6b9f-4c8e-80e8-4ce8dea6af97', '发票项目', '', '046', '', NULL, 'e92f2d60-38b5-4aae-9f10-17fce7e3f001');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('b3807598-19b7-494e-9372-45907132d048', '成本中心', '', '4', '0', NULL, '6754a66f-d131-4696-a72e-19123e2c7403');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('b604114a-d241-45ce-9710-e5cc97fea8d1', '属相', '', '019', '', NULL, 'e92f2d60-38b5-4aae-9f10-17fce7e3f001');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('b63e67ca-2206-4916-aa02-b522a2d9258d', '产品尺寸', '', '055', '', NULL, '56c6bc92-d70d-428e-a922-2aef0a12ea58');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('b89cb83b-eea0-4aa2-9df6-4cd7ed1e0570', '机会状态', '', '035', '', NULL, 'e92f2d60-38b5-4aae-9f10-17fce7e3f001');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('ba42a1c5-7bd3-4189-b4b4-9c1db4462cf1', '产品规格', '', '053', '', NULL, '56c6bc92-d70d-428e-a922-2aef0a12ea58');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('bfad0e7f-af4f-40d9-9680-acedf51adcbf', '客户来源', '', '005', '', NULL, 'e92f2d60-38b5-4aae-9f10-17fce7e3f001');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('c2700c07-1f08-4c58-b810-39356ef64096', '机会类别', '', '036', '', NULL, 'e92f2d60-38b5-4aae-9f10-17fce7e3f001');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('c49a42fd-3a9a-4a24-b7c4-9c8a053e94e3', '处理状态', '', '029', '', NULL, 'e92f2d60-38b5-4aae-9f10-17fce7e3f001');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('cc8b32e6-57e9-466a-b5dd-8df9c37f32d8', '客户状态', '', '001', '', NULL, 'e92f2d60-38b5-4aae-9f10-17fce7e3f001');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('cf51ef77-c235-4eee-9ce0-6b699ed9649b', '跟进类型', '', '031', '', NULL, 'e92f2d60-38b5-4aae-9f10-17fce7e3f001');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('d0da80d5-2b6d-462b-801d-ec5f110540e9', '投诉状态', '', '025', '', NULL, 'e92f2d60-38b5-4aae-9f10-17fce7e3f001');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('d2cd90f8-b7e9-4beb-85a0-72ffefd7cddf', '产品型号', '', '052', '', NULL, '56c6bc92-d70d-428e-a922-2aef0a12ea58');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('d7fb636d-919f-4ef1-8a95-8bc2b404f656', '信用等级', '', '007', '', NULL, 'e92f2d60-38b5-4aae-9f10-17fce7e3f001');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('d8a5bdd9-a1b9-450f-9885-0b3330536b93', '客户拜访类别', '', '045', '', NULL, 'e92f2d60-38b5-4aae-9f10-17fce7e3f001');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('dcae8f36-e5f0-44c1-b15e-fd5af9b0e578', '人员类型', '', '004', '0', NULL, '36f902e3-ada0-4b80-8877-de3086935263');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('e07c08f3-f614-4755-b233-7e3157fcdb7a', '售后服务类型', '', '033', '', NULL, 'e92f2d60-38b5-4aae-9f10-17fce7e3f001');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('e92f2d60-38b5-4aae-9f10-17fce7e3f001', '客户关系管理', '', '004', '', NULL, '-1');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('ea1545ad-b66a-46cd-9a68-09db44309ec7', '邮件分类', '', '050', '', NULL, 'e92f2d60-38b5-4aae-9f10-17fce7e3f001');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('ecdadf43-728d-48cc-aac7-b7e79f5b0037', '赞助商', '', '002', '', NULL, '36f902e3-ada0-4b80-8877-de3086935263');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('ee0818a8-dba5-49ae-b189-9e33492b3f02', '部门', '', '2', '0', NULL, '6754a66f-d131-4696-a72e-19123e2c7403');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('f0b69ae1-ee14-4029-a755-caae10daf351', '费用', '', '003', '', NULL, '36f902e3-ada0-4b80-8877-de3086935263');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('f1fd2d73-6207-42c2-82a1-4cd3094aad65', '与公司关系', '', '015', '', NULL, 'e92f2d60-38b5-4aae-9f10-17fce7e3f001');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('f3833cd2-d3e8-44b4-a44c-bb86ba121619', '客户类型', '', '002', '', NULL, 'e92f2d60-38b5-4aae-9f10-17fce7e3f001');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('f5b3aac2-3870-49b4-a1bb-373f6f100649', '投诉途径', '', '021', '', NULL, 'e92f2d60-38b5-4aae-9f10-17fce7e3f001');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('f8a1af13-d810-48f4-98b4-1cf2e0908665', '严重程度', '', '023', '', NULL, 'e92f2d60-38b5-4aae-9f10-17fce7e3f001');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('fafe19d9-42dd-4860-98c5-2d102a259082', '合同类型', '', '030', '', NULL, 'e92f2d60-38b5-4aae-9f10-17fce7e3f001');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('fb46eec1-2ae7-4206-9477-939fe29e0643', '重要级别', '', '009', '', NULL, 'e92f2d60-38b5-4aae-9f10-17fce7e3f001');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('fc0a3960-2cff-40d3-8cfe-89df26d25eda', '通知方式', '', '005', '0', NULL, '36f902e3-ada0-4b80-8877-de3086935262');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('fc618794-6c5b-473b-bcb4-aaa940da149a', '客户态度', '', '024', '', NULL, 'e92f2d60-38b5-4aae-9f10-17fce7e3f001');
INSERT INTO TB_DictType (ID, Name, Remark, Seq, Editor, LastUpdated, PID) VALUES ('fe544cd4-a649-42ca-af2f-6a36e42458c8', '合同结算情况', '', '030', '', NULL, 'e92f2d60-38b5-4aae-9f10-17fce7e3f001');


commit;

INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1, '东城区', 1);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2, '西城区', 1);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (5, '朝阳区', 1);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (6, '丰台区', 1);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (7, '石景山区', 1);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (8, '海淀区', 1);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (9, '门头沟区', 1);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (10, '房山区', 1);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (11, '通州区', 1);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (12, '顺义区', 1);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (13, '昌平区', 1);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (14, '大兴区', 1);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (15, '怀柔区', 1);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (16, '平谷区', 1);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (17, '密云县', 1);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (18, '延庆县', 1);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (19, '和平区', 2);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (20, '河东区', 2);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (21, '河西区', 2);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (22, '南开区', 2);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (23, '河北区', 2);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (24, '红桥区', 2);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (28, '东丽区', 2);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (29, '西青区', 2);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (30, '津南区', 2);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (31, '北辰区', 2);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (32, '武清区', 2);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (33, '宝坻区', 2);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (34, '宁河县', 2);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (35, '静海县', 2);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (36, '蓟县', 2);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (37, '长安区', 3);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (38, '桥东区', 3);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (39, '桥西区', 3);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (40, '新华区', 3);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (41, '井陉矿区', 3);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (42, '裕华区', 3);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (43, '井陉县', 3);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (44, '正定县', 3);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (45, '栾城县', 3);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (46, '行唐县', 3);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (47, '灵寿县', 3);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (48, '高邑县', 3);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (49, '深泽县', 3);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (50, '赞皇县', 3);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (51, '无极县', 3);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (52, '平山县', 3);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (53, '元氏县', 3);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (54, '赵县', 3);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (55, '辛集市', 3);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (56, '藁城市', 3);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (57, '晋州市', 3);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (58, '新乐市', 3);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (59, '鹿泉市', 3);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (60, '路南区', 4);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (61, '路北区', 4);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (62, '古冶区', 4);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (63, '开平区', 4);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (64, '丰南区', 4);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (65, '丰润区', 4);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (66, '滦县', 4);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (67, '滦南县', 4);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (68, '乐亭县', 4);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (69, '迁西县', 4);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (70, '玉田县', 4);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (72, '遵化市', 4);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (73, '迁安市', 4);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (74, '海港区', 5);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (75, '山海关区', 5);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (76, '北戴河区', 5);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (77, '青龙满族自治县', 5);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (78, '昌黎县', 5);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (79, '抚宁县', 5);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (80, '卢龙县', 5);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (81, '邯山区', 6);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (82, '丛台区', 6);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (83, '复兴区', 6);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (84, '峰峰矿区', 6);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (85, '邯郸县', 6);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (86, '临漳县', 6);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (87, '成安县', 6);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (88, '大名县', 6);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (89, '涉县', 6);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (90, '磁县', 6);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (91, '肥乡县', 6);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (92, '永年县', 6);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (93, '邱县', 6);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (94, '鸡泽县', 6);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (95, '广平县', 6);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (96, '馆陶县', 6);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (97, '魏县', 6);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (98, '曲周县', 6);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (99, '武安市', 6);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (100, '桥东区', 7);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (101, '桥西区', 7);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (102, '邢台县', 7);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (103, '临城县', 7);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (104, '内丘县', 7);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (105, '柏乡县', 7);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (106, '隆尧县', 7);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (107, '任县', 7);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (108, '南和县', 7);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (109, '宁晋县', 7);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (110, '巨鹿县', 7);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (111, '新河县', 7);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (112, '广宗县', 7);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (113, '平乡县', 7);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (114, '威县', 7);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (115, '清河县', 7);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (116, '临西县', 7);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (117, '南宫市', 7);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (118, '沙河市', 7);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (119, '新市区', 8);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (120, '北市区', 8);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (121, '南市区', 8);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (122, '满城县', 8);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (123, '清苑县', 8);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (124, '涞水县', 8);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (125, '阜平县', 8);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (126, '徐水县', 8);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (127, '定兴县', 8);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (128, '唐县', 8);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (129, '高阳县', 8);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (130, '容城县', 8);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (131, '涞源县', 8);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (132, '望都县', 8);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (133, '安新县', 8);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (134, '易县', 8);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (135, '曲阳县', 8);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (136, '蠡县', 8);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (137, '顺平县', 8);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (138, '博野县', 8);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (139, '雄县', 8);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (140, '涿州市', 8);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (141, '定州市', 8);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (142, '安国市', 8);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (143, '高碑店市', 8);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (144, '桥东区', 9);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (145, '桥西区', 9);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (146, '宣化区', 9);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (147, '下花园区', 9);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (148, '宣化县', 9);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (149, '张北县', 9);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (150, '康保县', 9);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (151, '沽源县', 9);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (152, '尚义县', 9);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (153, '蔚县', 9);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (154, '阳原县', 9);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (155, '怀安县', 9);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (156, '万全县', 9);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (157, '怀来县', 9);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (158, '涿鹿县', 9);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (159, '赤城县', 9);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (160, '崇礼县', 9);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (161, '双桥区', 10);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (162, '双滦区', 10);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (163, '鹰手营子矿区', 10);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (164, '承德县', 10);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (165, '兴隆县', 10);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (166, '平泉县', 10);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (167, '滦平县', 10);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (168, '隆化县', 10);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (169, '丰宁满族自治县', 10);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (170, '宽城满族自治县', 10);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (171, '围场满族蒙古族自治县', 10);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (172, '新华区', 11);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (173, '运河区', 11);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (174, '沧县', 11);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (175, '青县', 11);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (176, '东光县', 11);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (177, '海兴县', 11);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (178, '盐山县', 11);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (179, '肃宁县', 11);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (180, '南皮县', 11);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (181, '吴桥县', 11);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (182, '献县', 11);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (183, '孟村回族自治县', 11);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (184, '泊头市', 11);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (185, '任丘市', 11);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (186, '黄骅市', 11);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (187, '河间市', 11);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (188, '安次区', 12);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (189, '广阳区', 12);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (190, '固安县', 12);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (191, '永清县', 12);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (192, '香河县', 12);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (193, '大城县', 12);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (194, '文安县', 12);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (195, '大厂回族自治县', 12);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (196, '霸州市', 12);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (197, '三河市', 12);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (198, '桃城区', 13);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (199, '枣强县', 13);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (200, '武邑县', 13);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (201, '武强县', 13);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (202, '饶阳县', 13);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (203, '安平县', 13);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (204, '故城县', 13);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (205, '景县', 13);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (206, '阜城县', 13);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (207, '冀州市', 13);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (208, '深州市', 13);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (209, '小店区', 14);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (210, '迎泽区', 14);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (211, '杏花岭区', 14);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (212, '尖草坪区', 14);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (213, '万柏林区', 14);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (214, '晋源区', 14);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (215, '清徐县', 14);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (216, '阳曲县', 14);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (217, '娄烦县', 14);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (218, '古交市', 14);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (219, '城区', 15);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (220, '矿区', 15);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (221, '南郊区', 15);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (222, '新荣区', 15);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (223, '阳高县', 15);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (224, '天镇县', 15);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (225, '广灵县', 15);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (226, '灵丘县', 15);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (227, '浑源县', 15);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (228, '左云县', 15);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (229, '大同县', 15);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (230, '城区', 16);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (231, '矿区', 16);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (232, '郊区', 16);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (233, '平定县', 16);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (234, '盂县', 16);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (235, '城区', 17);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (236, '郊区', 17);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (237, '长治县', 17);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (238, '襄垣县', 17);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (239, '屯留县', 17);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (240, '平顺县', 17);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (241, '黎城县', 17);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (242, '壶关县', 17);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (243, '长子县', 17);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (244, '武乡县', 17);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (245, '沁县', 17);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (246, '沁源县', 17);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (247, '潞城市', 17);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (248, '城区', 18);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (249, '沁水县', 18);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (250, '阳城县', 18);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (251, '陵川县', 18);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (252, '泽州县', 18);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (253, '高平市', 18);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (254, '朔城区', 19);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (255, '平鲁区', 19);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (256, '山阴县', 19);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (257, '应县', 19);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (258, '右玉县', 19);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (259, '怀仁县', 19);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (260, '榆次区', 20);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (261, '榆社县', 20);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (262, '左权县', 20);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (263, '和顺县', 20);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (264, '昔阳县', 20);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (265, '寿阳县', 20);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (266, '太谷县', 20);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (267, '祁县', 20);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (268, '平遥县', 20);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (269, '灵石县', 20);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (270, '介休市', 20);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (271, '盐湖区', 21);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (272, '临猗县', 21);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (273, '万荣县', 21);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (274, '闻喜县', 21);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (275, '稷山县', 21);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (276, '新绛县', 21);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (277, '绛县', 21);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (278, '垣曲县', 21);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (279, '夏县', 21);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (280, '平陆县', 21);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (281, '芮城县', 21);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (282, '永济市', 21);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (283, '河津市', 21);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (284, '忻府区', 22);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (285, '定襄县', 22);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (286, '五台县', 22);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (287, '代县', 22);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (288, '繁峙县', 22);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (289, '宁武县', 22);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (290, '静乐县', 22);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (291, '神池县', 22);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (292, '五寨县', 22);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (293, '岢岚县', 22);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (294, '河曲县', 22);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (295, '保德县', 22);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (296, '偏关县', 22);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (297, '原平市', 22);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (298, '尧都区', 23);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (299, '曲沃县', 23);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (300, '翼城县', 23);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (301, '襄汾县', 23);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (302, '洪洞县', 23);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (303, '古县', 23);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (304, '安泽县', 23);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (305, '浮山县', 23);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (306, '吉县', 23);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (307, '乡宁县', 23);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (308, '大宁县', 23);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (309, '隰县', 23);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (310, '永和县', 23);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (311, '蒲县', 23);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (312, '汾西县', 23);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (313, '侯马市', 23);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (314, '霍州市', 23);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (315, '离石区', 24);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (316, '文水县', 24);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (317, '交城县', 24);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (318, '兴县', 24);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (319, '临县', 24);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (320, '柳林县', 24);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (321, '石楼县', 24);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (322, '岚县', 24);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (323, '方山县', 24);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (324, '中阳县', 24);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (325, '交口县', 24);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (326, '孝义市', 24);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (327, '汾阳市', 24);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (328, '新城区', 25);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (329, '回民区', 25);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (330, '玉泉区', 25);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (331, '赛罕区', 25);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (332, '土默特左旗', 25);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (333, '托克托县', 25);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (334, '和林格尔县', 25);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (335, '清水河县', 25);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (336, '武川县', 25);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (337, '东河区', 26);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (338, '昆都仑区', 26);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (339, '青山区', 26);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (340, '石拐区', 26);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (341, '白云鄂博矿区', 26);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (342, '九原区', 26);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (343, '土默特右旗', 26);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (344, '固阳县', 26);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (345, '达尔罕茂明安联合旗', 26);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (346, '海勃湾区', 27);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (347, '海南区', 27);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (348, '乌达区', 27);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (349, '红山区', 28);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (350, '元宝山区', 28);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (351, '松山区', 28);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (352, '阿鲁科尔沁旗', 28);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (353, '巴林左旗', 28);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (354, '巴林右旗', 28);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (355, '林西县', 28);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (356, '克什克腾旗', 28);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (357, '翁牛特旗', 28);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (358, '喀喇沁旗', 28);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (359, '宁城县', 28);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (360, '敖汉旗', 28);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (361, '科尔沁区', 29);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (362, '科尔沁左翼中旗', 29);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (363, '科尔沁左翼后旗', 29);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (364, '开鲁县', 29);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (365, '库伦旗', 29);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (366, '奈曼旗', 29);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (367, '扎鲁特旗', 29);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (368, '霍林郭勒市', 29);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (369, '东胜区', 30);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (370, '达拉特旗', 30);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (371, '准格尔旗', 30);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (372, '鄂托克前旗', 30);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (373, '鄂托克旗', 30);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (374, '杭锦旗', 30);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (375, '乌审旗', 30);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (376, '伊金霍洛旗', 30);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (377, '海拉尔区', 31);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (378, '阿荣旗', 31);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (379, '莫力达瓦达斡尔族自治旗', 31);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (380, '鄂伦春自治旗', 31);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (381, '鄂温克族自治旗', 31);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (382, '陈巴尔虎旗', 31);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (383, '新巴尔虎左旗', 31);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (384, '新巴尔虎右旗', 31);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (385, '满洲里市', 31);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (386, '牙克石市', 31);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (387, '扎兰屯市', 31);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (388, '额尔古纳市', 31);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (389, '根河市', 31);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (390, '临河区', 32);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (391, '五原县', 32);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (392, '磴口县', 32);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (393, '乌拉特前旗', 32);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (394, '乌拉特中旗', 32);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (395, '乌拉特后旗', 32);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (396, '杭锦后旗', 32);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (397, '集宁区', 33);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (398, '卓资县', 33);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (399, '化德县', 33);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (400, '商都县', 33);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (401, '兴和县', 33);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (402, '凉城县', 33);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (403, '察哈尔右翼前旗', 33);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (404, '察哈尔右翼中旗', 33);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (405, '察哈尔右翼后旗', 33);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (406, '四子王旗', 33);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (407, '丰镇市', 33);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (408, '乌兰浩特市', 34);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (409, '阿尔山市', 34);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (410, '科尔沁右翼前旗', 34);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (411, '科尔沁右翼中旗', 34);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (412, '扎赉特旗', 34);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (413, '突泉县', 34);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (414, '二连浩特市', 35);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (415, '锡林浩特市', 35);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (416, '阿巴嘎旗', 35);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (417, '苏尼特左旗', 35);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (418, '苏尼特右旗', 35);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (419, '东乌珠穆沁旗', 35);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (420, '西乌珠穆沁旗', 35);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (421, '太仆寺旗', 35);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (422, '镶黄旗', 35);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (423, '正镶白旗', 35);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (424, '正蓝旗', 35);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (425, '多伦县', 35);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (426, '阿拉善左旗', 36);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (427, '阿拉善右旗', 36);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (428, '额济纳旗', 36);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (429, '和平区', 37);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (430, '沈河区', 37);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (431, '大东区', 37);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (432, '皇姑区', 37);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (433, '铁西区', 37);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (434, '苏家屯区', 37);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (435, '东陵区', 37);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (436, '沈北新区', 37);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (437, '于洪区', 37);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (438, '辽中县', 37);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (439, '康平县', 37);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (440, '法库县', 37);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (441, '新民市', 37);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (442, '中山区', 38);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (443, '西岗区', 38);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (444, '沙河口区', 38);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (445, '甘井子区', 38);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (446, '旅顺口区', 38);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (447, '金州区', 38);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (448, '长海县', 38);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (449, '瓦房店市', 38);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (450, '普兰店市', 38);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (451, '庄河市', 38);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (452, '铁东区', 39);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (453, '铁西区', 39);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (454, '立山区', 39);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (455, '千山区', 39);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (456, '台安县', 39);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (457, '岫岩满族自治县', 39);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (458, '海城市', 39);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (459, '新抚区', 40);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (460, '东洲区', 40);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (461, '望花区', 40);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (462, '顺城区', 40);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (463, '抚顺县', 40);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (464, '新宾满族自治县', 40);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (465, '清原满族自治县', 40);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (466, '平山区', 41);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (467, '溪湖区', 41);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (468, '明山区', 41);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (469, '南芬区', 41);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (470, '本溪满族自治县', 41);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (471, '桓仁满族自治县', 41);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (472, '元宝区', 42);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (473, '振兴区', 42);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (474, '振安区', 42);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (475, '宽甸满族自治县', 42);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (476, '东港市', 42);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (477, '凤城市', 42);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (478, '古塔区', 43);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (479, '凌河区', 43);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (480, '太和区', 43);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (481, '黑山县', 43);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (482, '义县', 43);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (483, '凌海市', 43);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (484, '北镇市', 43);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (485, '站前区', 44);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (486, '西市区', 44);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (487, '鲅鱼圈区', 44);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (488, '老边区', 44);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (489, '盖州市', 44);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (490, '大石桥市', 44);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (491, '海州区', 45);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (492, '新邱区', 45);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (493, '太平区', 45);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (494, '清河门区', 45);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (495, '细河区', 45);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (496, '阜新蒙古族自治县', 45);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (497, '彰武县', 45);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (498, '白塔区', 46);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (499, '文圣区', 46);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (500, '宏伟区', 46);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (501, '弓长岭区', 46);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (502, '太子河区', 46);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (503, '辽阳县', 46);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (504, '灯塔市', 46);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (505, '双台子区', 47);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (506, '兴隆台区', 47);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (507, '大洼县', 47);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (508, '盘山县', 47);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (509, '银州区', 48);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (510, '清河区', 48);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (511, '铁岭县', 48);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (512, '西丰县', 48);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (513, '昌图县', 48);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (514, '调兵山市', 48);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (515, '开原市', 48);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (516, '双塔区', 49);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (517, '龙城区', 49);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (518, '朝阳县', 49);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (519, '建平县', 49);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (520, '喀喇沁左翼蒙古族自治县', 49);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (521, '北票市', 49);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (522, '凌源市', 49);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (523, '连山区', 50);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (524, '龙港区', 50);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (525, '南票区', 50);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (526, '绥中县', 50);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (527, '建昌县', 50);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (528, '兴城市', 50);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (529, '南关区', 51);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (530, '宽城区', 51);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (531, '朝阳区', 51);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (532, '二道区', 51);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (533, '绿园区', 51);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (534, '双阳区', 51);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (535, '农安县', 51);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (536, '九台市', 51);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (537, '榆树市', 51);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (538, '德惠市', 51);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (539, '昌邑区', 52);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (540, '龙潭区', 52);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (541, '船营区', 52);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (542, '丰满区', 52);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (543, '永吉县', 52);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (544, '蛟河市', 52);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (545, '桦甸市', 52);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (546, '舒兰市', 52);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (547, '磐石市', 52);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (548, '铁西区', 53);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (549, '铁东区', 53);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (550, '梨树县', 53);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (551, '伊通满族自治县', 53);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (552, '公主岭市', 53);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (553, '双辽市', 53);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (554, '龙山区', 54);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (555, '西安区', 54);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (556, '东丰县', 54);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (557, '东辽县', 54);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (558, '东昌区', 55);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (559, '二道江区', 55);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (560, '通化县', 55);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (561, '辉南县', 55);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (562, '柳河县', 55);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (563, '梅河口市', 55);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (564, '集安市', 55);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (565, '浑江区', 56);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (566, '江源区', 56);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (567, '抚松县', 56);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (568, '长白朝鲜族自治县', 56);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (569, '靖宇县', 56);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (570, '临江市', 56);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (571, '宁江区', 57);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (572, '前郭尔罗斯蒙古族自治县', 57);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (573, '长岭县', 57);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (574, '乾安县', 57);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (575, '扶余县', 57);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (576, '洮北区', 58);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (577, '镇赉县', 58);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (578, '通榆县', 58);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (579, '洮南市', 58);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (580, '大安市', 58);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (581, '延吉市', 59);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (582, '图们市', 59);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (583, '敦化市', 59);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (584, '珲春市', 59);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (585, '龙井市', 59);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (586, '和龙市', 59);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (587, '汪清县', 59);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (588, '安图县', 59);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (589, '道里区', 60);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (590, '南岗区', 60);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (591, '道外区', 60);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (592, '香坊区', 60);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (594, '平房区', 60);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (595, '松北区', 60);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (596, '呼兰区', 60);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (597, '依兰县', 60);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (598, '方正县', 60);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (599, '宾县', 60);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (600, '巴彦县', 60);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (601, '木兰县', 60);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (602, '通河县', 60);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (603, '延寿县', 60);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (604, '阿城区', 60);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (605, '双城市', 60);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (606, '尚志市', 60);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (607, '五常市', 60);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (608, '龙沙区', 61);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (609, '建华区', 61);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (610, '铁锋区', 61);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (611, '昂昂溪区', 61);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (612, '富拉尔基区', 61);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (613, '碾子山区', 61);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (614, '梅里斯达斡尔族区', 61);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (615, '龙江县', 61);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (616, '依安县', 61);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (617, '泰来县', 61);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (618, '甘南县', 61);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (619, '富裕县', 61);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (620, '克山县', 61);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (621, '克东县', 61);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (622, '拜泉县', 61);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (623, '讷河市', 61);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (624, '鸡冠区', 62);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (625, '恒山区', 62);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (626, '滴道区', 62);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (627, '梨树区', 62);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (628, '城子河区', 62);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (629, '麻山区', 62);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (630, '鸡东县', 62);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (631, '虎林市', 62);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (632, '密山市', 62);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (633, '向阳区', 63);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (634, '工农区', 63);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (635, '南山区', 63);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (636, '兴安区', 63);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (637, '东山区', 63);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (638, '兴山区', 63);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (639, '萝北县', 63);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (640, '绥滨县', 63);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (641, '尖山区', 64);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (642, '岭东区', 64);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (643, '四方台区', 64);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (644, '宝山区', 64);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (645, '集贤县', 64);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (646, '友谊县', 64);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (647, '宝清县', 64);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (648, '饶河县', 64);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (649, '萨尔图区', 65);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (650, '龙凤区', 65);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (651, '让胡路区', 65);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (652, '红岗区', 65);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (653, '大同区', 65);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (654, '肇州县', 65);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (655, '肇源县', 65);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (656, '林甸县', 65);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (657, '杜尔伯特蒙古族自治县', 65);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (658, '伊春区', 66);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (659, '南岔区', 66);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (660, '友好区', 66);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (661, '西林区', 66);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (662, '翠峦区', 66);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (663, '新青区', 66);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (664, '美溪区', 66);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (665, '金山屯区', 66);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (666, '五营区', 66);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (667, '乌马河区', 66);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (668, '汤旺河区', 66);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (669, '带岭区', 66);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (670, '乌伊岭区', 66);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (671, '红星区', 66);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (672, '上甘岭区', 66);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (673, '嘉荫县', 66);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (674, '铁力市', 66);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (676, '向阳区', 67);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (677, '前进区', 67);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (678, '东风区', 67);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (679, '郊区', 67);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (680, '桦南县', 67);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (681, '桦川县', 67);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (682, '汤原县', 67);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (683, '抚远县', 67);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (684, '同江市', 67);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (685, '富锦市', 67);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (686, '新兴区', 68);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (687, '桃山区', 68);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (688, '茄子河区', 68);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (689, '勃利县', 68);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (690, '东安区', 69);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (691, '阳明区', 69);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (692, '爱民区', 69);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (693, '西安区', 69);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (694, '东宁县', 69);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (695, '林口县', 69);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (696, '绥芬河市', 69);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (697, '海林市', 69);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (698, '宁安市', 69);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (699, '穆棱市', 69);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (700, '爱辉区', 70);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (701, '嫩江县', 70);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (702, '逊克县', 70);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (703, '孙吴县', 70);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (704, '北安市', 70);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (705, '五大连池市', 70);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (706, '北林区', 71);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (707, '望奎县', 71);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (708, '兰西县', 71);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (709, '青冈县', 71);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (710, '庆安县', 71);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (711, '明水县', 71);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (712, '绥棱县', 71);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (713, '安达市', 71);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (714, '肇东市', 71);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (715, '海伦市', 71);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (716, '呼玛县', 72);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (717, '塔河县', 72);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (718, '漠河县', 72);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (719, '黄浦区', 73);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (721, '徐汇区', 73);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (722, '长宁区', 73);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (723, '静安区', 73);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (724, '普陀区', 73);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (725, '闸北区', 73);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (726, '虹口区', 73);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (727, '杨浦区', 73);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (728, '闵行区', 73);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (729, '宝山区', 73);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (730, '嘉定区', 73);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (731, '浦东新区', 73);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (732, '金山区', 73);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (733, '松江区', 73);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (734, '青浦区', 73);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (736, '奉贤区', 73);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (737, '崇明县', 73);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (738, '玄武区', 74);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (739, '白下区', 74);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (740, '秦淮区', 74);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (741, '建邺区', 74);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (742, '鼓楼区', 74);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (743, '下关区', 74);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (744, '浦口区', 74);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (745, '栖霞区', 74);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (746, '雨花台区', 74);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (747, '江宁区', 74);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (748, '六合区', 74);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (749, '溧水县', 74);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (750, '高淳县', 74);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (751, '崇安区', 75);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (752, '南长区', 75);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (753, '北塘区', 75);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (754, '锡山区', 75);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (755, '惠山区', 75);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (756, '滨湖区', 75);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (757, '江阴市', 75);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (758, '宜兴市', 75);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (759, '鼓楼区', 76);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (760, '云龙区', 76);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (762, '贾汪区', 76);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (763, '泉山区', 76);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (764, '丰县', 76);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (765, '沛县', 76);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (766, '铜山区', 76);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (767, '睢宁县', 76);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (768, '新沂市', 76);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (769, '邳州市', 76);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (770, '天宁区', 77);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (771, '钟楼区', 77);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (772, '戚墅堰区', 77);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (773, '新北区', 77);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (774, '武进区', 77);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (775, '溧阳市', 77);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (776, '金坛市', 77);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (779, '姑苏区', 78);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (780, '虎丘区', 78);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (781, '吴中区', 78);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (782, '相城区', 78);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (783, '常熟市', 78);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (784, '张家港市', 78);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (785, '昆山市', 78);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (786, '吴江区', 78);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (787, '太仓市', 78);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (788, '崇川区', 79);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (789, '港闸区', 79);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (790, '海安县', 79);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (791, '如东县', 79);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (792, '启东市', 79);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (793, '如皋市', 79);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (794, '通州区', 79);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (795, '海门市', 79);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (796, '连云区', 80);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (797, '新浦区', 80);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (798, '海州区', 80);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (799, '赣榆县', 80);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (800, '东海县', 80);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (801, '灌云县', 80);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (802, '灌南县', 80);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (803, '清河区', 81);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (804, '楚州区', 81);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (805, '淮阴区', 81);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (806, '清浦区', 81);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (807, '涟水县', 81);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (808, '洪泽县', 81);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (809, '盱眙县', 81);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (810, '金湖县', 81);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (811, '亭湖区', 82);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (812, '盐都区', 82);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (813, '响水县', 82);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (814, '滨海县', 82);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (815, '阜宁县', 82);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (816, '射阳县', 82);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (817, '建湖县', 82);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (818, '东台市', 82);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (819, '大丰市', 82);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (820, '广陵区', 83);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (821, '邗江区', 83);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (822, '江都区', 83);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (823, '宝应县', 83);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (824, '仪征市', 83);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (825, '高邮市', 83);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (826, '江都市', 83);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (827, '京口区', 84);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (828, '润州区', 84);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (829, '丹徒区', 84);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (830, '丹阳市', 84);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (831, '扬中市', 84);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (832, '句容市', 84);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (833, '海陵区', 85);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (834, '高港区', 85);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (835, '兴化市', 85);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (836, '靖江市', 85);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (837, '泰兴市', 85);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (838, '姜堰市', 85);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (839, '宿城区', 86);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (840, '宿豫区', 86);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (841, '沭阳县', 86);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (842, '泗阳县', 86);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (843, '泗洪县', 86);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (844, '上城区', 87);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (845, '下城区', 87);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (846, '江干区', 87);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (847, '拱墅区', 87);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (848, '西湖区', 87);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (849, '滨江区', 87);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (850, '萧山区', 87);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (851, '余杭区', 87);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (852, '桐庐县', 87);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (853, '淳安县', 87);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (854, '建德市', 87);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (855, '富阳市', 87);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (856, '临安市', 87);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (857, '海曙区', 88);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (858, '江东区', 88);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (859, '江北区', 88);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (860, '北仑区', 88);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (861, '镇海区', 88);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (862, '鄞州区', 88);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (863, '象山县', 88);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (864, '宁海县', 88);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (865, '余姚市', 88);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (866, '慈溪市', 88);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (867, '奉化市', 88);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (868, '鹿城区', 89);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (869, '龙湾区', 89);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (870, '瓯海区', 89);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (871, '洞头县', 89);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (872, '永嘉县', 89);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (873, '平阳县', 89);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (874, '苍南县', 89);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (875, '文成县', 89);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (876, '泰顺县', 89);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (877, '瑞安市', 89);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (878, '乐清市', 89);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (879, '南湖区', 90);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (880, '秀洲区', 90);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (881, '嘉善县', 90);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (882, '海盐县', 90);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (883, '海宁市', 90);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (884, '平湖市', 90);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (885, '桐乡市', 90);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (886, '吴兴区', 91);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (887, '南浔区', 91);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (888, '德清县', 91);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (889, '长兴县', 91);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (890, '安吉县', 91);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (891, '越城区', 92);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (892, '绍兴县', 92);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (893, '新昌县', 92);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (894, '诸暨市', 92);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (895, '上虞市', 92);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (896, '嵊州市', 92);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (897, '婺城区', 93);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (898, '金东区', 93);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (899, '武义县', 93);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (900, '浦江县', 93);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (901, '磐安县', 93);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (902, '兰溪市', 93);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (903, '义乌市', 93);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (904, '东阳市', 93);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (905, '永康市', 93);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (906, '柯城区', 94);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (907, '衢江区', 94);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (908, '常山县', 94);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (909, '开化县', 94);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (910, '龙游县', 94);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (911, '江山市', 94);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (912, '定海区', 95);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (913, '普陀区', 95);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (914, '岱山县', 95);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (915, '嵊泗县', 95);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (916, '椒江区', 96);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (917, '黄岩区', 96);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (918, '路桥区', 96);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (919, '玉环县', 96);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (920, '三门县', 96);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (921, '天台县', 96);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (922, '仙居县', 96);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (923, '温岭市', 96);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (924, '临海市', 96);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (925, '莲都区', 97);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (926, '青田县', 97);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (927, '缙云县', 97);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (928, '遂昌县', 97);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (929, '松阳县', 97);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (930, '云和县', 97);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (931, '庆元县', 97);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (932, '景宁畲族自治县', 97);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (933, '龙泉市', 97);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (934, '瑶海区', 98);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (935, '庐阳区', 98);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (936, '蜀山区', 98);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (937, '包河区', 98);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (938, '长丰县', 98);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (939, '肥东县', 98);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (940, '肥西县', 98);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (941, '镜湖区', 99);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (942, '弋江区', 99);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (943, '鸠江区', 99);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (944, '三山区', 99);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (945, '芜湖县', 99);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (946, '繁昌县', 99);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (947, '南陵县', 99);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (948, '龙子湖区', 100);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (949, '蚌山区', 100);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (950, '禹会区', 100);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (951, '淮上区', 100);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (952, '怀远县', 100);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (953, '五河县', 100);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (954, '固镇县', 100);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (955, '大通区', 101);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (956, '田家庵区', 101);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (957, '谢家集区', 101);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (958, '八公山区', 101);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (959, '潘集区', 101);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (960, '凤台县', 101);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (962, '花山区', 102);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (963, '雨山区', 102);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (964, '博望区', 102);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (965, '杜集区', 103);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (966, '相山区', 103);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (967, '烈山区', 103);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (968, '濉溪县', 103);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (969, '铜官山区', 104);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (970, '狮子山区', 104);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (971, '郊区', 104);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (972, '铜陵县', 104);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (973, '迎江区', 105);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (974, '大观区', 105);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (975, '宜秀区', 105);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (976, '怀宁县', 105);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (977, '枞阳县', 105);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (978, '潜山县', 105);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (979, '太湖县', 105);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (980, '宿松县', 105);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (981, '望江县', 105);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (982, '岳西县', 105);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (983, '桐城市', 105);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (984, '屯溪区', 106);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (985, '黄山区', 106);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (986, '徽州区', 106);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (987, '歙县', 106);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (988, '休宁县', 106);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (989, '黟县', 106);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (990, '祁门县', 106);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (991, '琅琊区', 107);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (992, '南谯区', 107);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (993, '来安县', 107);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (994, '全椒县', 107);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (995, '定远县', 107);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (996, '凤阳县', 107);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (997, '天长市', 107);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (998, '明光市', 107);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (999, '颍州区', 108);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1000, '颍东区', 108);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1001, '颍泉区', 108);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1002, '临泉县', 108);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1003, '太和县', 108);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1004, '阜南县', 108);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1005, '颍上县', 108);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1006, '界首市', 108);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1007, '埇桥区', 109);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1008, '砀山县', 109);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1009, '萧县', 109);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1010, '灵璧县', 109);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1011, '泗县', 109);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1017, '金安区', 111);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1018, '裕安区', 111);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1019, '寿县', 111);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1020, '霍邱县', 111);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1021, '舒城县', 111);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1022, '金寨县', 111);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1023, '霍山县', 111);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1024, '谯城区', 112);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1025, '涡阳县', 112);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1026, '蒙城县', 112);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1027, '利辛县', 112);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1028, '贵池区', 113);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1029, '东至县', 113);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1030, '石台县', 113);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1031, '青阳县', 113);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1032, '宣州区', 114);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1033, '郎溪县', 114);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1034, '广德县', 114);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1035, '泾县', 114);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1036, '绩溪县', 114);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1037, '旌德县', 114);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1038, '宁国市', 114);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1039, '鼓楼区', 115);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1040, '台江区', 115);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1041, '仓山区', 115);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1042, '马尾区', 115);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1043, '晋安区', 115);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1044, '闽侯县', 115);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1045, '连江县', 115);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1046, '罗源县', 115);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1047, '闽清县', 115);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1048, '永泰县', 115);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1049, '平潭县', 115);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1050, '福清市', 115);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1051, '长乐市', 115);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1052, '思明区', 116);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1053, '海沧区', 116);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1054, '湖里区', 116);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1055, '集美区', 116);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1056, '同安区', 116);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1057, '翔安区', 116);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1058, '城厢区', 117);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1059, '涵江区', 117);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1060, '荔城区', 117);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1061, '秀屿区', 117);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1062, '仙游县', 117);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1063, '梅列区', 118);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1064, '三元区', 118);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1065, '明溪县', 118);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1066, '清流县', 118);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1067, '宁化县', 118);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1068, '大田县', 118);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1069, '尤溪县', 118);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1070, '沙县', 118);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1071, '将乐县', 118);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1072, '泰宁县', 118);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1073, '建宁县', 118);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1074, '永安市', 118);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1075, '鲤城区', 119);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1076, '丰泽区', 119);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1077, '洛江区', 119);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1078, '泉港区', 119);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1079, '惠安县', 119);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1080, '安溪县', 119);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1081, '永春县', 119);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1082, '德化县', 119);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1083, '金门县', 119);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1084, '石狮市', 119);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1085, '晋江市', 119);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1086, '南安市', 119);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1087, '芗城区', 120);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1088, '龙文区', 120);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1089, '云霄县', 120);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1090, '漳浦县', 120);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1091, '诏安县', 120);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1092, '长泰县', 120);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1093, '东山县', 120);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1094, '南靖县', 120);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1095, '平和县', 120);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1096, '华安县', 120);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1097, '龙海市', 120);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1098, '延平区', 121);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1099, '顺昌县', 121);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1100, '浦城县', 121);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1101, '光泽县', 121);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1102, '松溪县', 121);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1103, '政和县', 121);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1104, '邵武市', 121);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1105, '武夷山市', 121);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1106, '建瓯市', 121);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1107, '建阳市', 121);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1108, '新罗区', 122);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1109, '长汀县', 122);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1110, '永定县', 122);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1111, '上杭县', 122);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1112, '武平县', 122);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1113, '连城县', 122);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1114, '漳平市', 122);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1115, '蕉城区', 123);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1116, '霞浦县', 123);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1117, '古田县', 123);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1118, '屏南县', 123);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1119, '寿宁县', 123);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1120, '周宁县', 123);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1121, '柘荣县', 123);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1122, '福安市', 123);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1123, '福鼎市', 123);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1124, '东湖区', 124);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1125, '西湖区', 124);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1126, '青云谱区', 124);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1127, '湾里区', 124);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1128, '青山湖区', 124);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1129, '南昌县', 124);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1130, '新建县', 124);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1131, '安义县', 124);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1132, '进贤县', 124);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1133, '昌江区', 125);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1134, '珠山区', 125);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1135, '浮梁县', 125);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1136, '乐平市', 125);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1137, '安源区', 126);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1138, '湘东区', 126);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1139, '莲花县', 126);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1140, '上栗县', 126);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1141, '芦溪县', 126);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1142, '庐山区', 127);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1143, '浔阳区', 127);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1144, '九江县', 127);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1145, '武宁县', 127);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1146, '修水县', 127);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1147, '永修县', 127);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1148, '德安县', 127);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1149, '星子县', 127);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1150, '都昌县', 127);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1151, '湖口县', 127);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1152, '彭泽县', 127);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1153, '瑞昌市', 127);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1154, '渝水区', 128);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1155, '分宜县', 128);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1156, '月湖区', 129);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1157, '余江县', 129);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1158, '贵溪市', 129);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1159, '章贡区', 130);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1160, '赣县', 130);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1161, '信丰县', 130);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1162, '大余县', 130);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1163, '上犹县', 130);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1164, '崇义县', 130);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1165, '安远县', 130);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1166, '龙南县', 130);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1167, '定南县', 130);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1168, '全南县', 130);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1169, '宁都县', 130);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1170, '于都县', 130);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1171, '兴国县', 130);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1172, '会昌县', 130);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1173, '寻乌县', 130);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1174, '石城县', 130);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1175, '瑞金市', 130);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1176, '南康市', 130);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1177, '吉州区', 131);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1178, '青原区', 131);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1179, '吉安县', 131);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1180, '吉水县', 131);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1181, '峡江县', 131);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1182, '新干县', 131);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1183, '永丰县', 131);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1184, '泰和县', 131);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1185, '遂川县', 131);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1186, '万安县', 131);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1187, '安福县', 131);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1188, '永新县', 131);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1189, '井冈山市', 131);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1190, '袁州区', 132);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1191, '奉新县', 132);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1192, '万载县', 132);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1193, '上高县', 132);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1194, '宜丰县', 132);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1195, '靖安县', 132);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1196, '铜鼓县', 132);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1197, '丰城市', 132);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1198, '樟树市', 132);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1199, '高安市', 132);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1200, '临川区', 133);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1201, '南城县', 133);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1202, '黎川县', 133);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1203, '南丰县', 133);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1204, '崇仁县', 133);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1205, '乐安县', 133);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1206, '宜黄县', 133);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1207, '金溪县', 133);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1208, '资溪县', 133);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1209, '东乡县', 133);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1210, '广昌县', 133);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1211, '信州区', 134);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1212, '上饶县', 134);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1213, '广丰县', 134);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1214, '玉山县', 134);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1215, '铅山县', 134);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1216, '横峰县', 134);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1217, '弋阳县', 134);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1218, '余干县', 134);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1219, '鄱阳县', 134);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1220, '万年县', 134);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1221, '婺源县', 134);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1222, '德兴市', 134);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1223, '历下区', 135);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1224, '市中区', 135);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1225, '槐荫区', 135);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1226, '天桥区', 135);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1227, '历城区', 135);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1228, '长清区', 135);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1229, '平阴县', 135);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1230, '济阳县', 135);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1231, '商河县', 135);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1232, '章丘市', 135);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1233, '市南区', 136);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1234, '市北区', 136);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1235, '四方区', 136);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1236, '黄岛区', 136);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1237, '崂山区', 136);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1238, '李沧区', 136);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1239, '城阳区', 136);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1240, '胶州市', 136);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1241, '即墨市', 136);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1242, '平度市', 136);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1243, '胶南市', 136);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1244, '莱西市', 136);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1245, '淄川区', 137);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1246, '张店区', 137);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1247, '博山区', 137);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1248, '临淄区', 137);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1249, '周村区', 137);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1250, '桓台县', 137);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1251, '高青县', 137);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1252, '沂源县', 137);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1253, '市中区', 138);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1254, '薛城区', 138);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1255, '峄城区', 138);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1256, '台儿庄区', 138);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1257, '山亭区', 138);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1258, '滕州市', 138);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1259, '东营区', 139);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1260, '河口区', 139);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1261, '垦利县', 139);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1262, '利津县', 139);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1263, '广饶县', 139);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1264, '芝罘区', 140);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1265, '福山区', 140);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1266, '牟平区', 140);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1267, '莱山区', 140);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1268, '长岛县', 140);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1269, '龙口市', 140);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1270, '莱阳市', 140);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1271, '莱州市', 140);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1272, '蓬莱市', 140);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1273, '招远市', 140);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1274, '栖霞市', 140);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1275, '海阳市', 140);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1276, '潍城区', 141);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1277, '寒亭区', 141);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1278, '坊子区', 141);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1279, '奎文区', 141);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1280, '临朐县', 141);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1281, '昌乐县', 141);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1282, '青州市', 141);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1283, '诸城市', 141);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1284, '寿光市', 141);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1285, '安丘市', 141);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1286, '高密市', 141);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1287, '昌邑市', 141);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1288, '市中区', 142);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1289, '任城区', 142);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1290, '微山县', 142);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1291, '鱼台县', 142);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1292, '金乡县', 142);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1293, '嘉祥县', 142);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1294, '汶上县', 142);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1295, '泗水县', 142);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1296, '梁山县', 142);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1297, '曲阜市', 142);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1298, '兖州区', 142);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1299, '邹城市', 142);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1300, '泰山区', 143);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1301, '岱岳区', 143);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1302, '宁阳县', 143);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1303, '东平县', 143);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1304, '新泰市', 143);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1305, '肥城市', 143);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1306, '环翠区', 144);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1307, '文登市', 144);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1308, '荣成市', 144);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1309, '乳山市', 144);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1310, '东港区', 145);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1311, '岚山区', 145);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1312, '五莲县', 145);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1313, '莒县', 145);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1314, '莱城区', 146);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1315, '钢城区', 146);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1316, '兰山区', 147);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1317, '罗庄区', 147);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1318, '河东区', 147);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1319, '沂南县', 147);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1320, '郯城县', 147);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1321, '沂水县', 147);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1322, '苍山县', 147);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1323, '费县', 147);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1324, '平邑县', 147);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1325, '莒南县', 147);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1326, '蒙阴县', 147);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1327, '临沭县', 147);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1328, '德城区', 148);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1329, '陵县', 148);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1330, '宁津县', 148);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1331, '庆云县', 148);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1332, '临邑县', 148);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1333, '齐河县', 148);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1334, '平原县', 148);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1335, '夏津县', 148);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1336, '武城县', 148);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1337, '乐陵市', 148);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1338, '禹城市', 148);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1339, '东昌府区', 149);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1340, '阳谷县', 149);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1341, '莘县', 149);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1342, '茌平县', 149);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1343, '东阿县', 149);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1344, '冠县', 149);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1345, '高唐县', 149);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1346, '临清市', 149);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1347, '滨城区', 150);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1348, '惠民县', 150);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1349, '阳信县', 150);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1350, '无棣县', 150);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1351, '沾化县', 150);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1352, '博兴县', 150);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1353, '邹平县', 150);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1354, '牡丹区', 151);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1355, '曹县', 151);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1356, '单县', 151);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1357, '成武县', 151);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1358, '巨野县', 151);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1359, '郓城县', 151);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1360, '鄄城县', 151);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1361, '定陶县', 151);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1362, '东明县', 151);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1363, '中原区', 152);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1364, '二七区', 152);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1365, '管城回族区', 152);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1366, '金水区', 152);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1367, '上街区', 152);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1368, '惠济区', 152);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1369, '中牟县', 152);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1370, '巩义市', 152);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1371, '荥阳市', 152);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1372, '新密市', 152);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1373, '新郑市', 152);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1374, '登封市', 152);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1375, '龙亭区', 153);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1376, '顺河回族区', 153);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1377, '鼓楼区', 153);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1378, '禹王台区', 153);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1379, '金明区', 153);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1380, '杞县', 153);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1381, '通许县', 153);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1382, '尉氏县', 153);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1383, '开封县', 153);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1384, '兰考县', 153);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1385, '老城区', 154);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1386, '西工区', 154);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1387, '廛河回族区', 154);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1388, '涧西区', 154);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1389, '吉利区', 154);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1390, '洛龙区', 154);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1391, '孟津县', 154);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1392, '新安县', 154);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1393, '栾川县', 154);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1394, '嵩县', 154);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1395, '汝阳县', 154);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1396, '宜阳县', 154);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1397, '洛宁县', 154);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1398, '伊川县', 154);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1399, '偃师市', 154);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1400, '新华区', 155);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1401, '卫东区', 155);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1402, '石龙区', 155);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1403, '湛河区', 155);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1404, '宝丰县', 155);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1405, '叶县', 155);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1406, '鲁山县', 155);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1407, '郏县', 155);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1408, '舞钢市', 155);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1409, '汝州市', 155);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1410, '文峰区', 156);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1411, '北关区', 156);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1412, '殷都区', 156);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1413, '龙安区', 156);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1414, '安阳县', 156);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1415, '汤阴县', 156);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1416, '滑县', 156);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1417, '内黄县', 156);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1418, '林州市', 156);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1419, '鹤山区', 157);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1420, '山城区', 157);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1421, '淇滨区', 157);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1422, '浚县', 157);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1423, '淇县', 157);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1424, '红旗区', 158);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1425, '卫滨区', 158);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1426, '凤泉区', 158);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1427, '牧野区', 158);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1428, '新乡县', 158);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1429, '获嘉县', 158);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1430, '原阳县', 158);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1431, '延津县', 158);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1432, '封丘县', 158);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1433, '长垣县', 158);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1434, '卫辉市', 158);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1435, '辉县市', 158);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1436, '解放区', 159);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1437, '中站区', 159);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1438, '马村区', 159);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1439, '山阳区', 159);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1440, '修武县', 159);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1441, '博爱县', 159);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1442, '武陟县', 159);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1443, '温县', 159);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1445, '沁阳市', 159);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1446, '孟州市', 159);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1447, '华龙区', 160);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1448, '清丰县', 160);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1449, '南乐县', 160);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1450, '范县', 160);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1451, '台前县', 160);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1452, '濮阳县', 160);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1453, '魏都区', 161);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1454, '许昌县', 161);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1455, '鄢陵县', 161);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1456, '襄城县', 161);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1457, '禹州市', 161);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1458, '长葛市', 161);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1459, '源汇区', 162);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1460, '郾城区', 162);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1461, '召陵区', 162);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1462, '舞阳县', 162);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1463, '临颍县', 162);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1464, '市辖区', 163);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1465, '湖滨区', 163);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1466, '渑池县', 163);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1467, '陕县', 163);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1468, '卢氏县', 163);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1469, '义马市', 163);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1470, '灵宝市', 163);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1471, '宛城区', 164);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1472, '卧龙区', 164);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1473, '南召县', 164);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1474, '方城县', 164);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1475, '西峡县', 164);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1476, '镇平县', 164);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1477, '内乡县', 164);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1478, '淅川县', 164);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1479, '社旗县', 164);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1480, '唐河县', 164);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1481, '新野县', 164);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1482, '桐柏县', 164);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1483, '邓州市', 164);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1484, '梁园区', 165);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1485, '睢阳区', 165);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1486, '民权县', 165);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1487, '睢县', 165);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1488, '宁陵县', 165);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1489, '柘城县', 165);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1490, '虞城县', 165);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1491, '夏邑县', 165);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1492, '永城市', 165);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1493, '浉河区', 166);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1494, '平桥区', 166);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1495, '罗山县', 166);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1496, '光山县', 166);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1497, '新县', 166);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1498, '商城县', 166);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1499, '固始县', 166);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1500, '潢川县', 166);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1501, '淮滨县', 166);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1502, '息县', 166);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1503, '川汇区', 167);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1504, '扶沟县', 167);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1505, '西华县', 167);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1506, '商水县', 167);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1507, '沈丘县', 167);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1508, '郸城县', 167);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1509, '淮阳县', 167);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1510, '太康县', 167);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1511, '鹿邑县', 167);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1512, '项城市', 167);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1513, '驿城区', 168);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1514, '西平县', 168);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1515, '上蔡县', 168);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1516, '平舆县', 168);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1517, '正阳县', 168);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1518, '确山县', 168);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1519, '泌阳县', 168);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1520, '汝南县', 168);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1521, '遂平县', 168);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1522, '新蔡县', 168);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1523, '江岸区', 169);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1524, '江汉区', 169);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1525, '硚口区', 169);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1526, '汉阳区', 169);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1527, '武昌区', 169);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1528, '青山区', 169);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1529, '洪山区', 169);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1530, '东西湖区', 169);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1531, '汉南区', 169);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1532, '蔡甸区', 169);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1533, '江夏区', 169);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1534, '黄陂区', 169);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1535, '新洲区', 169);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1536, '黄石港区', 170);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1537, '西塞山区', 170);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1538, '下陆区', 170);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1539, '铁山区', 170);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1540, '阳新县', 170);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1541, '大冶市', 170);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1542, '茅箭区', 171);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1543, '张湾区', 171);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1544, '郧县', 171);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1545, '郧西县', 171);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1546, '竹山县', 171);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1547, '竹溪县', 171);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1548, '房县', 171);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1549, '丹江口市', 171);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1550, '西陵区', 172);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1551, '伍家岗区', 172);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1552, '点军区', 172);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1553, '猇亭区', 172);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1554, '夷陵区', 172);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1555, '远安县', 172);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1556, '兴山县', 172);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1557, '秭归县', 172);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1558, '长阳土家族自治县', 172);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1559, '五峰土家族自治县', 172);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1560, '宜都市', 172);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1561, '当阳市', 172);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1562, '枝江市', 172);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1563, '襄城区', 173);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1564, '樊城区', 173);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1565, '襄州区', 173);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1566, '南漳县', 173);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1567, '谷城县', 173);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1568, '保康县', 173);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1569, '老河口市', 173);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1570, '枣阳市', 173);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1571, '宜城市', 173);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1572, '梁子湖区', 174);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1573, '华容区', 174);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1574, '鄂城区', 174);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1575, '东宝区', 175);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1576, '掇刀区', 175);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1577, '京山县', 175);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1578, '沙洋县', 175);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1579, '钟祥市', 175);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1580, '孝南区', 176);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1581, '孝昌县', 176);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1582, '大悟县', 176);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1583, '云梦县', 176);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1584, '应城市', 176);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1585, '安陆市', 176);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1586, '汉川市', 176);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1587, '沙市区', 177);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1588, '荆州区', 177);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1589, '公安县', 177);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1590, '监利县', 177);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1591, '江陵县', 177);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1592, '石首市', 177);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1593, '洪湖市', 177);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1594, '松滋市', 177);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1595, '黄州区', 178);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1596, '团风县', 178);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1597, '红安县', 178);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1598, '罗田县', 178);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1599, '英山县', 178);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1600, '浠水县', 178);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1601, '蕲春县', 178);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1602, '黄梅县', 178);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1603, '麻城市', 178);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1604, '武穴市', 178);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1605, '咸安区', 179);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1606, '嘉鱼县', 179);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1607, '通城县', 179);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1608, '崇阳县', 179);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1609, '通山县', 179);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1610, '赤壁市', 179);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1611, '曾都区', 180);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1612, '广水市', 180);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1613, '恩施市', 181);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1614, '利川市', 181);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1615, '建始县', 181);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1616, '巴东县', 181);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1617, '宣恩县', 181);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1618, '咸丰县', 181);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1619, '来凤县', 181);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1620, '鹤峰县', 181);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1621, '仙桃市', 182);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1622, '潜江市', 182);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1623, '天门市', 182);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1624, '神农架林区', 182);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1625, '芙蓉区', 183);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1626, '天心区', 183);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1627, '岳麓区', 183);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1628, '开福区', 183);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1629, '雨花区', 183);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1630, '长沙县', 183);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1631, '望城区', 183);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1632, '宁乡县', 183);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1633, '浏阳市', 183);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1634, '荷塘区', 184);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1635, '芦淞区', 184);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1636, '石峰区', 184);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1637, '天元区', 184);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1638, '株洲县', 184);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1639, '攸县', 184);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1640, '茶陵县', 184);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1641, '炎陵县', 184);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1642, '醴陵市', 184);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1643, '雨湖区', 185);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1644, '岳塘区', 185);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1645, '湘潭县', 185);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1646, '湘乡市', 185);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1647, '韶山市', 185);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1648, '珠晖区', 186);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1649, '雁峰区', 186);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1650, '石鼓区', 186);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1651, '蒸湘区', 186);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1652, '南岳区', 186);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1653, '衡阳县', 186);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1654, '衡南县', 186);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1655, '衡山县', 186);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1656, '衡东县', 186);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1657, '祁东县', 186);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1658, '耒阳市', 186);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1659, '常宁市', 186);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1660, '双清区', 187);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1661, '大祥区', 187);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1662, '北塔区', 187);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1663, '邵东县', 187);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1664, '新邵县', 187);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1665, '邵阳县', 187);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1666, '隆回县', 187);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1667, '洞口县', 187);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1668, '绥宁县', 187);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1669, '新宁县', 187);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1670, '城步苗族自治县', 187);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1671, '武冈市', 187);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1672, '岳阳楼区', 188);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1673, '云溪区', 188);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1674, '君山区', 188);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1675, '岳阳县', 188);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1676, '华容县', 188);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1677, '湘阴县', 188);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1678, '平江县', 188);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1679, '汨罗市', 188);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1680, '临湘市', 188);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1681, '武陵区', 189);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1682, '鼎城区', 189);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1683, '安乡县', 189);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1684, '汉寿县', 189);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1685, '澧县', 189);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1686, '临澧县', 189);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1687, '桃源县', 189);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1688, '石门县', 189);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1689, '津市市', 189);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1690, '永定区', 190);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1691, '武陵源区', 190);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1692, '慈利县', 190);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1693, '桑植县', 190);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1694, '资阳区', 191);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1695, '赫山区', 191);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1696, '南县', 191);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1697, '桃江县', 191);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1698, '安化县', 191);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1699, '沅江市', 191);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1700, '北湖区', 192);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1701, '苏仙区', 192);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1702, '桂阳县', 192);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1703, '宜章县', 192);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1704, '永兴县', 192);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1705, '嘉禾县', 192);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1706, '临武县', 192);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1707, '汝城县', 192);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1708, '桂东县', 192);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1709, '安仁县', 192);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1710, '资兴市', 192);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1711, '零陵区', 193);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1712, '冷水滩区', 193);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1713, '祁阳县', 193);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1714, '东安县', 193);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1715, '双牌县', 193);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1716, '道县', 193);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1717, '江永县', 193);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1718, '宁远县', 193);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1719, '蓝山县', 193);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1720, '新田县', 193);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1721, '江华瑶族自治县', 193);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1722, '鹤城区', 194);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1723, '中方县', 194);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1724, '沅陵县', 194);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1725, '辰溪县', 194);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1726, '溆浦县', 194);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1727, '会同县', 194);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1728, '麻阳苗族自治县', 194);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1729, '新晃侗族自治县', 194);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1730, '芷江侗族自治县', 194);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1731, '靖州苗族侗族自治县', 194);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1732, '通道侗族自治县', 194);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1733, '洪江市', 194);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1734, '娄星区', 195);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1735, '双峰县', 195);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1736, '新化县', 195);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1737, '冷水江市', 195);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1738, '涟源市', 195);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1739, '吉首市', 196);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1740, '泸溪县', 196);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1741, '凤凰县', 196);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1742, '花垣县', 196);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1743, '保靖县', 196);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1744, '古丈县', 196);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1745, '永顺县', 196);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1746, '龙山县', 196);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1748, '荔湾区', 197);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1749, '越秀区', 197);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1750, '海珠区', 197);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1751, '天河区', 197);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1753, '白云区', 197);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1754, '黄埔区', 197);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1755, '番禺区', 197);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1756, '花都区', 197);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1757, '南沙区', 197);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1758, '萝岗区', 197);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1759, '武江区', 198);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1760, '浈江区', 198);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1761, '曲江区', 198);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1762, '始兴县', 198);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1763, '仁化县', 198);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1764, '翁源县', 198);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1765, '乳源瑶族自治县', 198);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1766, '新丰县', 198);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1767, '乐昌市', 198);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1768, '南雄市', 198);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1769, '罗湖区', 199);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1770, '福田区', 199);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1771, '南山区', 199);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1772, '宝安区', 199);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1773, '龙岗区', 199);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1774, '盐田区', 199);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1775, '香洲区', 200);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1776, '斗门区', 200);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1777, '金湾区', 200);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1778, '龙湖区', 201);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1779, '金平区', 201);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1780, '濠江区', 201);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1781, '潮阳区', 201);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1782, '潮南区', 201);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1783, '澄海区', 201);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1784, '南澳县', 201);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1785, '禅城区', 202);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1786, '南海区', 202);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1787, '顺德区', 202);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1788, '三水区', 202);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1789, '高明区', 202);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1790, '蓬江区', 203);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1791, '江海区', 203);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1792, '新会区', 203);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1793, '台山市', 203);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1794, '开平市', 203);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1795, '鹤山市', 203);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1796, '恩平市', 203);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1797, '赤坎区', 204);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1798, '霞山区', 204);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1799, '坡头区', 204);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1800, '麻章区', 204);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1801, '遂溪县', 204);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1802, '徐闻县', 204);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1803, '廉江市', 204);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1804, '雷州市', 204);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1805, '吴川市', 204);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1806, '茂南区', 205);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1807, '茂港区', 205);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1808, '电白县', 205);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1809, '高州市', 205);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1810, '化州市', 205);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1811, '信宜市', 205);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1812, '端州区', 206);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1813, '鼎湖区', 206);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1814, '广宁县', 206);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1815, '怀集县', 206);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1816, '封开县', 206);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1817, '德庆县', 206);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1818, '高要市', 206);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1819, '四会市', 206);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1820, '惠城区', 207);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1821, '惠阳区', 207);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1822, '博罗县', 207);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1823, '惠东县', 207);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1824, '龙门县', 207);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1825, '梅江区', 208);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1826, '梅县', 208);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1827, '大埔县', 208);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1828, '丰顺县', 208);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1829, '五华县', 208);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1830, '平远县', 208);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1831, '蕉岭县', 208);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1832, '兴宁市', 208);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1833, '城区', 209);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1834, '海丰县', 209);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1835, '陆河县', 209);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1836, '陆丰市', 209);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1837, '源城区', 210);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1838, '紫金县', 210);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1839, '龙川县', 210);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1840, '连平县', 210);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1841, '和平县', 210);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1842, '东源县', 210);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1843, '江城区', 211);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1844, '阳西县', 211);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1845, '阳东县', 211);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1846, '阳春市', 211);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1847, '清城区', 212);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1848, '佛冈县', 212);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1849, '阳山县', 212);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1850, '连山壮族瑶族自治县', 212);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1851, '连南瑶族自治县', 212);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1852, '清新县', 212);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1853, '英德市', 212);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1854, '连州市', 212);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1855, '湘桥区', 215);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1856, '潮安县', 215);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1857, '饶平县', 215);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1858, '榕城区', 216);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1859, '揭东县', 216);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1860, '揭西县', 216);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1861, '惠来县', 216);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1862, '普宁市', 216);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1863, '云城区', 217);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1864, '新兴县', 217);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1865, '郁南县', 217);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1866, '云安县', 217);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1867, '罗定市', 217);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1868, '兴宁区', 218);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1869, '青秀区', 218);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1870, '江南区', 218);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1871, '西乡塘区', 218);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1872, '良庆区', 218);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1873, '邕宁区', 218);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1874, '武鸣县', 218);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1875, '隆安县', 218);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1876, '马山县', 218);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1877, '上林县', 218);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1878, '宾阳县', 218);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1879, '横县', 218);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1880, '城中区', 219);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1881, '鱼峰区', 219);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1882, '柳南区', 219);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1883, '柳北区', 219);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1884, '柳江县', 219);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1885, '柳城县', 219);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1886, '鹿寨县', 219);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1887, '融安县', 219);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1888, '融水苗族自治县', 219);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1889, '三江侗族自治县', 219);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1890, '秀峰区', 220);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1891, '叠彩区', 220);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1892, '象山区', 220);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1893, '七星区', 220);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1894, '雁山区', 220);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1895, '阳朔县', 220);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1896, '临桂县', 220);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1897, '灵川县', 220);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1898, '全州县', 220);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1899, '兴安县', 220);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1900, '永福县', 220);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1901, '灌阳县', 220);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1902, '龙胜各族自治县', 220);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1903, '资源县', 220);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1904, '平乐县', 220);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1905, '荔蒲县', 220);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1906, '恭城瑶族自治县', 220);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1907, '万秀区', 221);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1908, '蝶山区', 221);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1909, '长洲区', 221);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1910, '苍梧县', 221);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1911, '藤县', 221);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1912, '蒙山县', 221);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1913, '岑溪市', 221);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1914, '海城区', 222);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1915, '银海区', 222);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1916, '铁山港区', 222);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1917, '合浦县', 222);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1918, '港口区', 223);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1919, '防城区', 223);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1920, '上思县', 223);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1921, '东兴市', 223);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1922, '钦南区', 224);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1923, '钦北区', 224);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1924, '灵山县', 224);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1925, '浦北县', 224);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1926, '港北区', 225);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1927, '港南区', 225);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1928, '覃塘区', 225);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1929, '平南县', 225);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1930, '桂平市', 225);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1931, '玉州区', 226);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1932, '容县', 226);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1933, '陆川县', 226);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1934, '博白县', 226);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1935, '兴业县', 226);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1936, '北流市', 226);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1937, '右江区', 227);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1938, '田阳县', 227);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1939, '田东县', 227);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1940, '平果县', 227);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1941, '德保县', 227);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1942, '靖西县', 227);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1943, '那坡县', 227);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1944, '凌云县', 227);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1945, '乐业县', 227);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1946, '田林县', 227);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1947, '西林县', 227);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1948, '隆林各族自治县', 227);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1949, '八步区', 228);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1950, '昭平县', 228);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1951, '钟山县', 228);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1952, '富川瑶族自治县', 228);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1953, '金城江区', 229);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1954, '南丹县', 229);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1955, '天峨县', 229);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1956, '凤山县', 229);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1957, '东兰县', 229);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1958, '罗城仫佬族自治县', 229);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1959, '环江毛南族自治县', 229);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1960, '巴马瑶族自治县', 229);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1961, '都安瑶族自治县', 229);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1962, '大化瑶族自治县', 229);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1963, '宜州市', 229);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1964, '兴宾区', 230);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1965, '忻城县', 230);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1966, '象州县', 230);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1967, '武宣县', 230);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1968, '金秀瑶族自治县', 230);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1969, '合山市', 230);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1970, '江洲区', 231);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1971, '扶绥县', 231);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1972, '宁明县', 231);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1973, '龙州县', 231);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1974, '大新县', 231);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1975, '天等县', 231);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1976, '凭祥市', 231);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1977, '秀英区', 232);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1978, '龙华区', 232);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1979, '琼山区', 232);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1980, '美兰区', 232);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1981, '五指山市', 233);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1982, '琼海市', 233);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1983, '儋州市', 233);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1984, '文昌市', 233);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1985, '万宁市', 233);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1986, '东方市', 233);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1987, '定安县', 233);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1988, '屯昌县', 233);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1989, '澄迈县', 233);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1990, '临高县', 233);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1991, '白沙黎族自治县', 233);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1992, '昌江黎族自治县', 233);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1993, '乐东黎族自治县', 233);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1994, '陵水黎族自治县', 233);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1995, '保亭黎族苗族自治县', 233);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1996, '琼中黎族苗族自治县', 233);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1997, '西沙群岛', 233);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1998, '南沙群岛', 233);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (1999, '中沙群岛的岛礁及其海域', 233);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2000, '万州区', 234);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2001, '涪陵区', 234);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2002, '渝中区', 234);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2003, '大渡口区', 234);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2004, '江北区', 234);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2005, '沙坪坝区', 234);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2006, '九龙坡区', 234);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2007, '南岸区', 234);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2008, '北碚区', 234);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2009, '綦江区', 234);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2010, '大足区', 234);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2011, '渝北区', 234);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2012, '巴南区', 234);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2013, '黔江区', 234);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2014, '长寿区', 234);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2015, '江津区', 234);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2016, '潼南县', 234);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2017, '铜梁县', 234);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2019, '荣昌县', 234);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2020, '璧山县', 234);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2021, '梁平县', 234);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2022, '城口县', 234);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2023, '丰都县', 234);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2024, '垫江县', 234);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2025, '武隆县', 234);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2026, '忠县', 234);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2027, '开县', 234);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2028, '云阳县', 234);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2029, '奉节县', 234);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2030, '巫山县', 234);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2031, '巫溪县', 234);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2032, '石柱土家族自治县', 234);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2033, '秀山土家族苗族自治县', 234);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2034, '酉阳土家族苗族自治县', 234);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2035, '彭水苗族土家族自治县', 234);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2040, '锦江区', 235);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2041, '青羊区', 235);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2042, '金牛区', 235);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2043, '武侯区', 235);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2044, '成华区', 235);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2045, '龙泉驿区', 235);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2046, '青白江区', 235);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2047, '新都区', 235);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2048, '温江区', 235);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2049, '金堂县', 235);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2050, '双流县', 235);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2051, '郫县', 235);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2052, '大邑县', 235);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2053, '蒲江县', 235);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2054, '新津县', 235);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2055, '都江堰市', 235);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2056, '彭州市', 235);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2057, '邛崃市', 235);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2058, '崇州市', 235);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2059, '自流井区', 236);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2060, '贡井区', 236);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2061, '大安区', 236);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2062, '沿滩区', 236);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2063, '荣县', 236);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2064, '富顺县', 236);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2065, '东区', 237);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2066, '西区', 237);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2067, '仁和区', 237);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2068, '米易县', 237);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2069, '盐边县', 237);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2070, '江阳区', 238);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2071, '纳溪区', 238);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2072, '龙马潭区', 238);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2073, '泸县', 238);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2074, '合江县', 238);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2075, '叙永县', 238);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2076, '古蔺县', 238);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2077, '旌阳区', 239);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2078, '中江县', 239);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2079, '罗江县', 239);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2080, '广汉市', 239);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2081, '什邡市', 239);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2082, '绵竹市', 239);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2083, '涪城区', 240);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2084, '游仙区', 240);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2085, '三台县', 240);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2086, '盐亭县', 240);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2087, '安县', 240);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2088, '梓潼县', 240);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2089, '北川羌族自治县', 240);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2090, '平武县', 240);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2091, '江油市', 240);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2092, '利州区', 241);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2093, '元坝区', 241);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2094, '朝天区', 241);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2095, '旺苍县', 241);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2096, '青川县', 241);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2097, '剑阁县', 241);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2098, '苍溪县', 241);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2099, '船山区', 242);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2100, '安居区', 242);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2101, '蓬溪县', 242);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2102, '射洪县', 242);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2103, '大英县', 242);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2104, '市中区', 243);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2105, '东兴区', 243);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2106, '威远县', 243);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2107, '资中县', 243);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2108, '隆昌县', 243);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2109, '市中区', 244);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2110, '沙湾区', 244);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2111, '五通桥区', 244);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2112, '金口河区', 244);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2113, '犍为县', 244);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2114, '井研县', 244);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2115, '夹江县', 244);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2116, '沐川县', 244);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2117, '峨边彝族自治县', 244);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2118, '马边彝族自治县', 244);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2119, '峨眉山市', 244);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2120, '顺庆区', 245);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2121, '高坪区', 245);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2122, '嘉陵区', 245);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2123, '南部县', 245);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2124, '营山县', 245);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2125, '蓬安县', 245);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2126, '仪陇县', 245);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2127, '西充县', 245);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2128, '阆中市', 245);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2129, '东坡区', 246);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2130, '仁寿县', 246);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2131, '彭山县', 246);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2132, '洪雅县', 246);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2133, '丹棱县', 246);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2134, '青神县', 246);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2135, '翠屏区', 247);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2136, '宜宾县', 247);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2137, '南溪区', 247);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2138, '江安县', 247);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2139, '长宁县', 247);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2140, '高县', 247);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2141, '珙县', 247);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2142, '筠连县', 247);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2143, '兴文县', 247);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2144, '屏山县', 247);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2145, '广安区', 248);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2146, '岳池县', 248);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2147, '武胜县', 248);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2148, '邻水县', 248);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2149, '华蓥市', 248);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2150, '通川区', 249);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2151, '达县', 249);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2152, '宣汉县', 249);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2153, '开江县', 249);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2154, '大竹县', 249);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2155, '渠县', 249);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2156, '万源市', 249);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2157, '雨城区', 250);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2158, '名山县', 250);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2159, '荥经县', 250);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2160, '汉源县', 250);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2161, '石棉县', 250);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2162, '天全县', 250);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2163, '芦山县', 250);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2164, '宝兴县', 250);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2165, '巴州区', 251);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2166, '通江县', 251);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2167, '南江县', 251);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2168, '平昌县', 251);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2169, '雁江区', 252);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2170, '安岳县', 252);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2171, '乐至县', 252);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2172, '简阳市', 252);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2173, '汶川县', 253);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2174, '理县', 253);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2175, '茂县', 253);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2176, '松潘县', 253);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2177, '九寨沟县', 253);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2178, '金川县', 253);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2179, '小金县', 253);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2180, '黑水县', 253);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2181, '马尔康县', 253);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2182, '壤塘县', 253);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2183, '阿坝县', 253);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2184, '若尔盖县', 253);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2185, '红原县', 253);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2186, '康定县', 254);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2187, '泸定县', 254);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2188, '丹巴县', 254);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2189, '九龙县', 254);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2190, '雅江县', 254);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2191, '道孚县', 254);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2192, '炉霍县', 254);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2193, '甘孜县', 254);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2194, '新龙县', 254);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2195, '德格县', 254);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2196, '白玉县', 254);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2197, '石渠县', 254);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2198, '色达县', 254);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2199, '理塘县', 254);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2200, '巴塘县', 254);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2201, '乡城县', 254);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2202, '稻城县', 254);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2203, '得荣县', 254);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2204, '西昌市', 255);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2205, '木里藏族自治县', 255);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2206, '盐源县', 255);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2207, '德昌县', 255);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2208, '会理县', 255);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2209, '会东县', 255);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2210, '宁南县', 255);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2211, '普格县', 255);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2212, '布拖县', 255);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2213, '金阳县', 255);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2214, '昭觉县', 255);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2215, '喜德县', 255);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2216, '冕宁县', 255);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2217, '越西县', 255);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2218, '甘洛县', 255);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2219, '美姑县', 255);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2220, '雷波县', 255);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2221, '南明区', 256);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2222, '云岩区', 256);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2223, '花溪区', 256);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2224, '乌当区', 256);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2225, '白云区', 256);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2226, '小河区', 256);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2227, '开阳县', 256);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2228, '息烽县', 256);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2229, '修文县', 256);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2230, '清镇市', 256);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2231, '钟山区', 257);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2232, '六枝特区', 257);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2233, '水城县', 257);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2234, '盘县', 257);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2235, '红花岗区', 258);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2236, '汇川区', 258);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2237, '遵义县', 258);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2238, '桐梓县', 258);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2239, '绥阳县', 258);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2240, '正安县', 258);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2241, '道真仡佬族苗族自治县', 258);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2242, '务川仡佬族苗族自治县', 258);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2243, '凤冈县', 258);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2244, '湄潭县', 258);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2245, '余庆县', 258);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2246, '习水县', 258);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2247, '赤水市', 258);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2248, '仁怀市', 258);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2249, '西秀区', 259);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2250, '平坝县', 259);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2251, '普定县', 259);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2252, '镇宁布依族苗族自治县', 259);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2253, '关岭布依族苗族自治县', 259);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2254, '紫云苗族布依族自治县', 259);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2256, '碧江区', 260);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2257, '万山区', 260);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2258, '江口县', 260);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2259, '玉屏侗族自治县', 260);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2260, '石阡县', 260);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2262, '思南县', 260);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2263, '印江土家族苗族自治县', 260);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2264, '德江县', 260);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2265, '兴义市', 261);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2266, '兴仁县', 261);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2267, '普安县', 261);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2268, '晴隆县', 261);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2269, '贞丰县', 261);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2270, '望谟县', 261);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2271, '册亨县', 261);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2272, '安龙县', 261);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2274, '大方县', 262);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2275, '黔西县', 262);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2276, '金沙县', 262);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2277, '织金县', 262);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2278, '纳雍县', 262);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2279, '威宁彝族回族苗族自治县', 262);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2280, '赫章县', 262);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2281, '凯里市', 263);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2282, '黄平县', 263);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2283, '施秉县', 263);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2284, '三穗县', 263);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2285, '镇远县', 263);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2286, '岑巩县', 263);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2287, '天柱县', 263);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2288, '锦屏县', 263);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2289, '剑河县', 263);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2290, '台江县', 263);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2291, '黎平县', 263);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2292, '榕江县', 263);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2293, '从江县', 263);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2294, '雷山县', 263);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2295, '麻江县', 263);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2296, '丹寨县', 263);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2297, '都匀市', 264);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2298, '福泉市', 264);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2299, '荔波县', 264);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2300, '贵定县', 264);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2301, '瓮安县', 264);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2302, '独山县', 264);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2303, '平塘县', 264);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2304, '罗甸县', 264);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2305, '长顺县', 264);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2306, '龙里县', 264);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2307, '惠水县', 264);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2308, '三都水族自治县', 264);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2309, '五华区', 265);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2310, '盘龙区', 265);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2311, '官渡区', 265);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2312, '西山区', 265);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2313, '东川区', 265);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2314, '呈贡县', 265);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2315, '晋宁县', 265);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2316, '富民县', 265);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2317, '宜良县', 265);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2318, '石林彝族自治县', 265);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2319, '嵩明县', 265);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2320, '禄劝彝族苗族自治县', 265);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2321, '寻甸回族彝族自治县', 265);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2322, '安宁市', 265);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2323, '麒麟区', 266);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2324, '马龙县', 266);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2325, '陆良县', 266);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2326, '师宗县', 266);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2327, '罗平县', 266);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2328, '富源县', 266);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2329, '会泽县', 266);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2330, '沾益县', 266);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2331, '宣威市', 266);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2332, '红塔区', 267);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2333, '江川县', 267);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2334, '澄江县', 267);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2335, '通海县', 267);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2336, '华宁县', 267);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2337, '易门县', 267);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2338, '峨山彝族自治县', 267);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2339, '新平彝族傣族自治县', 267);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2340, '元江哈尼族彝族傣族自治县', 267);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2341, '隆阳区', 268);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2342, '施甸县', 268);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2343, '腾冲县', 268);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2344, '龙陵县', 268);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2345, '昌宁县', 268);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2346, '昭阳区', 269);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2347, '鲁甸县', 269);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2348, '巧家县', 269);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2349, '盐津县', 269);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2350, '大关县', 269);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2351, '永善县', 269);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2352, '绥江县', 269);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2353, '镇雄县', 269);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2354, '彝良县', 269);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2355, '威信县', 269);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2356, '水富县', 269);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2357, '古城区', 270);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2358, '玉龙纳西族自治县', 270);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2359, '永胜县', 270);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2360, '华坪县', 270);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2361, '宁蒗彝族自治县', 270);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2362, '思茅区', 271);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2363, '宁洱哈尼族彝族自治县', 271);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2364, '墨江哈尼族自治县', 271);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2365, '景东彝族自治县', 271);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2366, '景谷傣族彝族自治县', 271);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2367, '镇沅彝族哈尼族拉祜族自治县', 271);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2368, '江城哈尼族彝族自治县', 271);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2369, '孟连傣族拉祜族佤族自治县', 271);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2370, '澜沧拉祜族自治县', 271);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2371, '西盟佤族自治县', 271);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2372, '临翔区', 272);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2373, '凤庆县', 272);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2374, '云县', 272);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2375, '永德县', 272);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2376, '镇康县', 272);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2377, '双江拉祜族佤族布朗族傣族自治县', 272);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2378, '耿马傣族佤族自治县', 272);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2379, '沧源佤族自治县', 272);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2380, '楚雄市', 273);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2381, '双柏县', 273);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2382, '牟定县', 273);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2383, '南华县', 273);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2384, '姚安县', 273);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2385, '大姚县', 273);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2386, '永仁县', 273);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2387, '元谋县', 273);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2388, '武定县', 273);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2389, '禄丰县', 273);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2390, '个旧市', 274);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2391, '开远市', 274);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2392, '蒙自县', 274);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2393, '屏边苗族自治县', 274);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2394, '建水县', 274);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2395, '石屏县', 274);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2396, '弥勒县', 274);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2397, '泸西县', 274);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2398, '元阳县', 274);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2399, '红河县', 274);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2400, '金平苗族瑶族傣族自治县', 274);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2401, '绿春县', 274);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2402, '河口瑶族自治县', 274);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2403, '文山市', 275);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2404, '砚山县', 275);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2405, '西畴县', 275);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2406, '麻栗坡县', 275);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2407, '马关县', 275);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2408, '丘北县', 275);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2409, '广南县', 275);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2410, '富宁县', 275);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2411, '景洪市', 276);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2412, '勐海县', 276);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2413, '勐腊县', 276);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2414, '大理市', 277);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2415, '漾濞彝族自治县', 277);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2416, '祥云县', 277);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2417, '宾川县', 277);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2418, '弥渡县', 277);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2419, '南涧彝族自治县', 277);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2420, '巍山彝族回族自治县', 277);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2421, '永平县', 277);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2422, '云龙县', 277);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2423, '洱源县', 277);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2424, '剑川县', 277);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2425, '鹤庆县', 277);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2426, '瑞丽市', 278);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2427, '芒市', 278);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2428, '梁河县', 278);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2429, '盈江县', 278);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2430, '陇川县', 278);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2431, '泸水县', 279);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2432, '福贡县', 279);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2433, '贡山独龙族怒族自治县', 279);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2434, '兰坪白族普米族自治县', 279);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2435, '香格里拉县', 280);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2436, '德钦县', 280);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2437, '维西傈僳族自治县', 280);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2438, '城关区', 281);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2439, '林周县', 281);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2440, '当雄县', 281);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2441, '尼木县', 281);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2442, '曲水县', 281);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2443, '堆龙德庆县', 281);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2444, '达孜县', 281);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2445, '墨竹工卡县', 281);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2446, '昌都县', 282);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2447, '江达县', 282);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2448, '贡觉县', 282);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2449, '类乌齐县', 282);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2450, '丁青县', 282);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2451, '察雅县', 282);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2452, '八宿县', 282);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2453, '左贡县', 282);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2454, '芒康县', 282);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2455, '洛隆县', 282);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2456, '边坝县', 282);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2457, '乃东县', 283);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2458, '扎囊县', 283);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2459, '贡嘎县', 283);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2460, '桑日县', 283);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2461, '琼结县', 283);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2462, '曲松县', 283);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2463, '措美县', 283);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2464, '洛扎县', 283);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2465, '加查县', 283);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2466, '隆子县', 283);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2467, '错那县', 283);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2468, '浪卡子县', 283);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2469, '日喀则市', 284);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2470, '南木林县', 284);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2471, '江孜县', 284);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2472, '定日县', 284);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2473, '萨迦县', 284);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2474, '拉孜县', 284);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2475, '昂仁县', 284);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2476, '谢通门县', 284);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2477, '白朗县', 284);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2478, '仁布县', 284);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2479, '康马县', 284);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2480, '定结县', 284);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2481, '仲巴县', 284);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2482, '亚东县', 284);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2483, '吉隆县', 284);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2484, '聂拉木县', 284);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2485, '萨嘎县', 284);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2486, '岗巴县', 284);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2487, '那曲县', 285);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2488, '嘉黎县', 285);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2489, '比如县', 285);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2490, '聂荣县', 285);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2491, '安多县', 285);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2492, '申扎县', 285);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2493, '索县', 285);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2494, '班戈县', 285);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2495, '巴青县', 285);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2496, '尼玛县', 285);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2497, '普兰县', 286);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2498, '札达县', 286);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2499, '噶尔县', 286);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2500, '日土县', 286);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2501, '革吉县', 286);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2502, '改则县', 286);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2503, '措勤县', 286);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2504, '林芝县', 287);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2505, '工布江达县', 287);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2506, '米林县', 287);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2507, '墨脱县', 287);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2508, '波密县', 287);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2509, '察隅县', 287);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2510, '朗县', 287);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2511, '新城区', 288);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2512, '碑林区', 288);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2513, '莲湖区', 288);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2514, '灞桥区', 288);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2515, '未央区', 288);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2516, '雁塔区', 288);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2517, '阎良区', 288);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2518, '临潼区', 288);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2519, '长安区', 288);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2520, '蓝田县', 288);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2521, '周至县', 288);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2522, '户县', 288);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2523, '高陵县', 288);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2524, '王益区', 289);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2525, '印台区', 289);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2526, '耀州区', 289);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2527, '宜君县', 289);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2528, '渭滨区', 290);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2529, '金台区', 290);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2530, '陈仓区', 290);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2531, '凤翔县', 290);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2532, '岐山县', 290);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2533, '扶风县', 290);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2534, '眉县', 290);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2535, '陇县', 290);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2536, '千阳县', 290);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2537, '麟游县', 290);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2538, '凤县', 290);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2539, '太白县', 290);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2540, '秦都区', 291);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2541, '杨凌区', 291);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2542, '渭城区', 291);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2543, '三原县', 291);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2544, '泾阳县', 291);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2545, '乾县', 291);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2546, '礼泉县', 291);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2547, '永寿县', 291);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2548, '彬县', 291);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2549, '长武县', 291);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2550, '旬邑县', 291);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2551, '淳化县', 291);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2552, '武功县', 291);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2553, '兴平市', 291);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2554, '临渭区', 292);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2555, '华县', 292);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2556, '潼关县', 292);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2557, '大荔县', 292);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2558, '合阳县', 292);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2559, '澄城县', 292);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2560, '蒲城县', 292);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2561, '白水县', 292);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2562, '富平县', 292);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2563, '韩城市', 292);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2564, '华阴市', 292);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2565, '宝塔区', 293);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2566, '延长县', 293);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2567, '延川县', 293);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2568, '子长县', 293);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2569, '安塞县', 293);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2570, '志丹县', 293);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2571, '吴起县', 293);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2572, '甘泉县', 293);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2573, '富县', 293);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2574, '洛川县', 293);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2575, '宜川县', 293);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2576, '黄龙县', 293);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2577, '黄陵县', 293);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2578, '汉台区', 294);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2579, '南郑县', 294);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2580, '城固县', 294);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2581, '洋县', 294);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2582, '西乡县', 294);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2583, '勉县', 294);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2584, '宁强县', 294);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2585, '略阳县', 294);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2586, '镇巴县', 294);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2587, '留坝县', 294);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2588, '佛坪县', 294);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2589, '榆阳区', 295);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2590, '神木县', 295);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2591, '府谷县', 295);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2592, '横山县', 295);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2593, '靖边县', 295);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2594, '定边县', 295);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2595, '绥德县', 295);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2596, '米脂县', 295);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2597, '佳县', 295);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2598, '吴堡县', 295);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2599, '清涧县', 295);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2600, '子洲县', 295);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2601, '汉滨区', 296);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2602, '汉阴县', 296);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2603, '石泉县', 296);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2604, '宁陕县', 296);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2605, '紫阳县', 296);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2606, '岚皋县', 296);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2607, '平利县', 296);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2608, '镇坪县', 296);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2609, '旬阳县', 296);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2610, '白河县', 296);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2611, '商州区', 297);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2612, '洛南县', 297);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2613, '丹凤县', 297);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2614, '商南县', 297);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2615, '山阳县', 297);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2616, '镇安县', 297);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2617, '柞水县', 297);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2618, '城关区', 298);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2619, '七里河区', 298);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2620, '西固区', 298);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2621, '安宁区', 298);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2622, '红古区', 298);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2623, '永登县', 298);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2624, '皋兰县', 298);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2625, '榆中县', 298);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2626, '金川区', 300);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2627, '永昌县', 300);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2628, '白银区', 301);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2629, '平川区', 301);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2630, '靖远县', 301);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2631, '会宁县', 301);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2632, '景泰县', 301);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2633, '秦州区', 302);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2634, '麦积区', 302);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2635, '清水县', 302);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2636, '秦安县', 302);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2637, '甘谷县', 302);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2638, '武山县', 302);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2639, '张家川回族自治县', 302);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2640, '凉州区', 303);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2641, '民勤县', 303);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2642, '古浪县', 303);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2643, '天祝藏族自治县', 303);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2644, '甘州区', 304);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2645, '肃南裕固族自治县', 304);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2646, '民乐县', 304);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2647, '临泽县', 304);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2648, '高台县', 304);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2649, '山丹县', 304);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2650, '崆峒区', 305);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2651, '泾川县', 305);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2652, '灵台县', 305);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2653, '崇信县', 305);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2654, '华亭县', 305);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2655, '庄浪县', 305);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2656, '静宁县', 305);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2657, '肃州区', 306);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2658, '金塔县', 306);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2659, '瓜州县', 306);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2660, '肃北蒙古族自治县', 306);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2661, '阿克塞哈萨克族自治县', 306);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2662, '玉门市', 306);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2663, '敦煌市', 306);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2664, '西峰区', 307);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2665, '庆城县', 307);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2666, '环县', 307);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2667, '华池县', 307);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2668, '合水县', 307);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2669, '正宁县', 307);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2670, '宁县', 307);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2671, '镇原县', 307);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2672, '安定区', 308);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2673, '通渭县', 308);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2674, '陇西县', 308);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2675, '渭源县', 308);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2676, '临洮县', 308);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2677, '漳县', 308);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2678, '岷县', 308);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2679, '武都区', 309);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2680, '成县', 309);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2681, '文县', 309);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2682, '宕昌县', 309);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2683, '康县', 309);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2684, '西和县', 309);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2685, '礼县', 309);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2686, '徽县', 309);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2687, '两当县', 309);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2688, '临夏市', 310);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2689, '临夏县', 310);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2690, '康乐县', 310);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2691, '永靖县', 310);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2692, '广河县', 310);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2693, '和政县', 310);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2694, '东乡族自治县', 310);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2695, '积石山保安族东乡族撒拉族自治县', 310);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2696, '合作市', 311);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2697, '临潭县', 311);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2698, '卓尼县', 311);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2699, '舟曲县', 311);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2700, '迭部县', 311);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2701, '玛曲县', 311);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2702, '碌曲县', 311);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2703, '夏河县', 311);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2704, '城东区', 312);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2705, '城中区', 312);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2706, '城西区', 312);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2707, '城北区', 312);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2708, '大通回族土族自治县', 312);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2709, '湟中县', 312);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2710, '湟源县', 312);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2711, '平安县', 313);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2712, '民和回族土族自治县', 313);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2713, '乐都县', 313);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2714, '互助土族自治县', 313);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2715, '化隆回族自治县', 313);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2716, '循化撒拉族自治县', 313);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2717, '门源回族自治县', 314);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2718, '祁连县', 314);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2719, '海晏县', 314);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2720, '刚察县', 314);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2721, '同仁县', 315);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2722, '尖扎县', 315);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2723, '泽库县', 315);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2724, '河南蒙古族自治县', 315);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2725, '共和县', 316);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2726, '同德县', 316);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2727, '贵德县', 316);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2728, '兴海县', 316);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2729, '贵南县', 316);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2730, '玛沁县', 317);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2731, '班玛县', 317);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2732, '甘德县', 317);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2733, '达日县', 317);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2734, '久治县', 317);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2735, '玛多县', 317);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2736, '玉树县', 318);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2737, '杂多县', 318);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2738, '称多县', 318);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2739, '治多县', 318);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2740, '囊谦县', 318);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2741, '曲麻莱县', 318);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2742, '格尔木市', 319);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2743, '德令哈市', 319);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2744, '乌兰县', 319);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2745, '都兰县', 319);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2746, '天峻县', 319);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2747, '兴庆区', 320);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2748, '西夏区', 320);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2749, '金凤区', 320);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2750, '永宁县', 320);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2751, '贺兰县', 320);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2752, '灵武市', 320);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2753, '大武口区', 321);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2754, '惠农区', 321);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2755, '平罗县', 321);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2756, '利通区', 322);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2757, '盐池县', 322);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2758, '同心县', 322);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2759, '青铜峡市', 322);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2760, '原州区', 323);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2761, '西吉县', 323);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2762, '隆德县', 323);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2763, '泾源县', 323);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2764, '彭阳县', 323);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2765, '沙坡头区', 324);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2766, '中宁县', 324);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2767, '海原县', 324);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2768, '天山区', 325);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2769, '沙依巴克区', 325);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2770, '新市区', 325);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2771, '水磨沟区', 325);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2772, '头屯河区', 325);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2773, '达坂城区', 325);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2774, '米东区', 325);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2775, '乌鲁木齐县', 325);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2776, '独山子区', 326);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2777, '克拉玛依区', 326);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2778, '白碱滩区', 326);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2779, '乌尔禾区', 326);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2780, '吐鲁番市', 327);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2781, '鄯善县', 327);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2782, '托克逊县', 327);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2783, '哈密市', 328);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2784, '巴里坤哈萨克自治县', 328);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2785, '伊吾县', 328);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2786, '昌吉市', 329);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2787, '阜康市', 329);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2789, '呼图壁县', 329);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2790, '玛纳斯县', 329);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2791, '奇台县', 329);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2792, '吉木萨尔县', 329);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2793, '木垒哈萨克自治县', 329);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2794, '博乐市', 330);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2795, '精河县', 330);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2796, '温泉县', 330);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2797, '库尔勒市', 331);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2798, '轮台县', 331);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2799, '尉犁县', 331);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2800, '若羌县', 331);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2801, '且末县', 331);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2802, '焉耆回族自治县', 331);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2803, '和静县', 331);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2804, '和硕县', 331);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2805, '博湖县', 331);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2806, '阿克苏市', 332);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2807, '温宿县', 332);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2808, '库车县', 332);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2809, '沙雅县', 332);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2810, '新和县', 332);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2811, '拜城县', 332);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2812, '乌什县', 332);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2813, '阿瓦提县', 332);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2814, '柯坪县', 332);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2815, '阿图什市', 333);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2816, '阿克陶县', 333);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2817, '阿合奇县', 333);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2818, '乌恰县', 333);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2819, '喀什市', 334);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2820, '疏附县', 334);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2821, '疏勒县', 334);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2822, '英吉沙县', 334);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2823, '泽普县', 334);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2824, '莎车县', 334);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2825, '叶城县', 334);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2826, '麦盖提县', 334);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2827, '岳普湖县', 334);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2828, '伽师县', 334);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2829, '巴楚县', 334);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2830, '塔什库尔干塔吉克自治县', 334);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2831, '和田市', 335);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2832, '和田县', 335);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2833, '墨玉县', 335);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2834, '皮山县', 335);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2835, '洛浦县', 335);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2836, '策勒县', 335);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2837, '于田县', 335);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2838, '民丰县', 335);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2839, '伊宁市', 336);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2840, '奎屯市', 336);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2841, '伊宁县', 336);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2842, '察布查尔锡伯自治县', 336);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2843, '霍城县', 336);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2844, '巩留县', 336);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2845, '新源县', 336);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2846, '昭苏县', 336);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2847, '特克斯县', 336);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2848, '尼勒克县', 336);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2849, '塔城市', 337);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2850, '乌苏市', 337);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2851, '额敏县', 337);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2852, '沙湾县', 337);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2853, '托里县', 337);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2854, '裕民县', 337);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2855, '和布克赛尔蒙古自治县', 337);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2856, '阿勒泰市', 338);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2857, '布尔津县', 338);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2858, '富蕴县', 338);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2859, '福海县', 338);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2860, '哈巴河县', 338);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2861, '青河县', 338);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2862, '吉木乃县', 338);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2865, '滨海新区', 2);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2866, '曹妃甸区', 4);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2869, '庐江县', 98);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2870, '巢湖市', 98);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2871, '无为县', 99);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2872, '当涂县', 102);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2873, '含山县', 102);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2874, '和县', 102);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2875, '共青城市', 127);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2876, '济源市', 168);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2877, '随县', 180);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2878, '增城市', 197);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2879, '从化市', 197);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2880, '合川区', 234);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2881, '永川区', 234);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2882, '南川区', 234);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2883, '沿河土家族自治县', 260);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2884, '松桃苗族自治县', 260);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2885, '金昌市', 300);
INSERT INTO TB_District (ID, DistrictName, CityID) VALUES (2886, '红寺堡区', 322);

commit;

INSERT INTO TB_FileUpload (ID, Owner_ID, AttachmentGUID, FileName, BasePath, SavePath, Category, FileSize, FileExtend, Editor, AddTime, DeleteFlag) VALUES ('06ee64ba-4d50-4fa8-b8b6-05179145136f', 'a0356a47-c901-4046-8abc-5217cca72f70', 'a6139b3b-2452-41d7-9a84-92317b81fd48', 'iqidiLogo2.png', 'UploadFiles', '供应商/广州爱奇迪软件科技有限公司\iqidiLogo2.png', '供应商/广州爱奇迪软件科技有限公司', 61087, '.png', 'admin', NULL, 0);
INSERT INTO TB_FileUpload (ID, Owner_ID, AttachmentGUID, FileName, BasePath, SavePath, Category, FileSize, FileExtend, Editor, AddTime, DeleteFlag) VALUES ('0d2097f8-9681-4067-b9b2-9299b4bcd423', '30', '20e0af07-aaf9-45c4-a3bf-9818b48be75b', 'ATT00002(3);.txt', 'C:\\output', '收件邮件附件\2013年05月\ATT00002(3);.txt', '收件邮件附件\2013年05月', 43, '.txt', '1', NULL, 0);
INSERT INTO TB_FileUpload (ID, Owner_ID, AttachmentGUID, FileName, BasePath, SavePath, Category, FileSize, FileExtend, Editor, AddTime, DeleteFlag) VALUES ('1bbff50e-0b62-4473-9e27-9e31509b0049', '27ECAEAE-1D84-456B-9FD9-15A0B05A3632', '{498488B9-D26F-4F27-BF6F-4E2CD96B750A}', 'test.xls', 'UploadFiles', '南方医科大学南方医院/客户跟进\test.xls', '南方医科大学南方医院/客户跟进', 4608, '.xls', 'admin', NULL, 0);
INSERT INTO TB_FileUpload (ID, Owner_ID, AttachmentGUID, FileName, BasePath, SavePath, Category, FileSize, FileExtend, Editor, AddTime, DeleteFlag) VALUES ('1e2b2abb-ffd1-4fea-aacd-a9729c3029ea', '19', '89cbae1c-ae91-443f-b161-32fb6a998e3d', 'ATT00002(2);.txt', 'C:\\output', '收件邮件附件\2013年05月\ATT00002(2);.txt', '收件邮件附件\2013年05月', 47, '.txt', '1', NULL, 0);
INSERT INTO TB_FileUpload (ID, Owner_ID, AttachmentGUID, FileName, BasePath, SavePath, Category, FileSize, FileExtend, Editor, AddTime, DeleteFlag) VALUES ('27204f52-ae6a-421e-83af-604ace44f1a3', '', '59194b90-f4f0-492c-b33f-ea52a15d30a8', 'Jellyfish.jpg', 'UploadFiles', '个人附件\Jellyfish.jpg', '个人附件', 775702, '.jpg', '0bed145f-e3fd-4b95-8eb1-e67146044f87', NULL, 0);
INSERT INTO TB_FileUpload (ID, Owner_ID, AttachmentGUID, FileName, BasePath, SavePath, Category, FileSize, FileExtend, Editor, AddTime, DeleteFlag) VALUES ('2b9dc374-a190-4ebc-a66c-82f283522246', '3FAE7718-EC1D-4EC7-9924-BD0F027C6ACF', '534729f2-c46d-4c19-9ba5-932be4c83aab', 'iqidiLogo2.png', 'UploadFiles', '广州爱奇迪软件科技有限公司/产品报价\iqidiLogo2.png', '广州爱奇迪软件科技有限公司/产品报价', 61087, '.png', 'admin', NULL, 0);
INSERT INTO TB_FileUpload (ID, Owner_ID, AttachmentGUID, FileName, BasePath, SavePath, Category, FileSize, FileExtend, Editor, AddTime, DeleteFlag) VALUES ('2c76bd7c-20cc-488e-bdcf-6b5c0fce214d', NULL, '1e8b9074-4fb1-4ca0-bc99-10cf79932a95', 'Hydrangeas.jpg', 'UploadFiles', '个人附件\Hydrangeas.jpg', '个人附件', 595284, '.jpg', '0bed145f-e3fd-4b95-8eb1-e67146044f87', NULL, 0);
INSERT INTO TB_FileUpload (ID, Owner_ID, AttachmentGUID, FileName, BasePath, SavePath, Category, FileSize, FileExtend, Editor, AddTime, DeleteFlag) VALUES ('4acd5244-6c31-4025-845c-0d765fdf80b2', '3FAE7718-EC1D-4EC7-9924-BD0F027C6ACF', '0b77f3d6-1310-4815-9437-b70ab5a94aba', 'WCF开发框架报价及说明.pdf', 'UploadFiles', '广州爱奇迪软件科技有限公司/客户文档\WCF开发框架报价及说明.pdf', '广州爱奇迪软件科技有限公司/客户文档', 495441, '.pdf', 'admin', NULL, 0);
INSERT INTO TB_FileUpload (ID, Owner_ID, AttachmentGUID, FileName, BasePath, SavePath, Category, FileSize, FileExtend, Editor, AddTime, DeleteFlag) VALUES ('514528ae-2132-46c2-9310-18e039c911f8', '17', '7731f41c-0447-4e6e-b808-ae38383ad673', 'ATT00002.txt', 'C:\\output', '收件邮件附件\2013年05月\ATT00002.txt', '收件邮件附件\2013年05月', 45, '.txt', '1', NULL, 0);
INSERT INTO TB_FileUpload (ID, Owner_ID, AttachmentGUID, FileName, BasePath, SavePath, Category, FileSize, FileExtend, Editor, AddTime, DeleteFlag) VALUES ('58764397-a1e2-4ea4-af12-381a4b873f0b', '', '59194b90-f4f0-492c-b33f-ea52a15d30a8', 'Hydrangeas.jpg', 'UploadFiles', '个人附件\Hydrangeas.jpg', '个人附件', 595284, '.jpg', '0bed145f-e3fd-4b95-8eb1-e67146044f87', NULL, 0);
INSERT INTO TB_FileUpload (ID, Owner_ID, AttachmentGUID, FileName, BasePath, SavePath, Category, FileSize, FileExtend, Editor, AddTime, DeleteFlag) VALUES ('71cfa6c0-54dc-421d-a4dc-5bac8ad9c3d0', '3FAE7718-EC1D-4EC7-9924-BD0F027C6ACF', '0b77f3d6-1310-4815-9437-b70ab5a94aba', '混合型开发框架报价及说明.pdf', 'UploadFiles', '广州爱奇迪软件科技有限公司/客户文档\混合型开发框架报价及说明.pdf', '广州爱奇迪软件科技有限公司/客户文档', 501274, '.pdf', 'admin', NULL, 0);
INSERT INTO TB_FileUpload (ID, Owner_ID, AttachmentGUID, FileName, BasePath, SavePath, Category, FileSize, FileExtend, Editor, AddTime, DeleteFlag) VALUES ('7f91e30f-5c7b-4723-9e54-e131ee8194e9', '3FAE7718-EC1D-4EC7-9924-BD0F027C6ACF', '0b77f3d6-1310-4815-9437-b70ab5a94aba', 'Web开发框架报价及说明.pdf', 'UploadFiles', '广州爱奇迪软件科技有限公司/客户文档\Web开发框架报价及说明.pdf', '广州爱奇迪软件科技有限公司/客户文档', 725592, '.pdf', 'admin', NULL, 0);
INSERT INTO TB_FileUpload (ID, Owner_ID, AttachmentGUID, FileName, BasePath, SavePath, Category, FileSize, FileExtend, Editor, AddTime, DeleteFlag) VALUES ('830b3cdb-07fb-4cf6-9410-da7d3a5ac9a0', '15', '7673eac6-c0f0-4a4b-9ee8-4b92b362a199', 'Hotel2.png', 'C:\\output', '收件邮件附件\2013年04月\Hotel2.png', '收件邮件附件\2013年04月', 129998, '.png', '1', NULL, 0);
INSERT INTO TB_FileUpload (ID, Owner_ID, AttachmentGUID, FileName, BasePath, SavePath, Category, FileSize, FileExtend, Editor, AddTime, DeleteFlag) VALUES ('878df0b1-c6b8-447e-9764-b7bf6361afce', NULL, 'c25d980c-bd33-4cf1-9399-ad31c2849841', 'DatabaseEncrypt001.png', 'UploadFiles', '业务附件\DatabaseEncrypt001.png', '业务附件', 83647, '.png', 'f53b7b41-bc87-4c33-b918-6a689c03235c', NULL, 0);
INSERT INTO TB_FileUpload (ID, Owner_ID, AttachmentGUID, FileName, BasePath, SavePath, Category, FileSize, FileExtend, Editor, AddTime, DeleteFlag) VALUES ('9cab9343-097a-457c-9b68-5977edbe5ca7', '16', 'ea481e85-bca1-4f6f-af87-aac8520f67a4', 'C__test(1);.jpg', 'C:\\output', '收件邮件附件\2013年04月\C__test(1);.jpg', '收件邮件附件\2013年04月', 90158, '.jpg', '1', NULL, 0);
INSERT INTO TB_FileUpload (ID, Owner_ID, AttachmentGUID, FileName, BasePath, SavePath, Category, FileSize, FileExtend, Editor, AddTime, DeleteFlag) VALUES ('a33f3128-4a1d-44c8-b32e-833185284cf1', '3FAE7718-EC1D-4EC7-9924-BD0F027C6ACF', 'a464431b-2d1b-47a0-b383-ddc3f693c43d', 'iqidiLogo2.png', 'UploadFiles', '广州爱奇迪软件科技有限公司/产品销售\iqidiLogo2.png', '广州爱奇迪软件科技有限公司/产品销售', 61087, '.png', 'admin', NULL, 0);
INSERT INTO TB_FileUpload (ID, Owner_ID, AttachmentGUID, FileName, BasePath, SavePath, Category, FileSize, FileExtend, Editor, AddTime, DeleteFlag) VALUES ('a8a4f268-2e9b-4b5a-9bc1-b7d87f41fcc1', '31', '4bcf158c-2a7c-4c8b-8fdf-7ac987032122', 'ATT00002(4);.txt', 'C:\\output', '收件邮件附件\2013年05月\ATT00002(4);.txt', '收件邮件附件\2013年05月', 43, '.txt', '1', NULL, 0);
INSERT INTO TB_FileUpload (ID, Owner_ID, AttachmentGUID, FileName, BasePath, SavePath, Category, FileSize, FileExtend, Editor, AddTime, DeleteFlag) VALUES ('aa52a065-df6f-43a3-a348-8de8d0f5ec3b', '15', '7673eac6-c0f0-4a4b-9ee8-4b92b362a199', 'C__test.jpg', 'C:\\output', '收件邮件附件\2013年04月\C__test.jpg', '收件邮件附件\2013年04月', 90158, '.jpg', '1', NULL, 0);
INSERT INTO TB_FileUpload (ID, Owner_ID, AttachmentGUID, FileName, BasePath, SavePath, Category, FileSize, FileExtend, Editor, AddTime, DeleteFlag) VALUES ('afae4862-618f-41f1-86e7-d5ce0ae18840', NULL, '33b2fc64-6c0e-4cdc-a54b-d18ffde4e398', 'HotelMis.png', 'UploadFiles', '个人图片\HotelMis.png', '个人图片', 15294, '.png', '', NULL, 0);
INSERT INTO TB_FileUpload (ID, Owner_ID, AttachmentGUID, FileName, BasePath, SavePath, Category, FileSize, FileExtend, Editor, AddTime, DeleteFlag) VALUES ('be0e1ca9-6f72-463f-bd5c-3277315f0525', '', '28150621-a65a-412c-bad7-c61e2bee7951', 'Lighthouse.jpg', 'UploadFiles', '业务附件\Lighthouse.jpg', '业务附件', 561276, '.jpg', '', NULL, 0);
INSERT INTO TB_FileUpload (ID, Owner_ID, AttachmentGUID, FileName, BasePath, SavePath, Category, FileSize, FileExtend, Editor, AddTime, DeleteFlag) VALUES ('c87b2aac-f8f3-4f69-a60b-93c94af1af82', '3FAE7718-EC1D-4EC7-9924-BD0F027C6ACF', '0b77f3d6-1310-4815-9437-b70ab5a94aba', 'Winform开发框架报价及说明.pdf', 'UploadFiles', '广州爱奇迪软件科技有限公司/客户文档\Winform开发框架报价及说明.pdf', '广州爱奇迪软件科技有限公司/客户文档', 494730, '.pdf', 'admin', NULL, 0);
INSERT INTO TB_FileUpload (ID, Owner_ID, AttachmentGUID, FileName, BasePath, SavePath, Category, FileSize, FileExtend, Editor, AddTime, DeleteFlag) VALUES ('cbca5ae6-fcc4-46f1-8865-c69e678f256f', '3FAE7718-EC1D-4EC7-9924-BD0F027C6ACF', 'd22d7c9a-be1b-4762-9f12-97c31fa13f21', '混合型开发框架报价及说明.pdf', 'UploadFiles', '广州爱奇迪软件科技有限公司/合同文档\混合型开发框架报价及说明.pdf', '广州爱奇迪软件科技有限公司/合同文档', 501274, '.pdf', 'admin', NULL, 0);
INSERT INTO TB_FileUpload (ID, Owner_ID, AttachmentGUID, FileName, BasePath, SavePath, Category, FileSize, FileExtend, Editor, AddTime, DeleteFlag) VALUES ('e91ec98a-72a4-41ea-af28-e74d42fd5432', '18', '45fdc483-0258-4ae0-ad39-c554cd6ed816', 'ATT00002(1);.txt', 'C:\\output', '收件邮件附件\2013年05月\ATT00002(1);.txt', '收件邮件附件\2013年05月', 47, '.txt', '1', NULL, 0);
INSERT INTO TB_FileUpload (ID, Owner_ID, AttachmentGUID, FileName, BasePath, SavePath, Category, FileSize, FileExtend, Editor, AddTime, DeleteFlag) VALUES ('ebd173a2-b608-4ef4-9b3a-1a0d0993a44f', '16', 'ea481e85-bca1-4f6f-af87-aac8520f67a4', 'Hotel2(1);.png', 'C:\\output', '收件邮件附件\2013年04月\Hotel2(1);.png', '收件邮件附件\2013年04月', 129998, '.png', '1', NULL, 0);
INSERT INTO TB_FileUpload (ID, Owner_ID, AttachmentGUID, FileName, BasePath, SavePath, Category, FileSize, FileExtend, Editor, AddTime, DeleteFlag) VALUES ('f70044e5-76e6-4bac-903f-4193d1b84d7f', 'ED64855D-7B58-4AF1-AABE-7E6CE1E5945A', 'f1d6503c-1005-4982-a99e-6a83ca2ed881', 'iqidiLogo2.png', 'UploadFiles', '内蒙古医科大学第二附属医院/客户跟进\iqidiLogo2.png', '内蒙古医科大学第二附属医院/客户跟进', 61087, '.png', 'admin', NULL, 0);


commit;