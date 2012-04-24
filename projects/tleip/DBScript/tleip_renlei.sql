/**前端用户表（登录、注册功能）**/

DROP TABLE IF EXISTS `front_user`;
CREATE TABLE `front_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_account` varchar(20) NOT NULL DEFAULT '',
  `user_name` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `sex` char(2) DEFAULT NULL,
  `user_type` varchar(10) DEFAULT '',
  `birthday` varchar(10) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `create_time` varchar(20) NOT NULL,
  `update_time` varchar(20) NOT NULL,
  `approve_status` tinyint(4) NOT NULL,
  `available` tinyint(4) NOT NULL COMMENT '禁用状态',
  `record_status` tinyint(4) NOT NULL COMMENT '状态标识（逻辑删除字段）',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_account` (`user_account`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- 插入测试数据
-- ----------------------------
INSERT INTO `front_user` VALUES ('1', 'renlei', '任磊', 'AG1XA775ZHGE58E78EE919Z599N0N917', '男', 'teacher', '2012-04-09', '国外', '110', '1124715454@qq.com', '2012-04-20 00:00:00', '2012-04-20 00:00:00', '1', '0', '1');
INSERT INTO `front_user` VALUES ('2', 'test', 'test', 'Z98ZE159GEAH9N7N509XGX8NAEA71GZE', '男', 'teacher', '2012-04-11', 'test', '', 'boleyn@test.com', '2012-04-20 00:00:00', '2012-04-20 00:00:00', '1', '1', '1');
INSERT INTO `front_user` VALUES ('3', 'sss', 'sss', '0ZHK9KZ9059KZ9ZX0NZZX8808XAKNX8A', '男', 'teacher', '2012-04-11', 'test', '', 'sdfsd', '2012-04-20 00:00:00', '2012-04-20 00:00:00', '1', '0', '0');
INSERT INTO `front_user` VALUES ('4', 'sssssss', 'sssssss', 'HEZ51HZ9HZ80Z557Z59EXAZZ97Z99AHN', '男', 'teacher', '2012-04-11', '', '', 'sssssss', '2012-04-20 00:00:00', '2012-04-20 00:00:00', '0', '0', '1');
INSERT INTO `front_user` VALUES ('5', 'sssssssss', 'ssssssss', '9AKKGG97Z9Z59NEENKNHKGEZZ8Z11X98', '男', 'teacher', '2012-04-11', '', '', 'renlei413326889@163.com', '2012-04-20 00:00:00', '2012-04-20 00:00:00', '0', '0', '1');
INSERT INTO `front_user` VALUES ('6', 'boleyn', 'boleyn', 'HAGZK9A91HHHNGG1AZ1GK1XH95E5Z891', '男', 'teacher', '', '', '', 'renlei413326889@163.com', '2012-04-20 00:00:00', '2012-04-20 00:00:00', '1', '1', '0');


-- ----------------------------
-- 会员管理
-- ----------------------------
INSERT INTO `sys_module` VALUES ('0207000000', '会员管理', 'login.do?method=leftList', '0200000000', null, null, null, null);
INSERT INTO `sys_module` VALUES ('0207010000', '会员管理', 'view/membermanage.do?method=queryMember', '0207000000', null, 'member', null, null);
INSERT INTO `sys_module` VALUES ('0207010100', '查询', null, '0207010000', null, 'select', null, null);
INSERT INTO `sys_module` VALUES ('0207010200', '审批', null, '0207010000', null, 'approve', null, null);
INSERT INTO `sys_module` VALUES ('0207010300', '反审批', null, '0207010000', null, 'unApprove', null, null);
INSERT INTO `sys_module` VALUES ('0207010400', '启用', null, '0207010000', null, 'enable', null, null);
INSERT INTO `sys_module` VALUES ('0207010500', '禁用', null, '0207010000', null, 'disable', null, null);
INSERT INTO `sys_module` VALUES ('0207010600', '删除', null, '0207010000', null, 'delete', null, null);

  