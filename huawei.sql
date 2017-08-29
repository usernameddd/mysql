/*
Navicat MySQL Data Transfer

Source Server         : my computer
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : huawei

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-08-29 22:41:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_address`
-- ----------------------------
DROP TABLE IF EXISTS `tb_address`;
CREATE TABLE `tb_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `get_address` varchar(45) NOT NULL,
  `detail_address` varchar(45) NOT NULL,
  `phone` bigint(11) NOT NULL,
  `statu` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`address_id`),
  KEY `FK_78977` (`user_id`),
  CONSTRAINT `FK_78977` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_address
-- ----------------------------
INSERT INTO `tb_address` VALUES ('1', '1', '戴哥哥', '湖南省株洲市', '湖南工业大学', '13875423082', '0');
INSERT INTO `tb_address` VALUES ('2', '1', '戴哥', '北京', '北京大学', '13875423082', '1');

-- ----------------------------
-- Table structure for `tb_admin`
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin`;
CREATE TABLE `tb_admin` (
  `admin_id` int(1) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`admin_id`),
  UNIQUE KEY `gdsg` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_admin
-- ----------------------------
INSERT INTO `tb_admin` VALUES ('1', 'admin', 'root');

-- ----------------------------
-- Table structure for `tb_collection`
-- ----------------------------
DROP TABLE IF EXISTS `tb_collection`;
CREATE TABLE `tb_collection` (
  `user_id` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `add_date` date NOT NULL,
  KEY `FK_11_idx` (`goods_id`),
  KEY `FK_10` (`user_id`),
  CONSTRAINT `FK_10` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_11` FOREIGN KEY (`goods_id`) REFERENCES `tb_goods` (`goods_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_collection
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_color`
-- ----------------------------
DROP TABLE IF EXISTS `tb_color`;
CREATE TABLE `tb_color` (
  `color_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL,
  `color_desc` varchar(45) NOT NULL,
  `color_image` varchar(45) NOT NULL,
  PRIMARY KEY (`color_id`),
  KEY `PK_614541` (`goods_id`),
  CONSTRAINT `PK_614541` FOREIGN KEY (`goods_id`) REFERENCES `tb_goods` (`goods_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_color
-- ----------------------------
INSERT INTO `tb_color` VALUES ('1', '29', '铂光金', '40_40_1488444992671mp.jpg');
INSERT INTO `tb_color` VALUES ('2', '29', '幻夜黑', '40_40_1487745005292mp.jpg');
INSERT INTO `tb_color` VALUES ('3', '29', '极光蓝', '40_40_1488445580911mp.jpg');
INSERT INTO `tb_color` VALUES ('4', '29', '魅焰红', '40_40_1487745478963mp.jpg');
INSERT INTO `tb_color` VALUES ('5', '3', '琥珀金', '40_40_1480922774554mp.jpg');
INSERT INTO `tb_color` VALUES ('6', '3', '银钻灰', '40_40_1480922873323mp.jpg');
INSERT INTO `tb_color` VALUES ('7', '3', '玫瑰金', '40_40_1480922954676mp.jpg');

-- ----------------------------
-- Table structure for `tb_color_image`
-- ----------------------------
DROP TABLE IF EXISTS `tb_color_image`;
CREATE TABLE `tb_color_image` (
  `image_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `image_image` varchar(45) NOT NULL,
  PRIMARY KEY (`image_id`),
  KEY `FK_333232` (`color_id`),
  CONSTRAINT `FK_333232` FOREIGN KEY (`color_id`) REFERENCES `tb_color` (`color_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_color_image
-- ----------------------------
INSERT INTO `tb_color_image` VALUES ('1', '1', '55_55_1488444992671mp.jpg');
INSERT INTO `tb_color_image` VALUES ('2', '1', '55_55_1488444979270.jpg');
INSERT INTO `tb_color_image` VALUES ('3', '1', '55_55_1488444975413.jpg');
INSERT INTO `tb_color_image` VALUES ('4', '1', '55_55_1488444980621.jpg');
INSERT INTO `tb_color_image` VALUES ('5', '1', '55_55_1488444976643.jpg');
INSERT INTO `tb_color_image` VALUES ('6', '1', '55_55_1488444982082.jpg');
INSERT INTO `tb_color_image` VALUES ('7', '1', '55_55_1488444977757.jpg');
INSERT INTO `tb_color_image` VALUES ('8', '2', '55_55_1487745005292mp.jpg');
INSERT INTO `tb_color_image` VALUES ('9', '2', '55_55_1487744993908.jpg');
INSERT INTO `tb_color_image` VALUES ('10', '2', '55_55_1487744990281.jpg');
INSERT INTO `tb_color_image` VALUES ('11', '2', '55_55_1487744995521.jpg');
INSERT INTO `tb_color_image` VALUES ('12', '2', '55_55_1487744991424.jpg');
INSERT INTO `tb_color_image` VALUES ('13', '2', '55_55_1487744996610.jpg');
INSERT INTO `tb_color_image` VALUES ('14', '2', '55_55_1487744992811.jpg');
INSERT INTO `tb_color_image` VALUES ('15', '2', '55_55_1487744999174.jpg');
INSERT INTO `tb_color_image` VALUES ('16', '3', '55_55_1488445580911mp.jpg');
INSERT INTO `tb_color_image` VALUES ('17', '3', '55_55_1488445581300.jpg');
INSERT INTO `tb_color_image` VALUES ('18', '3', '55_55_1488445581292.jpg');
INSERT INTO `tb_color_image` VALUES ('19', '3', '55_55_1488445581295.jpg');
INSERT INTO `tb_color_image` VALUES ('20', '3', '55_55_1488445581297.jpg');
INSERT INTO `tb_color_image` VALUES ('21', '3', '55_55_1488445581294.jpg');
INSERT INTO `tb_color_image` VALUES ('22', '3', '55_55_1488445581293.jpg');
INSERT INTO `tb_color_image` VALUES ('23', '3', '55_55_1488445581296.jpg');
INSERT INTO `tb_color_image` VALUES ('24', '4', '55_55_1496825146960mp.jpg');
INSERT INTO `tb_color_image` VALUES ('25', '4', '55_55_1496825087622.jpg');
INSERT INTO `tb_color_image` VALUES ('26', '4', '55_55_1496825082860.jpg');
INSERT INTO `tb_color_image` VALUES ('27', '4', '55_55_1496825088878.jpg');
INSERT INTO `tb_color_image` VALUES ('28', '4', '55_55_1496825084962.jpg');
INSERT INTO `tb_color_image` VALUES ('29', '4', '55_55_1496825090002.jpg');
INSERT INTO `tb_color_image` VALUES ('30', '4', '55_55_1496825086627.jpg');
INSERT INTO `tb_color_image` VALUES ('31', '1', '55_55_1488444984791.jpg');
INSERT INTO `tb_color_image` VALUES ('32', '5', '55_55_1480922774554mp.jpg');
INSERT INTO `tb_color_image` VALUES ('33', '5', '55_55_1480922751749.jpg');
INSERT INTO `tb_color_image` VALUES ('34', '5', '55_55_1480922750583.jpg');
INSERT INTO `tb_color_image` VALUES ('35', '5', '55_55_1480922753604.jpg');
INSERT INTO `tb_color_image` VALUES ('36', '5', '55_55_1480922752665.jpg');
INSERT INTO `tb_color_image` VALUES ('37', '5', '55_55_1480922755467.jpg');
INSERT INTO `tb_color_image` VALUES ('38', '5', '55_55_1480922754525.jpg');
INSERT INTO `tb_color_image` VALUES ('39', '5', '55_55_1480922756322.jpg');
INSERT INTO `tb_color_image` VALUES ('40', '6', '55_55_1480922873323mp.jpg');
INSERT INTO `tb_color_image` VALUES ('41', '6', '55_55_1480922860911.jpg');
INSERT INTO `tb_color_image` VALUES ('42', '6', '55_55_1480922859931.jpg');
INSERT INTO `tb_color_image` VALUES ('43', '6', '55_55_1480922862721.jpg');
INSERT INTO `tb_color_image` VALUES ('44', '6', '55_55_1480922861789.jpg');
INSERT INTO `tb_color_image` VALUES ('45', '6', '55_55_1480922864533.jpg');
INSERT INTO `tb_color_image` VALUES ('46', '6', '55_55_1480922863591.jpg');
INSERT INTO `tb_color_image` VALUES ('47', '6', '55_55_1480922865484.jpg');
INSERT INTO `tb_color_image` VALUES ('48', '7', '55_55_1480922954676mp.jpg');
INSERT INTO `tb_color_image` VALUES ('49', '7', '55_55_1480922943362.jpg');
INSERT INTO `tb_color_image` VALUES ('50', '7', '55_55_1480922942327.jpg');
INSERT INTO `tb_color_image` VALUES ('51', '7', '55_55_1480922945301.jpg');
INSERT INTO `tb_color_image` VALUES ('52', '7', '55_55_1480922944282.jpg');
INSERT INTO `tb_color_image` VALUES ('53', '7', '55_55_1480922947142.jpg');
INSERT INTO `tb_color_image` VALUES ('54', '7', '55_55_1480922946227.jpg');
INSERT INTO `tb_color_image` VALUES ('55', '7', '55_55_1480922948102.jpg');

-- ----------------------------
-- Table structure for `tb_detaildingdan`
-- ----------------------------
DROP TABLE IF EXISTS `tb_detaildingdan`;
CREATE TABLE `tb_detaildingdan` (
  `detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `goodscar_id` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `price` float NOT NULL,
  `dingdan_id` int(11) NOT NULL,
  PRIMARY KEY (`detail_id`),
  KEY `FK_0000_idx` (`dingdan_id`),
  KEY `FK_sss` (`goodscar_id`),
  CONSTRAINT `FK_111` FOREIGN KEY (`dingdan_id`) REFERENCES `tb_dingdan` (`dingdan_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_sss` FOREIGN KEY (`goodscar_id`) REFERENCES `tb_goodscar` (`goodscar_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_detaildingdan
-- ----------------------------
INSERT INTO `tb_detaildingdan` VALUES ('33', '36', '1', '2599', '53');
INSERT INTO `tb_detaildingdan` VALUES ('34', '37', '1', '2599', '53');
INSERT INTO `tb_detaildingdan` VALUES ('35', '36', '2', '2599', '54');
INSERT INTO `tb_detaildingdan` VALUES ('36', '37', '2', '2599', '54');
INSERT INTO `tb_detaildingdan` VALUES ('37', '38', '2', '2599', '54');
INSERT INTO `tb_detaildingdan` VALUES ('38', '37', '2', '2599', '55');
INSERT INTO `tb_detaildingdan` VALUES ('39', '38', '2', '2599', '55');
INSERT INTO `tb_detaildingdan` VALUES ('40', '36', '2', '2599', '55');

-- ----------------------------
-- Table structure for `tb_detailtype1`
-- ----------------------------
DROP TABLE IF EXISTS `tb_detailtype1`;
CREATE TABLE `tb_detailtype1` (
  `dtype1_id` varchar(45) NOT NULL,
  `type_id` varchar(45) NOT NULL,
  `dtype1_name` varchar(45) NOT NULL,
  PRIMARY KEY (`dtype1_id`),
  KEY `FK2_idx` (`type_id`),
  CONSTRAINT `FK_2222` FOREIGN KEY (`type_id`) REFERENCES `tb_gtype` (`type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_detailtype1
-- ----------------------------
INSERT INTO `tb_detailtype1` VALUES ('1', '2', '笔记本配件');
INSERT INTO `tb_detailtype1` VALUES ('34', '1', '荣耀');
INSERT INTO `tb_detailtype1` VALUES ('35', '1', 'HUAWEI P系列');
INSERT INTO `tb_detailtype1` VALUES ('36', '1', '荣耀畅玩系列');
INSERT INTO `tb_detailtype1` VALUES ('37', '1', 'HUAWEI Mate系列');
INSERT INTO `tb_detailtype1` VALUES ('38', '1', 'HUAWEI nova系列');
INSERT INTO `tb_detailtype1` VALUES ('39', '1', '华为 G系列');
INSERT INTO `tb_detailtype1` VALUES ('40', '1', '华为畅享系列');
INSERT INTO `tb_detailtype1` VALUES ('41', '1', '合约机');
INSERT INTO `tb_detailtype1` VALUES ('42', '2', '平板电脑');
INSERT INTO `tb_detailtype1` VALUES ('43', '2', '笔记本电脑');
INSERT INTO `tb_detailtype1` VALUES ('44', '3', '手环');
INSERT INTO `tb_detailtype1` VALUES ('45', '3', '手表');
INSERT INTO `tb_detailtype1` VALUES ('46', '4', '子母路由');
INSERT INTO `tb_detailtype1` VALUES ('47', '4', '电视盒子');
INSERT INTO `tb_detailtype1` VALUES ('48', '4', '路由器');
INSERT INTO `tb_detailtype1` VALUES ('49', '4', '电力猫');
INSERT INTO `tb_detailtype1` VALUES ('50', '4', '随行wifi');
INSERT INTO `tb_detailtype1` VALUES ('51', '4', 'HUAWEI HiLink生态产品');
INSERT INTO `tb_detailtype1` VALUES ('52', '5', '移动电源');
INSERT INTO `tb_detailtype1` VALUES ('53', '5', '耳机');
INSERT INTO `tb_detailtype1` VALUES ('54', '5', '音箱');
INSERT INTO `tb_detailtype1` VALUES ('55', '5', '自拍杆/支架');
INSERT INTO `tb_detailtype1` VALUES ('56', '5', '充电器/线材');
INSERT INTO `tb_detailtype1` VALUES ('57', '5', 'U盘/存储卡');
INSERT INTO `tb_detailtype1` VALUES ('58', '5', '排插');
INSERT INTO `tb_detailtype1` VALUES ('59', '5', '摄像机/镜头');
INSERT INTO `tb_detailtype1` VALUES ('60', '5', '智能硬件');
INSERT INTO `tb_detailtype1` VALUES ('61', '5', '生活周边');
INSERT INTO `tb_detailtype1` VALUES ('62', '6', '保护壳');
INSERT INTO `tb_detailtype1` VALUES ('63', '6', '保护套');
INSERT INTO `tb_detailtype1` VALUES ('64', '6', '贴膜');
INSERT INTO `tb_detailtype1` VALUES ('65', '6', '盒子专属配件');
INSERT INTO `tb_detailtype1` VALUES ('66', '6', '表带');

-- ----------------------------
-- Table structure for `tb_detailtype2`
-- ----------------------------
DROP TABLE IF EXISTS `tb_detailtype2`;
CREATE TABLE `tb_detailtype2` (
  `dtype2_id` varchar(45) NOT NULL,
  `dtype1_id` varchar(45) DEFAULT NULL,
  `dtype2_name` varchar(45) NOT NULL,
  PRIMARY KEY (`dtype2_id`),
  KEY `fk_0001_idx` (`dtype1_id`),
  CONSTRAINT `FK_2344` FOREIGN KEY (`dtype1_id`) REFERENCES `tb_detailtype1` (`dtype1_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_detailtype2
-- ----------------------------
INSERT INTO `tb_detailtype2` VALUES ('1', '34', '全网通版');
INSERT INTO `tb_detailtype2` VALUES ('10', '36', '电信4G版');
INSERT INTO `tb_detailtype2` VALUES ('11', '37', '全网通版');
INSERT INTO `tb_detailtype2` VALUES ('12', '37', '移动/联通双4G版');
INSERT INTO `tb_detailtype2` VALUES ('13', '37', '移动4G版');
INSERT INTO `tb_detailtype2` VALUES ('14', '37', '联通4G版');
INSERT INTO `tb_detailtype2` VALUES ('15', '37', '电信4G版');
INSERT INTO `tb_detailtype2` VALUES ('16', '39', '全网通版');
INSERT INTO `tb_detailtype2` VALUES ('17', '39', '移动/联通双4G版');
INSERT INTO `tb_detailtype2` VALUES ('18', '39', '移动4G版');
INSERT INTO `tb_detailtype2` VALUES ('19', '39', '联通4G版');
INSERT INTO `tb_detailtype2` VALUES ('2', '34', '移动/联通双4G版');
INSERT INTO `tb_detailtype2` VALUES ('20', '39', '电信4G版');
INSERT INTO `tb_detailtype2` VALUES ('21', '41', '全网通版');
INSERT INTO `tb_detailtype2` VALUES ('22', '41', '移动/联通双4G版');
INSERT INTO `tb_detailtype2` VALUES ('23', '41', '移动4G版');
INSERT INTO `tb_detailtype2` VALUES ('24', '41', '联通4G版');
INSERT INTO `tb_detailtype2` VALUES ('25', '41', '电信4G版');
INSERT INTO `tb_detailtype2` VALUES ('26', '62', 'PC');
INSERT INTO `tb_detailtype2` VALUES ('27', '62', 'PC+超纤+真皮');
INSERT INTO `tb_detailtype2` VALUES ('28', '62', 'PU');
INSERT INTO `tb_detailtype2` VALUES ('29', '62', 'TPU');
INSERT INTO `tb_detailtype2` VALUES ('3', '34', '移动4G版');
INSERT INTO `tb_detailtype2` VALUES ('30', '62', '真皮+PC');
INSERT INTO `tb_detailtype2` VALUES ('4', '34', '联通4G版');
INSERT INTO `tb_detailtype2` VALUES ('5', '34', '电信4G版');
INSERT INTO `tb_detailtype2` VALUES ('6', '36', '全网通版');
INSERT INTO `tb_detailtype2` VALUES ('7', '36', '移动/联通双4G版');
INSERT INTO `tb_detailtype2` VALUES ('8', '36', '移动4G版');
INSERT INTO `tb_detailtype2` VALUES ('9', '36', '联通4G版');

-- ----------------------------
-- Table structure for `tb_detailtype3`
-- ----------------------------
DROP TABLE IF EXISTS `tb_detailtype3`;
CREATE TABLE `tb_detailtype3` (
  `dtype3_id` varchar(45) NOT NULL,
  `dtype1_id` varchar(45) DEFAULT NULL,
  `dtype3_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`dtype3_id`),
  KEY `FK_19_idx` (`dtype1_id`),
  CONSTRAINT `FK_23333` FOREIGN KEY (`dtype1_id`) REFERENCES `tb_detailtype1` (`dtype1_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_detailtype3
-- ----------------------------
INSERT INTO `tb_detailtype3` VALUES ('1', '34', '7.0英寸');
INSERT INTO `tb_detailtype3` VALUES ('16', '36', '7.0英寸');
INSERT INTO `tb_detailtype3` VALUES ('17', '36', '6.8英寸');
INSERT INTO `tb_detailtype3` VALUES ('18', '36', '6.0英寸');
INSERT INTO `tb_detailtype3` VALUES ('19', '36', '5.7英寸');
INSERT INTO `tb_detailtype3` VALUES ('2', '34', '6.8英寸');
INSERT INTO `tb_detailtype3` VALUES ('20', '36', '5.5英寸');
INSERT INTO `tb_detailtype3` VALUES ('21', '36', '5.2英寸');
INSERT INTO `tb_detailtype3` VALUES ('22', '36', '5.0英寸');
INSERT INTO `tb_detailtype3` VALUES ('23', '37', '7.0英寸');
INSERT INTO `tb_detailtype3` VALUES ('24', '37', '6.8英寸');
INSERT INTO `tb_detailtype3` VALUES ('25', '37', '6.0英寸');
INSERT INTO `tb_detailtype3` VALUES ('26', '37', '5.7英寸');
INSERT INTO `tb_detailtype3` VALUES ('27', '37', '5.5英寸');
INSERT INTO `tb_detailtype3` VALUES ('28', '37', '5.2英寸');
INSERT INTO `tb_detailtype3` VALUES ('29', '37', '5.0英寸');
INSERT INTO `tb_detailtype3` VALUES ('3', '34', '6.6英寸');
INSERT INTO `tb_detailtype3` VALUES ('30', '39', '7.0英寸');
INSERT INTO `tb_detailtype3` VALUES ('31', '39', '6.8英寸');
INSERT INTO `tb_detailtype3` VALUES ('32', '39', '6.0英寸');
INSERT INTO `tb_detailtype3` VALUES ('33', '39', '5.7英寸');
INSERT INTO `tb_detailtype3` VALUES ('34', '39', '5.5英寸');
INSERT INTO `tb_detailtype3` VALUES ('35', '39', '5.2英寸');
INSERT INTO `tb_detailtype3` VALUES ('36', '39', '5.0英寸');
INSERT INTO `tb_detailtype3` VALUES ('37', '41', '7.0英寸');
INSERT INTO `tb_detailtype3` VALUES ('38', '41', '6.8英寸');
INSERT INTO `tb_detailtype3` VALUES ('39', '41', '6.0英寸');
INSERT INTO `tb_detailtype3` VALUES ('4', '34', '6.0英寸');
INSERT INTO `tb_detailtype3` VALUES ('40', '41', '5.7英寸');
INSERT INTO `tb_detailtype3` VALUES ('41', '41', '5.5英寸');
INSERT INTO `tb_detailtype3` VALUES ('42', '41', '5.2英寸');
INSERT INTO `tb_detailtype3` VALUES ('43', '41', '5.0英寸');
INSERT INTO `tb_detailtype3` VALUES ('44', '62', '华为畅玩4C');
INSERT INTO `tb_detailtype3` VALUES ('45', '62', '荣耀畅玩4X（非电信版）');
INSERT INTO `tb_detailtype3` VALUES ('46', '62', '荣耀4A');
INSERT INTO `tb_detailtype3` VALUES ('47', '62', '华为  P8 青春版');
INSERT INTO `tb_detailtype3` VALUES ('48', '62', 'HUAWEI Mate 9');
INSERT INTO `tb_detailtype3` VALUES ('49', '62', 'HUAWEI P10 Plus');
INSERT INTO `tb_detailtype3` VALUES ('5', '34', '5.7英寸');
INSERT INTO `tb_detailtype3` VALUES ('50', '62', '荣耀8');
INSERT INTO `tb_detailtype3` VALUES ('51', '62', 'HUAWEI Mate 9 Pro');
INSERT INTO `tb_detailtype3` VALUES ('52', '62', '荣耀畅玩6X');
INSERT INTO `tb_detailtype3` VALUES ('53', '62', 'HUAWEI P10');
INSERT INTO `tb_detailtype3` VALUES ('54', '62', '荣耀畅玩5C');
INSERT INTO `tb_detailtype3` VALUES ('55', '62', 'HUAWEI nova');
INSERT INTO `tb_detailtype3` VALUES ('56', '62', '荣耀畅玩6A');
INSERT INTO `tb_detailtype3` VALUES ('57', '62', 'HUAWEI G9 Plus&麦芒5');
INSERT INTO `tb_detailtype3` VALUES ('58', '62', 'HUAWEI Nova 青春版');
INSERT INTO `tb_detailtype3` VALUES ('59', '62', '荣耀V8');
INSERT INTO `tb_detailtype3` VALUES ('6', '34', '5.5英寸');
INSERT INTO `tb_detailtype3` VALUES ('60', '62', '荣耀畅玩5A');
INSERT INTO `tb_detailtype3` VALUES ('61', '62', '荣耀V9');
INSERT INTO `tb_detailtype3` VALUES ('62', '62', '荣耀畅玩5、荣耀畅玩5+');
INSERT INTO `tb_detailtype3` VALUES ('7', '34', '5.2英寸');
INSERT INTO `tb_detailtype3` VALUES ('8', '34', '5.0英寸');

-- ----------------------------
-- Table structure for `tb_detailuser`
-- ----------------------------
DROP TABLE IF EXISTS `tb_detailuser`;
CREATE TABLE `tb_detailuser` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `real_name` varchar(45) NOT NULL,
  `county` varchar(45) NOT NULL,
  `province` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `detailaddr` varchar(45) NOT NULL,
  `tel` varchar(45) DEFAULT NULL,
  `mobilephone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `FK_1` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_detailuser
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_dingdan`
-- ----------------------------
DROP TABLE IF EXISTS `tb_dingdan`;
CREATE TABLE `tb_dingdan` (
  `dingdan_id` int(11) NOT NULL AUTO_INCREMENT,
  `buy_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `money` float NOT NULL,
  `state` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  PRIMARY KEY (`dingdan_id`),
  KEY `FK_00_idx` (`user_id`),
  KEY `f_k_1` (`address_id`),
  CONSTRAINT `FK_00` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `f_k_1` FOREIGN KEY (`address_id`) REFERENCES `tb_address` (`address_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_dingdan
-- ----------------------------
INSERT INTO `tb_dingdan` VALUES ('53', '2017-08-29 15:16:31', '1', '5198', '0', '2');
INSERT INTO `tb_dingdan` VALUES ('54', '2017-08-29 15:49:17', '1', '15594', '0', '2');
INSERT INTO `tb_dingdan` VALUES ('55', '2017-08-29 20:22:27', '1', '15594', '0', '2');

-- ----------------------------
-- Table structure for `tb_goods`
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods`;
CREATE TABLE `tb_goods` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` varchar(45) NOT NULL,
  `dtype1_id` varchar(45) NOT NULL,
  `dtype2_id` varchar(45) DEFAULT NULL,
  `dtype3_id` varchar(45) DEFAULT NULL,
  `goods_name` varchar(100) NOT NULL,
  `image` varchar(45) DEFAULT NULL,
  `extra_image` varchar(45) DEFAULT NULL,
  `goods_price` float NOT NULL,
  `goods_desc` varchar(200) DEFAULT NULL,
  `goods_count` int(11) NOT NULL,
  `goods_state` int(11) NOT NULL DEFAULT '1',
  `goods_uptime` date NOT NULL,
  PRIMARY KEY (`goods_id`),
  KEY `FK_6_idx` (`type_id`),
  KEY `FK_7_idx` (`dtype1_id`),
  KEY `FK_8_idx` (`dtype2_id`),
  KEY `FK_9_idx` (`dtype3_id`),
  CONSTRAINT `FK_434` FOREIGN KEY (`dtype1_id`) REFERENCES `tb_detailtype1` (`dtype1_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_444` FOREIGN KEY (`type_id`) REFERENCES `tb_gtype` (`type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_454` FOREIGN KEY (`dtype2_id`) REFERENCES `tb_detailtype2` (`dtype2_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_464` FOREIGN KEY (`dtype3_id`) REFERENCES `tb_detailtype3` (`dtype3_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=297 DEFAULT CHARSET=utf8 COMMENT='																																											';

-- ----------------------------
-- Records of tb_goods
-- ----------------------------
INSERT INTO `tb_goods` VALUES ('1', '1', '41', null, null, '【北京移动合约 流量套餐送话费】 HUAWEI Mate 9 4GB+32GB全网通版（月关银）', '428_428_1490083411321mp.jpg', null, '3399', '北京移动老用户专享合约，流量话费送不停。', '1000', '1', '2016-05-30');
INSERT INTO `tb_goods` VALUES ('2', '1', '37', '11', '27', 'HUAWEI Mate 9 保时捷设计 6GB+256GB 全网通版（曜石黑）', '428_428_1481251216636mp.jpg', '1497576003067.png', '8999', null, '1000', '1', '2016-06-01');
INSERT INTO `tb_goods` VALUES ('3', '1', '37', '11', '27', 'HUAWEI Mate 9 Pro', '428_428_1480922975723mp.jpg', '1497576039388.png', '4699', '【享12期分期优惠】', '1000', '1', '2016-07-01');
INSERT INTO `tb_goods` VALUES ('4', '1', '37', '11', '27', 'HUAWEI Mate 9 4GB+32GB 全网通版（月关银）', '428_428_1494299333556mp.jpg', '1497576140252.png', '3399', '【享12期分期免息】  下单立减300元', '1000', '1', '2016-08-01');
INSERT INTO `tb_goods` VALUES ('7', '1', '40', null, null, '华为畅享7 Plus 4GB+64GB 全网通高配版（香槟金）', '428_428_1492393615065mp.jpg', null, '1699', '【享6期分期免息】', '1000', '1', '2016-08-20');
INSERT INTO `tb_goods` VALUES ('8', '1', '40', null, null, '华为畅享6S 3GB+32GB 全网通版（粉色）', '428_428_1481187791080mp.jpg', '1497576140252.png', '1299', '千元高颜值旗舰 【原价1499元，直降200，可享6期分期免息。赠送华为自拍杆，赠品有限，赠完即止】', '1000', '1', '2016-09-02');
INSERT INTO `tb_goods` VALUES ('9', '1', '40', null, null, '华为畅享7 3GB+32GB 全网通高配版 （香槟金）', '428_428_1498725043421mp.jpg', '1497575938261.png', '1299', '下单立减200元 【享6期分期免息】', '0', '1', '2016-10-15');
INSERT INTO `tb_goods` VALUES ('10', '1', '39', '16', '34', 'HUAWEI G9 Plus 移动全网通版（铂雅金）', '428_428_1477529981662mp.jpg', null, '2199', null, '0', '1', '2016-10-15');
INSERT INTO `tb_goods` VALUES ('12', '1', '39', '16', '34', 'HUAWEI 麦芒5 全网通高配版（香槟金）', '428_428_1472529794075mp.jpg', null, '2399', '下单立减200元，限时赠送保护壳', '1000', '1', '2016-10-25');
INSERT INTO `tb_goods` VALUES ('14', '1', '38', null, null, 'HUAWEI nova 2 Plus 4GB+128GB 全网通版（极光蓝）', '428_428_1498791658443mp.jpg', '1497575938261.png', '2899', '5月26日18:08开启99元预订，赠送华为自拍杆和皮质保护壳，需在6月16日 10:08—6月18日00:00期间支付尾款（6期免息）后才能安排发货，正式开售时间：6月16日 10:08。', '1000', '0', '2017-05-01');
INSERT INTO `tb_goods` VALUES ('16', '1', '38', null, null, 'HUAWEI nova 2 4GB+64GB 全网通版（玫瑰金）', '428_428_1498791987410mp.jpg', '1497575938261.png1497575938261.png', '2499', '5月26日18:08开启99元预订，赠送华为自拍杆和皮质保护壳，需在6月16日 10:08—6月18日00:00期间支付尾款（6期免息）后才能安排发货，正式开售时间：6月16日 10:08。', '1000', '0', '2017-05-01');
INSERT INTO `tb_goods` VALUES ('17', '1', '38', null, null, 'HUAWEI nova 青春版4GB+64GB 全网通版（魅海蓝）', '428_428_1493110604858mp.jpg', '1497576140252.png', '1999', '【享6期分期免息】', '1000', '1', '2016-08-20');
INSERT INTO `tb_goods` VALUES ('18', '1', '38', null, null, 'HUAWEI nova 3GB+32GB 移动全网通定制版 （皓月银）', '428_428_1476858329809mp.jpg', null, '2199', '购机赠好礼。使用花呗分期付款，享6期免息', '1000', '1', '2016-08-25');
INSERT INTO `tb_goods` VALUES ('19', '1', '36', '6', '22', '荣耀畅玩6A 全网通标配版（金色）', '428_428_1495174269824mp.JPG', '1497576023361.png', '799', '5月25日-31日预约赢大奖，6月1日00:00开售！', '1000', '0', '2016-08-30');
INSERT INTO `tb_goods` VALUES ('21', '1', '36', '6', '20', '荣耀畅玩6X 全网通高配版（铂光金）', '428_428_1491796092449mp.jpg', '1497575964613.png', '1299', null, '0', '1', '2016-09-10');
INSERT INTO `tb_goods` VALUES ('24', '1', '35', null, null, 'HUAWEI P10 4GB+64GB 全网通版（玫瑰金）', '428_428_1488120013192mp.jpg', '1497575918300.png', '3788', '尊享12期免息 闪电发货。 购机送精美自拍杆，数量有限赠完即止。', '1000', '1', '2016-10-01');
INSERT INTO `tb_goods` VALUES ('25', '1', '35', null, null, 'HUAWEI P10 Plus 6GB+64GB 全网通版（曜石黑）', '428_428_1488870352075mp.jpg', '1497575918300.png', '4388', '尊享12期免息 闪电发货。 购机送精美自拍杆，数量有限赠完即止。', '1000', '1', '2016-10-10');
INSERT INTO `tb_goods` VALUES ('26', '1', '34', null, null, '荣耀9 全网通尊享版 6GB+128GB（幻夜黑）', '428_428_1500951592875mp.jpg', '1497576023361.png', '2999', '【放量购，现货速发】2000万变焦双摄/拍照就像用单反，7月31前购买/评价即可参与抽奖赢好礼活动', '1000', '1', '2016-08-30');
INSERT INTO `tb_goods` VALUES ('27', '1', '34', null, null, '荣耀8青春版 全网通标配版（珠光白）', '428_428_1493715677707mp.jpg', null, '1099', null, '1000', '1', '2016-09-20');
INSERT INTO `tb_goods` VALUES ('29', '1', '34', '1', '5', '荣耀V9', '428_428_1488445580911mp.jpg', null, '2599', '精致外观，黑白+彩色双1200万像素平行镜头，5.7英寸2K屏，搭载麒麟960芯片，4000mAh电池长久续航，EMUI 5.1操作系统，我想要的快！', '1000', '1', '2016-11-10');
INSERT INTO `tb_goods` VALUES ('30', '1', '34', null, null, '荣耀Magic 4GB+64GB 全网通版（玄金黑）', '428_428_1481881191127mp.jpg', '1497575918300.png', '3699', '【现货发售】灵动八曲面屏设计 双1200W摄像头 人脸识别 超级快充', '1000', '1', '2016-11-20');
INSERT INTO `tb_goods` VALUES ('31', '1', '34', null, '7', '荣耀8 4GB+64GB 全网通版（魅海蓝）', '428_428_1497184228344mp.jpg', '1497575964613.png', '2299', '【免费领取30天碎屏险】双镜头/双2.5D玻璃/双功能指纹。原价2499，现直降200元。', '1000', '1', '2016-11-30');
INSERT INTO `tb_goods` VALUES ('32', '1', '34', '1', '7', '荣耀8 吴亦凡定制版（签名）', '428_428_1473389696470mp.jpg', null, '2399', '丝印签名，原声录制铃声。内含：《给每个你的一封信》/大画幅珍藏海报/精选写真集/荣耀引擎耳机二代/荣耀自拍杆/PC保护壳。', '1000', '1', '2016-12-01');
INSERT INTO `tb_goods` VALUES ('33', '1', '34', '1', '5', '荣耀V8 4GB+64GB 全网通版（香槟金）', '428_428_1467185894845mp.jpg', null, '2599', '精致外观，双1200万像素平行镜头，5.7英寸2K屏，搭载麒麟950系列芯片，3500mAh电池长久续航；如有异见，不如一见！ 5月28日~30日领券可优惠100元，点此领券', '1000', '1', '2016-12-10');
INSERT INTO `tb_goods` VALUES ('34', '1', '34', null, '3', '荣耀 NOTE 8 4GB+64GB 全网通版（铂光金）', '428_428_1469697001414mp.jpg', '1497575918300.png', '2499', '2K大屏长续航，1元开通3个月视频会员，大开眼界！', '1000', '1', '2016-12-20');
INSERT INTO `tb_goods` VALUES ('35', '2', '42', null, null, '荣耀畅玩平板2 9.6英寸 WiFi版（苍穹灰）', '428_428_1500455962969mp.jpg', '1497575938261.png', '999', '9.6英寸护眼滤蓝光高清屏；4800mAh大电池长续航；智能调度CPU、内存资源，系统持久流畅！19元订金预订并成功购买限量赠送价值128元大礼包，含荣耀AM115耳机和荣耀自拍杆！【尾款支付时间：6月1日10:08-6月2日23:59 】 ', '1000', '0', '2017-04-20');
INSERT INTO `tb_goods` VALUES ('36', '2', '42', null, null, '荣耀畅玩平板2 8英寸 WiFi版（苍穹灰）', '428_428_1500455384160mp.jpg', '1497575814983.png', '799', '护眼滤蓝光高清屏；4800mAh大电池长续航；智能调度CPU、内存资源，系统持久流畅！19元订金预订并成功购买限量赠送价值128元大礼包，含荣耀AM115耳机和荣耀自拍杆！【尾款支付时间：6月1日10:08-6月2日23:59 】', '1000', '0', '2017-04-20');
INSERT INTO `tb_goods` VALUES ('37', '2', '42', null, null, '荣耀平板2 3GB+32GB WiFi版（香槟金）', '428_428_1476778957240mp.jpg', '1497575918300.png', '1299', '8英寸全高清IPS屏，八核强劲芯片大容量，3GB大内存，4800mAh大容量电池，持久续航，好玩不贵。', '1000', '1', '2016-12-20');
INSERT INTO `tb_goods` VALUES ('38', '2', '42', null, null, '华为平板 M3 4GB+32GB WIFI版（日晖金）', '428_428_1473406494708mp.jpg', '1497575918300.png', '1888', '8.4 英寸+2K高清屏幕、麒麟950、哈曼卡顿高品质HI-FI音效、指纹识别、免费正版office。', '1000', '1', '2017-01-01');
INSERT INTO `tb_goods` VALUES ('39', '2', '42', null, null, '华为揽阅 M3 青春版 10.1英寸平板电脑 WiFi版 16GB （珍珠白）', '428_428_1495096799385mp.jpg', '1497575938261.png', '1499', '10.1英寸，娱乐办公样样精通，华为品质，好玩才畅快！', '1000', '1', '2017-01-10');
INSERT INTO `tb_goods` VALUES ('40', '2', '42', null, null, '荣耀畅玩平板2 7英寸 WiFi版（苍穹灰）', '428_428_1500629825123mp.jpg', null, '1599', '7.0英寸全网通通话小平板，支持移动联通电信，时尚外观，侧边指纹，强劲电量，大容量存储。', '1000', '1', '2017-01-20');
INSERT INTO `tb_goods` VALUES ('41', '2', '42', null, null, '华为平板 M3 青春版 8英寸 3GB+32GB 全网通（皎月白）', '428_428_1497422161444mp.jpg', '1497575938261.png', '2688', '指纹解锁︱海思八核︱金属机身︱哈曼卡顿四颗扬声器。 【5.4-5.31限量赠送耳机+皮套，赠品有限，赠完即止】', '1000', '1', '2017-01-30');
INSERT INTO `tb_goods` VALUES ('42', '2', '42', null, null, '华为揽阅 M2 10.0 平板电脑 WiFi版（月光银）', '428_428_1467948674235mp.jpg', null, '1288', '1920x1200分辨率 | 哈曼卡顿音效 | 金属机身 | 麒麟930 【5.4-5.31限量赠送耳机，赠品有限，赠完即止】', '1000', '1', '2017-02-01');
INSERT INTO `tb_goods` VALUES ('43', '2', '42', null, null, '荣耀畅玩平板note 9.6英寸平板电脑 2GB RAM 高配 Wi-Fi版', '428_428_1469762480580mp.jpg', null, '1199', '金属机身，轻薄ID，轻松便携，9.6英寸IPS高清屏幕，高通骁龙四核64位处理器，双频WIFI，大容量电池长时续航，内置GPS/GLONASS/北斗卫星导航功能。', '1000', '1', '2017-02-10');
INSERT INTO `tb_goods` VALUES ('45', '2', '42', null, null, '荣耀畅玩平板 LTE版（香槟金）', '428_428_1474161910759mp.jpg', null, '999', '金属机身，轻薄ID，轻松便携，移动/联通双4G通话，8英寸高清广视角炫彩屏幕，高通骁龙四核处理器1.2GHz主频，大容量电池强续航，内置GPS/A-GPS/GLONASS导航功能。', '1000', '1', '2017-02-20');
INSERT INTO `tb_goods` VALUES ('46', '2', '43', null, null, 'HUAWEI MateBook X（I5 CPU+8GB内存RAM+256GB ）玫瑰金', '428_428_1495008446005mp.jpg', '1497575900592.png', '0', '【时尚二合一】全新第七代酷睿CPU，2160*1440 IPS触摸显示屏，独立芯片指纹解锁，高效安全，书本式键盘设计，无级调节，标配键盘和扩展坞。', '1000', '0', '2017-05-01');
INSERT INTO `tb_goods` VALUES ('47', '2', '43', null, null, 'HUAWEI MateBook D（I5 CPU+4GB内存+0GB+500GB）深空灰', '428_428_1495006306679mp.jpg', '1497575900592.png', '0', '【大视野商务影音】6.2mm超窄边框，1920*1080 IPS显示屏，首度搭载杜比全景声音响系统，混合硬盘+集成显卡。', '1000', '0', '2017-05-10');
INSERT INTO `tb_goods` VALUES ('48', '2', '43', null, null, 'HUAWEI MateBook E（I5+4GB+256GB）主机（香槟金）+键盘（粉色）', '428_428_1495007348656mp.jpg', '1497575900592.png', '0', '【灵动商务】极窄边框4.4mm，屏占比高达88%，2160*1440（2K）IPS显示屏，指纹式开机键，一键快速登入，标配扩展坞。', '1000', '0', '2017-05-30');
INSERT INTO `tb_goods` VALUES ('52', '2', '43', null, null, 'HUAWEI MateBook 12英寸平板二合一笔记本电脑 m5 4GB+128GB（香槟金）', '428_428_1466219774390mp.jpg', '1497576140252.png', '6688', '2160*1440IPS触摸显示屏，指纹解锁，安全快捷，轻薄时尚，商务伴侣，平板笔记本。', '1000', '1', '2017-03-01');
INSERT INTO `tb_goods` VALUES ('53', '3', '44', null, null, '荣耀畅玩手环 A2（魅焰红）', '428_428_1500340865479mp.jpg', '1497575938261.png', '199', 'OLED大屏，多点触控；续航长达9天；全天候运动监控，贴心提醒；防尘防水；支持主流Android与IOS系统手机；\r\n', '1000', '0', '2017-05-15');
INSERT INTO `tb_goods` VALUES ('54', '3', '44', null, null, '荣耀畅玩手环 A1 （魔法黑）', '428_428_1466069502684mp.jpg', null, '109', '新版APP微信运动已上线！和你在一起的日子 ，想记录你的每一步！', '1000', '1', '2016-08-20');
INSERT INTO `tb_goods` VALUES ('55', '3', '44', null, null, '华为手环 B3 运动版（韵律黑）', '428_428_1469093643984mp.jpg', null, '999', '蓝牙耳机与智能手环结合+金属机身+触控屏幕，Android+IOS通用，电话通讯录， 支持运动轨迹记录，睡眠监测，蓝牙通话，遥控拍照功能。', '1000', '1', '2016-09-20');
INSERT INTO `tb_goods` VALUES ('56', '3', '44', null, null, '荣耀手环zero SS版（卡其色）', '428_428_1469070981917mp.jpg', null, '599', '至简•致美好。', '1000', '1', '2016-04-01');
INSERT INTO `tb_goods` VALUES ('57', '3', '44', null, null, '华为运动手环 GPS版（黑色）', '428_428_1498099225036mp.jpg', '1497575938261.png', '388', null, '1000', '1', '2016-03-21');
INSERT INTO `tb_goods` VALUES ('58', '3', '44', null, null, '荣耀手环zero 短腕带（黑色）', '428_428_1469072405279mp.jpg', '1497575814983.png', '299', '至简•致美好。', '1000', '1', '2016-02-20');
INSERT INTO `tb_goods` VALUES ('59', '3', '45', null, null, 'HUAWEI WATCH 2 华为第二代智能运动手表 蓝牙版（星空灰）', '428_428_1488181445263mp.jpg', '1497575900592.png', '1638', '蓝牙通话，GPS心率FIRSTBEAT运动指导，NFC支付', '1000', '1', '2017-02-10');
INSERT INTO `tb_goods` VALUES ('60', '3', '45', null, null, '荣耀手表 S1 表体（深空灰）+长腕带（黑色）', '428_428_1487746881428mp.jpg', '1497575814983.png', '549', '运动实时心率监测，50米游泳防水，哈佛医学院CDB认证睡眠算法，科学运动指导。', '1000', '1', '2017-01-20');
INSERT INTO `tb_goods` VALUES ('61', '3', '45', null, null, '华为儿童手表迪士尼系列 米妮款（田园粉）', '428_428_1486978752675mp.jpg', null, '638', '高清通话，五重定位，防尘防水低辐射，华为品质更安心。 【5.26-5.31 直降50元+限量随机赠送迪士尼水壶，礼品以收到的实物为准，赠品有限，赠完即止】', '1000', '1', '2017-01-10');
INSERT INTO `tb_goods` VALUES ('62', '4', '46', null, null, '华为子母路由器 Q1 子路由（黑色）', '428_428_1470042513541mp.jpg', null, '179', '1个母路由可搭配多达7个子路由使用，自动同步母路由WiFi名称和密码', '1000', '1', '2016-05-20');
INSERT INTO `tb_goods` VALUES ('63', '4', '46', null, null, '华为子母路由器 Q1 （白色）', '428_428_1475917596008mp.jpg', null, '599', '双WiFi覆盖，适合大户型和别墅型，有效解决WiFi穿墙和覆盖死角问题。', '1000', '1', '2016-03-20');
INSERT INTO `tb_goods` VALUES ('64', '4', '47', null, null, '荣耀盒子Pro （白色）', '428_428_1469695994751mp.jpg', null, '449', '4K旗舰，2GB内存+8GB闪存，杜比+DTS，智能语音蓝牙操控，跨屏续播，网口+互补式双天线wifi，秒播就是看得痛快。', '1000', '1', '2016-08-20');
INSERT INTO `tb_goods` VALUES ('65', '4', '47', null, null, '荣耀盒子voice 白色（语音搜片 真4K高清 网络机顶盒 安卓电视盒子 无线wifi 300M）', '428_428_1469086630958mp.jpg', null, '258', '智能语音搜片，只需一按；4K画质，流畅播放；海量影视，每日更新。', '1000', '1', '2016-07-30');
INSERT INTO `tb_goods` VALUES ('66', '4', '47', null, null, '荣耀盒子 标准版（黑色）', '428_428_1469155904513mp.jpg', null, '298', null, '1000', '1', '2016-07-20');
INSERT INTO `tb_goods` VALUES ('67', '4', '47', null, null, '华为盒子 4K高清智能网络电视机顶盒（黑色）', '428_428_1468546777559mp.jpg', null, '399', '海量正版免费影视、4K超清专区和儿童节目专区、每日内容更新、构建家庭影院。', '1000', '1', '2016-07-10');
INSERT INTO `tb_goods` VALUES ('68', '4', '48', null, null, '荣耀路由X1（白色）', '428_428_1500025136978mp.jpg', '1497576023361.png', '99', '新品上市，高性价比诚意之作，LDPC抗干扰无线算法大幅提升穿墙能力，内置巴伦免调天线，28纳米主芯片，时刻高速上网且稳定不掉线，中小户型优选 ！购新机评价再抽好礼，一等奖5名：荣耀路由X1 一台；二等奖10名：荣耀耳机一个；三等奖20名，荣耀自拍杆一个；详见活动规则！', '1000', '1', '2016-07-01');
INSERT INTO `tb_goods` VALUES ('69', '4', '48', null, null, '华为路由器 WS318 增强版（白色）', '428_428_1494815689240mp.jpg', '1497575938261.png', '129', '高性能双天线，覆盖更广；无线新算法，信号更穿墙；Wi-Fi自动加速，路由免重启。 ', '1000', '0', '2017-05-20');
INSERT INTO `tb_goods` VALUES ('70', '4', '48', null, null, '荣耀路由X1 增强版（白色）', '428_428_1493972111510mp.jpg', '1497575938261.png', '149', '荣耀路由X1增强版新品首发，5月24日 10:00正式开售，欢迎选购！光纤宽带中小户型适用，无线新技术，追剧、玩游戏快的有道理，28纳米主芯片和2.4G&5G双频优选， LDPC抗干扰无线算法大幅提升穿墙能力，时刻高速上网且稳定不掉线。 购新机评价再抽好礼，一等奖5名：荣耀路由X1 一台；二等奖10名：荣耀耳机一个；三等奖20名，荣耀自拍杆一个；详见活动规则！', '1000', '1', '2016-06-30');
INSERT INTO `tb_goods` VALUES ('71', '4', '48', null, null, '华为路由器 A1 畅享版（白色）', '428_428_1492767526549mp.jpg', null, '249', '支持MU-MIMO技术，自动优选5G信号，新一代LDPC算法，玩游戏更快，看视频更流畅。', '1000', '1', '2016-06-20');
INSERT INTO `tb_goods` VALUES ('72', '4', '48', null, null, '荣耀路由 尊享版（白色）', null, null, '228', '北欧简约外观设计，海思双核1GHz处理器，802.11AC双频WiFi无线传输不卡顿！', '1000', '1', '2016-06-10');
INSERT INTO `tb_goods` VALUES ('73', '4', '48', null, null, '华为路由器 A1 Lite（白色）', '428_428_1476001620773mp.jpg', null, '169', '隐藏式天线设计，中小户型优选路由。支持32个设备稳定连接。手机APP智能远程管理。', '1000', '1', '2016-06-01');
INSERT INTO `tb_goods` VALUES ('74', '4', '48', null, null, '荣耀路由 标准版（白色）', '428_428_1472522118416mp.jpg', null, '188', '北欧简约外观设计，海思双核1GHz处理器，802.11AC双频WiFi无线传输不卡顿。', '1000', '1', '2016-05-30');
INSERT INTO `tb_goods` VALUES ('75', '4', '48', null, null, '荣耀路由Pro 大户型穿墙1200Mbps智能AC有线无线双千兆旗舰路由器（白色）', '428_428_1466760144449mp.jpg', null, '328', '双千兆网速，大户型覆盖，上网、视频、游戏就是快！HiLink智能家居扩展一步到位。', '1000', '1', '2016-05-20');
INSERT INTO `tb_goods` VALUES ('76', '4', '48', null, null, '荣耀路由Pro 游戏版（黑色）', '428_428_1470390444376mp.jpg', null, '358', '腾讯TGP深度合作，内外网双重游戏加速，专属千兆游戏网口，游戏更新包预先下载，旗舰配置，上网、看视频、玩游戏就是爽。', '1000', '1', '2016-05-10');
INSERT INTO `tb_goods` VALUES ('77', '4', '48', null, null, '华为路由器 A1（白色）', '428_428_1473646700587mp.jpg', null, '399', '千兆网口+千兆WiFi+海思双核1GHz CPU+256M大内存，上网更快、更流畅。', '1000', '1', '2016-05-01');
INSERT INTO `tb_goods` VALUES ('78', '4', '48', null, null, '华为WiFi放大器/中继器WS331c（白色）', '428_428_1468806159118mp.jpg', null, '119', '小巧身材的WiFi放大器，轻松扩展WiFi覆盖范围，可同时放大两路WiFi信号。', '1000', '1', '2016-04-30');
INSERT INTO `tb_goods` VALUES ('79', '4', '48', null, null, '华为路由器WS318 （黑色）', '428_428_1468806722115mp.jpg', null, '89', '300M无线路由器，性能稳定，智能管理。', '1000', '1', '2016-04-20');
INSERT INTO `tb_goods` VALUES ('80', '4', '48', null, null, '华为路由器WS832（白色）', '428_428_1495790200913mp.jpg', '1497575918300.png', '249', '四根高性能天线，大功率信号放大器，智能天线算法。双核CPU，更快、更稳。', '1000', '1', '2016-04-10');
INSERT INTO `tb_goods` VALUES ('81', '4', '48', null, null, '华为路由器WS550 （黑色）', '428_428_1468546156666mp.jpg', null, '169', '双核450M无线路由器，下载、视频、游戏大提速。', '1000', '1', '2016-04-01');
INSERT INTO `tb_goods` VALUES ('82', '4', '49', null, null, '荣耀WiFi穿墙宝 双支装（1网口宝，1WiFi宝） 增强放大主流品牌无线路由器信号（白色）', '428_428_1466759818561mp.jpg', null, '268', '即插即用，自动配对，尽情追剧上网玩游戏！俗称电力猫。', '1000', '1', '2016-05-01');
INSERT INTO `tb_goods` VALUES ('83', '4', '49', null, null, '华为电力猫PT500 单只装 （白色）', '428_428_1468804667416mp.jpg', null, '138', '无需网线布线，使用电线传输网络信号，信号轻松穿墙【不带WiFi功能，需要搭配PT530或者2个PT500一起使用】', '1000', '1', '2016-04-30');
INSERT INTO `tb_goods` VALUES ('84', '4', '49', null, null, '华为电力猫PT530 （300M Wi-Fi）（白色）', '428_428_1468806877920mp.jpg', null, '269', '无需网线布线，使用电线传输网络信号，信号轻松穿墙【300Mbps WiFi，建议配合PT500或者两个PT530一起使用】', '1000', '1', '2016-04-20');
INSERT INTO `tb_goods` VALUES ('85', '4', '50', null, null, '华为随行WiFi 2 mini（白色）', '428_428_1495076026848mp.jpg', null, '299', '4G三网通，USB供电，即插即用，WiFi 16个用户，App配置   ', '1000', '0', '2016-09-30');
INSERT INTO `tb_goods` VALUES ('86', '4', '50', null, null, '华为随行WiFi 2（深灰色）', '428_428_1495075512638mp.jpg', null, '499', '4G全网通，3000mAh大电池，LCD屏幕，WiFi双天线，App配置 ', '1000', '0', '2016-09-20');
INSERT INTO `tb_goods` VALUES ('87', '4', '50', null, null, '华为随行WiFi 2 Pro（黑金色）', '428_428_1495074336003mp.jpg', null, '899', '4G+速率翻倍，4G三网通，大充电宝，高速网口，WiFi双频，Micro SD卡扩展，App配置，NFC快联 ', '1000', '0', '2016-09-10');
INSERT INTO `tb_goods` VALUES ('88', '4', '50', null, null, '华为随行WiFi Pro天际通E5771h 无线路由器（香槟金色）', '428_428_1468806411444mp.jpg', null, '799', '4G全网通无线路由器 移动随行WiFi 9600mAh充电宝/支持32G MicroSD卡扩展/HiLink APP管理。', '1000', '1', '2016-09-01');
INSERT INTO `tb_goods` VALUES ('89', '4', '50', null, null, '华为 E5573s 4g 无线路由器 直插SIM卡 移动随行WIFI（联通定制版）', '428_428_1468806508135mp.jpg', null, '339', '无线路由器 联通定制版 移动随行WiFi 携带方便 商旅客户的好助手。', '0', '1', '2016-08-30');
INSERT INTO `tb_goods` VALUES ('90', '4', '51', null, null, '欧普 幻彩明辉HUAWEI HiLink版（白色）', '428_428_1473845659685mp.jpg', null, '2999', '时尚纤薄，智能调光，支持HUAWEI HiLink智能家居平台。', '1000', '1', '2016-08-20');
INSERT INTO `tb_goods` VALUES ('91', '4', '51', null, null, '乐心体重秤S3（白色）', '428_428_1495877826509mp.jpg', null, '119', 'WiFi数据同步，抛弃蓝牙繁琐；拥有大枰面，更舒适的测量体验；高弹性和粘性的脚垫，防滑防侧翻；APP管理体重，瘦身好帮手', '0', '1', '2016-08-10');
INSERT INTO `tb_goods` VALUES ('92', '4', '51', null, null, '鸿雁 wifi智能计量插座 IHC8325H（白色）', '428_428_1471597518454mp.jpg', null, '109', '支持HUAWEI HiLink智能家居平台。', '0', '1', '2016-08-01');
INSERT INTO `tb_goods` VALUES ('93', '5', '52', null, null, '华为20000mAh 移动电源 快充版（黑色）', '428_428_1490921883474mp.jpg', null, '299', '20000mAh大容量，18W双向快充，双USB输出，多重安全防护', '1000', '1', '2016-10-01');
INSERT INTO `tb_goods` VALUES ('94', '5', '52', null, null, '华为10000mAh 移动电源 快充版（摩卡金）', '428_428_1493028354138mp.jpg', null, '199', '铝合金机身，18W双向快充，多重安全防护；配type C数据线。', '1000', '1', '2016-09-30');
INSERT INTO `tb_goods` VALUES ('95', '5', '52', null, null, '荣耀10000mAh 移动电源 快充版（白色）', '428_428_1475025651654mp.jpg', null, '165', '9V2A双向快充，充电更省心；握感舒适，防滑设计，给您的充电宝多重保护.', '1000', '1', '2016-09-20');
INSERT INTO `tb_goods` VALUES ('96', '5', '52', null, null, '华为10000 移动电源 SuperCharge 快充版（黑色）', '428_428_1499659928307mp.jpg', null, '269', null, '1000', '1', '2016-09-10');
INSERT INTO `tb_goods` VALUES ('97', '5', '52', null, null, '华为5000mAh 移动电源（极地白）', '428_428_1478054481374mp.jpg', null, '99', '时尚造型，多彩外观，纤薄轻巧，LED电量指示，多重保护，安全可靠！', '1000', '1', '2016-09-01');
INSERT INTO `tb_goods` VALUES ('98', '5', '53', null, null, '荣耀引擎耳机2代（皓月银）', '428_428_1467185984175mp.jpg', null, '99', '可调音耳机，一副耳机，两种音乐态度；延续1代经典，音质出色，人声自然。', '1000', '1', '2016-10-30');
INSERT INTO `tb_goods` VALUES ('99', '5', '53', null, null, '荣耀 AM115 半入耳式耳机 （白色）', '428_428_1477553956824mp.jpg', null, '79', '佩戴舒适，清听时光；三键线控，操作便捷。', '1000', '1', '2016-10-20');
INSERT INTO `tb_goods` VALUES ('100', '5', '53', null, null, '荣耀引擎耳机PLUS（星空灰）', '428_428_1468287612305mp.jpg', null, '99', '延续经典，好看、好听、好品质！', '1000', '1', '2016-10-10');
INSERT INTO `tb_goods` VALUES ('101', '5', '53', null, null, '荣耀小口哨 蓝牙耳机 Type C版（金色）', '428_428_1477042185789mp.jpg', null, '199', 'OTG快速充电；智能语音操控；遥控拍照', '1000', '1', '2016-10-01');
INSERT INTO `tb_goods` VALUES ('102', '5', '53', null, null, '荣耀 AM116半入耳式耳机（白色）', '428_428_1479716427569mp.jpg', null, '89', '佩戴舒适，清听时光；三键线控，操作便捷；金属外观，时尚耐用。', '1000', '1', '2016-09-30');
INSERT INTO `tb_goods` VALUES ('103', '5', '53', null, null, '荣耀运动蓝牙耳机（魅焰红）', '428_428_1489548822739mp.jpg', '1497575918300.png', '289', '高还原音质；无线设计，磁吸收纳；10天待机，11小时续航；多彩配色，精密工艺', '1000', '1', '2016-09-20');
INSERT INTO `tb_goods` VALUES ('104', '5', '53', null, null, '华为 Colortooth 多彩蓝牙耳机（石墨黑）', '428_428_1466654437154mp.jpg', null, '199', null, '1000', '1', '2016-09-10');
INSERT INTO `tb_goods` VALUES ('105', '5', '53', null, null, '大康 Dacom Athlete（G05）专用运动型蓝牙耳机（黑色）', '428_428_1467364207768mp.jpg', null, '128', 'NFC近场快速连接，出色音质体验，待机时间更长，轻盈舒适的同时享受音乐中的运动乐趣，一年内免费换新。', '1000', '1', '2016-09-01');
INSERT INTO `tb_goods` VALUES ('106', '5', '53', null, null, '荣耀 AM175圈铁耳机（冰雪金）', '428_428_1466996643893mp.jpg', null, '399', '动圈&动铁，中低音澎湃，高音敏锐清脆，同一段音乐，不一样的感受', '1000', '1', '2016-08-30');
INSERT INTO `tb_goods` VALUES ('107', '5', '53', null, null, '华为贝斯耳机（苍穹灰）', '428_428_1479884685910mp.jpg', null, '139', '物理调音，金属质感；人声还原更自然，演唱会现场般的音质体验；三键一体线控设计，音乐与电话随意切换。', '0', '1', '2016-08-20');
INSERT INTO `tb_goods` VALUES ('108', '5', '53', null, null, '华为 主动降噪耳机 AM185（金色）', '428_428_1466654835972mp.jpg', null, '599', '主动降噪，动圈动铁带来好音质，连续降噪8小时，支持HUAWEI P10，HUAWEI P10 Plus，HUAWEI Mate9 ，HUAWEI Mate9 pro，HUAWEI Mate8等手机直充，倍感舒适的佩戴体验，静享时光，聆听美好。', '1000', '1', '2016-08-10');
INSERT INTO `tb_goods` VALUES ('109', '5', '53', null, null, '华为AM116半入耳式耳机金属版（白色）', '428_428_1487582724981mp.jpg', null, '99', '三键线控；多出音孔调音系统。', '1000', '1', '2016-08-01');
INSERT INTO `tb_goods` VALUES ('110', '5', '53', null, null, '华为运动蓝牙耳机（黑色）', '428_428_1490087922122mp.jpg', null, '499', '待机10天，续航>6小时；专业降噪通话；吸磁收纳，智能开关', '1000', '1', '2016-07-30');
INSERT INTO `tb_goods` VALUES ('111', '5', '53', null, null, '大康 Dacom Cblue1 无线运动车载蓝牙耳机（香槟金）', '428_428_1467364534341mp.jpg', null, '158', '蓝牙4.0，500mAH锂电池长待机，金属质感，立体声清晰自然。', '1000', '1', '2016-07-20');
INSERT INTO `tb_goods` VALUES ('113', '5', '53', null, null, '华为圈铁耳机 AM175 尊享版（苍穹灰）', '428_428_1467366680263mp.jpg', null, '299', null, '1000', '1', '2016-07-01');
INSERT INTO `tb_goods` VALUES ('114', '5', '53', null, null, '荣耀 Colortooth 多彩蓝牙耳机（石墨黑）', '428_428_1466664178581mp.jpg', null, '129', null, '1000', '1', '2016-06-30');
INSERT INTO `tb_goods` VALUES ('115', '5', '53', null, null, '荣耀魔声耳机（红色）', '428_428_1496993610883mp.jpg', null, '249', null, '1000', '1', '2016-06-20');
INSERT INTO `tb_goods` VALUES ('116', '5', '53', null, null, '华为 AM115 半入耳式耳机 （白色）', '428_428_1475119188011mp.jpg', null, '59', null, '1000', '1', '2016-06-10');
INSERT INTO `tb_goods` VALUES ('117', '5', '53', null, null, '华为运动心率蓝牙耳机（黑色）', '428_428_1497325586428mp.jpg', '1497576023361.png', '699', null, '1000', '1', '2016-06-01');
INSERT INTO `tb_goods` VALUES ('118', '5', '53', null, null, 'AKG H300耳机（日晖金）', '428_428_1476947975139mp.jpg', null, '499', '专为华为平板 M3 定制', '1000', '1', '2016-05-30');
INSERT INTO `tb_goods` VALUES ('121', '5', '53', null, null, '缤特力 Voyager Legend 商务蓝牙耳机（香槟金）', '428_428_1477466931287mp.jpg', null, '498', 'Smart Sensor智能感应技术，中文语音控制，舒适佩戴，操控简单，释放你的双手！', '1000', '1', '2016-04-20');
INSERT INTO `tb_goods` VALUES ('123', '5', '53', null, null, '缤特力 EXPLORER 500 商务蓝牙耳机（太空灰）', '428_428_1471854149508mp.jpg', null, '499', '艺术与科技的甄美结合，清晰音质，多语言语音，精致设计的便携磁吸充电线！', '1000', '1', '2016-04-10');
INSERT INTO `tb_goods` VALUES ('127', '5', '53', null, null, '捷波朗 Sport Pulse Wireless 搏驰 智能心率监测 蓝牙通话 双耳立体声入耳耳机（黑色）', '428_428_1467777399702mp.jpg', null, '1599', '智能心率监测，具有沉浸感的杜比音效和运动时候的实时语音指导！买即送运动手机臂包一个。', '1000', '1', '2016-03-10');
INSERT INTO `tb_goods` VALUES ('128', '5', '53', null, null, '缤特力 BackBeat FIT 无线运动立体声蓝牙耳机（跑酷黑）', '428_428_1492506927363mp.jpg', null, '798', '时尚炫彩，快速充电，纳米防汗防潮，夜光安全设计。【新款售价998元，华为商城直降200元】', '1000', '1', '2016-03-01');
INSERT INTO `tb_goods` VALUES ('129', '5', '53', null, null, '缤特力 Voyager Edge SE 商务蓝牙耳机（白香槟金）', '428_428_1472550239020mp.jpg', null, '698', '旗舰级新品，刀锋经典，强悍依旧！', '1000', '1', '2016-02-20');
INSERT INTO `tb_goods` VALUES ('130', '5', '53', null, null, 'Cleer DU 高清双单元头戴耳机（黑色）', '428_428_1488340495163mp.jpg', null, '799', '顺丰包邮，全国联保，质保2年。', '1000', '1', '2016-02-10');
INSERT INTO `tb_goods` VALUES ('131', '5', '53', null, null, 'Cleer NC混合式降噪耳机（黑色）', '428_428_1488340887723mp.jpg', null, '1899', '顺丰包邮，全国联保，质保2年。', '1000', '1', '2016-02-01');
INSERT INTO `tb_goods` VALUES ('132', '5', '56', null, null, '荣耀车载充电器 快充版（黑色）', '428_428_1494324027170mp.jpg', null, '149', '支持主流9V2A快充，智能双USB输出口；多重安全保护；适配市面主流车型', '1000', '1', '2016-10-30');
INSERT INTO `tb_goods` VALUES ('133', '5', '56', null, null, '柠萌4U+4X充电插座（芭比粉）', '428_428_1490863318835mp.jpg', null, '79', '插孔环绕型排列设计，桌面井然有序。', '1000', '1', '2016-10-20');
INSERT INTO `tb_goods` VALUES ('135', '5', '56', null, null, '摩米士 Momax UA1旅行充电器（玫瑰金）', '428_428_1489751465321mp.jpg', null, '158', '出国旅游，美规澳规英规欧规国规互转。', '1000', '1', '2016-10-01');
INSERT INTO `tb_goods` VALUES ('136', '5', '56', null, null, 'HUAWEI SuperCharge 车载快速充电器（黑色）', '428_428_1484102582392mp.jpg', null, '199', '5A快充，双USB智能输出，4重安全保护；搭配Type-C原装5A数据线，支持HUAEWEI P10, P10 Plus, Mate9保时捷版、Mate9 Pro，Mate9等机型快速充电。', '1000', '1', '2016-09-30');
INSERT INTO `tb_goods` VALUES ('137', '5', '56', null, null, 'HUAWEI SuperCharge 快速充电器（白色）', '428_428_1484106183237mp.jpg', null, '109', '5A快充，智能适配 ，6级能效，8重保护；配Type-C原装数据线；适用HUAWEI P10, P10 Plus, Mate 9、Mate 9 pro、Mate 9保时捷设计等手机。', '1000', '1', '2016-09-20');
INSERT INTO `tb_goods` VALUES ('138', '5', '56', null, null, '华为 Type C 多彩数据线（白色）', '428_428_1476439453123mp.jpg', null, '49', '1.5米满足更多使用场景；适用机型：荣耀note8，荣耀8，荣耀V8，HUWEI P9/P9 PLUS，HUAWEI G9 PLUS，HUAWEI Nova等Type C接口手机。', '1000', '1', '2016-09-10');
INSERT INTO `tb_goods` VALUES ('139', '5', '56', null, null, '华为二合一数据线（白色）', '428_428_1476438981072mp.jpg', null, '69', '1.5米满足更多使用场景；适配安卓Micro USB和Type C两种接口，告别转接头。', '1000', '1', '2016-09-01');
INSERT INTO `tb_goods` VALUES ('140', '5', '56', null, null, '荣耀 Type C 多彩数据线（蓝色）', '428_428_1476439010328mp.jpg', null, '49', '1.5米满足更多使用场景；适用机型：荣耀note8，荣耀8，荣耀V8，HUAWEI P9/P9 PLUS，HUAWEI G9 PLUS，HUAWEI Nova等Type C接口手机。', '1000', '1', '2016-08-30');
INSERT INTO `tb_goods` VALUES ('141', '5', '56', null, null, '荣耀二合一数据线（白色）', '428_428_1476438456332mp.jpg', null, '59', '1.5米满足更多使用场景；适配安卓Micro USB和Type C两种接口，告别转接头。', '1000', '1', '2016-08-20');
INSERT INTO `tb_goods` VALUES ('142', '5', '56', null, null, '华为快充 9V2A手机充电器 带USB线（白色）', '428_428_1467708619455mp.jpg', null, '69', '支持海思快充与高通QC2.0快充协议；18W大功率输出；适用于HUAWEI Mate8、荣耀7等USB接口手机；USB数据线不支持type C接口', '1000', '1', '2016-08-10');
INSERT INTO `tb_goods` VALUES ('143', '5', '56', null, null, '华为 高端数据线缆 支持OTG功能（白色）', '428_428_1469786162432mp.jpg', null, '29', null, '1000', '1', '2016-08-01');
INSERT INTO `tb_goods` VALUES ('144', '5', '56', null, null, '荣耀Type C转接头（白色）', '428_428_1468892363965mp.jpg', null, '19', '适用机型：荣耀note8，荣耀8，荣耀V8，HUAWEI P9/P9 PLUS，HUAWEI G9 PLUS等手机。', '1000', '1', '2016-07-30');
INSERT INTO `tb_goods` VALUES ('145', '5', '56', null, null, '华为 Type C 转接头（白色）', '428_428_1466652827627mp.jpg', null, '19', '适用机型：荣耀note8，荣耀8，荣耀V8，HUAWEI P9/P9 PLUS，HUAWEI G9 PLUS等手机。', '1000', '1', '2016-07-20');
INSERT INTO `tb_goods` VALUES ('146', '5', '56', null, null, '华为 Type C 数据线（白色）', '428_428_1466652784051mp.jpg', null, '29', '适用机型：荣耀V9，荣耀8，HUAWEI P10/P10 PLUS，HUAWEI MATE9/MATE9 Pro等手机。', '1000', '1', '2016-07-10');
INSERT INTO `tb_goods` VALUES ('147', '5', '56', null, null, '荣耀Type C数据线（白色）', '428_428_1468892406742mp.jpg', null, '29', '适用机型：荣耀note8，荣耀8，荣耀V8，HUAWEI P9/P9 PLUS，HUAWEI G9 PLUS等手机。', '1000', '1', '2016-07-01');
INSERT INTO `tb_goods` VALUES ('148', '5', '56', null, null, '华为5V2A手机带线充电器（白色）', '428_428_1466650491999mp.jpg', null, '49', '2A大电流供电，充电迅速，性能稳定，智能保护，轻便可靠，携带方便。适用机型：HUAWEI P8，HUAWEI P8max，荣耀6plus，荣耀畅玩5X，荣耀畅玩5C等手机。', '1000', '1', '2016-06-30');
INSERT INTO `tb_goods` VALUES ('150', '5', '56', null, null, '洛斐 USB HUB 分线器（白色）', '428_428_1467359805043mp.jpg', null, '159', '便捷小巧，大容量文件轻松传输，还能给其他设备快速充电哦~', '1000', '1', '2016-06-10');
INSERT INTO `tb_goods` VALUES ('151', '5', '56', null, null, '荣耀 安卓通用多彩数据线（蓝色）', '428_428_1466663786557mp.jpg', null, '29', '适用机型：HUAWEI Mate 8，荣耀7，HUAWEI P8，HUAWEI P8max，荣耀6plus等手机。', '1000', '1', '2016-06-01');
INSERT INTO `tb_goods` VALUES ('152', '5', '56', null, null, 'BLCR H3 高端锌合金快速充电数据线 1.0米（银色）', '428_428_1467775987598mp.jpg', null, '49', '锌合金电镀工艺，一体式micro插头，23AWG无氧铜线芯，好看又耐用，充电更快速。', '1000', '1', '2016-05-30');
INSERT INTO `tb_goods` VALUES ('153', '5', '56', null, null, '华为电源输出线（白色）', '428_428_1469786124363mp.jpg', null, '29', null, '1000', '1', '2016-05-20');
INSERT INTO `tb_goods` VALUES ('154', '5', '56', null, null, 'BLCR H1 加长安卓手机数据线1.5M（白色）', '428_428_1467861845075mp.jpg', null, '19.9', '加长更方便，多次插拨测试，强抗拉力保护层，坚实耐用。（本产品包邮）', '1000', '1', '2016-05-10');
INSERT INTO `tb_goods` VALUES ('155', '5', '56', null, null, 'BLCR H2 手机快速充电数据线标准版1.0M（黑色）', '428_428_1467862705798mp.jpg', null, '35', '两种尺寸可选，23AWG高速传输精品数据线，更快速、更好用（本产品包邮）', '1000', '1', '2016-05-01');
INSERT INTO `tb_goods` VALUES ('156', '5', '56', null, null, '华为 USB数据线（白色）', '428_428_1466648754556mp.jpg', null, '19', '充电迅速，传输稳定，安全可靠，质高耐用。适用机型：HUAWEI Mate 8，荣耀7，HUAWEI P8，HUAWEI P8max，荣耀6plus等手机。', '1000', '1', '2016-04-30');
INSERT INTO `tb_goods` VALUES ('157', '5', '55', null, null, 'ROCK-M 车载手机支架 金属版（银色）', '428_428_1492653401836mp.jpg', '1497575918300.png', '88', '轻松单手取放，环抱设计，优选材质。', '1000', '1', '2016-04-20');
INSERT INTO `tb_goods` VALUES ('158', '5', '55', null, null, 'ROCK 车载出风口磁吸手机支架（灰色）', '428_428_1492652738248mp.jpg', null, '35', '强力吸附，不怕颠簸，操作简便，不挡视线。', '1000', '1', '2016-04-10');
INSERT INTO `tb_goods` VALUES ('159', '5', '55', null, null, '荣耀指环扣（灰色）', '428_428_1492740681753mp.jpg', null, '19', null, '1000', '1', '2016-04-01');
INSERT INTO `tb_goods` VALUES ('160', '5', '55', null, null, '华为三脚架自拍杆 无线版（黑色）', '428_428_1492166928020mp.jpg', null, '149', '三脚架+自拍杆一体式设计，660mm直立高度，蓝牙3.0十米远程控制；支持HUAEWEI P10, P10 Plus, Mate9保时捷版、Mate9 Pro，Mate9等机型', '1000', '1', '2016-03-30');
INSERT INTO `tb_goods` VALUES ('161', '5', '55', null, null, '荣耀三脚架自拍杆 无线版（白色）', '428_428_1495018208785mp.jpg', null, '119', '蓝牙3.0无线连接；迷你遥控器，10m远程控制；660mm直立高度，宽阔取景范围', '1000', '1', '2016-03-20');
INSERT INTO `tb_goods` VALUES ('164', '5', '55', null, null, '荣耀自拍杆（荣耀蓝）', '428_428_1468307037561mp.jpg', null, '49', '66厘米长度，270°大角度设计。贴心设计，美丽随身携带。', '1000', '1', '2016-02-20');
INSERT INTO `tb_goods` VALUES ('165', '5', '55', null, null, '华为自拍杆（暗夜金）', '428_428_1466652668923mp.jpg', null, '59', '品质可见，拿起它，发现更美的自己。', '1000', '1', '2016-02-10');
INSERT INTO `tb_goods` VALUES ('173', '5', '54', null, null, '荣耀小天鹅蓝牙音箱（白色）', '428_428_1468293433526mp.jpg', null, '99', '音•触即发！会唱歌的“天鹅”，360°音效技术，音质更真实自然，简洁触控操作，多提示音选择，支持蓝牙免提通话。', '1000', '1', '2016-09-20');
INSERT INTO `tb_goods` VALUES ('174', '5', '54', null, null, '荣耀 Color Cube 立体声蓝牙音箱（晴空蓝）', '428_428_11.jpg', null, '199', '简约ID设计，彩色立方体，震撼的声音效果，多种连接方式，让你随时随地的享受HIFI级立体声，带来蓝牙音箱新革命！', '1000', '1', '2016-09-10');
INSERT INTO `tb_goods` VALUES ('175', '5', '54', null, null, '耐翔（NAENY）X10 智能情感灯音响 创意无线蓝牙音箱（白色）', '428_428_1467855445503mp.jpg', null, '188', '温馨护眼小夜灯音箱，听歌照明一个搞定！', '1000', '1', '2016-09-01');
INSERT INTO `tb_goods` VALUES ('176', '5', '54', null, null, '华为小天鹅蓝牙音箱（白色）360°音效技术，音质更真实自然，简洁触控操作', '428_428_1466663225165mp.jpg', null, '109', '音•触即发！会唱歌的“天鹅”，360°音效技术，音质更真实自然，简洁触控操作，多提示音选择，支持蓝牙免提通话。', '1000', '1', '2016-08-30');
INSERT INTO `tb_goods` VALUES ('179', '5', '54', null, null, '洛斐 LOFREE 洛斐蓝牙音箱（白色）', '428_428_1467360456269mp.jpg', null, '255', '设计简约大气，支持蓝牙音乐播放、蓝牙免提电话(内置MIC)', '1000', '1', '2016-08-01');
INSERT INTO `tb_goods` VALUES ('181', '5', '54', null, null, 'Onkyo DAC-HA200 数/模转换器和耳机放大器（黑色）', '428_428_1488340121541mp.jpg', null, '1880', '顺丰包邮，全国联保。', '1000', '1', '2016-07-20');
INSERT INTO `tb_goods` VALUES ('182', '5', '54', null, null, 'Onkyo HT-S302 5.1家庭影院音响套装（黑色）', '428_428_1488339217669mp.jpg', null, '3980', '顺丰包邮，全国联保。', '1000', '1', '2016-07-10');
INSERT INTO `tb_goods` VALUES ('183', '5', '57', null, null, '闪迪 SanDisk 高速TF卡 microSDHC/microSDXC UHS-I存储卡 C10 80MB/秒 32G（红灰色）', '428_428_1486694683154mp.jpg', null, '90', '读取速度大80MB/秒，快速传输文件', '1000', '1', '2016-10-30');
INSERT INTO `tb_goods` VALUES ('184', '5', '57', null, null, '耐翔 Type-C 手机电脑通用U盘 32GB(银色）', '428_428_1480320498180mp.jpg', null, '149', '适用于Type-C接口的手机与平板，如：P9、V8、荣耀8、麦芒5、Mate9、MateBook等，通用于电脑，即插即用，合金外壳，送防丢钥匙扣。', '1000', '1', '2016-10-20');
INSERT INTO `tb_goods` VALUES ('186', '5', '57', null, null, '耐翔 NAENY 手机扩容U盘 安卓版 16GB存储（银色）', '428_428_1467854980972mp.jpg', null, '69', '手机平板电脑三用！手机轻松扩容，高效传输，文件轻松打开拷贝及分享，配送防丢挂环。', '1000', '1', '2016-10-01');
INSERT INTO `tb_goods` VALUES ('187', '5', '58', null, null, '荣耀排插 快充版（白色）', '428_428_1488003545460mp.jpg', null, '129', '国家CCC认证，多重安全保护；9V2A/18W快充；2.1米粗铜芯电源线，满足更多场景；一体式铜套设计，温升更低。', '1000', '1', '2016-09-30');
INSERT INTO `tb_goods` VALUES ('188', '5', '58', null, null, 'BroadLink WiFi智能排插 MP1（白色）', '428_428_1467700382862mp.jpg', null, '89', 'Wi-Fi智能排插，一个顶四个，生活刚刚好！', '1000', '1', '2016-09-20');
INSERT INTO `tb_goods` VALUES ('189', '5', '58', null, null, 'BroadLink SP mini3 WiFi智能定时器开关插座（白色）', '428_428_1498533646748mp.jpg', null, '59', '升级版WiFi智能插座，手机远程控制，定时开关，节能环保，让你的家电“听懂”你的话！', '1000', '1', '2016-09-10');
INSERT INTO `tb_goods` VALUES ('190', '5', '59', null, null, '荣耀VR全景相机（深海蓝）', '428_428_1489044823637mp.jpg', null, '699', '让手机秒变全景相机，VR科技加持，潮客极客必备，打造VR社交时代。【已测试可兼容机型：荣耀V9/荣耀V8/Mate 9/荣耀8/HUAWEI nova/P9/P9 Plus/荣耀Magic】', '1000', '1', '2016-09-01');
INSERT INTO `tb_goods` VALUES ('191', '5', '59', null, null, '华为全景相机（灰色）', '428_428_1497426283481mp.jpg', null, '899', '预售商品将在7月30日后安排发货。订购全景相机，首发预售订单将赠精美自拍杆', '1000', '1', '2016-08-30');
INSERT INTO `tb_goods` VALUES ('192', '5', '59', null, null, '锐力 Relee RL107 商务便携式 WIFI云端摄像笔（黑色）', '428_428_1467360743468mp.jpg', null, '299', '迷你便携，带有录相录声音的微型DVR，书写录像两不误，与手机无线对接，实时远程观看。', '1000', '1', '2016-08-20');
INSERT INTO `tb_goods` VALUES ('194', '5', '60', null, null, '坚果P2 微型投影仪（银色）', '428_428_1493177381698mp.jpg', '1497576023361.png', '3199', '金属机身设计，隐藏式散热，轻巧便携随时携带。', '1000', '1', '2016-08-01');
INSERT INTO `tb_goods` VALUES ('195', '5', '60', null, null, '坚果G3 家庭高清投影仪（黑色）', '428_428_1493177726215mp.jpg', null, '3399', '自动梯形校正、镜头保护盖、绚彩画质、HIFI音效。', '1000', '1', '2016-07-30');
INSERT INTO `tb_goods` VALUES ('196', '5', '60', null, null, '地宝魔镜S 扫地机器人', '428_428_1497925304271mp.jpg', null, '999', '经典款升级，千帕吸力，APP智控，大水箱真湿拖，家用吸尘器全自动智能拖地机【7.10-7.31首销期间，购买科沃斯产品即可参与 单品买赠+好评有礼+购机抽奖，重重好礼，只等你来！】', '1000', '1', '2016-07-20');
INSERT INTO `tb_goods` VALUES ('197', '5', '60', null, null, '科沃斯 地宝DE35 智能扫地机器人', '428_428_1497930538538mp.jpg', null, '1899', '2017新品，激光建图记忆清扫，智能规划家用吸尘器【7.10-7.31首销期间，购买科沃斯产品即可参与 单品买赠+好评有礼+购机抽奖，重重好礼，只等你来！】', '1000', '1', '2016-07-10');
INSERT INTO `tb_goods` VALUES ('198', '5', '60', null, null, '公牛自动防过充USB充电器（白色）', '428_428_1495865943971mp.jpg', '1497576023361.png', '65', '兼顾智能与安全，5重保护，充满自动断电', '0', '1', '2016-07-01');
INSERT INTO `tb_goods` VALUES ('199', '5', '60', null, null, 'HUAWEI VR 适配P10 Plus,Mate 9 Pro、Mate 9保时捷版、P9 Plus', '428_428_1481613831728mp.jpg', null, '599', '95度视场角；700度近视裸眼观看；3D音频技术；通讯无需退出；海量内容资源，每周更新。', '1000', '1', '2016-06-30');
INSERT INTO `tb_goods` VALUES ('200', '5', '60', null, null, 'BroadLink智能遥控黑豆RM mini3（黑色）', '428_428_1467700562027mp.jpg', null, '79', '黑豆Wi-Fi智能遥控，让普通空调变智能，个性化定制空调状态，远程开空调，一键启动空调、TV、机顶盒！', '1000', '1', '2016-06-20');
INSERT INTO `tb_goods` VALUES ('201', '5', '60', null, null, '耐翔 N108 车载负离子空气净化器 （香槟金）', '428_428_1467770871412mp.jpg', null, '99', '新一代负离子净化器，快速净化车内空气，即插即用使用方便，祛除阴霾、灰尘、分解甲醛、烟雾及PM2.5颗粒物，让您重回大自然的怀抱！', '1000', '1', '2016-06-10');
INSERT INTO `tb_goods` VALUES ('202', '5', '60', null, null, '公牛多国旅行转换器（白色）', '428_428_1496653049202mp.jpg', '1497576023361.png', '79', '出国旅行好伴侣，可单独或组合使用，安全放心', '0', '1', '2016-06-01');
INSERT INTO `tb_goods` VALUES ('203', '5', '60', null, null, '公牛魔方USB插座 有线版（白色）', '428_428_1496653106168mp.jpg', '1497576023361.png', '69', '小巧便捷，创新不只一面', '1000', '1', '2016-05-30');
INSERT INTO `tb_goods` VALUES ('205', '5', '61', null, null, 'ROCK 运动腰包（灰色）', '428_428_1492652017792mp.jpg', null, '49', '小身材大容量，防水防汗，预留耳机孔。', '0', '1', '2016-05-10');
INSERT INTO `tb_goods` VALUES ('206', '5', '61', null, null, 'Stikk gel pad 胶垫挂钩 4片装（透明）', '428_428_1480490363949mp.jpg', null, '68', '双面粘贴，强力凝胶片，给你的生活更多便利。', '1000', '1', '2016-05-01');
INSERT INTO `tb_goods` VALUES ('207', '5', '61', null, null, '爱奇艺VIP黄金会员年卡', '428_428_1496647294404mp.jpg', null, '148.5', '【爱奇艺VIP黄金会员单品立享75折】购买成功后，将于下单后次日发送激活码短信至订单收件人手机，周末及节假日顺延，请您在下单时留意。当前所购激活码请于2017年12月31日前激活使用。【激活码属于虚拟类产品，售出后非产品质量问题不退不换】', '1000', '1', '2016-04-30');
INSERT INTO `tb_goods` VALUES ('208', '5', '61', null, null, '翻翻灯（粉色）', '428_428_1476954157142mp.jpg', null, '159', '重力感应闹钟，四挡亮度调节，温度湿度实时监测，给你的生活加点创意。', '0', '1', '2016-04-20');
INSERT INTO `tb_goods` VALUES ('209', '5', '61', null, null, '尼尔凡迪 运动手机臂包 高环保材质 透气防汗（绿色）', '428_428_1467855137453mp.jpg', null, '39', '运动伴侣！双仓位设计，可装手机与各种配件；滑行拉链，收纳提取更安全；臂带大小可调整，适合不同部位配戴（此产品包邮）。', '1000', '1', '2016-04-10');
INSERT INTO `tb_goods` VALUES ('210', '5', '61', null, null, '尼尔凡迪 运动手机腰包标准版 高环保材质 透气防水防汗（蓝色）', '428_428_1484028636011mp.jpg', null, '48', '运动伴侣，轻便出行；腰围可调整，防水性能好，不怕汗水飘洒；升缩性能好，容量更大。（此产品包邮）。', '1000', '1', '2016-04-01');
INSERT INTO `tb_goods` VALUES ('211', '5', '61', null, null, '荣耀体脂秤（白色）', '428_428_1497594967609mp.jpg', null, '199', '11项身体数据检测，全面身体健康报告；身体年龄检测；体重、体脂秤面显示。', '1000', '1', '2016-03-30');
INSERT INTO `tb_goods` VALUES ('212', '6', '62', '26', null, '荣耀畅玩6A 透明保护壳（透明）', '428_428_1495264347891mp.jpg', null, '39', null, '0', '1', '2016-10-30');
INSERT INTO `tb_goods` VALUES ('213', '6', '62', '28', null, 'HUAWEI P10 Plus多彩软壳（波点图案）', '428_428_1493775835995mp.jpg', null, '99', null, '0', '1', '2016-10-20');
INSERT INTO `tb_goods` VALUES ('214', '6', '62', '26', null, 'HUAWEI nova 2 皮质保护壳（绿色）', '428_428_1495679649433mp.jpg', null, '69', null, '0', '1', '2016-10-10');
INSERT INTO `tb_goods` VALUES ('215', '6', '62', '26', null, 'HUAWEI P10徕卡定制牛皮保护壳（棕色）', '428_428_1492055636984mp.jpg', null, '499', null, '1000', '1', '2016-10-01');
INSERT INTO `tb_goods` VALUES ('216', '6', '62', '26', null, 'HUAWEI P10 PC保护壳（透明）', '428_428_1492055367620mp.jpg', null, '49', null, '1000', '1', '2016-09-30');
INSERT INTO `tb_goods` VALUES ('217', '6', '62', '26', null, 'HUAWEI P10 Plus徕卡定制牛皮保护壳（棕色）', '428_428_1492054916120mp.jpg', null, '499', null, '1000', '1', '2016-09-20');
INSERT INTO `tb_goods` VALUES ('218', '6', '62', '26', null, 'HUAWEI P10 Plus PC保护壳（透明）', '428_428_1492054532720mp.jpg', null, '49', null, '1000', '1', '2016-09-10');
INSERT INTO `tb_goods` VALUES ('219', '6', '62', '28', null, 'HUAWEI P10多彩软壳（条纹图案）', '428_428_1491553978167mp.jpg', null, '99', null, '1000', '1', '2016-09-01');
INSERT INTO `tb_goods` VALUES ('220', '6', '62', '26', null, 'HUAWEI nova 2 炫彩软胶保护壳（经典条纹）', '428_428_1497317417776mp.jpg', null, '99', null, '0', '1', '2016-08-30');
INSERT INTO `tb_goods` VALUES ('221', '6', '62', '26', null, 'HUAWEI nova 青春版 透明保护壳（蓝色）', '428_428_1490088659946mp.jpg', null, '99', null, '1000', '1', '2016-08-20');
INSERT INTO `tb_goods` VALUES ('222', '6', '62', null, null, 'HUAWEI nova 2 Plus 皮质保护壳（金色）', '428_428_1495679876995mp.jpg', null, '69', null, '1000', '1', '2016-08-10');
INSERT INTO `tb_goods` VALUES ('223', '6', '62', '28', null, 'HUAWEI P10透明保护软壳（透明灰）', '428_428_1490086329129mp.jpg', null, '49', null, '1000', '1', '2016-08-01');
INSERT INTO `tb_goods` VALUES ('224', '6', '62', '26', null, 'HUAWEI P10混搭保护壳（深灰）', '428_428_1490084811837mp.jpg', null, '199', null, '1000', '1', '2016-07-30');
INSERT INTO `tb_goods` VALUES ('225', '6', '62', null, null, 'HUAWEI nova 2 Plus 炫彩软胶保护壳（经典条纹）', '428_428_1497317474861mp.jpg', null, '88', null, '0', '1', '2016-07-20');
INSERT INTO `tb_goods` VALUES ('226', '6', '62', '28', null, 'HUAWEI P10 Plus透明保护软壳（透明灰）', '428_428_1490082584793mp.jpg', null, '49', null, '1000', '1', '2016-07-10');
INSERT INTO `tb_goods` VALUES ('227', '6', '62', '26', null, 'HUAWEI P10 Plus混搭保护壳（棕色）', '428_428_1490081717564mp.jpg', null, '199', null, '1000', '1', '2016-07-01');
INSERT INTO `tb_goods` VALUES ('228', '6', '62', null, null, '荣耀V9 手机导航套件（蓝色）', '428_428_1489369881322mp.jpg', null, '169', null, '1000', '1', '2016-06-30');
INSERT INTO `tb_goods` VALUES ('229', '6', '62', null, null, 'HUAWEI Mate 9 Pro 手机导航套件（灰色）', '428_428_1481529811787mp.jpg', null, '199', null, '1000', '1', '2016-06-20');
INSERT INTO `tb_goods` VALUES ('230', '6', '62', '26', null, '华为 P8 一体式真皮保护壳（蓝色）', '428_428_IMG_9923.jpg', null, '299', null, '0', '1', '2016-06-10');
INSERT INTO `tb_goods` VALUES ('231', '6', '62', '28', null, 'HUAWEI Mate 9 Pro 透明保护软壳（灰色）', '428_428_1481527077908mp.jpg', null, '49', null, '1000', '1', '2016-06-01');
INSERT INTO `tb_goods` VALUES ('232', '6', '62', null, null, '荣耀9 炫彩保护壳（炫彩蓝）', '428_428_1497318865289mp.jpg', null, '109', null, '1000', '1', '2016-05-30');
INSERT INTO `tb_goods` VALUES ('233', '6', '62', '26', null, '荣耀畅玩6X PC保护壳（半透明）', '428_428_1476676136008mp.jpg', null, '89', null, '1000', '1', '2016-05-20');
INSERT INTO `tb_goods` VALUES ('234', '6', '62', '28', null, '荣耀9 透明保护壳（蓝色）', '428_428_1497319723377mp.jpg', null, '99', null, '0', '1', '2016-05-10');
INSERT INTO `tb_goods` VALUES ('235', '6', '62', '26', null, 'HUAWEI P10手机车用保护壳（浅灰）', '428_428_1491892919623mp.jpg', null, '149', null, '0', '1', '2016-05-01');
INSERT INTO `tb_goods` VALUES ('236', '6', '62', '26', null, 'HUAWEI P10 Plus手机车用保护壳（棕色）', '428_428_1491982500519mp.jpg', null, '149', null, '1000', '1', '2016-04-30');
INSERT INTO `tb_goods` VALUES ('238', '6', '62', '28', null, '荣耀8 简约TPU保护壳（透明）', '428_428_1469011553330mp.jpg', null, '49', null, '1000', '1', '2016-04-10');
INSERT INTO `tb_goods` VALUES ('239', '6', '62', '26', null, '荣耀8 透明保护壳（银色）', '428_428_1467893493556mp.jpg', null, '99', null, '0', '1', '2016-04-01');
INSERT INTO `tb_goods` VALUES ('241', '6', '62', '26', null, '荣耀V8 3D纹理PC保护壳（金色）', '428_428_1466996234317mp.jpg', null, '39', null, '0', '1', '2016-03-20');
INSERT INTO `tb_goods` VALUES ('243', '6', '63', null, null, '荣耀V9 专属翻盖皮套（蓝色）', '428_428_1487327102163mp.jpg', null, '129', null, '1000', '1', '2016-10-20');
INSERT INTO `tb_goods` VALUES ('244', '6', '63', null, null, '荣耀8青春版 翻盖保护套（白色）', '428_428_1487579668074mp.jpg', null, '119', null, '1000', '1', '2016-10-10');
INSERT INTO `tb_goods` VALUES ('245', '6', '63', null, null, 'HUAWEI P10智能视窗保护套（浅灰）', '428_428_1490086899373mp.jpg', null, '229', null, '1000', '1', '2016-10-10');
INSERT INTO `tb_goods` VALUES ('246', '6', '63', null, null, 'HUAWEI P10 Plus智能视窗保护套（棕色）', '428_428_1490082853426mp.jpg', null, '229', null, '0', '1', '2016-10-01');
INSERT INTO `tb_goods` VALUES ('247', '6', '63', null, null, 'HUAWEI Mate9 保时捷设计 智能视窗保护套（黑色）', '428_428_1487729517472mp.jpg', null, '1990', null, '1000', '1', '2016-09-30');
INSERT INTO `tb_goods` VALUES ('248', '6', '63', null, null, '荣耀 Magic 专属真皮皮套（黑色）', '428_428_1484218356658mp.jpg', null, '599', null, '1000', '1', '2016-09-20');
INSERT INTO `tb_goods` VALUES ('249', '6', '63', null, null, 'HUAWEI Mate 9 Pro 智能视窗保护套（深灰色）', '428_428_1481527928900mp.jpg', null, '299', null, '1000', '1', '2016-09-10');
INSERT INTO `tb_goods` VALUES ('250', '6', '63', null, null, 'HUAWEI Mate 9 智能全景视窗皮套（灰色）', '428_428_1478594607049mp.jpg', null, '229', null, '1000', '1', '2016-09-01');
INSERT INTO `tb_goods` VALUES ('251', '6', '63', null, null, '荣耀平板2 翻盖保护套（白色）', '428_428_1476761661345mp.jpg', null, '129', null, '1000', '1', '2016-08-30');
INSERT INTO `tb_goods` VALUES ('252', '6', '63', null, null, '荣耀畅玩6X 翻盖保护皮套（灰色）', '428_428_1476773405889mp.jpg', null, '129', null, '1000', '1', '2016-08-20');
INSERT INTO `tb_goods` VALUES ('253', '6', '63', null, null, '荣耀畅玩平板2 8英寸 翻盖保护套（黑色）', '428_428_1495268833851mp.jpg', null, '99', null, '1000', '1', '2016-08-10');
INSERT INTO `tb_goods` VALUES ('254', '6', '63', null, null, '华为平板 M3 翻盖保护套（棕色）', '428_428_1474704775425mp.jpg', null, '129', '开盖唤醒屏幕 合盖进入休眠', '0', '1', '2016-08-01');
INSERT INTO `tb_goods` VALUES ('255', '6', '63', null, null, '荣耀 NOTE 8 智能显示多功能保护套（灰色）', '428_428_1470293900166mp.jpg', null, '199', null, '1000', '1', '2016-07-30');
INSERT INTO `tb_goods` VALUES ('256', '6', '63', null, null, '荣耀畅玩平板2 9.6英寸 翻盖保护套（黑色）', '428_428_1495268968928mp.jpg', null, '99', null, '1000', '1', '2016-07-20');
INSERT INTO `tb_goods` VALUES ('257', '6', '63', null, null, '荣耀8 翻盖保护套（金色）', '428_428_1467893806622mp.jpg', null, '159', null, '1000', '1', '2016-07-10');
INSERT INTO `tb_goods` VALUES ('258', '6', '63', null, null, '华为平板 M3 青春版 8英寸翻盖皮套（棕色）', '428_428_1497865042393mp.jpg', null, '129', null, '1000', '1', '2016-07-01');
INSERT INTO `tb_goods` VALUES ('259', '6', '63', null, null, '华为平板 M3 青春版 10.1英寸翻盖皮套（棕色）', '428_428_1497604601041mp.jpg', null, '149', null, '1000', '1', '2016-06-30');
INSERT INTO `tb_goods` VALUES ('260', '6', '63', null, null, '荣耀V8 开窗翻盖保护套（白色）', '428_428_1466996038997mp.jpg', null, '99', null, '1000', '1', '2016-06-20');
INSERT INTO `tb_goods` VALUES ('262', '6', '63', null, null, '荣耀畅玩平板note 翻盖保护套（白色）', '428_428_1470206745990mp.jpg', null, '129', '保护/翻盖/支架三合一', '1000', '1', '2016-06-01');
INSERT INTO `tb_goods` VALUES ('263', '6', '64', null, null, '荣耀畅玩6A 高透保护膜（透明）', '428_428_1495261259405mp.jpg', null, '19', null, '1000', '1', '2016-05-30');
INSERT INTO `tb_goods` VALUES ('264', '6', '64', null, null, 'C.LIFE HUAWEI Mate9 丝印钢化膜（香槟金）', '428_428_1493023996043mp.jpg', null, '49', null, '0', '1', '2016-05-20');
INSERT INTO `tb_goods` VALUES ('265', '6', '64', null, null, '荣耀平板2 屏幕保护膜（高透）', '428_428_1477558551968mp.jpg', null, '25', null, '1000', '1', '2016-05-10');
INSERT INTO `tb_goods` VALUES ('266', '6', '64', null, null, '荣耀畅玩平板2 8英寸 高透保护膜（透明）', '428_428_1497326093766mp.jpg', null, '19', null, '1000', '1', '2016-05-01');
INSERT INTO `tb_goods` VALUES ('267', '6', '64', null, null, '荣耀畅玩平板2 9.6英寸 高透保护膜（透明）', '428_428_1497326133173mp.jpg', null, '19', null, '1000', '1', '2016-04-30');
INSERT INTO `tb_goods` VALUES ('268', '6', '64', null, null, 'HUAWEI P10 高透贴膜（透明）', '428_428_1493864512412mp.jpg', null, '29', null, '1000', '1', '2016-04-20');
INSERT INTO `tb_goods` VALUES ('269', '6', '64', null, null, 'HUAWEI P10 Plus高透贴膜（透明）', '428_428_1493864566049mp.jpg', null, '29', null, '1000', '1', '2016-04-10');
INSERT INTO `tb_goods` VALUES ('271', '6', '64', null, null, '荣耀畅玩平板 屏幕保护膜（高透）', '428_428_1469845300409mp.jpg', null, '25', '专为荣耀畅玩平板量身定制', '1000', '1', '2016-03-30');
INSERT INTO `tb_goods` VALUES ('273', '2', '1', null, null, 'HUAWEI MateDock 2 扩展坞（白色）', '428_428_1500599313683mp.jpg', null, '399', '适用于MateBook E、MateBook X以及其他支持USB C接口DP (DisplayPort) 视频输出的设备', '1000', '1', '2016-09-20');
INSERT INTO `tb_goods` VALUES ('274', '2', '1', null, null, 'HUAWEI 蓝牙鼠标（灰色）', '428_428_1498735096912mp.jpg', null, '179', '适用于HUAWEI MateBook X、HUAWEI MateBook E、HUAWEI MateBook D、HUAWEI MateBook', '1000', '1', '2017-05-20');
INSERT INTO `tb_goods` VALUES ('275', '2', '1', null, null, 'HUAWEI 内胆包（灰色）', '428_428_1495595005874mp.jpg', null, '99', '适用于HUAWEI MateBook X、HUAWEI MateBook E、HUAWEI MateBook', '1000', '1', '2017-07-21');
INSERT INTO `tb_goods` VALUES ('276', '2', '1', null, null, 'HUAWEI 背包（灰色）', '428_428_1495594962489mp.jpg', null, '199', '适用于HUAWEI MateBook X、HUAWEI MateBook E、HUAWEI MateBook D、HUAWEI MateBook', '1000', '1', '2017-07-25');
INSERT INTO `tb_goods` VALUES ('277', '2', '1', null, null, 'HUAWEI MatePen 触控笔（银白色）', '428_428_1498034465608mp.jpg', null, '499', '适用于HUAWEI MateBook E 、HUAWEI MateBook', '1000', '1', '2017-07-26');
INSERT INTO `tb_goods` VALUES ('278', '3', '44', null, null, '荣耀手环3 NFC版（碳晶黑）', '428_428_1499999274566mp.jpg', '1497576023361.png', '269', '【NFC版首发】NFC支付 50米防水 每天24小时心率检测 30天续航 科学睡眠 智能运动手环。NFC支付功能（目前支持北京、上海与深圳，其他城市陆续开放中）；IOS系统不支持NFC功能；', '1000', '1', '2017-06-25');
INSERT INTO `tb_goods` VALUES ('279', '4', '51', null, null, '美的清羽智能风扇 FTS30-16BRH（白色）', '428_428_1496822766528mp.jpg', null, '1499', '26档风量调节，还原自然风的轻柔；特色宝宝睡眠风，如同姥姥的蒲扇风； 多角度摇头，适配不同卧室需求；简易拆装，台地两用', '1000', '1', '2017-05-20');
INSERT INTO `tb_goods` VALUES ('280', '4', '51', null, null, '净美仕 空气净化器9188A（白色）', '428_428_1499673327156mp.jpg', null, '2399', '大屏幕显示，净化效果看得见；H11级HEPA滤网，PM2.5、甲醛、异味全过滤；专利风道，净化效能464CADR，适用面积55平米', '1000', '1', '2017-04-15');
INSERT INTO `tb_goods` VALUES ('281', '4', '51', null, null, '杜亚电动窗帘 DT76 2米轨道+电机套餐（含遥控）', '428_428_1497435461876mp.jpg', null, '3320', '29分贝静音运行；轻触启动，轻拉一下，窗帘自动打开或关闭；停电不尴尬，手拉窗帘，也没问题；遇到阻力时，自动停止、防止卡轨', '1000', '1', '2017-04-10');
INSERT INTO `tb_goods` VALUES ('282', '4', '51', null, null, 'Joyoung/九阳破壁免滤豆浆机 DJ13R-P3（玫瑰红）', '428_428_1499134024351mp.jpg', null, '1599', '破壁无渣免滤，让营养滑进身体；鱼雷式电机20000转速，配合大吸力研磨器和晶钢波浪刀，渣渣立即粉碎；WiFi连接，随时掌控、随时预约', '1000', '1', '2017-02-10');
INSERT INTO `tb_goods` VALUES ('283', '4', '51', null, null, '晾霸 晾衣架 高端功能款 HW50（银色）', '428_428_1499673409451mp.jpg', null, '3599', '【电话预约，免费上门安装】照明、风干、烘干、杀菌，一机搞定', '1000', '1', '2017-04-20');
INSERT INTO `tb_goods` VALUES ('284', '4', '51', null, null, '欧普悦雅吸顶灯（白色）', '428_428_1499673607462mp.jpg', null, '399', '专业亮度曲线，灯光如阳光般舒适；大面积一体化成型工艺，无缝连接，品质感更好；调光调色，三段控光；旋转卡扣，安装方便', '1000', '1', '2017-05-10');
INSERT INTO `tb_goods` VALUES ('285', '4', '51', null, null, '统帅梦享智能变频空调 KFR-26GW/17HAA21ATU1（大1匹）', '428_428_1497607748270mp.jpg', null, '3299', '【提供上门安装调试、检测和维修等售后服务】双智能精彩不单调（华为HiLink+海尔好空气）；一级能效，踏实不浮夸；17分贝静音，宁静不喧嚣；光感护眼，呵护不打扰', '1000', '1', '2017-06-20');
INSERT INTO `tb_goods` VALUES ('286', '5', '56', null, null, '华为儿童手表充电底座（白色）', '428_428_1477379341318mp.jpg', null, '49', null, '1000', '1', '2017-05-21');
INSERT INTO `tb_goods` VALUES ('287', '5', '56', null, null, '华为5V/1A手机充电器 USB充电头（白色）', '428_428_1466650669087mp.jpg', null, '29', '优质电芯，高效转换，完美适配，品质保证，智能保护，安全无忧', '1000', '1', '2017-05-25');
INSERT INTO `tb_goods` VALUES ('288', '5', '56', null, null, '荣耀手表S1 充电底座（白色）', '428_428_1496732467479mp.jpg', null, '49', null, '1000', '1', '2017-05-22');
INSERT INTO `tb_goods` VALUES ('289', '5', '61', null, null, '荣耀探空精灵（冰晶白）', '428_428_1497259947904mp.jpg', '1497576023361.png', '599', null, '1000', '1', '2017-05-28');
INSERT INTO `tb_goods` VALUES ('290', '6', '65', null, null, '荣耀盒子蓝牙语音遥控器（白色）', '428_428_1466666109333mp.jpg', null, '49', '语音搜片，想看什么说出来；蓝牙4.0，多角度无障碍遥控（适用荣耀盒子Pro、荣耀盒子voice，不适用荣耀盒子M321、华为盒子M330和华为盒子增强版）', '1000', '1', '2017-02-01');
INSERT INTO `tb_goods` VALUES ('291', '6', '65', null, null, '荣耀盒子红外遥控器（兼容荣耀立方）', '428_428_1466666060410mp.jpg', null, '29', '磨砂遥控器，静音式设计，11键简洁设计，按键反馈清晰。（适用于荣耀盒子M321和 华为盒子M330）', '1000', '1', '2017-03-05');
INSERT INTO `tb_goods` VALUES ('292', '6', '65', null, null, '荣耀盒子专用SPDIF线', '428_428_1470206231897mp.jpg', null, '19', '（适用于荣耀盒子M321、华为盒子M330和华为盒子增强版，不适用荣耀盒子Pro）', '1000', '1', '2017-03-10');
INSERT INTO `tb_goods` VALUES ('293', '6', '65', null, null, '荣耀盒子专用AV音视频线', '428_428_1470205774310mp.jpg', null, '19', '(适用于荣耀盒子M321、华为盒子M330和华为盒子增强版，不适用荣耀盒子Pro )', '1000', '1', '2017-04-10');
INSERT INTO `tb_goods` VALUES ('294', '6', '65', null, null, '荣耀盒子专属底座', '428_428_1466665938506mp.jpg', null, '39', '（适用于荣耀盒子M321和 华为盒子M330）', '1000', '1', '2017-05-01');
INSERT INTO `tb_goods` VALUES ('295', '6', '65', null, null, 'HUAWEI WATCH 2 运动表带无纹款（橙色）', '428_428_1500452540124mp.jpg', null, '149', null, '1000', '1', '2017-05-20');
INSERT INTO `tb_goods` VALUES ('296', '6', '65', null, null, '荣耀畅玩手环 A1 TPU表带（活力蓝）', '428_428_1466133636307mp.jpg', null, '36', '此商品仅为荣耀A1 手环表带，A1 手环主机需单独购买。', '1000', '1', '2017-05-30');

-- ----------------------------
-- Table structure for `tb_goodscar`
-- ----------------------------
DROP TABLE IF EXISTS `tb_goodscar`;
CREATE TABLE `tb_goodscar` (
  `goodscar_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `add_date` date NOT NULL,
  `all_name` varchar(45) NOT NULL,
  PRIMARY KEY (`goodscar_id`),
  UNIQUE KEY `UNqiue_1` (`user_id`,`goods_id`,`all_name`) USING BTREE,
  KEY `fk_22331` (`goods_id`),
  CONSTRAINT `FK_22221` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_22331` FOREIGN KEY (`goods_id`) REFERENCES `tb_goods` (`goods_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_goodscar
-- ----------------------------
INSERT INTO `tb_goodscar` VALUES ('36', '1', '29', '2', '2017-08-26', '荣耀V9 全网通版 4GB+64GB（极光蓝）');
INSERT INTO `tb_goodscar` VALUES ('37', '1', '29', '2', '2017-08-29', '荣耀V9 全网通版 4GB+64GB（铂光金）');
INSERT INTO `tb_goodscar` VALUES ('38', '1', '29', '2', '2017-08-29', '荣耀V9 全网通版 6GB+64GB（魅焰红）');

-- ----------------------------
-- Table structure for `tb_goods_detail`
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_detail`;
CREATE TABLE `tb_goods_detail` (
  `goods_detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL,
  `detail_image` varchar(45) NOT NULL,
  PRIMARY KEY (`goods_detail_id`),
  UNIQUE KEY `u1` (`detail_image`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_goods_detail
-- ----------------------------
INSERT INTO `tb_goods_detail` VALUES ('1', '29', '201704121608127515369.jpg');
INSERT INTO `tb_goods_detail` VALUES ('2', '29', '20170412160813207285.jpg');
INSERT INTO `tb_goods_detail` VALUES ('3', '29', '201704121608126638462.jpg');
INSERT INTO `tb_goods_detail` VALUES ('4', '29', '201704121608134061385.jpg');
INSERT INTO `tb_goods_detail` VALUES ('5', '29', '201704121608136077721.jpg');
INSERT INTO `tb_goods_detail` VALUES ('6', '29', '201704121608138888789.jpg');
INSERT INTO `tb_goods_detail` VALUES ('7', '29', '201704121608142466449.jpg');
INSERT INTO `tb_goods_detail` VALUES ('8', '29', '20170412160814597898.jpg');
INSERT INTO `tb_goods_detail` VALUES ('9', '29', '201704121608147634311.jpg');
INSERT INTO `tb_goods_detail` VALUES ('10', '29', '201704121608146949487.jpg');
INSERT INTO `tb_goods_detail` VALUES ('11', '29', '201704121608148933880.jpg');
INSERT INTO `tb_goods_detail` VALUES ('12', '29', '201704121608154740501.jpg');
INSERT INTO `tb_goods_detail` VALUES ('13', '29', '201704121608155187572.jpg');
INSERT INTO `tb_goods_detail` VALUES ('14', '29', '201704121608155722733.jpg');

-- ----------------------------
-- Table structure for `tb_gtype`
-- ----------------------------
DROP TABLE IF EXISTS `tb_gtype`;
CREATE TABLE `tb_gtype` (
  `type_id` varchar(45) NOT NULL,
  `type_name` varchar(45) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_gtype
-- ----------------------------
INSERT INTO `tb_gtype` VALUES ('1', '手机');
INSERT INTO `tb_gtype` VALUES ('2', '笔记本 & 平板');
INSERT INTO `tb_gtype` VALUES ('3', '穿戴');
INSERT INTO `tb_gtype` VALUES ('4', '智能家居');
INSERT INTO `tb_gtype` VALUES ('5', '通用配件');
INSERT INTO `tb_gtype` VALUES ('6', '专属配件');

-- ----------------------------
-- Table structure for `tb_image1`
-- ----------------------------
DROP TABLE IF EXISTS `tb_image1`;
CREATE TABLE `tb_image1` (
  `image1_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` varchar(11) DEFAULT NULL,
  `image` varchar(45) NOT NULL,
  `gname` varchar(45) DEFAULT NULL,
  `gdesc` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `extra_image` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`image1_id`),
  KEY `FK_222_idx` (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_image1
-- ----------------------------
INSERT INTO `tb_image1` VALUES ('1', '29', '20170531234918453.jpg', null, null, null, null, null);
INSERT INTO `tb_image1` VALUES ('2', '24', '20170602173057356.png', null, null, null, null, null);
INSERT INTO `tb_image1` VALUES ('3', '19', '20170601095035193.png', null, null, null, null, null);
INSERT INTO `tb_image1` VALUES ('4', null, '2017052616312797.png', null, null, null, null, '1.html');
INSERT INTO `tb_image1` VALUES ('5', null, '1497422580638.jpg', null, null, null, null, '2.html');
INSERT INTO `tb_image1` VALUES ('6', '29', '428_428_1487745005292mp.jpg', '荣耀V9', '最高优惠200元 送保护壳', '2599', '1489666344127.png', null);
INSERT INTO `tb_image1` VALUES ('7', '3', '428_428_1480922774554mp.jpg', 'HUAWEI Mate 9 Pro', '领卷立减200元', '4699', '1489666213376.png', null);
INSERT INTO `tb_image1` VALUES ('8', '19', '428_428_1495174269824mp.JPG', '荣耀畅玩6A', '购新品好礼 标配版放量购', '799', '1489666525239.png', null);
INSERT INTO `tb_image1` VALUES ('9', '4', '1496247658418.png', 'HUAWEI Mate 9', '32G版领卷减200元', '3099', '1489666603242.png', null);
INSERT INTO `tb_image1` VALUES ('10', '31', '1496214523346.jpg', '荣耀8', '最高可优惠800元', '2299', '1489666444275.png', null);
INSERT INTO `tb_image1` VALUES ('11', '7', '1497107600300.jpg', '华为畅享7 Plus', '领卷立减200元', '1699', '1489666297341.png', null);
INSERT INTO `tb_image1` VALUES ('12', '21', '428_428_1491796092449mp.jpg', '荣耀畅玩6X', '最高优惠150元+送耳机', '1299', '1489666444275.png', null);
INSERT INTO `tb_image1` VALUES ('13', '17', '1493178384684.png', 'HUAWEI nova 青春版', '赠送159元配件礼包', '1999', null, null);
INSERT INTO `tb_image1` VALUES ('14', null, '428_428_1496627594147mp.jpg', '荣耀手环', '50米防水心率手环', '229', null, null);
INSERT INTO `tb_image1` VALUES ('15', null, '1496236124208.png', 'HUAWEI WATCH 2', '最高直降100+6期免息', '1588', '1489666603242.png', null);
INSERT INTO `tb_image1` VALUES ('16', null, '1496236247761.png', '华为平板 M3', '最高直降100', '1788', '1489666603242.png', null);
INSERT INTO `tb_image1` VALUES ('17', null, '428_428_1494902274982mp.jpg', '荣耀畅玩平板2 8英寸', '购新机评价得好礼', '799', '1489666418627.png', null);
INSERT INTO `tb_image1` VALUES ('18', null, '1493696851151.png', '华为路由器 A1 畅享版', '优选5G信号 WIFI自动加速', '249', '1489666418627.png', null);
INSERT INTO `tb_image1` VALUES ('19', null, '1489246971535.jpg', '荣耀 NOTE 8', '领卷最高优惠100', '2499', '1489666344127.png', null);
INSERT INTO `tb_image1` VALUES ('20', null, '428_428_1495598460509mp.jpg', '荣耀畅玩手环 A2', '5.23-6.8预约赢好礼', '199', '1489666418627.png', null);
INSERT INTO `tb_image1` VALUES ('21', null, '428_428_1493972111510mp.jpg', '荣耀路由X1 增强版', '新品首发 购机评价抽好礼', '149', '1489666418627.png', null);
INSERT INTO `tb_image1` VALUES ('22', null, '1489247071160.png', '荣耀手表 S1', '显示优惠直降150', '549', '1489666603242.png', null);
INSERT INTO `tb_image1` VALUES ('23', null, '428_428_1479797494814mp.jpg', '华为畅享6', '下单立减200元', '1299', '1489666630821.png', null);
INSERT INTO `tb_image1` VALUES ('24', null, '1496248591985.jpg', null, null, null, null, '3.html');
INSERT INTO `tb_image1` VALUES ('25', '18', '428_428_1477358143069mp.jpg', 'HUAWEI nova', '最高下单立减300元', '1899', null, null);
INSERT INTO `tb_image1` VALUES ('26', '30', '428_428_1481881191127mp.jpg', '荣耀Magic', '领卷立减100元+赠大礼包', '3699', '1489666344127.png', null);
INSERT INTO `tb_image1` VALUES ('27', '2', '1489241671451.png', 'HUAWEI Mate 9 保时捷设计', '限量发售', '8999', '1489666499327.png', null);
INSERT INTO `tb_image1` VALUES ('28', '8', '428_428_1481187791080mp.jpg', '华为畅享6S', '下单立减100元', '1299', '1489666630821.png', null);
INSERT INTO `tb_image1` VALUES ('29', '32', '428_428_1473389696470mp.jpg', '荣耀8 吴亦凡定制版', '原价2999 直降6000', '2399', null, null);
INSERT INTO `tb_image1` VALUES ('30', '23', '1495177385345.png', '荣耀畅玩5C', '芯片级省电', '1099', null, null);
INSERT INTO `tb_image1` VALUES ('31', '12', '1495595549022.png', 'HUAWEI 麦芒5', '下单立减200元', '2399', null, null);
INSERT INTO `tb_image1` VALUES ('32', null, '1496806719360.jpg', null, null, null, null, '4.html');
INSERT INTO `tb_image1` VALUES ('33', '46', '428_428_1495007794253mp.jpg', 'HUAWEI MateBook E', '尊享6期免息', '4988', '1489666418627.png', null);
INSERT INTO `tb_image1` VALUES ('34', '47', '428_428_1495006446190mp.jpg', 'HUAWEI MateBook D', '尊享6期免息', '4988', '1489666418627.png', null);
INSERT INTO `tb_image1` VALUES ('35', '52', '428_428_1466219774390mp.jpg', 'HUAWEI MateBook', '部分赠送扩展坞', '6688', '1489666603242.png', null);
INSERT INTO `tb_image1` VALUES ('36', '38', '1496236540519.png', '华为平板 M3', '最高直降100', '1788', '1489666603242.png', null);
INSERT INTO `tb_image1` VALUES ('37', '37', '1495591249501.jpg', '荣耀平板2', '限时优惠最高直降100', '1199', '1489666344127.png', null);
INSERT INTO `tb_image1` VALUES ('38', '42', '1495591279827.png', '华为平板 M2 8英寸', '哈曼卡顿音效 金属机身', '1288', null, null);
INSERT INTO `tb_image1` VALUES ('39', '45', '1495591293448.png', '荣耀畅玩平板 LTE版', '限时优惠最高直降50', '749', null, null);
INSERT INTO `tb_image1` VALUES ('40', null, '1490342983094.jpg', null, null, null, null, '5.html');
INSERT INTO `tb_image1` VALUES ('41', '53', '428_428_1495598460509mp.jpg', '荣耀畅玩手环 A2', '6.16日10:08开售', '199', '1489666418627.png', null);
INSERT INTO `tb_image1` VALUES ('42', '54', '428_428_1496627594147mp.jpg', '荣耀手环3', '【新品开售】购机评论赢平板', '229', '1489666525239.png', null);
INSERT INTO `tb_image1` VALUES ('43', '55', '1489478432281.jpg', '华为手环 B3', '最高直降50', '949', '1489666603242.png', null);
INSERT INTO `tb_image1` VALUES ('44', '56', '428_428_1469070981917mp.jpg', '荣耀手环zero SS版', '限时优惠直降300', '299', null, null);
INSERT INTO `tb_image1` VALUES ('45', '61', '1486128269974.png', '华为儿童手表', '防水防尘低辐射', '638', '1489666603242.png', null);
INSERT INTO `tb_image1` VALUES ('46', '60', '1488161147740.png', '荣耀手表 S1', '限时优惠直降150', '549', '1489666603242.png', null);
INSERT INTO `tb_image1` VALUES ('47', '58', '1488878194102.png', '荣耀手环zero', '限时优惠直降80', '269', '1489666444275.png', null);
INSERT INTO `tb_image1` VALUES ('48', null, '1496281606527.jpg', null, null, null, null, '5.html');
INSERT INTO `tb_image1` VALUES ('49', '64', '1489246336063.png', '荣耀盒子Pro', '限时优惠直降30', '419', null, null);
INSERT INTO `tb_image1` VALUES ('50', '69', '1496281828441.jpg', '华为路由 WS318 增强版', '高性能双天线 Wi-Fi自动加速', '129', '1497575938261.png', null);
INSERT INTO `tb_image1` VALUES ('51', '70', '428_428_1493972111510mp.jpg', '荣耀路由X1 增强版', '限时路由直降20', '129', '1497575938261.png', null);
INSERT INTO `tb_image1` VALUES ('52', '77', '1496237039163.png', '华为路由 A1', '最高直降40', '359', '1497576073762.png', null);
INSERT INTO `tb_image1` VALUES ('53', '75', '1482233802925.png', '荣耀路由Pro', '限时优惠直降14', '314', null, null);
INSERT INTO `tb_image1` VALUES ('54', '71', '1493696328524.png', '华为路由器A1 畅享版', '优选5G信号 Wifi自动加速', '249', '1497575938261.png', null);
INSERT INTO `tb_image1` VALUES ('55', '65', '1489246571984.png', '荣耀盒子voice', '限时优惠直降60', '198', '1497575964613.png', null);
INSERT INTO `tb_image1` VALUES ('56', '73', '1489248911799.png', '华为路由 A1 Lite', '安全好用的450M无线路由器', '149', '1497576073762.png', null);
INSERT INTO `tb_image1` VALUES ('57', '72', '1489246448557.png', '荣耀路由 尊享版', '限时优惠直降40', '188', null, null);
INSERT INTO `tb_image1` VALUES ('58', '67', '1484099756229.png', '华为盒子', '4K高清智能网络电视机顶盒', '419', '1497576073762.png', null);
INSERT INTO `tb_image1` VALUES ('59', '82', '1482233776849.png', '荣耀WiFi穿墙宝', '插座变热点 信号变满格', '199', null, null);
INSERT INTO `tb_image1` VALUES ('60', '80', '1484100325589.jpg', '华为WS832', '直降20', '229', '1497575918300.png', null);
INSERT INTO `tb_image1` VALUES ('61', '66', '1482233824780.png', '荣耀盒子', '限时优惠直降99', '199', null, null);
INSERT INTO `tb_image1` VALUES ('62', '81', '1489245789451.jpg', '华为WS550', '双核450M路由器', '169', null, null);
INSERT INTO `tb_image1` VALUES ('63', '68', '428_428_1493085201341mp.jpg', '荣耀路由X1', '限时优惠直降10', '89', '1497576023361.png', null);
INSERT INTO `tb_image1` VALUES ('64', '79', '1489245934237.jpg', '华为 WS318', '300M无线路由器', '89', null, null);
INSERT INTO `tb_image1` VALUES ('65', null, '1497581462691.jpg', null, null, null, null, '6.html');
INSERT INTO `tb_image1` VALUES ('66', null, '428_428_1497340941198mp.jpg', '荣耀体脂秤', '健康，从减肥开始', '赞无报价', '1497575938261.png', null);
INSERT INTO `tb_image1` VALUES ('67', null, '428_428_1497325586428mp.jpg', '华为运动心率蓝牙耳机', '自在运动 随心率动', '699', '1497576023361.png', null);
INSERT INTO `tb_image1` VALUES ('68', '103', '428_428_1494205224585mp.jpg', '荣耀运动蓝牙耳机', '6.1-6.20日限时特惠', '269', '1497575918300.png', null);
INSERT INTO `tb_image1` VALUES ('69', '94', '428_428_1484107261446mp.jpg', '华为10000mAh 移动电源', '18W双向快充', '179.10', null, null);
INSERT INTO `tb_image1` VALUES ('70', '132', '428_428_1494324027170mp.jpg', '荣耀车载充电器 快充版', '6.1-6.20送二合一数据线', '149', null, null);
INSERT INTO `tb_image1` VALUES ('71', '95', '1489246861136.jpg', '荣耀10000mAh 电源', '6.1-6.20日限时特惠', '139', null, null);
INSERT INTO `tb_image1` VALUES ('72', '136', '1489245920315.jpg', '华为车载快速充电器', '5A快充 4重保护', '179.10', null, null);
INSERT INTO `tb_image1` VALUES ('73', '110', '1491472457294.jpg', '华为运动蓝牙耳机', '音乐 无束缚', '449.10', null, null);
INSERT INTO `tb_image1` VALUES ('74', '160', '428_428_1492166928020mp.jpg', '华为无线三脚架自拍杆', '开启自拍新时代', '149', null, null);
INSERT INTO `tb_image1` VALUES ('75', '137', '428_428_1484106183237mp.jpg', '华为4.5V 5A快速充电器', '5A快充 智能适配', '87.20', null, null);
INSERT INTO `tb_image1` VALUES ('76', '93', '428_428_1490921883474mp.jpg', '华为2万毫安移动电源', '大容量 更持久', '299', '1497576023361.png', null);
INSERT INTO `tb_image1` VALUES ('77', '98', '1489245365965.jpg', '荣耀引擎耳机2代', '6.1-6.20直降40元', '89', null, null);
INSERT INTO `tb_image1` VALUES ('78', '161', '428_428_1495018208785mp.jpg', '荣耀三脚架自拍杆 无线版', '6.1-6.20直降20元', '99', null, null);
INSERT INTO `tb_image1` VALUES ('79', '187', '1489247004575.jpg', '荣耀排插快充版', '6.1-6.20直降30元', '99', null, null);
INSERT INTO `tb_image1` VALUES ('80', '100', '1489246173136.jpg', '荣耀引擎耳机plus', '6.10-6.20最高直降30元', '69', null, null);
INSERT INTO `tb_image1` VALUES ('81', '142', '1489245031509.jpg', '华为9V2A充电器', '高速快充 智能兼容', '55.20', null, null);
INSERT INTO `tb_image1` VALUES ('82', null, '1497315930734.jpg', null, null, null, null, '7.html');
INSERT INTO `tb_image1` VALUES ('83', '195', '1497316136393.jpg', '坚果G3 家庭高清投影仪', '显示直降200元', '3199', '1497576023361.png', null);
INSERT INTO `tb_image1` VALUES ('84', '157', '1496970878375.jpg', 'ROCK_M 车载手机支架', '限时直降10元', '78', '1497576023361.png', null);
INSERT INTO `tb_image1` VALUES ('85', '123', '1496971198837.jpg', '缤特力 E500 商务蓝牙耳机', '限时直降101元', '398', null, null);
INSERT INTO `tb_image1` VALUES ('86', '189', '1497317453460.jpg', 'BroadLink WiFile智能开关插座', '限时直降15元', '44', null, null);
INSERT INTO `tb_image1` VALUES ('87', '180', '1497319149112.jpg', '魔石 便携式蓝牙音箱S4', '限时直降40元', '259', null, null);
INSERT INTO `tb_image1` VALUES ('88', '133', '1497412667568.jpg', '柠萌4U+4X充电插座', '限时直降4元', '75', null, null);
INSERT INTO `tb_image1` VALUES ('89', '105', '1497319232599.jpg', '大康 运动型蓝牙耳机', '限时直降29元', '99', null, null);
INSERT INTO `tb_image1` VALUES ('90', '205', '1496973335112.jpg', 'ROCK 运动腰带', '灰色限时直降3元', '46', '1497576023361.png', null);
INSERT INTO `tb_image1` VALUES ('91', '183', '1494215245167.jpg', '闪迪 高速TF 存储卡', '80MB/秒读取速度', '90', null, null);
INSERT INTO `tb_image1` VALUES ('92', '207', '1495786838844.jpg', '爱奇艺VIP黄基金会员月卡', '单品立享75折', '14.85', null, null);
INSERT INTO `tb_image1` VALUES ('93', '192', '1497318687464.jpg', '锐力 商务WIFI云端摄像笔', '限时直降40元', '259', null, null);
INSERT INTO `tb_image1` VALUES ('94', '201', '1494820886438.jpg', '耐翔 车载负离子空气净化器', '限时直降31元', '68', null, null);
INSERT INTO `tb_image1` VALUES ('95', '186', '1497318204759.jpg', '耐翔 手机扩容U盘', '限时直降10元', '59', null, null);
INSERT INTO `tb_image1` VALUES ('96', '175', '1497412624694.jpg', '耐翔 智能情感灯音箱', '限时最高直降130元', '139', null, null);
INSERT INTO `tb_image1` VALUES ('97', '191', '1496973585391.jpg', '锐力 高清运动摄像机', '限时直降60元', '229', null, null);
INSERT INTO `tb_image1` VALUES ('98', '188', '1497318554551.jpg', 'BroadLink WiFi智能排插', '限时直降10元', '79', null, null);

-- ----------------------------
-- Table structure for `tb_phone`
-- ----------------------------
DROP TABLE IF EXISTS `tb_phone`;
CREATE TABLE `tb_phone` (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL,
  `goods_image` varchar(45) NOT NULL,
  PRIMARY KEY (`image_id`),
  KEY `FK_9_idx` (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_phone
-- ----------------------------
INSERT INTO `tb_phone` VALUES ('1', '1', '428_428_1490083411321mp.jpg');
INSERT INTO `tb_phone` VALUES ('2', '2', '428_428_1481251216636mp.jpg');
INSERT INTO `tb_phone` VALUES ('3', '3', '428_428_1480922774554mp.jpg');
INSERT INTO `tb_phone` VALUES ('4', '4', '428_428_1494299333556mp.jpg');
INSERT INTO `tb_phone` VALUES ('5', '7', '428_428_1492570593616mp.jpg');
INSERT INTO `tb_phone` VALUES ('6', '8', '428_428_1481187791080mp.jpg');
INSERT INTO `tb_phone` VALUES ('7', '9', '428_428_1479797494814mp.jpg');
INSERT INTO `tb_phone` VALUES ('8', '10', '428_428_1477529981662mp.jpg');
INSERT INTO `tb_phone` VALUES ('9', '11', '428_428_1467357034322mp.jpg');
INSERT INTO `tb_phone` VALUES ('10', '12', '428_428_1467859642209mp.jpg');
INSERT INTO `tb_phone` VALUES ('11', '13', '428_428_1495679157972mp.jpg');
INSERT INTO `tb_phone` VALUES ('12', '14', '428_428_1495436573360mp.jpg');
INSERT INTO `tb_phone` VALUES ('13', '15', '428_428_1495678886037mp.jpg');
INSERT INTO `tb_phone` VALUES ('14', '16', '428_428_1495178308840mp.jpg');
INSERT INTO `tb_phone` VALUES ('15', '17', '428_428_1493110604858mp.jpg');
INSERT INTO `tb_phone` VALUES ('16', '18', '428_428_1477358143069mp.jpg');
INSERT INTO `tb_phone` VALUES ('17', '19', '428_428_1495174269824mp.JPG');
INSERT INTO `tb_phone` VALUES ('18', '20', '428_428_1487122784694mp.jpg');
INSERT INTO `tb_phone` VALUES ('19', '21', '428_428_1483411492950mp.jpg');
INSERT INTO `tb_phone` VALUES ('20', '22', '428_428_1470382903077mp.jpg');
INSERT INTO `tb_phone` VALUES ('21', '23', '428_428_1481595835349mp.jpg');
INSERT INTO `tb_phone` VALUES ('22', '24', '428_428_1488120174256mp.jpg');
INSERT INTO `tb_phone` VALUES ('23', '25', '428_428_1488870352075mp.jpg');
INSERT INTO `tb_phone` VALUES ('24', '26', '428_428_1467192625698mp.jpg');
INSERT INTO `tb_phone` VALUES ('25', '27', '428_428_1467252520756mp.jpg');
INSERT INTO `tb_phone` VALUES ('26', '28', '428_428_1494831986621mp.jpg');
INSERT INTO `tb_phone` VALUES ('27', '29', '428_428_1487745005292mp.jpg');
INSERT INTO `tb_phone` VALUES ('28', '30', '428_428_1481881191127mp.jpg');
INSERT INTO `tb_phone` VALUES ('29', '31', '428_428_1495074832855mp.jpg');
INSERT INTO `tb_phone` VALUES ('30', '32', '428_428_1473389696470mp.jpg');
INSERT INTO `tb_phone` VALUES ('31', '33', '428_428_1467187177436mp.jpg');
INSERT INTO `tb_phone` VALUES ('32', '34', '428_428_1469697001414mp.jpg');

-- ----------------------------
-- Table structure for `tb_user`
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username_UNIQUE` (`user_name`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', 'dailin@qq.com', '19970325', 'dailin@qq.com');
INSERT INTO `tb_user` VALUES ('6', 'dailinworkfor@163.com', 'dailin19970325', 'dailinworkfor@163.com');
