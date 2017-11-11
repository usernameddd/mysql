/*
Navicat MySQL Data Transfer

Source Server         : my computer
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : mianshi

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-11-11 12:46:14
*/

CREATE DATABASE `mianshi`;

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `content`
-- ----------------------------
DROP TABLE IF EXISTS `content`;
CREATE TABLE `content` (
  `content_id` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`content_id`),
  KEY `fk_1111` (`id`),
  CONSTRAINT `fk_1111` FOREIGN KEY (`id`) REFERENCES `wenti` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of content
-- ----------------------------
INSERT INTO `content` VALUES ('1', '1', '递归，就是在运行的过程中调用自己。<br/>条件：1.子问题须与原始问题为同样的事，且更为简单；2.不能无限制地调用本身，必须有个出口，化简为非递归状况处理。递归算法一般用于解决三类问题：（1）数据的定义是按递归定义的。（2）问题解决按递归算法实现。（3）数据的结构形式是按递归定义的。');

-- ----------------------------
-- Table structure for `wenti`
-- ----------------------------
DROP TABLE IF EXISTS `wenti`;
CREATE TABLE `wenti` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wenti
-- ----------------------------
INSERT INTO `wenti` VALUES ('1', '什么是递归？在什么条件下适合使用递归？');
INSERT INTO `wenti` VALUES ('2', '请说明css中block和inline的区别');
INSERT INTO `wenti` VALUES ('3', '请说明css中position有哪几种属性，分别是什么意思？');
INSERT INTO `wenti` VALUES ('4', '说说你对数据库索引的认识');
INSERT INTO `wenti` VALUES ('5', '查询优化的一般准则有哪些？');
INSERT INTO `wenti` VALUES ('6', '什么叫SQL注入，如何防止？');
