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
  `update_time` varchar(20),
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
-- 会员管理(插入系统模块表)
-- ----------------------------
INSERT INTO `sys_module` VALUES ('0207000000', '会员管理', 'login.do?method=leftList', '0200000000', null, null, null, null);
INSERT INTO `sys_module` VALUES ('0207010000', '会员管理', 'view/membermanage.do?method=queryMember', '0207000000', null, 'member', null, null);
INSERT INTO `sys_module` VALUES ('0207010100', '查询', null, '0207010000', null, 'select', null, null);
INSERT INTO `sys_module` VALUES ('0207010200', '审批', null, '0207010000', null, 'approve', null, null);
INSERT INTO `sys_module` VALUES ('0207010300', '反审批', null, '0207010000', null, 'unApprove', null, null);
INSERT INTO `sys_module` VALUES ('0207010400', '启用', null, '0207010000', null, 'enable', null, null);
INSERT INTO `sys_module` VALUES ('0207010500', '禁用', null, '0207010000', null, 'disable', null, null);
INSERT INTO `sys_module` VALUES ('0207010600', '删除', null, '0207010000', null, 'delete', null, null);

/**留言表**/
DROP TABLE IF EXISTS `front_message`;
CREATE TABLE `front_message` (
  `message_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `message_content` text,
  `message_date` varchar(20) DEFAULT NULL,
  `face_pic` varchar(20) DEFAULT NULL,
  `head_pic` varchar(20) DEFAULT NULL,
  `reply_content` text,
  `reply_date` varchar(20) DEFAULT NULL,
  `approve_status` tinyint(4) DEFAULT '0',
  `top` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`message_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `front_message_user` FOREIGN KEY (`user_id`) REFERENCES `front_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- 插入测试数据
-- ----------------------------
INSERT INTO `front_message` VALUES ('22', '1', '哈哈哈哈我要发表留言', '2012-04-24 04:59:57', 'face1.gif', 'pic1.gif', null, null, '0', '0');
INSERT INTO `front_message` VALUES ('23', '1', '撒旦法阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬', '2012-04-24 05:05:11', 'face1.gif', 'pic1.gif', null, null, '0', '0');
INSERT INTO `front_message` VALUES ('24', '1', '阿斯蒂芬', '2012-04-24 05:05:27', 'face1.gif', 'pic1.gif', null, null, '0', '0');
INSERT INTO `front_message` VALUES ('25', '1', '阿萨德发射点发斯蒂芬斯蒂芬', '2012-04-24 05:07:52', 'face1.gif', 'pic1.gif', null, null, '0', '0');
INSERT INTO `front_message` VALUES ('26', '1', '个人第三个地方', '2012-04-24 05:08:22', 'face1.gif', 'pic1.gif', null, null, '1', '0');
INSERT INTO `front_message` VALUES ('27', '1', '唉 烦呀 我烦呀 改起来痛苦呀~~~', '2012-04-24 07:09:34', 'face5.gif', 'pic4.gif', null, null, '1', '0');
INSERT INTO `front_message` VALUES ('28', '1', 'asdfds 斯蒂芬', '2012-04-24 07:11:28', 'face9.gif', 'pic9.gif', null, null, '1', '0');
INSERT INTO `front_message` VALUES ('29', '1', '阿斯蒂芬', '2012-04-24 07:11:49', 'face16.gif', 'pic2.gif', null, null, '1', '0');
INSERT INTO `front_message` VALUES ('1', '1', 'just test 哈哈哈', '2012-04-23 03:39:55', 'face1.gif', 'pic1.gif', 'test回复了哦', '2012-04-23 03:39:55', '1', null);
INSERT INTO `front_message` VALUES ('2', '1', 'just test 哈哈哈1', '2012-04-23 04:24:47', 'face1.gif', 'pic1.gif', null, null, '1', null);
INSERT INTO `front_message` VALUES ('3', '1', 'just test 哈哈哈2', '2012-04-23 04:24:47', 'face1.gif', 'pic1.gif', null, null, '1', null);
INSERT INTO `front_message` VALUES ('4', '1', 'just test 哈哈哈3', '2012-04-23 04:24:47', 'face1.gif', 'pic1.gif', null, null, '1', null);
INSERT INTO `front_message` VALUES ('5', '1', 'just test 哈哈哈4', '2012-04-23 04:24:47', 'face1.gif', 'pic1.gif', null, null, '1', null);
INSERT INTO `front_message` VALUES ('6', '1', 'just test 哈哈哈5', '2012-04-23 04:24:47', 'face1.gif', 'pic1.gif', null, null, '1', null);
INSERT INTO `front_message` VALUES ('7', '1', 'just test 哈哈哈6', '2012-04-23 04:24:47', 'face1.gif', 'pic1.gif', null, null, '1', null);
INSERT INTO `front_message` VALUES ('8', '1', 'just test 哈哈哈7', '2012-04-23 04:24:47', 'face1.gif', 'pic1.gif', null, null, '1', null);
INSERT INTO `front_message` VALUES ('9', '1', 'just test 哈哈哈8', '2012-04-23 04:24:47', 'face1.gif', 'pic1.gif', null, null, '1', null);


-- ----------------------------
-- 留言管理(插入系统模块表)
-- ----------------------------
INSERT INTO `sys_module` VALUES ('0207020000', '留言管理', 'view/messagemanage.do?method=queryMessage', '0207000000', null, 'message', null, null);
INSERT INTO `sys_module` VALUES ('0207020100', '查询', null, '0207020000', null, 'select', null, null);
INSERT INTO `sys_module` VALUES ('0207020200', '审批', null, '0207020000', null, 'approve', null, null);
INSERT INTO `sys_module` VALUES ('0207020300', '反审批', null, '0207020000', null, 'unApprove', null, null);
INSERT INTO `sys_module` VALUES ('0207020400', '删除', null, '0207020000', null, 'delete', null, null);

  