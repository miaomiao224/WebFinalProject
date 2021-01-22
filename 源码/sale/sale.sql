/*
Navicat MySQL Data Transfer


Source Server         : sxtit
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : sale

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2018-05-18 23:08:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `message`
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `message` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('3', 'test', 'yon', 'sfd');
INSERT INTO `message` VALUES ('4', 'testmessage', '123@123.com', 'testcontent');
INSERT INTO `message` VALUES ('5', 'test', '123@123.com', 'message');
INSERT INTO `message` VALUES ('6', '乔峰', 'qf@126.com', '希望你们的网站越来越好！');

-- ----------------------------
-- Table structure for `order1`
-- ----------------------------
DROP TABLE IF EXISTS `order1`;
CREATE TABLE `order1` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `proid` int(10) DEFAULT NULL COMMENT '商品id',
  `count` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '数量',
  `singleprice` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '单价',
  `price` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '总价',
  `userid` int(10) DEFAULT NULL COMMENT '购买者',
  `sffk` int(2) DEFAULT '0' COMMENT '是否支付',
  `tel` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '联系电话',
  `address` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '送货地址',
  `date` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '下单日期',
  `senddept` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '快递公司',
  `visible` int(50) DEFAULT '1' COMMENT '是否可见',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of order1
-- ----------------------------
INSERT INTO `order1` VALUES ('10', '43', '2', '450', '900', '3', '1', '13822112857', '武汉市江夏区文化大道2号', '2018-05-18', '中国邮政', '1');
INSERT INTO `order1` VALUES ('11', '42', '1', '100', '100', '3', '1', '13822112857', '武汉市江夏区文化大道2号', '2018-05-18', '中国邮政', '1');

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `img` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `content` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `price` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `sfcx` int(2) DEFAULT '0' COMMENT '是否促销',
  `newprice` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '促销价',
  `sfms` int(2) DEFAULT '0' COMMENT '是否秒杀',
  `msprice` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '秒杀价格',
  `msdate` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '秒杀时间',
  `mscount` int(5) DEFAULT NULL COMMENT '秒杀数量',
  `sfjp` int(2) DEFAULT '0' COMMENT '是否竞拍',
  `qpprice` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '起拍价',
  `jpprice` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '竞拍价',
  `jpperson` int(10) DEFAULT NULL COMMENT '竞拍人',
  `jpdate` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '竞拍结束时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('35', '睡前故事', 'resources/file/20170329173318821.jpg', '睡前故事是专门为哄孩子们睡觉准备的故事，带宝宝进入甜蜜梦乡', '100', '1', '85', '0', null, null, '0', '0', null, null, null, null);
INSERT INTO `product` VALUES ('38', '大疆无人机', 'resources/file/20170329173434491.jpg', '主要市场集中在欧美国家', '10000', '0', null, '0', null, null, '0', '0', null, null, null, null);
INSERT INTO `product` VALUES ('39', 'ysl星辰', 'resources/file/20170329173533372.png', '很高级的口红哦', '800', '0', null, '0', null, null, '0', '0', null, null, null, null);
INSERT INTO `product` VALUES ('40', '三星note8', 'resources/file/20170429173551138.png', 'Note8是三星发布的首款双摄像头智能手机', '6600', '0', null, '0', null, null, '0', '0', null, '500', null, '');
INSERT INTO `product` VALUES ('41', '森海塞尔大馒头', 'resources/file/20170329173616398.jpg', '让你尽情享受无损音乐', '1280', '0', null, '0', null, null, '0', '0', null, null, null, null);
INSERT INTO `product` VALUES ('42', '雷蛇鼠标', 'resources/file/20170429173850996.png', '无与伦比的游戏鼠标', '100', '1', '78', '0', null, null, '0', '0', null, null, null, null);
INSERT INTO `product` VALUES ('43', 'cherry经典键盘', 'resources/file/20170329173911688.png', '备受码农和作家青睐的键盘', '450', '0', null, '0', null, null, '0', '0', null, null, null, null);
INSERT INTO `product` VALUES ('46', 'IPone5s', 'resources/file/20170329183159337.png', '运行速度快,告别卡顿', '4500', '0', null, '0', null, null, '0', '0', null, null, null, null);
INSERT INTO `product` VALUES ('47', '实战java程序设计', 'resources/file/5af45e83N2a0fc9bb.jpg', ' 为你的编程之路，开启前行的明灯。首选java书籍', '89', '0', '', '0', null, null, '0', '0', null, null, null, null);

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `username` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '用户名',
  `password` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '密码',
  `email` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '邮箱',
  `sex` int(2) DEFAULT NULL COMMENT '性别',
  `admin` int(2) DEFAULT '0' COMMENT '是否管理员',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('2', 'test', '111111', '11', '0', '0');
INSERT INTO `user` VALUES ('3', 'test1', '123456', 'gzq@123.com', '0', '0');
INSERT INTO `user` VALUES ('4', 'admin', '123456', '123@123.com', '0', '1');
INSERT INTO `user` VALUES ('5', 'test', '111111', '1@1.com', '0', '0');
INSERT INTO `user` VALUES ('6', 'test2', '111111', '111111', '0', '0');
INSERT INTO `user` VALUES ('7', 'test3', '111111', '1@1.com', '0', '0');
