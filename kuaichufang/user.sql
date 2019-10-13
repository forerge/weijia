/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50714
 Source Host           : localhost:3306
 Source Schema         : weijia

 Target Server Type    : MySQL
 Target Server Version : 50714
 File Encoding         : 65001

 Date: 12/10/2019 15:06:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `u_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `u_pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '用户密码',
  `uh_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户当前所住的房源',
  `u_one` enum('0','1','-1') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '租客（0：不限，1：是，-1：不是）',
  `u_two` enum('0','1','-1') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '-1' COMMENT '房东（0：不限，1：是，-1：不是）',
  `u_three` enum('0','1','-1') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '-1' COMMENT '职业房东（0：不限，1：是，-1：不是）',
  `u_four` enum('0','1','-1') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '-1' COMMENT '职业经纪人（0：不限，1：是，-1：不是）',
  `u_five` enum('0','1','-1') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '-1' COMMENT '服务维修人员（0：不限，1：是，-1：不是）',
  `u_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户名称',
  `u_level` enum('0','1','-1') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '0：不限，1：正常，-1：删除',
  `u_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '身份证号',
  `u_num0` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '身份证号正面照',
  `u_num1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '身份证反面照',
  `u_phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户联系电话',
  `u_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '营业执照',
  `u_sex` enum('0','1','2') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '性别   （0：不限，1：男，2：女）',
  `u_listen` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '电话接听时段',
  `u_money` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '商业合作保障金',
  `u_ctime` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户创建时间',
  `u_ma` int(225) UNSIGNED NOT NULL DEFAULT 0 COMMENT '邀请码（邀请别人）',
  `u_mato` int(225) UNSIGNED NOT NULL DEFAULT 0 COMMENT '邀请码（被邀请）',
  `u_tname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '真实姓名',
  `u_yajin` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '住房押金',
  `u_zujin` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '月租金',
  `u_money1` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '余额',
  `u_intime` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '入住时间',
  `u_outtime` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '退房时间',
  `u_shoucang` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `u_haole` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '真实的输入密码',
  PRIMARY KEY (`u_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 85 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '333333' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (82, 'e10adc3949ba59abbe56e057f20f883e24c0aa9a36f508524c590a14211bbf9f', 0, '1', '-1', '-1', '1', '-1', '', '1', '', '', '', '13000000001', '[\"id_card\\/1333c87a97c338bd8cc0c3051d24bb27.png\",\"id_card\\/b1ac4b5eccac613ff04d06d04d18f2d7.png\"]', '0', '', 6000, 1570802982, 0, 0, '尤为', 0, 0, 0, 0, 0, '', '123456');
INSERT INTO `user` VALUES (83, 'e10adc3949ba59abbe56e057f20f883e2b4f89d91fb953bd9c20f51b40c38902', 0, '1', '-1', '-1', '-1', '-1', '', '1', '', '', '', '13100000001', '', '0', '', 0, 1570806192, 0, 0, '', 0, 0, 0, 0, 0, '', '123456');
INSERT INTO `user` VALUES (84, 'e10adc3949ba59abbe56e057f20f883e688c8233da422f6784907498c8247bc2', 0, '1', '-1', '-1', '-1', '-1', '', '1', '', '', '', '13200000001', '', '0', '', 0, 1570858235, 0, 0, '', 0, 0, 0, 0, 0, '', '123456');

SET FOREIGN_KEY_CHECKS = 1;
