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

 Date: 13/10/2019 00:41:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for shenqing
-- ----------------------------
DROP TABLE IF EXISTS `shenqing`;
CREATE TABLE `shenqing`  (
  `s_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `su_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '申请用户的编号',
  `s_status` enum('0','1','2','-1') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '申请状态（0：不限，1：申请中，2：通过，-1：拒绝）',
  `s_level` enum('0','1','2','3','4','5') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '申请类型（0：不限，1：职业房东，2职业经纪人，3：房源转到青年公寓，4：房产认证，5：实名认证（租客发布房源））',
  `s_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '真是姓名',
  `s_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '身份证号',
  `s_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '证件照',
  `s_refuse` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '拒绝原因',
  `s_ctime` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '申请发起时间',
  `s_money` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '押金（申请职业房东/经纪人--必填）',
  `s_ma` int(255) UNSIGNED NOT NULL DEFAULT 0 COMMENT '推荐码',
  `s_state` enum('-1','0','1') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '0：不限，1：正常，-1：删除',
  `sh_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '房源编号',
  PRIMARY KEY (`s_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shenqing
-- ----------------------------
INSERT INTO `shenqing` VALUES (29, 82, '2', '2', '尤为', '0', '[\"id_card\\/1333c87a97c338bd8cc0c3051d24bb27.png\",\"id_card\\/b1ac4b5eccac613ff04d06d04d18f2d7.png\"]', '0', 1570803097, 0, 0, '1', 0);
INSERT INTO `shenqing` VALUES (30, 85, '2', '2', '老邓', '0', '[\"id_card\\/501832e19a69fdbca6074994344d8ca4.png\",\"id_card\\/573d75e7f47bcd15ffd9a3f50254c2f2.png\"]', '0', 1570891016, 0, 0, '1', 0);
INSERT INTO `shenqing` VALUES (31, 85, '1', '4', '0', '0', '0', '0', 1570895030, 0, 0, '1', 36);

SET FOREIGN_KEY_CHECKS = 1;
