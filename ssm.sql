/*
Navicat MySQL Data Transfer

Source Server         : local1
Source Server Version : 80013
Source Host           : localhost:3306
Source Database       : ssm

Target Server Type    : MYSQL
Target Server Version : 80013
File Encoding         : 65001

Date: 2018-12-30 09:36:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bankcard_info
-- ----------------------------
DROP TABLE IF EXISTS `bankcard_info`;
CREATE TABLE `bankcard_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardid` varchar(255) NOT NULL,
  `createdate` date NOT NULL,
  `balance` varchar(255) NOT NULL,
  `clientid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `clientid` (`clientid`),
  CONSTRAINT `clientid` FOREIGN KEY (`clientid`) REFERENCES `client_info` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bankcard_info
-- ----------------------------
INSERT INTO `bankcard_info` VALUES ('1', '888888888', '2018-12-13', '9999999', '1');
INSERT INTO `bankcard_info` VALUES ('2', '777777777', '2018-12-12', '8888888', '2');

-- ----------------------------
-- Table structure for client_info
-- ----------------------------
DROP TABLE IF EXISTS `client_info`;
CREATE TABLE `client_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `dateofbrith` date NOT NULL,
  `IDnumber` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of client_info
-- ----------------------------
INSERT INTO `client_info` VALUES ('1', '张泽鑫', '男', '2018-12-13', '340123411', '13033097950');
INSERT INTO `client_info` VALUES ('2', '李子健', '女', '2018-12-14', '340213999', '13033907949');
