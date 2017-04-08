/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50016
Source Host           : localhost:3308
Source Database       : schoolrollmanager

Target Server Type    : MYSQL
Target Server Version : 50016
File Encoding         : 65001

Date: 2017-04-08 11:55:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL auto_increment,
  `sno` varchar(20) default NULL,
  `name` varchar(20) default NULL,
  `sex` varchar(5) default NULL,
  `address` varchar(50) default NULL,
  `born` date default NULL,
  `postcode` varchar(50) default NULL,
  `nation` varchar(20) default NULL,
  `tel` varchar(50) default NULL,
  `major` varchar(50) default NULL,
  `admissionTime` date default NULL,
  `xz` int(11) default NULL,
  `graduateschool` varchar(50) default NULL,
  `idcard` varchar(50) default NULL,
  `politicaloutlook` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('75', '041440601', '冬春多', '男', '吉林', '1996-02-02', '130000', '汉族', '15754322834', '计算机', '2014-08-30', '3', '吉林', '450802199502212013', '团员');
INSERT INTO `student` VALUES ('76', '041440656', '邓凯文', '男', '长春', '2016-10-05', '130000', '汉', '15454548585', '网络', '2016-10-08', '3', 'asdasdas', '522555555544445988', '团员');
INSERT INTO `student` VALUES ('77', '041440654', '邓凯文', '男', '长春', '2016-10-06', '130000', '汉', '15454548585', '网络', '2016-10-21', '5', 'asdasdas', '522555555544445988', '团员');
INSERT INTO `student` VALUES ('78', '041440657', '邓凯文~~~~~~', '男', '长春', '2016-10-08', '130000', '汉', '15454548585', '网络', '2016-10-22', '3', 'asdasdas', '522555555544445988', '团员');
INSERT INTO `student` VALUES ('79', '041440689', '李奎', '男', '长春', '2016-10-05', '130000', '汉', '15454548585', '网络', '2016-10-13', '3', 'asdasdas', '522555555544445988', '团员');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(50) default NULL,
  `password` varchar(50) default NULL,
  `position` varchar(50) default NULL,
  `name` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', '管理员', '老王');
INSERT INTO `user` VALUES ('2', 'teacher1', '12345678', '教师', '小李');
INSERT INTO `user` VALUES ('3', 'laozhang', '123456', '教师', '老张');
INSERT INTO `user` VALUES ('4', 'likui', '123456', '教师', '李奎');
INSERT INTO `user` VALUES ('7', 'asdfgh', '123456', '教师', 'likui');
INSERT INTO `user` VALUES ('8', 'zxcvbn', '123456', '教师', 'asd');
INSERT INTO `user` VALUES ('9', 'zxcqwe', '123456', '教师', 'likui');
