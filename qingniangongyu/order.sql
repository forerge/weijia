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

 Date: 12/10/2019 15:02:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `o_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ou_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '租客编号',
  `oh_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '房源编号',
  `ohu_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '房源负责人编号',
  `o_ctime` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '下单时间',
  `o_etime` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '退房时间',
  `o_money` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '支付金额',
  `o_ymoney` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '押金',
  `o_zmoney` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '租金',
  `o_status` enum('0','1','2','-1','3') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '0：不限，1：等待确认，2：已接收，3：完成，-1：无效',
  `o_level` enum('0','1','-1') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '0：不限，1：正常，-1：删除（不展示）',
  `o_long` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '租房时长',
  `o_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '合同照片/相关照片',
  `o_state` enum('0','1','2','3') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '0：不限，1：微信，2：支付宝，3：其他',
  `o_leixing` enum('0','1','2','3','4','5','6','7') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '0：不限，1：租房，2：保洁，3：维修，4：交租，5：水费，6：电费，7：燃气费',
  `o_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '收款账号',
  PRIMARY KEY (`o_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (2, 83, 31, 82, 0, 0, 10000, 2000, 1000, '1', '1', 24, '[\"id_card\\/ffe6d1985f7a8a29d3d90be3d15f003e.png\"]', '0', '1', '0');
INSERT INTO `order` VALUES (3, 84, 30, 82, 0, 0, 10000, 2000, 1200, '1', '1', 24, '[\"id_card\\/a84c85b47bac49956e767e4548331806.png\",\"id_card\\/6a5342ad4e1d1037aa57b02bd9dda2ba.png\"]', '0', '1', '0');

SET FOREIGN_KEY_CHECKS = 1;
