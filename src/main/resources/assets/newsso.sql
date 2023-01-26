/*
Navicat MySQL Data Transfer

Source Server         : newSSO
Source Server Version : 80029
Source Host           : localhost:3306
Source Database       : newsso

Target Server Type    : MYSQL
Target Server Version : 80029
File Encoding         : 65001

Date: 2022-09-15 13:54:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `application_infos`
-- ----------------------------
DROP TABLE IF EXISTS `application_infos`;
CREATE TABLE `application_infos` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `application_name` varchar(255) NOT NULL,
  `type_name` varchar(255) DEFAULT NULL,
  `type_code` bigint DEFAULT NULL,
  `app_description` varchar(255) DEFAULT NULL,
  `app_key` varchar(255) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建时间',
  `update_time` timestamp NULL DEFAULT '0000-00-00 00:00:00' COMMENT '记录更新时间',
  `create_name` varchar(255) DEFAULT NULL COMMENT '记录创建人',
  `update_name` varchar(255) DEFAULT NULL COMMENT '记录修改人',
  `deleted` tinyint DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5033 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of application_infos
-- ----------------------------
INSERT INTO `application_infos` VALUES ('5001', 'TestData001', 'IOS', '1', 'IOS system，testing information', 'B07F66FB31764A508313DE66E796EC47', '2022-09-08 14:11:14', '2022-09-09 21:07:08', null, null, '0');
INSERT INTO `application_infos` VALUES ('5002', 'TestData001', 'Android', '2', 'Android system，testing information', '4E5701101EF543FA9F9C138743A79F64', '2022-09-08 14:11:28', '2022-09-09 10:52:06', null, null, '0');
INSERT INTO `application_infos` VALUES ('5003', 'TestData003', 'Android', '2', 'Android system，testing information', 'AC3E64ED13DC4BB8972C4B7DB09F952E', '2022-09-08 14:11:31', '2022-09-09 10:53:12', null, null, '1');
INSERT INTO `application_infos` VALUES ('5004', 'TestData004', 'IOS', '1', 'IOS system，testing information  (Update)', '42397ED05A6F4AC09A0E6A11267D9128', '2022-09-08 14:11:34', '2022-09-09 11:42:22', null, null, '0');
INSERT INTO `application_infos` VALUES ('5005', 'TestData005', 'PC', '3', 'PC system，testing information', '8150DF2C4B1943DBA6F19B7F7264F404', '2022-09-08 14:11:38', '2022-09-09 11:44:26', null, null, '0');
INSERT INTO `application_infos` VALUES ('5006', 'TestData006', 'PC', '3', 'PC system，testing information', 'BC4D6B4E7106449A93AB8F2EBF466423', '2022-09-08 14:11:40', '2022-09-09 11:45:11', null, null, '0');
INSERT INTO `application_infos` VALUES ('5007', 'TestData007', 'BlackBerry', '5', 'BlackBerry system，testing information', '4FC178682F0A4810DB9EE274F319D371', '2022-09-08 14:11:43', '0000-00-00 00:00:00', null, null, '0');
INSERT INTO `application_infos` VALUES ('5008', 'TestData008', 'IOS', '1', 'IOS system，testing information', 'A5DBB57A75D3462D88099A674E43675D', '2022-09-08 14:11:46', '0000-00-00 00:00:00', null, null, '0');
INSERT INTO `application_infos` VALUES ('5009', 'TestData009', 'BlackBerry', '5', 'BlackBerry system，testing information', '3C15E73EEC9C431C91D4863D55649570', '2022-09-08 14:11:49', '0000-00-00 00:00:00', null, null, '0');
INSERT INTO `application_infos` VALUES ('5010', 'TestData010', 'FirefoxOS', '4', 'FirefoxOS system，testing information', '85B25A851EE04221A52D3723D31C4B38', '2022-09-08 14:11:53', '0000-00-00 00:00:00', null, null, '0');
INSERT INTO `application_infos` VALUES ('5011', 'TestData011', 'FirefoxOS', '4', 'FirefoxOS system，testing information', '2EFA21C8CA604A70BCCFB61888AA5CBC', '2022-09-08 14:20:50', '0000-00-00 00:00:00', null, null, '0');
INSERT INTO `application_infos` VALUES ('5012', 'TestData012', 'IOS', '1', 'IOS system，testing information', '901B2ED3E2A842B29B306ED9EA552245', '2022-09-08 14:21:21', '0000-00-00 00:00:00', null, null, '0');
INSERT INTO `application_infos` VALUES ('5013', 'TestData013', 'IOS', '1', 'IOS system，testing information', '901B2ED3E2A842B29B306ED9EA552245', '2022-09-08 16:17:29', '0000-00-00 00:00:00', null, null, '0');
INSERT INTO `application_infos` VALUES ('5014', 'TestData014', 'IOS', '1', 'IOS system，testing information', '901B2ED3E2A842B29B306ED9EA552245', '2022-09-08 16:17:32', '0000-00-00 00:00:00', null, null, '0');
INSERT INTO `application_infos` VALUES ('5015', 'TestData015', 'IOS', '1', 'IOS system，testing information', '901B2ED3E2A842B29B306ED9EA552245', '2022-09-08 16:17:35', '0000-00-00 00:00:00', null, null, '0');
INSERT INTO `application_infos` VALUES ('5016', 'TestData016', 'IOS', '1', 'IOS system，testing information', '901B2ED3E2A842B29B306ED9EA552245', '2022-09-08 16:17:38', '0000-00-00 00:00:00', null, null, '0');
INSERT INTO `application_infos` VALUES ('5017', 'TestData017', 'IOS', '1', 'IOS system，testing information', '901B2ED3E2A842B29B306ED9EA552245', '2022-09-08 16:17:41', '0000-00-00 00:00:00', null, null, '0');
INSERT INTO `application_infos` VALUES ('5018', 'TestData018', 'IOS', '1', 'IOS system，testing information', '901B2ED3E2A842B29B306ED9EA552245', '2022-09-08 16:17:44', '0000-00-00 00:00:00', null, null, '0');
INSERT INTO `application_infos` VALUES ('5019', 'TestData019', 'IOS', '1', 'IOS system，testing information', '901B2ED3E2A842B29B306ED9EA552245', '2022-09-08 16:17:48', '0000-00-00 00:00:00', null, null, '0');
INSERT INTO `application_infos` VALUES ('5020', 'TestData020', 'IOS', '1', 'IOS system，testing information', '901B2ED3E2A842B29B306ED9EA552245', '2022-09-08 16:17:52', '0000-00-00 00:00:00', null, null, '0');
INSERT INTO `application_infos` VALUES ('5021', 'TestData021', 'IOS', '1', 'IOS system，testing information', '901B2ED3E2A842B29B306ED9EA552245', '2022-09-08 16:17:57', '0000-00-00 00:00:00', null, null, '0');
INSERT INTO `application_infos` VALUES ('5022', 'TestData022', 'IOS', '1', 'IOS system，testing information', '901B2ED3E2A842B29B306ED9EA552245', '2022-09-08 16:18:01', '0000-00-00 00:00:00', null, null, '0');
INSERT INTO `application_infos` VALUES ('5023', 'NewData001', 'BlackBerry', '5', 'AAAA', 'AAAAAA', '2022-09-09 13:05:42', '0000-00-00 00:00:00', null, null, '0');
INSERT INTO `application_infos` VALUES ('5024', 'NewData002', 'Android', '2', 'BBB', 'BBB', '2022-09-09 13:07:15', '0000-00-00 00:00:00', null, null, '0');
INSERT INTO `application_infos` VALUES ('5025', 'AppTestNew001', 'FirefoxOS', '4', 'AppTestNew001', 'AppTestNew001', '2022-09-14 15:02:57', '2022-09-14 15:07:19', null, null, '0');
INSERT INTO `application_infos` VALUES ('5026', 'AppTestNew002', 'PC', '3', 'AppTestNew002', 'AppTestNew002', '2022-09-14 15:05:12', '0000-00-00 00:00:00', null, null, '0');
INSERT INTO `application_infos` VALUES ('5027', 'AppTestNew003', 'BlackBerry', '5', 'AppTestNew003', 'AppTestNew003', '2022-09-14 15:06:13', '0000-00-00 00:00:00', null, null, '0');
INSERT INTO `application_infos` VALUES ('5028', 'AppTestNew004', 'IOS', '1', 'AppTestNew004', 'AppTestNew004', '2022-09-14 15:06:27', '0000-00-00 00:00:00', null, null, '0');
INSERT INTO `application_infos` VALUES ('5029', 'AppTestNew005', 'PC', '3', 'AppTestNew005', 'AppTestNew005', '2022-09-14 15:06:40', '0000-00-00 00:00:00', null, null, '0');
INSERT INTO `application_infos` VALUES ('5030', 'AppTestNew006', 'PC', '3', 'AppTestNew006', 'AppTestNew006', '2022-09-14 15:06:55', '0000-00-00 00:00:00', null, null, '0');
INSERT INTO `application_infos` VALUES ('5031', 'AppTestNew007', 'IOS', '1', 'AppTestNew007', 'AppTestNew007', '2022-09-14 15:07:03', '0000-00-00 00:00:00', null, null, '0');
INSERT INTO `application_infos` VALUES ('5032', 'AppTestNew008', 'BlackBerry', '5', 'AppTestNew008', 'AppTestNew008', '2022-09-14 15:07:19', '0000-00-00 00:00:00', null, null, '0');

-- ----------------------------
-- Table structure for `authority`
-- ----------------------------
DROP TABLE IF EXISTS `authority`;
CREATE TABLE `authority` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `accessPath` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of authority
-- ----------------------------
INSERT INTO `authority` VALUES ('1', '/UserManagement/**');
INSERT INTO `authority` VALUES ('2', '/AppManagement/**');
INSERT INTO `authority` VALUES ('3', '/SystemSetting/**');
INSERT INTO `authority` VALUES ('4', '/SystemLog/**');
INSERT INTO `authority` VALUES ('5', '/MessagePub/**');
INSERT INTO `authority` VALUES ('6', '/MessageList/**');

-- ----------------------------
-- Table structure for `authority_role`
-- ----------------------------
DROP TABLE IF EXISTS `authority_role`;
CREATE TABLE `authority_role` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `rid` bigint DEFAULT NULL,
  `aid` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of authority_role
-- ----------------------------
INSERT INTO `authority_role` VALUES ('1', '11', '1');
INSERT INTO `authority_role` VALUES ('2', '11', '2');
INSERT INTO `authority_role` VALUES ('3', '11', '3');
INSERT INTO `authority_role` VALUES ('4', '11', '4');
INSERT INTO `authority_role` VALUES ('5', '11', '5');
INSERT INTO `authority_role` VALUES ('6', '11', '6');
INSERT INTO `authority_role` VALUES ('7', '12', '1');
INSERT INTO `authority_role` VALUES ('8', '13', '3');
INSERT INTO `authority_role` VALUES ('9', '13', '4');
INSERT INTO `authority_role` VALUES ('10', '14', '2');
INSERT INTO `authority_role` VALUES ('11', '15', '5');
INSERT INTO `authority_role` VALUES ('12', '15', '6');

-- ----------------------------
-- Table structure for `logindata`
-- ----------------------------
DROP TABLE IF EXISTS `logindata`;
CREATE TABLE `logindata` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `login_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=311 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of logindata
-- ----------------------------
INSERT INTO `logindata` VALUES ('239', 'admin', 'Administrator', '2022-09-13 17:34:35');
INSERT INTO `logindata` VALUES ('240', 'cat', 'Cat Zhang', '2022-09-13 17:35:00');
INSERT INTO `logindata` VALUES ('241', 'lucy', 'Lucy Smith', '2022-09-13 17:35:08');
INSERT INTO `logindata` VALUES ('242', 'allen', 'Allen Feng', '2022-09-13 17:35:17');
INSERT INTO `logindata` VALUES ('243', 'bob', 'Bob L. ', '2022-09-13 17:35:23');
INSERT INTO `logindata` VALUES ('244', 'test06', 'Test Name 06', '2022-09-13 17:35:31');
INSERT INTO `logindata` VALUES ('245', 'admin', 'Administrator', '2022-09-13 17:35:40');
INSERT INTO `logindata` VALUES ('246', 'cat', 'Cat Zhang', '2022-09-13 17:35:54');
INSERT INTO `logindata` VALUES ('247', 'allen', 'Allen Feng', '2022-09-13 17:35:59');
INSERT INTO `logindata` VALUES ('248', 'admin', 'Administrator', '2022-09-13 17:36:09');
INSERT INTO `logindata` VALUES ('249', 'admin', 'Administrator', '2022-09-13 17:36:38');
INSERT INTO `logindata` VALUES ('250', 'bob', 'Bob L. ', '2022-09-13 17:43:40');
INSERT INTO `logindata` VALUES ('251', 'admin', 'Administrator', '2022-09-13 17:43:51');
INSERT INTO `logindata` VALUES ('252', 'admin', 'Administrator', '2022-09-13 17:55:21');
INSERT INTO `logindata` VALUES ('253', 'allen', 'Allen Feng', '2022-09-13 17:55:38');
INSERT INTO `logindata` VALUES ('254', 'bob', 'Bob L. ', '2022-09-13 17:55:48');
INSERT INTO `logindata` VALUES ('255', 'admin', 'Administrator', '2022-09-13 17:55:56');
INSERT INTO `logindata` VALUES ('256', 'admin', 'Administrator', '2022-09-13 18:00:44');
INSERT INTO `logindata` VALUES ('257', 'admin', 'Administrator', '2022-09-13 18:03:05');
INSERT INTO `logindata` VALUES ('258', 'cat', 'Cat Zhang', '2022-09-13 18:21:34');
INSERT INTO `logindata` VALUES ('259', 'admin', 'Administrator', '2022-09-13 18:21:45');
INSERT INTO `logindata` VALUES ('260', 'cat', 'Cat Zhang', '2022-09-13 18:22:22');
INSERT INTO `logindata` VALUES ('261', 'allen', 'Allen Feng', '2022-09-13 18:22:28');
INSERT INTO `logindata` VALUES ('262', 'admin', 'Administrator', '2022-09-13 18:22:34');
INSERT INTO `logindata` VALUES ('263', 'admin', 'Administrator', '2022-09-14 09:40:49');
INSERT INTO `logindata` VALUES ('264', 'admin', 'Administrator', '2022-09-14 10:15:54');
INSERT INTO `logindata` VALUES ('265', 'admin', 'Administrator', '2022-09-14 10:38:38');
INSERT INTO `logindata` VALUES ('266', 'admin', 'Administrator', '2022-09-14 10:39:25');
INSERT INTO `logindata` VALUES ('267', 'admin', 'Administrator', '2022-09-14 10:40:30');
INSERT INTO `logindata` VALUES ('268', 'admin', 'Administrator', '2022-09-14 10:41:44');
INSERT INTO `logindata` VALUES ('269', 'admin', 'Administrator', '2022-09-14 11:12:55');
INSERT INTO `logindata` VALUES ('270', 'admin', 'Administrator', '2022-09-14 11:13:09');
INSERT INTO `logindata` VALUES ('271', 'admin', 'Administrator', '2022-09-14 11:22:31');
INSERT INTO `logindata` VALUES ('272', 'admin', 'Administrator', '2022-09-14 11:23:16');
INSERT INTO `logindata` VALUES ('273', 'admin', 'Administrator', '2022-09-14 11:24:04');
INSERT INTO `logindata` VALUES ('274', 'admin', 'Administrator', '2022-09-14 11:45:35');
INSERT INTO `logindata` VALUES ('275', 'cat', 'Cat Zhang', '2022-09-14 11:46:59');
INSERT INTO `logindata` VALUES ('276', 'allen', 'Allen Feng', '2022-09-14 11:47:09');
INSERT INTO `logindata` VALUES ('277', 'bob', 'Bob L. ', '2022-09-14 11:47:22');
INSERT INTO `logindata` VALUES ('278', 'lucy', 'Lucy Smith', '2022-09-14 11:47:33');
INSERT INTO `logindata` VALUES ('279', 'admin', 'Administrator', '2022-09-14 11:50:03');
INSERT INTO `logindata` VALUES ('280', 'admin', 'Administrator', '2022-09-14 13:02:35');
INSERT INTO `logindata` VALUES ('281', 'admin', 'Administrator', '2022-09-14 13:47:17');
INSERT INTO `logindata` VALUES ('282', 'admin', 'Administrator', '2022-09-14 13:55:43');
INSERT INTO `logindata` VALUES ('283', 'admin', 'Administrator', '2022-09-14 13:56:38');
INSERT INTO `logindata` VALUES ('284', 'allen', 'Allen Feng', '2022-09-14 13:58:17');
INSERT INTO `logindata` VALUES ('285', 'cat', 'Cat Zhang', '2022-09-14 13:58:26');
INSERT INTO `logindata` VALUES ('286', 'bob', 'Bob L. ', '2022-09-14 13:58:34');
INSERT INTO `logindata` VALUES ('287', 'lucy', 'Lucy Smith', '2022-09-14 13:58:46');
INSERT INTO `logindata` VALUES ('288', 'admin', 'Administrator', '2022-09-14 13:58:52');
INSERT INTO `logindata` VALUES ('289', 'admin', 'Administrator', '2022-09-14 14:32:17');
INSERT INTO `logindata` VALUES ('290', 'admin', 'Administrator', '2022-09-14 15:00:20');
INSERT INTO `logindata` VALUES ('291', 'admin', 'Administrator', '2022-09-14 16:04:03');
INSERT INTO `logindata` VALUES ('292', 'admin', 'Administrator', '2022-09-14 16:57:22');
INSERT INTO `logindata` VALUES ('293', 'admin', 'Administrator', '2022-09-15 09:42:11');
INSERT INTO `logindata` VALUES ('294', 'admin', 'Administrator', '2022-09-15 10:04:04');
INSERT INTO `logindata` VALUES ('295', 'admin', 'Administrator', '2022-09-15 10:04:22');
INSERT INTO `logindata` VALUES ('296', 'admin', 'Administrator', '2022-09-15 10:07:40');
INSERT INTO `logindata` VALUES ('297', 'admin', 'Administrator', '2022-09-15 10:54:28');
INSERT INTO `logindata` VALUES ('298', 'admin', 'Administrator', '2022-09-15 10:58:05');
INSERT INTO `logindata` VALUES ('299', 'admin', 'Administrator', '2022-09-15 10:58:20');
INSERT INTO `logindata` VALUES ('300', 'admin', 'Administrator', '2022-09-15 10:59:55');
INSERT INTO `logindata` VALUES ('301', 'admin', 'Administrator', '2022-09-15 11:02:36');
INSERT INTO `logindata` VALUES ('302', 'admin', 'Administrator', '2022-09-15 11:04:16');
INSERT INTO `logindata` VALUES ('303', 'admin', 'Administrator', '2022-09-15 11:07:03');
INSERT INTO `logindata` VALUES ('304', 'admin', 'Administrator', '2022-09-15 11:18:51');
INSERT INTO `logindata` VALUES ('305', 'admin', 'Administrator', '2022-09-15 11:25:30');
INSERT INTO `logindata` VALUES ('306', 'admin', 'Administrator', '2022-09-15 11:58:23');
INSERT INTO `logindata` VALUES ('307', 'admin', 'Administrator', '2022-09-15 12:39:17');
INSERT INTO `logindata` VALUES ('308', 'admin', 'Administrator', '2022-09-15 13:06:15');
INSERT INTO `logindata` VALUES ('309', 'admin', 'Administrator', '2022-09-15 13:18:16');
INSERT INTO `logindata` VALUES ('310', 'admin', 'Administrator', '2022-09-15 13:42:04');

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` bigint NOT NULL,
  `parent_id` bigint DEFAULT NULL COMMENT '父节点',
  `icon` varchar(25) DEFAULT NULL COMMENT '图标',
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `path` varchar(100) DEFAULT NULL COMMENT '路径',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='外网样本信息';

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', null, 'el-icon-user', 'User', null);
INSERT INTO `menu` VALUES ('2', '1', 'el-icon-receiving', 'User Management', '/UserManagement');
INSERT INTO `menu` VALUES ('3', null, 'el-icon-s-grid', 'Application', null);
INSERT INTO `menu` VALUES ('4', '3', 'el-icon-receiving', 'App Management', '/AppManagement');
INSERT INTO `menu` VALUES ('5', null, 'el-icon-setting', 'Setting', null);
INSERT INTO `menu` VALUES ('6', '5', 'el-icon-receiving', 'System Setting', '/SystemSetting');
INSERT INTO `menu` VALUES ('7', '5', 'el-icon-receiving', 'System Log', '/SystemLog');
INSERT INTO `menu` VALUES ('8', null, 'el-icon-s-management', 'Message', null);
INSERT INTO `menu` VALUES ('9', '8', 'el-icon-receiving', 'Message Pub', '/MessagePub');
INSERT INTO `menu` VALUES ('10', '8', 'el-icon-receiving', 'Message List', '/MessageList');

-- ----------------------------
-- Table structure for `menu_role`
-- ----------------------------
DROP TABLE IF EXISTS `menu_role`;
CREATE TABLE `menu_role` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `mid` bigint DEFAULT NULL,
  `rid` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of menu_role
-- ----------------------------
INSERT INTO `menu_role` VALUES ('1', '1', '11');
INSERT INTO `menu_role` VALUES ('2', '2', '11');
INSERT INTO `menu_role` VALUES ('3', '3', '11');
INSERT INTO `menu_role` VALUES ('4', '4', '11');
INSERT INTO `menu_role` VALUES ('5', '5', '11');
INSERT INTO `menu_role` VALUES ('6', '6', '11');
INSERT INTO `menu_role` VALUES ('7', '1', '12');
INSERT INTO `menu_role` VALUES ('8', '2', '12');
INSERT INTO `menu_role` VALUES ('9', '5', '13');
INSERT INTO `menu_role` VALUES ('10', '6', '13');
INSERT INTO `menu_role` VALUES ('11', '3', '14');
INSERT INTO `menu_role` VALUES ('12', '4', '14');
INSERT INTO `menu_role` VALUES ('13', '7', '11');
INSERT INTO `menu_role` VALUES ('14', '8', '15');
INSERT INTO `menu_role` VALUES ('15', '9', '15');
INSERT INTO `menu_role` VALUES ('16', '8', '11');
INSERT INTO `menu_role` VALUES ('17', '9', '11');
INSERT INTO `menu_role` VALUES ('18', '10', '11');
INSERT INTO `menu_role` VALUES ('19', '10', '15');

-- ----------------------------
-- Table structure for `msg_pub`
-- ----------------------------
DROP TABLE IF EXISTS `msg_pub`;
CREATE TABLE `msg_pub` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `mdContent` longtext,
  `htmlContent` longtext,
  `uid` bigint DEFAULT NULL,
  `publishTime` datetime DEFAULT CURRENT_TIMESTAMP,
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` int DEFAULT NULL COMMENT '信息状态 1-已发布，2-草稿箱，3-回收站',
  `views` int DEFAULT '0' COMMENT '浏览量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of msg_pub
-- ----------------------------
INSERT INTO `msg_pub` VALUES ('2', 'News 001', 'Daily News 0001 ====News====', '<p>Daily  News 0001 ====News====</p>\n', '8001', '2022-09-14 16:04:35', '2022-09-14 16:06:33', '1', '0');
INSERT INTO `msg_pub` VALUES ('3', 'News 002', 'Daily News 0002 ====News====', '<p>Daily  News 0002 ====News====</p>\n', '8001', '2022-09-14 16:07:00', '2022-09-14 16:10:09', '1', '0');
INSERT INTO `msg_pub` VALUES ('4', 'News 003', 'Daily News 0003 ====News====', '<p>Daily  News 0003 ====News====</p>', '8001', '2022-09-15 11:00:29', '2022-09-15 11:00:29', '1', '0');
INSERT INTO `msg_pub` VALUES ('5', 'News 004', 'Daily News 0004 ====News====', '<p>Daily  News 0004 ====News====</p>', '8001', '2022-09-15 11:00:33', '2022-09-15 11:00:41', '1', '0');
INSERT INTO `msg_pub` VALUES ('6', 'News 005', 'Daily News 0005 ====News====', '<p>Daily  News 0005 ====News====</p>', '8001', '2022-09-15 11:01:02', '2022-09-15 11:01:02', '1', '0');
INSERT INTO `msg_pub` VALUES ('7', 'News 006', 'Daily News 0006 ====News====', '<p>Daily  News 0006 ====News====</p>', '8001', '2022-09-15 11:01:15', '2022-09-15 11:01:15', '1', '0');
INSERT INTO `msg_pub` VALUES ('8', 'News 007', 'Daily News 0007 ====News====', '<p>Daily  News 0007 ====News====</p>', '8001', '2022-09-15 11:01:26', '2022-09-15 11:01:26', '1', '0');
INSERT INTO `msg_pub` VALUES ('9', 'News 008', 'Daily News 0008 ====News====', '<p>Daily  News 0008 ====News====</p>', '8001', '2022-09-15 11:01:34', '2022-09-15 11:01:34', '1', '0');
INSERT INTO `msg_pub` VALUES ('10', 'News 009', 'Daily News 0009 ====News====', '<p>Daily  News 0009 ====News====</p>', '8001', '2022-09-15 11:01:40', '2022-09-15 11:01:40', '1', '0');
INSERT INTO `msg_pub` VALUES ('11', 'News 010 (Draft)', 'Daily News 0001 ====News====', '<p>Daily  News 0001 ====News====</p>', '8001', '2022-09-15 11:03:05', '2022-09-15 11:03:05', '2', '0');
INSERT INTO `msg_pub` VALUES ('12', 'News 011 (Draft)', 'Daily News 0002 ====News====', '<p>Daily  News 0002 ====News====</p>', '8001', '2022-09-15 11:07:37', '2022-09-15 11:07:41', '2', '0');
INSERT INTO `msg_pub` VALUES ('13', 'News 012 (Draft)', 'Daily News 0003 ====News====', '<p>Daily  News 0003 ====News====</p>', '8001', '2022-09-15 11:19:16', '2022-09-15 11:19:31', '2', '0');
INSERT INTO `msg_pub` VALUES ('14', 'News 013 (Draft)', 'Daily News 0004 ====News====', '<p>Daily  News 0004 ====News====</p>', '8001', '2022-09-15 11:19:46', '2022-09-15 11:19:52', '2', '0');
INSERT INTO `msg_pub` VALUES ('15', 'News 014 (Recy)', 'Daily News 0001 ====News====', '<p>Daily  News 0001 ====News====</p>', '8001', '2022-09-15 11:25:45', '2022-09-15 11:26:21', '3', '0');
INSERT INTO `msg_pub` VALUES ('16', 'News 015 (Recy)', 'Daily News 0002 ====News====', '<p>Daily  News 0002 ====News====</p>', '8001', '2022-09-15 11:26:50', '2022-09-15 11:26:54', '3', '0');

-- ----------------------------
-- Table structure for `persistent_logins`
-- ----------------------------
DROP TABLE IF EXISTS `persistent_logins`;
CREATE TABLE `persistent_logins` (
  `username` varchar(64) NOT NULL,
  `series` varchar(64) NOT NULL,
  `token` varchar(64) NOT NULL,
  `last_used` timestamp NOT NULL,
  PRIMARY KEY (`series`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of persistent_logins
-- ----------------------------

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `rname` varchar(255) DEFAULT NULL,
  `rnameZh` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('11', 'ROLE_admin', 'Administrator');
INSERT INTO `role` VALUES ('12', 'ROLE_user', 'User Manager');
INSERT INTO `role` VALUES ('13', 'ROLE_system', 'System Manager');
INSERT INTO `role` VALUES ('14', 'ROLE_application', 'App Manager');
INSERT INTO `role` VALUES ('15', 'ROLE_msg', 'Message Manager');

-- ----------------------------
-- Table structure for `system_setting`
-- ----------------------------
DROP TABLE IF EXISTS `system_setting`;
CREATE TABLE `system_setting` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `parentId` bigint DEFAULT NULL,
  `sname` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of system_setting
-- ----------------------------
INSERT INTO `system_setting` VALUES ('1', null, '设置1', '2022-08-09 15:16:23');
INSERT INTO `system_setting` VALUES ('2', null, '设置2', '2022-08-09 15:16:10');
INSERT INTO `system_setting` VALUES ('3', null, '设置3', '2022-08-02 15:16:39');
INSERT INTO `system_setting` VALUES ('4', '1', '设置1.1', '2022-08-05 15:16:11');
INSERT INTO `system_setting` VALUES ('5', '1', '设置1.2', '2022-08-09 15:18:22');
INSERT INTO `system_setting` VALUES ('6', '2', '设置2.1', '2022-08-09 15:18:26');
INSERT INTO `system_setting` VALUES ('7', '3', '设置3.1', '2022-08-01 15:18:28');
INSERT INTO `system_setting` VALUES ('8', '3', '设置3.2', '2022-08-04 15:19:23');
INSERT INTO `system_setting` VALUES ('9', '3', '设置3.3', '2022-08-02 15:19:27');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nickname` varchar(255) DEFAULT NULL COMMENT '昵称',
  `icon` mediumtext COMMENT '头像',
  `gender` tinyint DEFAULT '1' COMMENT '性别',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `phoneNo` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建时间',
  `update_time` timestamp NULL DEFAULT '0000-00-00 00:00:00' COMMENT '记录更新时间',
  `create_name` varchar(255) DEFAULT NULL COMMENT '记录创建人',
  `update_name` varchar(255) DEFAULT NULL COMMENT '记录修改人',
  `enabled` tinyint DEFAULT '1',
  `nonLocked` tinyint DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8045 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('8001', 'admin', '$2a$10$dpbvtBUlu5EHW3g/Spk9Q.Ap2A9PASx3jsvjEuJjhS.rApdoBHM/u', 'Administrator', null, '1', 'admin@sso.com', '13011112222', '2022-08-09 14:32:42', '2022-09-07 18:40:07', 'unknow', null, '1', '1');
INSERT INTO `user` VALUES ('8002', 'allen', '$2a$10$HXrH/OyRduv7Pj83SjGXBOWYBKYBMknRFILxx/F3qfXVXwFsuIg..', 'Allen Feng', null, '1', 'allen@sso.com', '13033334444', '2022-08-09 14:36:27', '2022-09-13 12:19:10', null, null, '1', '1');
INSERT INTO `user` VALUES ('8003', 'cat', '$2a$10$wETqUYmrIy2wfM3jK/0L8ev3R/4oUVF9Qlan.BhOrgkSsXpZu2SPi', 'Cat Zhang', null, '0', 'cat@sso.com', '11122223333', '2022-08-09 14:36:59', '2022-09-13 18:22:15', null, null, '1', '1');
INSERT INTO `user` VALUES ('8004', 'bob', '$2a$10$.wnisCFfJldqRP670hR0LeoqCd2ElQog/vH7rwLXRM0l2dRpdGYyi', 'Bob L. ', null, '1', 'bob@sso.com', '15999991111', '2022-08-09 14:38:18', '2022-09-08 09:23:36', null, null, '1', '1');
INSERT INTO `user` VALUES ('8005', 'lucy', '$2a$10$.aiyCYGI0PpqgzZM0KAMR.2/1WqG0oFmrx2tDWXHhKuiGrs7g7/Ye', 'Lucy Smith', null, '0', 'lucy@sso.com', '10144445555', '2022-08-09 14:39:22', '2022-09-07 15:52:05', null, null, '1', '1');
INSERT INTO `user` VALUES ('8006', 'test01', '$2a$10$.aiyCYGI0PpqgzZM0KAMR.2/1WqG0oFmrx2tDWXHhKuiGrs7g7/Ye', 'Test Name 01', null, '1', null, null, '2022-08-09 17:35:17', '2022-09-07 15:52:05', null, null, '0', '1');
INSERT INTO `user` VALUES ('8007', 'test02', '$2a$10$.aiyCYGI0PpqgzZM0KAMR.2/1WqG0oFmrx2tDWXHhKuiGrs7g7/Ye', 'Test Name 02', null, '1', null, null, '2022-08-09 17:33:52', '2022-09-07 15:52:05', null, null, '1', '0');
INSERT INTO `user` VALUES ('8036', 'test03', '$2a$10$IaFXyLetQawn7BC4baxTuO92Kw8UB62cJsLd60SWxPXXfj4JN2jGu', 'Test Name 03', null, '1', 'test03@sso.com', 'test03', '2022-09-13 15:58:27', '2022-09-13 16:02:24', null, null, '1', '1');
INSERT INTO `user` VALUES ('8037', 'test04', '$2a$10$Yjacw1SIIK9VCz5bQswuWuXUZ2vrbIOHOtveWYjmXtnqDUiXuKuV.', 'Test Name 04', null, '0', 'test04@sso.com', 'test04', '2022-09-13 15:59:01', '2022-09-13 16:02:30', null, null, '1', '1');
INSERT INTO `user` VALUES ('8038', 'test05', '$2a$10$t9puPbuzNpfGqT1YtTcj9ei8lxW.7UOdcUFGjihDGyYByrSZMk3Zi', 'Test Name 05', null, '0', 'test05@sso.com', 'test05', '2022-09-13 15:59:46', '2022-09-13 16:02:33', null, null, '1', '1');
INSERT INTO `user` VALUES ('8039', 'test06', '$2a$10$qnMN.71TowAzSXwWcB5ZsOKx.tLfxwFLvbRHAXsNK91ajcWzosKUe', 'Test Name 06', null, '1', 'test05@sso.com', 'test05', '2022-09-13 16:00:11', '2022-09-13 16:02:38', null, null, '1', '1');
INSERT INTO `user` VALUES ('8040', 'test07', '$2a$10$Qm9a79IdQQaN78jJqyihX.t8nRoiHYIlryuFtpwz4WyVYOU8aYu2C', 'Test Name 07', null, '1', 'test07@sso.com', 'test07', '2022-09-13 16:01:01', '2022-09-13 16:02:41', null, null, '1', '1');
INSERT INTO `user` VALUES ('8041', 'test08', '$2a$10$xdgmj4mMiMfBHYji5zx6Nu.uJRJYdg90VnfYLgDW6ZEjzwmNIcVTa', 'Test Name 08', null, '1', 'test08@sso.com', 'test08', '2022-09-13 16:01:28', '2022-09-13 16:02:46', null, null, '1', '1');
INSERT INTO `user` VALUES ('8042', 'test09', '$2a$10$mmN32c1htgJjuh8maOJnZO/RZqdP0ByfijlIQwYWIEzcCoXCNSP3G', 'Test Name 09', null, '0', 'test09@sso.com', 'test09', '2022-09-13 16:01:51', '2022-09-13 16:02:48', null, null, '1', '1');
INSERT INTO `user` VALUES ('8043', 'aaa', '$2a$10$IEc763cyrfaedT.6dTshw.LPTmJHNEcqKfMIHHnG7y6ee/26p36uS', 'Test Name A', null, '0', 'aaa@sso.com', 'aaa', '2022-09-13 16:02:06', '2022-09-13 16:02:52', null, null, '1', '1');
INSERT INTO `user` VALUES ('8044', 'NewTest003', '$2a$10$xLoU.mRfbkKDNbwLKP7oveVF02oOdrVUx6mCwqDYfe/T5dK1fF8f6', 'NewTest003', null, '0', 'NewTest003@sso.com', 'NewTest003', '2022-09-14 15:01:07', '2022-09-14 15:01:21', null, null, '1', '1');

-- ----------------------------
-- Table structure for `user_role`
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uid` bigint DEFAULT NULL,
  `rid` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '8001', '11');
INSERT INTO `user_role` VALUES ('7', '8006', '15');
INSERT INTO `user_role` VALUES ('8', '8007', '15');
INSERT INTO `user_role` VALUES ('9', '8010', '15');
INSERT INTO `user_role` VALUES ('10', '8011', '15');
INSERT INTO `user_role` VALUES ('11', '8012', '15');
INSERT INTO `user_role` VALUES ('12', '8013', '15');
INSERT INTO `user_role` VALUES ('13', '8014', '15');
INSERT INTO `user_role` VALUES ('16', '8017', '15');
INSERT INTO `user_role` VALUES ('110', '8005', '14');
INSERT INTO `user_role` VALUES ('111', '8005', '12');
INSERT INTO `user_role` VALUES ('118', '8016', '15');
INSERT INTO `user_role` VALUES ('119', '8016', '11');
INSERT INTO `user_role` VALUES ('129', '8002', '12');
INSERT INTO `user_role` VALUES ('130', '8002', '13');
INSERT INTO `user_role` VALUES ('144', '8004', '15');
INSERT INTO `user_role` VALUES ('145', '8021', '13');
INSERT INTO `user_role` VALUES ('146', '8022', '15');
INSERT INTO `user_role` VALUES ('148', '8030', '11');
INSERT INTO `user_role` VALUES ('149', '8036', '12');
INSERT INTO `user_role` VALUES ('150', '8037', '13');
INSERT INTO `user_role` VALUES ('151', '8038', '14');
INSERT INTO `user_role` VALUES ('152', '8039', '15');
INSERT INTO `user_role` VALUES ('153', '8040', '12');
INSERT INTO `user_role` VALUES ('154', '8041', '14');
INSERT INTO `user_role` VALUES ('155', '8042', '12');
INSERT INTO `user_role` VALUES ('156', '8043', '11');
INSERT INTO `user_role` VALUES ('157', '8003', '13');
INSERT INTO `user_role` VALUES ('158', '8044', '14');
