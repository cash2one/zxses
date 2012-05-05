/*
Navicat MySQL Data Transfer

Source Server         : work
Source Server Version : 50132
Source Host           : localhost:3306
Source Database       : tleip

Target Server Type    : MYSQL
Target Server Version : 50132
File Encoding         : 65001

Date: 2012-05-05 19:32:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `basic_department`
-- ----------------------------
DROP TABLE IF EXISTS `basic_department`;
CREATE TABLE `basic_department` (
  `unit_id` bigint(20) DEFAULT NULL,
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dept_code` varchar(20) NOT NULL,
  `dept_name` varchar(60) NOT NULL,
  `up_dept_code` varchar(20) DEFAULT NULL,
  `REMARK` longtext,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of basic_department
-- ----------------------------
INSERT INTO `basic_department` VALUES (null, '40', 'jx01', '缁煎悎澶?, '0', '');

-- ----------------------------
-- Table structure for `basic_person`
-- ----------------------------
DROP TABLE IF EXISTS `basic_person`;
CREATE TABLE `basic_person` (
  `person_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dept_id` bigint(20) DEFAULT NULL,
  `person_code` varchar(20) NOT NULL,
  `person_name` varchar(60) NOT NULL,
  `person_account` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `person_type` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of basic_person
-- ----------------------------
INSERT INTO `basic_person` VALUES ('3', '40', 'feng', 'feng', 'feng', 'AHAH8550778ZG9A10H9AA5NNXZHKHHZK', '1');

-- ----------------------------
-- Table structure for `basic_unit`
-- ----------------------------
DROP TABLE IF EXISTS `basic_unit`;
CREATE TABLE `basic_unit` (
  `UNIT_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `UNIT_CODE` varchar(20) NOT NULL,
  `UNIT_NAME` varchar(100) NOT NULL,
  `UNIT_MASTER` varchar(40) DEFAULT NULL,
  `POSTCODE` varchar(20) DEFAULT NULL,
  `LINKMAN` varchar(40) DEFAULT NULL,
  `TELEPHONE` varchar(40) DEFAULT NULL,
  `FAX` varchar(40) DEFAULT NULL,
  `EMAIL` varchar(60) DEFAULT NULL,
  `HOMEPAGE` varchar(100) DEFAULT NULL,
  `REMARK` longtext,
  PRIMARY KEY (`UNIT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of basic_unit
-- ----------------------------
INSERT INTO `basic_unit` VALUES ('2', '10000', '娣卞湷甯傚崡灞卞尯濉樻湕灏忓', '', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for `front_message`
-- ----------------------------
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
-- Records of front_message
-- ----------------------------
INSERT INTO `front_message` VALUES ('2', '1', 'just test 鍝堝搱鍝?', '2012-04-23 04:24:47', 'face1.gif', 'pic1.gif', null, null, '1', null);
INSERT INTO `front_message` VALUES ('3', '1', 'just test 鍝堝搱鍝?', '2012-04-23 04:24:47', 'face1.gif', 'pic1.gif', null, null, '1', null);
INSERT INTO `front_message` VALUES ('4', '1', 'just test 鍝堝搱鍝?', '2012-04-23 04:24:47', 'face1.gif', 'pic1.gif', null, null, '1', null);
INSERT INTO `front_message` VALUES ('5', '1', 'just test 鍝堝搱鍝?', '2012-04-23 04:24:47', 'face1.gif', 'pic1.gif', null, null, '1', null);
INSERT INTO `front_message` VALUES ('6', '1', 'just test 鍝堝搱鍝?', '2012-04-23 04:24:47', 'face1.gif', 'pic1.gif', null, null, '1', null);
INSERT INTO `front_message` VALUES ('7', '1', 'just test 鍝堝搱鍝?', '2012-04-23 04:24:47', 'face1.gif', 'pic1.gif', null, null, '1', null);
INSERT INTO `front_message` VALUES ('8', '1', 'just test 鍝堝搱鍝?', '2012-04-23 04:24:47', 'face1.gif', 'pic1.gif', null, null, '1', null);
INSERT INTO `front_message` VALUES ('9', '1', 'just test 鍝堝搱鍝?', '2012-04-23 04:24:47', 'face1.gif', 'pic1.gif', null, null, '1', null);
INSERT INTO `front_message` VALUES ('22', '1', '鍝堝搱鍝堝搱鎴戣鍙戣〃鐣欒█', '2012-04-24 04:59:57', 'face1.gif', 'pic1.gif', null, null, '0', '0');
INSERT INTO `front_message` VALUES ('23', '1', '鎾掓棪娉曢樋鏂拏鑺樋鏂拏鑺樋鏂拏鑺樋鏂拏鑺樋鏂拏鑺?, '2012-04-24 05:05:11', 'face1.gif', 'pic1.gif', null, null, '0', '0');
INSERT INTO `front_message` VALUES ('24', '1', '闃挎柉钂傝姮', '2012-04-24 05:05:27', 'face1.gif', 'pic1.gif', null, null, '0', '0');
INSERT INTO `front_message` VALUES ('25', '1', '闃胯惃寰峰彂灏勭偣鍙戞柉钂傝姮鏂拏鑺?, '2012-04-24 05:07:52', 'face1.gif', 'pic1.gif', null, null, '0', '0');
INSERT INTO `front_message` VALUES ('26', '1', '涓汉绗笁涓湴鏂?, '2012-04-24 05:08:22', 'face1.gif', 'pic1.gif', null, null, '1', '0');
INSERT INTO `front_message` VALUES ('27', '1', '鍞?鐑﹀憖 鎴戠儲鍛€ 鏀硅捣鏉ョ棝鑻﹀憖~~~', '2012-04-24 07:09:34', 'face5.gif', 'pic4.gif', null, null, '1', '0');
INSERT INTO `front_message` VALUES ('28', '1', 'asdfds 鏂拏鑺?, '2012-04-24 07:11:28', 'face9.gif', 'pic9.gif', null, null, '1', '0');
INSERT INTO `front_message` VALUES ('29', '1', '闃挎柉钂傝姮', '2012-04-24 07:11:49', 'face16.gif', 'pic2.gif', null, null, '1', '0');

-- ----------------------------
-- Table structure for `front_user`
-- ----------------------------
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
  `update_time` varchar(20) DEFAULT NULL,
  `approve_status` tinyint(4) NOT NULL,
  `available` tinyint(4) NOT NULL COMMENT '绂佺敤鐘舵€?,
  `record_status` tinyint(4) NOT NULL COMMENT '鐘舵€佹爣璇嗭紙閫昏緫鍒犻櫎瀛楁锛?,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_account` (`user_account`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of front_user
-- ----------------------------
INSERT INTO `front_user` VALUES ('1', 'renlei', '浠荤', 'AG1XA775ZHGE58E78EE919Z599N0N917', '鐢?, 'teacher', '2012-04-09', '鍥藉', '110', '1124715454@qq.com', '2012-04-20 00:00:00', '2012-04-20 00:00:00', '1', '0', '1');
INSERT INTO `front_user` VALUES ('2', 'test', 'test', 'Z98ZE159GEAH9N7N509XGX8NAEA71GZE', '鐢?, 'teacher', '2012-04-11', 'test', '', 'boleyn@test.com', '2012-04-20 00:00:00', '2012-04-20 00:00:00', '1', '1', '1');
INSERT INTO `front_user` VALUES ('3', 'sss', 'sss', '0ZHK9KZ9059KZ9ZX0NZZX8808XAKNX8A', '鐢?, 'teacher', '2012-04-11', 'test', '', 'sdfsd', '2012-04-20 00:00:00', '2012-04-20 00:00:00', '1', '0', '0');
INSERT INTO `front_user` VALUES ('4', 'sssssss', 'sssssss', 'HEZ51HZ9HZ80Z557Z59EXAZZ97Z99AHN', '鐢?, 'teacher', '2012-04-11', '', '', 'sssssss', '2012-04-20 00:00:00', '2012-04-20 00:00:00', '0', '0', '1');
INSERT INTO `front_user` VALUES ('5', 'sssssssss', 'ssssssss', '9AKKGG97Z9Z59NEENKNHKGEZZ8Z11X98', '鐢?, 'teacher', '2012-04-11', '', '', 'renlei413326889@163.com', '2012-04-20 00:00:00', '2012-04-20 00:00:00', '0', '0', '1');
INSERT INTO `front_user` VALUES ('6', 'boleyn', 'boleyn', 'HAGZK9A91HHHNGG1AZ1GK1XH95E5Z891', '鐢?, 'teacher', '', '', '', 'renlei413326889@163.com', '2012-04-20 00:00:00', '2012-04-20 00:00:00', '1', '1', '0');
INSERT INTO `front_user` VALUES ('7', 'k', 'k', 'XHZ095N9G910K9011XKEXZK7ZAZZ88NX', '鐢?, 'teacher', '2012-05-01', '', '', '1350880086@qq.com', '2012-05-05 02:38:23', null, '0', '1', '1');

-- ----------------------------
-- Table structure for `monitor`
-- ----------------------------
DROP TABLE IF EXISTS `monitor`;
CREATE TABLE `monitor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `loginfo` text,
  `operate_time` datetime DEFAULT NULL,
  `operator` varchar(60) DEFAULT NULL,
  `class_name` varchar(50) DEFAULT NULL,
  `type_name` varchar(50) DEFAULT NULL,
  `status` char(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of monitor
-- ----------------------------
INSERT INTO `monitor` VALUES ('1', '<font color=\"#ff0000\">feng</font>  娣诲姞锛氱數瀛愬浘涔﹂', '2012-04-15 12:15:53', 'feng', '璧勬簮搴?, '璧勬簮搴?, 'add');
INSERT INTO `monitor` VALUES ('2', '<font color=\"#ff0000\">feng</font>  娣诲姞锛欿12璧勬簮搴?, '2012-04-15 12:20:34', 'feng', '璧勬簮搴?, '璧勬簮搴?, 'add');
INSERT INTO `monitor` VALUES ('3', '<font color=\"#ff0000\">feng</font>  娣诲姞锛氳鏂囪浠跺簱', '2012-04-15 12:21:01', 'feng', '璧勬簮搴?, '璧勬簮搴?, 'add');
INSERT INTO `monitor` VALUES ('4', '<font color=\"#ff0000\">feng</font>  娣诲姞锛氭柊鍗庤嫳璇珯', '2012-04-15 12:21:10', 'feng', '璧勬簮搴?, '璧勬簮搴?, 'add');
INSERT INTO `monitor` VALUES ('5', '<font color=\"#ff0000\">feng</font>  娣诲姞锛氭牎鍥綉FTP', '2012-04-15 12:21:19', 'feng', '璧勬簮搴?, '璧勬簮搴?, 'add');
INSERT INTO `monitor` VALUES ('6', '<font color=\"#ff0000\">feng</font>  娣诲姞锛氳棰戞湇鍔″櫒', '2012-04-15 12:21:26', 'feng', '璧勬簮搴?, '璧勬簮搴?, 'add');
INSERT INTO `monitor` VALUES ('7', '<font color=\"#ff0000\">feng</font>  淇敼锛氭柊鍗庤嫳璇珯', '2012-04-15 12:23:15', 'feng', '璧勬簮搴?, '璧勬簮搴?, 'update');
INSERT INTO `monitor` VALUES ('8', '<font color=\"#ff0000\">feng</font>  淇敼锛氭牎鍥綉FTP', '2012-04-15 12:23:28', 'feng', '璧勬簮搴?, '璧勬簮搴?, 'update');
INSERT INTO `monitor` VALUES ('9', '<font color=\"#ff0000\">feng</font>  淇敼锛氳棰戞湇鍔″櫒', '2012-04-15 12:23:45', 'feng', '璧勬簮搴?, '璧勬簮搴?, 'update');
INSERT INTO `monitor` VALUES ('10', '<font color=\"#ff0000\">feng</font>  淇敼锛氳鏂囪浠跺簱', '2012-04-15 12:24:11', 'feng', '璧勬簮搴?, '璧勬簮搴?, 'update');
INSERT INTO `monitor` VALUES ('11', '<font color=\"#ff0000\">feng</font>  淇敼锛氱數瀛愬浘涔﹂', '2012-04-15 12:24:27', 'feng', '璧勬簮搴?, '璧勬簮搴?, 'update');
INSERT INTO `monitor` VALUES ('12', '<font color=\"#ff0000\">feng</font>  娣诲姞锛氫腑鍗庝汉姘戝叡鍜屽浗鏁欒偛閮?, '2012-04-15 15:07:25', 'feng', '鍙嬫儏閾炬帴', '鍙嬫儏閾炬帴', 'add');
INSERT INTO `monitor` VALUES ('13', '<font color=\"#ff0000\">feng</font>  娣诲姞锛氬箍涓滅渷鏁欒偛鍘?, '2012-04-15 15:08:05', 'feng', '鍙嬫儏閾炬帴', '鍙嬫儏閾炬帴', 'add');
INSERT INTO `monitor` VALUES ('14', '<font color=\"#ff0000\">feng</font>  娣诲姞锛氭繁鍦冲競鏁欒偛灞€', '2012-04-15 15:08:18', 'feng', '鍙嬫儏閾炬帴', '鍙嬫儏閾炬帴', 'add');
INSERT INTO `monitor` VALUES ('15', '<font color=\"#ff0000\">feng</font>  娣诲姞锛氬皯骞翠箣鏄?, '2012-04-15 15:08:30', 'feng', '鍙嬫儏閾炬帴', '鍙嬫儏閾炬帴', 'add');
INSERT INTO `monitor` VALUES ('16', '<font color=\"#ff0000\">feng</font>  娣诲姞锛氱敓鍛芥暀鑲?, '2012-04-15 15:08:40', 'feng', '鍙嬫儏閾炬帴', '鍙嬫儏閾炬帴', 'add');
INSERT INTO `monitor` VALUES ('17', '<font color=\"#ff0000\">feng</font>  娣诲姞锛氭牎闀垮瘎璇?, '2012-04-15 15:51:36', 'feng', '鍏ㄦ櫙濉樺皬', '鏍￠暱瀵勮', 'add');
INSERT INTO `monitor` VALUES ('18', '<font color=\"#ff0000\">feng</font>  娣诲姞锛氭垜鏍″紑灞曞悜鐢樿們鐪佸湴闇囩伨鍖衡€滈€佹俯鏆栥€佺尞鐖卞績鈥濇椿鍔?, '2012-04-15 16:55:23', 'feng', '濉樺皬鏂伴椈', '濉樺皬鏂伴椈', 'add');
INSERT INTO `monitor` VALUES ('19', '<font color=\"#ff0000\">feng</font>  娣诲姞锛氬鏈楀皬瀛﹀厷鏀儴绾㈣壊涔嬫梾', '2012-04-15 16:55:35', 'feng', '濉樺皬鏂伴椈', '濉樺皬鏂伴椈', 'add');
INSERT INTO `monitor` VALUES ('20', '<font color=\"#ff0000\">feng</font>  娣诲姞锛氣€滃井绗戣繋澶ц繍锛屾涔愬簡鍏竴鈥濊壓鏈妭灞曟紨', '2012-04-15 16:55:47', 'feng', '濉樺皬鏂伴椈', '濉樺皬鏂伴椈', 'add');
INSERT INTO `monitor` VALUES ('21', '<font color=\"#ff0000\">feng</font>  娣诲姞锛氬鏈楀皬瀛﹀笀鐢熲€滅櫨绗戝浘鈥濊繋澶ц繍', '2012-04-15 16:55:59', 'feng', '濉樺皬鏂伴椈', '濉樺皬鏂伴椈', 'add');
INSERT INTO `monitor` VALUES ('22', '<font color=\"#ff0000\">feng</font>  娣诲姞锛氱鍥涘眾鈥滅幆淇濅箣鏄熲€濆皬瀛︾敓绉戞妧澶ц禌璇曢', '2012-04-15 16:56:10', 'feng', '濉樺皬鏂伴椈', '濉樺皬鏂伴椈', 'add');
INSERT INTO `monitor` VALUES ('23', '<font color=\"#ff0000\">feng</font>  娣诲姞锛氬叡浜笁涓暀瀛﹀伐浣滈噸瑕佹枃浠躲€?, '2012-04-15 16:56:18', 'feng', '濉樺皬鏂伴椈', '濉樺皬鏂伴椈', 'add');
INSERT INTO `monitor` VALUES ('24', '<font color=\"#ff0000\">feng</font>  娣诲姞锛氬叡浜笁涓暀瀛﹀伐浣滈噸瑕佹枃浠躲€?, '2012-04-15 21:04:35', 'feng', '鏍″洯鍏憡', '鏍″洯鍏憡', 'add');
INSERT INTO `monitor` VALUES ('25', '<font color=\"#ff0000\">feng</font>  淇敼锛氭牎闀垮瘎璇?, '2012-04-15 21:13:49', 'feng', '鍏ㄦ櫙濉樺皬', '鏍￠暱瀵勮', 'update');
INSERT INTO `monitor` VALUES ('26', '<font color=\"#ff0000\">feng</font>  淇敼锛氬叡浜笁涓暀瀛﹀伐浣滈噸瑕佹枃浠躲€?, '2012-04-17 11:56:04', 'feng', '濉樺皬鏂伴椈', '濉樺皬鏂伴椈', 'update');
INSERT INTO `monitor` VALUES ('27', '<font color=\"#ff0000\">feng</font>  娣诲姞锛氭垜鏍″睍寮€鐚埍蹇冩椿鍔?, '2012-04-17 11:59:50', 'feng', '濉樺皬鏂伴椈', '濉樺皬鏂伴椈', 'add');
INSERT INTO `monitor` VALUES ('28', '<font color=\"#ff0000\">feng</font>  淇敼锛欿12璧勬簮搴?, '2012-04-17 12:25:52', 'feng', '璧勬簮搴?, '璧勬簮搴?, 'update');
INSERT INTO `monitor` VALUES ('29', '<font color=\"#ff0000\">feng</font>  淇敼锛氱數瀛愬浘涔﹂', '2012-04-17 12:26:08', 'feng', '璧勬簮搴?, '璧勬簮搴?, 'update');
INSERT INTO `monitor` VALUES ('30', '<font color=\"#ff0000\">feng</font>  淇敼锛氳鏂囪浠跺簱', '2012-04-17 12:26:26', 'feng', '璧勬簮搴?, '璧勬簮搴?, 'update');
INSERT INTO `monitor` VALUES ('31', '<font color=\"#ff0000\">feng</font>  淇敼锛氭柊鍗庤嫳璇珯', '2012-04-17 12:26:50', 'feng', '璧勬簮搴?, '璧勬簮搴?, 'update');
INSERT INTO `monitor` VALUES ('32', '<font color=\"#ff0000\">feng</font>  淇敼锛氭牎鍥綉FTP', '2012-04-17 12:27:03', 'feng', '璧勬簮搴?, '璧勬簮搴?, 'update');
INSERT INTO `monitor` VALUES ('33', '<font color=\"#ff0000\">feng</font>  淇敼锛氳棰戞湇鍔″櫒', '2012-04-17 12:27:20', 'feng', '璧勬簮搴?, '璧勬簮搴?, 'update');
INSERT INTO `monitor` VALUES ('34', '<font color=\"#ff0000\">feng</font>  娣诲姞锛氳涓婁紶鍥剧墖', '2012-04-30 09:26:54', 'feng', '鍥剧墖閾炬帴', '杞挱鍥剧墖', 'add');
INSERT INTO `monitor` VALUES ('35', '<font color=\"#ff0000\">feng</font>  娣诲姞锛氭牎闀?, '2012-04-30 11:51:22', 'feng', '鍥剧墖閾炬帴', '鏍￠暱', 'add');
INSERT INTO `monitor` VALUES ('36', '<font color=\"#ff0000\">feng</font>  娣诲姞锛氬壇鏍￠暱', '2012-04-30 11:51:33', 'feng', '鍥剧墖閾炬帴', '鍓牎闀?, 'add');
INSERT INTO `monitor` VALUES ('37', '<font color=\"#ff0000\">feng</font>  娣诲姞锛氭嫢鎶辫摑鑹茬殑娴锋磱', '2012-04-30 11:54:23', 'feng', '涓夊懗寰疯偛', '涓夊懗寰疯偛', 'add');
INSERT INTO `monitor` VALUES ('38', '<font color=\"#ff0000\">feng</font>  娣诲姞锛氬叧鐖辩敓鍛? 瀹夊叏鍑鸿', '2012-04-30 11:54:59', 'feng', '涓夊懗寰疯偛', '涓夊懗寰疯偛', 'add');
INSERT INTO `monitor` VALUES ('39', '<font color=\"#ff0000\">feng</font>  娣诲姞锛氭垜鏍′妇琛屸€滀笘鐣岄槻娌荤粨鏍哥梾鏃モ€濆浼犳湀娲诲姩', '2012-04-30 11:55:06', 'feng', '涓夊懗寰疯偛', '涓夊懗寰疯偛', 'add');
INSERT INTO `monitor` VALUES ('40', '<font color=\"#ff0000\">feng</font>  娣诲姞锛氬鏈楀皬瀛﹂搧璺畨鍏ㄦ硶瑙勫浼犵墖', '2012-04-30 11:55:14', 'feng', '涓夊懗寰疯偛', '涓夊懗寰疯偛', 'add');
INSERT INTO `monitor` VALUES ('41', '<font color=\"#ff0000\">feng</font>  娣诲姞锛氬鏈楀皬瀛︾涓夊眾鑻辫鑺傛椿鍔ㄩ噰鎾?, '2012-04-30 11:55:27', 'feng', '涓夊懗寰疯偛', '骞哥璇惧爞', 'add');
INSERT INTO `monitor` VALUES ('42', '<font color=\"#ff0000\">feng</font>  娣诲姞锛氬悜涓涢鍙斿彅瀛︿範锛屼氦涓€鍏冪壒娈婇槦璐规椿鍔?, '2012-04-30 13:01:36', 'feng', '涓夊懗寰疯偛', '鐢熸€佷箰鍥?, 'add');
INSERT INTO `monitor` VALUES ('43', '<font color=\"#ff0000\">feng</font>  娣诲姞锛氳仈绯绘垜浠?, '2012-05-05 18:01:24', 'feng', '鏂囧瓧閾炬帴', '鑱旂郴鎴戜滑', 'add');
INSERT INTO `monitor` VALUES ('44', '<font color=\"#ff0000\">feng</font>  淇敼锛氳仈绯绘垜浠?, '2012-05-05 18:01:33', 'feng', '鏂囧瓧閾炬帴', '鑱旂郴鎴戜滑', 'update');
INSERT INTO `monitor` VALUES ('45', '<font color=\"#ff0000\">feng</font>  娣诲姞锛氳仈绯绘垜浠?, '2012-05-05 19:13:55', 'feng', '鑱旂郴鎴戜滑', '鑱旂郴鎴戜滑', 'add');

-- ----------------------------
-- Table structure for `news_ad_manage`
-- ----------------------------
DROP TABLE IF EXISTS `news_ad_manage`;
CREATE TABLE `news_ad_manage` (
  `ad_id` int(11) NOT NULL AUTO_INCREMENT,
  `ad_name` varchar(100) DEFAULT NULL,
  `ad_position` int(11) DEFAULT NULL,
  `ad_type_id` int(11) DEFAULT NULL,
  `ad_img_url` varchar(100) DEFAULT NULL,
  `ad_http_url` varchar(200) DEFAULT NULL,
  `person_code` varchar(20) DEFAULT NULL,
  `ad_announce_date` datetime DEFAULT NULL,
  `ad_validity_date` datetime DEFAULT NULL,
  `if_display` char(1) DEFAULT NULL,
  PRIMARY KEY (`ad_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news_ad_manage
-- ----------------------------
INSERT INTO `news_ad_manage` VALUES ('1', '2222', '0', '1', '', '222', 'feng', '2012-02-29 16:01:51', '2012-02-29 16:01:51', '1');

-- ----------------------------
-- Table structure for `news_ad_type`
-- ----------------------------
DROP TABLE IF EXISTS `news_ad_type`;
CREATE TABLE `news_ad_type` (
  `class_id` varchar(20) NOT NULL,
  `ad_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `ad_type_name` varchar(100) DEFAULT NULL,
  `ad_height` int(11) DEFAULT NULL,
  `ad_width` int(11) DEFAULT NULL,
  `ad_type_tag` char(1) NOT NULL,
  PRIMARY KEY (`ad_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news_ad_type
-- ----------------------------
INSERT INTO `news_ad_type` VALUES ('100002', '1', '1', '160', '735', '0');

-- ----------------------------
-- Table structure for `news_content_manage`
-- ----------------------------
DROP TABLE IF EXISTS `news_content_manage`;
CREATE TABLE `news_content_manage` (
  `news_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `announce_type` char(1) DEFAULT NULL,
  `news_title` varchar(200) DEFAULT NULL,
  `news_content` longtext,
  `news_keyword` text,
  `news_writer` varchar(50) DEFAULT NULL,
  `news_source` varchar(100) DEFAULT NULL,
  `announce_person` varchar(50) DEFAULT NULL,
  `news_date` datetime DEFAULT NULL,
  `news_template` varchar(100) DEFAULT NULL,
  `html_file_name` varchar(100) DEFAULT NULL,
  `if_img_news` char(1) DEFAULT NULL,
  `img_news_address` varchar(200) DEFAULT NULL,
  `img_news_title` longtext,
  `if_title_img` varchar(1) DEFAULT NULL,
  `if_top_row` char(1) DEFAULT NULL,
  `if_recommend` char(1) DEFAULT NULL,
  `http_url` varchar(200) DEFAULT NULL,
  `annex_address` varchar(200) DEFAULT NULL,
  `if_vod_news` char(1) DEFAULT NULL,
  `display_order_id` int(11) DEFAULT NULL,
  `check_person` varchar(20) DEFAULT NULL,
  `check_date` datetime DEFAULT NULL,
  `check_flag` char(1) DEFAULT NULL,
  `visit_count` int(11) DEFAULT NULL,
  `newsFilesPath` text,
  `dept_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news_content_manage
-- ----------------------------
INSERT INTO `news_content_manage` VALUES ('1', '1', '鐢靛瓙鍥句功棣?, '<p>&nbsp;</p>', '', '', '', '3', '2012-04-14 12:15:21', '1', null, null, '', '', null, '0', null, 'http://192.168.10.2:8080/', null, null, '0', null, '2012-04-17 12:26:08', '1', '0', 'client/htmlfiles/20120414121521/', '40');
INSERT INTO `news_content_manage` VALUES ('2', '1', 'K12璧勬簮搴?, '<p>&nbsp;</p>', '', '', '', '3', '2012-04-15 12:20:22', '1', null, null, '', '', null, '0', null, 'http://192.168.10.3/', null, null, '0', null, '2012-04-17 12:25:52', '1', '0', 'client/htmlfiles/20120415122022/', '40');
INSERT INTO `news_content_manage` VALUES ('3', '1', '璇枃璇句欢搴?, '<p>&nbsp;</p>', '', '', '', '3', '2012-04-13 12:20:48', '1', null, null, '', '', null, '0', null, 'http://192.168.10.3:82/', null, null, '0', null, '2012-04-17 12:26:26', '1', '0', 'client/htmlfiles/20120413122048/', '40');
INSERT INTO `news_content_manage` VALUES ('4', '1', '鏂板崕鑻辫绔?, '<p>&nbsp;</p>', '', '', '', '3', '2012-04-10 12:21:01', '1', null, null, '', '', null, '0', null, 'http://192.168.10.254:85/', null, null, '0', null, '2012-04-17 12:26:50', '1', '0', 'client/htmlfiles/20120410122101/', '40');
INSERT INTO `news_content_manage` VALUES ('5', '1', '鏍″洯缃慒TP', '<p>&nbsp;</p>', '', '', '', '3', '2012-04-11 12:21:10', '1', null, null, '', '', null, '0', null, 'ftp://192.168.10.2/', null, null, '0', null, '2012-04-17 12:27:03', '1', '0', 'client/htmlfiles/20120411122110/', '40');
INSERT INTO `news_content_manage` VALUES ('6', '1', '瑙嗛鏈嶅姟鍣?, '<p>&nbsp;</p>', '', '', '', '3', '2012-04-12 12:21:19', '1', null, null, '', '', null, '0', null, 'mms://192.168.10.4/', null, null, '0', null, '2012-04-17 12:27:20', '1', '0', 'client/htmlfiles/20120412122119/', '40');
INSERT INTO `news_content_manage` VALUES ('7', '1', '涓崕浜烘皯鍏卞拰鍥芥暀鑲查儴', '<p>&nbsp;</p>', '', '', '', '3', '2012-04-15 15:07:04', '1', null, null, '', null, null, '0', null, '', null, null, '0', null, '2012-04-15 15:07:25', '1', '0', 'client/htmlfiles/20120415150704/', '40');
INSERT INTO `news_content_manage` VALUES ('8', '1', '骞夸笢鐪佹暀鑲插巺', '<p>&nbsp;</p>', '', '', '', '3', '2012-04-15 15:07:26', '1', null, null, '', null, null, '0', null, '', null, null, '0', null, '2012-04-15 15:08:05', '1', '0', 'client/htmlfiles/20120415150726/', '40');
INSERT INTO `news_content_manage` VALUES ('9', '1', '娣卞湷甯傛暀鑲插眬', '<p>&nbsp;</p>', '', '', '', '3', '2012-04-15 15:08:12', '1', null, null, '', null, null, '0', null, '', null, null, '0', null, '2012-04-15 15:08:18', '1', '0', 'client/htmlfiles/20120415150812/', '40');
INSERT INTO `news_content_manage` VALUES ('10', '1', '灏戝勾涔嬫槦', '<p>&nbsp;</p>', '', '', '', '3', '2012-04-15 15:08:18', '1', null, null, '', null, null, '0', null, '', null, null, '0', null, '2012-04-15 15:08:30', '1', '0', 'client/htmlfiles/20120415150818/', '40');
INSERT INTO `news_content_manage` VALUES ('11', '1', '鐢熷懡鏁欒偛', '<p>&nbsp;</p>', '', '', '', '3', '2012-04-15 15:08:30', '1', null, null, '', null, null, '0', null, '', null, null, '0', null, '2012-04-15 15:08:40', '1', '0', 'client/htmlfiles/20120415150830/', '40');
INSERT INTO `news_content_manage` VALUES ('12', '0', '鏍￠暱瀵勮', '<p style=\"padding-bottom:0px; padding-left:0px; padding-right:0px; padding-top:0px\">&nbsp;鍙跺皬鍕囷紝鐢凤紝1957骞寸敓锛屽ぇ瀛︽湰绉戯紝涓叡鍏氬憳锛屼腑瀛﹂珮绾ф暀甯堛€傜幇浠绘繁鍦冲競濉樻湕灏忓鏍￠暱鍏煎厷鏀儴涔﹁锛屽崡灞卞尯妫嬬墝鍗忎細鍓細闀匡紝涓浗瑗块儴鏁欒偛椤鹃棶锛屼腑鍥藉皯骞村厛閿嬮槦宸ヤ綔瀛︿細灏戝勾鍎跨淇℃伅鐮旂┒鍛樸€傛媴浠诲叚骞寸骇鍝佸痉涓庣ぞ浼氳銆?974骞村弬鍔犳暀鑲插伐浣滐紝鍏堝悗鎷呬换澶ч槦杈呭鍛樸€佸洟濮斾功璁般€佸壇鏍￠暱銆佹牎闀垮吋鍏氭敮閮ㄤ功璁般€傛浘涓冩琚瘎涓烘繁鍦冲競浼樼鏁欏笀銆佸厛杩涙暀鑲插伐浣滆€呫€佸厛杩涙牎闀匡紱鍗佸娆¤璇勪负鍗楀北鍖轰紭绉€鍏氬姟宸ヤ綔鑰呫€佷紭绉€鍏变骇鍏氬憳銆佸痉鑲插厛杩涘伐浣滆€呫€佹硶鍒跺浼犳暀鑲插厛杩涘伐浣滆€呫€佸畨鍏ㄧ鐞嗙獊鍑鸿础鐚釜浜虹瓑锛涙繁鍦冲競绗洓鏈熷皬瀛︽牎闀挎彁楂樼彮鈥滃弻浼樺鍛樷€濓紱鍏ㄥ浗涓皬瀛︽绫绘暀瀛﹀疄楠岃棰樹紭绉€涓汉銆傛挵鍐欑殑鍗佸绡囪鏂囧湪鍥藉銆佺渷銆佸競銆佸尯鍒婄墿鍙戣〃骞惰幏濂栥€傚叾涓€婃祬璋堟绫绘暀瀛︿績杩涘痉鑲茬殑鐮旂┒銆嬭幏鍏ㄥ浗涓皬瀛︾鐮旇鏂囩壒绛夊銆?/p>', '鏍￠暱瀵勮', '', '', '3', '2012-04-15 15:49:49', '1', 'client/htmlfiles/20120415154949/20120415154949_1334476296265.html', null, '', '', null, '0', null, '', null, null, '0', null, '2012-04-15 21:13:49', '1', '14', 'client/htmlfiles/20120415154949/', '40');
INSERT INTO `news_content_manage` VALUES ('13', '0', '鎴戞牎寮€灞曞悜鐢樿們鐪佸湴闇囩伨鍖衡€滈€佹俯鏆栥€佺尞鐖卞績鈥濇椿鍔?, '<p>&nbsp;</p>', '鎴戞牎寮€灞曞悜鐢樿們鐪佸湴闇囩伨鍖衡€滈€佹俯鏆栥€佺尞鐖卞績鈥濇椿鍔?, '', '', '3', '2012-04-15 16:54:53', '1', 'client/htmlfiles/20120415165453/20120415165453_1334480123875.html', null, '', null, null, '0', null, '', null, null, '0', null, '2012-04-15 16:55:23', '1', '0', 'client/htmlfiles/20120415165453/', '40');
INSERT INTO `news_content_manage` VALUES ('14', '0', '濉樻湕灏忓鍏氭敮閮ㄧ孩鑹蹭箣鏃?, '<p>&nbsp;</p>', '濉樻湕灏忓鍏氭敮閮ㄧ孩鑹蹭箣鏃?, '', '', '3', '2012-04-15 16:55:24', '1', 'client/htmlfiles/20120415165524/20120415165524_1334480135171.html', null, '', null, null, '0', null, '', null, null, '0', null, '2012-04-15 16:55:35', '1', '0', 'client/htmlfiles/20120415165524/', '40');
INSERT INTO `news_content_manage` VALUES ('15', '0', '鈥滃井绗戣繋澶ц繍锛屾涔愬簡鍏竴鈥濊壓鏈妭灞曟紨', '<p>&nbsp;</p>', '鈥滃井绗戣繋澶ц繍锛屾涔愬簡鍏竴鈥濊壓鏈妭灞曟紨', '', '', '3', '2012-04-15 16:55:35', '1', 'client/htmlfiles/20120415165535/20120415165535_1334480147328.html', null, '', null, null, '0', null, '', null, null, '0', null, '2012-04-15 16:55:47', '1', '0', 'client/htmlfiles/20120415165535/', '40');
INSERT INTO `news_content_manage` VALUES ('16', '0', '濉樻湕灏忓甯堢敓鈥滅櫨绗戝浘鈥濊繋澶ц繍', '<p>&nbsp;</p>', '濉樻湕灏忓甯堢敓鈥滅櫨绗戝浘鈥濊繋澶ц繍', '', '', '3', '2012-04-15 16:55:47', '1', 'client/htmlfiles/20120415165547/20120415165547_1334480159234.html', null, '', null, null, '0', null, '', null, null, '0', null, '2012-04-15 16:55:59', '1', '0', 'client/htmlfiles/20120415165547/', '40');
INSERT INTO `news_content_manage` VALUES ('17', '0', '绗洓灞娾€滅幆淇濅箣鏄熲€濆皬瀛︾敓绉戞妧澶ц禌璇曢', '<p>&nbsp;</p>', '绗洓灞娾€滅幆淇濅箣鏄熲€濆皬瀛︾敓绉戞妧澶ц禌璇曢', '', '', '3', '2012-04-15 16:55:59', '1', 'client/htmlfiles/20120415165559/20120415165559_1334480170390.html', null, '', null, null, '0', null, '', null, null, '0', null, '2012-04-15 16:56:10', '1', '0', 'client/htmlfiles/20120415165559/', '40');
INSERT INTO `news_content_manage` VALUES ('18', '0', '鍏变韩涓変釜鏁欏宸ヤ綔閲嶈鏂囦欢銆?, '<p>&nbsp;鍏变韩涓変釜鏁欏宸ヤ綔閲嶈鏂囦欢銆?/p>', '鍏变韩涓変釜鏁欏宸ヤ綔閲嶈鏂囦欢銆?, '', '', '3', '2012-04-15 16:56:10', '1', 'client/htmlfiles/20120415165610/20120415165610_1334480178406.html', null, '', '', null, '0', null, '', null, null, '0', null, '2012-04-17 11:56:04', '1', '39', 'client/htmlfiles/20120415165610/', '40');
INSERT INTO `news_content_manage` VALUES ('19', '0', '鍏变韩涓変釜鏁欏宸ヤ綔閲嶈鏂囦欢銆?, '<p>&nbsp;</p>', '鍏变韩涓変釜鏁欏宸ヤ綔閲嶈鏂囦欢銆?, '', '', '3', '2012-04-15 21:04:25', '1', 'client/htmlfiles/20120415210425/20120415210425_1334495075937.html', null, '', null, null, '0', null, '', null, null, '0', null, '2012-04-15 21:04:35', '1', '1', 'client/htmlfiles/20120415210425/', '40');
INSERT INTO `news_content_manage` VALUES ('20', '0', '鎴戞牎灞曞紑鐚埍蹇冩椿鍔?, '<p>&nbsp;&nbsp;&nbsp;&nbsp;濉樻湕灏忓鍧愯惤鍦ㄩ鏅涓界殑娣卞湷澶у鍩庣晹锛屽穽宸嶅鏈楀北涓嬶紝鏄崡灞卞尯灞炲畬鍏ㄥ皬瀛︺€傚師鍚嶁€滀笂濉樺皬瀛︹€濓紝1952骞寸敱涓夋墍绉佸【鍚堝苟鎴愮珛銆?958骞存洿鍚嶄负鈥滃鏈楀皬瀛︹€濓紝涓€鐩存部鐢ㄨ嚦浠娿€?br />銆€銆€瀛︽牎鎴愮珛鍚庯紝鍘嗗眾瀛︽牎棰嗗閮芥敞鎰忕姝ｅ姙瀛︽€濇兂锛屽缁堝潥鎸佸痉銆佹櫤銆佷綋鍏ㄩ潰鍙戝睍鐨勬暀鑲叉柟閽堬紝濮嬬粓鍧氭寔寤鸿涓€鏀礌璐ㄩ珮锛岀ǔ瀹氭€у己锛屾不瀛︿弗璋ㄧ殑鏁欏笀闃熶紞锛屽缁堝潥鎸佸湪鏁欒偛鏁欏鏀归潻閿愭剰杩涘彇锛屼笉鏂垱鏂帮紝鎶婂鐢熷煿鍏绘垚涓哄叏闈㈠彂灞曠殑绀句細涓讳箟寤鸿浜烘墠銆傝繖鏄鏈楀皬瀛﹀姙瀛︾殑閲嶈鐗瑰緛銆?br />銆€銆€鍏氱殑鍗佷竴灞婁笁涓叏浼氬悗锛屽鏈楀皬瀛﹁繘鍏ョǔ瀹氬彂灞曠殑鏃舵湡銆傚鏍¤繘涓€姝ヨ疮褰诲厷鐨勬暀鑲叉柟閽堬紝寮€灞曟暀鑲叉暀瀛︽敼闈┿€備互鎸夌収鈥滀笁涓潰鍚戔€濄€佲€滀箟鍔℃暀鑲叉硶鈥濆拰寰枫€佹櫤銆佷綋銆佺編銆佸姵鍏ㄩ潰鍙戝睍鐨勭簿绁烇紝涓烘彁楂樺叏姘戞棌绱犺川鍜屽煿鍏讳紭绉€浜烘墠浣滃嚭璐＄尞涓哄姙瀛︽寚瀵兼€濇兂銆備粠涓ョ鐞嗭紝渚濇硶娌绘牎锛屽煿鑲蹭簡鈥滄暚涓氣€濄€佲€滃垱鏂扳€濄€佲€滀弗璋ㄢ€濄€佲€滄眰瀹炩€濈殑鏁欓鍜屸€滃皧甯堚€濄€佲€滃畧绾€濄€佲€滃嫟瀛︹€濄€佲€滃杩涒€濈殑瀛﹂銆?br />銆€銆€1986骞达紝鐢变簬鍘熸湁鏍¤垗鐮存棫涓嶅牚锛屽湪涓婄骇棰嗗鐨勫叧鎬€涓嬶紝瀛︽牎鏄撳潃鏂板缓銆傜儹蹇冩暀鑲蹭簨涓氱殑閮戠睄澶╁厛鐢熸崘璧勪慨寤轰簡涓€骞簩灞傜殑鏁欏妤笺€?991骞?寤洪€犱簡鍥涘眰鐨勬暀瀛﹀ぇ妤间竴骞€?992骞达紝鍦ㄥ鏈椼€佺鍏夈€侀暱婧愪笁涓潙濮旂殑鏀寔涓嬮『鍒╁緛寰楁柊杩愬姩鍦虹敤鍦般€?994骞达紝鍦ㄦ暀鑲插眬鏀寔涓嬶紝寤鸿捣鏁欏伐瀹胯垗妤硷紝鏁欏伐椁愬巺锛?00绫宠窇閬撳甫瓒崇悆鍦鸿繍鍔ㄥ満銆傛柊寤轰簡鐢垫暀瀹わ紝鏍″尰瀹ゃ€佸浼犳爮锛屽崌鏃楀彴銆佷綋鑲插櫒鏉愬锛屽厖瀹炰簡6800鍐屽浘涔︼紝鏂板缓鏁欏伐淇变箰閮紝瀹夎浜嗗崼鏄熷ぉ绾垮湴闈㈡帴鏀剁郴缁熴€傚鏍″崰鍦伴潰绉揪鍒?4788骞虫柟绫筹紝鏄綋鏃跺崡灞卞尯鍐呭崰鍦伴潰绉緝澶х殑灏戞暟鍑犱釜瀛︽牎涔嬩竴銆傝嚦姝わ紝瀛︽牎鍒濆叿瑙勬ā锛屾暀瀛﹁川閲忎篃鏃ョ泭鎻愰珮銆?br />銆€銆€鍦ㄦ敼鍠勫姙瀛︽潯浠剁殑鍚屾椂锛屽鏍″缁堝潥鎸佹妸寰疯偛宸ヤ綔鏀惧湪涓€鍒囧伐浣滅殑棣栦綅,鍧氭寔鏁欎功鑲蹭汉銆佹湇鍔¤偛浜恒€佺鐞嗚偛浜恒€傚湪寰疯偛宸ヤ綔涓噰鐢ㄤ簡鈥滀笁浣嶄竴浣撯€濈殑鏁欒偛妯″紡銆傚悓鏃朵笉鏂姞寮烘牎澶栧痉鑲茬綉缁滃拰寰疯偛鍩哄湴鐨勫缓璁撅紝閫愭瀹屽杽鈥滃鏍°€佺ぞ浼氥€佸搴€濅笁缁撳悎鏁欒偛缃戠粶銆傚潥鎸佷互鏁欏宸ヤ綔涓轰腑蹇冿紝瀛︽牎鎻愬€℃帰绱㈡暀瀛﹁寰嬶紝鏀硅繘鏁欏鏂规硶铏氬績鍚戝鏍″涔犮€傛暀瀛﹀伐浣滅嫚鎶撯€滃弻鍩衡€濓紝娉ㄩ噸瀛︾敓瀛︿範鑳藉姏鍜屽涔犱範鎯殑鍩瑰吇锛岃繕鐗瑰埆閲嶈绗簩璇惧爞娲诲姩鐨勫紑灞曪紝鍦ㄦ姄鏅強闈㈢殑鍚屾椂锛屽己璋冩姄鐗硅壊锛岄€愭笎褰㈡垚浜嗙編鑲茬壒鑹插拰浣撹偛鐗硅壊銆傜嫚鎶撴暀瀛﹀父瑙勭鐞嗭紝鍒跺畾浜嗐€婂鏈楀皬瀛︽暀瀛︺€佽鍫傚父瑙勩€嬨€併€婂鏈楀皬瀛︽暀鐮斿父瑙勩€佺缁勬椿鍔ㄥ父瑙勩€嬬瓑锛屽缓绔嬫暀甯堟暀瀛﹀伐浣滄墜鍐屽埗搴︺€?/p><p>&nbsp;</p>', '鎴戞牎灞曞紑鐚埍蹇冩椿鍔?, '', '', '3', '2012-04-17 11:59:27', '1', 'client/htmlfiles/20120417115927/20120417115927_1334635190140.html', null, '', null, null, '0', null, '', null, null, '0', null, '2012-04-17 11:59:50', '1', '12', 'client/htmlfiles/20120417115927/', '40');
INSERT INTO `news_content_manage` VALUES ('21', '0', '璇蜂笂浼犲浘鐗?, '', '璇蜂笂浼犲浘鐗?, '', '', '3', '2012-04-30 09:26:38', '1', 'client/htmlfiles/20120430092638/20120430092638_1335749214656.html', null, null, null, null, '0', null, '', null, null, '0', null, '2012-04-30 09:26:54', '1', '0', 'client/htmlfiles/20120430092638/', '40');
INSERT INTO `news_content_manage` VALUES ('22', '0', '鏍￠暱', '', '鏍￠暱', '', '', '3', '2012-04-30 11:51:11', '1', 'client/htmlfiles/20120430115111/20120430115111_1335757882203.html', null, null, null, null, '0', null, '', null, null, '0', null, '2012-04-30 11:51:22', '1', '0', 'client/htmlfiles/20120430115111/', '40');
INSERT INTO `news_content_manage` VALUES ('23', '0', '鍓牎闀?, '', '鍓牎闀?, '', '', '3', '2012-04-30 11:51:25', '1', 'client/htmlfiles/20120430115125/20120430115125_1335757893828.html', null, null, null, null, '0', null, '', null, null, '0', null, '2012-04-30 11:51:33', '1', '0', 'client/htmlfiles/20120430115125/', '40');
INSERT INTO `news_content_manage` VALUES ('24', '0', '鎷ユ姳钃濊壊鐨勬捣娲?, '', '鎷ユ姳钃濊壊鐨勬捣娲?, '', '', '3', '2012-04-30 11:52:59', '1', 'client/htmlfiles/20120430115259/20120430115259_1335758062984.html', null, null, null, null, '0', null, '', null, null, '0', null, '2012-04-30 11:54:22', '1', '0', 'client/htmlfiles/20120430115259/', '40');
INSERT INTO `news_content_manage` VALUES ('25', '0', '鍏崇埍鐢熷懡  瀹夊叏鍑鸿', '', '鍏崇埍鐢熷懡  瀹夊叏鍑鸿', '', '', '3', '2012-04-30 11:54:23', '1', 'client/htmlfiles/20120430115423/20120430115423_1335758099171.html', null, null, null, null, '0', null, '', null, null, '0', null, '2012-04-30 11:54:59', '1', '0', 'client/htmlfiles/20120430115423/', '40');
INSERT INTO `news_content_manage` VALUES ('26', '0', '鎴戞牎涓捐鈥滀笘鐣岄槻娌荤粨鏍哥梾鏃モ€濆浼犳湀娲诲姩', '', '鎴戞牎涓捐鈥滀笘鐣岄槻娌荤粨鏍哥梾鏃モ€濆浼犳湀娲诲姩', '', '', '3', '2012-04-30 11:54:59', '1', 'client/htmlfiles/20120430115459/20120430115459_1335758106828.html', null, null, null, null, '0', null, '', null, null, '0', null, '2012-04-30 11:55:06', '1', '0', 'client/htmlfiles/20120430115459/', '40');
INSERT INTO `news_content_manage` VALUES ('27', '0', '濉樻湕灏忓閾佽矾瀹夊叏娉曡瀹ｄ紶鐗?, '', '濉樻湕灏忓閾佽矾瀹夊叏娉曡瀹ｄ紶鐗?, '', '', '3', '2012-04-30 11:55:07', '1', 'client/htmlfiles/20120430115507/20120430115507_1335758114531.html', null, null, null, null, '0', null, '', null, null, '0', null, '2012-04-30 11:55:14', '1', '0', 'client/htmlfiles/20120430115507/', '40');
INSERT INTO `news_content_manage` VALUES ('28', '0', '濉樻湕灏忓绗笁灞婅嫳璇妭娲诲姩閲囨挿', '', '濉樻湕灏忓绗笁灞婅嫳璇妭娲诲姩閲囨挿', '', '', '3', '2012-04-30 11:55:25', '1', 'client/htmlfiles/20120430115525/20120430115525_1335758127468.html', null, null, null, null, '0', null, '', null, null, '0', null, '2012-04-30 11:55:27', '1', '0', 'client/htmlfiles/20120430115525/', '40');
INSERT INTO `news_content_manage` VALUES ('29', '0', '鍚戜笡椋炲彅鍙斿涔狅紝浜や竴鍏冪壒娈婇槦璐规椿鍔?, '', '鍚戜笡椋炲彅鍙斿涔狅紝浜や竴鍏冪壒娈婇槦璐规椿鍔?, '', '', '3', '2012-04-30 13:01:32', '1', 'client/htmlfiles/20120430130132/20120430130132_1335762096921.html', null, null, null, null, '0', null, '', null, null, '0', null, '2012-04-30 13:01:36', '1', '0', 'client/htmlfiles/20120430130132/', '40');
INSERT INTO `news_content_manage` VALUES ('30', '0', '鑱旂郴鎴戜滑', '鑱旂郴鎴戜滑鑱旂郴鎴戜滑鑱旂郴鎴戜滑鑱旂郴鎴戜滑鑱旂郴鎴戜滑鑱旂郴鎴戜滑鑱旂郴鎴戜滑', '鑱旂郴鎴戜滑', '', '', '3', '2012-05-05 18:01:11', '1', 'client/htmlfiles/20120505180111/20120505180111_1336212084437.html', null, null, '', null, '0', null, '', null, null, '0', null, '2012-05-05 18:01:33', '1', '0', 'client/htmlfiles/20120505180111/', '40');
INSERT INTO `news_content_manage` VALUES ('31', '0', '鑱旂郴鎴戜滑', '鑱旂郴鎴戜滑', '鑱旂郴鎴戜滑', '', '', '3', '2012-05-05 19:13:40', '1', 'client/htmlfiles/20120505191340/20120505191340_1336216435843.html', null, null, null, null, '0', null, '', null, null, '0', null, '2012-05-05 19:13:55', '1', '1', 'client/htmlfiles/20120505191340/', '40');

-- ----------------------------
-- Table structure for `news_content_review`
-- ----------------------------
DROP TABLE IF EXISTS `news_content_review`;
CREATE TABLE `news_content_review` (
  `news_id` bigint(20) DEFAULT NULL,
  `review_id` int(11) NOT NULL,
  `review_user` varchar(50) DEFAULT NULL,
  `review_content` longtext,
  `review_date` datetime DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `review_ip` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`review_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news_content_review
-- ----------------------------

-- ----------------------------
-- Table structure for `news_items_contents`
-- ----------------------------
DROP TABLE IF EXISTS `news_items_contents`;
CREATE TABLE `news_items_contents` (
  `type_id` int(11) NOT NULL,
  `news_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news_items_contents
-- ----------------------------
INSERT INTO `news_items_contents` VALUES ('39', '7');
INSERT INTO `news_items_contents` VALUES ('39', '8');
INSERT INTO `news_items_contents` VALUES ('39', '9');
INSERT INTO `news_items_contents` VALUES ('39', '10');
INSERT INTO `news_items_contents` VALUES ('39', '11');
INSERT INTO `news_items_contents` VALUES ('34', '13');
INSERT INTO `news_items_contents` VALUES ('34', '14');
INSERT INTO `news_items_contents` VALUES ('34', '15');
INSERT INTO `news_items_contents` VALUES ('34', '16');
INSERT INTO `news_items_contents` VALUES ('34', '17');
INSERT INTO `news_items_contents` VALUES ('35', '19');
INSERT INTO `news_items_contents` VALUES ('2', '12');
INSERT INTO `news_items_contents` VALUES ('34', '18');
INSERT INTO `news_items_contents` VALUES ('34', '20');
INSERT INTO `news_items_contents` VALUES ('41', '2');
INSERT INTO `news_items_contents` VALUES ('41', '1');
INSERT INTO `news_items_contents` VALUES ('41', '3');
INSERT INTO `news_items_contents` VALUES ('41', '4');
INSERT INTO `news_items_contents` VALUES ('41', '5');
INSERT INTO `news_items_contents` VALUES ('41', '6');
INSERT INTO `news_items_contents` VALUES ('40', '21');
INSERT INTO `news_items_contents` VALUES ('45', '22');
INSERT INTO `news_items_contents` VALUES ('46', '23');
INSERT INTO `news_items_contents` VALUES ('36', '24');
INSERT INTO `news_items_contents` VALUES ('36', '25');
INSERT INTO `news_items_contents` VALUES ('36', '26');
INSERT INTO `news_items_contents` VALUES ('36', '27');
INSERT INTO `news_items_contents` VALUES ('42', '28');
INSERT INTO `news_items_contents` VALUES ('43', '29');
INSERT INTO `news_items_contents` VALUES ('49', '30');
INSERT INTO `news_items_contents` VALUES ('44', '31');

-- ----------------------------
-- Table structure for `news_item_big`
-- ----------------------------
DROP TABLE IF EXISTS `news_item_big`;
CREATE TABLE `news_item_big` (
  `class_id` varchar(20) NOT NULL,
  `class_name` varchar(50) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `if_display` char(1) DEFAULT NULL,
  `if_have_ad` char(1) DEFAULT NULL,
  `yxdm` varchar(5) NOT NULL,
  `if_index` int(11) DEFAULT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news_item_big
-- ----------------------------
INSERT INTO `news_item_big` VALUES ('1000001', '鍏ㄦ櫙濉樺皬', '1', '1', '1', '10000', '1');
INSERT INTO `news_item_big` VALUES ('1000002', '鍚嶅笀椋庨噰', '2', '1', '1', '10000', '1');
INSERT INTO `news_item_big` VALUES ('1000003', '璀﹀痉鐬湜', '3', '1', '1', '10000', '1');
INSERT INTO `news_item_big` VALUES ('1000004', '鏅烘収鏁欏', '4', '1', '1', '10000', '1');
INSERT INTO `news_item_big` VALUES ('1000005', '濉樺皬鐗硅壊', '5', '1', '1', '10000', '1');
INSERT INTO `news_item_big` VALUES ('1000006', '鏍″姟鍏紑', '6', '1', '1', '10000', '1');
INSERT INTO `news_item_big` VALUES ('1000007', '婊″ぉ鏄熸枃瀛︾ぞ', '7', '1', '1', '10000', '1');
INSERT INTO `news_item_big` VALUES ('1000010', '濉樺皬鏂伴椈', '10', '1', '1', '10000', '0');
INSERT INTO `news_item_big` VALUES ('1000011', '鏍″洯鍏憡', '11', '1', '1', '10000', '0');
INSERT INTO `news_item_big` VALUES ('1000012', '涓夊懗寰疯偛', '12', '1', '1', '10000', '0');
INSERT INTO `news_item_big` VALUES ('1000013', '鑱旂郴鎴戜滑', '13', '1', '1', '10000', '0');
INSERT INTO `news_item_big` VALUES ('1000015', '鍙嬫儏閾炬帴', '15', '1', '1', '10000', '0');
INSERT INTO `news_item_big` VALUES ('1000016', '鍥剧墖閾炬帴', '16', '1', '1', '10000', '0');
INSERT INTO `news_item_big` VALUES ('1000017', '璧勬簮搴?, '18', '1', '1', '10000', '0');
INSERT INTO `news_item_big` VALUES ('1000018', '鏂囧瓧閾炬帴', '17', '1', '1', '10000', '0');

-- ----------------------------
-- Table structure for `news_item_config`
-- ----------------------------
DROP TABLE IF EXISTS `news_item_config`;
CREATE TABLE `news_item_config` (
  `news_config_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) DEFAULT NULL,
  `display_row_count` int(11) DEFAULT NULL,
  `title_character_count` int(11) DEFAULT NULL,
  `title_img_url` varchar(200) DEFAULT NULL,
  `date_format` varchar(30) DEFAULT NULL,
  `more_row_count` int(11) DEFAULT NULL,
  `more_title_count` int(11) DEFAULT NULL,
  `more_title_img_url` varchar(200) DEFAULT NULL,
  `more_date_format` varchar(30) DEFAULT NULL,
  `if_pop_window` char(1) DEFAULT NULL,
  `if_permission_search` char(1) DEFAULT NULL,
  `new_flag_time` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`news_config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news_item_config
-- ----------------------------
INSERT INTO `news_item_config` VALUES ('1', '1', '10', '20', null, null, '0', '40', null, null, '0', '1', '0');
INSERT INTO `news_item_config` VALUES ('2', '2', '10', '20', null, null, '0', '285', null, null, '0', '1', '0');
INSERT INTO `news_item_config` VALUES ('3', '3', '10', '20', null, null, '0', '40', null, null, '0', '1', '0');
INSERT INTO `news_item_config` VALUES ('4', '4', '10', '20', null, null, '0', '40', null, null, '0', '1', '0');
INSERT INTO `news_item_config` VALUES ('5', '5', '10', '20', null, null, '0', '40', null, null, '0', '1', '0');
INSERT INTO `news_item_config` VALUES ('6', '6', '10', '20', null, null, '0', '40', null, null, '0', '1', '0');
INSERT INTO `news_item_config` VALUES ('7', '7', '10', '20', null, null, '0', '40', null, null, '0', '1', '0');
INSERT INTO `news_item_config` VALUES ('8', '8', '10', '20', null, null, '0', '40', null, null, '0', '1', '0');
INSERT INTO `news_item_config` VALUES ('9', '9', '10', '20', null, null, '0', '40', null, null, '0', '1', '0');
INSERT INTO `news_item_config` VALUES ('10', '10', '10', '20', null, null, '0', '40', null, null, '0', '1', '0');
INSERT INTO `news_item_config` VALUES ('11', '11', '10', '20', null, null, '0', '40', null, null, '0', '1', '0');
INSERT INTO `news_item_config` VALUES ('12', '12', '10', '20', null, null, '0', '40', null, null, '0', '1', '0');
INSERT INTO `news_item_config` VALUES ('13', '13', '10', '20', null, null, '0', '40', null, null, '0', '1', '0');
INSERT INTO `news_item_config` VALUES ('14', '14', '10', '20', null, null, '0', '40', null, null, '0', '1', '0');
INSERT INTO `news_item_config` VALUES ('15', '15', '10', '20', null, null, '0', '40', null, null, '0', '1', '0');
INSERT INTO `news_item_config` VALUES ('16', '16', '10', '20', null, null, '0', '40', null, null, '0', '1', '0');
INSERT INTO `news_item_config` VALUES ('17', '17', '10', '20', null, null, '0', '40', null, null, '0', '1', '0');
INSERT INTO `news_item_config` VALUES ('18', '18', '10', '20', null, null, '0', '40', null, null, '0', '1', '0');
INSERT INTO `news_item_config` VALUES ('19', '19', '10', '20', null, null, '0', '40', null, null, '0', '1', '0');
INSERT INTO `news_item_config` VALUES ('20', '20', '10', '20', null, null, '0', '40', null, null, '0', '1', '0');
INSERT INTO `news_item_config` VALUES ('21', '21', '10', '20', null, null, '0', '40', null, null, '0', '1', '0');
INSERT INTO `news_item_config` VALUES ('22', '22', '10', '20', null, null, '0', '40', null, null, '0', '1', '0');
INSERT INTO `news_item_config` VALUES ('23', '23', '10', '20', null, null, '0', '40', null, null, '0', '1', '0');
INSERT INTO `news_item_config` VALUES ('24', '24', '10', '20', null, null, '0', '40', null, null, '0', '1', '0');
INSERT INTO `news_item_config` VALUES ('25', '25', '10', '20', null, null, '0', '40', null, null, '0', '1', '0');
INSERT INTO `news_item_config` VALUES ('26', '26', '10', '20', null, null, '0', '40', null, null, '0', '1', '0');
INSERT INTO `news_item_config` VALUES ('27', '27', '10', '20', null, null, '0', '40', null, null, '0', '1', '0');
INSERT INTO `news_item_config` VALUES ('28', '28', '10', '20', null, null, '0', '40', null, null, '0', '1', '0');
INSERT INTO `news_item_config` VALUES ('29', '29', '10', '20', null, null, '0', '40', null, null, '0', '1', '0');
INSERT INTO `news_item_config` VALUES ('30', '30', '10', '20', null, null, '0', '40', null, null, '0', '1', '0');
INSERT INTO `news_item_config` VALUES ('31', '31', '10', '20', null, null, '0', '40', null, null, '0', '1', '0');
INSERT INTO `news_item_config` VALUES ('32', '32', '10', '20', null, null, '0', '40', null, null, '0', '1', '0');
INSERT INTO `news_item_config` VALUES ('33', '33', '10', '20', null, null, '0', '40', null, null, '0', '1', '0');
INSERT INTO `news_item_config` VALUES ('34', '34', '6', '20', null, null, '0', '40', null, null, '0', '1', '0');
INSERT INTO `news_item_config` VALUES ('35', '35', '6', '20', null, null, '0', '40', null, null, '0', '1', '0');
INSERT INTO `news_item_config` VALUES ('36', '36', '10', '20', null, null, '0', '40', null, null, '0', '1', '0');
INSERT INTO `news_item_config` VALUES ('39', '39', '4', '20', null, null, '0', '40', null, null, '0', '1', '0');
INSERT INTO `news_item_config` VALUES ('40', '40', '4', '20', null, null, '0', '40', null, null, '0', '1', '0');
INSERT INTO `news_item_config` VALUES ('41', '41', '6', '10', null, null, '0', '40', null, null, '0', '1', '0');
INSERT INTO `news_item_config` VALUES ('42', '42', '10', '20', null, null, '0', '40', null, null, '0', '1', '0');
INSERT INTO `news_item_config` VALUES ('43', '43', '10', '20', null, null, '0', '40', null, null, '0', '1', '0');
INSERT INTO `news_item_config` VALUES ('44', '44', '10', '20', null, null, '0', '40', null, null, '0', '1', '0');
INSERT INTO `news_item_config` VALUES ('45', '45', '1', '20', null, null, '0', '40', null, null, '0', '1', '0');
INSERT INTO `news_item_config` VALUES ('46', '46', '1', '20', null, null, '0', '40', null, null, '0', '1', '0');
INSERT INTO `news_item_config` VALUES ('47', '47', '10', '20', null, null, '0', '40', null, null, '0', '1', '0');
INSERT INTO `news_item_config` VALUES ('48', '48', '10', '20', null, null, '0', '40', null, null, '0', '1', '0');
INSERT INTO `news_item_config` VALUES ('49', '49', '10', '20', null, null, '0', '40', null, null, '0', '1', '0');

-- ----------------------------
-- Table structure for `news_item_navigation`
-- ----------------------------
DROP TABLE IF EXISTS `news_item_navigation`;
CREATE TABLE `news_item_navigation` (
  `navigation_id` int(11) NOT NULL AUTO_INCREMENT,
  `navigation_name` varchar(50) DEFAULT NULL,
  `class_id` varchar(20) DEFAULT NULL,
  `navigation_url` varchar(200) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`navigation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news_item_navigation
-- ----------------------------

-- ----------------------------
-- Table structure for `news_item_small`
-- ----------------------------
DROP TABLE IF EXISTS `news_item_small`;
CREATE TABLE `news_item_small` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(50) DEFAULT NULL,
  `class_id` varchar(20) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `if_display` char(1) DEFAULT NULL,
  `check_flag` char(1) DEFAULT NULL,
  `announce_type` varchar(50) DEFAULT NULL,
  `httpUrl` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news_item_small
-- ----------------------------
INSERT INTO `news_item_small` VALUES ('1', '濉樺皬绠€浠?, '1000001', '1', '1', '1', '0', null);
INSERT INTO `news_item_small` VALUES ('2', '鏍￠暱瀵勮', '1000001', '2', '1', '1', '0', null);
INSERT INTO `news_item_small` VALUES ('3', '鏍″洯椋庤矊', '1000001', '3', '1', '1', '0', null);
INSERT INTO `news_item_small` VALUES ('4', '鍘嗗彶鍥炵湼', '1000001', '4', '1', '1', '0', null);
INSERT INTO `news_item_small` VALUES ('5', '鏂瑰渾瑙勭珷', '1000001', '5', '1', '1', '0', null);
INSERT INTO `news_item_small` VALUES ('6', '瀛︽牎鏈烘瀯', '1000001', '6', '1', '1', '0', null);
INSERT INTO `news_item_small` VALUES ('7', '鑱旂郴濉樺皬', '1000001', '7', '1', '1', '0', null);
INSERT INTO `news_item_small` VALUES ('8', '楠ㄥ共鑰佸笀', '1000002', '1', '1', '1', '0', null);
INSERT INTO `news_item_small` VALUES ('9', '鏁欏笀鏂囪悆', '1000002', '2', '1', '1', '0', null);
INSERT INTO `news_item_small` VALUES ('10', '鏁欏绉戠爺', '1000002', '3', '1', '1', '0', null);
INSERT INTO `news_item_small` VALUES ('11', '闈掑皯骞翠笌娉?, '1000003', '1', '1', '1', '0', null);
INSERT INTO `news_item_small` VALUES ('12', '瀹跺涵鏁欒偛', '1000003', '2', '1', '1', '0', null);
INSERT INTO `news_item_small` VALUES ('13', '寰疯偛鍔ㄦ€?, '1000003', '3', '1', '1', '0', null);
INSERT INTO `news_item_small` VALUES ('14', '蹇冪伒娓咕', '1000003', '4', '1', '1', '0', null);
INSERT INTO `news_item_small` VALUES ('15', '瀹夊叏鐬湜', '1000003', '5', '1', '1', '0', null);
INSERT INTO `news_item_small` VALUES ('16', '璇枃', '1000004', '1', '1', '1', '0', null);
INSERT INTO `news_item_small` VALUES ('17', '鏁板', '1000004', '2', '1', '1', '0', null);
INSERT INTO `news_item_small` VALUES ('18', '鑻辫', '1000004', '3', '1', '1', '0', null);
INSERT INTO `news_item_small` VALUES ('19', '缁煎悎瀹炶返', '1000004', '4', '1', '1', '0', null);
INSERT INTO `news_item_small` VALUES ('20', '浣撹偛涓庡仴搴?, '1000004', '5', '1', '1', '0', null);
INSERT INTO `news_item_small` VALUES ('21', '闊充箰涓庣編鏈?, '1000004', '6', '1', '1', '0', null);
INSERT INTO `news_item_small` VALUES ('22', '淇℃伅鎶€鏈?, '1000004', '7', '1', '1', '0', null);
INSERT INTO `news_item_small` VALUES ('23', '瀹㈠灞辨瓕', '1000005', '1', '1', '1', '0', null);
INSERT INTO `news_item_small` VALUES ('24', '璁╁叺涔撶悆椋炶捣鏉?, '1000005', '2', '1', '1', '0', null);
INSERT INTO `news_item_small` VALUES ('25', '鎷涚敓宸ヤ綔', '1000006', '1', '1', '1', '0', null);
INSERT INTO `news_item_small` VALUES ('26', '閲囪喘鎷涙爣', '1000006', '2', '1', '1', '0', null);
INSERT INTO `news_item_small` VALUES ('27', '鑷村闀跨殑淇?, '1000006', '3', '1', '1', '0', null);
INSERT INTO `news_item_small` VALUES ('28', '浣充綔灞曠ず', '1000007', '1', '1', '1', '0', null);
INSERT INTO `news_item_small` VALUES ('29', '闅忔劅鏈', '1000007', '2', '1', '1', '0', null);
INSERT INTO `news_item_small` VALUES ('30', '璇楁捣鎷捐礉', '1000007', '3', '1', '1', '0', null);
INSERT INTO `news_item_small` VALUES ('31', '褰╄櫣鐢诲粖', '1000007', '4', '1', '1', '0', null);
INSERT INTO `news_item_small` VALUES ('32', '鏅烘槦涓冨阀鏉?, '1000007', '5', '1', '1', '0', null);
INSERT INTO `news_item_small` VALUES ('33', '鏂囧澶ц禌', '1000007', '6', '0', '1', '0', null);
INSERT INTO `news_item_small` VALUES ('34', '濉樺皬鏂伴椈', '1000010', '1', '1', '1', '0', null);
INSERT INTO `news_item_small` VALUES ('35', '鏍″洯鍏憡', '1000011', '1', '1', '1', '0', null);
INSERT INTO `news_item_small` VALUES ('36', '涓夊懗寰疯偛', '1000012', '1', '1', '1', '0', null);
INSERT INTO `news_item_small` VALUES ('39', '鍙嬫儏閾炬帴', '1000015', '1', '1', '1', '0', null);
INSERT INTO `news_item_small` VALUES ('40', '杞挱鍥剧墖', '1000016', '1', '1', '1', '0', null);
INSERT INTO `news_item_small` VALUES ('41', '璧勬簮搴?, '1000017', '1', '1', '1', '0', null);
INSERT INTO `news_item_small` VALUES ('42', '骞哥璇惧爞', '1000012', '2', '1', '1', '0', null);
INSERT INTO `news_item_small` VALUES ('43', '鐢熸€佷箰鍥?, '1000012', '3', '1', '1', '0', null);
INSERT INTO `news_item_small` VALUES ('44', '鑱旂郴鎴戜滑', '1000013', '1', '1', '1', '2', null);
INSERT INTO `news_item_small` VALUES ('45', '鏍￠暱', '1000016', '2', '1', '1', '0', null);
INSERT INTO `news_item_small` VALUES ('46', '鍓牎闀?, '1000016', '3', '1', '1', '0', null);
INSERT INTO `news_item_small` VALUES ('47', '缁╂晥鑰冩牳', '1000018', '1', '1', '1', '1', '');
INSERT INTO `news_item_small` VALUES ('48', '鏍¤閫?, '1000018', '2', '1', '1', '1', '');
INSERT INTO `news_item_small` VALUES ('49', '鑱旂郴鎴戜滑', '1000018', '3', '1', '1', '1', 'client/itembig1000013/itemsmall44.html');

-- ----------------------------
-- Table structure for `sch_college_department`
-- ----------------------------
DROP TABLE IF EXISTS `sch_college_department`;
CREATE TABLE `sch_college_department` (
  `xxdm` char(5) DEFAULT NULL,
  `yxdm` varchar(5) NOT NULL,
  `yxmc` varchar(60) NOT NULL,
  `yxsywmc` varchar(180) DEFAULT NULL,
  `yxsjc` varchar(20) DEFAULT NULL,
  `yxsbbm` char(1) DEFAULT NULL,
  `yxslbm` char(1) DEFAULT NULL,
  `jlny` char(6) DEFAULT NULL,
  `xzfzr` varchar(30) DEFAULT NULL,
  `dwfzr` varchar(30) DEFAULT NULL,
  `dept_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`yxdm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sch_college_department
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_admin`
-- ----------------------------
DROP TABLE IF EXISTS `sys_admin`;
CREATE TABLE `sys_admin` (
  `ADMIN_NAME` varchar(30) NOT NULL,
  `PASSWORD` varchar(100) DEFAULT NULL,
  `UNIT_ID` bigint(20) NOT NULL,
  `USER_TYPE` varchar(10) DEFAULT NULL,
  `FLAG` int(11) DEFAULT NULL,
  PRIMARY KEY (`ADMIN_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_admin
-- ----------------------------
INSERT INTO `sys_admin` VALUES ('admin', 'AHAH8550778ZG9A10H9AA5NNXZHKHHZK', '1', null, null);

-- ----------------------------
-- Table structure for `sys_module`
-- ----------------------------
DROP TABLE IF EXISTS `sys_module`;
CREATE TABLE `sys_module` (
  `module_id` varchar(30) NOT NULL,
  `module_name` varchar(60) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `up_module` varchar(100) DEFAULT NULL,
  `module_picture` varchar(100) DEFAULT NULL,
  `module_flag` varchar(30) DEFAULT NULL,
  `if_open` char(1) DEFAULT NULL,
  `YXDM` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_module
-- ----------------------------
INSERT INTO `sys_module` VALUES ('0100000000', '绯荤粺绠＄悊', null, '0000000000', 'tb_12.gif', null, null, null);
INSERT INTO `sys_module` VALUES ('0101000000', '绯荤粺绠＄悊', 'login.do?method=leftList', '0100000000', 'tb_12.gif', null, null, null);
INSERT INTO `sys_module` VALUES ('0101010000', '鍗曚綅淇℃伅', 'view/rightManage.do?method=queryUnit', '0101000000', 'tb_12.gif', null, null, null);
INSERT INTO `sys_module` VALUES ('0101010100', '鏌ヨ', null, '0101010000', 'tb_12.gif', 'select', null, null);
INSERT INTO `sys_module` VALUES ('0101010200', '鏂板', null, '0101010000', 'tb_12.gif', 'add', null, null);
INSERT INTO `sys_module` VALUES ('0101010300', '淇敼', null, '0101010000', 'tb_12.gif', 'update', null, null);
INSERT INTO `sys_module` VALUES ('0101010400', '鍒犻櫎', null, '0101010000', 'tb_12.gif', 'delete', null, null);
INSERT INTO `sys_module` VALUES ('0101020000', '閮ㄩ棬绠＄悊', 'view/rightManage.do?method=queryDepartment', '0101000000', 'tb_12.gif', null, null, null);
INSERT INTO `sys_module` VALUES ('0101030000', '閮ㄩ棬浜哄憳', 'view/rightManage.do?method=queryDepartmentPerson', '0101000000', 'tb_12.gif', null, null, null);
INSERT INTO `sys_module` VALUES ('0101040000', '瑙掕壊绠＄悊', 'view/rightManage.do?method=queryRole', '0101000000', 'tb_12.gif', 'jsgl', null, null);
INSERT INTO `sys_module` VALUES ('0101040100', '鏂板', null, '0101080000', 'tb_12.gif', 'add', null, null);
INSERT INTO `sys_module` VALUES ('0101040200', '鏌ヨ', null, '0101080000', 'tb_12.gif', 'select', null, null);
INSERT INTO `sys_module` VALUES ('0101040300', '淇敼', null, '0101080000', 'tb_12.gif', 'update', null, null);
INSERT INTO `sys_module` VALUES ('0101040400', '鍒犻櫎', null, '0101080000', 'tb_12.gif', 'delete', null, null);
INSERT INTO `sys_module` VALUES ('0101050000', '瑙掕壊鏉冮檺', 'view/rightManage.do?method=queryRoleRight', '0101000000', 'tb_12.gif', 'jsqx', null, null);
INSERT INTO `sys_module` VALUES ('0101050100', '鏂板', null, '0101090000', 'tb_12.gif', 'add', null, null);
INSERT INTO `sys_module` VALUES ('0101050200', '鏌ヨ', null, '0101090000', 'tb_12.gif', 'select', null, null);
INSERT INTO `sys_module` VALUES ('0101060000', '鐢ㄦ埛鎺堟潈', 'view/rightManage.do?method=enterAssignUserRight', '0101000000', 'tb_12.gif', 'fpyhqs', null, null);
INSERT INTO `sys_module` VALUES ('0101060100', '鏂板', null, '0101100000', 'tb_12.gif', 'add', null, null);
INSERT INTO `sys_module` VALUES ('0101060200', '鏌ヨ', null, '0101100000', 'tb_12.gif', 'select', null, null);
INSERT INTO `sys_module` VALUES ('0101070000', '鎵归噺鎺堟潈', 'view/rightManage.do?method=batchAssignUserRight', '0101000000', 'tb_12.gif', 'plfpqx', null, null);
INSERT INTO `sys_module` VALUES ('0101070100', '鏂板', null, '0101110000', 'tb_12.gif', 'add', null, null);
INSERT INTO `sys_module` VALUES ('0101070200', '鏌ヨ', null, '0101110000', 'tb_12.gif', 'select', null, null);
INSERT INTO `sys_module` VALUES ('0101080000', '鐢ㄦ埛绠＄悊', 'view/rightManage.do?method=queryPerson', '0101000000', 'tb_12.gif', null, null, null);
INSERT INTO `sys_module` VALUES ('0200000000', '淇℃伅鍙戝竷绠＄悊', null, '0000000000', null, null, null, null);
INSERT INTO `sys_module` VALUES ('0201000000', '鏍忕洰璁剧疆', 'login.do?method=leftList', '0200000000', null, null, null, null);
INSERT INTO `sys_module` VALUES ('0201010000', '澶х被绠＄悊', 'view/newsmanage.do?method=findNewsItemBig', '0201000000', 'tb_12.gif', 'news_item_big', null, null);
INSERT INTO `sys_module` VALUES ('0201010100', '鏂板', null, '0201010000', 'tb_12.gif', 'add', null, null);
INSERT INTO `sys_module` VALUES ('0201010200', '鏌ヨ', null, '0201010000', 'tb_12.gif', 'select', null, null);
INSERT INTO `sys_module` VALUES ('0201010300', '淇敼', null, '0201010000', 'tb_12.gif', 'update', null, null);
INSERT INTO `sys_module` VALUES ('0201010400', '鍒犻櫎', null, '0201010000', 'tb_12.gif', 'delete', null, null);
INSERT INTO `sys_module` VALUES ('0201020000', '灏忕被绠＄悊', 'view/newsmanage.do?method=findNewsItemSmall', '0201000000', 'tb_12.gif', 'news_item_small', null, null);
INSERT INTO `sys_module` VALUES ('0201020100', '鏂板', null, '0201020000', 'tb_12.gif', 'add', null, null);
INSERT INTO `sys_module` VALUES ('0201020200', '鏌ヨ', null, '0201020000', 'tb_12.gif', 'select', null, null);
INSERT INTO `sys_module` VALUES ('0201020300', '淇敼', null, '0201020000', 'tb_12.gif', 'update', null, null);
INSERT INTO `sys_module` VALUES ('0201020400', '鍒犻櫎', null, '0201020000', 'tb_12.gif', 'delete', null, null);
INSERT INTO `sys_module` VALUES ('0202000000', '骞垮憡璁剧疆', 'login.do?method=leftList', '9990200000000', null, null, null, null);
INSERT INTO `sys_module` VALUES ('0202010000', '骞垮憡绫诲瀷', 'view/newsmanage.do?method=findNewsAdType', '0202000000', 'tb_12.gif', 'news_ad_type', null, null);
INSERT INTO `sys_module` VALUES ('0202010100', '鏂板', null, '0202010000', 'tb_12.gif', 'add', null, null);
INSERT INTO `sys_module` VALUES ('0202010200', '鏌ヨ', null, '0202010000', 'tb_12.gif', 'select', null, null);
INSERT INTO `sys_module` VALUES ('0202010300', '淇敼', null, '0202010000', 'tb_12.gif', 'update', null, null);
INSERT INTO `sys_module` VALUES ('0202010400', '鍒犻櫎', null, '0202010000', 'tb_12.gif', 'delete', null, null);
INSERT INTO `sys_module` VALUES ('0202020000', '骞垮憡绠＄悊', 'view/newsmanage.do?method=findNewsAdManageInit', '0202000000', 'tb_12.gif', 'news_ad_manage', null, null);
INSERT INTO `sys_module` VALUES ('0202020100', '鏂板', null, '0202020000', 'tb_12.gif', 'add', null, null);
INSERT INTO `sys_module` VALUES ('0202020200', '鏌ヨ', null, '0202020000', 'tb_12.gif', 'select', null, null);
INSERT INTO `sys_module` VALUES ('0202020300', '淇敼', null, '0202020000', 'tb_12.gif', 'update', null, null);
INSERT INTO `sys_module` VALUES ('0202020400', '鍒犻櫎', null, '0202020000', 'tb_12.gif', 'delete', null, null);
INSERT INTO `sys_module` VALUES ('0203000000', '瀹℃牳璁剧疆', 'login.do?method=leftList', '0200000000', null, null, null, null);
INSERT INTO `sys_module` VALUES ('0203010000', '瀹℃牳璁剧疆', 'view/newsmanage.do?method=findNewsItemSmallCheckFlag', '0203000000', 'tb_12.gif', 'news_item_small_check', null, null);
INSERT INTO `sys_module` VALUES ('0203010100', '鏂板', null, '0203010000', 'tb_12.gif', 'add', null, null);
INSERT INTO `sys_module` VALUES ('0203010200', '鏌ヨ', null, '0203010000', 'tb_12.gif', 'select', null, null);
INSERT INTO `sys_module` VALUES ('0203010300', '淇敼', null, '0203010000', 'tb_12.gif', 'update', null, null);
INSERT INTO `sys_module` VALUES ('0203010400', '鍒犻櫎', null, '0203010000', 'tb_12.gif', 'delete', null, null);
INSERT INTO `sys_module` VALUES ('0203020000', '鏂伴椈瀹℃牳', 'view/newsmanage.do?method=findNewsContentCheck', '0203000000', 'tb_12.gif', 'news_content_check', null, null);
INSERT INTO `sys_module` VALUES ('0203020100', '鏂板', null, '0203020000', 'tb_12.gif', 'add', null, null);
INSERT INTO `sys_module` VALUES ('0203020200', '鏌ヨ', null, '0203020000', 'tb_12.gif', 'select', null, null);
INSERT INTO `sys_module` VALUES ('0203020300', '淇敼', null, '0203020000', 'tb_12.gif', 'update', null, null);
INSERT INTO `sys_module` VALUES ('0203020400', '鍒犻櫎', null, '0203020000', 'tb_12.gif', 'delete', null, null);
INSERT INTO `sys_module` VALUES ('0204000000', '鍐呭绠＄悊', 'view/newsmanage.do?method=findNewsItemsBigTree', '0200000000', null, null, null, null);
INSERT INTO `sys_module` VALUES ('0204010000', '淇℃伅鍙戝竷', 'view/newsmanage.do?method=findNewsContentManageInit', '0204000000', 'tb_12.gif', 'news_content_manage', null, null);
INSERT INTO `sys_module` VALUES ('0204010100', '鏂板', null, '0204010000', 'tb_12.gif', 'add', null, null);
INSERT INTO `sys_module` VALUES ('0204010200', '鏌ヨ', null, '0204010000', 'tb_12.gif', 'select', null, null);
INSERT INTO `sys_module` VALUES ('0204010300', '淇敼', null, '0204010000', 'tb_12.gif', 'update', null, null);
INSERT INTO `sys_module` VALUES ('0204010400', '鍒犻櫎', null, '0204010000', 'tb_12.gif', 'delete', null, null);
INSERT INTO `sys_module` VALUES ('0205010100', '瀵煎叆', null, '0205010000', null, 'import', null, null);
INSERT INTO `sys_module` VALUES ('0205010200', '鏌ヨ', null, '0205010000', 'tb_12.gif', 'select', null, null);
INSERT INTO `sys_module` VALUES ('0205010300', '淇敼', null, '0205010000', null, 'update', null, null);
INSERT INTO `sys_module` VALUES ('0205010400', '鍒犻櫎', null, '0205010000', null, 'delete', null, null);
INSERT INTO `sys_module` VALUES ('0206000000', '鐩戞帶绠＄悊', 'login.do?method=leftList', '0200000000', null, null, null, null);
INSERT INTO `sys_module` VALUES ('0206010000', '鏂伴椈鐩戞帶', 'view/monitor.do?method=list', '0206000000', null, 'monitor', null, null);
INSERT INTO `sys_module` VALUES ('0206010100', '鏌ヨ', null, '0206010000', null, 'select', null, null);
INSERT INTO `sys_module` VALUES ('0206010200', '鍒犻櫎', null, '0206010000', null, 'delete', null, null);
INSERT INTO `sys_module` VALUES ('0207000000', '浼氬憳绠＄悊', 'login.do?method=leftList', '0200000000', null, null, null, null);
INSERT INTO `sys_module` VALUES ('0207010000', '浼氬憳绠＄悊', 'view/membermanage.do?method=queryMember', '0207000000', null, 'member', null, null);
INSERT INTO `sys_module` VALUES ('0207010100', '鏌ヨ', null, '0207010000', null, 'select', null, null);
INSERT INTO `sys_module` VALUES ('0207010200', '瀹℃壒', null, '0207010000', null, 'approve', null, null);
INSERT INTO `sys_module` VALUES ('0207010300', '鍙嶅鎵?, null, '0207010000', null, 'unApprove', null, null);
INSERT INTO `sys_module` VALUES ('0207010400', '鍚敤', null, '0207010000', null, 'enable', null, null);
INSERT INTO `sys_module` VALUES ('0207010500', '绂佺敤', null, '0207010000', null, 'disable', null, null);
INSERT INTO `sys_module` VALUES ('0207010600', '鍒犻櫎', null, '0207010000', null, 'delete', null, null);
INSERT INTO `sys_module` VALUES ('0207020000', '鐣欒█绠＄悊', 'view/messagemanage.do?method=queryMessage', '0207000000', null, 'message', null, null);
INSERT INTO `sys_module` VALUES ('0207020100', '鏌ヨ', null, '0207020000', null, 'select', null, null);
INSERT INTO `sys_module` VALUES ('0207020200', '瀹℃壒', null, '0207020000', null, 'approve', null, null);
INSERT INTO `sys_module` VALUES ('0207020300', '鍙嶅鎵?, null, '0207020000', null, 'unApprove', null, null);
INSERT INTO `sys_module` VALUES ('0207020400', '鍒犻櫎', null, '0207020000', null, 'delete', null, null);
INSERT INTO `sys_module` VALUES ('0207030000', '鎶曠エ绠＄悊', 'view/votemanage.do?method=queryVoteTitle', '0207000000', null, 'vote', null, null);
INSERT INTO `sys_module` VALUES ('0207030100', '鏌ヨ', null, '0207030000', null, 'select', null, null);
INSERT INTO `sys_module` VALUES ('0207030200', '鏂板', null, '0207030000', null, 'add', null, null);
INSERT INTO `sys_module` VALUES ('0207030300', '淇敼', null, '0207030000', null, 'update', null, null);
INSERT INTO `sys_module` VALUES ('0207030400', '鍒犻櫎', null, '0207030000', null, 'delete', null, null);

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '绠＄悊鍛?);
INSERT INTO `sys_role` VALUES ('2', '淇℃伅鍙戝竷鍛?);

-- ----------------------------
-- Table structure for `sys_role_module`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_module`;
CREATE TABLE `sys_role_module` (
  `module_id` varchar(30) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=935 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_module
-- ----------------------------
INSERT INTO `sys_role_module` VALUES ('0201010000', '2', '57');
INSERT INTO `sys_role_module` VALUES ('0202010000', '2', '58');
INSERT INTO `sys_role_module` VALUES ('0202020000', '2', '59');
INSERT INTO `sys_role_module` VALUES ('0203010000', '2', '60');
INSERT INTO `sys_role_module` VALUES ('0204010000', '2', '61');
INSERT INTO `sys_role_module` VALUES ('0203020000', '2', '62');
INSERT INTO `sys_role_module` VALUES ('0101080000', '2', '63');
INSERT INTO `sys_role_module` VALUES ('0101010000', '2', '64');
INSERT INTO `sys_role_module` VALUES ('0101020000', '2', '65');
INSERT INTO `sys_role_module` VALUES ('0101030000', '2', '66');
INSERT INTO `sys_role_module` VALUES ('0101040000', '2', '67');
INSERT INTO `sys_role_module` VALUES ('0101050000', '2', '68');
INSERT INTO `sys_role_module` VALUES ('0101060000', '2', '69');
INSERT INTO `sys_role_module` VALUES ('0201020000', '2', '70');
INSERT INTO `sys_role_module` VALUES ('0101070000', '2', '71');
INSERT INTO `sys_role_module` VALUES ('0204010000', '2', '73');
INSERT INTO `sys_role_module` VALUES ('0204010100', '2', '74');
INSERT INTO `sys_role_module` VALUES ('0204010200', '2', '75');
INSERT INTO `sys_role_module` VALUES ('0204010300', '2', '76');
INSERT INTO `sys_role_module` VALUES ('0204010400', '2', '77');
INSERT INTO `sys_role_module` VALUES ('0101010000', '1', '873');
INSERT INTO `sys_role_module` VALUES ('0101020000', '1', '874');
INSERT INTO `sys_role_module` VALUES ('0101030000', '1', '875');
INSERT INTO `sys_role_module` VALUES ('0101040000', '1', '876');
INSERT INTO `sys_role_module` VALUES ('0101050000', '1', '877');
INSERT INTO `sys_role_module` VALUES ('0101060000', '1', '878');
INSERT INTO `sys_role_module` VALUES ('0101070000', '1', '879');
INSERT INTO `sys_role_module` VALUES ('0101080000', '1', '880');
INSERT INTO `sys_role_module` VALUES ('0201010000', '1', '881');
INSERT INTO `sys_role_module` VALUES ('0201020000', '1', '882');
INSERT INTO `sys_role_module` VALUES ('0203010000', '1', '883');
INSERT INTO `sys_role_module` VALUES ('0203020000', '1', '884');
INSERT INTO `sys_role_module` VALUES ('0204010000', '1', '885');
INSERT INTO `sys_role_module` VALUES ('0206010000', '1', '886');
INSERT INTO `sys_role_module` VALUES ('0207010000', '1', '887');
INSERT INTO `sys_role_module` VALUES ('0207020000', '1', '888');
INSERT INTO `sys_role_module` VALUES ('0207030000', '1', '889');
INSERT INTO `sys_role_module` VALUES ('0201010000', '1', '890');
INSERT INTO `sys_role_module` VALUES ('0201010100', '1', '891');
INSERT INTO `sys_role_module` VALUES ('0201010200', '1', '892');
INSERT INTO `sys_role_module` VALUES ('0201010300', '1', '893');
INSERT INTO `sys_role_module` VALUES ('0201010400', '1', '894');
INSERT INTO `sys_role_module` VALUES ('0201020000', '1', '895');
INSERT INTO `sys_role_module` VALUES ('0201020100', '1', '896');
INSERT INTO `sys_role_module` VALUES ('0201020200', '1', '897');
INSERT INTO `sys_role_module` VALUES ('0201020300', '1', '898');
INSERT INTO `sys_role_module` VALUES ('0201020400', '1', '899');
INSERT INTO `sys_role_module` VALUES ('0203010000', '1', '900');
INSERT INTO `sys_role_module` VALUES ('0203010100', '1', '901');
INSERT INTO `sys_role_module` VALUES ('0203010200', '1', '902');
INSERT INTO `sys_role_module` VALUES ('0203010300', '1', '903');
INSERT INTO `sys_role_module` VALUES ('0203010400', '1', '904');
INSERT INTO `sys_role_module` VALUES ('0203020000', '1', '905');
INSERT INTO `sys_role_module` VALUES ('0203020100', '1', '906');
INSERT INTO `sys_role_module` VALUES ('0203020200', '1', '907');
INSERT INTO `sys_role_module` VALUES ('0203020300', '1', '908');
INSERT INTO `sys_role_module` VALUES ('0203020400', '1', '909');
INSERT INTO `sys_role_module` VALUES ('0204010000', '1', '910');
INSERT INTO `sys_role_module` VALUES ('0204010100', '1', '911');
INSERT INTO `sys_role_module` VALUES ('0204010200', '1', '912');
INSERT INTO `sys_role_module` VALUES ('0204010300', '1', '913');
INSERT INTO `sys_role_module` VALUES ('0204010400', '1', '914');
INSERT INTO `sys_role_module` VALUES ('0206010000', '1', '915');
INSERT INTO `sys_role_module` VALUES ('0206010100', '1', '916');
INSERT INTO `sys_role_module` VALUES ('0206010200', '1', '917');
INSERT INTO `sys_role_module` VALUES ('0207010000', '1', '918');
INSERT INTO `sys_role_module` VALUES ('0207010100', '1', '919');
INSERT INTO `sys_role_module` VALUES ('0207010200', '1', '920');
INSERT INTO `sys_role_module` VALUES ('0207010300', '1', '921');
INSERT INTO `sys_role_module` VALUES ('0207010400', '1', '922');
INSERT INTO `sys_role_module` VALUES ('0207010500', '1', '923');
INSERT INTO `sys_role_module` VALUES ('0207010600', '1', '924');
INSERT INTO `sys_role_module` VALUES ('0207020000', '1', '925');
INSERT INTO `sys_role_module` VALUES ('0207020100', '1', '926');
INSERT INTO `sys_role_module` VALUES ('0207020200', '1', '927');
INSERT INTO `sys_role_module` VALUES ('0207020300', '1', '928');
INSERT INTO `sys_role_module` VALUES ('0207020400', '1', '929');
INSERT INTO `sys_role_module` VALUES ('0207030000', '1', '930');
INSERT INTO `sys_role_module` VALUES ('0207030100', '1', '931');
INSERT INTO `sys_role_module` VALUES ('0207030200', '1', '932');
INSERT INTO `sys_role_module` VALUES ('0207030300', '1', '933');
INSERT INTO `sys_role_module` VALUES ('0207030400', '1', '934');

-- ----------------------------
-- Table structure for `sys_role_person`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_person`;
CREATE TABLE `sys_role_person` (
  `role_id` bigint(20) NOT NULL,
  `Person_id` bigint(20) DEFAULT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_person
-- ----------------------------
INSERT INTO `sys_role_person` VALUES ('2', '4', '7');
INSERT INTO `sys_role_person` VALUES ('2', '2', '8');
INSERT INTO `sys_role_person` VALUES ('1', '2', '12');
INSERT INTO `sys_role_person` VALUES ('1', '3', '17');

-- ----------------------------
-- Table structure for `vote_items`
-- ----------------------------
DROP TABLE IF EXISTS `vote_items`;
CREATE TABLE `vote_items` (
  `item_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(200) DEFAULT NULL,
  `vote_id` bigint(20) NOT NULL,
  `item_ballot` int(11) DEFAULT '0',
  PRIMARY KEY (`item_id`),
  KEY `vote_id` (`vote_id`),
  CONSTRAINT `vote_items_fk` FOREIGN KEY (`vote_id`) REFERENCES `vote_title` (`vote_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vote_items
-- ----------------------------
INSERT INTO `vote_items` VALUES ('27', '1', '7', '1');
INSERT INTO `vote_items` VALUES ('28', '2', '7', '1');
INSERT INTO `vote_items` VALUES ('29', '3', '7', '0');
INSERT INTO `vote_items` VALUES ('30', '4', '7', '0');
INSERT INTO `vote_items` VALUES ('31', '5', '7', '0');

-- ----------------------------
-- Table structure for `vote_title`
-- ----------------------------
DROP TABLE IF EXISTS `vote_title`;
CREATE TABLE `vote_title` (
  `vote_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `vote_name` varchar(30) DEFAULT NULL,
  `vote_type` tinyint(1) DEFAULT NULL,
  `vote_date` varchar(20) DEFAULT NULL,
  `vote_hot` bigint(20) DEFAULT '0',
  PRIMARY KEY (`vote_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vote_title
-- ----------------------------
INSERT INTO `vote_title` VALUES ('7', 'test', '1', '2012-04-30 09:41:32', '2');
