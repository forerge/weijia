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

 Date: 13/10/2019 00:41:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for house
-- ----------------------------
DROP TABLE IF EXISTS `house`;
CREATE TABLE `house`  (
  `h_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '出租房源发布表',
  `h_pid` int(11) NOT NULL DEFAULT 0 COMMENT '大于0表示合租房源的主房编号，0：表示一般房源，-1：全权委托，-2：委托带客看房',
  `hu_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '发布用户的ID',
  `hu_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '房源发布人真实姓名',
  `h_state` tinyint(2) UNSIGNED NOT NULL DEFAULT 0 COMMENT '（0：不限  ， 1：整租  ，  2：合租）',
  `h_level` enum('0','1','2','-1','-2') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '房源出租状态（0：不限，1：出租中，2：下架，-1：成交，-2：删除）',
  `h_weijia` enum('0','1','2') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '是否是\"唯家\"自己的房源（0：不限，1：唯家房源，2：社会房源）',
  `h_status` enum('0','1','2','-1') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '2' COMMENT '房源展示位置（0：不限，1：快租房，2：青年公寓）',
  `h_rule` enum('0','1','2','3') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '租金支付规则  （0：不限，1：压一付一，2：压一付三，3：半年付）',
  `h_space` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '房子的面积',
  `h_money` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '房屋出租价格',
  `h_elevator` enum('0','1','-1') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '是否有电梯   （0：不限，1：有，-1：没有）',
  `h_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '所在城市',
  `h_province` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '所在省份',
  `h_area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '所在（区、县）',
  `h_town` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '所在（镇、乡）',
  `h_qv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '所在小区名称',
  `h_addr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '详细地址（**号楼**单元**号）',
  `h_ting` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '***厅',
  `h_shi` int(11) NOT NULL DEFAULT 0 COMMENT '***室（合租时1：主卧，2次卧）',
  `h_wei` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '***卫生间',
  `h_xiang` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '朝向',
  `h_floor` varchar(225) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '楼层',
  `h_in` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '入住时间（发表房源时的）',
  `h_many` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '宜住人数',
  `h_listen` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '接听电话时间',
  `h_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '（补充几句）补充文字',
  `h_lock` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '房源密码锁--密码',
  `h_ctime` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '发布时间',
  `h_etime` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '下架或租出时间',
  `h_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '房源证件照片',
  `h_hname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '乙方姓名',
  `h_hnum` varchar(225) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '房产证编号',
  `h_money1` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '成交价',
  `h_tuijian` enum('0','1','2') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '热门推荐房源（0：不限，1：不参与，2：热推）',
  `h_inmoney` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '包含费用',
  `h_config` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '房屋配置',
  `h_ask` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '出租要求',
  `h_uploads` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '房源展示样品图片',
  `h_jilu` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `h_metro_no` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '靠近几号地铁',
  `h_metro_length` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '离地铁的距离',
  `hu_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '负责人的手机号',
  `h_wuye` enum('0','1','2','3') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '物业交接情况（0：不限，1：未交接，2：审核中，3：交接完毕）',
  `h_car` enum('-1','0','1') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '-1' COMMENT '是否有停车位0：不限，1：有，-1：没有',
  `h_shenhe` enum('-1','1','0') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '-1' COMMENT '是否审核0：不限，1：已审核，-1：未审核',
  `h_liangdian` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '房屋亮点',
  `h_tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '业主电话',
  PRIMARY KEY (`h_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of house
-- ----------------------------
INSERT INTO `house` VALUES (30, 0, 82, '尤为', 1, '-1', '2', '1', '2', 86, 2000, '-1', '市辖区', '上海市', '普陀区', '', '运河一区', '5号楼501室', 1, 3, 1, '南', '5', '', 0, '', '一起嗨', '0', 0, 1570864745, '[\"house\\/302073d8e070c1e9dd7d37b82eab8c93.png\",\"house\\/a0104ab5a2aeb4956b30127582d5074a.png\"]', '刘备', '0', 1200, '1', '[\"a\",\"wuyefei\",\"youxiandianshifei\"]', '[\"a\",\"chuang\",\"yigui\",\"shafa\",\"zhuoyi\",\"dianshi\",\"kongtiao\",\"xiyiji\",\"bingxiang\",\"reshuiqi\",\"ranqizao\",\"chouyanji\",\"diancilu\",\"weibolu\",\"duliweishengjian\",\"kezuofan\"]', '[\"a\",\"yijiaren\",\"jinzhiyangchongwu\",\"zuhuwending\"]', '[\"house\\/6a968d01cc339e5e5b5b2944aa0abcd0.png\",\"house\\/3f6654a4ba489a7e67638bb4606f885d.png\"]', '', 5, 500, '13000000001', '1', '-1', '1', '[\"a\",\"nanbeitongtou\",\"shoucichuzu\",\"youyangtai\"]', '0');
INSERT INTO `house` VALUES (31, 0, 82, '尤为', 2, '-1', '2', '1', '2', 26, 1200, '1', '市辖区', '上海市', '徐汇区', '', '玉兰新村', '8号楼802室', 1, 2, 0, '南', '8', '', 0, '', '找个朋友', '0', 0, 1570864641, '[\"house\\/dfb17c21ef3466a48ded48aceefbf5cb.png\",\"house\\/894b3b6db7efd718011ee47c6c779635.png\"]', '关羽', '0', 1000, '1', '[\"a\",\"kuandaifei\",\"wuyefei\",\"youxiandianshifei\"]', '[\"a\",\"kuandai\",\"chuang\",\"yigui\",\"shafa\",\"zhuoyi\",\"dianshi\",\"kongtiao\",\"xiyiji\",\"bingxiang\",\"reshuiqi\",\"ranqizao\",\"chouyanji\",\"diancilu\",\"weibolu\",\"kezuofan\"]', '[\"a\",\"zhixiannvsheng\",\"jinzhiyangchongwu\",\"zuoxizhengchang\",\"jinyan\"]', '[\"house\\/22733a27395cf9782a64c7f29ed82b59.png\",\"house\\/5ce4ea55a8235ec8d5c16af8efced444.png\"]', '', 8, 800, '13000000001', '1', '-1', '1', '[\"a\",\"nanbeitongtou\",\"youyangtai\"]', '0');
INSERT INTO `house` VALUES (32, -1, 82, '尤为', 1, '1', '2', '1', '1', 105, 2000, '-1', '市辖区', '上海市', '黄浦区', '', '小天鹅', '7号楼707室', 1, 1, 1, '东', '3', '', 0, '', '来吧', '0', 0, 0, '[\"house\\/1ca2eff37587e8fed59b8de7e0c2fbd5.png\"]', '孙尚香', '0', 0, '1', '[\"a\",\"wuyefei\"]', '[\"a\",\"kuandai\"]', '[\"a\",\"zhixiannvsheng\"]', '[\"house\\/939b75f90c4adcc7eead90ad6814ecdb.png\"]', '', 2, 1000, '13000000001', '1', '-1', '-1', '[\"a\",\"nanbeitongtou\"]', '0');
INSERT INTO `house` VALUES (36, 0, 85, '老邓', 2, '1', '2', '1', '1', 60, 2000, '-1', '市辖区', '上海市', '黄浦区', '', '日日小区', '9号楼345室', 1, 1, 0, '南', '1', '', 0, '', '来吧', '0', 0, 0, '[\"house\\/290a8126ddcce48f0427083b4ba6eb7c.png\"]', '张合', '0', 0, '1', '[\"a\",\"kuandaifei\"]', '[\"a\",\"kuandai\"]', '[\"a\",\"yinianqizu\"]', '[\"house\\/7006c3edcc1c1164e8fc749d70e0646a.png\",\"house\\/3c05843cfcc3235b7e14756a1a73860b.png\"]', '', 2, 600, '13300000001', '1', '1', '-1', '[\"a\",\"nanbeitongtou\"]', '0');

SET FOREIGN_KEY_CHECKS = 1;
