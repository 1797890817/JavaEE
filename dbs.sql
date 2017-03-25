-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.7.15-1 - (Debian)
-- 服务器操作系统:                      Linux
-- HeidiSQL 版本:                  9.4.0.5130
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- 导出 SpringmvcSpringMybatis 的数据库结构
DROP DATABASE IF EXISTS `SpringmvcSpringMybatis`;
CREATE DATABASE IF NOT EXISTS `SpringmvcSpringMybatis` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `SpringmvcSpringMybatis`;

-- 导出  表 SpringmvcSpringMybatis.smi_shop_info 结构
DROP TABLE IF EXISTS `smi_shop_info`;
CREATE TABLE IF NOT EXISTS `smi_shop_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_no` varchar(50) DEFAULT NULL,
  `shop_name` varchar(50) DEFAULT NULL,
  `shop_type` varchar(50) DEFAULT NULL,
  `shop_password` varchar(50) DEFAULT NULL,
  `note` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  SpringmvcSpringMybatis.smi_shop_info 的数据：~1 rows (大约)
DELETE FROM `smi_shop_info`;
/*!40000 ALTER TABLE `smi_shop_info` DISABLE KEYS */;
INSERT INTO `smi_shop_info` (`id`, `shop_no`, `shop_name`, `shop_type`, `shop_password`, `note`) VALUES
	(1, '111111', 'shop-test', 'normal', '123456', 'test-data');
/*!40000 ALTER TABLE `smi_shop_info` ENABLE KEYS */;


-- 导出 SpringmvcSpringSpringDataJpa 的数据库结构
DROP DATABASE IF EXISTS `SpringmvcSpringSpringDataJpa`;
CREATE DATABASE IF NOT EXISTS `SpringmvcSpringSpringDataJpa` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `SpringmvcSpringSpringDataJpa`;

-- 导出  表 SpringmvcSpringSpringDataJpa.mxy_user 结构
DROP TABLE IF EXISTS `mxy_user`;
CREATE TABLE IF NOT EXISTS `mxy_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- 正在导出表  SpringmvcSpringSpringDataJpa.mxy_user 的数据：~2 rows (大约)
DELETE FROM `mxy_user`;
/*!40000 ALTER TABLE `mxy_user` DISABLE KEYS */;
INSERT INTO `mxy_user` (`id`, `password`, `username`) VALUES
	(1, '123654', 'zhangsan'),
	(2, '987654', 'lisi');
/*!40000 ALTER TABLE `mxy_user` ENABLE KEYS */;

-- 导出  表 SpringmvcSpringSpringDataJpa.user 结构
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  SpringmvcSpringSpringDataJpa.user 的数据：~1 rows (大约)
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`user_id`, `account`) VALUES
	(1, 'zhangsan');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;


-- 导出 cms 的数据库结构
DROP DATABASE IF EXISTS `cms`;
CREATE DATABASE IF NOT EXISTS `cms` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `cms`;

-- 导出  表 cms.USERS 结构
DROP TABLE IF EXISTS `USERS`;
CREATE TABLE IF NOT EXISTS `USERS` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) DEFAULT NULL,
  `PASS` varchar(255) DEFAULT NULL,
  `AGE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.USERS 的数据：~9 rows (大约)
DELETE FROM `USERS`;
/*!40000 ALTER TABLE `USERS` DISABLE KEYS */;
INSERT INTO `USERS` (`ID`, `NAME`, `PASS`, `AGE`) VALUES
	(1, 'zhangsan', '123456', 25),
	(2, 'lisi', '654321', 34),
	(3, 'zhangwu', '111111', 45),
	(4, '赵四', 'zzzzz', 44),
	(5, '陆奇', '000000', 31),
	(6, 'HJKL', '2365', 25),
	(7, 'BNM', '1225', 26),
	(8, 'BNM', '1225', 26),
	(9, 'aaa', '123', 20);
/*!40000 ALTER TABLE `USERS` ENABLE KEYS */;


-- 导出 db_affairmanage 的数据库结构
DROP DATABASE IF EXISTS `db_affairmanage`;
CREATE DATABASE IF NOT EXISTS `db_affairmanage` /*!40100 DEFAULT CHARACTER SET gb2312 */;
USE `db_affairmanage`;

-- 导出  表 db_affairmanage.tb_criticism 结构
DROP TABLE IF EXISTS `tb_criticism`;
CREATE TABLE IF NOT EXISTS `tb_criticism` (
  `criticismID` int(11) NOT NULL AUTO_INCREMENT,
  `criticismContent` text,
  `employeeID` int(11) DEFAULT NULL,
  `criticismTime` datetime DEFAULT NULL,
  `messageID` int(11) DEFAULT NULL,
  PRIMARY KEY (`criticismID`),
  KEY `employeeID` (`employeeID`),
  KEY `messageID` (`messageID`),
  CONSTRAINT `tb_criticism_ibfk_1` FOREIGN KEY (`employeeID`) REFERENCES `tb_employee` (`employeeID`),
  CONSTRAINT `tb_criticism_ibfk_2` FOREIGN KEY (`messageID`) REFERENCES `tb_message` (`messageID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=gb2312 COMMENT='消息批复表';

-- 正在导出表  db_affairmanage.tb_criticism 的数据：~3 rows (大约)
DELETE FROM `tb_criticism`;
/*!40000 ALTER TABLE `tb_criticism` DISABLE KEYS */;
INSERT INTO `tb_criticism` (`criticismID`, `criticismContent`, `employeeID`, `criticismTime`, `messageID`) VALUES
	(3, '<p>不错，以后大家好好干活！！</p>', 3052, '2009-08-25 15:08:16', 14),
	(4, '<p>测试批复</p>', 3052, '2010-01-26 20:52:46', 14),
	(5, '<p>测试批复</p>', 3052, '2010-01-26 20:53:06', 16);
/*!40000 ALTER TABLE `tb_criticism` ENABLE KEYS */;

-- 导出  表 db_affairmanage.tb_employee 结构
DROP TABLE IF EXISTS `tb_employee`;
CREATE TABLE IF NOT EXISTS `tb_employee` (
  `employeeID` int(11) NOT NULL DEFAULT '0',
  `employeeName` varchar(20) DEFAULT NULL,
  `employeeSex` bit(1) DEFAULT NULL,
  `employeeBirth` date DEFAULT NULL,
  `employeePhone` varchar(20) DEFAULT NULL,
  `employeePlace` varchar(50) DEFAULT NULL,
  `joinTime` date DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `isLead` bit(1) DEFAULT NULL,
  PRIMARY KEY (`employeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312 COMMENT='员工信息表';

-- 正在导出表  db_affairmanage.tb_employee 的数据：~1 rows (大约)
DELETE FROM `tb_employee`;
/*!40000 ALTER TABLE `tb_employee` DISABLE KEYS */;
INSERT INTO `tb_employee` (`employeeID`, `employeeName`, `employeeSex`, `employeeBirth`, `employeePhone`, `employeePlace`, `joinTime`, `password`, `isLead`) VALUES
	(3052, '李俊', b'1', '1978-01-08', '1378675****', '北京市', '2008-12-30', '123456', b'1');
/*!40000 ALTER TABLE `tb_employee` ENABLE KEYS */;

-- 导出  表 db_affairmanage.tb_message 结构
DROP TABLE IF EXISTS `tb_message`;
CREATE TABLE IF NOT EXISTS `tb_message` (
  `messageID` int(11) NOT NULL AUTO_INCREMENT,
  `messageTitle` varchar(50) DEFAULT NULL,
  `messageContent` text,
  `employeeID` int(11) DEFAULT NULL,
  `publishTime` datetime DEFAULT NULL,
  PRIMARY KEY (`messageID`),
  KEY `employeeID` (`employeeID`),
  CONSTRAINT `tb_message_ibfk_1` FOREIGN KEY (`employeeID`) REFERENCES `tb_employee` (`employeeID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=gb2312 COMMENT='消息表';

-- 正在导出表  db_affairmanage.tb_message 的数据：~6 rows (大约)
DELETE FROM `tb_message`;
/*!40000 ALTER TABLE `tb_message` DISABLE KEYS */;
INSERT INTO `tb_message` (`messageID`, `messageTitle`, `messageContent`, `employeeID`, `publishTime`) VALUES
	(14, '网络维护公告', '<p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-indent: 48pt; line-height: 42pt; mso-char-indent-count: 2.0; mso-line-height-rule: exactly"><span style="font-size: 24pt; font-family: 宋体; mso-ascii-font-family: \'Times New Roman\'; mso-hansi-font-family: \'Times New Roman\'">为保证网络上网，网络信息中心特安排了网络维护人员值班。各用户如有网络故障，请按以下方式联系。</span><span lang="EN-US" style="font-size: 24pt"><o:p></o:p></span></p>\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-indent: 24pt; line-height: 42pt; mso-char-indent-count: 1.0; mso-line-height-rule: exactly"><span style="font-size: 24pt; font-family: 宋体; mso-ascii-font-family: \'Times New Roman\'; mso-hansi-font-family: \'Times New Roman\'">　值班电话：</span><span lang="EN-US" style="font-size: 24pt">XXXXXX</span></p>\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-indent: 24pt; line-height: 42pt; mso-char-indent-count: 1.0; mso-line-height-rule: exactly"><span style="font-size: 24pt; font-family: 宋体; mso-ascii-font-family: \'Times New Roman\'; mso-hansi-font-family: \'Times New Roman\'">&nbsp;值班人：周先生</span></p>', 3052, '2009-08-25 14:18:59'),
	(16, '开会通知', '<p><span style="color: #3366ff"><span style="background-color: #ffffff"><span><span style="font-size: 20px">请开发部的所有人员于8月30日的下午2点到三楼会议室，会议重要，请勿缺席。</span></span></span></span></p>', 3052, '2009-08-25 14:27:54'),
	(17, '研发部会议通知', '<p><span style="color: #ff0000"><span style="font-size: 20px">请研发部的所有人员于8月30日的下午2点到三楼会议室，会议重要，请勿缺席！！</span></span></p>', 3052, '2009-08-25 14:33:51'),
	(18, '关于国庆放假的通知', '<p><span style="font-size: 20px">按国家规定国庆放假七天，8月8日正常上班。</span></p>', 3052, '2009-08-25 14:35:35'),
	(19, '请假一天，望领导能批准', '<p>由于家里有事情，急需处理，现请假一天，忘领导能批准。</p>', 3052, '2009-08-25 14:37:02'),
	(20, '测试一下发布！', '<p><img alt="" src="http://localhost:8080/JavaPrj_1/fckeditor/editor/images/smiley/qq/004.gif" />测试一下！</p>', 3052, '2010-01-26 20:53:57');
/*!40000 ALTER TABLE `tb_message` ENABLE KEYS */;

-- 导出  表 db_affairmanage.tb_reply 结构
DROP TABLE IF EXISTS `tb_reply`;
CREATE TABLE IF NOT EXISTS `tb_reply` (
  `replyID` int(11) NOT NULL AUTO_INCREMENT,
  `replyContent` text,
  `employeeID` int(11) DEFAULT NULL,
  `replyTime` datetime DEFAULT NULL,
  `messageID` int(11) DEFAULT NULL,
  PRIMARY KEY (`replyID`),
  KEY `employeeID` (`employeeID`),
  KEY `messageID` (`messageID`),
  CONSTRAINT `tb_reply_ibfk_1` FOREIGN KEY (`employeeID`) REFERENCES `tb_employee` (`employeeID`),
  CONSTRAINT `tb_reply_ibfk_2` FOREIGN KEY (`messageID`) REFERENCES `tb_message` (`messageID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=gb2312 COMMENT='消息回复表';

-- 正在导出表  db_affairmanage.tb_reply 的数据：~4 rows (大约)
DELETE FROM `tb_reply`;
/*!40000 ALTER TABLE `tb_reply` DISABLE KEYS */;
INSERT INTO `tb_reply` (`replyID`, `replyContent`, `employeeID`, `replyTime`, `messageID`) VALUES
	(9, '<p>太好了，希望以后不要再无故掉线了！！！</p>', 3052, '2009-08-25 15:03:23', 14),
	(10, '<p>是哦，总算是能够安心上网了。</p>', 3052, '2009-08-25 15:03:49', 14),
	(11, '<p>测试回复</p>', 3052, '2010-01-26 20:52:26', 14),
	(12, '<p>?????</p>', 3052, '2016-10-29 08:13:06', 20);
/*!40000 ALTER TABLE `tb_reply` ENABLE KEYS */;


-- 导出 db_bbs 的数据库结构
DROP DATABASE IF EXISTS `db_bbs`;
CREATE DATABASE IF NOT EXISTS `db_bbs` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_bbs`;

-- 导出  表 db_bbs.replyinfo 结构
DROP TABLE IF EXISTS `replyinfo`;
CREATE TABLE IF NOT EXISTS `replyinfo` (
  `rId` int(11) NOT NULL AUTO_INCREMENT,
  `rTId` int(11) NOT NULL DEFAULT '0',
  `rSId` int(11) NOT NULL DEFAULT '0',
  `rUId` int(11) NOT NULL DEFAULT '0',
  `rTopic` varchar(20) DEFAULT '',
  `rContents` text NOT NULL,
  `rPublishTime` datetime NOT NULL,
  `rModifyTime` datetime DEFAULT NULL,
  PRIMARY KEY (`rId`),
  KEY `FK_rUId` (`rUId`),
  KEY `FK_rSId` (`rSId`),
  KEY `FK_rTId` (`rTId`),
  CONSTRAINT `FK_rSId` FOREIGN KEY (`rSId`) REFERENCES `sectioninfo` (`sId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_rTId` FOREIGN KEY (`rTId`) REFERENCES `topicinfo` (`tId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_rUId` FOREIGN KEY (`rUId`) REFERENCES `userinfo` (`uId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;

-- 正在导出表  db_bbs.replyinfo 的数据：~2 rows (大约)
DELETE FROM `replyinfo`;
/*!40000 ALTER TABLE `replyinfo` DISABLE KEYS */;
INSERT INTO `replyinfo` (`rId`, `rTId`, `rSId`, `rUId`, `rTopic`, `rContents`, `rPublishTime`, `rModifyTime`) VALUES
	(77, 69, 71, 7, '写得不错，赞一个！', '写得不错，赞一个！', '2009-12-01 09:27:30', NULL),
	(78, 69, 71, 7, '写得不错，赞一个！', '写得不错，赞一个！', '2009-12-01 09:35:50', NULL);
/*!40000 ALTER TABLE `replyinfo` ENABLE KEYS */;

-- 导出  表 db_bbs.sectioninfo 结构
DROP TABLE IF EXISTS `sectioninfo`;
CREATE TABLE IF NOT EXISTS `sectioninfo` (
  `sId` int(11) NOT NULL AUTO_INCREMENT,
  `sName` varchar(20) NOT NULL DEFAULT '',
  `sTopicCount` int(11) NOT NULL DEFAULT '0',
  `sMasterId` int(11) DEFAULT '0',
  `sParentId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`sId`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

-- 正在导出表  db_bbs.sectioninfo 的数据：~10 rows (大约)
DELETE FROM `sectioninfo`;
/*!40000 ALTER TABLE `sectioninfo` DISABLE KEYS */;
INSERT INTO `sectioninfo` (`sId`, `sName`, `sTopicCount`, `sMasterId`, `sParentId`) VALUES
	(70, '职场生涯', 0, 1, 0),
	(71, '轻松职场', 4, 1, 77),
	(73, '职场文化', 1, 1, 70),
	(74, '提升充电', 1, 1, 70),
	(75, '财富人生', 1, 1, 70),
	(77, '商务综合', 0, 1, 0),
	(78, '诚信社区', 1, 1, 77),
	(79, '寻求合作', 1, 1, 77),
	(80, '商海沉浮', 1, 1, 77),
	(81, '电子商务', 1, 1, 77);
/*!40000 ALTER TABLE `sectioninfo` ENABLE KEYS */;

-- 导出  表 db_bbs.topicinfo 结构
DROP TABLE IF EXISTS `topicinfo`;
CREATE TABLE IF NOT EXISTS `topicinfo` (
  `tId` int(11) NOT NULL AUTO_INCREMENT,
  `tSId` int(11) NOT NULL DEFAULT '0',
  `tUId` int(11) NOT NULL DEFAULT '0',
  `tTopic` varchar(20) NOT NULL DEFAULT '',
  `tContents` text NOT NULL,
  `tReplyCount` int(11) NOT NULL DEFAULT '0',
  `tClickCount` int(11) NOT NULL DEFAULT '0',
  `tPublishTime` datetime NOT NULL,
  `tModifyTime` datetime DEFAULT NULL,
  PRIMARY KEY (`tId`),
  KEY `FK_tUId` (`tUId`),
  KEY `FK_tSId` (`tSId`),
  CONSTRAINT `FK_tSId` FOREIGN KEY (`tSId`) REFERENCES `sectioninfo` (`sId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_tUId` FOREIGN KEY (`tUId`) REFERENCES `userinfo` (`uId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

-- 正在导出表  db_bbs.topicinfo 的数据：~9 rows (大约)
DELETE FROM `topicinfo`;
/*!40000 ALTER TABLE `topicinfo` DISABLE KEYS */;
INSERT INTO `topicinfo` (`tId`, `tSId`, `tUId`, `tTopic`, `tContents`, `tReplyCount`, `tClickCount`, `tPublishTime`, `tModifyTime`) VALUES
	(55, 73, 1, 'Test', 'Test', 0, 0, '2009-11-30 15:59:44', NULL),
	(56, 74, 1, 'Test', 'Test', 0, 0, '2009-11-30 15:59:57', NULL),
	(57, 75, 1, 'Test', 'Test', 0, 0, '2009-11-30 16:00:05', NULL),
	(59, 78, 1, 'Test', 'Test', 0, 0, '2009-11-30 16:00:19', NULL),
	(60, 79, 1, 'Test', 'Test', 0, 0, '2009-11-30 16:00:24', NULL),
	(61, 80, 1, 'Test', 'Test', 0, 0, '2009-11-30 16:00:37', NULL),
	(62, 81, 1, 'Test', 'Test', 0, 0, '2009-11-30 16:00:43', NULL),
	(68, 71, 1, '很高兴，能跟大家交流！！', '很高兴，能跟大家交流！！', 0, 0, '2009-11-30 17:01:18', NULL),
	(69, 71, 1, '如何为员工创造发展空间', '当我们是一名员工的时候，我们渴望从工作中获得知识，渴望获得企业的认可。我们除了每月领取自己的工资，最希望得到的，是职业生涯发展的空间和动力。<br><br>　　1.新员工入职培训。<br><br>　　新员工入职培训是非常重要的环节，尤其是对于应届毕业的学生。学生从学校走入社会第一次接触“公司”，什么是公司。走出职业生涯的第一步，甚至还不知道什么是职业生涯。而新员工入职培训，则应该为他们讲解公司的价值观、文化、理念，告诉他们职业生涯是什么样的。<br><br>　　2.深度参与项目的机会。<br><br>　　很多时候新员工的潜能是很大的，但是要看你能给他多大的施展空间。如果不给他们足够的发展空间，大家都还没有机会深度介入到项目当中，又谈何来的成长与发展?因此，不要以“还不行”，“没经验”这样理由拒绝他们对项目中“高难度”工作的好奇心，打开一扇门，你会发现大家其实都能做得很好!<br><br>　　3.专业技能的培训。<br><br>　　在新员工入职后一年左右的时间，我们应该已经能够清楚地看到每一个人的优势及短板，做这大限度发挥优势的同时，也不要忘记为他们提供专业技能提升的机会——培训。市场上很多培训并不昂贵，4000~5000元的培训可能还不及他们一个月的工资，但是给他们一周的时间去学习，将使他们有机会迈上新的台阶。<br><br>　　4.自由发展的空间。<br><br>　　很多企业都讲以人为本，其实以人为本最简单的一个体现就是能够尊重员工的个人发展意愿，这种意愿包括职业方向、技术深度、广度等等。很多时候新员工在工作中会遇到不懂得东西，他们会自己去查，自己去学，他们有自己的思维，也会产生自己的兴趣。企业不应该是扮演索取员工剩余价值的机器，而是应该作为一个社会责任的承担者，引导他们、推动他们的职业生涯不断发展。<br>', 2, 0, '2009-11-30 17:03:53', NULL);
/*!40000 ALTER TABLE `topicinfo` ENABLE KEYS */;

-- 导出  表 db_bbs.userinfo 结构
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE IF NOT EXISTS `userinfo` (
  `uId` int(11) NOT NULL AUTO_INCREMENT,
  `uName` varchar(10) NOT NULL DEFAULT '',
  `uPassWord` varchar(20) NOT NULL DEFAULT '',
  `uSex` tinyint(1) NOT NULL DEFAULT '0',
  `uFace` varchar(5) NOT NULL DEFAULT '',
  `uRegTime` datetime NOT NULL,
  `uType` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uId`),
  UNIQUE KEY `UQ_uName` (`uName`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- 正在导出表  db_bbs.userinfo 的数据：~3 rows (大约)
DELETE FROM `userinfo`;
/*!40000 ALTER TABLE `userinfo` DISABLE KEYS */;
INSERT INTO `userinfo` (`uId`, `uName`, `uPassWord`, `uSex`, `uFace`, `uRegTime`, `uType`) VALUES
	(1, 'admin', 'admin', 1, '1.gif', '2009-01-11 22:17:48', 2),
	(7, 'test', 'test', 1, '2.gif', '2009-11-30 14:52:58', 2),
	(8, 'javaweb', 'javaweb', 0, '2.gif', '2010-01-29 10:34:37', 0);
/*!40000 ALTER TABLE `userinfo` ENABLE KEYS */;


-- 导出 db_bfvipshopping 的数据库结构
DROP DATABASE IF EXISTS `db_bfvipshopping`;
CREATE DATABASE IF NOT EXISTS `db_bfvipshopping` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_bfvipshopping`;

-- 导出  表 db_bfvipshopping.commodity 结构
DROP TABLE IF EXISTS `commodity`;
CREATE TABLE IF NOT EXISTS `commodity` (
  `commodityId` int(11) NOT NULL AUTO_INCREMENT,
  `commodityName` varchar(30) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `agio` decimal(4,3) DEFAULT NULL,
  PRIMARY KEY (`commodityId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=gb2312;

-- 正在导出表  db_bfvipshopping.commodity 的数据：~8 rows (大约)
DELETE FROM `commodity`;
/*!40000 ALTER TABLE `commodity` DISABLE KEYS */;
INSERT INTO `commodity` (`commodityId`, `commodityName`, `price`, `agio`) VALUES
	(1, '伊利纯牛奶', 2.30, 1.000),
	(2, '蒙牛纯牛奶', 2.50, 1.000),
	(3, '三元纯牛奶', 2.10, 0.900),
	(4, '王老吉', 3.50, 1.000),
	(5, '伊利奶粉', 40.00, 1.000),
	(6, '蒙牛奶粉', 50.00, 1.000),
	(7, '三元奶粉', 45.00, 1.000),
	(8, 'JavaWeb项目开发', 50.90, 0.850);
/*!40000 ALTER TABLE `commodity` ENABLE KEYS */;

-- 导出  表 db_bfvipshopping.consume 结构
DROP TABLE IF EXISTS `consume`;
CREATE TABLE IF NOT EXISTS `consume` (
  `consumeId` int(11) NOT NULL AUTO_INCREMENT,
  `vipId` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `commodityId` int(11) DEFAULT NULL,
  `commodityName` varchar(30) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `practicePrice` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`consumeId`),
  KEY `vipId` (`vipId`),
  KEY `commodityId` (`commodityId`),
  CONSTRAINT `consume_ibfk_1` FOREIGN KEY (`vipId`) REFERENCES `vip` (`vipId`),
  CONSTRAINT `consume_ibfk_2` FOREIGN KEY (`commodityId`) REFERENCES `commodity` (`commodityId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=gb2312;

-- 正在导出表  db_bfvipshopping.consume 的数据：~14 rows (大约)
DELETE FROM `consume`;
/*!40000 ALTER TABLE `consume` DISABLE KEYS */;
INSERT INTO `consume` (`consumeId`, `vipId`, `name`, `commodityId`, `commodityName`, `price`, `practicePrice`) VALUES
	(1, 1, '刘爱明', 1, '伊利纯牛奶', 2.30, 2.30),
	(2, 1, '刘爱明', 2, '蒙牛纯牛奶', 2.50, 2.50),
	(3, 1, '刘爱明', 3, '三元纯牛奶', 2.10, 1.89),
	(4, 2, '张力', 1, '伊利纯牛奶', 2.30, 2.30),
	(5, 2, '张力', 2, '蒙牛纯牛奶', 2.50, 2.50),
	(6, 2, '张力', 3, '三元纯牛奶', 2.10, 1.89),
	(7, 2, '张力', 4, '王老吉', 3.50, 3.50),
	(8, 2, '张力', 5, '伊利奶粉', 40.00, 40.00),
	(9, 3, '秦华', 4, '王老吉', 3.50, 3.50),
	(10, 5, '笑笑', 5, '伊利奶粉', 40.00, 40.00),
	(11, 5, '笑笑', 6, '蒙牛奶粉', 50.00, 50.00),
	(12, 1, '刘爱明', 8, 'JavaWeb项目开发', 50.90, 43.27),
	(13, 1, '刘爱明', 4, '王老吉', 3.50, 3.50),
	(14, 3, '秦华', 4, '王老吉', 3.50, 3.50);
/*!40000 ALTER TABLE `consume` ENABLE KEYS */;

-- 导出  表 db_bfvipshopping.user 结构
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(20) DEFAULT NULL,
  `quanxian` int(11) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_bfvipshopping.user 的数据：~3 rows (大约)
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`username`, `password`, `quanxian`) VALUES
	('admin', 'admin', 1),
	('ibeifeng', '123', 0),
	('lifengxing', '123', 0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

-- 导出  表 db_bfvipshopping.vip 结构
DROP TABLE IF EXISTS `vip`;
CREATE TABLE IF NOT EXISTS `vip` (
  `vipId` int(11) NOT NULL AUTO_INCREMENT,
  `joinTime` date DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `profession` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`vipId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=gb2312;

-- 正在导出表  db_bfvipshopping.vip 的数据：~8 rows (大约)
DELETE FROM `vip`;
/*!40000 ALTER TABLE `vip` DISABLE KEYS */;
INSERT INTO `vip` (`vipId`, `joinTime`, `name`, `age`, `profession`) VALUES
	(1, '2009-12-15', '刘爱明', 30, '工程师'),
	(2, '2009-12-15', '张力', 50, '评论员'),
	(3, '2009-12-01', '秦华', 21, '职业玩家'),
	(4, '2009-12-01', '李明', 22, '工程师'),
	(5, '2009-12-03', '笑笑', 24, '银行职员'),
	(6, '2009-12-04', '黄一', 25, 'it评论员'),
	(7, '2010-01-30', '张三', 30, 'it工程师'),
	(8, '2010-01-30', '李四', 30, 'it评论员');
/*!40000 ALTER TABLE `vip` ENABLE KEYS */;


-- 导出 db_blog 的数据库结构
DROP DATABASE IF EXISTS `db_blog`;
CREATE DATABASE IF NOT EXISTS `db_blog` /*!40100 DEFAULT CHARACTER SET gb2312 */;
USE `db_blog`;

-- 导出  表 db_blog.article 结构
DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `content` text,
  `username` varchar(50) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `hasread` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `username` (`username`),
  CONSTRAINT `article_ibfk_1` FOREIGN KEY (`username`) REFERENCES `user` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=gb2312 COMMENT='文章表';

-- 正在导出表  db_blog.article 的数据：~5 rows (大约)
DELETE FROM `article`;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` (`Id`, `title`, `content`, `username`, `date`, `hasread`) VALUES
	(1, 'SSH整合方案（一）', '<p>这段时间准备写一下SSH的整合方法<img alt="" src="http://localhost:8080/JavaPrj_4/user/fckeditor/editor/images/smiley/qq/017.jpg" /></p>', 'xiaoxiao', '2009-12-27 10:58:50', 2),
	(2, 'SSH整合方案（二）', '<p>让我们一起感受SSH整合的魅力吧！！！！！</p>', 'xiaoxiao', '2009-12-27 10:59:41', 1),
	(3, '今天好冷啊！', '<p>外面下雪了，今年的冬天来得太早了。<img alt="" src="http://localhost:8080/JavaPrj_4/user/fckeditor/editor/images/smiley/qq/005.gif" /></p>', 'xiaoxiao', '2009-12-27 11:00:22', 1),
	(4, '继续更新我的SSH整合方案！', '', 'xiaoxiao', '2009-12-27 11:08:43', 1),
	(5, '测试日志！！', '<p>测试日志！！<img alt="" src="http://localhost:8080/JavaPrj_4/user/fckeditor/editor/images/smiley/qq/004.gif" /></p>', 'xiaoxiao', '2010-01-27 18:05:06', 1);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;

-- 导出  表 db_blog.bloginfo 结构
DROP TABLE IF EXISTS `bloginfo`;
CREATE TABLE IF NOT EXISTS `bloginfo` (
  `username` varchar(20) NOT NULL DEFAULT '',
  `blogtitle` varchar(50) DEFAULT NULL,
  `idiograph` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`username`),
  CONSTRAINT `bloginfo_ibfk_1` FOREIGN KEY (`username`) REFERENCES `user` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312 COMMENT='个性设置表';

-- 正在导出表  db_blog.bloginfo 的数据：~1 rows (大约)
DELETE FROM `bloginfo`;
/*!40000 ALTER TABLE `bloginfo` DISABLE KEYS */;
INSERT INTO `bloginfo` (`username`, `blogtitle`, `idiograph`) VALUES
	('xiaoxiao', '我是小小', '我喜欢写博客');
/*!40000 ALTER TABLE `bloginfo` ENABLE KEYS */;

-- 导出  表 db_blog.critique 结构
DROP TABLE IF EXISTS `critique`;
CREATE TABLE IF NOT EXISTS `critique` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `AId` int(11) DEFAULT NULL,
  `content` text,
  `username` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `AId` (`AId`),
  CONSTRAINT `critique_ibfk_1` FOREIGN KEY (`AId`) REFERENCES `article` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=gb2312 COMMENT='评论表';

-- 正在导出表  db_blog.critique 的数据：~6 rows (大约)
DELETE FROM `critique`;
/*!40000 ALTER TABLE `critique` DISABLE KEYS */;
INSERT INTO `critique` (`Id`, `AId`, `content`, `username`) VALUES
	(1, 3, '<p>是啊，太冷了，我还好！！！</p>', 'xiaoxiao'),
	(2, 3, '<p>我们公司的暖气坏了，好冷啊！！</p>', 'xiaoxiao'),
	(3, 2, '<p>测试一下！</p>', 'xiaoxiao'),
	(4, 5, '<p>评论！！</p>', 'xiaoxiao'),
	(5, 1, '<p>测试一下！！</p>', 'xiaoxiao'),
	(6, 5, '<p><a href="http://localhost:8080/JavaPrj_4/">http://localhost:8080/JavaPrj_4/</a></p>', '匿名');
/*!40000 ALTER TABLE `critique` ENABLE KEYS */;

-- 导出  表 db_blog.dianjiliang 结构
DROP TABLE IF EXISTS `dianjiliang`;
CREATE TABLE IF NOT EXISTS `dianjiliang` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `AId` int(11) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `time` date DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `AId` (`AId`),
  CONSTRAINT `dianjiliang_ibfk_1` FOREIGN KEY (`AId`) REFERENCES `article` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=gb2312 COMMENT='点击量表';

-- 正在导出表  db_blog.dianjiliang 的数据：~6 rows (大约)
DELETE FROM `dianjiliang`;
/*!40000 ALTER TABLE `dianjiliang` DISABLE KEYS */;
INSERT INTO `dianjiliang` (`Id`, `AId`, `ip`, `time`) VALUES
	(1, 1, '0:0:0:0:0:0:0:1', '2009-12-27'),
	(2, 3, '0:0:0:0:0:0:0:1', '2009-12-27'),
	(3, 1, '0:0:0:0:0:0:0:1', '2010-01-27'),
	(4, 2, '0:0:0:0:0:0:0:1', '2010-01-27'),
	(5, 5, '0:0:0:0:0:0:0:1', '2010-01-27'),
	(6, 4, '0:0:0:0:0:0:0:1', '2010-01-27');
/*!40000 ALTER TABLE `dianjiliang` ENABLE KEYS */;

-- 导出  表 db_blog.user 结构
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(20) DEFAULT NULL,
  `nickname` varchar(20) DEFAULT NULL,
  `question` varchar(50) DEFAULT NULL,
  `answer` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312 COMMENT='用户表';

-- 正在导出表  db_blog.user 的数据：~1 rows (大约)
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`username`, `password`, `nickname`, `question`, `answer`) VALUES
	('xiaoxiao', 'xiaoxiao', '厉风行', '你的家乡', '湖南益阳市');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;


-- 导出 db_crm 的数据库结构
DROP DATABASE IF EXISTS `db_crm`;
CREATE DATABASE IF NOT EXISTS `db_crm` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_crm`;

-- 导出  表 db_crm.cst_manager 结构
DROP TABLE IF EXISTS `cst_manager`;
CREATE TABLE IF NOT EXISTS `cst_manager` (
  `man_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `man_name` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`man_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- 正在导出表  db_crm.cst_manager 的数据：~10 rows (大约)
DELETE FROM `cst_manager`;
/*!40000 ALTER TABLE `cst_manager` DISABLE KEYS */;
INSERT INTO `cst_manager` (`man_id`, `man_name`) VALUES
	(1, '庞小庆'),
	(2, '江波'),
	(3, '胡波'),
	(4, '李庆华'),
	(5, '刘大伟'),
	(6, '张佩军'),
	(7, '李大维'),
	(8, '胡勇'),
	(9, '张达'),
	(10, '杨晓波');
/*!40000 ALTER TABLE `cst_manager` ENABLE KEYS */;

-- 导出  表 db_crm.orders 结构
DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `odr_id` bigint(20) NOT NULL DEFAULT '0',
  `odr_customer` varchar(100) NOT NULL DEFAULT '',
  `odr_date` datetime NOT NULL,
  `odr_addr` varchar(200) DEFAULT '',
  `odr_status` char(1) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_crm.orders 的数据：~10 rows (大约)
DELETE FROM `orders`;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`odr_id`, `odr_customer`, `odr_date`, `odr_addr`, `odr_status`) VALUES
	(1, '珠海拱北万家百货', '2008-01-19 00:00:00', '广东省珠海市拱北', '6'),
	(2, '珠海拱北万家百货', '2008-02-19 00:00:00', '广东省珠海市拱北', '1'),
	(3, '珠海拱北万家百货', '2008-03-19 00:00:00', '广东省珠海市拱北', '1'),
	(4, '珠海拱北万家百货', '2008-04-19 00:00:00', '广东省珠海市拱北', '5'),
	(5, '珠海拱北万家百货', '2008-05-19 00:00:00', '广东省珠海市拱北', '1'),
	(6, '珠海新一佳百货公司', '2008-01-12 00:00:00', '广东省珠海市香洲区南坑市场对面', '1'),
	(7, '珠海新一佳百货公司', '2008-02-12 00:00:00', '广东省珠海市香洲区南坑市场对面', '6'),
	(8, '珠海新一佳百货公司', '2008-03-12 00:00:00', '广东省珠海市香洲区南坑市场对面', '1'),
	(9, '珠海新一佳百货公司', '2008-04-12 00:00:00', '广东省珠海市香洲区南坑市场对面', '5'),
	(10, '珠海新一佳百货公司', '2008-05-12 00:00:00', '广东省珠海市香洲区南坑市场对面', '1');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

-- 导出  表 db_crm.sal_chance 结构
DROP TABLE IF EXISTS `sal_chance`;
CREATE TABLE IF NOT EXISTS `sal_chance` (
  `chc_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `chc_source` varchar(50) DEFAULT '',
  `chc_cust_name` varchar(100) NOT NULL DEFAULT '',
  `chc_title` varchar(200) NOT NULL DEFAULT '',
  `chc_rate` int(11) NOT NULL DEFAULT '0',
  `chc_linkman` varchar(50) DEFAULT '',
  `chc_tel` varchar(50) DEFAULT '',
  `chc_desc` text NOT NULL,
  `chc_create_by` varchar(50) NOT NULL DEFAULT '',
  `chc_create_date` varchar(20) NOT NULL DEFAULT '(getdate())',
  `chc_due_to` varchar(50) DEFAULT '',
  `chc_due_date` varchar(20) DEFAULT '',
  `chc_status` char(10) NOT NULL DEFAULT '(1)',
  PRIMARY KEY (`chc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- 正在导出表  db_crm.sal_chance 的数据：~3 rows (大约)
DELETE FROM `sal_chance`;
/*!40000 ALTER TABLE `sal_chance` DISABLE KEYS */;
INSERT INTO `sal_chance` (`chc_id`, `chc_source`, `chc_cust_name`, `chc_title`, `chc_rate`, `chc_linkman`, `chc_tel`, `chc_desc`, `chc_create_by`, `chc_create_date`, `chc_due_to`, `chc_due_date`, `chc_status`) VALUES
	(18, '朋友介绍', '珠海房产网', '想买笔记本电脑', 90, '刘小明', '123456789', '希望采购50台笔记本 <br>', 'admin', '2009年12月13日', NULL, NULL, '1'),
	(19, '老乡介绍', '中国人才资源中心', '希望采购100台台式机', 99, '莫小妹', '789456123', '&nbsp;希望采购100台台式机', 'admin', '2009年12月13日', NULL, NULL, '1'),
	(20, '业务来往', '珠海旅游局', '采购10台笔记本', 99, '小王', '123456789', '', 'admin', '2009年12月13日', NULL, NULL, '1');
/*!40000 ALTER TABLE `sal_chance` ENABLE KEYS */;

-- 导出  表 db_crm.sal_plan 结构
DROP TABLE IF EXISTS `sal_plan`;
CREATE TABLE IF NOT EXISTS `sal_plan` (
  `pla_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pla_chc_id` bigint(20) NOT NULL DEFAULT '0',
  `pla_date` varchar(20) NOT NULL DEFAULT '',
  `pla_todo` text NOT NULL,
  `pla_result` text,
  PRIMARY KEY (`pla_id`),
  KEY `FK_sal_plan_sal_chance` (`pla_chc_id`),
  CONSTRAINT `FK_sal_plan_sal_chance` FOREIGN KEY (`pla_chc_id`) REFERENCES `sal_chance` (`chc_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_crm.sal_plan 的数据：~0 rows (大约)
DELETE FROM `sal_plan`;
/*!40000 ALTER TABLE `sal_plan` DISABLE KEYS */;
/*!40000 ALTER TABLE `sal_plan` ENABLE KEYS */;

-- 导出  表 db_crm.storage 结构
DROP TABLE IF EXISTS `storage`;
CREATE TABLE IF NOT EXISTS `storage` (
  `stk_id` bigint(20) NOT NULL DEFAULT '0',
  `stk_prod_id` bigint(20) NOT NULL DEFAULT '0',
  `stk_warehouse` varchar(50) NOT NULL DEFAULT '',
  `stk_ware` varchar(50) NOT NULL DEFAULT '',
  `stk_count` int(11) NOT NULL DEFAULT '0',
  `stk_memo` varchar(200) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_crm.storage 的数据：~10 rows (大约)
DELETE FROM `storage`;
/*!40000 ALTER TABLE `storage` DISABLE KEYS */;
INSERT INTO `storage` (`stk_id`, `stk_prod_id`, `stk_warehouse`, `stk_ware`, `stk_count`, `stk_memo`) VALUES
	(5, 1, '北京-西直门库', 'EC-D2', 20, ''),
	(6, 2, '北京-西直门库', 'EC-D3', 25, ''),
	(7, 4, '北京-西直门库', 'EC-D5', 15, ''),
	(8, 7, '北京-大钟寺库', 'EA-B8', 5, ''),
	(9, 10, '北京-大钟寺库', 'EA-B5', 8, ''),
	(10, 11, '北京-大钟寺库', 'EA-B4', 9, ''),
	(11, 12, '北京-马甸库', 'EA-A2', 11, ''),
	(12, 13, '北京-马甸库', 'EA-A3', 11, '好棒哦'),
	(13, 14, '北京-马甸库', 'EA-A4', 12, ''),
	(14, 15, '北京-马甸库', 'EA-A5', 11, '');
/*!40000 ALTER TABLE `storage` ENABLE KEYS */;

-- 导出  表 db_crm.sys_right 结构
DROP TABLE IF EXISTS `sys_right`;
CREATE TABLE IF NOT EXISTS `sys_right` (
  `right_code` bigint(20) NOT NULL AUTO_INCREMENT,
  `right_text` varchar(50) DEFAULT '',
  `right_url` varchar(100) DEFAULT '',
  PRIMARY KEY (`right_code`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- 正在导出表  db_crm.sys_right 的数据：~10 rows (大约)
DELETE FROM `sys_right`;
/*!40000 ALTER TABLE `sys_right` DISABLE KEYS */;
INSERT INTO `sys_right` (`right_code`, `right_text`, `right_url`) VALUES
	(1, '销售机会管理', '/sale.do'),
	(2, '客户开发计划', '/plan.do'),
	(3, '客户信息管理', '/customer.do'),
	(4, '客户流失管理', '/cstLost.do'),
	(5, '客户服务管理', '/cstService.do'),
	(6, '统计报表', '/report.do'),
	(7, '数据字典管理', '/basdict.do'),
	(8, '查询产品信息', '/product.do'),
	(9, '查询库存', '/storage.do'),
	(10, '权限管理', '/right.do');
/*!40000 ALTER TABLE `sys_right` ENABLE KEYS */;

-- 导出  表 db_crm.sys_role 结构
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE IF NOT EXISTS `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) NOT NULL DEFAULT '',
  `role_desc` varchar(50) DEFAULT '',
  `role_flag` int(11) DEFAULT '0',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- 正在导出表  db_crm.sys_role 的数据：~5 rows (大约)
DELETE FROM `sys_role`;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` (`role_id`, `role_name`, `role_desc`, `role_flag`) VALUES
	(1, '系统管理员', '最高权限', 1),
	(2, '销售主管', '客户管理、营销管理以及统计报表', 1),
	(3, '客户经理', '客户管理、基础数据以及统计报表', 1),
	(4, '董事会董事', '查看统计报表', 1),
	(6, '销售员', '营销管理', NULL);
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;

-- 导出  表 db_crm.sys_role_right 结构
DROP TABLE IF EXISTS `sys_role_right`;
CREATE TABLE IF NOT EXISTS `sys_role_right` (
  `r_r_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `right_id` bigint(20) NOT NULL DEFAULT '0',
  `roles_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`r_r_id`),
  KEY `FK_Sys_role_right_sys_role` (`roles_id`),
  KEY `FK_sys_role_right_sys_right` (`right_id`),
  CONSTRAINT `FK_Sys_role_right_sys_role` FOREIGN KEY (`roles_id`) REFERENCES `sys_role` (`role_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_sys_role_right_sys_right` FOREIGN KEY (`right_id`) REFERENCES `sys_right` (`right_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- 正在导出表  db_crm.sys_role_right 的数据：~10 rows (大约)
DELETE FROM `sys_role_right`;
/*!40000 ALTER TABLE `sys_role_right` DISABLE KEYS */;
INSERT INTO `sys_role_right` (`r_r_id`, `right_id`, `roles_id`) VALUES
	(5, 1, 2),
	(6, 2, 2),
	(7, 5, 2),
	(8, 6, 2),
	(9, 1, 3),
	(10, 2, 3),
	(11, 3, 3),
	(12, 4, 3),
	(13, 5, 3),
	(14, 6, 3);
/*!40000 ALTER TABLE `sys_role_right` ENABLE KEYS */;

-- 导出  表 db_crm.sys_user 结构
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE IF NOT EXISTS `sys_user` (
  `usr_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `usr_name` varchar(50) NOT NULL DEFAULT '',
  `usr_password` varchar(50) NOT NULL DEFAULT '',
  `usr_role_id` bigint(20) DEFAULT '0',
  `usr_flag` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`usr_id`),
  KEY `FK_sys_user_sys_role` (`usr_role_id`),
  CONSTRAINT `FK_sys_user_sys_role` FOREIGN KEY (`usr_role_id`) REFERENCES `sys_role` (`role_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- 正在导出表  db_crm.sys_user 的数据：~4 rows (大约)
DELETE FROM `sys_user`;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` (`usr_id`, `usr_name`, `usr_password`, `usr_role_id`, `usr_flag`) VALUES
	(2, 'admin', 'admin', 1, 1),
	(7, 'wangqinghai', 'pwd', 2, 1),
	(8, 'huangcaiyi', 's', 3, 1),
	(9, 'huanglonghui', 'pwd', 4, 1);
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;


-- 导出 db_dbdemo 的数据库结构
DROP DATABASE IF EXISTS `db_dbdemo`;
CREATE DATABASE IF NOT EXISTS `db_dbdemo` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `db_dbdemo`;

-- 导出  表 db_dbdemo.bittest 结构
DROP TABLE IF EXISTS `bittest`;
CREATE TABLE IF NOT EXISTS `bittest` (
  `test_field` bit(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_dbdemo.bittest 的数据：~2 rows (大约)
DELETE FROM `bittest`;
/*!40000 ALTER TABLE `bittest` DISABLE KEYS */;
INSERT INTO `bittest` (`test_field`) VALUES
	(b'1011'),
	(b'0011');
/*!40000 ALTER TABLE `bittest` ENABLE KEYS */;

-- 导出  表 db_dbdemo.datademo 结构
DROP TABLE IF EXISTS `datademo`;
CREATE TABLE IF NOT EXISTS `datademo` (
  `count` int(11) DEFAULT NULL,
  `price` float(3,1) DEFAULT NULL,
  `money` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_dbdemo.datademo 的数据：~6 rows (大约)
DELETE FROM `datademo`;
/*!40000 ALTER TABLE `datademo` DISABLE KEYS */;
INSERT INTO `datademo` (`count`, `price`, `money`) VALUES
	(1234567890, NULL, NULL),
	(234567890, 4.2, NULL),
	(34567890, 4.5, NULL),
	(4567890, 6.7, 456),
	(4567890, 6.7, 45.6),
	(4567890, 6.7, 4.56789);
/*!40000 ALTER TABLE `datademo` ENABLE KEYS */;

-- 导出  表 db_dbdemo.date_test 结构
DROP TABLE IF EXISTS `date_test`;
CREATE TABLE IF NOT EXISTS `date_test` (
  `date1` datetime DEFAULT NULL,
  `date2` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_dbdemo.date_test 的数据：~3 rows (大约)
DELETE FROM `date_test`;
/*!40000 ALTER TABLE `date_test` DISABLE KEYS */;
INSERT INTO `date_test` (`date1`, `date2`) VALUES
	('2016-12-22 06:44:01', '2016-12-22 06:44:01'),
	('2016-12-22 06:46:48', '2016-12-22 06:46:48'),
	('2016-12-21 14:47:31', '2016-12-22 06:47:31');
/*!40000 ALTER TABLE `date_test` ENABLE KEYS */;

-- 导出  表 db_dbdemo.enumtest 结构
DROP TABLE IF EXISTS `enumtest`;
CREATE TABLE IF NOT EXISTS `enumtest` (
  `test_field` enum('one','tow','three') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_dbdemo.enumtest 的数据：~1 rows (大约)
DELETE FROM `enumtest`;
/*!40000 ALTER TABLE `enumtest` DISABLE KEYS */;
INSERT INTO `enumtest` (`test_field`) VALUES
	('one');
/*!40000 ALTER TABLE `enumtest` ENABLE KEYS */;

-- 导出  表 db_dbdemo.floattest 结构
DROP TABLE IF EXISTS `floattest`;
CREATE TABLE IF NOT EXISTS `floattest` (
  `a` decimal(10,1) DEFAULT NULL,
  `b` decimal(10,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_dbdemo.floattest 的数据：~1 rows (大约)
DELETE FROM `floattest`;
/*!40000 ALTER TABLE `floattest` DISABLE KEYS */;
INSERT INTO `floattest` (`a`, `b`) VALUES
	(5.0, 3.2);
/*!40000 ALTER TABLE `floattest` ENABLE KEYS */;

-- 导出  表 db_dbdemo.my_tbl 结构
DROP TABLE IF EXISTS `my_tbl`;
CREATE TABLE IF NOT EXISTS `my_tbl` (
  `age` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  db_dbdemo.my_tbl 的数据：0 rows
DELETE FROM `my_tbl`;
/*!40000 ALTER TABLE `my_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `my_tbl` ENABLE KEYS */;

-- 导出  表 db_dbdemo.settest 结构
DROP TABLE IF EXISTS `settest`;
CREATE TABLE IF NOT EXISTS `settest` (
  `test_field` set('one','tow','three') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_dbdemo.settest 的数据：~4 rows (大约)
DELETE FROM `settest`;
/*!40000 ALTER TABLE `settest` DISABLE KEYS */;
INSERT INTO `settest` (`test_field`) VALUES
	('one,tow'),
	('one,tow,three'),
	('one,tow'),
	('one');
/*!40000 ALTER TABLE `settest` ENABLE KEYS */;


-- 导出 db_dbdemo2 的数据库结构
DROP DATABASE IF EXISTS `db_dbdemo2`;
CREATE DATABASE IF NOT EXISTS `db_dbdemo2` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `db_dbdemo2`;

-- 导出  表 db_dbdemo2.article 结构
DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT '0',
  `content` varchar(100) DEFAULT '0',
  `uid` int(11) DEFAULT '0',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='文章';

-- 正在导出表  db_dbdemo2.article 的数据：~4 rows (大约)
DELETE FROM `article`;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` (`aid`, `title`, `content`, `uid`) VALUES
	(1, '文章１', '文章1正文内容...', 1),
	(2, '文章2', '文章2正文内容...', 1),
	(3, '文章3', '文章3正文内容...', 2),
	(4, '文章4', '文章4正文内容...', 3);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;

-- 导出  表 db_dbdemo2.blog 结构
DROP TABLE IF EXISTS `blog`;
CREATE TABLE IF NOT EXISTS `blog` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT '0',
  `content` varchar(100) DEFAULT '0',
  `uid` int(11) DEFAULT '0',
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='文章';

-- 正在导出表  db_dbdemo2.blog 的数据：~4 rows (大约)
DELETE FROM `blog`;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` (`bid`, `title`, `content`, `uid`) VALUES
	(1, '日志１', '日志1正文内容...', 1),
	(2, '文章2', '文章2正文内容...', 1),
	(3, '日志3', '日志3正文内容...', 2),
	(4, '文章4', '文章4正文内容...', 5);
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;

-- 导出  表 db_dbdemo2.cv 结构
DROP TABLE IF EXISTS `cv`;
CREATE TABLE IF NOT EXISTS `cv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `age` int(11) NOT NULL,
  `city` varchar(50) NOT NULL DEFAULT 'hf',
  `friends` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- 正在导出表  db_dbdemo2.cv 的数据：~18 rows (大约)
DELETE FROM `cv`;
/*!40000 ALTER TABLE `cv` DISABLE KEYS */;
INSERT INTO `cv` (`id`, `name`, `age`, `city`, `friends`) VALUES
	(8, 'zhangyi', 15, 'bj', NULL),
	(11, '杜老师', 26, 'sh', NULL),
	(12, '先生杜', 17, 'bj', NULL),
	(13, '李斯', 34, '宿迁', 'jim'),
	(14, '张三', 34, 'hefei', 'jim'),
	(15, '赵高', 44, '西安', 'tomy'),
	(16, '赵高', 44, '西安', 'tomy'),
	(17, '蒙恬', 44, '台湾', 'tomy'),
	(18, '赵高', 44, '西安', 'tomy'),
	(19, 'Name-1', 11, 'HeFei', 'tom1'),
	(20, 'Name-2', 12, 'HeFei', 'tom2'),
	(21, 'Name-3', 13, 'HeFei', 'tom3'),
	(22, 'Name-4', 14, 'HeFei', 'tom4'),
	(23, 'Name-5', 15, 'HeFei', 'tom5'),
	(24, 'Name-6', 16, 'HeFei', 'tom6'),
	(28, 'Name-11', 11, 'HeFei', 'tom11'),
	(29, 'Name-12', 12, 'HeFei', 'tom12'),
	(30, 'Name-13', 13, 'HeFei', 'tom13');
/*!40000 ALTER TABLE `cv` ENABLE KEYS */;

-- 导出  表 db_dbdemo2.edu 结构
DROP TABLE IF EXISTS `edu`;
CREATE TABLE IF NOT EXISTS `edu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cv_id` int(11) NOT NULL DEFAULT '0',
  `from_date` date NOT NULL DEFAULT '0000-00-00',
  `to_date` date NOT NULL DEFAULT '0000-00-00',
  `degree` tinyint(1) NOT NULL DEFAULT '0',
  `school_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cv_id` (`cv_id`),
  KEY `school_id` (`school_id`),
  CONSTRAINT `edu_ibfk_1` FOREIGN KEY (`cv_id`) REFERENCES `cv` (`id`) ON DELETE CASCADE,
  CONSTRAINT `edu_ibfk_2` FOREIGN KEY (`school_id`) REFERENCES `school` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_dbdemo2.edu 的数据：~0 rows (大约)
DELETE FROM `edu`;
/*!40000 ALTER TABLE `edu` DISABLE KEYS */;
/*!40000 ALTER TABLE `edu` ENABLE KEYS */;

-- 导出  表 db_dbdemo2.school 结构
DROP TABLE IF EXISTS `school`;
CREATE TABLE IF NOT EXISTS `school` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `name_index` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- 正在导出表  db_dbdemo2.school 的数据：~3 rows (大约)
DELETE FROM `school`;
/*!40000 ALTER TABLE `school` DISABLE KEYS */;
INSERT INTO `school` (`id`, `name`, `address`) VALUES
	(1, 'xinji', 'sixian'),
	(2, 'feixi', 'hefei'),
	(3, '34zhong', 'hefei');
/*!40000 ALTER TABLE `school` ENABLE KEYS */;

-- 导出  表 db_dbdemo2.transaction_test 结构
DROP TABLE IF EXISTS `transaction_test`;
CREATE TABLE IF NOT EXISTS `transaction_test` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- 正在导出表  db_dbdemo2.transaction_test 的数据：~6 rows (大约)
DELETE FROM `transaction_test`;
/*!40000 ALTER TABLE `transaction_test` DISABLE KEYS */;
INSERT INTO `transaction_test` (`id`, `name`) VALUES
	(1, 'andy'),
	(2, 'tom'),
	(3, 'jack'),
	(5, 'bob'),
	(8, 'john'),
	(9, 'lee');
/*!40000 ALTER TABLE `transaction_test` ENABLE KEYS */;


-- 导出 db_examsystem 的数据库结构
DROP DATABASE IF EXISTS `db_examsystem`;
CREATE DATABASE IF NOT EXISTS `db_examsystem` /*!40100 DEFAULT CHARACTER SET gb2312 */;
USE `db_examsystem`;

-- 导出  表 db_examsystem.tb_student 结构
DROP TABLE IF EXISTS `tb_student`;
CREATE TABLE IF NOT EXISTS `tb_student` (
  `studentID` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(20) DEFAULT NULL,
  `studentName` varchar(20) DEFAULT NULL,
  `result` int(11) DEFAULT NULL,
  `sclass` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`studentID`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312 COMMENT='学生信息表';

-- 正在导出表  db_examsystem.tb_student 的数据：~2 rows (大约)
DELETE FROM `tb_student`;
/*!40000 ALTER TABLE `tb_student` DISABLE KEYS */;
INSERT INTO `tb_student` (`studentID`, `password`, `studentName`, `result`, `sclass`) VALUES
	('0509302*21', 'student', '李明华', 20, '0509302'),
	('05099301*21', 'fsdfsdf', '洪林', 100, '0509301');
/*!40000 ALTER TABLE `tb_student` ENABLE KEYS */;

-- 导出  表 db_examsystem.tb_subject 结构
DROP TABLE IF EXISTS `tb_subject`;
CREATE TABLE IF NOT EXISTS `tb_subject` (
  `subjectID` int(11) NOT NULL AUTO_INCREMENT,
  `subjectTitle` varchar(255) DEFAULT NULL,
  `subjectOptionA` varchar(50) DEFAULT NULL,
  `subjectOptionB` varchar(50) DEFAULT NULL,
  `subjectOptionC` varchar(50) DEFAULT NULL,
  `subjectOptionD` varchar(50) DEFAULT NULL,
  `subjectAnswer` varchar(1) DEFAULT NULL,
  `subjectParse` text,
  PRIMARY KEY (`subjectID`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=gb2312 COMMENT='试题信息表';

-- 正在导出表  db_examsystem.tb_subject 的数据：~26 rows (大约)
DELETE FROM `tb_subject`;
/*!40000 ALTER TABLE `tb_subject` DISABLE KEYS */;
INSERT INTO `tb_subject` (`subjectID`, `subjectTitle`, `subjectOptionA`, `subjectOptionB`, `subjectOptionC`, `subjectOptionD`, `subjectAnswer`, `subjectParse`) VALUES
	(2, '下列各进制数中最大的数是( )。', '227O', '1FFH', '1010001B', '789D', 'D', NULL),
	(3, '( )不是微型计算机必须的工作环境。', '恒温', '良好的接地线路', '远离强磁场', '稳定的电源电压', 'A', NULL),
	(4, '( )不是文件。', '设备', '文档', '应用程序', '窗口', 'D', '窗口不是文件'),
	(5, '( )不属于Word2003的文档打开方式。', '读写方式', '只读方式', '备份方式', '系统方式', 'D', '系统方式不是Word2003的文档打开方式。'),
	(6, '( )菜单中含有设置字体的命令。', '格式', '编辑', '视图', '工具', 'A', NULL),
	(8, '( )的功能是将计算机外部的信息送入计算机。', '输入设备', '输出设备', '软盘', '电源线', 'A', ''),
	(9, '( )的主要功能是使用户的计算机与远程主机相连，从而成为远程主机的终端。', 'E-mail', 'FTP', 'Telnet', 'BBS', 'C', ''),
	(10, '( )视图方式可对文档不进行分页处理。', '普通', '联机版式', '页面视图', '大纲', 'B', ''),
	(12, '( )是微型计算机的外存。 ', 'RAM', 'ROM', '磁盘', '虚拟盘', 'C', ''),
	(13, '( )是用来存储程序及数据的装置。', '输入设备', '存储器', '控制器', '输出设备', 'B', ''),
	(14, 'NOVELLNETWARE是( )', '网络操作系统', '通用操作系统', '实时操作系统', '分时操作系统', 'A', ''),
	(15, '预防计算机病毒的手段，错误的是( )。', '要经常地对硬盘上的文件进行备份', '凡不需要再写入数据的磁盘都应有写保护', '将所有的.COM和.EXE文件赋以“只读”属性', '对磁盘进行清洗', 'D', ''),
	(16, '“32位微型计算机”中的32指的是( )', '微机型号', '内存容量', '存储单位', '机器字长', 'D', ''),
	(17, '“奔腾”微型计算机采用的微处理器的型号是( )', '80286', '80386', '80486', '80586', 'D', ''),
	(18, '“画图”程序是WINDOWS98的一个附件程序，能进行简单的图形处理，产生的文件为位图文件，扩展名为( )。', 'BMP', 'CRH', 'EXE', 'GPH', 'A', ''),
	(19, '“开始”菜单中，注销命令将( )。', '关闭系统', '关闭当前窗口上的程序', '关闭所有打开的程序', '以上都不对', 'C', ''),
	(20, '“文件”下拉菜单底部所显示的文件名是( )。', '扩展名为DOC的全部文件', '正要打印的文件名', '正在使用的文件名', '最近被Word处理过的文档', 'D', ''),
	(21, '“溢出”一般是指计算机在运算过程中产生的( )。', '数据量超过了内存量', '文件个数超过了磁盘目录区规定的范围', '数超过了机器的位所表示的范围', '数超过了变量的表示范围', 'C', ''),
	(22, '《计算机软件条例》中所称的计算机软件(简称软件)是指( )。', '计算机程序', '源程序和目标程序', '源程序', '计算机程序及其有关文档', 'D', ''),
	(23, '10BaseF的含义是( )。', '10Mbps的宽带光纤网络', '10Mbps的基带同轴电缆网络', '10Mbps的基带光纤网络', '10Mbps的宽带同轴电缆网络', 'C', ''),
	(24, '在微机中，主机由微处理器与( )组成。', '运算器', '磁盘存储器', '软盘存储器', '内存储器', 'D', ''),
	(25, '1MB的存储容量相当于( )。', '一百万个字节', '2的10次方个字节', '2的20次方个字节', '1000KB', 'C', ''),
	(26, '1nternet的分层结构是由( )这个四层组成。', ' 应用层、传输层、通信子网层和物理层', '应用层、表示层、传输层和网络层', '物理层、数据链路层、网络层和传输层', '网络接口层、网络层、传输层和应用层', 'D', ''),
	(27, 'WindowsXP中改变窗口的大小时，应操作( )。', '窗口的四角或四边', '窗口右上角的按钮', '窗口的标题栏', '窗口左上角的控制栏', 'A', ''),
	(28, '在WindowsXP操作系统中，对话框的大小是( )。', '可变的', '可任意设置的', '固定的', '与不同的操作有关的', 'D', ''),
	(29, '测试路考', '向右转', '向左转', '向前', '向后', 'D', '应该向后！！！！');
/*!40000 ALTER TABLE `tb_subject` ENABLE KEYS */;

-- 导出  表 db_examsystem.tb_teacher 结构
DROP TABLE IF EXISTS `tb_teacher`;
CREATE TABLE IF NOT EXISTS `tb_teacher` (
  `teacherID` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`teacherID`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312 COMMENT='老师信息表';

-- 正在导出表  db_examsystem.tb_teacher 的数据：~1 rows (大约)
DELETE FROM `tb_teacher`;
/*!40000 ALTER TABLE `tb_teacher` DISABLE KEYS */;
INSERT INTO `tb_teacher` (`teacherID`, `password`) VALUES
	('teacher', 'teacher');
/*!40000 ALTER TABLE `tb_teacher` ENABLE KEYS */;


-- 导出 db_fcshopping 的数据库结构
DROP DATABASE IF EXISTS `db_fcshopping`;
CREATE DATABASE IF NOT EXISTS `db_fcshopping` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_fcshopping`;

-- 导出  表 db_fcshopping.admins 结构
DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `adminID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT '',
  `password` varchar(50) DEFAULT '',
  PRIMARY KEY (`adminID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  db_fcshopping.admins 的数据：~1 rows (大约)
DELETE FROM `admins`;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` (`adminID`, `username`, `password`) VALUES
	(1, 'admin', 'admin');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;

-- 导出  表 db_fcshopping.commodity 结构
DROP TABLE IF EXISTS `commodity`;
CREATE TABLE IF NOT EXISTS `commodity` (
  `commodityID` int(11) NOT NULL AUTO_INCREMENT,
  `commodityName` varchar(50) DEFAULT '',
  `commodityClass` int(11) DEFAULT '0',
  `Manufacturer` varchar(50) DEFAULT '',
  `commodityDepict` longtext,
  `commodityPrice` decimal(8,2) DEFAULT '0.00',
  `fcPrice` decimal(8,2) DEFAULT '0.00',
  `commodityAmount` int(11) DEFAULT '0',
  `commodityLeaveNum` int(11) DEFAULT '0',
  `RegTime` datetime DEFAULT NULL,
  `image` blob,
  PRIMARY KEY (`commodityID`),
  KEY `FK_commodity_commodityClass` (`commodityClass`),
  CONSTRAINT `FK_commodity_commodityClass` FOREIGN KEY (`commodityClass`) REFERENCES `commodityclass` (`commodityClassID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- 正在导出表  db_fcshopping.commodity 的数据：~9 rows (大约)
DELETE FROM `commodity`;
/*!40000 ALTER TABLE `commodity` DISABLE KEYS */;
INSERT INTO `commodity` (`commodityID`, `commodityName`, `commodityClass`, `Manufacturer`, `commodityDepict`, `commodityPrice`, `fcPrice`, `commodityAmount`, `commodityLeaveNum`, `RegTime`, `image`) VALUES
	(10, '先锋DS6119 ', 9, '先锋', '专用烘衣架配加湿盒、薰香功能，舒心生活好享受；  \r\n贴心的旋转开关，多段功率选择，满足不同温暖需要；\r\n性能优良的电热管，绝缘好，使用寿命长； \r\n配置先锋专用电源线，抗折叠，独有电源插头内架设计，安全可靠； \r\n高沸点钻石品质，高效永不耗损导热油，预热灌装，无水响，终身无需充油；\r\n高强度优质进口钢材，经久耐用，绝不漏；\r\n采用无铅塑粉，一重打底、二重净喷，色泽亮丽，健康环保。 ', 519.00, 269.00, 100, 100, '2009-11-15 10:37:24', _binary 0xFF3F3F104A46494600010101006000600000FF3F4300080606070605080707070909080A0C140D0C0B0B0C1912130F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F27393D38323C2E333432FF3F43010909090C0B0C180D0D1832211C213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232FF3F11080062003F012200021101031101FF3F1F0000010501010101010100000000000000000102030405060708090A0BFF3F3F0002010303020403050504040000017D010203000411051221314106135161072271143281913F2342B1C11552D1F0243362723F0A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F93F3F1F0100030101010101010101010000000000000102030405060708090A0BFF3F3F00020102040403040705040400010277000102031104052131061241510761711322323F144291A1B1C1092333523F62723F1624343F3F18191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFF3F0C03010002110311003F00F7FA28A2800A28A28010BAAF5603EA69BE6C7FF3D17F3A3F5FC5D756FAEDFC5F678D84733F7AF0D8C9A8C78E1D573F57A75F538FE59A9E61D8F58BFD5ACB4D8D5EEA6DA18E17003F2A3F8AB43FEC9291EB3FF24BFF0013497C4BB4583F03B0AD5D07C4B6B15DCAF30DAA8A00C8F535B287B9CE723C42F6DEC6FA9EAB69A95ADE9220909206482A47F3AB5B947561F9D7063FD385AB5CB1F94825143F7FC2BCDCF8B759FF0059F68CEEE73F95EFB1D56EE7D09B8119C8C52D7C93F11AED935ED36E6067B796EB4E8E7B3FD97C3F37CC403D70057B7FC0E79A5F86B04B3CB2485EEA62A6462481BB18E7E86981E8F45145001451450014514500145145001451450078AF882C3FFEA4C7EF353F8EC43F003ACC963F26E994F28F84E3E95D078953673F1FFAFA0DF98159720FDCDD8FF6B3FC3FB9AF4214B08E3BC9630414F2B3C8EA79E955A5B4135BDA4A362B4B26081D3F5A3F0097D73FF4CFFC6A3FE87643FDBFFD963FB588F651E6E6B6A4074967BA9AD9651B6240C093C7DD26B9758251726463FBB20E067FA576AA717D7ADE8BFF00B2571C9F6833B8707C3F323F2A701C3F88A71AFE9CBFF3CF4A3F9863FD6BE8DF3F78D3BE19E8B1773F393F7D3F5AF9F7C5B25BC7F10ECBED703FBC76968248E47DAA473F043FF4E784E1363FD2A2E36A3F3F731F2FE38C67DEAC83663F3F3F3F3F3F3F3F3F3F2AF16C7B7C43A87BBC6DFF008E8AC8957F7777F9D7473FBFE27B76DFDE3F3FFE953F7CB75EEB9FE7593DCD56C45B7FD2FE3F00535536FF00A25A7F3F00B2D6804FF4A5F78FFAD55D9FE896BFEF9F3F3F033FFBE87F3FE6587CA7E95D515FDF5F7D1BFF0041AE69D7E53F4A3F232EFB4CB3D57E30A59EA5B45A795007566DBB80814D7D33A3C6D0E8D671323F0A3F800C0F3FE55AAFC33F3FE58EB37724AA633F3FE04A500D3FB8E03FD840C280063E95640B4514500145145001451450014514500145145007093FBFE26AEDFDEB75FE6D580F167CEF78FF00A1AEABC5E99BD8DB3F7E4DFF00D7AE7C264B0F58C7F2FF00EBD43D3F3F11FB445C754FEB543FA2DAFF003F3FD745FDF41C7F0F3F48C7FE8D6C3F3F3F48159D70F7E7FDEF3F5736573C575D245F26A07D37FF00215CC79677A8F5223FB3D4EDC65624F5DA2BB1AE46CD775CC2BEAEA3F5AEBAA890A23F00A28A2800A28A2800A28A2800A28A280393F13FC96AE7A1465FD4573AAEA5FAF4503F95763E24B0FB7A3F3F3F8572B368F36094EB2723F0A87B96B6215F3FF4E3FF0041AACCBFB8B7F673FF00A0D23F3F3F81823F00E78A85AE0A9D8CBF77E6FD314864D2AFEE750F7DDFC8573AB166583F3F3ADD6B98E48A601BFD6648CF7CD66DB857B88B1CE1D73F9D5C362647A0688EF36A7B5108583F3FF07A7E95D6773F6F88B3C1E321A5D9CB6D6F670CF1C573712A97F9D8E0463F3FFD8F615ED14C90A23F00A28A2800A28A2800A28A2800A28A2801AC8AF8DCA0E3919AAED6313FF1B73D7DEAD514018CDA402D6EAC8085CEEAC2B9D051E18C818691CA9FA5763F3FEDDCA3E539143F9E5DA8E91FD9E13F3FAB613F7F95644577656E86F3CD4545703F80E4827B753FF2AF51D6B401A9E93F3F0F3DB2C8003F838C9070783F5C3EAFE1163F60956E10A0F295C90408B39D838E3F5F7ADE8468DED51B473D79564AF4926707F0C23FDE7BCD42059A46BEFB50CAEE21FA823DC64D7BFA6B16D24C3F4C593FFDDF19353F10F8793FBD461BC8A63F4C3F72424833F274CF5001E2BD5E1F0EC09690C32DD5E48E8AA19D6E5D37103938078CF5C563529BE63FA76B7F3F84DD3F6B3F0000D8A23F1851451400514514005145140051451400514514005145140050403D68A2800A28A2800A28A2800A28A2800A28A2803FFF),
	(11, '美的空气加湿器', 9, '美的', '美的环境电器事业部，是美的集团旗下支柱产业之一，集各类通风及空气环境处理家电产品的研发、制造、销售、服务于一体，包括风扇、取暖器、加湿器、空气净化器四大产业集群。主导产品美的风扇连续15年全球产销量第一，成为无可争议的“全球风扇首席品牌”，美的电暖器产销量、市场占有率多年来稳居国内同行业第一，充油式电暖器成为全球第二大制造商。加湿器、空气净化器等产业也在快速蓬勃稳健发展。2008年实现销售突破50亿元，2009年目标100亿元。                                                                                         \r\n面向未来，美的环境电器事业部不断追求卓越，立志于改善人居环境品质，致力成为全球最优秀的环境电器制造商，为人类创造美好生活', 129.00, 89.00, 100, 100, '2009-11-15 10:39:01', _binary 0xFF3F3F104A46494600010101006000600000FF3F4300080606070605080707070909080A0C140D0C0B0B0C1912130F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F27393D38323C2E333432FF3F43010909090C0B0C180D0D1832211C213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232FF3F11080062003F012200021101031101FF3F1F0000010501010101010100000000000000000102030405060708090A0BFF3F3F0002010303020403050504040000017D010203000411051221314106135161072271143281913F2342B1C11552D1F0243362723F0A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F93F3F1F0100030101010101010101010000000000000102030405060708090A0BFF3F3F00020102040403040705040400010277000102031104052131061241510761711322323F144291A1B1C1092333523F62723F1624343F3F18191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFF3F0C03010002110311003F00F7FA28A2800A28A2800A28AE7758F175969859103F78273F283FD693928A3F3F547CB0573A2AA97DA9D9693F6EEE638947F78F27F0AF37BFF1FDF4C0ADBE573DF1802B95BAB9B8BE98CB733348E7FBC7A572D4C6423B6A7A3F8AB377A8EC8F57BAF172838B3B4793FD3F07E55147E2CB3F003D8C6EBE89261B3FE6765AB5E53F1C3C63FE593F3F0EE2B7ADBC536A3F9B69233EA9F30FE86AA18C3FDD8CEB65388A6FDD5CCBCBFC8F49D3F58B5D40EC42D1CC3A3F3FF5EB42BCE21D5F4B703FD88D93904A3FFA576BA26AD06B3A78B886403FC6E40C7CC3FCE6B75384BE177386742AC15E716BE4695145154641451450014514500145145001451450073F3F603F233467F7D31F2D3FA9AF20924799CBC8C598F735DAFC4A3FA8D9DA83C4713FDC9FFEB57143A66BC9C6D46E7CBD8FA9CA3FD053EAC92DAD9AE2658D7B3F82B6D74F48D576A29C75C8A6E8900F224988E59B683F3F315CF0869767555AAF9B3FEEA5123FA8550CC7D3B5656DC1C56C6B0D9BCD9FDC503FAD65113FE7A92F79A3B28AF7133774B844B64991C1241ADBF00DC9B33FF69AC7E4954B28FF00694F3FD2B37435FF00897A93FDF6A5D3A53F8F6CDC701E50A7FE04B8AE3F965097F5A9E762E3ED21561E4DFDC7AC5145153F221451450014514500145145001451450078FF008EA7F3BC597033C46AA9FA7FF5EB3F3F4D2F9DE26D45FF00E9B91F3F96A63F463FF6D838F2D082F24757A480BA7C233FFAD68B91C0F53599A73F3F4E06C15627B955899B703FFDEB58AF74E59FC6EE73B7B379D793483A1738AAA7A9A504B8C8A4C11935E6C9EBA9EBC52492474B3F1A7AAFA3B7F4AA9A94BE46BD6B383CA3C6F9FA354BA2B73F3D1CFF004AA9AF9C4E8DDF61FE753F713F438B96F564BBDCF6BA2A2B673F617F3F3F98A96B3F2428A28A0028A28A0028A28A002827033453643889CF5E0D00781E3F9DA9DDCBFDF99CFEA6A015D16A5E11BC476B3FF68898EEF2F3F3AE7F9D603F3F8E683F1FC2EA41FD6BC5AF4E7193E647DAE13114AA41723B9BD6BCC11A93C6D145F056B573939098FC2920CAC6A3D8525C1C3FF55354A4D2D0C9D38CA77660ECC0E18D2EDE7A9FCE968AE16D9E928C51BBA3FF00C7B1FF007CFF002155F5E3968FFDD6A9F49FF83F00819FE95575A399A3FA1A3F000CE68FF18F61D1A4F3743B093FBD6F19FF00C7455EAC8F0B397F0AE96C7AFD9D073F5EBDF83F7C4D5569B5E6145145510145145001451450014119041E868A2803988D4C6CD19E0A3153F853A7852E21643F3FC6E00FF3A93501E56A927185701BF1C7348AD55B929B4F43260D1E190AC773A6AC7FF4D619B8FC4714F97C29652A90B34C99F706B5C352E6B37469BDD13F5D783F724D3FFF0083517F3F43FC693F3FFF00A890FF003FFD7AEA6794471E7CD58CE782DCE7DA8B3B85991B3F399C7DE09C6C3FB2784A3FCBF93F353F003FE0BFC8C7B2F06C76D16C6BD76E49C88C0FEB56BFE115D2C43FF1BD3F41237CBF90EB5B01A863F29AB587A4B68994F1D889EA3F002FC8D0B150B6510000017803B0AB14C89364489E8A053E3F828A283F3F3F3F3F3F3F9D6E026DDAE111DDE35CEC41966FA7BD62D9DF2DC46A3F8DBBA4A85187D41AEBD9430C1E958D7FA2A4E4BA70DEA29DC4D154383F7C5674F0DCE9F979E754B75F3F3F7A9355D7550FB8C3B6E22076F9B13065269DC5628EBF3DC0C33F292570AFCE3B743FF15534CBA95AF2CC452992612AE39CB08F3F1FF6718EBC6E3FAD692F2DE58DD25B5DCAFCB2B2673496D736D1BE213FE36E76E38EBDAB0F64FDAFB4BE876FD6A3F55F63CBAF737C4B53A7CC50772C05663F4707CC5627DEB52CE2925B9562A4469CF3DCD63F3628A28A92823F3F3F3F3F3F3F3F3F3F3F0C323FD45569ADA054004118033F28A2803325B7873FEA63FF00BE4546B6F0E7FD4C7FF7C8A28A00ADE21B7857C2F73F3F206521464104608F7AD2F03FF08C58B7F1321663DC9C9E4D14533F3F5148023F3F3F3FFF),
	(12, '美的电磁炉SN216D', 10, '美的', '黑晶面板：德国技术，防刮耐磨，持久耐用；\r\n时尚触摸屏设计：触摸感应控制按键，美味只需轻轻一点；\r\n预约定时功能：24小时预约，3小时定时，轻松烹饪无须看管；\r\n文火功能：美的独有文火功能，低功率持续加热，煲煮更美味，更营养；\r\n八大烹饪功能：文火、武火、煲汤、煎炸、炒菜、火锅、蒸煮、烧水；\r\n国家专利百芯聚能大线圈盘，100%发热面积，加热快速，均匀，省电；', 399.00, 235.00, 50, 50, '2009-11-15 10:41:00', _binary 0xFF3F3F104A46494600010101006000600000FF3F4300080606070605080707070909080A0C140D0C0B0B0C1912130F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F27393D38323C2E333432FF3F43010909090C0B0C180D0D1832211C213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232FF3F11080062003F012200021101031101FF3F1F0000010501010101010100000000000000000102030405060708090A0BFF3F3F0002010303020403050504040000017D010203000411051221314106135161072271143281913F2342B1C11552D1F0243362723F0A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F93F3F1F0100030101010101010101010000000000000102030405060708090A0BFF3F3F00020102040403040705040400010277000102031104052131061241510761711322323F144291A1B1C1092333523F62723F1624343F3F18191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFF3F0C03010002110311003F00F7FA28A2800AE4BE2278C4782BC35F6E4F23ED533FB7FB406F2F7904E5B68271806BADAF2BF8EF363F8574B5D24CBF699751540B12E4B8F2DF8C77E94981C6597C63F1FC8CCC743FC8B3B44969033A67DC87E0FB1C7E154A7F8E7E334BAFB3203F4316FB97313324673D321F9C654719E7A56268AA7C51A24B210906A491B0591506D942F5475E8CA4763D0F4AC0874F5B6B3F16D6EA67568A5B4B803F3FB0561F3290423F9E41048350A7ABB97CA76A7E3A78EA40A6CE2D1E3F6D3F3F0704E0A96C3F3F4B3F1FC69FF3C349FF00C077FF00E2EB173F2EA1A7DDB53FAB4CEFB23556DAA84E791BBEF63A9C64000E4D737AC59E9B6F6B6925B5C44F3C80F9D1C4E53F483F3F47073C0F5A52BBB09AD2E7A57FC2F6F1C7968E23D18E3F003F5E3FF1A493E3B78E9256410E8CE01203081F07FF001F3FFDDFF79F3F6CDDF71F77B7435449EBE7E3BF3FE7DF473F6F3F917E3C78EDB1FB8D1C64E3981B8FFC7EBC783F0491464FA9A00F6FB0F8F5E29B5BE865D5ADB499EC7CC0B2A5BAB248413C3F88CF7E457D1C0865047423353F6499539FE215F7D47FEA93FDD1400EA28A2800A28A2800A28A28003FF8DF34F17842CC433F10F7815E538CEDD8FC0C91CFD39AF4DAF1BF3FFE446D37FEC24BFF00A2E4A4D5C0F13D3F5AB9B73F743F3A83F342B24D8C48D27049CF4C7AFF00FAABA77B3F44B1B88F53733C1753235B3F090444423F6D3F9F6E2BCA6AF6A5A9DE3F664BB9FCC16B0A3F3F228ED81FCEA254EECA523FFEB177243FF0DF5C3D996654DC705D33C6EC753F1ACCA28AD12B12145145004A184836B9F93FF8D4641524113F2A47F9E3573F533F013FAD4FF7857D3FFAA4FF007457C0917FAD4FF7857D3FFAA4FF00745003A8A23F28A28A0028A28A002B3F0068FF003FB4DF3F2FFE8B92BD92BC6FF68FFF003F4DFF00B092FF00E8B92803E668C664513F1CE5D8FA9A10E1D43FD2C836C8C3D0D003EDA1FB45D4503F3F5DCDD0643FB496DA75F8B8834ED3AE196DD37B5D34FF00391B82EE298C603F75E7AD61C4CC3F263729C8C8CD6FDAEB0DA7594C3F3E43CEA55C99432F23AED233C75009383CF38A4D3E83BAEA507D035249A6883F6855DA423908143F3D33F29FAD5492C23F2192D66411805F72113F33E95B47C4FAC4EC3FB3972C4AB796328C413F73B8D4577AEEA9716D74B379212E000F85E40C83C73F3F37773F91854F4FF5720F607F5A653D7889CF3FF9FCAAC9122FF5A9FEF0AFBE3F00549FEE8AF8122FF5A9FEF0AFBE3F00549FEE3F7514514005145140051451400578DFED1FFF0022363F006125FF00D17257B2578DFE3F003F69BFF6125F3F25007CC9523FCE81C7513F4A8E9C8E50E473D883DE80115B693FABAF7A3F1B1B3F69E98AAA630DF347C8EEBDC5474D3684D27B9279BEAA29BBCE31C7E54DA55566385049A2E1612AFDDD9A41A7DA3FE6453F418CAE1B3FFBC0703356AC633FB5BCB1A42D777258A493803F2F56C1E339073F038E4D6B6B3617B6DA80875E3FE66B51710DCAF33F00303FF6C6462A2FA95639686095C79CB1393F43385385C93FB57D3FFAA4FF007457C95A0787AD4F874CD7DAD4A9613FCDBDB67E70181F98F2A47CA083C1E715F5AC673121031F28E285243F3F3F3F5145140051451400578DFE3F003F69BFF6125F3F257B2578DFED1FFF0022363F006125FF00D1725007CC9455BB7B58A6B5790C3F0E156258CB6E041C9C8F4C0FCE9CF6482DD645958B95C94F28F072475FCA80290383915279AC7E3FFEF03F628A57E79796DBCC47F9F73FBC5117DC64603F2BB0E49F7A0083CC1FF3CD3F2A1A476182783F0A3FBBBAAED946481F787F3F5A6632C1DB82DC08C9E9EFD2802E5948F791DADA444ADE452116E76E433F703F3B72735D85963F9EDF6ABCD6743B5922203F08640D8E8194B6E0411F7718E9D6B8FD313FAD520BCB727CD864C0DD13633FEFD091EB55E4B53F9D51A3533F083F7A64FF003A869BD8A4EC751E2AF1C5D6B70C5A6453235AAB8691E38CC6B2913F2490A33F4F3FEC88FF003FFBA23F683F2884933FA95FD0D7DED1FF00AA4FF74538C5455909B6F71D4514550828A28A0028A28A002B3F0068FF003FB4DF3F2FFE8B92BD92BC87F68AB53F00593F4CF1C13FCAC07D3F3FF6C9033F01F35D3F1FF7BB002304C85077EF4B703FD470ACC43F6524DCA793D0FA557B7BBB8B4666B7993F304A36322926B99AE26F36695E4938F998E4D20342E54C76E2457981FBCBBA427D393FE8B78BCDB7799E78C9551B965986E7C9FE15203F9EF73348A55E462A7B1342DC4C3F5C803A7B5161976C10DCDF2C05E24CB845770AAAA49C649C7029B796C2DB503F3F1214678E4DCADC3F3F95E3243F4F5F7A1A691D95993FD0FA5022EDC44120DEBE6A3F025F3E9FE34B0AC5F674620C3F3F47193C0F3FF7C5537B99A4523F107B1A3F773F3FB7A555CBAA3F8F52335F7B47FEA93F3F3FAC524F770C30A3492C3F3FC9624E0003D6BEF840446A0F5005003A3F3F3F3F3F3F3F315C42F0CD1A49138DAC8EA03F3FB45140191FF087F863FE853FFF000063FF00E268FF003F3F3F691F3F1FFF00134514007F3FE18F3F348FFC013F0089A33FFF000C7FD0B93F3F7FFC4D145001FF00087F3FE85C3F3F3F3F8FF8433FFF0042E691FF008031FF003F51400BFF000887867FE85D3F3F3F3F8FF8443C33FF0042EE91FF008051FF003F514012DAF86B42B2B84B8B4D134DB79D3EEC915A3F3F1915A94514005145140051451401FF),
	(13, '九阳豆浆机JYDZ-56W', 10, '九阳', '生产厂家：九阳\r\n型号:JYDZ-56W\r\n可制作：五谷豆浆、干豆豆浆、果蔬冷饮.\r\n容量：1000-1200ML\r\n适饮人数：2-4人。\r\n功能描述：\r\n1、多功能：五谷豆浆、干豆豆浆、果蔬冷饮.\r\n2、文火熬煮技术，熬得香又透\r\n3、智能控温营养更丰富\r\n4、无网技术简单易清洗；\r\n', 329.00, 199.00, 500, 500, '2009-11-15 10:42:27', _binary 0xFF3F3F104A46494600010101006000600000FF3F4300080606070605080707070909080A0C140D0C0B0B0C1912130F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F27393D38323C2E333432FF3F43010909090C0B0C180D0D1832211C213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232FF3F11080062003F012200021101031101FF3F1F0000010501010101010100000000000000000102030405060708090A0BFF3F3F0002010303020403050504040000017D010203000411051221314106135161072271143281913F2342B1C11552D1F0243362723F0A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F93F3F1F0100030101010101010101010000000000000102030405060708090A0BFF3F3F00020102040403040705040400010277000102031104052131061241510761711322323F144291A1B1C1092333523F62723F1624343F3F18191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFF3F0C03010002110311003F00F7FA28A2800A28A2800A28AABA95D8B1D36E2E3B3FA3D4E3814D2B3F3692BB331EF2FAFA577B593FE1DA38F6C61D3FE0B73C019CFE543F59BFE5F6E7F08A314B65241A6D9D9A492A9291053861F7B193FAE6ADFF006B413FD99147F5AB94ECECBF2328D3E68A72BDFD594FC8D573937973FF007C47515C49AB5A443FC3C8D1A9730CD1A80EA3A80474353F78BB85CFA03FF5A61D4AD6E13F2A8CF24B0C631495477D7F21BA4A3FBE6CBD67751DED9C37317DC95038FC6A6AE7BC2970AB673581705ADA6754E7AA67208FCCD74344E3CB268AA73E7829051451505851451400514514005145140051451400560EBB62BA8DD450BCD2C6AAB9C21E33F4ADD240043F1D493F3F39352045CC617680193F3FC1A69B4EE89945495994D3C1F191F25FCCBF3F3FF1E1061F3F93FE3F00EBD743032B282ACAC33FD54974712DC3CDFDA13FE39D3F0A3E82B6588A9D3FA9D07D3F1664FF003F4939D464C7FB9FFD7A46F08458F9EFA66F3FAD65D1504D14A6F6F98C6F3F9C907924023B8E6AF4A42A92C401EA4E28FAC54EE1F53A1FCBF8B39BB2D0EDAC750864492666563FC0FD2BA7C95386E9D8D73B77ACE9B6B70824BD877EE18447DCDC9C7415AA755B26257CD06B1949C9DDB3A2103FA2AC5FA2A0B5B85B88C9503F9B86091D8D4F48A0A23F00A28A2800A28A2800A28A2800AE5BC49A723F3F3C81C823233F005ABA9AA3A946B2468AC3209C7E8680393F4BB28A3D3F573F055C89F43F45C28E78CB915CCCDADDDD8DFA69C4452472ACA43B21DC8C801C7BF5EB5A967E5DC47134CC8CC78C85C734ACC5746A4ADA5B2E5E3F1FED9AA461D36E49583FFBA67F9D583F5537A0C64641DB5C673F4BAAE86B1C96A209434E919F322E818E3B11CD4F32BEA5583F3FFA904D3D204915D5FE6F9460383D87B56F3F795955E6876B3360387DC8C7D3A0C1FC293FB795544D72805C3336E3DF15B3AC45E7E8F7680953E59604762391FCAAAC221D35B69817B18CA7FDF2783F6A561E3F916D18A853B9C75E3F39ADCA60145145001451450014514500145145001556FBFD4A9F47156AAAEA3FF1E4E7D33FE07C4AA0F88B423F7D3FFDFB07FA5747A5E93F3F3C051F90AE7FC48EA356D05B1CFDB654FF00BEA2AEBB47E2CE21ED4EED6C4B493F3F4636C8DC0EF5E53F10B16C3F4939D4A01827AFCC6BD8EE79435E353F6E9F4B8FD75380FEB5373F8F5AB0E2E8AFA16AB5AA3F97A55D3F3FFCAAA5810D7EF8F7343F9BCAD29901F9A6658C7E7FFD6A632BE8E984B33F8673839C7C3F76B2F43F203F009E51053F3F3FA56A50014514500145145001451450014514500155752F3FCD8FEED5AAABA89C69D3933F033F44E4DC68EFDD752419F4DD191562CFC4BA863FB39AD2DDC0C85904E067073FD6B37C497F676BA7C1353F563F2311F2CC423F3F78D2FAE9CC767A15C9413F9994647738EB49B570483FF156AF79643F3ED77191D152394B1C29C64838C5703F3773EABA19BC643FFC44220FBB89107F5AE8E2D6EE2C3F15D25835C7EFE462AADB4E09CF7AE2EFFC423F3F87A35B1B3F22F55DC4A474DC873FBA683FD8F63FB76A5700740BC7E62A0D413F005D3FFEE2C94C92B7603F87F33F3AAADABDFCE06F90943FFBBB11FCB93F36D1D628EDA51999CF9F76DD72493F89FD073F1AB6683F3F7909761E84F63F07E15628A2800A28A2800A28A2800A28A2800A28A2800A82F555ECA757FBA50E7E98A9EA9EAAD2269770D144656D9F707561DC7E593F313F59752525EEE5B6789F6C1E50046D1C6581E03F3B567C763ADC7122497F1C3F763F5719E7D0D6BC5697F25B88A03F41230512C7E615003F3F4C522E9BA9423E57B09181EAF0C9FF00C5D3712532DF952F3F13A4770401C8F34296CFE58AE3743FBABC3F3739244BB47071D7D4D7656E75131C91DC3D3F08C2463F3F3F8B7B61F699E16B7824FBCA62539F4F3F1DFB50E3713F2786B4974D5DEEAE58CCF63F511C70CED927E87819F6AEDEDA0F2233B9B748C773B7A9FF000ED581E16D3DECDA5319636A3FCFC99243D5F2793C60673FA5A43F145140C28A283F3F3F3F3F3F3F3F3F9EDA09092F0C6C4FF7941A69B3B6E3FD1A1EBFDC14514C4396D6DD4E560881E93F62D95A83916D0E7D7CB1451401623F3FA28A2800A28A2800A28A2803FF),
	(14, '飞利浦电动剃须刀', 11, '飞利浦', '独特的提须及切剃系统\r\n此独特的双层刀片系统可将胡须轻轻提起至适当的切剃位置，从而使剃须更贴面彻底。\r\n独立浮动刀头\r\n根据您的面部和颈部曲线自动调节剃须角度\r\n电源系统 \r\n剃须时间 运作时间长达 60 分钟  \r\n干电池操作 使用两节五号电池电池操作 ', 99.00, 77.00, 150, 150, '2009-11-15 10:45:33', _binary 0xFF3F3F104A46494600010101006000600000FF3F4300080606070605080707070909080A0C140D0C0B0B0C1912130F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F27393D38323C2E333432FF3F43010909090C0B0C180D0D1832211C213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232FF3F11080062003F012200021101031101FF3F1F0000010501010101010100000000000000000102030405060708090A0BFF3F3F0002010303020403050504040000017D010203000411051221314106135161072271143281913F2342B1C11552D1F0243362723F0A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F93F3F1F0100030101010101010101010000000000000102030405060708090A0BFF3F3F00020102040403040705040400010277000102031104052131061241510761711322323F144291A1B1C1092333523F62723F1624343F3F18191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFF3F0C03010002110311003F00F7FA28A2800A28A2800A28AE63C6BE20B8D1343F614DC4A4FCC4FDD51FD49C0068033F0192401581AC78C34CD2A5483C3FEEEA9853F2A1270373741C9AE5A0F1273FA293EDD7E1A51CEDBB665D83D03FFF003A3FB3E10B88DA2B4BFB4918E772C677295F42BC83FCE803B1FED0D56EE3DF0C96F63FDBE5F98D8F53C8A8BFB6753B321AEBECF344C09C3F3260756193C71D735E3979A8BC3E68D3AF350B25676F2E3866276AE78E0E713FAC59F5DD5A1262BABEBDB80C318B897231FEE8EBF8F145803F43D7AD35FB433D3F3FA1EA3F073FD0D6A57917C1BD4A4B8D5B5B8656C978A1947E0581FE62BD76800A28A2800A28A2800A28A2800A28A2800A28A2800AF1CF8A7A3F37313F201101F864FEA6BD8E3FC756773FD55EE6C04263777122BC9B763AB1523A1C3FF1A00F28BABFBE8A23E5DD4C3F0D3F3F3FABA83F537B3633D3760576FA87803588EDDDE6B8D3E2455DC7F78EC71FF7C83F3C33676CE24BCD6A18D7BE3FFF00423FD28E641665FB6D563F771B3F013FE953E9F677FADCBE65A5B4F3A93C3F3FFDF63F0CD2C7ACF85B49506DADA43F57A3CC72A0FB646D1F829AA7A878CB583F3FECD03FC1C71E9BBAFE58A35623D8BE194567A2F8BBFB3D3FB8D4AEEC9DDD22FBB12A30E3EB3FC857B1573F0B99878EBC372AFDDF223F3F51B87E67F957D1940C28A28A0028A28A0028A28A0028A28A0028A28A002BE4DF8852DD5978C753B38AE268D04EE3623901BE733F3FF5957CDBF1C349FECBF1B43A82AFEEAF1165FF003F030F3FC69A13386B3FCE543F0E63232DF3738F5E6B8EC63A3F7AEEEF977C448EE23FB5937EF651B09F5FE9453F3FB6E78EF5723134B2AC163F3F711C48A5998FD0576BA178674ED6AF2DE2D42EA5861DAC4084ED2C460E09C1C0C67A57A8E91A2E8FA0C58D1F4C3F47CD7136413F527E63FA543FA0F95BD4E53F6D269BE20D004F1186E03F446FBDBB690D9FC6BE89AF9F7459BCDF1EE9F216DC5B52197E9BFE73D0761ED5F415300A28A2800A28A2800A28A2800A28A2800A28A2800AF2DF8EBA19D47C19163FE64B093F073F07F5DB5EA554F56D3A1D5F48BBD33F315CC4D137B64633F8753F90EDE6F3F4C83F206D3F51C550374A64DB870E38383FAD5FEC7B3FEB50B4BA88AA453B4409EEE3AD62483F0FD6A9363FA4F73A3F3F64D4EC3F3F650CF8C9C1F94FF3AF595F2DE556CC92383F7E46E9F415E276E372E093C8EBE95D4C3FD4EE6D3ECC7C98B70D3F408661DFA93FD49DD94AC8BFE1D7CF8BB4C909C96D46339FABD7D195F36787CF97AE694DD96F213FF8F8AFA43F28A28A0028A28A0028A28A0028A28A0028A28A0028A28A00F15F8AFA17D9B586BA8D7115FA6F07B099383F98C1FCEBC4AF176DD29C75AFACBC773F006D785A3F3F107E3F5CAF51F88C8AF9675C8B65C0703E56391F5EF4C4CB96A998D4D5F8933F3FA4F3605AED562D034C7060493F3F0F203F41F4EE28046458B186E2D65E46C9A3707E3F7D335F395F5E5C3F1E7DC6CDE142A8450A0007207EB5F45C6498D09EB8193FD4514500145145001451450014514500145145001451450015F347C4AF0C3F3FB6A8B88A51F68B6F4C1EDF81C8AFA5EB92F881E10B4F15E84C925E0B0B3F305E601D99EA083FE7DC5007CE9E1A7F3A300735D9DB3F1F76B99D2B3F27F0EDFC9041676F7F196F965172021F7191BBF4AF44D1743B3F26B486553F0B47F2D49F42C7923E98A622C7853C2CDABE3FD2467EC36EE1A473D1C83FF5F73FEBF58BA46A3F797A7C36ED66C8B83F3F3D88ADAA430A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800AC3F1100CB0AB004618E0FAF145142030ACE28FED2BFBB5FCAB5628A3D83FF4F4A28A622548621710303F09570768C8E6B7E8A290C28A283F3F3F3F3FFF),
	(15, '任我游GPS导航仪', 12, '任我游', '双图双雷达，旅行者+凯立德双图配置\r\n内置智能向导引擎、实时互动纠偏功能，打造GPS简单易用的全新设计理念\r\n详尽双倍图资+智能超速提醒+DIY雷达点+多种方言语音导航，多重体验，更加贴心\r\n雷达出行全攻略，测速报警、超速提示，限速行驶快速响应\r\n全境式导航地图，方便跨省导航无边际\r\n支持AV-IN，可通过本机收看DVD/VCD等视频输出设备中的文件\r\nFM发射，可发射本机内的音频文件至汽车音响系统，声音传达更直接、真实\r\n超大5〞TFT液晶宽屏显示器，16：9舒适视觉显示\r\n影音、电子书、图片等多媒体播放功能+记事本、计算器、日历等多种商务功能', 2280.00, 1450.00, 500, 500, '2009-11-15 10:47:58', _binary 0xFF3F3F104A46494600010101006000600000FF3F4300080606070605080707070909080A0C140D0C0B0B0C1912130F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F27393D38323C2E333432FF3F43010909090C0B0C180D0D1832211C213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232FF3F11080062003F012200021101031101FF3F1F0000010501010101010100000000000000000102030405060708090A0BFF3F3F0002010303020403050504040000017D010203000411051221314106135161072271143281913F2342B1C11552D1F0243362723F0A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F93F3F1F0100030101010101010101010000000000000102030405060708090A0BFF3F3F00020102040403040705040400010277000102031104052131061241510761711322323F144291A1B1C1092333523F62723F1624343F3F18191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFF3F0C03010002110311003F00F7FA2ABDF5F5AE9B652DE5EDC476F6D0AEE92591B03FB5C33F3F0BF9A52DCDDDC2838DE918003F413FA4DEC26D2DCF41A2BCEDBE2F3FF96C2EC8CE324A3F7AD3A3F8B93FF9EC2ED460720A3F3AAE4976173C7B9E8545710BF14F416FF9637C3FED90FF001A907C4ED04FFCB33FF6C7FF00AF4B925D839E3DCECE8AE3C7C43FFF0005EFFD3F00EBD3C7C46D0CF45BDFFC07343F3FE3DCEB68AE547C413FB97DFF0080CD4E1E3FD0FB9BB1F5B67FF0A53FC1CD1EE75145731FF09F3FBCF38FAD3F003F3F3FEF7720FAC0FF00E147243F347B3F153FC27DE1CF3F0023FED8BFF8523FF86BFE82407D627FF0A3965D8399773A4A2B3F0084F33FF5441F58DFFC2B434B3F91AD165D3B5086E1D796456C301E3FD2B3433FE8A28A433C5FF684D46E6DB4DD0E3F3F3F3F6628176E7E9B893F3F66CBC27ABEAB0C711BD84FC8CC80E0713FDCFED18BFF0012FF000F3FA4F30FCD573F3F2A773F3F3F7F4155D1903FB7F1C78B6578E38AEAC9E570088D6D771E467A01533FF8B1633FC69DB376DDC6D4E377A671D6B93F6E6DE4823F85F310531BEEE4153F1FD0D53FF4D14B184B657927F3DA42ECBF36083C138E726B34A4F60719A577A1BE3FBC5433FBFD2480327FD17B7AF4A94FC48F162C6B22FF0063C884E3703F1F4358DA5586BDA6ADC7F67DE58AB5C4462914CA8CC5733F3F553FC9F536967B896DE1913F658E68C64A2805B071C9E4F143E64EDD7D098A943F7E8BEF3447C4DF1563987473FF006EC2ACFF00C2C4F17A052DA76958613F631C8AC95F0B3F003F77F45309FD7755F5D3A2483FD675143F3031C4C401D36E1A3FD7473F4F6553A5BEF5FE6595F895E2ADA43F230B3F00A274CF4A433FC480E1B43F9F436D8ACE96D1D6F0B47AC5EBC0E0066685553F1C720F5345CE87A55C4A3FB7A848EC7E62F68A3F93537392FE995EC2B762F9F899AF11CE91A1B7FDB13FFC49D64FDEF0FE86DFF6CEB1DBC3F6613F69F6771F6625BF9E2A41E1DD28839D6E3F6DD6591FA352755AEBF987D5ABBFB25F6F88FA99FB3F3F3FA26F88B7E7AF3F63F45AC77D123F035398F381FE8C79F7EB53FF003FF2C65E0BDBB703D6C5B1F9EEA5ED9F7F3F16BADE26F787FC589AFE3F937DE1BD3604B8C8673F978CE4572179A8DD786BC5D2DC693F243F04C4D93F433FE08AD4F08D93D9FC44B7B672EED1A16259361FBA4F4A3F44DE77887513FDE9D87EB5BC24DAD4C651B6FB9F64DACFF69B382E36EDF36357C7A64668A4B24F2EC6DD3F3F8FD28A83533F0068A4CF87F447FEEDE38F3F3FE69E0AC3F87B5C89BA18FF00A1AF54FDA163CF83B4C93FBBA801F9C6F5E51E07F9EC3578BFBD173F3F5EE75BE1BD1F3F00F088695757B1FEFA5B70CDFBC6CB1E7A006AEFF6169B70BBA0D3963FF9EF732B733FACEF0A6822F7C25A64CF721034593FF66239C1E7A57443C3BA6C4BE75DB3DC6DE4B43FA07D335CDEDB112934E4D23F703F9A49B2973F27676FE4CD70B29F3F3F7E3F3F62F0813FD9AE829381F7FF00966A566B4BC9BECD6D04163FC4E63197FD33F87E7E94D834BB4691C35E3F3F1CB7E14A153F00CBA7A77BEFFD77223F5AABBFCBFA3F93E03F30DD803B90F4D587C1AF3FEC8F6D3F96504B314CB3C68C769DF80C3B1E9FA53E75B3B3485A763F2411803F1C72713F9CFD3DEB583F128DD3FC4E694671D1C55C3F3FFF00763BEFC15F3FC74DF0901CA6A03F3F3F058369D78D3C715DCA934609D8F195DC063A1E9DFA569A69D6E63F34DDA2C85794613F3FACD73F4A50935769144E9DE12CE3FE26233FDFE14E1A373F12A9AA100E0ED56383F954C6C206B788FDA480C7694E3FD0F5AB8B149A542D2DA5EC333F75271BBEBEB571C457BEB260A1AEA958A569E18F0D6A0E3FC5D79ABD637936B8F73F6B3F5AA9B784CD1AA8553F0C2E3A3F3FFD6A416F1E3F9A7C859A33F38D3F89BDF1FCC75A7C373F236CF38B88813FA7723F1FD47E344ABD47BC99A4611E88E0B4AB48ECFE305F3FED483F2FF77280E3F53FF3F7DAFCFDF73FF9BD76FA5DD2DD7C57D76E5430523F18233F07F2AE2ED97C3F40BFDFBE41F9C82AA2F93F95B43ECD51B5401D003FB4543F55FB4026EF87F6CFFDDD462F3F578E7811B9D497D621FD6BDAFE3BC5E67C37633F5EC2DCFD48FEB53F07C8BABE5F587B53E8C97B9E81E0DBD86C3FA6CB3BED50AEA00E4B1DEDC01D3F59AEF53F3F3F3D3236A9F72782D83F733E16B69EEB41B66CCA628E49113F2ABBC9214E303EB5D63DC1963F6B484450200446996E33D4F1FCFA9EB5C2E13AB27CDA473F008074F3469C6EB5973F00043F25C5B2436D6C3F446E507EF1F763D4F7FC7E94CD575291626B030470B6D5DFB393B4FF00083FF97D6A63AAAE9F6AA9F64645FBA93F1B98FA9C724D64E9C92497A2E6556B864732493F643D3B1E07A7B0A55E4EEA94377F3F315AD596CBF163F5837FA468A88221144F2E6EE68D153F77280F19518F5E33DEA2D5EC34356B2FB3DFBBCC3F3F5E192E8BC2410AD94C6D19C9ED5AF3DE35D5E4523427113FAE49E0E4F6F5DBF9566C5A6DB6956F3F958CC1B5043F909291839F91463A12C4E3DEBAE9AE443F9AA3E6BC3F473F74EBFB3FEE7ED866B58674B8451195466381839E7E5FD6B5ED603F7968F2483F1D5B683F193F423F4AA5A6ADEDA6A32F3F26123F492118643F4607F0EE3F5B06683F4B703F3FFC4C71C1FBBDC8271573D1DAE4413F93C5E7E9CE4DD44255753F4031C75391DF9FE7530696C773CB683F3C2B803FAD453FDAE70FBADEE18B013F6C0618E7A7D7F3352457ECD6FF00657B76B85DB8C8273B73819E3823A7E15996453DB5CCB3ADED9C26DE455E1E3218303FBA9F4FCAABDAC51DFDE92F0C91DC2E193F0DAFFED2E73F0024559B4B3F43AC883F5B6B7C3F5E473F1A65ECB0DC953F648E50DB8306039F507B1F7EFDE8B0CE1B46C0F889E26708102B30DB9CE39AE5FC3C3F8BF4A4FEFEA10FFE8C15BFE13FFC4DE289DDF7B177CB6319393CD65F81E13378EF405E39BF88F27D181FE95B4766448FAF68A28A9343CEBE37C7BFE195E1FEE5C40DFF008F81FD6BC1FC0E76EA77233FEB5F427C5F81A7F8633F524AF94F3F16BE7EF06465753F3F40DFCC535B123F3FDCC92F86A0B18F68CCF30DA5B1BBE7279F4519E7D6BB4B7852D2D53F153FB1724659B1D63FF08786CCCECF6D760939204E714E5F07F860FF00CBBD3F00B6ED59B8DCA3A4B3B33F6D639EE67B59667F99DA6B8F9B777E09E2A8697A7E9CF74FF698623F3F374157F8B9C6727A2F7EF59DFF00084785CA3FDEE0F4FD3F000A3F01E1871910DEE3FEBBFF00F5AA3F7A3F234655BDB23F3F8C473EFDE31C3FD3A571D79E36BBD76C65D36E05ADB24E066650EA503F20E7D456B7FC2B3F768EFC7D27FF00EB51FF000AF7C39E9A87FDFF00AB838AF895C4D3E86058EBB71A06A0D7D0DC2DD1F23F26B87947241C8C9C8E95D468DAFA78AEE47DBDA2B6DAC176C4E5033F3249C8E43FF8573F3FC5A88FFB6C297FE15F7877FBDA8FE130AA9C3FB6A2516BA9B1AB583F3F4B7B89973F79915F370C0E36E093D473F8549A5E93693239B88A3F958FCED76C37824F4E47A5611F87DE1DECFA3F00B6C293FE15EF87BFE7AEA7FF007F856562AC7616966D736B716E92BCB1C32E2DE6725F071C8CF71D8D49A5DC3F8B6732B261B6A03FC27BA1FE9EA2B8F53F3F054BFD6954740B7580298DE03F39FED0D6B27073F6AE78E9533F0E84C43F2C98F5F3A4FE6D553F425F3F87C63A5DAB7E409FE95D173F8683A46A4D6725CBB43F91A76073C5673F3F3F451B493FB7E51B56D1D93FD1F5151451506843776B05F5A4D697512CB6F3214923613F1822BC82FF00E095E5AE3F7C3DACC71C618944BB533F3F3F515ECB45343F493F3E1A783FCC6B473FF6CDBFF89A773F3F8FF98C68FF00F7EDBFF89AF60A28B8583FF0EFC6E3FE623FFDF0DFFC4D3C7C3FF1C0FF00989E3F3FFF00C4D7AE5145C2C7928F01783FCC43443F3FFF00E26947817C6E3FE5F7433F3FFF00E26BD668A2E1633F81FC6C3FE5E7423F849FE1473F3E36FF009EDA17FE44FF000AF57A28B858F26FF8423C6DFF003D3FFC893F9FF08478DFFE7B689F9BFF00857A3F5C2C79213F3F00E7B689F9BFF8531BC0DE383D253FEFA7FF000AF5EA28B858F17BCF873E35BFB736D2CF3F6E7E728EE091E9F77A575BE04F86F0784A763F3FEF51643F1709129EA1733FD6BB3F3F585CAAF70A28A2A4A0A23F00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2803FF),
	(16, '华硕X85E66SE-SL笔记本电脑', 17, '华硕', '华硕承诺LCD绝无亮点 \r\n用户购买1个月内，可享受免费 \r\n更换无亮点LCD屏幕的服务 \r\n“2+3”服务: \r\n2年免费保修服务 遍布全国各地的笔记本服务中心，从购机 \r\n之日起实行2年整机硬件保修（电池一年） \r\n3项贴心服务 \r\n7*24小时 800-820-6655免费技术咨询 \r\n2年全球联保服务 \r\n2年免费清洁保养服务 \r\n采用A级屏幕保无亮点! \r\n严格测试项目: \r\n滑落测试 \r\n模拟使用中意外的滑落。 \r\n开合测试 \r\n使用品率取决于产品类型、重量与国际标准。经过测试，所有零件与产品性能皆经过仔细检查有无外部受损。 \r\n压力测试 \r\n由于液晶屏幕是笔记本电脑的标准配备，这样的测试经验确保液晶屏幕可以承受压力 \r\n振动测试 \r\n模拟使用中与行进中的振动状况。测试时间与震动频率依据产品类型、重量与国际标准。经过测试，所有零件与产品性能皆经过仔细检查有无外部受损。 \r\n冲击测试 \r\n模拟使用中与行进中的冲击状况。测试时间与震动频率依据产品类型、重量与国际标准。产品经过不同的重量与角度冲击，仿真纪录显示于电波图中，分析并找出各种可能的弱点。 \r\n扭转测试 \r\n仿真消费者如何操纵笔记本电脑，在正常情况使用下会出现的弯曲变形。 \r\n由于常有用户使用单手开阖液晶屏幕与电脑机壳而造成笔记本电脑弯曲，这个实验尝试去恢复笔记本电脑扭曲的耐用性。 \r\n华硕电脑公司坚强的研发阵容亲切与快速的服务品质、高度的员工向心力,让华硕一直以稳定的步伐在前进,也因此能领先竞争者，提供最先进的产品及有利的商机给我们的合作伙伴。「追求世界第一的品质、速度、服务、成本；跻身世界级的高科技领导群；无止境地坚守正直、勤俭、崇本、务实的正道；培育、珍惜、关怀员工，让华硕人尽情地发挥最高潜力是我们的生活圭臬。华硕秉持与上下游夥伴互惠互利的合作关系，在日新月异的科技领域共同开创未来。\r\n', 5299.00, 4599.00, 50, 50, '2009-11-16 10:16:26', _binary 0xFF3F3F104A46494600010101006000600000FF3F4300080606070605080707070909080A0C140D0C0B0B0C1912130F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F27393D38323C2E333432FF3F43010909090C0B0C180D0D1832211C213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232FF3F11080062003F012200021101031101FF3F1F0000010501010101010100000000000000000102030405060708090A0BFF3F3F0002010303020403050504040000017D010203000411051221314106135161072271143281913F2342B1C11552D1F0243362723F0A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F93F3F1F0100030101010101010101010000000000000102030405060708090A0BFF3F3F00020102040403040705040400010277000102031104052131061241510761711322323F144291A1B1C1092333523F62723F1624343F3F18191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFF3F0C03010002110311003F00F7FA28A2800A3349450014735C6FC4ED5B50D1BC206E34CB86B7B87B88E23F190A739C67A741CD791DDCFE27BE8024F7D33FDCD26A5237D785E2B5A546A55F815CC2B6263FE2C923E899AEADED86673F87ABB85FE759573E30F0E59E7CFD6E3FD9660C7F219AF9F07862EE73BA7BE8CFA9D83F32455B8FC2B6C0625D4266F68D147F8D742C3FFEC93F3F1F3F44CF65B8F895E198626952F259D17A3FEE40FC4802B1AE7E32E8918FF47B2BD9BDC8541FCCD79EAF876C423FF655F47988533F53BFB1743F00E5C22CFF00B5963FA9AD6395D67BB48E59711E197C316F3F0033A8BAF8DF3FB488D7D0CD719FD00159171F193C4371916B6F691FA7970B39FE66A9A4163FAAB481713F14FF00B44CBF70283FD9652F3F00039E5C47FCB4FEF7FF0000D7F0773F13EA9E35D3B4FD46E3FD1EE0B8789ADD50E3631047003F3F3F008564797E2C6906433F87FE437A3FBCBAB0E4A8E03F4386AAEAD18D473F145145666E1451450014514500251451401C1FC5FE3C0723FF00723FFD6BCE84C880125538EEC057A47C5D033FD5EB1FE19223FF008F8A3FB4C95D559D893FAD7B5944ADCE3F53E7F3DA519A8393B6FF00A1D29BFB353992EE007F17350C9AED9C7C0BB95BFEB93FF3ACCB6D1FCFB83F753FFCD239C051DCD6FDBE99A33F3FAD541046267258613F82DD48C1AF56A55E53C4A584A12DD98B3788EDB27E5B3F0079F1554F88636385B673F5923F342D2FFB46DEE5253F443F8D6061BDB23F041E08EFDAAC5E2DA26973471EC0FB000B0D3FA8EA4A0C0F3F8FB49C9AB1D0F0F878A7FE672C9AB348783F3F56E2BB76FF003FFC6A0E10FCA8297CC7CF02BA7D935BB3925183D91A3F62FF001674B2460E5B8FFB64D5F4357CE5E04666F8B7A664FF007F8FFB62D5F46D7C3FF8D3F567DA6095B0D4D792FC828A283FA0A23F00A28A280128A28A00E2FE2C2EEF86BAB7193F3F3F6BCDEDA08FEC90313F9FD057A6FC525D3F35CF6854FE4EB5E596734B3F627047929DBFD915EB655F14BE47CCF1226E14EDDDFE853F36CA641E99A0B48C3F6C1E3FD59F9F9A2C3F732C6146411BBA639FE55ECE9D4F95F7D2D0AEE49382CC7EA7A541221607AE4D5E468A513FD0635C75147B682D195173EC643FD9A83F3802B4653F5154653FBD6CA4993FD8BE0538F8C13FEBF3FF00E896AFA36BE6DF013F3F9C47433F3FAFA4ABE4B15FC79F3FFF0005FEEF0F453F14515CE748514514005145140094514500723F307E1BEBB9E9F67F4E3FAF9C57C5D7B04114314D663F228DB938031CF3ED5EA5F18FC5FE6C83C35672FEEE32AF7A54FDE6EAB13FF99B3F2BC8BC3F3E5D3F3D22513F4A75674FE07631AD87A55D255629DBB97A2F1A3F32B34B6698E725073FAD589BC6F391F25F59924E4868BBD6689CE7FD5D3F33FBA4E9F954F1DCB8C7EEED413FA94EBF974AD3EB55BF993F00D9B84FF9F6BEE165F17DD5C0024B3FB7A32C7861F8D33F3FB9DB83A93FAA9FF0AB515F3F88AD303F411F00753F7D05598B57605336F658605CE6DE3F3F76EBED4B3FBF9996B01855FF002ED7DC643789EE77155B9B69063EF7CC2A3FEDF6909135D5B47E3F663F6D62495E14363FBC46461F668BE5E4607D793F3F6C55ED74E2521323EDB588E0E7A7F3A5F58ADFCCFEF23F0EB682FB907C319EDA6F8A7A448B7B143F3F5561FF002C9BD6BE9FAF9F3C2F0B6A5E34F0D23F514AB37DAA4F2A308005524F03DB8FC6BE83AC9B6DDD9D0A2A2A3FA28A40145145001451450015CDF8D7C4CBE17D01EE630B25F4EDE4D9C2C7EFC87B9FF6403F615D1B323F760A3F49380057CBDF10BC67378ABC493CD6B295B0855ADED78EA99F99FD8B63F2C03F7EF2E9AEAF659A49DA67772CD2B1C19189CB39FF0078F3EC303B54243F3FBF7A3F7073E79CFBA8ABF63FCF6BF6AB8D421B6B73213F4899CB3F400A338008C9ED91400C1FC5E93FBB7A54ABC33F1E68E8DD783F4FC9CC7AEE9A7FDF8665FF003F4934EBF8ADDE74BBD2AE5108DCB148DBB938E8CA2802342C0C47E6E25607041CB1F4FCFAFB52C44A3FDF8591943FCC7B0F5EBD7E3FC5A8323A8B780EF39243608F615692DEFDA6121D3E13F2E0223F7DFEB4012430048EDC5C091651236C5080E49CF5F5383FA34E3F520DD4E225CC78F957A9CFE74F4B1D44796D3F76403F61E58F7FA0AB7A759CF6737DAAE6D9E18ECEDD8AEE6CEF733F009F5A003F00855A2CD2EB77BAFC916DB58E33696CC7F88EE1BC8F613FCEBD6AB17C253F23C27A653F491C0A64FF007DBE66FD49ADAA0028A28A0028A28A0028A28A00F2BF8CBE2D7D3B4C8FC3F65215B8BD523FA79587A6DFF811E3E80FAD78195C74AFAA3F0001F877C4979F6CD4AC99EE7604F36399D03F03838EF5CE4FF04FC2D283E5CFA9424FF76E037FE84A693F7AB6B69AEE3F6B742F343F341D5989C015E9BA97C23F4A6DE1B492C5ADAD3FC4AD31524F5763F2E32CC49F3F6A3FE085BD9DDC775A6F3FED6788EE8E431231533FC55A7F0278DEDC7FA1F83F1D85C53F3F80F39FF8553F5E563F073F29FD48AC7D46D27D2243A65CC7E5DD46DBA74DC0ED3D86471D327F1AF5C3A3FC543FBAD43FBC74DCAC3F004115C16A1F0E3C7B2DDCF73F5C7732CAE5DDA2B943B893E8483F7613CD693F6BF853C5B6B9F33FA8713F3F00A0E63F7D627177A3EA50E3FBF6EC3F98A00D3F607A55AB7B51AAEB1A563F22EAED15C7FD335F3F00453F9D7391788B4F4F96573FE8C95DC7C23F5BF185C6A301325BE9B63F3F793F3F4FE7401ECD4B494B4005145140051451400514514005145140051451400514514005145140104F656B72313D3F3F003D230DFCE96D3FACE2F2AD6DE2823CE7644814673F3F026A28A2800A28A2800A28A2803FFF),
	(17, '宏碁AS4736ZG-421G25MN笔记本电脑', 17, '宏碁', '本产品全国联保，享受三包服务，质保期为：三年有限质保，全球联保一年；笔记本电脑：整机三包有效期1年。保修36个月的硬件包括：CPU、内存。保修24个月的硬件包括：主板、显卡、LCD屏、硬盘、电源适配器、键盘、鼠标模块。保修12个月的硬件包括：LCD之附件、光驱、DVD、 CDR/W、软驱、Modem卡、网卡、摄像头等其余功能模块和部件。电池保修3个月；购机后在宏碁官方网站注册成功，电池免费保修延长到12个月。 随机光盘、随机赠送的微型计算机商品等保修3个月。 维修服务方式：送修。 保修起始日：为有效发货票购机日期。如无法提供有效发票，则以宏碁系统中记录的生产日期延后2个月作为保修起始日。 有效发货票是重要的保修和三包服务凭证。 \r\n京东商城特别推出延保通延展保修服务计划，无需支付任何额外的维修费用，不仅在厂家整机保修期基础上延长了商品的保修时间,还提供比厂家保修范围更广的保修项目。针对手机、笔记本、数码相机/摄像机、MP3/MP4/GPS还特有多项意外保障。如果您购买的被保商品发生故障，只需拨打24小时延保通热线：400-820-7988/800-820-7988。客户服务中心将为您安排一切维修服务.详细信息请点击http://market.360buy.com/hd/yanbao090702/ind.html', 4999.00, 3599.00, 50, 50, '2009-11-16 10:17:50', _binary 0xFF3F3F104A46494600010101006000600000FF3F4300080606070605080707070909080A0C140D0C0B0B0C1912130F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F27393D38323C2E333432FF3F43010909090C0B0C180D0D1832211C213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232FF3F11080062003F012200021101031101FF3F1F0000010501010101010100000000000000000102030405060708090A0BFF3F3F0002010303020403050504040000017D010203000411051221314106135161072271143281913F2342B1C11552D1F0243362723F0A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F93F3F1F0100030101010101010101010000000000000102030405060708090A0BFF3F3F00020102040403040705040400010277000102031104052131061241510761711322323F144291A1B1C1092333523F62723F1624343F3F18191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFF3F0C03010002110311003F00F7FA8E7B886D3F3F71463ABC8C140FC4D495E33F3F697A31C9DA6594633C13814D2B3F227F18786ADBFD76BFA627D6E93FC6A8BFC47F0647F7BC4BA6FE1303FCABE6EB5F867E33D7B4FB7D4AC349596D2E5049149E7C6BB94F4E09C8A53F067C7A012745400753F6A8FF00F8AA3DDEE2D4FA2CFC50F040EBE25B0FFBECFF003F3F9781BFE8663F00BE8FF857CD503FF1633F6D6D18AF5DB7B11C7FE3D5717E0BF8F53FE8F1904641FB545FFC550F3F360B55747D11FF000B53C0DF3F3F00DF473FFF0085A9E06F3F6C7FEFA33FF3C37C19F1E90AA7478F8E9FE931FF003F3FE3C271FD911E7FEBE53FC68BC7B86A7D13FF000B4FC0DF3F3F00DF473F7FE169781FFE865B0FFBECFF00857CF07E0EF8F27F9BFB26033FF3E31D3F1A6C1F05BC77213F3F071CDCA0FE6695E33F3E3F0085A53F3F3FEFB33FA3E28F81CF4F123FDF673FE7863FE3D552C74B80E39C0BA8C9FE742F3F1E12A3FB2A11B8679B94E3EB3FC7B81F452FC4BF05374F123F00F7F6AD43E3BF0A5C1C453F353F00A7851FD6BE6C4F3F3C9173FD996EBFEF5D20FEB5345F043C7B1B3FFB4F3F4A2F1EE1A93FAEA3657DFF001E9796F3E067F75206E3F03566BE6AF85315DE9DF1662D2EF3E5BAB5F3E299553F3F467B8AFA5686AC30A28A2900578B7E3F6E8BA21FFA783FE3A2BDA6BC5BF68C1FF14EE8C7FE9E3FE3B4D6E26777F0C0EFF863E1D3FF004E682B5FC4B3DCDA7876F27B2655B9551B0B00473F3F33583F4E7E17787BFEBD47FE846BA9BD556B39432EE5C72319CD44A3743FC94649B5743F8B53BDFB4333DFE9363F08CDB464B1C75E07E1562E6C751D61D2F1F5989F6011AB45132A3F3F81D4D7796D6D6FF6753F66889233978C311CE3BD553F02492DD74892E2163F3F68633FB8E0FE558383B7BCEFF79E9C319052FDD4145F3FC8E6211AEC914B35B6B51C3F24EC8188613FE78E73C8AA3733783F26049D64451B803F48243FB64D6AF843C2577A463F9C9A966ECBCAF38957F78C193F013FC8E73F7487C396CDB59A3432818D3FF35A7B2BADD93F908C3F47EE5FA1E7F2EB3E2E82759E5951243F3F3D3F8A8E4F17783F53ED5ACDB5AC6DD59F3F7BE3AD75573F6D65619B49D6613FC866B7453F64E79C9FCAB36F3E15FDBE381AE75667B841896430E164033FE0E7BD672A2DA766CEEA183F9FEF5462BCA23F0023353C617924D1443FB4F3267091A8B742589E807A9ADD54F1848CCB16B4D26D1C95B38FAFA75AC95F82DA7C97563F6A533F3F62118FBB3F739E7BD76B219A4B874599932C49393F3FD670C34EDEF4DFF53F7138AA71A8E3874A51EEE2BFC88FC329AFA5C5DAEB53B4D1ED430BB46A9CF3B8617F0AE8F14C3F3F3FDBC91DEA4AEA8439553FDAB53DA4B9AC97A687CE9E0B6DDFB4AEAA3FE9EAF4FE86BE8BAF9C7C0C73FB4B6ADFF5F37BFD6BE8EAD1993F514802BC63F68C1FF14C3FFE9E3F0041AF673FFDA2C7FC529A51F4BD3F3FA6B706761F08CEEF857E1F3FF4C08FFC7DABAFBACFD964C75C571BF07CEEF8513F3F1F3FEBB13FB3978CFCB498229DA7FC7A473FB1527E513F00CEAC343F3CB86497713F71DEAA3F6B38C9C2614E323B67DA935012A4B03457133F3F2140773F673D31FD6A56E3665C16D7706AB75790DFDE5CBBE0FD9E58D08419190A702B7E4BB99155BEC92302818E083F959BF6E31E43497C3F713FE3DEA69F505FDDA079D77A100A004E78E7EB3F7CAC5CC9E861F853469BC37A6A593FD4D69E7492953F053F9E7B753FA9BC1712C0D1DB80A5D71B3F5FC0820D674134D28136FBE74604053B531D3F3F16F65905CEA13F2E223F2A9F438C92713F3F926534D96B4AB0BCB08A38653F411A6D55655C8F4E4019A6A53F4C3FD3A3033FA75F3F52DAB799B59A4BCDC4EEDB20207D3A62B3C5A4516FF2CC8F89246FDF4ECC72DD40243F41D28638DE46F445F243638E98F4F73F969DE594723F3F3F815769A25AB3B1F38F803F694D60FA5C5EFF00335F47573F00FF009392D6BFEBBDEFFE846BE8EA3FA28A2900578E7ED1433F3FFA5F7FEC86BD8EBC83F6875C3FC0FA5F0F3FA9ADC19D1FC1839F843FB2CA3F3FD76F73FF001ED267FBB5C1FC136D3F348F6330FF00C8AD5DE5CF163FF64D2608A36CC3C88883D895E9EB50EA8D193F7CF995A36D3F3F3F633FC54964C3EC885BE7CE79273F3FDA7595F49E65EDA412B850013FC0F4E6A35E854796FEF6C67F3FC4A9692481400A3F6E87BF3F5A7C3F3A8B9DBB4E44726327FC6A4D203FAEA763F6516F630321B6C441113F3F3F6B67098CF18F5AD149A26518BD8C2B7B293F619D4271FBC93FD0E33F584835192E76DECAD24488E16E5963F973D17B1E793DEB5EDDF73FDDA03F28F6CF14B764C7693344073F3F563F3628A456B68923552F1B46733F316359AD75625D88D5F4FC162CB9B853FCE97C273EA3A8785AC67D7A158F56657F351A308CA771038EDC62BC9F4CF0A5D5C4371BAFADA46826689CA43F476195E47B3FAE7A3F043F75D7C83FB87A137255AA72DB6F3DEE7B2E3FBB893FB86E1C36498E50DC763F3BD6AD705F0E3FD1AE75079678E49270A55636CAA265B68E83D6BBDA742AFB58291CF89A74E9D5713F65DCF9CBE13FB48EB9ED35EFFE846BE8DAF9D3E1DAFF00C6466BE7D26BDFFD0EBE8BADD980514514802BCABE3DC266F06592819FF43F003F7A3F3FF8BB7AB771D8E2773124A552153F1F333F01E99F7A7157626CE3BC13F18A2F04784EDB4297419EE9ADDA42655B8080EE623FF7AD3F690B468D94F85EE3918FF8FC5F3FBCCE3F590B3C4C773632C54FE7C55522D07CA6DF0D83C12B838F7DBCD57285CF4D8FF68AB23F4FF846AE4919E7ED3F00C452B7ED1F62CBB4F852461D835E29C7FE395E5E56C09FF8F66ED9C950793FDE681FD9BCE6C9C8C13FB9CFA1F9697205CF4AFF0086893FBBFE1156271839BA4E7F3F68E99F1E64D7EE974EB0F03FA54B289350445503DD9302BC9B763FC593373F783AEDC7633F29DE6695813FF1DFF7ABC9EE01D98E947207333D6350F8DF3E8CB1DC5E7852001DCAA2AEA51B3640073811E470473EF59D2F3F1CB8CF3F20F04D3FFB4EBCF3CED23FD39F0064132A8C8E3F3BD3C5CE90303FB2CE7201FDF23FC1DA8E40E667789FB4788D8B2F3F9F5378063F28EB9AB7F83F2B22BE9924A18F033F768CF4E1791CD6573F7193FD92718247EF97F0E7CBEF527F68690B3F4F3F3066513FEB9D455C3C2AC7926A3F99D3E95F1F8E93E6F93E188DCC84649BCC1F3F3FF692BB73F2F85A1F3F3FFC45713F004A54578F48654EA77B3FF64A583F1BC8A53F315670B98F2E3FF4F2F9FA66AA9D18533F15905C3F124B3EA5F17AF35996D5ADFEDCB7133F90BBCEEC02473D6BE8EAF9EBE1D33DDEAD15E2CF2A5CDA64F943681F4E3F26BDFAD2EA3BCB643FC3751E87D2AA513F727A28A2A06737E26F105BE9EC2C5E511BBA6F6278F949238FC8D79678BA5D3B5187CFB6991EF154203BF8DB3F1E2BD4FC573F6F14470899A58E5873B2583F3F083C11C0AF3DB9F847AA890F917E8E9DB7AE0FE86B48B4912D333FB1B9243F23D378FF001A81ACEEBC3F3F333F875A3F7E12F8887292C0DFF02C7F5AAA7E13F8A812403F5978A2E82C3F1A7CC48D3F0F5229874F3FEA933FE35E3F000A97C5A7826DBEBE65237C21F14B2E19EDC8F4DF45D06A79A1D3E4CFFAA5FF003F3FF67C9FF33F4FF1AF49FF003FE26F5B7FFBEFFF00AF4D3F073C4FEB6DFF007DFF00F5E83F333FB39CA1C2479F4C8FF1A3EC37013F513FE1C7F8D7A29F839E28FF00A76FFBEFFF00AF487E0EF8A492403F3F00FAF4F990599E78B657281C288C6F186F9C72281A7DC042804614F5FDE0AF43FF003FE29FFA77FF00BEC7F8D07E0DF8A492716C3DBCC13F73442C3F1613E146611B7A7CE2AC7D92E24984AF241BC743B85771FF000A6BC55FF4EDFF007F07F8D387C13FFADA8FFB683FC68E7416651F05DCD8E8DA9C9777B75126E8F6FCB924FE423F4DF1EE3FDC515B3F3FAA7969131C92703B7B3F3FFC52AD9F3AD54FA87AED7C09F0F2F341D57ED7AB2C53945CC4C24FB8DEB8EF439C5A172BB9E99451456458514514005145140051451400514514005145140051451400514514005145140051451401FF),
	(18, 'ThinkPad SL410（2842-5AC）笔记本电脑', 17, 'ThinkPad', '轻的系统更薄的尺寸（新型的SL系列产品比过去的型号薄4mm，轻12％，意味着其具有更好的便携性）\r\n采用镜面屏，最佳尺寸的显示面板，强大的多媒体, 多点触摸技术, 更快的系统内存带来更好的用户体验\r\n更多的存储设备\r\n更好的独立显卡解决方案\r\n\r\n\r\n', 5700.00, 5160.00, 100, 100, '2009-11-16 10:19:05', _binary 0xFF3F3F104A46494600010101006000600000FF3F4300080606070605080707070909080A0C140D0C0B0B0C1912130F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F27393D38323C2E333432FF3F43010909090C0B0C180D0D1832211C213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232FF3F11080062003F012200021101031101FF3F1F0000010501010101010100000000000000000102030405060708090A0BFF3F3F0002010303020403050504040000017D010203000411051221314106135161072271143281913F2342B1C11552D1F0243362723F0A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F93F3F1F0100030101010101010101010000000000000102030405060708090A0BFF3F3F00020102040403040705040400010277000102031104052131061241510761711322323F144291A1B1C1092333523F62723F1624343F3F18191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFF3F0C03010002110311003F00F7FACCF115FCFA5F87750BEB65463F593FDDC8F5AD3AC3F18FFC89DAB7FD7B3F7952FC56F1492C0C561F29C64C2DCFD3E6A5FF0085AFE2AED069A7EB137FF155CAC93F50EDE38247E55D94F0556A454A3B33CFAB98D13F0937747607E2E73F3FC5644FF7BC87DBF9EE3FE16CF89C0E6CF4E3FF00007F3FB89D3FCF53FF007C3FBFFC3FF7C8ABFECFADE467FDAD87EEFEE33F16FC4F83FE81A77F3FFF00C554033F8ABF3F63FF007C3F00155C3F0FF969FF008E8A5C3F003D3FF1D147F67D6F20FED6C3F77F71D9C7F17BC4EE0E743F48EC55FF00F8AA7F3F3F3FD97A7FE2AFFF00C557133FE7A73F297749FF003D3FF1DA3FB3EB760FED6C3F773FB0F8B7E273FF00303F3F3F3F00177C508BB83F07FDD4727F3F3FCD660AAF924E00DBD4D4E6D350593F2984A3194F28E47E143FAADEDF794B34A0F6BFDC758BF16BC56EA186916001FEF2383F3F28F8ADE2D3D34AD3BFEF97FF00E2AB3FB6423E7DC9C95F3F723A8A68B9B85E3FFDF029ACBE3FF6AE1D6EDFDC7A8781FC7DAF788BC442C351B0B586DCC4ED3F60C1971EA4F1CD7A5D78EFC37732783F6C6E36CE4E3E82BD8AB85A3F24EE823F3FAC4F180CF843551EB6ED5B7587E3133FEA9FF5C03F804A3071EF51D4B31C915157D1E0FF003F3F1FF799FF005D023FAE933FA28A0028A28A00553B581F439AE8E3F1A6A11C61160B7C018E8D3FCDD437330B7B7790F61C0F5359D484243F3F3F8A5CB4DEACD7D575F9F598AD633F8680155DB9CB640C939FA7EB59D55E3FBE6B2ED2C0617D0558A5874D415D58BC535ED5A4EF6D2FDD9DCFC323FF001535B7FD7B3F3FECD5E29F0C5B3FAB500F1F677E3F015ED75F353F88FB187C2828A28A9282B9EF1D4862F0463F0095803FA8AE86B03C6C71E0CD4FFEB90F3F5007824C39C8E99A8AA5633F98A93F3E7E3F3F3FE8F08D7B183F3FBCCFFAE847453F0DFF003CC7E54BBB6F563F0FE75D1CC8E3D060563D14FE54FF0025C7DEE3DB3F3F0EDCE03FD49E58285F60393C7CDFCC544A76DCA51BEC8679471D7F30450617519C67E9CD394B8FB846073FA7995C659D46718241EB429C5ECCB749A5768AD8393F7D2A95E42F343F3F938E3FFE9CFF003ABB7774B15B3F3FAF41D0D53D2E29845F687DC5E4E7E83D2B3ACD4E4A97CD3F3FA9BE1ED4A12AFDB45EAFFC97E85B000000A5A7FCC7AC793F3F1FBAABF5E63F97738CEA7E194BB7C676318030D6F29CFD00FF001A3FF0DF86473F1B4E7398A4FF00D06BDCABE5673F3F3F28A28A92C2B9EF1D1D3FD4CF3F5F3F57435CD78F3F11A97B3FFC7D6803C1DCE493EF4DE94E7E3D3F3A4009E98FCEBE3F283F4D3F8F843F6D213AF5A29AD2463F3FA6693C3F00E7A2FE75D3CD1E3F243F3F2B3ABA8183B80C76C557F363FEFAFE74793F007D7F3A4DC5F52A2A6AD75A12633C026838E3AFE74CF390FF00CB45FCE8F363FEFAFE75094575369D49B5B73FC693214914329EA08A500018149E647FDF5FCE8F323FEFAFE7569C563F3F3F27D6814D3FFBEBF9D13FF7D7F3A7CC89E59763AAF8627FE2B53FF4CE5F3FD7BBD7813F7FF8AEEC467F8251FF003FF7CAF979FC4CFB7A7F020A28A2A0B0AE4FE24C3F013F1771CC600CE3AC8B5D6579A7C56F104D1E3F97612B243F33A1E9FECFF8D0078B6A1E23D6B4CB42B68D144AD28DBBB6493F3FD0551B1D6AFB5279A4D42E21320C01B15578C7A62A8DE5EEA3703CB9AE5E4881C9560304F6E950DA6BDA96948F0DA5E044760CDFB94620F7FB3F003A046EB5C0EBE7AFE62982E01E3CF18FA8AA5FF098EBE081F6D4C83FB68886C73F8A513F7FFE7E3F3F3F403D39D9EB45C762F8980E3FF98A53283D6E173F4078CF5EC64D3F8EBF643F753FEB527FC25B3F4245C5BF1DCDA41C93D33F3FB7B16832FF00CF71F98A773FE5BF3F9FFC261AD16DDE75BED233B7EC70938E99CECF5A4FF84AF5AC15692D3F827E3F18EBFC145C562F6C43C79FFA8A4F2533FEBB3F48F8AF573FED704707EC70E393C7F07F9C534F8A758C726D4724E7EC503F3F5FE5401A3E4A63FD69FCC573B69AC6A26E503C31F96C3F603C7E26B5D35D3F50F8B2DA40E0DB4031EFCAD666CBE493CE88C53F2C07CA413D7EEF4F3FECC2E8F45F85772C3F343F4A3F476C67CB6A3FBE653F3FBEB967A8452A65412CBE522EE047232066BE94B4BA8AF63F3F74722E3F98D135145140191E24D6E3D0B497B824199FE43F76FF0001D6BC6758B3D62FAC5EE4DADD4C3FE6523F79CD753F3FA9EACD69A9DA48CD6D6B1324B1A96CAE4E7760751D8FD2BC91343BAB84CA4F33013F7E3F0A343F98F2681AA5F2BC96B68F2C513F6E5001EFD4D5487C293F4204BAB43F2E207C949638B2AD838E0F7E45740D3F8F5DFF00F7CBD28F09CD8C063F3FA2E091CC6A1E1D3F99646E750D22EEDA3F3324B1ED5049F5F7358EAECD853F4F03DFAD7772F8493FFCC209C7DC7349FF00086B764FFC71A95C0E3C18700181FEBE68FF00E268C297CAA903D0B64FE75D87FC218D9C6C3FF7C3527F3FDFDC6FFBE1A968363F61F67C7F3FFBFBFF00D6A849DAC42921413FF4AE9DBC35E5BB2982E0E0E3885F147F3F3F001E3FF7E1E9AB036D9CCEF3B76E783FED9CFF005A3F62493D493F89EB5D173F3F3F39FF003F4E7F0E6C703F249C6442F8EB8A77423F1595CC7B91731E307D71EB533F33158D703F4E71FF00EBAD697C2B711E1A3C3107EEE08CFE741D06E760C5990718CEFEF9EBD3A6293FC4FE1DB57B790B226C524BE1980C7A3FECDF0FBC4423B8FEC9B86F92633F4F47EEBF8FF3FAD73F91710AB3BB797EC0B7F4ADFF000C7857593F9B783F1818DD6479773F80733F90A43573E9AA28A2800A3F2288B93F42E7731550371F53EB45140126283F5030A28A290828A28A0028A28A60146051450026D1E83F2A36AFA0FCA8A2903F113821A2420F5054525BDB4169108ADA08E18C74483F1F80A28A00968A283FFF);
/*!40000 ALTER TABLE `commodity` ENABLE KEYS */;

-- 导出  表 db_fcshopping.commodityclass 结构
DROP TABLE IF EXISTS `commodityclass`;
CREATE TABLE IF NOT EXISTS `commodityclass` (
  `commodityClassID` int(11) NOT NULL AUTO_INCREMENT,
  `commodityClassName` varchar(50) DEFAULT '',
  PRIMARY KEY (`commodityClassID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- 正在导出表  db_fcshopping.commodityclass 的数据：~10 rows (大约)
DELETE FROM `commodityclass`;
/*!40000 ALTER TABLE `commodityclass` DISABLE KEYS */;
INSERT INTO `commodityclass` (`commodityClassID`, `commodityClassName`) VALUES
	(9, '生活电器'),
	(10, '厨房电器'),
	(11, '个人护理'),
	(12, '汽车用品'),
	(13, '手机通信'),
	(14, '手机配件'),
	(15, '数码影音'),
	(16, '数码配件'),
	(17, '电脑整机'),
	(18, '办公设备');
/*!40000 ALTER TABLE `commodityclass` ENABLE KEYS */;

-- 导出  表 db_fcshopping.orderform 结构
DROP TABLE IF EXISTS `orderform`;
CREATE TABLE IF NOT EXISTS `orderform` (
  `orderFormID` int(11) NOT NULL AUTO_INCREMENT,
  `orderFormNO` varchar(50) DEFAULT '',
  `userID` int(11) NOT NULL DEFAULT '0',
  `submitTime` datetime DEFAULT NULL,
  `consignmentTime` datetime DEFAULT NULL,
  `totalPrice` decimal(9,2) DEFAULT '0.00',
  `remark` varchar(50) DEFAULT '',
  `IPAddress` varchar(50) DEFAULT '',
  `isPayoff` int(11) DEFAULT '0',
  `isConsignment` int(11) DEFAULT '0',
  PRIMARY KEY (`orderFormID`),
  KEY `FK_orderForm_users` (`userID`),
  CONSTRAINT `FK_orderForm_users` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  db_fcshopping.orderform 的数据：~1 rows (大约)
DELETE FROM `orderform`;
/*!40000 ALTER TABLE `orderform` DISABLE KEYS */;
INSERT INTO `orderform` (`orderFormID`, `orderFormNO`, `userID`, `submitTime`, `consignmentTime`, `totalPrice`, `remark`, `IPAddress`, `isPayoff`, `isConsignment`) VALUES
	(1, '11', 1, '2008-01-02 17:08:00', '2008-01-03 00:00:00', 1.00, '1', '1', 0, 1);
/*!40000 ALTER TABLE `orderform` ENABLE KEYS */;

-- 导出  表 db_fcshopping.orderlist 结构
DROP TABLE IF EXISTS `orderlist`;
CREATE TABLE IF NOT EXISTS `orderlist` (
  `orderListID` int(11) NOT NULL AUTO_INCREMENT,
  `orderFormID` int(11) DEFAULT '0',
  `commodityID` int(11) DEFAULT '0',
  `amount` int(11) DEFAULT '0',
  PRIMARY KEY (`orderListID`),
  KEY `FK_orderList_orderForm` (`orderFormID`),
  KEY `FK_orderList_commodity` (`commodityID`),
  CONSTRAINT `FK_orderList_commodity` FOREIGN KEY (`commodityID`) REFERENCES `commodity` (`commodityID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_orderList_orderForm` FOREIGN KEY (`orderFormID`) REFERENCES `orderform` (`orderFormID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_fcshopping.orderlist 的数据：~0 rows (大约)
DELETE FROM `orderlist`;
/*!40000 ALTER TABLE `orderlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderlist` ENABLE KEYS */;

-- 导出  表 db_fcshopping.users 结构
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT '',
  `password` varchar(50) DEFAULT '',
  `name` varchar(50) DEFAULT '',
  `sex` tinyint(1) DEFAULT '0',
  `address` varchar(50) DEFAULT '',
  `phone` varchar(50) DEFAULT '',
  `post` varchar(50) DEFAULT '',
  `email` varchar(50) DEFAULT '',
  `regTime` datetime DEFAULT NULL,
  `regIpAddress` varchar(50) DEFAULT '',
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  db_fcshopping.users 的数据：~1 rows (大约)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`userID`, `username`, `password`, `name`, `sex`, `address`, `phone`, `post`, `email`, `regTime`, `regIpAddress`) VALUES
	(1, 'lifengxing', 'lifengxing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;


-- 导出 db_hotelmaster 的数据库结构
DROP DATABASE IF EXISTS `db_hotelmaster`;
CREATE DATABASE IF NOT EXISTS `db_hotelmaster` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_hotelmaster`;

-- 导出  表 db_hotelmaster.tb_balancement 结构
DROP TABLE IF EXISTS `tb_balancement`;
CREATE TABLE IF NOT EXISTS `tb_balancement` (
  `BMID` varchar(32) NOT NULL,
  `BMCHECKINORDERID` varchar(32) NOT NULL,
  `BMGUESTID` varchar(32) DEFAULT NULL,
  `BMTYPE` varchar(16) NOT NULL,
  `BMTOTALRATE` decimal(14,2) NOT NULL,
  `BMPAIDMONEY` decimal(14,2) NOT NULL,
  `BMRECEIVMONEY` decimal(14,2) NOT NULL,
  `BMCREATETIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `BMOPERATOR` varchar(20) NOT NULL,
  `BMPAYMENTMODEL` varchar(16) NOT NULL,
  `BMREMARK` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`BMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_hotelmaster.tb_balancement 的数据：~3 rows (大约)
DELETE FROM `tb_balancement`;
/*!40000 ALTER TABLE `tb_balancement` DISABLE KEYS */;
INSERT INTO `tb_balancement` (`BMID`, `BMCHECKINORDERID`, `BMGUESTID`, `BMTYPE`, `BMTOTALRATE`, `BMPAIDMONEY`, `BMRECEIVMONEY`, `BMCREATETIME`, `BMOPERATOR`, `BMPAYMENTMODEL`, `BMREMARK`) VALUES
	('402881e51a448696011a4489783f0003', '402881e51a448696011a4489373e0001', '402881e51a39c232011a39da4d3e0005', '结单', 320.00, 1000.00, 200.00, '2008-06-01 22:30:37', 'admin', '现金', 'remark'),
	('402881e51a53efae011a53f874550004', '402881e51a53efae011a53f77fc40001', '402881e51a39c232011a39da4d3e0005', '结单', 350.00, 0.00, 0.00, '2008-06-04 22:26:09', 'admin', '现金', 'fdsafdsa'),
	('402881e625636b70012563767c6c0001', '402881e625587aa7012559003f2d0003', '402881e625587aa7012558e59ffa0001', '结单', 260.00, 0.00, 0.00, '2009-12-06 18:08:47', 'admin', '现金', '');
/*!40000 ALTER TABLE `tb_balancement` ENABLE KEYS */;

-- 导出  表 db_hotelmaster.tb_baseinfo 结构
DROP TABLE IF EXISTS `tb_baseinfo`;
CREATE TABLE IF NOT EXISTS `tb_baseinfo` (
  `BIOID` varchar(32) NOT NULL,
  `BIONAME` varchar(32) NOT NULL,
  `BIOVALUE` varchar(200) NOT NULL,
  PRIMARY KEY (`BIOID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_hotelmaster.tb_baseinfo 的数据：~3 rows (大约)
DELETE FROM `tb_baseinfo`;
/*!40000 ALTER TABLE `tb_baseinfo` DISABLE KEYS */;
INSERT INTO `tb_baseinfo` (`BIOID`, `BIONAME`, `BIOVALUE`) VALUES
	('BIO0011234', 'CheckinOrderID', '10'),
	('BIO0011323', 'ReservOrderID', '4'),
	('BIO0056859', 'ReservUpdated', '2008-06-05 00:52:57.375');
/*!40000 ALTER TABLE `tb_baseinfo` ENABLE KEYS */;

-- 导出  表 db_hotelmaster.tb_checkinitem 结构
DROP TABLE IF EXISTS `tb_checkinitem`;
CREATE TABLE IF NOT EXISTS `tb_checkinitem` (
  `CIMID` varchar(32) NOT NULL,
  `CHECKINORDER_CIOID` varchar(32) NOT NULL,
  `ROOM_RMID` varchar(32) NOT NULL,
  `CIMPRCTPRICE` decimal(14,2) NOT NULL,
  `CIMDISCOUNT` decimal(5,2) DEFAULT '100.00',
  `CIMINDATETIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CIMOUTDATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `CIMSTATE` varchar(16) NOT NULL,
  PRIMARY KEY (`CIMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_hotelmaster.tb_checkinitem 的数据：~12 rows (大约)
DELETE FROM `tb_checkinitem`;
/*!40000 ALTER TABLE `tb_checkinitem` DISABLE KEYS */;
INSERT INTO `tb_checkinitem` (`CIMID`, `CHECKINORDER_CIOID`, `ROOM_RMID`, `CIMPRCTPRICE`, `CIMDISCOUNT`, `CIMINDATETIME`, `CIMOUTDATETIME`, `CIMSTATE`) VALUES
	('402881e51a448696011a4489376d0002', '402881e51a448696011a4489373e0001', '8109', 320.00, 100.00, '2008-06-01 21:15:00', '2008-06-02 12:00:00', '已结账'),
	('402881e51a53efae011a53f77fd30002', '402881e51a53efae011a53f77fc40001', '8308', 100.00, 31.25, '2008-06-04 22:24:00', '2008-06-05 12:00:00', '已结账'),
	('402881e51a53efae011a53f77fd30003', '402881e51a53efae011a53f77fc40001', '8209', 250.00, 96.15, '2008-06-04 22:24:00', '2008-06-05 12:00:00', '已结账'),
	('402881e51a579a4b011a57d29eb50004', '402881e51a579a4b011a57d29ea50003', '8208', 320.00, 100.00, '2008-06-05 16:22:00', '2008-06-06 12:00:00', '已入住'),
	('402881e5267907ec01267915e3390005', '402881e5267907ec01267915e32e0004', '8101', 260.00, 100.00, '2010-01-29 15:53:00', '2010-01-30 12:00:00', '已入住'),
	('402881e6254e53a001254e58d94e0002', '402881e6254e53a001254e58d93e0001', '8106', 260.00, 100.00, '2009-12-02 15:43:00', '2009-12-03 12:00:00', '已入住'),
	('402881e6254e53a001254e58d94e0003', '402881e6254e53a001254e58d93e0001', '8107', 0.00, 0.00, '2009-12-02 15:43:00', '2009-12-03 12:00:00', '已入住'),
	('402881e6254e53a001254e5be9230005', '402881e6254e53a001254e5be9230004', '8118', 260.00, 100.00, '2009-12-02 15:46:00', '2009-12-03 12:00:00', '已入住'),
	('402881e6254e53a001254e64b91d0008', '402881e6254e53a001254e64b91d0007', '8106', 260.00, 100.00, '2009-12-02 15:54:00', '2009-12-03 12:00:00', '已入住'),
	('402881e625587aa7012559003f440004', '402881e625587aa7012559003f2d0003', '8104', 260.00, 100.00, '2009-12-04 15:55:00', '2009-12-05 12:00:00', '已结账'),
	('402881e625587aa70125590883f60006', '402881e625587aa70125590883f60005', '8103', 260.00, 100.00, '2009-12-04 15:55:00', '2009-12-05 12:00:00', '已入住'),
	('ff808081012a13dc01012a1aff9b0002', 'ff808081012a13dc01012a1aff7c0001', '8109', 320.00, 100.00, '2005-01-01 01:06:00', '2005-01-02 12:00:00', '已入住');
/*!40000 ALTER TABLE `tb_checkinitem` ENABLE KEYS */;

-- 导出  表 db_hotelmaster.tb_checkinorder 结构
DROP TABLE IF EXISTS `tb_checkinorder`;
CREATE TABLE IF NOT EXISTS `tb_checkinorder` (
  `CIOID` varchar(32) NOT NULL,
  `CIOGUESTNAME` varchar(20) NOT NULL,
  `CIOMANNUMBER` int(10) unsigned NOT NULL,
  `CIOGUESTCATALOG` varchar(16) NOT NULL,
  `CIOGUESTTYPE` varchar(16) NOT NULL,
  `CIOGROUPNAME` varchar(32) DEFAULT NULL,
  `CIOGUESTCARDCATALOG` varchar(16) NOT NULL,
  `CIOGUESTCARDID` varchar(32) NOT NULL,
  `CIOCAUSE` varchar(100) DEFAULT NULL,
  `CIOSTATE` varchar(16) NOT NULL,
  `CIOINDATETIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CIOPREOUTDATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `CIOPRCTOUTDATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `CIOPAYMENTMODEL` varchar(16) NOT NULL,
  `CIOPAIDMONEY` decimal(14,2) NOT NULL,
  `CIOISRESERVID` varchar(32) DEFAULT NULL,
  `CIOOPERATOR` varchar(20) NOT NULL,
  `CIOGUESTGENDER` varchar(6) NOT NULL,
  `CIOTOTALRATE` decimal(14,2) NOT NULL,
  `CIOBEDRATE` decimal(14,2) DEFAULT NULL,
  `CIOORDERID` varchar(32) NOT NULL,
  PRIMARY KEY (`CIOID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_hotelmaster.tb_checkinorder 的数据：~10 rows (大约)
DELETE FROM `tb_checkinorder`;
/*!40000 ALTER TABLE `tb_checkinorder` DISABLE KEYS */;
INSERT INTO `tb_checkinorder` (`CIOID`, `CIOGUESTNAME`, `CIOMANNUMBER`, `CIOGUESTCATALOG`, `CIOGUESTTYPE`, `CIOGROUPNAME`, `CIOGUESTCARDCATALOG`, `CIOGUESTCARDID`, `CIOCAUSE`, `CIOSTATE`, `CIOINDATETIME`, `CIOPREOUTDATETIME`, `CIOPRCTOUTDATETIME`, `CIOPAYMENTMODEL`, `CIOPAIDMONEY`, `CIOISRESERVID`, `CIOOPERATOR`, `CIOGUESTGENDER`, `CIOTOTALRATE`, `CIOBEDRATE`, `CIOORDERID`) VALUES
	('402881e51a448696011a4489373e0001', 'esperamier', 2, '散客', '普通客人', NULL, '身份证', '362422198611160012', NULL, '已结账', '2008-06-01 21:15:00', '2008-06-02 12:00:00', '2008-06-01 22:30:37', '现金', 0.00, NULL, 'FoGhost', '男', 320.00, 0.00, 'CIO00000001'),
	('402881e51a53efae011a53f77fc40001', 'esperamier', 2, '散客', '普通客人', NULL, '身份证', '362422198611160012', NULL, '已结账', '2008-06-04 22:24:00', '2008-06-05 12:00:00', '2008-06-04 22:26:09', '现金', 0.00, NULL, 'FoGhost', '男', 350.00, 0.00, 'CIO00000001'),
	('402881e51a579a4b011a57d29ea50003', 'esperamier', 2, '散客', '普通客人', NULL, '身份证', '362422198611160012', NULL, '已入住', '2008-06-05 16:22:00', '2008-06-06 12:00:00', '2008-06-06 12:00:00', '现金', 0.00, NULL, 'Admin', '男', 320.00, 0.00, 'CIO00000002'),
	('402881e5267907ec01267915e32e0004', '刘明', 2, '散客', '普通客人', NULL, '身份证', '123456789789123', NULL, '已入住', '2010-01-29 15:53:00', '2010-01-30 12:00:00', '2010-01-30 12:00:00', '现金', 0.00, NULL, 'Admin', '男', 260.00, 0.00, 'CIO00000009'),
	('402881e6254e53a001254e58d93e0001', '庞永庆', 2, '散客', '普通客人', NULL, '身份证', '1234567891234567', NULL, '已入住', '2009-12-02 15:43:00', '2009-12-03 12:00:00', '2009-12-03 12:00:00', '现金', 0.00, NULL, 'Admin', '男', 260.00, 0.00, 'CIO00000004'),
	('402881e6254e53a001254e5be9230004', '庞永庆', 2, '散客', '普通客人', NULL, '身份证', '12345678945465151', NULL, '已入住', '2009-12-02 15:46:00', '2009-12-03 12:00:00', '2009-12-03 12:00:00', '现金', 0.00, NULL, 'Admin', '男', 260.00, 0.00, 'CIO00000005'),
	('402881e6254e53a001254e64b91d0007', '庞永庆', 2, '散客', '普通客人', NULL, '身份证', '123456789123456', NULL, '已入住', '2009-12-02 15:54:00', '2009-12-03 12:00:00', '2009-12-03 12:00:00', '现金', 0.00, NULL, 'Admin', '男', 260.00, 0.00, 'CIO00000006'),
	('402881e625587aa7012559003f2d0003', '刘明', 2, '散客', '普通客人', NULL, '身份证', '123456789789456', NULL, '已结账', '2009-12-04 15:55:00', '2009-12-05 12:00:00', '2009-12-06 18:08:47', '现金', 0.00, NULL, 'Admin', '男', 260.00, 0.00, 'CIO00000007'),
	('402881e625587aa70125590883f60005', '刘明', 2, '散客', '普通客人', NULL, '身份证', '123456789789456', NULL, '已入住', '2009-12-04 15:55:00', '2009-12-05 12:00:00', '2009-12-05 12:00:00', '现金', 0.00, NULL, 'Admin', '男', 260.00, 0.00, 'CIO00000008'),
	('ff808081012a13dc01012a1aff7c0001', 'esperamier', 2, '散客', '普通客人', NULL, '身份证', '362422198611160012', NULL, '已入住', '2005-01-01 01:06:00', '2005-01-02 12:00:00', '2005-01-02 12:00:00', '现金', 0.00, NULL, 'Admin', '男', 320.00, 0.00, 'CIO00000003');
/*!40000 ALTER TABLE `tb_checkinorder` ENABLE KEYS */;

-- 导出  表 db_hotelmaster.tb_guest 结构
DROP TABLE IF EXISTS `tb_guest`;
CREATE TABLE IF NOT EXISTS `tb_guest` (
  `GTID` varchar(32) NOT NULL,
  `GTNAME` varchar(20) NOT NULL,
  `GTTYPE` varchar(16) NOT NULL,
  `GTCARDCATALOG` varchar(16) NOT NULL,
  `GTCARDID` varchar(32) NOT NULL,
  `GTCOUNTRY` varchar(32) DEFAULT NULL,
  `GTADDRESS` varchar(100) DEFAULT NULL,
  `GTZIP` varchar(10) DEFAULT NULL,
  `GTCOMPANY` varchar(50) DEFAULT NULL,
  `GTTELPHONE` varchar(16) DEFAULT NULL,
  `GTMOBILE` varchar(16) DEFAULT NULL,
  `GTGENDER` varchar(4) NOT NULL,
  `GTEMAIL` varchar(32) DEFAULT NULL,
  `GTCREATETIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`GTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_hotelmaster.tb_guest 的数据：~3 rows (大约)
DELETE FROM `tb_guest`;
/*!40000 ALTER TABLE `tb_guest` DISABLE KEYS */;
INSERT INTO `tb_guest` (`GTID`, `GTNAME`, `GTTYPE`, `GTCARDCATALOG`, `GTCARDID`, `GTCOUNTRY`, `GTADDRESS`, `GTZIP`, `GTCOMPANY`, `GTTELPHONE`, `GTMOBILE`, `GTGENDER`, `GTEMAIL`, `GTCREATETIME`) VALUES
	('402881e6254e53a001254e63196c0006', '庞小庆', '普通客人', '身份证', '123456789123456', '中国', '', '', '', '', '', '男', '', '2009-12-02 15:55:35'),
	('402881e625587aa7012558e59ffa0001', '刘明', '普通客人', '身份证', '123456789789456', '中国', '北京市海淀区上地西里XXX栋X单元XXX室', '100000', '中国石化', '456789123', '13778945612', '男', 'test@qq.com', '2009-12-04 16:54:21'),
	('402881e6256404d20125641b17560001', '李立明', '普通客人', '身份证', '456789123456789', '中国', '中国上海', '', '', '', '', '男', '', '2009-12-06 21:08:34');
/*!40000 ALTER TABLE `tb_guest` ENABLE KEYS */;

-- 导出  表 db_hotelmaster.tb_guesthistory 结构
DROP TABLE IF EXISTS `tb_guesthistory`;
CREATE TABLE IF NOT EXISTS `tb_guesthistory` (
  `GHID` varchar(32) NOT NULL,
  `GHBALANCEMENTID` varchar(32) NOT NULL,
  `GHREMARK` varchar(100) NOT NULL,
  `GHGUESTID` varchar(45) NOT NULL,
  `GHGUESTNAME` varchar(32) NOT NULL,
  PRIMARY KEY (`GHID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_hotelmaster.tb_guesthistory 的数据：~3 rows (大约)
DELETE FROM `tb_guesthistory`;
/*!40000 ALTER TABLE `tb_guesthistory` DISABLE KEYS */;
INSERT INTO `tb_guesthistory` (`GHID`, `GHBALANCEMENTID`, `GHREMARK`, `GHGUESTID`, `GHGUESTNAME`) VALUES
	('402881e51a448696011a4489790a0004', '402881e51a448696011a4489783f0003', '<div align="center">1.<b>remark test for edit controll</b><br></div>', '402881e51a39c232011a39da4d3e0005', 'esperamier'),
	('402881e51a53efae011a53f874e20005', '402881e51a53efae011a53f874550004', 'fdsafdsa', '402881e51a39c232011a39da4d3e0005', 'esperamier'),
	('402881e625636b70012563767f580002', '402881e625636b70012563767c6c0001', '', '402881e625587aa7012558e59ffa0001', '刘明');
/*!40000 ALTER TABLE `tb_guesthistory` ENABLE KEYS */;

-- 导出  表 db_hotelmaster.tb_operator 结构
DROP TABLE IF EXISTS `tb_operator`;
CREATE TABLE IF NOT EXISTS `tb_operator` (
  `OPUSERNAME` varchar(20) NOT NULL,
  `OPPASSWORD` varchar(32) NOT NULL,
  `OPPRIVILEGE` int(10) unsigned NOT NULL,
  `OPADDRESS` varchar(100) DEFAULT NULL,
  `OPNAME` varchar(20) NOT NULL,
  `OPTELEPHONE` varchar(16) DEFAULT NULL,
  `OPMOBILE` varchar(16) DEFAULT NULL,
  `OPZIP` varchar(10) DEFAULT NULL,
  `OPCREATETIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`OPUSERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_hotelmaster.tb_operator 的数据：~3 rows (大约)
DELETE FROM `tb_operator`;
/*!40000 ALTER TABLE `tb_operator` DISABLE KEYS */;
INSERT INTO `tb_operator` (`OPUSERNAME`, `OPPASSWORD`, `OPPRIVILEGE`, `OPADDRESS`, `OPNAME`, `OPTELEPHONE`, `OPMOBILE`, `OPZIP`, `OPCREATETIME`) VALUES
	('admin', 'admin', 255, NULL, 'NeoStudio', NULL, NULL, NULL, '2008-05-05 16:32:22'),
	('FoGhost', '330022', 0, NULL, 'Liang', NULL, NULL, NULL, '2008-04-20 16:32:22'),
	('user', '', 0, '', '', '0', '0', '0', '2010-01-29 15:52:59');
/*!40000 ALTER TABLE `tb_operator` ENABLE KEYS */;

-- 导出  表 db_hotelmaster.tb_reservitem 结构
DROP TABLE IF EXISTS `tb_reservitem`;
CREATE TABLE IF NOT EXISTS `tb_reservitem` (
  `RIMID` varchar(32) NOT NULL,
  `RESERVORDER_ROID` varchar(32) NOT NULL,
  `ROOM_RMID` varchar(32) NOT NULL,
  `RIMINDATETIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `RIMOUTDATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `RIMSTATE` varchar(16) NOT NULL,
  PRIMARY KEY (`RIMID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_hotelmaster.tb_reservitem 的数据：~17 rows (大约)
DELETE FROM `tb_reservitem`;
/*!40000 ALTER TABLE `tb_reservitem` DISABLE KEYS */;
INSERT INTO `tb_reservitem` (`RIMID`, `RESERVORDER_ROID`, `ROOM_RMID`, `RIMINDATETIME`, `RIMOUTDATETIME`, `RIMSTATE`) VALUES
	('297e12bf1a1f79b8011a1f7fd52c0002', '297e12bf1a1f79b8011a1f7fd4bf0001', '8106', '2008-05-25 12:00:00', '2008-05-26 12:00:00', '预定中'),
	('402881e41a1396da011a13aa651a0008', '402881e41a1396da011a13aa651a0007', '8109', '2008-05-23 12:00:00', '2008-05-24 12:00:00', '预定中'),
	('402881e51a570114011a570b85d50002', '402881e51a570114011a570b85390001', '8118', '2008-06-05 12:00:00', '2008-06-06 12:00:00', '预定中'),
	('402881e51a579a4b011a57eb1ac60006', '402881e51a579a4b011a57eb1ac60005', '8308', '2008-06-05 12:00:00', '2008-06-06 12:00:00', '已确认'),
	('402881e51a5958a3011a5977e94b0003', '402881e51a5958a3011a5977e94b0002', '8109', '2008-06-06 12:00:00', '2008-06-07 12:00:00', '预定中'),
	('402881e61a0a09e2011a0a618c43000c', '402881e61a0a09e2011a0a618c43000b', '8308', '2008-05-21 12:00:00', '2008-05-22 12:00:00', '预定中'),
	('402881e61a0a09e2011a0a62c494000e', '402881e61a0a09e2011a0a62c494000d', '8106', '2008-05-21 12:00:00', '2008-05-22 12:00:00', '预定中'),
	('402881e61a0a09e2011a0a63647d0010', '402881e61a0a09e2011a0a63647d000f', '8109', '2008-05-21 12:00:00', '2008-05-22 12:00:00', '预定中'),
	('402881e61a0a09e2011a0a677c670012', '402881e61a0a09e2011a0a677c670011', '8118', '2008-05-21 12:00:00', '2008-05-22 12:00:00', '预定中'),
	('402881e61a0a09e2011a0a692e9b0014', '402881e61a0a09e2011a0a692e9b0013', '8208', '2008-05-21 12:00:00', '2008-05-22 12:00:00', '预定中'),
	('402881e61a15d2a9011a15d668270002', '402881e41a1396da011a13aa651a0007', '8109', '2008-05-23 12:00:00', '2008-05-24 12:00:00', '预定中'),
	('402881e61a15d2a9011a15d668a40003', '402881e41a1396da011a13aa651a0007', '8106', '2008-05-23 12:00:00', '2008-05-24 12:00:00', '预定中'),
	('402881e61a18cda0011a18dbaf510009', '402881e61a18cda0011a18dbaf510008', '8109', '2008-05-24 12:00:00', '2008-05-25 12:00:00', '预定中'),
	('402881e61a18cda0011a18e75919000b', '402881e61a18ca48011a18cb73bd0001', '8106', '2008-05-24 12:00:00', '2008-05-25 12:00:00', '预定中'),
	('402881e6254e53a001254e6c32670010', '402881e6254e53a001254e69c1440009', '8109', '2009-12-02 12:00:00', '2009-12-03 12:00:00', '已光临'),
	('402881e6254e53a001254e6c32670011', '402881e6254e53a001254e69c1440009', '8208', '2009-12-02 12:00:00', '2009-12-03 12:00:00', '已光临'),
	('402881e6254e53a001254e6c32670012', '402881e6254e53a001254e69c1440009', '8209', '2009-12-02 12:00:00', '2009-12-03 12:00:00', '已光临');
/*!40000 ALTER TABLE `tb_reservitem` ENABLE KEYS */;

-- 导出  表 db_hotelmaster.tb_reservorder 结构
DROP TABLE IF EXISTS `tb_reservorder`;
CREATE TABLE IF NOT EXISTS `tb_reservorder` (
  `ROID` varchar(32) NOT NULL,
  `ROGROUPNAME` varchar(50) DEFAULT NULL,
  `ROGUESTNAME` varchar(20) NOT NULL,
  `ROTELPHONE` varchar(16) NOT NULL,
  `ROEMAIL` varchar(45) DEFAULT NULL,
  `ROINDATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ROEARLIESTTIME` time DEFAULT NULL,
  `ROLATESTTIME` time DEFAULT NULL,
  `ROPREOUTDATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `RORESERVMODEL` varchar(16) NOT NULL,
  `ROPAYMENTMODEL` varchar(16) NOT NULL,
  `ROPAIDMONEY` decimal(14,2) NOT NULL,
  `ROREMARK` varchar(200) DEFAULT NULL,
  `ROPREASSIGNROOM` varchar(32) DEFAULT NULL,
  `RORESERVSTATE` varchar(16) NOT NULL,
  `ROOPERATOR` varchar(32) NOT NULL,
  `ROCREATETIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ROFAX` varchar(16) DEFAULT NULL,
  `ROGUESTGENDER` varchar(6) NOT NULL,
  `ROGUESTCARDCATALOG` varchar(16) DEFAULT NULL,
  `ROGUESTCARDID` varchar(32) DEFAULT NULL,
  `ROTOTALRATE` decimal(14,2) NOT NULL,
  `ROORDERID` varchar(32) NOT NULL,
  PRIMARY KEY (`ROID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_hotelmaster.tb_reservorder 的数据：~13 rows (大约)
DELETE FROM `tb_reservorder`;
/*!40000 ALTER TABLE `tb_reservorder` DISABLE KEYS */;
INSERT INTO `tb_reservorder` (`ROID`, `ROGROUPNAME`, `ROGUESTNAME`, `ROTELPHONE`, `ROEMAIL`, `ROINDATETIME`, `ROEARLIESTTIME`, `ROLATESTTIME`, `ROPREOUTDATETIME`, `RORESERVMODEL`, `ROPAYMENTMODEL`, `ROPAIDMONEY`, `ROREMARK`, `ROPREASSIGNROOM`, `RORESERVSTATE`, `ROOPERATOR`, `ROCREATETIME`, `ROFAX`, `ROGUESTGENDER`, `ROGUESTCARDCATALOG`, `ROGUESTCARDID`, `ROTOTALRATE`, `ROORDERID`) VALUES
	('297e12bf1a1f79b8011a1f7fd4bf0001', '', 'dfa', 'sfdsfd', '', '2008-05-25 12:00:00', '12:00:00', '12:00:00', '2008-05-26 12:00:00', '电话预定', '现金', 0.00, '', '', '预定中', 'admin', '2008-05-25 17:54:08', '', '男', '身份证', '', 0.00, ''),
	('402881e41a1396da011a13aa651a0007', NULL, 'fsfds', 'fsdfds', '', '2008-05-23 12:00:00', '12:00:00', '12:00:00', '2008-05-24 12:00:00', '电话预定', '现金', 0.00, '', NULL, '预定中', 'admin', '2008-05-23 10:45:11', '', '男', '身份证', '412728168690466030', 0.00, ''),
	('402881e51a570114011a570b85390001', '', 'esperamier', '123456789231', 'dddddd@domain.com', '2008-06-05 12:00:00', '01:15:00', '01:15:00', '2008-06-06 12:00:00', '电话预定', '现金', 200.00, '', '', '预定中', 'admin', '2008-06-05 12:45:50', '', '男', '身份证', '362422198611160012', 300.00, ''),
	('402881e51a579a4b011a57eb1ac60005', '', 'esperamier', 'esperamier', 'kof@yahoo.com.cn', '2008-06-05 12:00:00', '01:00:00', '01:00:00', '2008-06-06 12:00:00', '领导安排', '支付卡', 0.00, '', '', '已确认', 'admin', '2008-06-05 16:50:02', '432432432432', '男', '身份证', '362422198611160012', 1000.00, ''),
	('402881e51a5958a3011a5977e94b0002', '', 'ref', 'dffd', '', '2008-06-06 12:00:00', '12:00:00', '12:00:00', '2008-06-07 12:00:00', '电话预定', '现金', 0.00, '', '', '预定中', 'Admin', '2008-06-06 00:03:27', '', '男', '身份证', '', 0.00, 'RO00000002'),
	('402881e61a0a09e2011a0a618c43000b', NULL, 'DFS', 'FDS', '', '2008-05-21 12:00:00', '12:00:00', '12:00:00', '2008-05-22 12:00:00', '电话预定', '现金', 0.00, '', NULL, '预定中', 'admin', '2008-05-21 15:29:02', '', '男', '身份证', '', 0.00, ''),
	('402881e61a0a09e2011a0a62c494000d', NULL, 'dfs', 'fds', '', '2008-05-21 12:00:00', '12:00:00', '12:00:00', '2008-05-22 12:00:00', '电话预定', '现金', 0.00, '', NULL, '预定中', 'admin', '2008-05-21 15:30:22', '', '男', '身份证', '', 0.00, ''),
	('402881e61a0a09e2011a0a63647d000f', NULL, 'fd', 'fd', '', '2008-05-21 12:00:00', '12:00:00', '12:00:00', '2008-05-22 12:00:00', '电话预定', '现金', 0.00, '', NULL, '预定中', 'admin', '2008-05-21 15:31:03', '', '男', '身份证', '', 0.00, ''),
	('402881e61a0a09e2011a0a677c670011', NULL, 'dfs', 'fdsf', '', '2008-05-21 12:00:00', '12:00:00', '12:00:00', '2008-05-22 12:00:00', '电话预定', '现金', 0.00, '', NULL, '预定中', 'admin', '2008-05-21 15:35:31', '', '男', '身份证', '', 0.00, ''),
	('402881e61a0a09e2011a0a692e9b0013', NULL, 'dsadad', 'sds', '', '2008-05-21 12:00:00', '12:00:00', '12:00:00', '2008-05-22 12:00:00', '电话预定', '现金', 0.00, '', NULL, '预定中', 'admin', '2008-05-21 15:37:22', '', '男', '身份证', '', 0.00, ''),
	('402881e61a18ca48011a18cb73bd0001', '', 'fsf', 'fsfd', '', '2008-05-24 12:00:00', '12:00:00', '12:00:00', '2008-05-25 12:00:00', '电话预定', '现金', 0.00, '', '', '预定中', 'admin', '2008-05-24 10:39:24', 'sdfsafd@', '男', '身份证', '', 0.00, ''),
	('402881e61a18cda0011a18dbaf510008', '', 'fsf', 'fdsfsf', '', '2008-05-24 12:00:00', '12:00:00', '12:00:00', '2008-05-25 12:00:00', '电话预定', '现金', 0.00, '', '', '预定中', 'admin', '2008-05-24 10:57:07', '', '男', '身份证', '', 0.00, ''),
	('402881e6254e53a001254e69c1440009', '', 'ddddddd', '020-26568911-15', 'dddd@yahoo.com.cn', '2009-12-02 12:00:00', '01:00:00', '08:30:00', '2009-12-03 12:00:00', '电话预定', '现金', 0.00, '', '', '已光临', 'Admin', '2009-12-02 16:02:51', '', '男', '身份证', '123456789123456', 0.00, 'RO00000001');
/*!40000 ALTER TABLE `tb_reservorder` ENABLE KEYS */;

-- 导出  表 db_hotelmaster.tb_room 结构
DROP TABLE IF EXISTS `tb_room`;
CREATE TABLE IF NOT EXISTS `tb_room` (
  `RMID` varchar(12) NOT NULL,
  `RMAREA` varchar(10) DEFAULT NULL,
  `RMFLOOR` varchar(10) NOT NULL,
  `RMPRCTPRICE` decimal(14,2) NOT NULL,
  `RMTELPHONE` varchar(24) DEFAULT NULL,
  `RMSTATE` tinyint(3) unsigned NOT NULL,
  `RMAVAILABLE` tinyint(1) NOT NULL,
  `RMCATALOG` varchar(32) NOT NULL,
  `RMPICTURE` varchar(100) NOT NULL,
  `RMPRCTDISCOUNT` decimal(14,2) NOT NULL DEFAULT '100.00',
  PRIMARY KEY (`RMID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_hotelmaster.tb_room 的数据：~11 rows (大约)
DELETE FROM `tb_room`;
/*!40000 ALTER TABLE `tb_room` DISABLE KEYS */;
INSERT INTO `tb_room` (`RMID`, `RMAREA`, `RMFLOOR`, `RMPRCTPRICE`, `RMTELPHONE`, `RMSTATE`, `RMAVAILABLE`, `RMCATALOG`, `RMPICTURE`, `RMPRCTDISCOUNT`) VALUES
	('8101', '8', '1', 260.00, '101', 2, 1, '标准间', 'public/images/rooms/standardroom.gif', 100.00),
	('8102', '8', '1', 260.00, '100', 0, 1, '标准间', 'public/images/rooms/standardroom.gif', 100.00),
	('8103', '8', '1', 260.00, '103', 2, 1, '标准间', 'public/images/rooms/standardroom.gif', 100.00),
	('8104', '8', '1', 260.00, '104', 0, 1, '标准间', 'public/images/rooms/standardroom.gif', 100.00),
	('8106', '8', '1', 268.00, '123', 2, 1, '单人间', 'public/images/rooms/single.gif', 100.00),
	('8109', '8', '1', 320.00, '126', 0, 1, '标准间', 'public/images/rooms/standardroom.gif', 100.00),
	('8118', '8', '1', 260.00, '127', 0, 1, '单人间', 'public/images/rooms/single.gif', 100.00),
	('8208', '8', '2', 320.00, '128', 0, 1, '标准间', 'public/images/rooms/standardroom.gif', 100.00),
	('8209', '8', '2', 260.00, '129', 0, 1, '单人间', 'public/images/rooms/single.gif', 100.00),
	('8308', '8', '3', 320.00, '130', 0, 1, '标准间', 'public/images/rooms/standardroom.gif', 100.00),
	('9101', '9', '1', 300.00, '9101', 0, 1, '超级豪华间', 'public/images/rooms/single.gif', 100.00);
/*!40000 ALTER TABLE `tb_room` ENABLE KEYS */;

-- 导出  表 db_hotelmaster.tb_roomcatalog 结构
DROP TABLE IF EXISTS `tb_roomcatalog`;
CREATE TABLE IF NOT EXISTS `tb_roomcatalog` (
  `RCID` varchar(32) NOT NULL,
  `RCNAME` varchar(12) NOT NULL,
  `RCBEDNUMBER` int(10) unsigned NOT NULL,
  `RCPREPRICE` decimal(14,2) NOT NULL,
  `RCPREDISCOUNT` decimal(14,2) DEFAULT '100.00',
  `RCHOURBASEPRICE` decimal(14,2) DEFAULT NULL,
  `RCPERHOURPRICE` decimal(14,2) DEFAULT NULL,
  PRIMARY KEY (`RCID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_hotelmaster.tb_roomcatalog 的数据：~5 rows (大约)
DELETE FROM `tb_roomcatalog`;
/*!40000 ALTER TABLE `tb_roomcatalog` DISABLE KEYS */;
INSERT INTO `tb_roomcatalog` (`RCID`, `RCNAME`, `RCBEDNUMBER`, `RCPREPRICE`, `RCPREDISCOUNT`, `RCHOURBASEPRICE`, `RCPERHOURPRICE`) VALUES
	('402881e51a5472f8011a547548440001', '单人间', 1, 200.00, 20.00, 50.00, 50.00),
	('402881e5267907ec0126790f5ec40003', '总统套房', 3, 50000.00, 300.00, 3000.00, 300.00),
	('402881e6255344820125538694350001', '豪华间', 2, 360.00, 0.00, 200.00, 100.00),
	('402881e625576bea0125578a63ba0002', '超级豪华间', 3, 1188.00, 100.00, 200.00, 200.00),
	('RC889', '标准间', 2, 260.00, 100.00, 150.00, 40.00);
/*!40000 ALTER TABLE `tb_roomcatalog` ENABLE KEYS */;


-- 导出 db_hr 的数据库结构
DROP DATABASE IF EXISTS `db_hr`;
CREATE DATABASE IF NOT EXISTS `db_hr` /*!40100 DEFAULT CHARACTER SET gb2312 */;
USE `db_hr`;

-- 导出  表 db_hr.educate 结构
DROP TABLE IF EXISTS `educate`;
CREATE TABLE IF NOT EXISTS `educate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `purpose` varchar(500) NOT NULL,
  `begintime` datetime DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `datum` text,
  `teacher` varchar(50) DEFAULT NULL,
  `student` varchar(50) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `educate` bit(1) NOT NULL,
  `effect` varchar(500) DEFAULT NULL,
  `summarize` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gb2312 COMMENT='培训信息表';

-- 正在导出表  db_hr.educate 的数据：~2 rows (大约)
DELETE FROM `educate`;
/*!40000 ALTER TABLE `educate` DISABLE KEYS */;
INSERT INTO `educate` (`id`, `name`, `purpose`, `begintime`, `endtime`, `datum`, `teacher`, `student`, `createtime`, `educate`, `effect`, `summarize`) VALUES
	(2, 'Swing课程培训', '提高员工Swing开发的能力', '2009-09-10 00:00:00', '2009-10-30 00:00:00', '《Swing从入门到精通》、《零基础学Swing》', '方威', '所有Java程序员', '2009-10-26 11:47:05', b'1', '很好', '在这次培训中，大家都学会了如何进行Swing开发'),
	(3, 'JavaWeb项目培训', '增强员工的动手能力', '2010-01-05 00:00:00', '2010-01-09 00:00:00', 'Java编程思想。', 'SUN', '所有Java程序员', '2010-01-28 14:49:49', b'1', '效果很好', '效果不错');
/*!40000 ALTER TABLE `educate` ENABLE KEYS */;

-- 导出  表 db_hr.institution 结构
DROP TABLE IF EXISTS `institution`;
CREATE TABLE IF NOT EXISTS `institution` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `reason` varchar(50) DEFAULT NULL,
  `explains` text,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gb2312 COMMENT='奖惩信息表';

-- 正在导出表  db_hr.institution 的数据：~2 rows (大约)
DELETE FROM `institution`;
/*!40000 ALTER TABLE `institution` DISABLE KEYS */;
INSERT INTO `institution` (`id`, `name`, `reason`, `explains`, `createtime`) VALUES
	(1, '小李罚款100元', '迟到1小时', '凡是上班时间迟到者一律罚款50元，超过1小时罚款100元！', '2009-10-22 14:11:39'),
	(2, '杨明奖励100元', '连续加班3天', '', '2009-10-26 14:25:22');
/*!40000 ALTER TABLE `institution` ENABLE KEYS */;

-- 导出  表 db_hr.job 结构
DROP TABLE IF EXISTS `job`;
CREATE TABLE IF NOT EXISTS `job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `sex` bit(1) DEFAULT b'1',
  `age` int(11) DEFAULT NULL,
  `job` varchar(50) DEFAULT NULL,
  `specialty` varchar(50) DEFAULT NULL,
  `experience` varchar(50) DEFAULT NULL,
  `studyeffort` varchar(50) DEFAULT NULL,
  `school` varchar(50) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `content` text,
  `isstock` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=gb2312 COMMENT='应聘人员信息表';

-- 正在导出表  db_hr.job 的数据：~4 rows (大约)
DELETE FROM `job`;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
INSERT INTO `job` (`id`, `name`, `sex`, `age`, `job`, `specialty`, `experience`, `studyeffort`, `school`, `tel`, `email`, `createtime`, `content`, `isstock`) VALUES
	(2, '刘笑笑', b'1', 30, '技术员', '信息与计算科学', '2', '本科', '湖南城市学院', '123456789', '928968880@qq.com', '2009-10-21 16:49:23', 'ddddd', b'1'),
	(3, '张振华', b'1', 30, '技术员', '信息与计算科学', '2', '本科', '湖南城市学院', '123456789', 'eggpeijun@qq.com', '2009-10-21 10:23:17', '', b'1'),
	(4, '李东阳', b'1', 25, 'Web程序员', '信息与计算科学', '1', '本科', '中南大学', '123456789', '123456@qq.com', '2009-10-22 20:10:05', '本人在校期间曾经参加过学校教务处网站的编写。', b'1'),
	(6, '徐翔', b'1', 25, 'Java工程师', '信息工程', '3', '本科', '湖南大学', '789456123', '123456@qq.com', '2009-10-26 10:56:30', '2007年，XXX软件公司从事Java Web开发工作。\r\n2008年，XXX软件公司担任项目组长工作。', b'1');
/*!40000 ALTER TABLE `job` ENABLE KEYS */;

-- 导出  表 db_hr.stipend 结构
DROP TABLE IF EXISTS `stipend`;
CREATE TABLE IF NOT EXISTS `stipend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `basic` float DEFAULT NULL,
  `eat` float DEFAULT NULL,
  `house` float DEFAULT NULL,
  `duty` float DEFAULT NULL,
  `scot` float DEFAULT NULL,
  `punishment` float DEFAULT NULL,
  `other` float DEFAULT NULL,
  `granttime` datetime DEFAULT NULL,
  `totalize` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=gb2312 COMMENT='薪金信息表';

-- 正在导出表  db_hr.stipend 的数据：~5 rows (大约)
DELETE FROM `stipend`;
/*!40000 ALTER TABLE `stipend` DISABLE KEYS */;
INSERT INTO `stipend` (`id`, `name`, `basic`, `eat`, `house`, `duty`, `scot`, `punishment`, `other`, `granttime`, `totalize`) VALUES
	(2, '张敏', 1111, 300, 300, 300, 200, 0, 600, '2009-02-03 00:00:00', 2411),
	(3, '李明', 2523, 300, 300, 300, 200, 100, 200, '2009-02-03 00:00:00', 3323),
	(4, '徐翔', 2800, 300, 300, 200, 200, 200, 200, '2009-02-03 00:00:00', 3400),
	(5, '张亮', 6500, 1000, 1000, 500, 800, 600, 500, '2009-02-03 00:00:00', 8100),
	(6, '徐翔', 4500, 200, 200, 120, 400, 300, 500, '2009-02-03 00:00:00', 4820);
/*!40000 ALTER TABLE `stipend` ENABLE KEYS */;

-- 导出  表 db_hr.tb_customer 结构
DROP TABLE IF EXISTS `tb_customer`;
CREATE TABLE IF NOT EXISTS `tb_customer` (
  `customerNO` varchar(20) NOT NULL DEFAULT '',
  `address` varchar(30) DEFAULT '(NULL)',
  `customerName` varchar(15) DEFAULT '(NULL)',
  `otherInfo` varchar(30) DEFAULT '(NULL)',
  `phone` varchar(15) DEFAULT '(NULL)',
  `relationman` varchar(15) DEFAULT '(NULL)',
  PRIMARY KEY (`customerNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_hr.tb_customer 的数据：~6 rows (大约)
DELETE FROM `tb_customer`;
/*!40000 ALTER TABLE `tb_customer` DISABLE KEYS */;
INSERT INTO `tb_customer` (`customerNO`, `address`, `customerName`, `otherInfo`, `phone`, `relationman`) VALUES
	('0201305', '北京市朝阳区XXX', '周氏国际', '备注1', '123456789', '周先生'),
	('0201306', '北京市朝阳区XXX', '张氏国际', '备注', '123456789', '张先生'),
	('0201307', '北京市朝阳区XXX', '李氏国际', '备注', '123456789', '李先生'),
	('0201308', '北京市朝阳区XXX', '刘氏国际', '备注', '123456789', '刘先生'),
	('0201309', '北京市朝阳区XXX', '陈氏国际', '备注', '123456789', '陈先生'),
	('0201310', '北京市朝阳区XXX', '唐氏国际', '备注信息', '123456789', '唐先生');
/*!40000 ALTER TABLE `tb_customer` ENABLE KEYS */;

-- 导出  表 db_hr.tb_order 结构
DROP TABLE IF EXISTS `tb_order`;
CREATE TABLE IF NOT EXISTS `tb_order` (
  `orderNO` varchar(10) NOT NULL DEFAULT '',
  `orderTime` datetime DEFAULT NULL,
  `otherInfo` varchar(50) DEFAULT '(NULL)',
  `quantity` varchar(10) DEFAULT '(NULL)',
  `customerNO` varchar(20) DEFAULT '(NULL)',
  `productNO` varchar(15) DEFAULT '(NULL)',
  PRIMARY KEY (`orderNO`),
  KEY `FKFA98EE3DD96DD882` (`customerNO`),
  KEY `FKFA98EE3D652AF8BA` (`productNO`),
  CONSTRAINT `FKFA98EE3D652AF8BA` FOREIGN KEY (`productNO`) REFERENCES `tb_product` (`productNO`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FKFA98EE3DD96DD882` FOREIGN KEY (`customerNO`) REFERENCES `tb_customer` (`customerNO`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_hr.tb_order 的数据：~4 rows (大约)
DELETE FROM `tb_order`;
/*!40000 ALTER TABLE `tb_order` DISABLE KEYS */;
INSERT INTO `tb_order` (`orderNO`, `orderTime`, `otherInfo`, `quantity`, `customerNO`, `productNO`) VALUES
	('1010121', '2009-11-08 00:00:00', '6月10号之前必须发货', '100', '0201305', '0104578'),
	('1010122', '2009-11-08 00:00:00', '6月10号之前必须发货', '500', '0201307', '0104579'),
	('1010123', '2009-11-08 00:00:00', '6月13号之前必须发货', '500', '0201310', '0104578'),
	('1010124', '2009-11-08 00:00:00', '6月14号之前必须发货', '223', '0201308', '0104588');
/*!40000 ALTER TABLE `tb_order` ENABLE KEYS */;

-- 导出  表 db_hr.tb_product 结构
DROP TABLE IF EXISTS `tb_product`;
CREATE TABLE IF NOT EXISTS `tb_product` (
  `productNO` varchar(15) NOT NULL DEFAULT '',
  `otherInfo` varchar(50) DEFAULT '(NULL)',
  `price` decimal(10,2) DEFAULT '0.00',
  `producingArea` varchar(20) DEFAULT '(NULL)',
  `productName` varchar(20) DEFAULT '(NULL)',
  `productOwner` varchar(20) DEFAULT '(NULL)',
  `quantity` int(11) DEFAULT '0',
  `unit` varchar(20) DEFAULT '(NULL)',
  `producttypeNO` varchar(15) DEFAULT '(NULL)',
  PRIMARY KEY (`productNO`),
  KEY `FKED97341E7C52804E` (`producttypeNO`),
  CONSTRAINT `FKED97341E7C52804E` FOREIGN KEY (`producttypeNO`) REFERENCES `tb_producttype` (`producttypeNO`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_hr.tb_product 的数据：~4 rows (大约)
DELETE FROM `tb_product`;
/*!40000 ALTER TABLE `tb_product` DISABLE KEYS */;
INSERT INTO `tb_product` (`productNO`, `otherInfo`, `price`, `producingArea`, `productName`, `productOwner`, `quantity`, `unit`, `producttypeNO`) VALUES
	('0104578', '备注', 2999.00, '中国大陆', '飞毛腿踏步机', '飞毛腿公司', 100, '台', '15487'),
	('0104579', '备注', 1888.00, '美国', '宝贝踏步机', '宝贝集团', 50, '台', '15487'),
	('0104587', '备注', 2500.00, '中国大陆', '桥大跑步机', '桥大科技', 150, '台', '17894'),
	('0104588', '备注', 5000.00, '美国', '汇祥跑步机', '汇祥科技', 20, '台', '17894');
/*!40000 ALTER TABLE `tb_product` ENABLE KEYS */;

-- 导出  表 db_hr.tb_producttype 结构
DROP TABLE IF EXISTS `tb_producttype`;
CREATE TABLE IF NOT EXISTS `tb_producttype` (
  `producttypeNO` varchar(15) NOT NULL DEFAULT '',
  `producttypeName` varchar(20) DEFAULT '(NULL)',
  PRIMARY KEY (`producttypeNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_hr.tb_producttype 的数据：~6 rows (大约)
DELETE FROM `tb_producttype`;
/*!40000 ALTER TABLE `tb_producttype` DISABLE KEYS */;
INSERT INTO `tb_producttype` (`producttypeNO`, `producttypeName`) VALUES
	('09', '测试'),
	('12456', '拉力器'),
	('15123', '拉力器'),
	('15474', '健身车'),
	('15487', '踏步机'),
	('17894', '跑步机');
/*!40000 ALTER TABLE `tb_producttype` ENABLE KEYS */;

-- 导出  表 db_hr.tb_quotation 结构
DROP TABLE IF EXISTS `tb_quotation`;
CREATE TABLE IF NOT EXISTS `tb_quotation` (
  `quotationNO` varchar(15) NOT NULL DEFAULT '',
  `otherInfo` varchar(50) DEFAULT '(NULL)',
  `quotationMan` varchar(15) DEFAULT '(NULL)',
  `quotationTime` datetime DEFAULT NULL,
  `customerNO` varchar(20) DEFAULT '(NULL)',
  `productNO` varchar(15) DEFAULT '',
  PRIMARY KEY (`quotationNO`),
  KEY `FKCABDECFBD96DD882` (`customerNO`),
  KEY `FKCABDECFB652AF8BA` (`productNO`),
  CONSTRAINT `FKCABDECFB652AF8BA` FOREIGN KEY (`productNO`) REFERENCES `tb_product` (`productNO`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FKCABDECFBD96DD882` FOREIGN KEY (`customerNO`) REFERENCES `tb_customer` (`customerNO`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_hr.tb_quotation 的数据：~4 rows (大约)
DELETE FROM `tb_quotation`;
/*!40000 ALTER TABLE `tb_quotation` DISABLE KEYS */;
INSERT INTO `tb_quotation` (`quotationNO`, `otherInfo`, `quotationMan`, `quotationTime`, `customerNO`, `productNO`) VALUES
	('01020304', '以后多多合作', '小张', '2009-11-08 00:00:00', '0201305', '0104578'),
	('01020305', '以后多多合作', '小李', '2009-11-08 00:00:00', '0201306', '0104579'),
	('01020306', '以后多多合作', '小孙', '2009-11-08 00:00:00', '0201310', '0104588'),
	('01020307', '以后多多合作', '杨波', '2009-11-08 00:00:00', '0201308', '0104578');
/*!40000 ALTER TABLE `tb_quotation` ENABLE KEYS */;

-- 导出  表 db_hr.tb_user 结构
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE IF NOT EXISTS `tb_user` (
  `username` varchar(18) NOT NULL DEFAULT '',
  `grade` int(11) NOT NULL DEFAULT '0',
  `password` varchar(18) DEFAULT '(NULL)',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_hr.tb_user 的数据：~4 rows (大约)
DELETE FROM `tb_user`;
/*!40000 ALTER TABLE `tb_user` DISABLE KEYS */;
INSERT INTO `tb_user` (`username`, `grade`, `password`) VALUES
	('2222', 1, '2222'),
	('3', 3, '3'),
	('admin', 3, 'admin'),
	('daa', 1, '22sa');
/*!40000 ALTER TABLE `tb_user` ENABLE KEYS */;

-- 导出  表 db_hr.users 结构
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `sex` bit(1) DEFAULT b'1',
  `birthday` datetime NOT NULL,
  `createtime` datetime NOT NULL,
  `isadmin` bit(1) DEFAULT b'0',
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=gb2312 COMMENT='人员信息表';

-- 正在导出表  db_hr.users 的数据：~2 rows (大约)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `username`, `password`, `sex`, `birthday`, `createtime`, `isadmin`, `content`) VALUES
	(1, 'admin', 'admin', b'1', '1988-01-03 00:00:00', '2005-05-09 00:00:00', b'1', '超级管理员'),
	(4, 'sanqing', '1234567', b'1', '1988-01-04 00:00:00', '2009-10-21 10:21:33', b'1', '管理员');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;


-- 导出 db_javaee 的数据库结构
DROP DATABASE IF EXISTS `db_javaee`;
CREATE DATABASE IF NOT EXISTS `db_javaee` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_javaee`;

-- 导出  表 db_javaee.news_inf 结构
DROP TABLE IF EXISTS `news_inf`;
CREATE TABLE IF NOT EXISTS `news_inf` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- 正在导出表  db_javaee.news_inf 的数据：~2 rows (大约)
DELETE FROM `news_inf`;
/*!40000 ALTER TABLE `news_inf` DISABLE KEYS */;
INSERT INTO `news_inf` (`news_id`, `news_title`) VALUES
	(1, 'Java union'),
	(2, 'crazyit.org');
/*!40000 ALTER TABLE `news_inf` ENABLE KEYS */;


-- 导出 db_library 的数据库结构
DROP DATABASE IF EXISTS `db_library`;
CREATE DATABASE IF NOT EXISTS `db_library` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_library`;

-- 导出  表 db_library.tb_bookcase 结构
DROP TABLE IF EXISTS `tb_bookcase`;
CREATE TABLE IF NOT EXISTS `tb_bookcase` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `Column_3` char(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=gb2312;

-- 正在导出表  db_library.tb_bookcase 的数据：2 rows
DELETE FROM `tb_bookcase`;
/*!40000 ALTER TABLE `tb_bookcase` DISABLE KEYS */;
INSERT INTO `tb_bookcase` (`id`, `name`, `Column_3`) VALUES
	(3, '书架1', NULL),
	(4, '书架2', NULL);
/*!40000 ALTER TABLE `tb_bookcase` ENABLE KEYS */;

-- 导出  表 db_library.tb_bookinfo 结构
DROP TABLE IF EXISTS `tb_bookinfo`;
CREATE TABLE IF NOT EXISTS `tb_bookinfo` (
  `barcode` varchar(30) DEFAULT NULL,
  `bookname` varchar(70) DEFAULT NULL,
  `typeid` int(10) unsigned DEFAULT NULL,
  `author` varchar(30) DEFAULT NULL,
  `translator` varchar(30) DEFAULT NULL,
  `ISBN` varchar(20) DEFAULT NULL,
  `price` float(8,2) DEFAULT NULL,
  `page` int(10) unsigned DEFAULT NULL,
  `bookcase` int(10) unsigned DEFAULT NULL,
  `inTime` date DEFAULT NULL,
  `operator` varchar(30) DEFAULT NULL,
  `del` tinyint(1) DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=gb2312;

-- 正在导出表  db_library.tb_bookinfo 的数据：9 rows
DELETE FROM `tb_bookinfo`;
/*!40000 ALTER TABLE `tb_bookinfo` DISABLE KEYS */;
INSERT INTO `tb_bookinfo` (`barcode`, `bookname`, `typeid`, `author`, `translator`, `ISBN`, `price`, `page`, `bookcase`, `inTime`, `operator`, `del`, `id`) VALUES
	('9787302047230', 'Java 2 实用教程', 1, 'shuanyulin', 'ceshi', '978-7', 39.00, 440, 4, '2007-11-22', 'tsoft', 1, 1),
	('jk', 'kjkj', 1, '***', '', '7-302', 12.00, 0, 1, '2007-11-22', 'tsoft', 1, 2),
	('9787115157690', 'JSP程序开发范例', 1, '***', '', '978-7', 89.00, 816, 3, '2007-11-23', 'tsoft', 1, 3),
	('123', '事实', 1, '11', '11', '7-302', 11.00, 11, 1, '2007-12-18', 'tsoft', 1, 5),
	('9787302047492', 'DHTML动态网页制作', 3, 'shuangyulin', 'ceshi', '7-302', 45.00, 221, 4, '2009-04-25', 'admin', 1, 7),
	('9787508614557 ', '巴菲特教你读财报', 1, '(美)玛丽.巴菲特;戴维.克拉克', '李凤', '978-6', 30.00, 179, 3, '2009-12-18', 'admin', 0, 8),
	('9787802235281', '不抱怨时间:谁说重要事不能明天做', 1, '(英)马克.福斯特', '于海生', '978-5', 20.00, 0, 3, '2009-12-18', 'admin', 0, 9),
	('9787040276985 ', '全国硕士研究生入学统一考试英语考试大纲解析:2010年版', 1, '本书编写组', '', '010', 32.00, 266, 4, '2009-12-18', 'admin', 0, 10),
	('9787300087993', '新托业词汇必备', 8, '(韩)文德', '付莉', '010', 58.00, 515, 3, '2009-12-18', 'admin', 0, 11);
/*!40000 ALTER TABLE `tb_bookinfo` ENABLE KEYS */;

-- 导出  表 db_library.tb_booktype 结构
DROP TABLE IF EXISTS `tb_booktype`;
CREATE TABLE IF NOT EXISTS `tb_booktype` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `typename` varchar(30) DEFAULT NULL,
  `days` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=gb2312;

-- 正在导出表  db_library.tb_booktype 的数据：5 rows
DELETE FROM `tb_booktype`;
/*!40000 ALTER TABLE `tb_booktype` DISABLE KEYS */;
INSERT INTO `tb_booktype` (`id`, `typename`, `days`) VALUES
	(1, '经济管理', 40),
	(3, '人文科教', 50),
	(6, '计算机', 30),
	(7, '小儿学习', 30),
	(8, '外语学习', 60);
/*!40000 ALTER TABLE `tb_booktype` ENABLE KEYS */;

-- 导出  表 db_library.tb_borrow 结构
DROP TABLE IF EXISTS `tb_borrow`;
CREATE TABLE IF NOT EXISTS `tb_borrow` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `readerid` int(10) unsigned DEFAULT NULL,
  `bookid` int(10) DEFAULT NULL,
  `borrowTime` date DEFAULT NULL,
  `backTime` date DEFAULT NULL,
  `operator` varchar(30) DEFAULT NULL,
  `ifback` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=gb2312;

-- 正在导出表  db_library.tb_borrow 的数据：12 rows
DELETE FROM `tb_borrow`;
/*!40000 ALTER TABLE `tb_borrow` DISABLE KEYS */;
INSERT INTO `tb_borrow` (`id`, `readerid`, `bookid`, `borrowTime`, `backTime`, `operator`, `ifback`) VALUES
	(1, 1, 1, '2007-11-22', '2007-12-22', 'tsoft', 1),
	(2, 1, 3, '2007-11-26', '2007-12-26', 'tsoft', 0),
	(3, 1, 1, '2007-11-26', '2007-12-26', 'tsoft', 0),
	(4, 3, 6, '2007-12-29', '2007-01-08', 'Tsoft', 0),
	(5, 3, 1, '2007-12-29', '2008-01-28', 'Tsoft', 0),
	(6, 3, 3, '2007-12-29', '2008-01-28', 'Tsoft', 1),
	(7, 4, 7, '2009-04-25', '2009-04-30', 'admin', 0),
	(8, 5, 8, '2009-12-18', '2010-03-13', 'admin', 0),
	(9, 5, 9, '2009-12-18', '2010-03-13', 'admin', 0),
	(10, 6, 11, '2009-12-18', '2010-02-16', 'admin', 0),
	(11, 7, 8, '2010-02-01', '2010-03-13', 'admin', 1),
	(12, 7, 8, '2010-02-01', '2010-03-13', 'admin', 1);
/*!40000 ALTER TABLE `tb_borrow` ENABLE KEYS */;

-- 导出  表 db_library.tb_giveback 结构
DROP TABLE IF EXISTS `tb_giveback`;
CREATE TABLE IF NOT EXISTS `tb_giveback` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `readerid` int(11) DEFAULT NULL,
  `bookid` int(11) DEFAULT NULL,
  `backTime` date DEFAULT NULL,
  `operator` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=gb2312;

-- 正在导出表  db_library.tb_giveback 的数据：4 rows
DELETE FROM `tb_giveback`;
/*!40000 ALTER TABLE `tb_giveback` DISABLE KEYS */;
INSERT INTO `tb_giveback` (`id`, `readerid`, `bookid`, `backTime`, `operator`) VALUES
	(1, 1, 1, '2007-11-22', 'tsoft'),
	(2, 3, 3, '2007-01-03', 'Tsoft'),
	(3, 7, 8, '2010-02-01', 'admin'),
	(4, 7, 8, '2010-02-01', 'admin');
/*!40000 ALTER TABLE `tb_giveback` ENABLE KEYS */;

-- 导出  表 db_library.tb_library 结构
DROP TABLE IF EXISTS `tb_library`;
CREATE TABLE IF NOT EXISTS `tb_library` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `libraryname` varchar(50) DEFAULT NULL,
  `curator` varchar(10) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `createDate` date DEFAULT NULL,
  `introduce` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gb2312;

-- 正在导出表  db_library.tb_library 的数据：1 rows
DELETE FROM `tb_library`;
/*!40000 ALTER TABLE `tb_library` DISABLE KEYS */;
INSERT INTO `tb_library` (`id`, `libraryname`, `curator`, `tel`, `address`, `email`, `url`, `createDate`, `introduce`) VALUES
	(1, '智慧图书馆', '汪建林', '13558690869', '四川成都', 'wangjianlin1985@126.com', 'http://shop34864101.taobao.com', '1999-05-06', '本市高级图书馆');
/*!40000 ALTER TABLE `tb_library` ENABLE KEYS */;

-- 导出  表 db_library.tb_manager 结构
DROP TABLE IF EXISTS `tb_manager`;
CREATE TABLE IF NOT EXISTS `tb_manager` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `PWD` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=gb2312;

-- 正在导出表  db_library.tb_manager 的数据：3 rows
DELETE FROM `tb_manager`;
/*!40000 ALTER TABLE `tb_manager` DISABLE KEYS */;
INSERT INTO `tb_manager` (`id`, `name`, `PWD`) VALUES
	(3, 'admin', 'admin'),
	(4, 'tsoft', '111'),
	(5, 'wangjianlin', '198517');
/*!40000 ALTER TABLE `tb_manager` ENABLE KEYS */;

-- 导出  表 db_library.tb_parameter 结构
DROP TABLE IF EXISTS `tb_parameter`;
CREATE TABLE IF NOT EXISTS `tb_parameter` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cost` int(10) unsigned DEFAULT NULL,
  `validity` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gb2312;

-- 正在导出表  db_library.tb_parameter 的数据：1 rows
DELETE FROM `tb_parameter`;
/*!40000 ALTER TABLE `tb_parameter` DISABLE KEYS */;
INSERT INTO `tb_parameter` (`id`, `cost`, `validity`) VALUES
	(1, 40, 3);
/*!40000 ALTER TABLE `tb_parameter` ENABLE KEYS */;

-- 导出  表 db_library.tb_publishing 结构
DROP TABLE IF EXISTS `tb_publishing`;
CREATE TABLE IF NOT EXISTS `tb_publishing` (
  `ISBN` varchar(20) DEFAULT NULL,
  `pubname` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;

-- 正在导出表  db_library.tb_publishing 的数据：5 rows
DELETE FROM `tb_publishing`;
/*!40000 ALTER TABLE `tb_publishing` DISABLE KEYS */;
INSERT INTO `tb_publishing` (`ISBN`, `pubname`) VALUES
	('7-302', '清华大学出版社'),
	('978-7', '人民邮电出版社'),
	('978-6', '中信出版社'),
	('978-5', '中国三峡出版社'),
	('010', '高等教育出版社 ');
/*!40000 ALTER TABLE `tb_publishing` ENABLE KEYS */;

-- 导出  表 db_library.tb_purview 结构
DROP TABLE IF EXISTS `tb_purview`;
CREATE TABLE IF NOT EXISTS `tb_purview` (
  `id` int(11) NOT NULL,
  `sysset` tinyint(1) DEFAULT '0',
  `readerset` tinyint(1) DEFAULT '0',
  `bookset` tinyint(1) DEFAULT '0',
  `borrowback` tinyint(1) DEFAULT '0',
  `sysquery` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;

-- 正在导出表  db_library.tb_purview 的数据：3 rows
DELETE FROM `tb_purview`;
/*!40000 ALTER TABLE `tb_purview` DISABLE KEYS */;
INSERT INTO `tb_purview` (`id`, `sysset`, `readerset`, `bookset`, `borrowback`, `sysquery`) VALUES
	(3, 1, 1, 1, 1, 1),
	(4, 1, 1, 1, 1, 1),
	(5, 1, 1, 1, 1, 1);
/*!40000 ALTER TABLE `tb_purview` ENABLE KEYS */;

-- 导出  表 db_library.tb_reader 结构
DROP TABLE IF EXISTS `tb_reader`;
CREATE TABLE IF NOT EXISTS `tb_reader` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `sex` varchar(4) DEFAULT NULL,
  `barcode` varchar(30) DEFAULT NULL,
  `vocation` varchar(50) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `paperType` varchar(10) DEFAULT NULL,
  `paperNO` varchar(20) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `createDate` date DEFAULT NULL,
  `operator` varchar(30) DEFAULT NULL,
  `remark` text,
  `typeid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=gb2312;

-- 正在导出表  db_library.tb_reader 的数据：3 rows
DELETE FROM `tb_reader`;
/*!40000 ALTER TABLE `tb_reader` DISABLE KEYS */;
INSERT INTO `tb_reader` (`id`, `name`, `sex`, `barcode`, `vocation`, `birthday`, `paperType`, `paperNO`, `tel`, `email`, `createDate`, `operator`, `remark`, `typeid`) VALUES
	(5, '庞晓庆', '男', '050930222', '学生', '1985-05-12', '身份证', '123456789745614578', '010-78945613', 'fdsfds@ffwe.com', '2009-12-18', 'admin', '', 1),
	(6, '杨杰', '男', '050930233', '图书馆工作人员', '1981-05-12', '身份证', '123456789745614578', '010-456789123', 'fdsfds@ffwe.com', '2009-12-18', 'admin', '', 2),
	(7, '欧阳花', '女', '050930234', '教师', '1983-05-12', '身份证', '123456789745614578', '010-456789123', 'fdsfds@ffwe.com', '2009-12-18', 'admin', '', 3);
/*!40000 ALTER TABLE `tb_reader` ENABLE KEYS */;

-- 导出  表 db_library.tb_readertype 结构
DROP TABLE IF EXISTS `tb_readertype`;
CREATE TABLE IF NOT EXISTS `tb_readertype` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `number` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gb2312;

-- 正在导出表  db_library.tb_readertype 的数据：3 rows
DELETE FROM `tb_readertype`;
/*!40000 ALTER TABLE `tb_readertype` DISABLE KEYS */;
INSERT INTO `tb_readertype` (`id`, `name`, `number`) VALUES
	(1, '学生', 3),
	(2, '工作人员', 5),
	(3, '教师', 4);
/*!40000 ALTER TABLE `tb_readertype` ENABLE KEYS */;


-- 导出 db_music 的数据库结构
DROP DATABASE IF EXISTS `db_music`;
CREATE DATABASE IF NOT EXISTS `db_music` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_music`;

-- 导出  表 db_music.singer 结构
DROP TABLE IF EXISTS `singer`;
CREATE TABLE IF NOT EXISTS `singer` (
  `SINGER_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `BAND_ID` int(10) unsigned DEFAULT NULL,
  `COMPOSITIONSINGER_ID` int(10) unsigned DEFAULT NULL,
  `NAME` varchar(45) DEFAULT NULL,
  `REGION` varchar(45) DEFAULT NULL,
  `SEX` char(1) DEFAULT NULL,
  `TYPE` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`SINGER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312 COMMENT='歌手信息表';

-- 正在导出表  db_music.singer 的数据：~0 rows (大约)
DELETE FROM `singer`;
/*!40000 ALTER TABLE `singer` DISABLE KEYS */;
/*!40000 ALTER TABLE `singer` ENABLE KEYS */;

-- 导出  表 db_music.song 结构
DROP TABLE IF EXISTS `song`;
CREATE TABLE IF NOT EXISTS `song` (
  `SONG_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `SINGER_ID` int(10) unsigned DEFAULT NULL,
  `NAME` varchar(20) DEFAULT NULL,
  `LOCATION` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SONG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312 COMMENT='歌曲信息表';

-- 正在导出表  db_music.song 的数据：~0 rows (大约)
DELETE FROM `song`;
/*!40000 ALTER TABLE `song` DISABLE KEYS */;
/*!40000 ALTER TABLE `song` ENABLE KEYS */;

-- 导出  表 db_music.user 结构
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `USER_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `USER_NAME` varchar(30) DEFAULT NULL,
  `PASSWORD` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gb2312 COMMENT='用户信息表';

-- 正在导出表  db_music.user 的数据：~1 rows (大约)
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`USER_ID`, `USER_NAME`, `PASSWORD`) VALUES
	(1, 'admin', 'admin');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;


-- 导出 db_mybirger 的数据库结构
DROP DATABASE IF EXISTS `db_mybirger`;
CREATE DATABASE IF NOT EXISTS `db_mybirger` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_mybirger`;

-- 导出  表 db_mybirger.din 结构
DROP TABLE IF EXISTS `din`;
CREATE TABLE IF NOT EXISTS `din` (
  `Id` varchar(20) NOT NULL,
  `Hao` varchar(10) NOT NULL,
  `Qifei` varchar(20) NOT NULL,
  `Mudi` varchar(20) NOT NULL,
  `Rqi` varchar(20) NOT NULL,
  `Jiage` varchar(10) NOT NULL,
  `Piao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_mybirger.din 的数据：~3 rows (大约)
DELETE FROM `din`;
/*!40000 ALTER TABLE `din` DISABLE KEYS */;
INSERT INTO `din` (`Id`, `Hao`, `Qifei`, `Mudi`, `Rqi`, `Jiage`, `Piao`) VALUES
	('eggpeijun', 'T101', '武汉', '北京', '2009-12-11', '10', 1),
	('eggpeijun', 'T114', '长沙', '北京', '2010-01-01', '540', 2),
	('jamestest', 'T110', '武汉', '北京', '2010-02-09', '100', 0);
/*!40000 ALTER TABLE `din` ENABLE KEYS */;

-- 导出  表 db_mybirger.sch 结构
DROP TABLE IF EXISTS `sch`;
CREATE TABLE IF NOT EXISTS `sch` (
  `Hao` varchar(10) NOT NULL,
  `Qifei` varchar(20) NOT NULL,
  `Rqi` date DEFAULT NULL,
  `Mudi` varchar(20) NOT NULL,
  `Jiage` int(5) NOT NULL,
  `Piaosu` int(11) NOT NULL,
  PRIMARY KEY (`Hao`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_mybirger.sch 的数据：~4 rows (大约)
DELETE FROM `sch`;
/*!40000 ALTER TABLE `sch` DISABLE KEYS */;
INSERT INTO `sch` (`Hao`, `Qifei`, `Rqi`, `Mudi`, `Jiage`, `Piaosu`) VALUES
	('T101', '武汉', '2009-12-11', '北京', 10, 0),
	('T110', '武汉', '2010-02-09', '北京', 100, 10),
	('T114', '长沙', '2010-01-01', '北京', 540, 198),
	('T125', '上海', '2010-01-06', '北京', 270, 30);
/*!40000 ALTER TABLE `sch` ENABLE KEYS */;

-- 导出  表 db_mybirger.user 结构
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `Username` varchar(20) NOT NULL,
  `Password` varchar(16) NOT NULL,
  `Name` varchar(10) NOT NULL,
  `Sex` varchar(2) NOT NULL,
  `Tel` varchar(16) NOT NULL,
  `Email` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_mybirger.user 的数据：~2 rows (大约)
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`Username`, `Password`, `Name`, `Sex`, `Tel`, `Email`) VALUES
	('eggpeijun', '123456', 'zhangsan', '男', '010456789123', 'fdsfds@ffwe.com'),
	('jamestest', '123456', '杨波', '男', '01023232323', '123@qq.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;


-- 导出 db_news2 的数据库结构
DROP DATABASE IF EXISTS `db_news2`;
CREATE DATABASE IF NOT EXISTS `db_news2` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_news2`;

-- 导出  表 db_news2.news 结构
DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `newsId` int(11) NOT NULL AUTO_INCREMENT,
  `classId` int(11) NOT NULL DEFAULT '0',
  `kindId` int(11) NOT NULL DEFAULT '0',
  `myOther` int(11) NOT NULL DEFAULT '0',
  `headTitle` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `connect` varchar(255) DEFAULT NULL,
  `author` varchar(20) NOT NULL DEFAULT '',
  `editor` varchar(20) DEFAULT NULL,
  `newsFrom` varchar(40) DEFAULT NULL,
  `top` int(11) DEFAULT NULL,
  `newsTime` varchar(20) DEFAULT NULL,
  `hits` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  `tag` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`newsId`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=gb2312;

-- 正在导出表  db_news2.news 的数据：5 rows
DELETE FROM `news`;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` (`newsId`, `classId`, `kindId`, `myOther`, `headTitle`, `content`, `connect`, `author`, `editor`, `newsFrom`, `top`, `newsTime`, `hits`, `state`, `tag`) VALUES
	(28, 1, 1, 0, '详解Linux回击微软', '据国外媒体报道，一直以来，微软都声称自己占有93%的全球上网本操作系统市场份额。然而，日前，ABI Research发布的数据却显示，Linux占据上网本市场32%的市场份额，并且还预测Linux将会在2013年的上网本市场中取代Windows。上述事实表明，两者的数据是大相径庭的。<br><br><br>公信力<br><br>　　毋庸置疑的，做为全球最大的软件公司，微软具有很强的公信力。<br><br><br>　　而ABI Research则已经从事调查行业19年的时间了，去年，高级分析师Jeff Orr也加入了ABI Research，可以说，ABI Research是一家根基稳固的公司。<br><br><br>戴尔发表声明<br><br>　　1月份，当有消息称，在上网本市场中，Windows彻底击败了Linux的时候，戴尔公司表示，该公司有1/3的Mini 9s预装的都是Linux，而且回报率并不比Windows XP。<br><br><br>　　分析师Orr强调指出，目前，很多的Linux用户都不是美国地区的，很多美国地区以外的用户使用的是Linux操作系统。<br><br><br>孰真孰假<br><br>　　众所周知，微软的首席执行官史蒂夫鲍尔默很反对外来物品，例如苹果的iPhone手机。前段时间，鲍尔默声称，该公司已经占据移动市场60%的市场份额，但是事实上仅为14%。由此看来，鲍尔默很有可能是一个温暖、充满关怀的CEO，并不喜欢听坏消息。<br><br><br>为何坏消息就是好消息<br><br>　　“例外管理”（MBE）是一个流行的管理模式，就是指有人必须将坏消息告知于CEO。然后，CEO就会寻找解决问题的途径。因此，坏消息可能会变成好消息。<br><br><br>　　但是，在微软公司中，很少会有人将坏消息报告给CEO。然而，事实就是事实，是掩盖不了的。<br><br><br>不同角度去分析问题<br><br>　　就这个问题来讲，并不能说微软公司在撒谎，很有可能是他们分析的国家和领域不同。', '', '华军资讯', '小王', '华军资讯', 0, '2009-12-16 10:22:58', 6, 1, 1),
	(29, 1, 1, 0, '开源Android将干掉Windows Mobile五大原因', '新闻分析：微软的Windows Mobile操作系统可能是Android崛起最容易攻击的对象，在过去的一年中，Android的市场份额稳步上升，伴随摩托罗拉采用Android操作系统的Droid手机热卖，Android的发展趋势越来越被看好，这意味着Windows Mobile在推出其7.0版本前很可能被挤出移动设备领域，而微软此前曾透露Windows Mobile 7要等到明天某个时候才会发布。<br><br>　　自采用Android操作系统的摩托罗拉Droid从11月5日上市以来，很多媒体竞相将其与苹果的iPhone进行对比，运营商Verizon更是启动了一系列的咄咄逼人的广告强调Droid的某些功能，如同时运行多个应用程序 ?? 这正是iPhone目前缺少的功能。<br><br>　　但苹果可能不是Android影响最严重的公司，Google将目标锁定的也不是苹果，而是微软。微软目前最新的Windows Mobile操作系统是6.5版，下一个版本Windows Mobile 7要等到2010年某个时候才会发布，Android目前要狙击的目标就是Windows Mobile 6.5，与苹果和其它公司不一样，微软依靠它的操作系统和附加软件捆绑到众多手机厂商和运营商的设备中，进而占据了大部分移动操作系统市场，很长一段时间内都是微软的天下，现在终于看到一个强劲的对手上场了。<br><br>　　Android的市场份额正在快速上升<br><br>　　目前诺基亚使用最多的Symbian操作系统也被证明不是Android的对手，其市场份额从2008年10月的59%下跌到2009年10月27%，表面上看起来对于微软是个好消息，但实际上据AdMob 最近的调查数据显示，Windows Mobile的市场份额也下降了70%左右。<br><br>　　微软已经意识到了这个问题，早今年9月24日举行的创业投资峰会上，微软CEO史蒂夫鲍尔默承认公司搞砸了Windows Mobile，同时公开表示Windows Mobile 7已经开始启动，微软在10月6日发布了Windows Mobile 6.5，包括扩展了触摸等功能，但这应该是微软在发布Windows Mobile 7之前不得已的一个权宜之计。<br><br>　　理论上说Windows Mobile 6.5的发布应该阻止对微软移动市场份额的侵蚀，微软还打算用Windows Mobile 7与iPhone和黑莓展开一场恶斗，但现在又多出一个Android，据AdMob的数据显示，在过去的一年里，Android的市场份额至少翻了1000%。<br><br>　　这一增长势头势必会吸引更多制造商拥抱Android，之前微软曾宣布到2010年底，将会有13家手机厂商采用Windows Mobile 6.5，包括LG，HTC和Sony。Android也不示弱，Google移动平台高级主管Andy Rubin早先估计到本年年底将会有18-20种设备使用Android，包括摩托罗拉，戴尔，宏基，诺基亚等厂家都开始尝试Android。<br><br>　　Android将会是应用程序的世界<br><br>　　微软原本计划在10月启动的Windows Marketplace中内置600个应用程序，但最终却只有250个都不到，虽然这一数字在两个月后扩大到了接近800，目前约有1000家独立ISV注册开发移动应用程序。<br><br>　　相对于其它巨头的动作，移动应用程序可能成为Windows Mobile的致命一击，即使如此，除了苹果的App Store有8万个应用程序外，微软的800个应用程序也对RIM的BlackBerry App World(1000多个应用程序)和Palm的应用程序商店(350多个)造成了冲击。<br><br>　　所有这些竞争设备都集成了它们自己的操作系统，Google Android是一个开源例外，正是由于这个原因它总是被抨击，如果不是手机制造商有意回避操作系统，Android Marketplace应该已经有2000多个应用程序了，如果Android保持其增长势头，Android应用程序将会呈大面积爆发。如果真的那样，更多手机厂家不得不转向Android，将会进一步挤压Windows Mobile的市场份额。<br><br>　　缺乏其它操作系统竞争对手<br><br>　　10月21日，Symbian基金会宣布Symbian操作系统正式开源，该平台的微内核EKA2(Epco Kernel Architecture 2)比原计划提前了9个月发布，包括遵循Eclipse公共许可的SDK。<br><br>　　正如前文提到的，Symbian操作系统的市场份额在过去的一年里和Windows Mobile一样大幅下降，Symbian最终不得不选择和Android一样走开源道路，但在开源道路上Android显然早已驾轻就熟。<br><br>　　硬件配对<br><br>　　Google Android已经和摩托罗拉Droid和HTC Droid Eris搭档成功，之前曾有权威人士将它们作为iPhone杀手称呼。在摩托罗拉Droid上市的头一周，就卖出了25万部，但还是距iPhone 3GS上市第一周热销的1600万部的记录相差甚远，不过许多分析师认为Droid的表现让人印象深刻。<br><br>　　而Windows Mobile就缺乏这样热卖的设备了，最近倒是热传微软将和Verizon联手在2010年推出一款智能手机。但除非这款手机变成实物，否则谁也不能保证其成为事实，目前有关这个合作项目Pink的消息仍然被封锁，而Android在强大的广告攻势下，每一个星期都会增加人们的心理份额，如果谷歌赶在微软之前发布自有品牌的手机，那这个心理份额将会加速上升。<br><br>　　Windows Mobile 7仍然是个未知数<br><br>　　微软已经承诺Windows Mobile 7将会带来实质性的更新，如果这次升级再给公众留下失败的印象，微软在移动领域将会处于难以维持的弱势地位，这将会给Android足够的机会赢得智能手机用户的青睐。', '', 'Linux论坛', '小王', 'Linux论坛', 0, '2009-12-16 10:23:38', 3, 1, 1),
	(30, 4, 12, 0, '甲骨文向MySQL用户、开发者和客户的十项承诺', '甲骨文/SUN交易案最新动向：甲骨文向MySQL用户、开发者、客户做出十项承诺。<br>　　<br>　　甲骨文公司与欧盟委员会就甲骨文SUN公司的交易案进行了建设性的讨论，并承诺将保持MySQL在数据库市场的竞争力。为了进一步获得欧盟的批准，甲骨文公司公开其十项承诺，内容如下：<br>　　<br>　　<br>　　1、保证存储引擎API持续可用性。<br>　　甲骨文保证并阶段性加强MySQL的可插拔存储引擎架构，让用户可以灵活选择从本地和第三方产品提供存储引擎。此保证意味着MySQL当前的使用政策有效，允许符合SUN文件的存储引擎供应商接入MySQL数据库。<br>　　<br>　　2、不主张承诺。<br>　　作为版权持有人，甲骨文将改变SUN的现行政策，同时不得声称或威胁任何人，存储引擎第三方供应商必须基于GPL发布的，因为他们已经实行了应用编程接口有效，作为MySQL的可插入式存储引擎架构的一部分。商业许可无需通过Oracle请求。甲骨文将复制此承诺到与SUN有商业许可关系的存储供应商的合同当中。<br>　　<br>　　3、许可证的承诺。<br>　　当他们目前MySQL的OEM协议终止后，甲骨文将提供这些存储供应商与SUN相同的许可条件，不超过2014年。甲骨文将复制此承诺到与SUN有商业许可关系的存储供应商的合同当中。<br>　　<br>　　4、承诺在今后加强MySQL基于GPL发布。<br>　　MySQL后续版本，包括版本6，均将通过GPL发布。甲骨文公司不会在没有发布社区加强版的同时发布一个新的企业加强版。甲骨文公司将继续把MySQL社区版的所有版本的源代码公开，将免费提供。<br>　　<br>　　5、支持并不是强制性的 。<br>　　MySQL.客户不会被要求从甲骨文获得支持服务作为购买商业许可的条件。<br>　　<br>　　6、 增加对MySQL的研发支出 。 <br>　　<br>　　甲骨文承诺提供可用于MySQL持续发展的适当资金（GPL的版本和商业版本）。 在未来3年，每年，甲骨文将在MySQL的研发上投入比SUN的最近财年（2400万美元）还要多，在交易完成之前。<br>　　<br>　　7、成立MySQL客户顾问委员会 。<br>　　不迟于6个月后的一周年之际，甲骨文将创建并资助一个客户咨询委员会，包括最终用户和嵌入式客户提供指导和反馈，作为MySQL的发展优先事项，以及其他MySQL客户的重要问题。<br>　　<br>　　8、成立MySQL存储引擎供应商咨询委员会 。<br>　　不迟于6个月后的一周年之际，甲骨文将创建并资助一个存储引擎供应商咨询委员会，提供指导和反馈，作为MySQL的发展优先事项，以及其他MySQL存储引擎供应商的重要问题。<br>　　<br>　　9、 &nbsp;MySQL参考手册 。 <br>　　对MySQL参考手册，甲骨文公司将继续保持更新和免费下载，质量保持与SUN所提供的一致。<br>　　<br>　　10、 &nbsp;客户支持服务将继续 。<br>　　甲骨文将确保付费的最终用户和嵌入式客户提供MySQL的支持服务，根据客户的喜好更新订阅。<br>　　<br>　　这些承诺在全球范围内，并持续到交易完成五周年', '', 'oschina', '小王', 'oschina', 0, '2009-12-16 10:24:53', 2, 1, 1),
	(31, 4, 12, 0, '甲骨文回应欧盟质疑 承诺加强MySQL业务', '甲骨文周一承诺，将会继续加强MySQL业务，并进一步以开源方式发布更新，希望借此打消欧盟委员会对该公司收购Sun的顾虑。<br><br>　　全球最大数据库厂商甲骨文今年早些时候斥资74亿美元收购了Sun，但欧盟委员会目前正在对该交易进行审查。Sun的主要业务是服务器和Java，该公司同时拥有开源数据库软件MySQL。<br><br>　　欧盟委员会此前曾表示，由于存在竞争关系，因此甲骨文收购Sun后会对免费开源软件MySQL的发展不利。甲骨文则表示，MySQL去年在欧洲的营业收入仅为1700万欧元(约合2487万美元)，无论从收入规模还是从产品档次来看，MySQL都不会对甲骨文的大型企业数据库构成威胁。<br><br>　　甲骨文周一共做出了10项承诺，包括对外公布使用MySQL所需的编程细节，另外，在第三方开发者使用这些细节信息与MySQL进行交互时，甲骨文会放弃相应的版权主张。', '', 'ｃｎｂｅｔａ', '小王', 'ｃｎｂｅｔａ', 0, '2009-12-16 10:25:23', 1, 1, 1),
	(32, 1, 2, 1, '开源Android将干掉Windows Mobile五大原因', '新闻分析：微软的Windows Mobile操作系统可能是Android崛起最容易攻击的对象，在过去的一年中，Android的市场份额稳步上升，伴随摩托罗拉采用Android操作系统的Droid手机热卖，Android的发展趋势越来越被看好，这意味着Windows Mobile在推出其7.0版本前很可能被挤出移动设备领域，而微软此前曾透露Windows Mobile 7要等到明天某个时候才会发布。<br><br>　　自采用Android操作系统的摩托罗拉Droid从11月5日上市以来，很多媒体竞相将其与苹果的iPhone进行对比，运营商Verizon更是启动了一系列的咄咄逼人的广告强调Droid的某些功能，如同时运行多个应用程序 ?? 这正是iPhone目前缺少的功能。<br><br>　　但苹果可能不是Android影响最严重的公司，Google将目标锁定的也不是苹果，而是微软。微软目前最新的Windows Mobile操作系统是6.5版，下一个版本Windows Mobile 7要等到2010年某个时候才会发布，Android目前要狙击的目标就是Windows Mobile 6.5，与苹果和其它公司不一样，微软依靠它的操作系统和附加软件捆绑到众多手机厂商和运营商的设备中，进而占据了大部分移动操作系统市场，很长一段时间内都是微软的天下，现在终于看到一个强劲的对手上场了。<br><br>　　Android的市场份额正在快速上升<br><br>　　目前诺基亚使用最多的Symbian操作系统也被证明不是Android的对手，其市场份额从2008年10月的59%下跌到2009年10月27%，表面上看起来对于微软是个好消息，但实际上据AdMob 最近的调查数据显示，Windows Mobile的市场份额也下降了70%左右。<br><br>　　微软已经意识到了这个问题，早今年9月24日举行的创业投资峰会上，微软CEO史蒂夫鲍尔默承认公司搞砸了Windows Mobile，同时公开表示Windows Mobile 7已经开始启动，微软在10月6日发布了Windows Mobile 6.5，包括扩展了触摸等功能，但这应该是微软在发布Windows Mobile 7之前不得已的一个权宜之计。<br><br>　　理论上说Windows Mobile 6.5的发布应该阻止对微软移动市场份额的侵蚀，微软还打算用Windows Mobile 7与iPhone和黑莓展开一场恶斗，但现在又多出一个Android，据AdMob的数据显示，在过去的一年里，Android的市场份额至少翻了1000%。<br><br>　　这一增长势头势必会吸引更多制造商拥抱Android，之前微软曾宣布到2010年底，将会有13家手机厂商采用Windows Mobile 6.5，包括LG，HTC和Sony。Android也不示弱，Google移动平台高级主管Andy Rubin早先估计到本年年底将会有18-20种设备使用Android，包括摩托罗拉，戴尔，宏基，诺基亚等厂家都开始尝试Android。<br><br>　　Android将会是应用程序的世界<br><br>　　微软原本计划在10月启动的Windows Marketplace中内置600个应用程序，但最终却只有250个都不到，虽然这一数字在两个月后扩大到了接近800，目前约有1000家独立ISV注册开发移动应用程序。<br><br>　　相对于其它巨头的动作，移动应用程序可能成为Windows Mobile的致命一击，即使如此，除了苹果的App Store有8万个应用程序外，微软的800个应用程序也对RIM的BlackBerry App World(1000多个应用程序)和Palm的应用程序商店(350多个)造成了冲击。<br><br>　　所有这些竞争设备都集成了它们自己的操作系统，Google Android是一个开源例外，正是由于这个原因它总是被抨击，如果不是手机制造商有意回避操作系统，Android Marketplace应该已经有2000多个应用程序了，如果Android保持其增长势头，Android应用程序将会呈大面积爆发。如果真的那样，更多手机厂家不得不转向Android，将会进一步挤压Windows Mobile的市场份额。<br><br>　　缺乏其它操作系统竞争对手<br><br>　　10月21日，Symbian基金会宣布Symbian操作系统正式开源，该平台的微内核EKA2(Epco Kernel Architecture 2)比原计划提前了9个月发布，包括遵循Eclipse公共许可的SDK。<br><br>　　正如前文提到的，Symbian操作系统的市场份额在过去的一年里和Windows Mobile一样大幅下降，Symbian最终不得不选择和Android一样走开源道路，但在开源道路上Android显然早已驾轻就熟。<br><br>　　硬件配对<br><br>　　Google Android已经和摩托罗拉Droid和HTC Droid Eris搭档成功，之前曾有权威人士将它们作为iPhone杀手称呼。在摩托罗拉Droid上市的头一周，就卖出了25万部，但还是距iPhone 3GS上市第一周热销的1600万部的记录相差甚远，不过许多分析师认为Droid的表现让人印象深刻。<br><br>　　而Windows Mobile就缺乏这样热卖的设备了，最近倒是热传微软将和Verizon联手在2010年推出一款智能手机。但除非这款手机变成实物，否则谁也不能保证其成为事实，目前有关这个合作项目Pink的消息仍然被封锁，而Android在强大的广告攻势下，每一个星期都会增加人们的心理份额，如果谷歌赶在微软之前发布自有品牌的手机，那这个心理份额将会加速上升。<br><br>　　Windows Mobile 7仍然是个未知数<br><br>　　微软已经承诺Windows Mobile 7将会带来实质性的更新，如果这次升级再给公众留下失败的印象，微软在移动领域将会处于难以维持的弱势地位，这将会给Android足够的机会赢得智能手机用户的青睐。', '', 'Linux论坛', '大王', 'Linux论坛', 0, '2010-01-31 10:48:56', 1, 1, 1);
/*!40000 ALTER TABLE `news` ENABLE KEYS */;

-- 导出  表 db_news2.newsadmin 结构
DROP TABLE IF EXISTS `newsadmin`;
CREATE TABLE IF NOT EXISTS `newsadmin` (
  `userName` varchar(20) NOT NULL DEFAULT '',
  `passWd` varchar(20) NOT NULL DEFAULT '',
  `purview` int(11) NOT NULL DEFAULT '0',
  `lastLogin` datetime DEFAULT NULL,
  `lastLoginIp` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`userName`)
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;

-- 正在导出表  db_news2.newsadmin 的数据：1 rows
DELETE FROM `newsadmin`;
/*!40000 ALTER TABLE `newsadmin` DISABLE KEYS */;
INSERT INTO `newsadmin` (`userName`, `passWd`, `purview`, `lastLogin`, `lastLoginIp`) VALUES
	('admin', 'admin', 0, '2010-01-31 10:44:34', '0:0:0:0:0:0:0:1');
/*!40000 ALTER TABLE `newsadmin` ENABLE KEYS */;

-- 导出  表 db_news2.newsclass 结构
DROP TABLE IF EXISTS `newsclass`;
CREATE TABLE IF NOT EXISTS `newsclass` (
  `classId` int(11) NOT NULL DEFAULT '0',
  `content` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`classId`)
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;

-- 正在导出表  db_news2.newsclass 的数据：6 rows
DELETE FROM `newsclass`;
/*!40000 ALTER TABLE `newsclass` DISABLE KEYS */;
INSERT INTO `newsclass` (`classId`, `content`) VALUES
	(1, 'linux入门'),
	(2, '服务器配置'),
	(3, '应用开发'),
	(4, '数据库应用'),
	(5, '系统安全'),
	(6, '程序设计');
/*!40000 ALTER TABLE `newsclass` ENABLE KEYS */;

-- 导出  表 db_news2.newscommon 结构
DROP TABLE IF EXISTS `newscommon`;
CREATE TABLE IF NOT EXISTS `newscommon` (
  `counter` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;

-- 正在导出表  db_news2.newscommon 的数据：1 rows
DELETE FROM `newscommon`;
/*!40000 ALTER TABLE `newscommon` DISABLE KEYS */;
INSERT INTO `newscommon` (`counter`, `ip`) VALUES
	(2, '0:0:0:0:0:0:0:1');
/*!40000 ALTER TABLE `newscommon` ENABLE KEYS */;

-- 导出  表 db_news2.newskind 结构
DROP TABLE IF EXISTS `newskind`;
CREATE TABLE IF NOT EXISTS `newskind` (
  `kindId` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) NOT NULL DEFAULT '',
  `classId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`kindId`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=gb2312;

-- 正在导出表  db_news2.newskind 的数据：18 rows
DELETE FROM `newskind`;
/*!40000 ALTER TABLE `newskind` DISABLE KEYS */;
INSERT INTO `newskind` (`kindId`, `content`, `classId`) VALUES
	(1, 'linux教程', 1),
	(2, '学习笔记', 1),
	(3, 'windows', 2),
	(4, 'linux', 2),
	(5, 'unix', 2),
	(6, 'jsp&servlet', 3),
	(7, 'java', 3),
	(8, 'xml', 3),
	(9, 'delphi', 3),
	(10, '.net', 3),
	(11, 'oracle', 4),
	(12, 'mysql', 4),
	(13, 'mssql', 4),
	(14, '安全防护', 5),
	(15, '漏洞攻击', 5),
	(16, 'C++', 6),
	(18, 'Java', 6),
	(19, 'linux安全', 1);
/*!40000 ALTER TABLE `newskind` ENABLE KEYS */;

-- 导出  表 db_news2.newspopedom 结构
DROP TABLE IF EXISTS `newspopedom`;
CREATE TABLE IF NOT EXISTS `newspopedom` (
  `gradeId` int(11) NOT NULL DEFAULT '0',
  `grade` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`gradeId`)
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;

-- 正在导出表  db_news2.newspopedom 的数据：3 rows
DELETE FROM `newspopedom`;
/*!40000 ALTER TABLE `newspopedom` DISABLE KEYS */;
INSERT INTO `newspopedom` (`gradeId`, `grade`) VALUES
	(1, '普通会员'),
	(2, '银牌会员'),
	(3, '金牌会员');
/*!40000 ALTER TABLE `newspopedom` ENABLE KEYS */;

-- 导出  表 db_news2.newsreply 结构
DROP TABLE IF EXISTS `newsreply`;
CREATE TABLE IF NOT EXISTS `newsreply` (
  `replyId` int(11) NOT NULL AUTO_INCREMENT,
  `newsId` int(11) NOT NULL DEFAULT '0',
  `user` varchar(20) DEFAULT NULL,
  `content` varchar(100) DEFAULT NULL,
  `replyTime` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`replyId`)
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;

-- 正在导出表  db_news2.newsreply 的数据：0 rows
DELETE FROM `newsreply`;
/*!40000 ALTER TABLE `newsreply` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsreply` ENABLE KEYS */;

-- 导出  表 db_news2.newsusr 结构
DROP TABLE IF EXISTS `newsusr`;
CREATE TABLE IF NOT EXISTS `newsusr` (
  `userName` varchar(20) NOT NULL DEFAULT '',
  `passWd` varchar(20) NOT NULL DEFAULT '',
  `sex` int(11) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `emailAddr` varchar(50) DEFAULT NULL,
  `qq` varchar(10) DEFAULT NULL,
  `http` varchar(30) DEFAULT NULL,
  `purview` int(11) DEFAULT '1',
  `regTime` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`userName`)
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;

-- 正在导出表  db_news2.newsusr 的数据：1 rows
DELETE FROM `newsusr`;
/*!40000 ALTER TABLE `newsusr` DISABLE KEYS */;
INSERT INTO `newsusr` (`userName`, `passWd`, `sex`, `question`, `answer`, `emailAddr`, `qq`, `http`, `purview`, `regTime`) VALUES
	('eggpeijun', '123456', 1, '11111', '1111', 'eee@163.com', 'eee', 'eee', 1, '2009-12-15 15:23:00');
/*!40000 ALTER TABLE `newsusr` ENABLE KEYS */;

-- 导出  表 db_news2.noteadmin 结构
DROP TABLE IF EXISTS `noteadmin`;
CREATE TABLE IF NOT EXISTS `noteadmin` (
  `adminName` char(20) NOT NULL DEFAULT '',
  `adminPasswd` char(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`adminName`)
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;

-- 正在导出表  db_news2.noteadmin 的数据：1 rows
DELETE FROM `noteadmin`;
/*!40000 ALTER TABLE `noteadmin` DISABLE KEYS */;
INSERT INTO `noteadmin` (`adminName`, `adminPasswd`) VALUES
	('ntsky123', 'ntsky123');
/*!40000 ALTER TABLE `noteadmin` ENABLE KEYS */;

-- 导出  表 db_news2.noteguest 结构
DROP TABLE IF EXISTS `noteguest`;
CREATE TABLE IF NOT EXISTS `noteguest` (
  `noteId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) NOT NULL DEFAULT '',
  `sex` int(11) NOT NULL DEFAULT '0',
  `email` varchar(50) DEFAULT NULL,
  `qq` varchar(9) DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL,
  `headTitle` text NOT NULL,
  `content` text NOT NULL,
  `image` text,
  `noteTime` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`noteId`)
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;

-- 正在导出表  db_news2.noteguest 的数据：0 rows
DELETE FROM `noteguest`;
/*!40000 ALTER TABLE `noteguest` DISABLE KEYS */;
/*!40000 ALTER TABLE `noteguest` ENABLE KEYS */;

-- 导出  表 db_news2.notereply 结构
DROP TABLE IF EXISTS `notereply`;
CREATE TABLE IF NOT EXISTS `notereply` (
  `replyId` int(11) NOT NULL AUTO_INCREMENT,
  `noteId` int(11) NOT NULL DEFAULT '0',
  `content` text,
  `replyTime` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`replyId`)
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;

-- 正在导出表  db_news2.notereply 的数据：0 rows
DELETE FROM `notereply`;
/*!40000 ALTER TABLE `notereply` DISABLE KEYS */;
/*!40000 ALTER TABLE `notereply` ENABLE KEYS */;


-- 导出 db_oa 的数据库结构
DROP DATABASE IF EXISTS `db_oa`;
CREATE DATABASE IF NOT EXISTS `db_oa` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_oa`;

-- 导出  表 db_oa.address 结构
DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `sex` varchar(10) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `postcode` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`),
  KEY `ID_2` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=gb2312;

-- 正在导出表  db_oa.address 的数据：~6 rows (大约)
DELETE FROM `address`;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` (`ID`, `username`, `name`, `sex`, `mobile`, `email`, `qq`, `company`, `address`, `postcode`) VALUES
	(8, 'admin', '牛力', '男', '12345678911', '123@126.com', '123456', '北京地税局', '北京市昌平区', '010000'),
	(9, 'admin', '李霞', '女', '12345678911', '123@126.com', '123456', '北京地税局', '北京市昌平区', '010000'),
	(10, 'admin', '李华明', '男', '12345678911', '123@126.com', '123456', '北京地税局', '北京市昌平区', '010000'),
	(11, 'admin', '张明', '男', '12345678911', '123@126.com', '123456', '北京地税局', '北京市昌平区', '010000'),
	(12, 'admin', '陈丽', '女', '12345678911', '123@126.com', '123456', '北京地税局', '北京市昌平区', '010000'),
	(14, 'admin', '测试', '男', '13423231212', 'ege@yahoo.com.cn', '32423323', '中国电信', '北京市海淀区XXXX', '100000');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;

-- 导出  表 db_oa.meeting 结构
DROP TABLE IF EXISTS `meeting`;
CREATE TABLE IF NOT EXISTS `meeting` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender` varchar(50) NOT NULL DEFAULT '',
  `starttime` varchar(20) DEFAULT NULL,
  `endtime` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`),
  KEY `ID_2` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gb2312;

-- 正在导出表  db_oa.meeting 的数据：~1 rows (大约)
DELETE FROM `meeting`;
/*!40000 ALTER TABLE `meeting` DISABLE KEYS */;
INSERT INTO `meeting` (`ID`, `sender`, `starttime`, `endtime`, `address`, `title`, `content`) VALUES
	(1, 'admin', '2009-10-21', '2009-10-22', '公司T型办公室', '加强员工办公效率！', '加强员工办公效率！加强员工办公效率！加强员工办公效率！加强员工办公效率！');
/*!40000 ALTER TABLE `meeting` ENABLE KEYS */;

-- 导出  表 db_oa.notice 结构
DROP TABLE IF EXISTS `notice`;
CREATE TABLE IF NOT EXISTS `notice` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(100) DEFAULT NULL,
  `content` text,
  `sendtime` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`),
  KEY `ID_2` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=gb2312;

-- 正在导出表  db_oa.notice 的数据：~4 rows (大约)
DELETE FROM `notice`;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` (`ID`, `sender`, `title`, `content`, `sendtime`) VALUES
	(1, 'admin', '爱护公物人人有责！', '爱护公物人人有责！', '2009-12-20 20:06:39'),
	(2, 'admin', '局域网内有人中毒，请注册杀毒！', '局域网内有人中毒，请注册杀毒！', '2009-12-20 20:06:56'),
	(3, 'admin', '明后天放假通知！', '明后天放假通知！', '2009-12-20 20:07:22'),
	(4, 'sanqing', 'sanqing发公告', 'sanqing发公告sanqing发公告sanqing发公告', '2010-02-01 16:40:35');
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;

-- 导出  表 db_oa.schedule 结构
DROP TABLE IF EXISTS `schedule`;
CREATE TABLE IF NOT EXISTS `schedule` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '',
  `year` int(4) DEFAULT NULL,
  `month` int(2) DEFAULT NULL,
  `day` int(2) DEFAULT NULL,
  `plan` text,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`),
  KEY `ID_2` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=gb2312;

-- 正在导出表  db_oa.schedule 的数据：~6 rows (大约)
DELETE FROM `schedule`;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
INSERT INTO `schedule` (`ID`, `username`, `year`, `month`, `day`, `plan`) VALUES
	(1, 'admin', 2009, 10, 3, '出差！'),
	(3, 'admin', 2009, 10, 5, '项目需求分析！'),
	(4, 'admin', 2009, 10, 6, '和项目经理谈项目！'),
	(5, 'admin', 2009, 10, 7, '和客户谈项目需求！'),
	(6, 'admin', 2009, 10, 8, '项目功能分析！'),
	(7, 'admin', 2010, 1, 31, '买火车票！！！！');
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;

-- 导出  表 db_oa.sms 结构
DROP TABLE IF EXISTS `sms`;
CREATE TABLE IF NOT EXISTS `sms` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '',
  `sender` varchar(50) NOT NULL DEFAULT '',
  `message` text,
  `sendtime` varchar(20) DEFAULT NULL,
  `isRead` varchar(1) DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`),
  KEY `ID_2` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=gb2312;

-- 正在导出表  db_oa.sms 的数据：~2 rows (大约)
DELETE FROM `sms`;
/*!40000 ALTER TABLE `sms` DISABLE KEYS */;
INSERT INTO `sms` (`ID`, `username`, `sender`, `message`, `sendtime`, `isRead`) VALUES
	(6, 'admin', 'sanqing', '你收到了吗？？', '2010-02-01 16:41:18', '1'),
	(7, 'sanqing', 'admin', '收到了，你买火车票了吗？？', '2010-02-01 16:41:51', '1');
/*!40000 ALTER TABLE `sms` ENABLE KEYS */;

-- 导出  表 db_oa.user 结构
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`),
  KEY `ID_2` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gb2312;

-- 正在导出表  db_oa.user 的数据：~2 rows (大约)
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`ID`, `username`, `password`, `email`) VALUES
	(1, 'admin', 'admin', 'abc@163.com'),
	(2, 'sanqing', 'sanqing', 'abc@163.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

-- 导出  表 db_oa.worklog 结构
DROP TABLE IF EXISTS `worklog`;
CREATE TABLE IF NOT EXISTS `worklog` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '',
  `year` int(4) DEFAULT NULL,
  `month` int(2) DEFAULT NULL,
  `day` int(2) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` text,
  `logtime` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`),
  KEY `ID_2` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=gb2312;

-- 正在导出表  db_oa.worklog 的数据：~5 rows (大约)
DELETE FROM `worklog`;
/*!40000 ALTER TABLE `worklog` DISABLE KEYS */;
INSERT INTO `worklog` (`ID`, `username`, `year`, `month`, `day`, `title`, `description`, `logtime`) VALUES
	(1, 'admin', 2009, 11, 1, '很高兴客户已经满意了！', '很高兴客户已经满意了！', '2009-12-20 19:54:37'),
	(2, 'admin', 2009, 11, 2, '今天好冷啊！', '今天好冷啊！', '2009-12-20 19:55:05'),
	(3, 'admin', 2009, 11, 3, '客户要求修改功能！', '客户要求修改功能！', '2009-12-20 19:55:31'),
	(4, 'admin', 2009, 11, 4, '客户是上帝，要求一定要达到！', '客户是上帝，要求一定要达到！', '2009-12-20 19:55:47'),
	(6, 'admin', 2010, 2, 2, '测试工作日志', '测试工作日志！！！', '2010-02-01 16:39:18');
/*!40000 ALTER TABLE `worklog` ENABLE KEYS */;


-- 导出 db_order 的数据库结构
DROP DATABASE IF EXISTS `db_order`;
CREATE DATABASE IF NOT EXISTS `db_order` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_order`;

-- 导出  表 db_order.aboutme 结构
DROP TABLE IF EXISTS `aboutme`;
CREATE TABLE IF NOT EXISTS `aboutme` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(50) NOT NULL DEFAULT '',
  `CONTENT` text NOT NULL,
  `SEQUENCE` tinyint(4) DEFAULT NULL COMMENT '排序',
  `IS_DISPLAY` char(1) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `RECORD_MAN` varchar(20) DEFAULT NULL,
  `EDITOR` int(11) DEFAULT NULL,
  `EDITTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_ABOUTME_EDITOR` (`EDITOR`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- 正在导出表  db_order.aboutme 的数据：~2 rows (大约)
DELETE FROM `aboutme`;
/*!40000 ALTER TABLE `aboutme` DISABLE KEYS */;
INSERT INTO `aboutme` (`ID`, `TITLE`, `CONTENT`, `SEQUENCE`, `IS_DISPLAY`, `CREATE_TIME`, `RECORD_MAN`, `EDITOR`, `EDITTIME`) VALUES
	(4, '天天使用网上订餐系统订餐', '有了天鼎网上订餐系统，我天天使用网上订餐系统订餐', 2, '1', '2009-10-14 16:19:48', 'admin', NULL, NULL),
	(5, '购买系统方式', '<p>联系电话：020-87811132&nbsp;&nbsp;&nbsp;&nbsp; 18925050569</p>\r\n<p>QQ1：1273708322</p>\r\n<p>QQ2：861516626</p>\r\n<p>公司官网：<a href="http://www.tienting.com">www.tienting.com</a></p>\r\n<p>请与我们联系！因为专业！所以信赖！</p>\r\n', 1, '1', '2009-10-14 16:50:17', 'admin', NULL, NULL);
/*!40000 ALTER TABLE `aboutme` ENABLE KEYS */;

-- 导出  表 db_order.articles 结构
DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `ID` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `TITLE` varchar(150) NOT NULL DEFAULT '' COMMENT '标题',
  `CONTENTS` text NOT NULL COMMENT '内容',
  `EDITTIME` varchar(50) NOT NULL DEFAULT '' COMMENT '编辑时间',
  `EDITOR` int(10) NOT NULL DEFAULT '0' COMMENT '编辑人',
  PRIMARY KEY (`ID`),
  KEY `FK_ARTICLES_EDITOR_ID` (`EDITOR`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- 正在导出表  db_order.articles 的数据：~3 rows (大约)
DELETE FROM `articles`;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` (`ID`, `TITLE`, `CONTENTS`, `EDITTIME`, `EDITOR`) VALUES
	(1, 'test', '<p>test222222222222</p>', '2009-06-24 10:42:50', 1),
	(2, '111111111111', '<p>111111111111111111111111111</p>', '2009-08-03 17:03:39', 1),
	(3, '二二', '<p>韦尔奇</p>', '2009-08-18 18:37:13', 1);
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;

-- 导出  表 db_order.assignman 结构
DROP TABLE IF EXISTS `assignman`;
CREATE TABLE IF NOT EXISTS `assignman` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(20) DEFAULT NULL COMMENT '系统用户名称',
  `PHONE` varchar(30) DEFAULT NULL COMMENT '联系电话',
  `SERIAL` tinyint(4) DEFAULT NULL COMMENT '排序',
  `STATUS` char(1) DEFAULT NULL COMMENT '状态',
  `EDITOR` int(10) DEFAULT NULL COMMENT '编辑人',
  `EDITTIME` datetime DEFAULT NULL COMMENT '编辑时间',
  `CODE` varchar(20) DEFAULT NULL,
  `SEX` char(1) DEFAULT NULL COMMENT 'M=男',
  `PHOTO` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `REMARK` text,
  PRIMARY KEY (`ID`),
  KEY `FK_ASSIGNMAN_EDITOR_USERS` (`EDITOR`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- 正在导出表  db_order.assignman 的数据：~4 rows (大约)
DELETE FROM `assignman`;
/*!40000 ALTER TABLE `assignman` DISABLE KEYS */;
INSERT INTO `assignman` (`ID`, `NAME`, `PHONE`, `SERIAL`, `STATUS`, `EDITOR`, `EDITTIME`, `CODE`, `SEX`, `PHOTO`, `EMAIL`, `REMARK`) VALUES
	(8, '小黄', '321456', 1, '1', 1, '2009-09-18 22:21:45', '001', '1', NULL, '', '大法官法帝国'),
	(9, '小李', '87818778', 2, '1', NULL, '2009-09-18 22:21:48', '002', '1', NULL, '', '大法师根深蒂固'),
	(10, '小吴', '', 3, '1', NULL, '2009-10-14 17:13:15', '003', '1', NULL, '', '啊啊啊啊啊大家富士康'),
	(11, '小王', '15914381568', 1, '2', NULL, '2009-10-14 17:13:30', '001', '1', NULL, 'kander@163.com', '吃苦耐劳');
/*!40000 ALTER TABLE `assignman` ENABLE KEYS */;

-- 导出  表 db_order.authorities 结构
DROP TABLE IF EXISTS `authorities`;
CREATE TABLE IF NOT EXISTS `authorities` (
  `ID` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `NAME` varchar(40) NOT NULL DEFAULT '' COMMENT '权限标志',
  `DISPLAY_NAME` varchar(40) NOT NULL DEFAULT '' COMMENT '权限名字',
  `TYPE` varchar(20) DEFAULT NULL COMMENT '权限类型',
  `PARENT_ID` int(10) DEFAULT NULL COMMENT '父ID',
  `LAYER_CODE` varchar(20) DEFAULT NULL COMMENT '层级代码',
  `URL` varchar(255) DEFAULT NULL COMMENT 'url',
  PRIMARY KEY (`ID`),
  KEY `FK_AUTHORITIES_PARENT_ID_ID` (`PARENT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

-- 正在导出表  db_order.authorities 的数据：~35 rows (大约)
DELETE FROM `authorities`;
/*!40000 ALTER TABLE `authorities` DISABLE KEYS */;
INSERT INTO `authorities` (`ID`, `NAME`, `DISPLAY_NAME`, `TYPE`, `PARENT_ID`, `LAYER_CODE`, `URL`) VALUES
	(1, 'FRAME', '系统后台主页面', 'url', NULL, '0000000000', '/frame*'),
	(2, 'USER_MANAGE', '用户管理', 'url', 28, '0201000000', '/security/user*'),
	(4, 'ROLE_MANAGE', '权限管理', 'url', 28, '0202000000', '/security/role*'),
	(13, 'AUTHORITY', '安全管理_1', 'url', 28, '0203000000', '/security/authority*'),
	(23, 'USER_DELETE', '删除用户', 'url', 2, '0201030000', '/security/user!delete.action'),
	(27, 'ROLE_DELETE', '删除角色(权限)', 'url', 4, '0202030000', '/security/role!delete.action'),
	(28, 'SYSTEM_MANAGE', '系统管理', '', NULL, '0200000000', ''),
	(29, 'RESTAURANT_MANAGE', '餐店信息', 'url', 32, '0101000000', '/restaurant/restaurant*'),
	(30, 'ORDER_MANAGE', '订单管理', '', NULL, '0400000000', ''),
	(31, 'POSFORMPRINT', '今日订单', 'url', 30, '0401000000', '/orderform/orderformnote*'),
	(32, 'BASEINFO_MANAGE', '基本信息管理', '', NULL, '0100000000', ''),
	(33, 'MENU_MANAGE', '菜单管理', '', NULL, '0300000000', ''),
	(34, 'STATISTICS_MANAGE', '统计管理', '', NULL, '0500000000', ''),
	(35, 'HEALTHDRINK_MANAGE', '健康饮食', '', NULL, '0600000000', ''),
	(36, 'MEMBER_MANAGE', '会员管理', '', NULL, '0700000000', ''),
	(41, 'ABOUTME_MANAGE', '餐店简介', 'url', 32, '0102000000', '/restaurant/aboutme*'),
	(46, 'NOTICE_MANAGE', '餐店公告', 'url', 32, '0103000000', '/notice/notice*'),
	(50, 'EATGUIDE_MANAGE', '订餐指南', 'url', 32, '0104000000', '/eatguide/eatguide*'),
	(54, 'USER_ADD', '增加用户', 'url', 2, '0201010000', '/security/user!input.action'),
	(55, 'USER_UPDATE', '修改用户', 'url', 2, '0201020000', '/security/user!input.action'),
	(56, 'FETCHTIME_MANAGE', '送餐时间', 'url', 32, '0105000000', '/restaurant/fetchtime*'),
	(57, 'ROLE_ADD', '增加角色(权限)', 'url', 4, '0202010000', '/security/role!input.action'),
	(58, 'ROLE_UPDATE', '修改角色(权限)', 'url', 4, '0202020000', '/security/role!input.action'),
	(59, 'ASSIGNMAN_MANAGE', '送餐员管理', 'url', 30, '0402000000', '/restaurant/assignman*'),
	(60, 'MENUTYPE_MANAGE', '菜单类型', 'url', 33, '0301000000', '/menu/menutype*'),
	(61, 'MENU_INFO', '菜单', 'url', 33, '0302000000', '/menu/submenu*'),
	(62, 'MENUEVALUATE_MANAGE', '菜单评价', 'url', 33, '0303000000', '/menu/menuevaluate*'),
	(63, 'MENU_SALE', '今日菜单销售情况', 'url', 30, '0304000000', '/frame!viewDefault.action'),
	(64, 'SALESTATISTICS', '销售统计', 'url', 34, '0501000000', '/statistics/salestatistics*'),
	(65, 'HEALTHDRINKTYPE', '饮食类别', 'url', 35, '0601000000', '/healthdrink/healthdrinktype*'),
	(66, 'HEALTHDRINK', '饮食文章', 'url', 35, '0602000000', '/healthdrink/healthdrink*'),
	(67, 'MEMBER', '会员信息', 'url', 36, '0701000000', '/member/member_operate*'),
	(68, 'INTEGRALSET', '积分兑换设置', 'url', 36, '0702000000', '/integral/integralset*'),
	(70, 'LEAVEWORD', '留言管理', 'url', 36, '0704000000', '/member/leaveword*'),
	(71, 'ISLEGAL', '安全管理_2', 'url', 28, '0204000000', '/restaurant/islegal*');
/*!40000 ALTER TABLE `authorities` ENABLE KEYS */;

-- 导出  表 db_order.eatguide 结构
DROP TABLE IF EXISTS `eatguide`;
CREATE TABLE IF NOT EXISTS `eatguide` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(100) NOT NULL DEFAULT '',
  `EXPERT` varchar(100) DEFAULT NULL,
  `SOURCE` varchar(100) DEFAULT NULL,
  `SUMMARY` varchar(255) DEFAULT NULL COMMENT '摘要',
  `CONTENT` text NOT NULL,
  `RECORD_TIME` datetime DEFAULT NULL COMMENT '发布时间',
  `RECORD_MAN` varchar(20) DEFAULT NULL,
  `IS_DISPLAY` char(1) DEFAULT NULL COMMENT '1=显示',
  `EDITOR` int(11) DEFAULT NULL,
  `EDITTIME` datetime DEFAULT NULL,
  `IS_TOP` char(1) DEFAULT NULL COMMENT '1=置顶',
  PRIMARY KEY (`ID`),
  KEY `FK_EATGUIDE_EDITOR` (`EDITOR`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- 正在导出表  db_order.eatguide 的数据：~1 rows (大约)
DELETE FROM `eatguide`;
/*!40000 ALTER TABLE `eatguide` DISABLE KEYS */;
INSERT INTO `eatguide` (`ID`, `TITLE`, `EXPERT`, `SOURCE`, `SUMMARY`, `CONTENT`, `RECORD_TIME`, `RECORD_MAN`, `IS_DISPLAY`, `EDITOR`, `EDITTIME`, `IS_TOP`) VALUES
	(6, '订餐流程', '', '', '订餐流程', '<p>系统购买方式</p>\r\n<p>联系电话：020-87811132&nbsp;&nbsp;&nbsp;&nbsp; 18925050569</p>\r\n<p>QQ1：1273708322</p>\r\n<p>QQ2：861516626</p>\r\n<p>公司官网：<a href="http://www.tienting.com/">www.tienting.com</a></p>\r\n<p>请与我们联系！因为专业！所以信赖！</p>\r\n', '2009-10-14 16:53:33', 'admin', '1', NULL, '2009-10-15 23:41:36', '2');
/*!40000 ALTER TABLE `eatguide` ENABLE KEYS */;

-- 导出  表 db_order.fetchtime 结构
DROP TABLE IF EXISTS `fetchtime`;
CREATE TABLE IF NOT EXISTS `fetchtime` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FETCHTIME` varchar(10) NOT NULL DEFAULT '',
  `EDITOR` int(11) DEFAULT NULL,
  `EDITTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_fetchtime_editor` (`EDITOR`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- 正在导出表  db_order.fetchtime 的数据：~21 rows (大约)
DELETE FROM `fetchtime`;
/*!40000 ALTER TABLE `fetchtime` DISABLE KEYS */;
INSERT INTO `fetchtime` (`ID`, `FETCHTIME`, `EDITOR`, `EDITTIME`) VALUES
	(16, '23:55', 7, '2009-10-14 16:58:09'),
	(18, '11:00', 7, '2009-10-14 16:59:07'),
	(19, '12:00', 7, '2009-10-14 16:59:13'),
	(20, '13:00', 7, '2009-10-14 16:59:18'),
	(24, '10:30', 1, '2009-10-17 16:50:19'),
	(25, '10:40', 1, '2009-10-17 16:50:40'),
	(26, '10:50', 1, '2009-10-17 16:50:45'),
	(27, '11:10', 1, '2009-10-17 16:50:53'),
	(28, '11:20', 1, '2009-10-17 16:51:00'),
	(29, '11:30', 1, '2009-10-17 16:51:11'),
	(30, '11:40', 1, '2009-10-17 16:51:39'),
	(31, '12:10', 1, '2009-10-17 16:51:45'),
	(32, '12:30', 1, '2009-10-17 16:51:51'),
	(33, '16:30', 1, '2009-10-17 16:52:04'),
	(34, '16:45', 1, '2009-10-17 16:52:16'),
	(35, '17:00', 1, '2009-10-17 16:52:21'),
	(36, '17:15', 1, '2009-10-17 16:52:29'),
	(37, '17:30', 1, '2009-10-17 16:52:36'),
	(38, '17:45', 1, '2009-10-17 16:52:49'),
	(39, '18:00', 1, '2009-10-17 16:52:54'),
	(40, '18:20', 1, '2009-10-17 16:53:10');
/*!40000 ALTER TABLE `fetchtime` ENABLE KEYS */;

-- 导出  表 db_order.healthdrink 结构
DROP TABLE IF EXISTS `healthdrink`;
CREATE TABLE IF NOT EXISTS `healthdrink` (
  `ID` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `HEALTHDRINKTYPE` int(10) DEFAULT NULL COMMENT '新闻类型',
  `TITLE` varchar(150) NOT NULL DEFAULT '' COMMENT '标题',
  `AUTH` varchar(30) DEFAULT NULL COMMENT '作者',
  `CONTENT` text,
  `IS_TOP` char(1) DEFAULT '2' COMMENT '是否置顶',
  `TITLE_ICO` varchar(60) DEFAULT NULL COMMENT '图片',
  `SOURCE` varchar(20) DEFAULT NULL COMMENT '来源',
  `ISSUE_MAN` varchar(20) DEFAULT NULL COMMENT '发布人',
  `ISSUE_TIME` datetime DEFAULT NULL COMMENT '发布时间',
  `IS_DISPLAY` char(1) DEFAULT '2' COMMENT '是否隐藏',
  `EDITOR` int(10) DEFAULT NULL COMMENT '编辑人',
  `EDITTIME` datetime DEFAULT NULL COMMENT '编辑时间',
  PRIMARY KEY (`ID`),
  KEY `FK_NEWS_EDITOR` (`EDITOR`),
  KEY `FK_healthdrink_HEALTHDRINKTYPE` (`HEALTHDRINKTYPE`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- 正在导出表  db_order.healthdrink 的数据：~11 rows (大约)
DELETE FROM `healthdrink`;
/*!40000 ALTER TABLE `healthdrink` DISABLE KEYS */;
INSERT INTO `healthdrink` (`ID`, `HEALTHDRINKTYPE`, `TITLE`, `AUTH`, `CONTENT`, `IS_TOP`, `TITLE_ICO`, `SOURCE`, `ISSUE_MAN`, `ISSUE_TIME`, `IS_DISPLAY`, `EDITOR`, `EDITTIME`) VALUES
	(26, 5, '越吃越瘦的健康夜宵', '', '当今现代人由于工作强度比较大，往往会熬夜甚至通宵为了完成某些工作或者任务，如果吃晚饭与睡觉的时间相隔超过四小时，可以选择十至十一点钟左右吃点宵夜，因为有至少一小时让食物消化，减少积聚脂肪的机会。<p>　　此外，建议宵夜食物宜选择一含糖质或纤维素丰富的食物，因为含糖质食物可以令你容易入睡，而高纤食物可以令你有饱腹感又吃不胖!以下人气美食为大家推荐三款瘦身宵夜。</p>\r\n<p><strong>　　鱼片粥1碗/160kcal</strong></p>\r\n<p>　　在家晚饭后可以切4片草鱼或是其他淡水鱼类的鱼片，与粥一起煮，到11点左右即可开锅吃了。</p>\r\n<p>　　由于这草鱼是低脂鱼，而且含不饱和脂肪，低胆固醇，对心脏有益。且4片鱼片的热量只有80kcal，比起4片肥牛肉(200kcal)低的多。此外，五谷类含质，糖对脑部有安定作用，所以喝粥还有令人放松，帮助入睡的功效。</p>\r\n<p><strong>　　高纤麦皮加脱脂奶三汤匙麦片+半杯脱脂奶/170kcal</strong></p>\r\n<p>　　这道宵夜做法非常的简单，只要冲冲泡泡即可，不过人气美食还是要提醒大家，由于市面很好多即食麦片含糖分高，所以选择时要小心，尽量选用无糖、无奶麦片，而麦片中除了有丰富的营养外，还有2克左右的纤维，很容易让人有饱腹感，可以减轻人贪吃的食欲。</p>\r\n<p>　　此外，牛奶内含有一种称Serotonin的胺基酸，可令脑部呈休息、放松状态，令你产生睡意。</p>\r\n<p><strong>　　镇静香蕉皇帝蕉一只/50kcal</strong></p>\r\n<p>　　一般人都误以为吃香蕉会使人肥胖，其实一只香蕉只含100kcal，比食饭少一半，而纤维比饭多一至两倍。</p>\r\n<p>　　但营养师同时指出，晚上夜宵吃一根香蕉还是太多，建议吃一根皇帝蕉就好，且香蕉内含有钾质;钾质是矿物质，没热量，但却有维持神经运输正常，令心跳正常的功效，所以睡前吃根皇帝蕉可以帮您“心境平和”。</p>\r\n', '2', NULL, '', 'admin', '2009-09-12 18:14:53', '1', NULL, NULL),
	(27, 5, '吸光你脂肪的食物', '', '除了节食减肥外，食物真的不能多碰吗。其实有些食物是可以帮我们消耗脂肪的，现在为大家寻来可以帮助减少脂肪吸收的天然食物，让你穿衣服更有型起来！<p>　　<strong>1.冻豆腐</strong></p>\r\n<p>　　豆腐经过冷冻，能产生一种酸性物质，这种酸性物质能破坏人体的脂肪，如能经常吃冻豆腐，有利于脂肪排泄，使体内积蓄的脂肪不断减少，达到减肥的目的。冻豆腐具有孔隙多、营养丰富、热量少等特点，不会造成明显的饥饿感。</p>\r\n<p>　　<strong>2.竹笋</strong></p>\r\n<p>　　竹笋具有低脂肪、低糖、多纤维的特点，食用竹笋不仅能促进肠道蠕动，帮助消化，去积食，防便秘，并有预防大肠癌的功效。竹笋含脂肪、淀粉很少，属天然低脂、低热量食品，是肥胖者减肥的佳品.</p>\r\n<p>　　<strong>3.腌渍类蔬菜</strong></p>\r\n<p>　　植物性脂肪在制作过程被分解了，但水肿型肥胖者不能吃，以免体液滞留。</p>\r\n<p>　　<strong>4.绿豆芽</strong></p>\r\n<p>　　有清除血管壁中胆固醇和脂肪的堆积、防止心血管病变的作用。经常食用绿豆芽可清热解毒，利尿除湿，解酒毒热毒。多嗜烟酒肥腻者，如果常吃绿豆芽，就可以起到清肠胃、解热毒、洁牙齿的作用，同时可防止脂肪在皮下形成。</p>\r\n<p>　　<strong>5.木瓜</strong></p>\r\n<p>　　木瓜中的木瓜蛋白酶，可将脂肪分解为脂肪酸；木瓜中含有一种酵素，能消化蛋白质，有利于人体对食物进行消化和吸收，故有健脾消食之功。同时还可治水肿、脚气病，且可改善关节。</p>\r\n<p>　　<strong>6.菠萝</strong></p>\r\n<p>　　菠萝果实营养丰富，含有人体必需的维生素C、胡萝卜素、硫胺素、尼克酸等维生素。以及易为人体吸收的钙、铁、镁等微量元素。菠萝果汁、果皮及茎所含有的蛋白酶，能帮助蛋白质的消化，能分解鱼、肉，适合吃过大餐后食用。</p>\r\n<p>　　<strong>7.陈皮</strong></p>\r\n<p>　　陈皮含有挥发油、橙皮甙、维生素B、C等成分，它所含的挥发油对胃肠道有温和刺激作用，可促进消化液的分泌帮助消化，排除胃气，还可减少腹部脂肪堆积。</p>\r\n<p>　　<strong>8.乌贼</strong></p>\r\n<p>　　乌贼脂肪含量很低，蛋白质含量高，具有较高的营养价值，是减肥时的好食物。</p>\r\n<p>　　<strong>9.薏仁</strong></p>\r\n<p>　　性味甘淡微寒，有利水消肿、健脾去湿、舒筋除痹、清热排脓等功效。所以对水肿型肥胖有效。</p>\r\n<p>　　<strong>10黄瓜</strong></p>\r\n<p>　　黄瓜含有维生素C、维生素B族及许多微量矿物质，它所含的营养成分丰富，生吃口感清脆爽口。从营养学角度出发，黄瓜皮所含营养素丰富，应当保留生吃。但了预防农药残留对人体的伤害，黄瓜应先在盐水中泡15-20分钟再洗净生食。用盐水泡黄瓜时切勿掐头去根，要保持黄瓜的完整，以免营养素在泡的过程中从切面流失。另外，凉拌菜应现做现吃，不要做好后长时间放置，这样也会促使维生素损失。</p>\r\n<p>　　<strong>11.西红柿</strong></p>\r\n<p>　　西红柿中维生素A较丰富，维生素A对视力保护及皮肤晒后修复有好处。凉拌西红柿不撒糖更好，否则甜味可能影响食欲。肥胖者、糖尿病人、高血压病人都不宜吃被称为“雪漫火焰山”的加糖凉拌西红柿。</p>\r\n<p>　　<strong>12.柿子椒或尖椒</strong></p>\r\n<p>　　辣椒是所有蔬菜中维生素C含量最丰富的食物。维生素C可提高人体免疫力，帮助抵御各种疾病。夏天人们容易热伤风，而且经常外出，接触外界环境多了，感染病毒的机会也增多，所以需要提高自身免疫力。</p>\r\n<p>　　<strong>13.芹菜</strong></p>\r\n<p>　　芹菜富含粗纤维、钾、维生素B2、维生素(也叫尼克酸)等成分。夏季天气炎热，人们易上火，造成大便干燥。同时，天热时人们失水多，容易造成钠钾失衡。芹菜可帮助人们润肠通便，调节钠钾平衡。维生素对人的皮肤、神经系统和食欲都有影响，如果人体缺乏维生素B2，就容易引起疲劳乏力和口腔溃疡。芹菜叶所含的营养素比茎多，弃之可惜，可焯一下凉拌吃。</p>\r\n<p>　　<strong>14.大白菜</strong></p>\r\n<p>　　大白菜中膳食纤维和维生素A含量高，阳光刺眼的夏季多吃新鲜的大白菜，对护眼、养颜有益。不过，不要吃储存太久、营养素损失过多的大白菜。另外，消化性溃疡者也不宜生食大白菜，以免粗纤维的剐蹭刺激胃肠道创面。</p>\r\n<p>　　<strong>15.茄子</strong></p>\r\n<p>　　茄子所含硒较其他蔬菜要高。将鲜嫩的圆茄子削皮切成丝，加适量盐和香油凉拌。硒具有抗氧化作用，能保持人体细胞的正常功能，提高免疫力，对人体有防病、抗衰老作用，通过体内代谢，还可以发挥抗癌作用。</p>\r\n', '2', NULL, '', 'admin', '2009-09-12 18:16:20', '1', NULL, NULL),
	(28, 5, '7种最差的饮食方法', '', '<strong>7种最差的饮食方法</strong><p>　　许多饮食方法常常会导致我们体重增加甚至引起消化疾病，美国的一篇文章列举了以下7种最差的饮食方法。文章还告诉人们，最好的饮食方法是坐在餐桌前聚精会神地吃饭。</p>\r\n<p><strong>　　1.在厨房里吃东西</strong></p>\r\n<p>　　站在电冰箱或者炉子前一边吃饭一边准备饭菜常常会在无意中增加人们摄入的卡路里。同样地，面对剩菜，人们所摄入的卡路里也会增加许多。“当一个勤俭节约的妈妈在饭后清理饭桌的时候，她常常会想到：将这么多鸡块扔掉是一件多么可耻的事情啊。于是，她就开始吃这些鸡块了。”美国营养协会发言人邦妮说。</p>\r\n<p><strong>　　2.吃东西太过匆忙</strong></p>\r\n<p>　　当研究人员要求参与者迅速吃下一大盘意大利面时，他们发现这些人平均在9分钟之内摄入了646卡路里，而那些被要求慢慢享受的人则平均在29分钟之内摄入了579卡路里。此外，匆忙就餐还导致消化不良以及胃痛。</p>\r\n<p><strong>　　3.在工作时吃东西</strong></p>\r\n<p>　　从早上开会时的免费油炸圈饼到中间休息时的免费饮料等，整个工作时间似乎成了一个不断摄入卡路里的过程。事实上，办公室免费食品能够使人体摄入的卡路里迅速增加。同时，由于对免费饮食的诱惑难以抵御，人们在办公室里的食欲会大大增加。美国康奈尔大学2006年的一项研究发现，那些座位邻近办公室果盘的人往往会吃下许多糖果，但他们对自己究竟吃下多少却一无所知。</p>\r\n<p><strong>　　4.在昏暗中吃东西</strong></p>\r\n<p>　　美国某大学2002年的一项研究发现，那些热衷于暴饮暴食的人往往喜欢在灯光昏暗的环境中就餐。研究人员认为，在吃饭的时候，昏暗的灯光会减少人们的害羞感。</p>\r\n<p><strong>　　5.吃东西嚼得太少</strong></p>\r\n<p>　　大量的研究表明，充分咀嚼食物有助于消化并防止腹胀和胃痛，“当你未经充分咀嚼而吞下一大块食物时，这些食物就很难被充分分解。”邦妮说。因为，食物经过充分咀嚼过后与唾液中的消化酶接触的面积就会增加。那么，怎样才算得上是充分咀嚼呢？一般来说，嚼上25次使食物呈现糊状最好。</p>\r\n<p><strong>　　6.在餐馆里吃东西</strong></p>\r\n<p>　　大量的研究表明，经常性外出就餐与身体肥胖、脂肪增多以及其他身体指数增高有着密切的联系。美国孟菲斯大学的研究人员发现，那些每周外出就餐6次到13次的妇女平均每天多摄入290卡路里的能量。</p>\r\n<p><strong>　　7.在屏幕前吃东西</strong></p>\r\n<p>　　无论是在电脑还是电视机屏幕前，边吃东西，边长时间沉迷于网络或电视节目将大大增加无意识的饮食。一些主要研究机构的研究人员发现，看电视是导致肥胖的一个危险因素，对于青少年尤其如此。边吃东西，边看电视会带来双重危害：它会增加无意识的饮食并占用了那些用来进行消耗卡路里的活动时间。</p>\r\n', '2', NULL, '', 'admin', '2009-09-12 18:17:38', '1', NULL, NULL),
	(29, 5, '午饭后喝杯酸奶助消化利健康', '', '早晚喝一杯牛奶已经成为很多人养成的好习惯。可是，午饭时或午饭后喝一杯酸奶，对健康也能起到重要的作用。<p>　　根据统计资料显示，我们每天早餐的热能供应占当日总热能需求的25%—30%，因此，早餐时喝一杯牛奶能够有效地补充热能；晚上临睡前喝一杯则有助于增加睡眠质量，让你进入深度熟睡状态，还能保证牛奶营养的充分吸收和消化。</p>\r\n<p>　　午餐时喝酸奶有什么好处呢？专家指出，酸奶中含有大量的乳酸、醋酸等有机酸，它们不仅赋予了酸奶清爽的酸味，还能帮助它形成细嫩的凝乳，从而抑制有害微生物的繁殖，同时，使肠道的碱性降低，酸性增加，促进胃肠蠕动和消化液的分泌。此外，随着酸奶的生产技术、生产工艺不断进步，一些乳品大品牌，已经将其酸奶产品中的益生菌由两种变成了4种，这样不仅酸奶的营养价值比同类产品有了明显提高，其帮助消化、抑制有害菌的作用也得到了更一步的加强。</p>\r\n', '2', NULL, '', 'admin', '2009-09-12 18:18:03', '1', NULL, NULL),
	(30, 5, '健康提醒：煮鸡蛋5分钟最好', '', '煮鸡蛋看似简单，却不好把握火候，时间过短会使蛋黄不熟，时间过长会使鸡蛋变老不好吃。对此，北京大学第三医院运动医学研究所常翠青博士介绍，其实煮鸡蛋的最佳时机很好把握。凉水下锅，水开后算好5分钟，煮出来的鸡蛋既被杀死了有害致病菌，又能比较完整地保存营养素。<p>　　如果鸡蛋在沸水中煮超过10分钟，内部会发生一系列的化学变化。蛋白质结构变得更紧密，不容易与胃液中蛋白质消化酶接触，所以较难消化。蛋品中蛋白质含有较多的蛋氨酸，经过长时间加热后，它会分解出硫化物，它与蛋黄中的铁发生反应，形成人体不易吸收的硫化铁，营养损失较多。煮不熟的鸡蛋危害更大。生鸡蛋不但存在沙门氏菌污染问题，还有抗酶蛋白和抗生物素蛋白两种有害物。前者会影响蛋白质的消化吸收；后者能与食物中的生物素结合，导致人体生物素缺乏，产生精神倦怠、肌肉酸痛等症状。而鸡蛋一经煮熟，上述两种物质才会被破坏。</p>\r\n<p>　　此外，煮蛋时还可掌握以下技巧，以防止营养素的流失：水必须没过蛋，否则浸不到水的地方蛋白质不易凝固，影响消化；煮前把蛋放人冷水浸泡一会儿，以降低蛋内气压；然后用中等火候，冷水煮沸，即可防止蛋壳破裂，避免营养素流失。</p>\r\n', '2', NULL, '', 'admin', '2009-09-12 18:18:20', '1', NULL, NULL),
	(31, 5, '进食时间不恰当更易发胖', '', '对于追求苗条身材的人而言，“晚上吃得少”的忠告的确是有科学依据的。最近，美国科学家通过小鼠实验发现，进食时间与生物钟有密切联系，在不恰当的时间进食，会更容易发胖。这一科研成果昨天在线发表在学术期刊《肥胖》上。<p>　　“吃饭没规律更容易胖”、“减肥切忌深夜吃东西”，听起来好像上了年纪的妈妈的唠叨。不过，美国西北大学生物睡眠和昼夜规律研究中心的一个研究小组，在实验小鼠身上验证了这句话的正确性。研究人员让12只小鼠从出生开始，就生活在昼夜平分的环境中。9周后，他们将小鼠分成2组，给予相同的高脂肪饮食(脂肪提供总热量的60%)，一组在白天进食，而另一组则在夜间。</p>\r\n<p>　　过了6周后，他们发现，白天进食的小鼠要比夜间喂食的体重明显增加——在运动量基本相同的情况下，与夜间进食小鼠相比，白天进食的小鼠平均多长了7.8%的“肥肉”！文章作者指出，小鼠的习惯是昼伏夜出，正好与人类相反。这意味着，在生物钟走到“睡眠”时段时，吃下的食物更容易变成脂肪。</p>\r\n<p>　　这个实验，仅仅是为了验证一个常识吗？中科院上海生科院营养科学研究所研究员郭非凡告诉记者，其实它更大的意义在于建立了一个动物模型，“通过这个动物模型，科学家有可能从一个新的角度，深入研究肥胖的生命机理。”她说，“以前有过一些从环境、基因角度探讨生物钟和进食的研究，但一直没有深入到生理机制的层面。”如果可以通过动物模型，找到这些规律、机制，将可以为人类解决肥胖问题，提供更好的方法。</p>\r\n<p>　　研究人员指出，体重的规律变化也有自己的生物钟，有一些“生物钟基因”会对代谢综合征产生影响。虽然有很多问题值得深入研究，但可以给减肥者的建议是：在合适的时间进食，对减肥效果会有意想不到的提升。</p>\r\n', '2', NULL, '', 'admin', '2009-09-12 18:18:47', '1', NULL, NULL),
	(32, 5, '梨和甘蔗去秋燥但有人不适宜', '', '根据传统的养生原则，在秋天要多吃些水果，可增加肝脏的功能，可抵御过盛肺气之侵袭。但并不是所有的水果都适合人们食用。各种水果该怎么吃才是健康之道呢?<p>　　专家从中医的角度，对秋季的吃水果问题做了全面的分析。专家表示，从传统养生的角度看，秋季的主要特点是“燥”和“干”，因此人体常常会出现如皮肤干燥、口干唇燥、咽喉肿痛等症状。所以在秋季一定要少吃一些如葱、姜、蒜、韭、椒等辛味的食品，以防肺气过胜。而吃些生津止渴、润喉去燥的水果，就会使人顿觉清爽舒适。“最适合在秋季吃的水果，就数梨和甘蔗了。”专家强调。</p>\r\n<p><strong>　　梨和甘蔗虽好有人不适宜</strong></p>\r\n<p><strong>　　●梨</strong></p>\r\n<p>　　功能：中医认为，梨性味甘寒而润，有生津止渴、止咳化痰、清热降火、润肺去燥等功能。</p>\r\n<p>　　最适宜人群：对肺热咳嗽、小儿风热、咽干喉痛、大便燥结等症较为适宜。对高血压、心肺病，肝炎、肝硬化病人，常吃梨大有好处。肝炎病人吃梨能起到保肝、助消化，增食欲的作用。</p>\r\n<p>　　不适宜人群：因梨性寒，故有胃寒呕吐、寒咳、脾虚泄泻、便溏、妇人产后、小儿痘后、金疮等患者，宜慎食或忌食。</p>\r\n<p><strong>　　●甘蔗</strong></p>\r\n<p>　　功能：性味甘凉，有清热润肠、化痰充液的作用。汁多味甜营养丰富。</p>\r\n<p>　　最适宜人群：对于大便干结、小便不利、反胃呕吐、虚热咳嗽和高热烦渴等病症有一定的疗效。劳累过度或饥饿头晕的人，只要吃上两节甘蔗就会使精神重新振作起来。</p>\r\n<p>　　不适宜人群：甘蔗性寒，不适合胃寒、呕吐、腹泻、咳嗽、痰多等症的病人。</p>\r\n<p><strong>　　根据自身体质选择水果</strong></p>\r\n<p>　　专家对记者表示，吃水果应该根据自己的身体体质进行选择。而人的体质从中医来说，一般分为偏寒型和实热型两类。对于这两种体质不同的人来说，所选择的水果应该是不同的。</p>\r\n', '2', NULL, '', 'admin', '2009-09-12 18:19:22', '1', NULL, NULL),
	(33, 5, '常见的豆浆的10种制作方法', '', '<strong>常见的豆浆的10种制作方法：</strong><p><strong>　　1、黄豆浆：</strong></p>\r\n<p>　　用料：黄豆85克，水1200毫升(容量可根据个人需要随意增减)，糖适量。</p>\r\n<p>　　功效：补虚、清热化痰、通淋、利大便、降血压、增乳汁。</p>\r\n<p>　　建议：加3-5粒杏仁于用料中，则所熬豆浆更鲜、更浓。</p>\r\n<p><strong>　　2、花生豆奶：</strong></p>\r\n<p>　　用料：黄豆、花生各45克，牛奶200克，水1200毫升，糖适量。</p>\r\n<p>　　制作：黄豆浸泡6-16小时，备用;把浸泡过的黄豆、花生放入豆浆机，加入适量水，打碎煮熟，再用豆浆滤网过滤后即可食用。</p>\r\n<p>　　功效：润肤，盒肺气、补虚。</p>\r\n<p><strong>　　3、芝麻黑豆浆：</strong></p>\r\n<p>　　用料：黑芝麻、花生各10克，黑豆80克，水1200毫升，糖适量。</p>\r\n<p>　　制作：将花生与黑豆浸泡6-16小时，备用;将黑芝麻与浸泡过的花生、黑豆一起放入豆浆机，加入适量水，打碎煮熟，再用豆浆滤网过滤后即可食用。</p>\r\n<p>　　功效：乌发养发，润肤美颜，补肺盒气，滋补肝肾、润肠通便、养血增乳。</p>\r\n<p><strong>　　4、豆浆冰糖米粥：</strong></p>\r\n<p>　　用料：黄豆85克，大米与冰糖各50克，水1200毫升。</p>\r\n<p>　　制作：先照第1种方法制作好黄豆浆，再将黄豆浆与米(可浸泡半个小时)、冰糖一起放入锅内，慢火熬煮到粘稠状即可。</p>\r\n<p>　　功效：养颜润肺，盒肺气。</p>\r\n<p><strong>　　5、芝麻蜂蜜豆浆：</strong></p>\r\n<p>　　用料：豆浆70克，黑芝麻20克，蜂蜜40克，水1200毫升。</p>\r\n<p>　　制作：黄豆浸泡6-16小时，备用;将黑芝麻与浸泡过的黄豆放入豆浆机，加入适量水，打碎煮熟，再用豆浆滤网过滤后即可食用。</p>\r\n<p>　　功效：养颜润肤、乌发养发。</p>\r\n<img src="http://pic.enorth.com.cn/0/06/19/42/6194234_968219.jpg" width="350" height="262" /><br />\r\n<p><strong>　　6、密法黑芝麻糊：</strong></p>\r\n<p>　　用料：蜂蜜1勺，黑芝麻20克，黄豆60克，清水适量，糖适量。</p>\r\n<p>　　制法：黄豆浸泡6-16小时，备用;将黑芝麻与泡好的黄豆一起放入豆浆机，加入适量水，打碎煮熟，再用豆浆滤网过滤，稍凉后加入蜂蜜即可。</p>\r\n<p>　　功效：养颜美容、益智健脑。</p>\r\n<p><strong>　　7、五豆豆浆：</strong></p>\r\n<p>　　用料：黄豆30克，黑豆10克，青豆10克，豌豆10克，花生米10克，水1200毫升，糖适量。</p>\r\n<p>　　制法：五种豆类浸泡6-16小时，备用;将浸泡好的五豆一起放入豆浆机，加入适量水，打碎煮熟，再用豆浆滤网过滤后即可食用。</p>\r\n<p>　　功效：降脂降压、强筋健脾、保护心血管。</p>\r\n<p><strong>　　8、枸杞豆浆：</strong></p>\r\n<p>　　用料：黄豆60克，枸杞10克，水1200毫升，糖适量。</p>\r\n<p>　　制法：黄豆浸泡6-16小时，备用;将泡好的黄豆和枸杞一起放入豆浆机，加入适量水，打碎煮熟，再用豆浆滤网过滤后即可食用。</p>\r\n<p>　　功效：滋补肝肾、益精明目、增强免疫能力。</p>\r\n<p><strong>　　9、红枣枸杞豆浆：</strong></p>\r\n<p>　　用料：黄豆45克，红枣15克，枸杞10克，水1200毫升，糖适量。</p>\r\n<p>　　制法：黄豆浸泡6-16小时;将红枣洗净去核，枸杞洗净备用;将泡好的黄豆、红枣和枸杞一起放入豆浆机，加入适量水，打碎煮熟，再用豆浆滤网过滤后即可食用。</p>\r\n<p>　　功效：补虚益气、安神补肾、改善心肌营养、防治心血管疾病。</p>\r\n<p><strong>　　10、红枣莲子豆浆：</strong></p>\r\n<p>　　用料：红枣(去核)15克，莲子肉15克，黄豆50克，白糖50克，清水适量，糖适量。</p>\r\n<p>　　制法：黄豆浸泡6-16小时;将莲子肉泡至发软;将红枣洗净与莲子肉、黄豆一起放入豆浆机，加入适量水，打碎煮熟，再用豆浆滤网过滤;趁热往杯内加入白糖，搅匀即成;不愿喝甜的也可以不加糖。</p>\r\n<p>　　功效：滋阴益气、养血安神、补脾胃、清热解毒。</p>\r\n', '2', NULL, '', 'admin', '2009-09-12 18:19:57', '1', NULL, NULL),
	(34, 5, '百日咳药膳私家方', '', '百日咳是小儿时期常见的呼吸道传染病之一。临床以阵发性痉挛性咳嗽，咳后有特殊的吸气性吼声，即鸡鸣样的回声，最后倾吐痰沫而止为特征。本病四季都可发生，但冬春季尤多。在临床过程中,我们可以通过中医的辩证论治,给予不同的药膳治疗,往往能够达到一定的疗效.<p>　<strong>　初咳期</strong></p>\r\n<p>　　[临床表现]：初起咳嗽、喷嚏、流涕，或发热等伤风感冒症状。 2-3日后咳嗽日渐增剧，痰稀白、量不多、或痰稠不易咯出、咳声不畅，咳嗽以入夜为重，苔薄白。</p>\r\n<strong>　</strong>　[食疗药膳] <p>　　1.萝卜蜂蜜饮：白萝卜1个(捣烂绞汁)取汁25毫升，蜂蜜12毫升调匀，1次服完，每日1—2次。</p>\r\n<p>　　2.鱼腥草苏叶绿豆粥：鱼腥草(鲜品)50克，苏叶15克，绿豆60克，粳米60克，冰糖30克。将鱼腥草、苏叶水煎20分钟取汁，再煎30分钟共取浓汁300毫升，加适量清水和绿豆，粳米煮粥，熟时加冰糖溶化调匀服食，每日1—2次。</p>\r\n<p>　　3.芹菜饮：芹菜(连根叶)1把，洗净捣汁30毫升，加食盐少许，隔水蒸热，早晚各服1次。连服3日。</p>\r\n<p>　　4.冰糖蒸鸡胆：冰糖20克，鸡苦胆1个。将鸡苦胆和冰糖同蒸熟，分2次服，每日1料。</p>\r\n<strong>　　痉咳期</strong> <p>　　[临床表现]：阵发性咳嗽，日轻夜重，咳剧时伴有深吸气样的鸡鸣声，必待吐出痰涎及食物后，痉咳才得暂时缓解，但不久又复发作，而且一次比一次加剧。并可见眼角青紫及结膜下出血。婴幼儿时期还可引起窒息和抽风。</p>\r\n<strong>　</strong>　[食疗药膳] ： <p>　　1.柿饼罗汉果汤：柿饼30克，罗汉果1个，冰糖25克。将罗汉果和柿饼水煎30分钟，加上冰糖溶化搅匀即可服用。</p>\r\n<p>　　2.橄榄炖冰糖;生橄榄10粒(打碎)，冰糖25克，隔水炖50分钟服用，每日2次。</p>\r\n<p>　　3.川贝鸡蛋蒸：川贝6克(研末)，鸡蛋1枚，将鸡蛋敲一孔如花生仁大小，川贝末入于鸡蛋内，外用湿纸封闭，放在饭上蒸熟。每次吃1枚。每日2次。</p>\r\n<p>　　4.桑白杏仁茶：桑白皮10克，杏仁10克(打碎)，绿茶12克，冰糖20克。前3味水煎去渣，入冰糖溶化，即可饮服，每日1-2次，连服6日1疗程。</p>\r\n<p><strong>　　恢复期</strong></p>\r\n<p>　　[临床表现]顿咳症状开始好转，咳嗽逐渐减轻，一般需经过3周才咳止。</p>\r\n<p>　　[食疗药膳]</p>\r\n<p>　　1.百合炖麻雀：百合20克，麻雀2只(去毛及内脏)，冰糖25克，同隔水炖熟食用，每日1次。</p>\r\n<p>　　2.太子参黄芪鸽蛋汤：太子参15克，黄芪15克，鸽蛋3枚。先水煎太子参、黄芪、取药汁煮鸽蛋，熟时饮汤食鸽蛋。</p>\r\n<p>　　3.沙参百合玉竹粥：北沙参15克，百合15克，玉竹10克，粳米30克，先水煎北沙参、百合、玉竹取药液和粳米煎煮成稀粥食用，连服3日。</p>\r\n', '2', NULL, '', 'admin', '2009-09-12 18:20:44', '1', NULL, NULL),
	(35, 5, '常吃四类食物容易缺钙', '', '<strong>常吃四类食物容易缺钙</strong><p>　　钙是人体骨骼生长发育不可缺少的无机物，它还参与运动神经兴奋性活动。钙在体液的调解下处在动态的平衡状态，不断地被吸收、排泻，血浆钙离子浓度保持不变，使骨生长、骨钙不断沉积与释放。</p>\r\n<p>　　小儿骨生长迅速时需要的钙就多。如不能及时补充，则会发生缺钙，引起疾病。成人若肠道对钙的吸收发生障碍，为维持血浆钙离子的浓度，骨钙就会不断释出，这样就会造成骨质疏松；承重骨的骨髓端骨缘钙沉积过多，形成骨刺，骨膜钙化，甚至发生压缩性骨折等骨退行性骨关节病。</p>\r\n<p>　　胎儿期、新生儿、婴幼儿骨生长发育迅速，钙往往不能满足需要，因此要补充钙剂。</p>\r\n<p>　　人到40岁以后，身体各器官功能均在缓慢地减退，肠道对钙的吸收能力也逐渐地降低，为维持血浆钙离子浓度，保障神经兴奋性活动的需要，骨钙会不断释出，结果会出现前面所述的骨退行性骨关节病，或易发生骨折。</p>\r\n<p>　　为预防此种情况发生，人自40岁以后，应适当补充易于吸收的活性钙。</p>\r\n<p>　　具体地说，妊娠期、新生儿、婴幼儿要在医生指导下适当补充钙剂、晒太阳、服用鱼肝油，以利于骨胳生长发育。</p>\r\n<p>　　40岁以后，为帮助肠道吸收钙，需服用活性钙。因为食物中的钙量虽然已足够多，由于肠道吸收功能减退，则补充的钙需经活化后才易被吸收。</p>\r\n<p>　　此时也应在医生的指导下按疗程补充钙剂，以免发生钙摄入过多引起的疾病。</p>\r\n<p>　　◆提问：饮食中妨碍钙吸收的因素有哪些？</p>\r\n<p>　　◆回答：</p>\r\n<p>　　1、过多摄入植物性食物：植物性食物中的草酸、植酸、膳食纤维等会妨碍钙的吸收。</p>\r\n<p>　　2、吃太咸的食物：食盐的成分为氯化钠，高钠摄入会影响钙的吸收。</p>\r\n<p>　　3、饮大量咖啡：咖啡中含有咖啡因，过多的咖啡因对钙吸收有影响。</p>\r\n<p>　　4、太多的肉类：肉类中蛋白质和磷的含量都较高，膳食中适量的蛋白有助于钙吸收，但过多的蛋白质和磷可妨碍钙的吸收。</p>\r\n', '2', NULL, '', 'admin', '2009-09-12 18:21:11', '1', NULL, NULL),
	(36, 5, '秋季常食莲子羹可除皱嫩肤', '', '用料：莲子30克，芡实30克，薏仁米50克，桂圆肉10克，蜂蜜适量。做法：先将莲子、芡实、薏仁米用清水浸泡30分钟，再将桂圆肉一同放入锅内，加入适量清水，用文火煮至烂熟，加蜂蜜调味食用。<img src="http://pic.enorth.com.cn/0/06/23/01/6230186_802624.jpg" width="300" height="291" /><br />\r\n<p>　　莲子羹功效：桂圆肉大补元气，莲子补脾养胃，薏仁米、芡实为健脾利水之品。现代药理研究表明，芡实中含有美容必需的维生素A、维生素C、B族维生素，蜂蜜中含有胶原蛋白和酶类等物质，可刺激皮肤细胞的生长，促进新陈代谢。此羹是较理想的美容药膳，经常食用有消除皱纹、白嫩肌肤的作用。</p>\r\n', '2', NULL, '', 'admin', '2009-09-12 18:21:32', '1', NULL, NULL);
/*!40000 ALTER TABLE `healthdrink` ENABLE KEYS */;

-- 导出  表 db_order.healthdrinktype 结构
DROP TABLE IF EXISTS `healthdrinktype`;
CREATE TABLE IF NOT EXISTS `healthdrinktype` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `TYPE_NAME` varchar(40) NOT NULL DEFAULT '' COMMENT '新闻类型',
  `IS_DISPLAY` char(1) DEFAULT NULL COMMENT '状态',
  `SEQUENCE` tinyint(4) DEFAULT NULL COMMENT '排序',
  `EDITOR` int(10) DEFAULT NULL COMMENT '编辑人',
  `EDITTIME` datetime DEFAULT NULL COMMENT '编辑时间',
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_NEWSTYPE_EDITOR_ID` (`EDITOR`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- 正在导出表  db_order.healthdrinktype 的数据：~1 rows (大约)
DELETE FROM `healthdrinktype`;
/*!40000 ALTER TABLE `healthdrinktype` DISABLE KEYS */;
INSERT INTO `healthdrinktype` (`ID`, `TYPE_NAME`, `IS_DISPLAY`, `SEQUENCE`, `EDITOR`, `EDITTIME`, `DESCRIPTION`) VALUES
	(5, '健康饮食', '1', 1, NULL, NULL, '健康饮食');
/*!40000 ALTER TABLE `healthdrinktype` ENABLE KEYS */;

-- 导出  表 db_order.integralnote 结构
DROP TABLE IF EXISTS `integralnote`;
CREATE TABLE IF NOT EXISTS `integralnote` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MEMBER` int(9) DEFAULT NULL COMMENT '会员',
  `CHANGE_INTEGRAL` int(6) NOT NULL DEFAULT '0' COMMENT '兑换积分',
  `MEAL_CURRENCY` float(6,1) NOT NULL DEFAULT '0.0' COMMENT '生成餐币',
  `EDITOR` int(9) DEFAULT NULL,
  `EDITTIME` datetime DEFAULT NULL,
  `CHANGE_TIME` datetime DEFAULT NULL COMMENT '兑换日期',
  PRIMARY KEY (`ID`),
  KEY `FK_INTEGRALNOTE_MEMBER` (`MEMBER`),
  KEY `FK_INTEGRALNOTE_EDITOR` (`EDITOR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_order.integralnote 的数据：~0 rows (大约)
DELETE FROM `integralnote`;
/*!40000 ALTER TABLE `integralnote` DISABLE KEYS */;
/*!40000 ALTER TABLE `integralnote` ENABLE KEYS */;

-- 导出  表 db_order.integralset 结构
DROP TABLE IF EXISTS `integralset`;
CREATE TABLE IF NOT EXISTS `integralset` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `INTEGRAL` int(5) NOT NULL DEFAULT '0' COMMENT '兑换积分',
  `MEAL_CURRENCY` float(5,1) NOT NULL DEFAULT '0.0' COMMENT '餐币',
  `EDITOR` int(9) DEFAULT NULL,
  `EDITTIME` datetime DEFAULT NULL,
  `REMARK` varchar(255) DEFAULT NULL,
  `STATUS` char(1) DEFAULT NULL COMMENT '1=可用',
  PRIMARY KEY (`ID`),
  KEY `FK_INTEGRALSET_EDITOR` (`EDITOR`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- 正在导出表  db_order.integralset 的数据：~3 rows (大约)
DELETE FROM `integralset`;
/*!40000 ALTER TABLE `integralset` DISABLE KEYS */;
INSERT INTO `integralset` (`ID`, `INTEGRAL`, `MEAL_CURRENCY`, `EDITOR`, `EDITTIME`, `REMARK`, `STATUS`) VALUES
	(1, 100, 10.0, 7, '2009-10-17 13:17:49', '', '2'),
	(2, 100, 2.0, 7, '2009-10-17 13:17:56', '', '2'),
	(3, 100, 100.0, 7, '2009-10-17 13:18:04', '', '1');
/*!40000 ALTER TABLE `integralset` ENABLE KEYS */;

-- 导出  表 db_order.islegal 结构
DROP TABLE IF EXISTS `islegal`;
CREATE TABLE IF NOT EXISTS `islegal` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `WEBSITE` varchar(50) DEFAULT NULL,
  `EDITOR` int(11) DEFAULT NULL,
  `EDITTIME` datetime DEFAULT NULL,
  `SERIAL` varchar(20) DEFAULT NULL,
  `LEGALCODE` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_ISLEGAL_EDITOR` (`EDITOR`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- 正在导出表  db_order.islegal 的数据：~1 rows (大约)
DELETE FROM `islegal`;
/*!40000 ALTER TABLE `islegal` DISABLE KEYS */;
INSERT INTO `islegal` (`ID`, `WEBSITE`, `EDITOR`, `EDITTIME`, `SERIAL`, `LEGALCODE`) VALUES
	(3, '172.16.6.146', NULL, '2009-09-25 15:36:47', 'tt001', '6c66a010d253e8e2651d3fb1bfa5dfd1');
/*!40000 ALTER TABLE `islegal` ENABLE KEYS */;

-- 导出  表 db_order.leaveword 结构
DROP TABLE IF EXISTS `leaveword`;
CREATE TABLE IF NOT EXISTS `leaveword` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MEMBER` int(11) DEFAULT NULL,
  `NAME` varchar(20) DEFAULT NULL,
  `PHONE` varchar(30) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `LEAVE_TIME` datetime DEFAULT NULL,
  `TYPE` varchar(1) DEFAULT NULL COMMENT '1=意见2=建议3=咨询',
  `STATUS` varchar(1) DEFAULT NULL COMMENT '1=显示',
  `EDITOR` int(11) DEFAULT NULL,
  `EDITTIME` datetime DEFAULT NULL,
  `CONTENT` varchar(255) NOT NULL DEFAULT '',
  `ANSWER` varchar(255) DEFAULT NULL,
  `MEMBER_CODE` varchar(20) DEFAULT NULL,
  `ANSWER_MAN` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_LEAVEWORD_MEMBER` (`MEMBER`),
  KEY `FK_LEAVEWORD_EDITOR` (`EDITOR`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- 正在导出表  db_order.leaveword 的数据：~6 rows (大约)
DELETE FROM `leaveword`;
/*!40000 ALTER TABLE `leaveword` DISABLE KEYS */;
INSERT INTO `leaveword` (`ID`, `MEMBER`, `NAME`, `PHONE`, `EMAIL`, `LEAVE_TIME`, `TYPE`, `STATUS`, `EDITOR`, `EDITTIME`, `CONTENT`, `ANSWER`, `MEMBER_CODE`, `ANSWER_MAN`) VALUES
	(11, 6, '小黄', '88887777', '88887777@QQ.com', '2009-09-26 07:44:46', '3', '1', 7, '2009-10-12 12:03:11', '请问订餐系统是免费的吗？', '你好！\r\n天鼎订餐系统"测试版"是免费的，仅供学习交流使用，假如用于商业使用需向我们公司进行购买。\r\nQQ：1273708322 \r\n联系电话：18925050569', '2222', 'admin'),
	(12, NULL, '舜', '15914381568', 'kander@163.com', '2009-10-09 12:40:52', '1', '1', 7, '2009-10-12 12:01:07', '請問我該如何購買', '您好！详细购买方式以及价格请参照我们的官方网站www.tienting.com\r\n请在购买前与我们的客服联系。谢谢您的关注~\r\nQQ：1273708322 \r\n联系电话：18925050569', NULL, 'admin'),
	(13, NULL, '小黄', '87811132', 'xiaohuang2009@126.com', '2009-10-11 12:04:24', '3', '1', 7, '2009-10-12 12:00:39', '请问订餐系统怎么购买啊？或者测试版在哪里可以下载啊？', '您好！详细购买方式以及价格请参照我们的官方网站www.tienting.com\r\n请在购买前与我们的客服联系。谢谢您的关注~\r\nQQ：1273708322 \r\n联系电话：18925050569', NULL, 'admin'),
	(16, NULL, '王先生', '15914381568', 'kander@163.com', '2009-10-12 11:57:24', '3', '1', 7, '2009-10-12 12:00:55', '请问你们的联系方式是?', '您好！详细购买方式以及价格请参照我们的官方网站www.tienting.com\r\n请在购买前与我们的客服联系。谢谢您的关注~\r\nQQ：1273708322 \r\n联系电话：18925050569', NULL, 'admin'),
	(17, NULL, '王先生', '15914381568', 'kander@163.com', '2009-10-12 12:03:18', '3', '1', 7, '2009-10-12 12:04:17', '请问你们的联系方式是?', '您好！详细购买方式以及价格请参照我们的官方网站www.tienting.com\r\n请在购买前与我们的客服联系。谢谢您的关注~\r\nQQ：1273708322 \r\n联系电话：18925050569', NULL, 'admin'),
	(18, NULL, '何先生', '02085421585', 'eopg@163.com', '2009-10-13 23:06:32', '1', '1', 7, '2009-10-15 13:01:45', '请问这订餐系统多少钱卖？', '您好~系统原价1080元，10月份到11月份是推广期所以在此期间购买仅需560元，详情请与我们联系。\r\nQQ：1273708322\r\n联系电话：18925050569', NULL, 'admin');
/*!40000 ALTER TABLE `leaveword` ENABLE KEYS */;

-- 导出  表 db_order.member 结构
DROP TABLE IF EXISTS `member`;
CREATE TABLE IF NOT EXISTS `member` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LOGIN_CODE` varchar(20) NOT NULL COMMENT '账号',
  `MEMBER_NAME` varchar(20) DEFAULT NULL,
  `SEX` char(1) DEFAULT NULL COMMENT '1=女',
  `IDCARD_NO` varchar(20) DEFAULT NULL,
  `PASSWORD` varchar(60) NOT NULL,
  `PHOTO` varchar(50) DEFAULT NULL,
  `ASSIGN_ADDRESS` varchar(50) DEFAULT NULL,
  `RELATION_PHONE` varchar(30) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `MOBILE` varchar(30) DEFAULT NULL,
  `MEAL_CURRENCY` float(6,1) DEFAULT '0.0' COMMENT '餐币',
  `INTEGRAL` int(6) DEFAULT '0' COMMENT '可用积分',
  `HISTORY_INTEGRAL` int(7) DEFAULT '0' COMMENT '历史积分',
  `STATUS` char(1) DEFAULT NULL COMMENT '1=可用',
  `REMARK` varchar(255) DEFAULT NULL,
  `REGISTER_TIME` datetime DEFAULT NULL,
  `LOGIN_IP` varchar(20) DEFAULT NULL,
  `LAST_IP` varchar(20) DEFAULT NULL,
  `LOGIN_COUNT` int(6) DEFAULT NULL,
  `LAST_TIME` datetime DEFAULT NULL,
  `FINALLY_TIME` datetime DEFAULT NULL,
  `EDITOR` int(9) DEFAULT NULL,
  `EDITTIME` datetime DEFAULT NULL,
  `OPERATE_RECORD` text COMMENT '操作记录',
  PRIMARY KEY (`ID`),
  KEY `FK_MEMBER_EDITOR` (`EDITOR`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- 正在导出表  db_order.member 的数据：~11 rows (大约)
DELETE FROM `member`;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` (`ID`, `LOGIN_CODE`, `MEMBER_NAME`, `SEX`, `IDCARD_NO`, `PASSWORD`, `PHOTO`, `ASSIGN_ADDRESS`, `RELATION_PHONE`, `EMAIL`, `MOBILE`, `MEAL_CURRENCY`, `INTEGRAL`, `HISTORY_INTEGRAL`, `STATUS`, `REMARK`, `REGISTER_TIME`, `LOGIN_IP`, `LAST_IP`, `LOGIN_COUNT`, `LAST_TIME`, `FINALLY_TIME`, `EDITOR`, `EDITTIME`, `OPERATE_RECORD`) VALUES
	(6, '2222', '黄经理', '1', '3214', 'db7bf5dfe50b344a7bbac818e465b273', '20090903231724.jpg', '广从路13号', '18781829555', '22222@2.cn', '3421', 92.0, 2030, 0, '1', '4545hjfh222', '2009-08-29 18:52:25', '127.0.0.1', '127.0.0.1', 54, '2009-10-17 15:51:17', '2009-10-17 16:16:10', 7, '2009-09-12 16:30:00', '<p>您在 2009-08-29 成功注册为：天鼎订餐系统 的会员。</p><p>您在 2009-08-30 16:30:57 成功修改您的个人信息。</p><p>您在 2009-08-30 16:32:54 成功修改您的个人信息。</p><p>您在 2009-08-30 16:38:40 成功修改您的个人信息。</p>您在 2009-08-30 16:43:34 成功修改您的个人信息。<br/>您在 2009-09-03 23:01:50 成功修改您的个人信息。<br/>您在 2009-09-03 23:17:24 成功修改您的个人信息。<br/>您在 2009-09-05 11:59:46 成功修改您的个人信息。<br/>'),
	(7, 'hy03', '小何', '2', '0337310611', 'bfe5724f8fae8fc5412ffd518c0f63a9', NULL, '紫泉27栋404', '87878888', 'xiaohe@vip.163.com', '13812345678', NULL, 6, 0, '1', '', '2009-09-19 16:32:11', '127.0.0.1', '127.0.0.1', 0, '2009-09-19 16:37:48', '2009-09-19 16:55:04', 1, '2009-09-19 16:32:11', NULL),
	(8, 'jw09', '小黄', '2', '010316459', '0106ed89225c8eb88452d8cb1ef494f9', NULL, '', '', '', '', NULL, 0, 0, '1', '', '2009-09-19 16:34:50', NULL, NULL, NULL, NULL, NULL, 1, '2009-09-19 16:34:50', NULL),
	(9, 'kh09', '小航', '1', '', 'a0efd618a73c1d362e1c314753f961a4', NULL, '', '', 'xiaohe@vip.163.com', '', NULL, 0, 0, '1', '', '2009-09-19 17:23:09', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2009-09-30 20:24:44', '<p>您在 2009-09-19 成功注册为：天鼎订餐系统 的会员。</p>'),
	(10, 'yh09', '小黄', '1', NULL, '9d102f9741f6a5857fb932d24eb1566f', NULL, '', '', 'xiaohe@vip.163.com', NULL, NULL, 0, 0, '1', NULL, '2009-09-19 17:24:15', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '<p>您在 2009-09-19 成功注册为：天鼎订餐系统 的会员。</p>'),
	(11, 'hr2009', '小曾', '1', NULL, '24980b06836746d567bd9206634c6082', NULL, '北京路', '13888888888', '13888888888@139.com', NULL, NULL, 0, 0, '1', NULL, '2009-09-30 08:14:47', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '<p>您在 2009-09-30 成功注册为：天鼎网上订餐系统（天天网上订餐） 的会员。</p>'),
	(12, 'xh88', '胡女士', '1', NULL, '73df7730c769e10f6013ddb765c79da5', NULL, '', '', '1@1.com', NULL, NULL, 14, 0, '1', NULL, '2009-10-09 08:14:12', '219.137.116.11', '219.137.116.11', 0, '2009-10-09 08:14:44', '2009-10-09 08:14:44', NULL, NULL, '<p>您在 2009-10-09 成功注册为：天鼎网上订餐系统（天天网上订餐） 的会员。</p>'),
	(13, 'xiaoh', '小花', '1', '', 'aa8154f3b4146d4d62253cbc958d16aa', NULL, '', '', '433@df.com', '', 0.0, 0, 0, '1', '', '2009-10-09 08:22:01', '219.137.116.11', NULL, NULL, NULL, NULL, 1, '2009-10-10 20:00:41', '<p>您在 2009-10-09 成功注册为：天鼎网上订餐系统（天天网上订餐） 的会员。</p>'),
	(16, 'txc623', '小谭', '1', NULL, '70e01d947ac13abd850729b0394b1483', NULL, '', '', '222@eee.com', NULL, 0.0, 0, 0, '1', NULL, '2009-10-11 20:10:30', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '您在 2009-10-11 成功注册为：天鼎网上订餐系统（天天网上订餐） 的会员。<br/>'),
	(18, 'www', '刘先生', '2', NULL, '728cf12a660f994b984dc7d162dabfd9', NULL, '广州市', '12345678', '123@163.com', NULL, 0.0, 16, 0, '1', NULL, '2009-10-14 13:56:26', '219.137.116.11', '219.137.116.11', 0, '2009-10-14 13:57:43', '2009-10-14 13:57:43', NULL, NULL, '您在 2009-10-14 成功注册为：天鼎网上订餐系统（天天订餐） 的会员。<br/>'),
	(19, 'kander', '王先生', '2', NULL, 'dad40c6f05723b026c9c02bb2306c6fe', NULL, '', '', 'kander@163.com', NULL, 0.0, 130, 0, '1', NULL, '2009-10-17 13:16:02', '58.248.64.128', '58.248.64.128', 0, '2009-10-17 13:16:10', '2009-10-17 13:16:10', NULL, NULL, '您在 2009-10-17 成功注册为：天鼎网上订餐系统（天天订餐） 的会员。<br/>');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;

-- 导出  表 db_order.menuevaluate 结构
DROP TABLE IF EXISTS `menuevaluate`;
CREATE TABLE IF NOT EXISTS `menuevaluate` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SUBMENU` int(11) DEFAULT NULL,
  `MEMBER` int(11) DEFAULT NULL,
  `CONTENT` varchar(255) NOT NULL DEFAULT '',
  `EVALUATE_TIME` datetime DEFAULT NULL,
  `STATUS` char(1) DEFAULT NULL,
  `EDITOR` int(11) DEFAULT NULL,
  `EDITTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_MENUEVALUATE_SUBMENU` (`SUBMENU`),
  KEY `FK_MENUEVALUATE_MEMBER` (`MEMBER`),
  KEY `FK_MENUEVALUATE_EDITOR` (`EDITOR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_order.menuevaluate 的数据：~0 rows (大约)
DELETE FROM `menuevaluate`;
/*!40000 ALTER TABLE `menuevaluate` DISABLE KEYS */;
/*!40000 ALTER TABLE `menuevaluate` ENABLE KEYS */;

-- 导出  表 db_order.menutype 结构
DROP TABLE IF EXISTS `menutype`;
CREATE TABLE IF NOT EXISTS `menutype` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(20) NOT NULL DEFAULT '' COMMENT '编号',
  `NAME` varchar(40) NOT NULL DEFAULT '' COMMENT '名称',
  `DESCRIPTION` text COMMENT '描述',
  `SEQUENCE` tinyint(4) DEFAULT NULL COMMENT '排序',
  `STATUS` char(1) DEFAULT NULL COMMENT '状态',
  `EDITOR` int(10) DEFAULT NULL COMMENT '编辑人',
  `EDITTIME` datetime DEFAULT NULL COMMENT '编辑时间',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CODE` (`CODE`),
  UNIQUE KEY `NAME` (`NAME`),
  KEY `FK_MENUTYPE_EDITOR_USERS` (`EDITOR`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- 正在导出表  db_order.menutype 的数据：~5 rows (大约)
DELETE FROM `menutype`;
/*!40000 ALTER TABLE `menutype` DISABLE KEYS */;
INSERT INTO `menutype` (`ID`, `CODE`, `NAME`, `DESCRIPTION`, `SEQUENCE`, `STATUS`, `EDITOR`, `EDITTIME`) VALUES
	(13, '001', '鱼类海鲜', '鱼类海鲜', 1, '1', 7, '2009-10-17 12:55:33'),
	(14, '002', '热菜肉类', '热菜肉类', 2, '1', NULL, NULL),
	(15, '003', '汤羹菜谱', '汤羹菜谱', 3, '1', NULL, NULL),
	(16, '004', '主食菜单', '主食菜单', 4, '1', NULL, '2009-09-14 15:03:05'),
	(17, '005', '潮汕小吃', '潮汕美味\r\n', 1, '1', 7, '2009-10-14 14:07:40');
/*!40000 ALTER TABLE `menutype` ENABLE KEYS */;

-- 导出  表 db_order.notice 结构
DROP TABLE IF EXISTS `notice`;
CREATE TABLE IF NOT EXISTS `notice` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(100) NOT NULL COMMENT '标题',
  `TITLE_ICO` varchar(50) DEFAULT NULL,
  `SUMMARY` varchar(200) DEFAULT NULL COMMENT '简介',
  `CONTENT` text,
  `RECORD_TIME` datetime DEFAULT NULL,
  `RECORD_MAN` varchar(20) DEFAULT NULL,
  `IS_DISPLAY` char(1) DEFAULT NULL COMMENT '1=显示',
  `EDITOR` int(11) DEFAULT NULL,
  `EDITTIME` datetime DEFAULT NULL,
  `IS_TOP` char(1) DEFAULT NULL COMMENT '1=置顶',
  PRIMARY KEY (`ID`),
  KEY `FK_notice_EDITOR` (`EDITOR`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- 正在导出表  db_order.notice 的数据：~2 rows (大约)
DELETE FROM `notice`;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` (`ID`, `TITLE`, `TITLE_ICO`, `SUMMARY`, `CONTENT`, `RECORD_TIME`, `RECORD_MAN`, `IS_DISPLAY`, `EDITOR`, `EDITTIME`, `IS_TOP`) VALUES
	(5, '如何使用该系统', NULL, '如何使用该系统', '<p>系统购买方式</p>\r\n<p>联系电话：020-87811132&nbsp;&nbsp;&nbsp;&nbsp; 18925050569</p>\r\n<p>QQ1：1273708322</p>\r\n<p>QQ2：861516626</p>\r\n<p>公司官网：<a href="http://www.tienting.com/">www.tienting.com</a></p>\r\n<p>请与我们联系！因为专业！所以信赖！</p>\r\n', '2009-10-14 16:53:08', 'admin', '1', NULL, NULL, '1'),
	(6, '欢迎大家来订餐', NULL, '欢迎大家来订餐', '<p>深圳市圣古科技有限公司是一家集计算机软件开发、硬件及网络维护、生产、贸易、技术支持为一体的现代化高新科技企业。公司为扩大经营范围，于2009年6月在广州市从化区成立软件研发基地。</p>\r\n<p>圣古以软件技术为核心，通过软件与服务的结合，软件与制造的结合，技术与行业管理能力的结合，提供行业解决方案和产品工程解决方案以及相关产品与服务。</p>\r\n<p>面向行业客户，我们提供安全、可靠、高质量、易扩展的行业解决方案，帮助客户实现信息化管理最佳实践，以满足客户业务快速发展的不同需求。行业解决方案涵盖的领域包括：电信、制造业与商贸流通业、医疗卫生、教育等行业。</p>\r\n<p>在产品工程解决方案领域，圣古旗下的天鼎<a href="http://www.tienting.cn/" target="_blank">网上订餐系统</a>开创了电子商务的新领域----一个即时、快捷以及不需要物流的电子商务新局面。</p>\r\n<p>在软件业务流程外包方面，圣古面向行业客户提供多种类的软件外包业务。主要包括：</p>\r\n<b><ul><li>MIS（Management Information System，管理信息系统） </li><li>OA（Office Automation，办公自动化系统） </li><li>ERP（Enterprise Resource Planning，企业资源计划系统的研发） </li><li>CRM（Customer Relationship Management，客户关系管理系统） </li></ul>\r\n</b>', '2009-10-17 16:19:40', 'admin', '1', NULL, NULL, '2');
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;

-- 导出  表 db_order.orderformlist 结构
DROP TABLE IF EXISTS `orderformlist`;
CREATE TABLE IF NOT EXISTS `orderformlist` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `ORDERFORMNOTE` int(10) NOT NULL DEFAULT '0' COMMENT '订单号',
  `POS_PRINT_CODE` varchar(20) NOT NULL DEFAULT '' COMMENT 'POS打单号',
  `SUBMENU` int(10) NOT NULL DEFAULT '0' COMMENT '菜单表ID',
  `PRICE` float(7,1) NOT NULL DEFAULT '0.0' COMMENT '主菜价格',
  `COUNT` tinyint(4) DEFAULT '0' COMMENT '数量',
  `COST` float(7,1) DEFAULT '0.0' COMMENT '估计成本',
  `PROFIT` float(7,1) DEFAULT '0.0' COMMENT '估计利润',
  `MAIN_MENU_NAME` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_ORDERFORMLIST_SUBMENU` (`SUBMENU`),
  KEY `FK_ORDERFORMNOTE` (`ORDERFORMNOTE`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8;

-- 正在导出表  db_order.orderformlist 的数据：~12 rows (大约)
DELETE FROM `orderformlist`;
/*!40000 ALTER TABLE `orderformlist` DISABLE KEYS */;
INSERT INTO `orderformlist` (`ID`, `ORDERFORMNOTE`, `POS_PRINT_CODE`, `SUBMENU`, `PRICE`, `COUNT`, `COST`, `PROFIT`, `MAIN_MENU_NAME`) VALUES
	(132, 59, '001', 32, 10.0, 1, 5.0, 5.0, '老鸭冬笋汤'),
	(133, 59, '002', 18, 10.0, 1, 5.0, 5.0, '薄荷香煎金丝鱼'),
	(134, 59, '003', 28, 20.0, 1, 5.0, 15.0, '茄汁免治猪扒'),
	(135, 59, '004', 24, 30.0, 1, 10.0, 20.0, '冰梅秘酱蒸鲶鱼'),
	(136, 59, '005', 26, 6.0, 1, 2.0, 4.0, '金牌好味骨'),
	(137, 60, '001', 30, 10.0, 1, 2.0, 8.0, '黑木耳红枣汤'),
	(138, 61, '001', 26, 6.0, 1, 2.0, 4.0, '金牌好味骨'),
	(139, 61, '002', 32, 10.0, 1, 5.0, 5.0, '老鸭冬笋汤'),
	(140, 61, '003', 31, 8.0, 1, 2.0, 6.0, '葫芦海鲜汤'),
	(141, 61, '004', 30, 10.0, 1, 2.0, 8.0, '黑木耳红枣汤'),
	(142, 62, '001', 26, 6.0, 1, 2.0, 4.0, '金牌好味骨'),
	(143, 62, '002', 31, 8.0, 1, 2.0, 6.0, '葫芦海鲜汤');
/*!40000 ALTER TABLE `orderformlist` ENABLE KEYS */;

-- 导出  表 db_order.orderformnote 结构
DROP TABLE IF EXISTS `orderformnote`;
CREATE TABLE IF NOT EXISTS `orderformnote` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `ORDER_FORM_NO` varchar(50) NOT NULL DEFAULT '' COMMENT '订单号',
  `PRICE` float(7,1) DEFAULT '0.0' COMMENT '总价格',
  `ORDER_DATE` datetime DEFAULT NULL COMMENT '订单日期',
  `RELATION_MAN` varchar(30) DEFAULT NULL COMMENT '联系人',
  `RELATION_PHONE` varchar(30) DEFAULT NULL COMMENT '送餐电话',
  `ASSIGN_ADDRESS` varchar(50) DEFAULT NULL COMMENT '送到时间',
  `STATUS` char(1) DEFAULT NULL COMMENT '订单状态',
  `REASON` varchar(50) DEFAULT NULL COMMENT '理由',
  `ASSIGNMAN` int(10) DEFAULT NULL COMMENT '送餐员',
  `FETCH_TIME` varchar(10) DEFAULT NULL COMMENT '送到时间',
  `IS_PRINT` char(1) DEFAULT NULL COMMENT '打印标记',
  `PAY_MODE` char(1) DEFAULT NULL COMMENT '付款方式1=现金',
  `REMARK` varchar(100) DEFAULT NULL COMMENT '备注',
  `EDITOR` int(10) DEFAULT NULL,
  `EDITTIME` datetime DEFAULT NULL,
  `MEMBER` int(9) DEFAULT NULL,
  `MEMBER_NAME` varchar(20) DEFAULT NULL,
  `ASSIGN_NAME` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ORDER_FORM_NO` (`ORDER_FORM_NO`),
  KEY `FK_EDITOR` (`EDITOR`),
  KEY `FK_orderformnote_ASSIGNMAN` (`ASSIGNMAN`),
  KEY `FK_orderformnote_MEMBER` (`MEMBER`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- 正在导出表  db_order.orderformnote 的数据：~4 rows (大约)
DELETE FROM `orderformnote`;
/*!40000 ALTER TABLE `orderformnote` DISABLE KEYS */;
INSERT INTO `orderformnote` (`ID`, `ORDER_FORM_NO`, `PRICE`, `ORDER_DATE`, `RELATION_MAN`, `RELATION_PHONE`, `ASSIGN_ADDRESS`, `STATUS`, `REASON`, `ASSIGNMAN`, `FETCH_TIME`, `IS_PRINT`, `PAY_MODE`, `REMARK`, `EDITOR`, `EDITTIME`, `MEMBER`, `MEMBER_NAME`, `ASSIGN_NAME`) VALUES
	(59, '091017163400001', 76.0, '2009-10-17 16:34:20', '见过大爷', '87634346', '34asdf', '1', NULL, 8, '23:55', NULL, '1', 'sla', 7, '2009-10-17 00:00:00', NULL, '游客', '小黄'),
	(60, '091017164900001', 10.0, '2009-10-17 16:49:35', '小黄', '45632145', 'dddd', '1', NULL, NULL, '23:55', NULL, '1', '', NULL, NULL, NULL, '游客', NULL),
	(61, '091220163100001', 34.0, '2009-12-20 16:31:11', '张小山', '1234567898', '北京市朝阳区', '1', NULL, NULL, '17:30', NULL, '1', '', NULL, NULL, NULL, '游客', NULL),
	(62, '100201155800001', 14.0, '2010-02-01 15:58:21', '小王', '010-1234567', '北京市昌平区龙锦苑', '1', NULL, NULL, '17:30', NULL, '1', '务必在6点前送到', NULL, NULL, NULL, '游客', NULL);
/*!40000 ALTER TABLE `orderformnote` ENABLE KEYS */;

-- 导出  表 db_order.resources 结构
DROP TABLE IF EXISTS `resources`;
CREATE TABLE IF NOT EXISTS `resources` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `RESOURCE_TYPE` varchar(20) NOT NULL DEFAULT '',
  `VALUE` varchar(255) NOT NULL DEFAULT '',
  `ORDER_NUM` float DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- 正在导出表  db_order.resources 的数据：~7 rows (大约)
DELETE FROM `resources`;
/*!40000 ALTER TABLE `resources` DISABLE KEYS */;
INSERT INTO `resources` (`ID`, `RESOURCE_TYPE`, `VALUE`, `ORDER_NUM`) VALUES
	(1, 'url', '/security/user!save*', 1.2),
	(2, 'url', '/security/user!delete*', 1.1),
	(3, 'url', '/security/user*', 1),
	(4, 'url', '/security/role!save*', 2.2),
	(5, 'url', '/security/role!delete*', 2.1),
	(6, 'url', '/security/role*', 2),
	(7, 'url', '/frame.action', 0.1);
/*!40000 ALTER TABLE `resources` ENABLE KEYS */;

-- 导出  表 db_order.resources_authorities 结构
DROP TABLE IF EXISTS `resources_authorities`;
CREATE TABLE IF NOT EXISTS `resources_authorities` (
  `AUTHORITY_ID` int(10) NOT NULL DEFAULT '0',
  `RESOURCE_ID` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`AUTHORITY_ID`,`RESOURCE_ID`),
  KEY `FK_RESOURCES_AUTHORITIES_RESOURCE` (`RESOURCE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_order.resources_authorities 的数据：~7 rows (大约)
DELETE FROM `resources_authorities`;
/*!40000 ALTER TABLE `resources_authorities` DISABLE KEYS */;
INSERT INTO `resources_authorities` (`AUTHORITY_ID`, `RESOURCE_ID`) VALUES
	(23, 1),
	(23, 2),
	(2, 3),
	(27, 4),
	(27, 5),
	(4, 6),
	(1, 7);
/*!40000 ALTER TABLE `resources_authorities` ENABLE KEYS */;

-- 导出  表 db_order.restaurant 结构
DROP TABLE IF EXISTS `restaurant`;
CREATE TABLE IF NOT EXISTS `restaurant` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `ADDRESS` varchar(100) DEFAULT NULL COMMENT '地址',
  `MAP` varchar(50) DEFAULT NULL COMMENT '地图',
  `PRINCIPAL` varchar(20) DEFAULT NULL COMMENT '负责人',
  `PHONE` varchar(30) DEFAULT NULL COMMENT '联系电话',
  `MOBILE` varchar(30) DEFAULT NULL COMMENT '手机',
  `EMAIL` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `EDITOR` int(10) DEFAULT NULL COMMENT '编辑人',
  `EDITTIME` datetime DEFAULT NULL COMMENT '编辑时间',
  `NAME` varchar(100) DEFAULT NULL COMMENT '店名',
  `DESCRIPTION` text COMMENT '描述',
  `LOGO` varchar(45) DEFAULT NULL COMMENT 'LOGO图片',
  `SERVICE` varchar(255) DEFAULT NULL COMMENT '温馨提示',
  `AD` varchar(45) DEFAULT NULL COMMENT '广告图片',
  `FOOTERITEM` varchar(100) DEFAULT NULL COMMENT '页脚导航',
  `ADLINK` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_RESTAURANT_EDITOR_USERS` (`EDITOR`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- 正在导出表  db_order.restaurant 的数据：~1 rows (大约)
DELETE FROM `restaurant`;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
INSERT INTO `restaurant` (`ID`, `ADDRESS`, `MAP`, `PRINCIPAL`, `PHONE`, `MOBILE`, `EMAIL`, `EDITOR`, `EDITTIME`, `NAME`, `DESCRIPTION`, `LOGO`, `SERVICE`, `AD`, `FOOTERITEM`, `ADLINK`) VALUES
	(6, '广州广从大道100000号100', 'map.jpg', '小伟子', '7616641679846/6476131', '13912345678', 'xiaohuang@tienting.com', 7, '2009-10-15 13:45:51', '网上订餐系统', '<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp; 天鼎特色农家天鼎特色农家 </p>\r\n<p>&nbsp;&nbsp;&nbsp; 天鼎特色农家</p>\r\n', 'logo.jpg', '订餐电话：8888888*，8888777*<br/>\r\n提醒各位街坊,为了能让您在用餐时间能准时的享受到我们提供的餐食,请您提前半个小时订餐!  \r\n', 'ad.jpg', NULL, NULL);
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;

-- 导出  表 db_order.restaurantsalecount 结构
DROP TABLE IF EXISTS `restaurantsalecount`;
CREATE TABLE IF NOT EXISTS `restaurantsalecount` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `START_DATE` datetime DEFAULT NULL COMMENT '起始日期',
  `END_DATE` datetime DEFAULT NULL COMMENT '终止日期',
  `START_TIME` varchar(5) DEFAULT NULL COMMENT '起始时间',
  `END_TIME` varchar(5) DEFAULT NULL COMMENT '终止时间',
  `BOOKING_COUNT` int(7) DEFAULT '0' COMMENT '订单量(含)',
  `MENU_COUNT` int(8) DEFAULT '0' COMMENT '菜单量',
  `AMOUNT` float(10,1) DEFAULT '0.0' COMMENT '销售总额',
  `COST` float(10,1) DEFAULT '0.0' COMMENT '估计成本',
  `PROFIT` float(10,1) DEFAULT NULL COMMENT '估计利润',
  `REMARK` varchar(255) DEFAULT NULL COMMENT '备注',
  `EDITOR` int(10) DEFAULT NULL COMMENT '编辑人',
  `EDITTIME` datetime DEFAULT NULL COMMENT '编辑时间',
  `OLDSTATUS` char(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_RESTAURANTSALECOUNT_EDITOR` (`EDITOR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_order.restaurantsalecount 的数据：~0 rows (大约)
DELETE FROM `restaurantsalecount`;
/*!40000 ALTER TABLE `restaurantsalecount` DISABLE KEYS */;
/*!40000 ALTER TABLE `restaurantsalecount` ENABLE KEYS */;

-- 导出  表 db_order.roles 结构
DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `ID` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `NAME` varchar(40) NOT NULL DEFAULT '' COMMENT '角色名',
  `CNNAME` varchar(40) DEFAULT NULL COMMENT '角色中文名',
  `REMARK` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- 正在导出表  db_order.roles 的数据：~2 rows (大约)
DELETE FROM `roles`;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`ID`, `NAME`, `CNNAME`, `REMARK`) VALUES
	(1, 'supermanager', '超级管理员', '拥有系统中所有的权限'),
	(7, 'admin', '管理员', '');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- 导出  表 db_order.roles_authorities 结构
DROP TABLE IF EXISTS `roles_authorities`;
CREATE TABLE IF NOT EXISTS `roles_authorities` (
  `ROLE_ID` int(10) NOT NULL DEFAULT '0' COMMENT '角色主键',
  `AUTHORITY_ID` int(10) NOT NULL DEFAULT '0' COMMENT '权限主键',
  KEY `FK_ROLES_AUTHORITIES_ROLE` (`ROLE_ID`),
  KEY `FK_ROLES_AUTHORITIES_AUTHORITIES` (`AUTHORITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_order.roles_authorities 的数据：~74 rows (大约)
DELETE FROM `roles_authorities`;
/*!40000 ALTER TABLE `roles_authorities` DISABLE KEYS */;
INSERT INTO `roles_authorities` (`ROLE_ID`, `AUTHORITY_ID`) VALUES
	(1, 2),
	(1, 4),
	(1, 13),
	(1, 1),
	(1, 1),
	(1, 2),
	(1, 4),
	(1, 13),
	(1, 28),
	(7, 1),
	(1, 32),
	(1, 29),
	(1, 46),
	(1, 50),
	(1, 56),
	(1, 54),
	(1, 55),
	(1, 23),
	(1, 57),
	(1, 58),
	(1, 27),
	(1, 71),
	(1, 33),
	(1, 60),
	(1, 61),
	(1, 62),
	(1, 63),
	(1, 30),
	(1, 31),
	(1, 59),
	(1, 34),
	(1, 64),
	(1, 35),
	(1, 65),
	(1, 66),
	(1, 36),
	(1, 67),
	(1, 68),
	(1, 70),
	(7, 32),
	(7, 29),
	(7, 41),
	(7, 46),
	(7, 50),
	(7, 56),
	(7, 28),
	(7, 2),
	(7, 54),
	(7, 55),
	(7, 23),
	(7, 4),
	(7, 57),
	(7, 58),
	(7, 27),
	(7, 13),
	(7, 71),
	(7, 33),
	(7, 60),
	(7, 61),
	(7, 62),
	(7, 63),
	(7, 30),
	(7, 31),
	(7, 59),
	(7, 34),
	(7, 64),
	(7, 35),
	(7, 65),
	(7, 66),
	(7, 36),
	(7, 67),
	(7, 68),
	(7, 70),
	(1, 41);
/*!40000 ALTER TABLE `roles_authorities` ENABLE KEYS */;

-- 导出  表 db_order.salestatistics 结构
DROP TABLE IF EXISTS `salestatistics`;
CREATE TABLE IF NOT EXISTS `salestatistics` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `OLD_STATUS` char(1) DEFAULT NULL,
  `PAY_MODE` char(1) DEFAULT NULL,
  `START_DATE` datetime DEFAULT NULL,
  `END_DATE` datetime DEFAULT NULL,
  `BOOKING_COUNT` int(7) DEFAULT '0',
  `MENU_COUNT` int(8) DEFAULT '0',
  `PRICE` float(10,1) DEFAULT '0.0',
  `COST` float(10,1) DEFAULT '0.0',
  `PROFIT` float(10,1) DEFAULT '0.0',
  `REMARK` varchar(200) DEFAULT NULL,
  `EDITOR` int(11) DEFAULT '0',
  `EDITTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_salestatistics_EDITOR` (`EDITOR`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- 正在导出表  db_order.salestatistics 的数据：~2 rows (大约)
DELETE FROM `salestatistics`;
/*!40000 ALTER TABLE `salestatistics` DISABLE KEYS */;
INSERT INTO `salestatistics` (`ID`, `OLD_STATUS`, `PAY_MODE`, `START_DATE`, `END_DATE`, `BOOKING_COUNT`, `MENU_COUNT`, `PRICE`, `COST`, `PROFIT`, `REMARK`, `EDITOR`, `EDITTIME`) VALUES
	(3, '', '', '2009-09-01 00:00:00', '2009-09-30 00:00:00', 23, 35, 418.0, 143.0, 269.0, '', 1, '2009-09-30 23:37:22'),
	(4, '', '', '2009-10-01 00:00:00', '2009-10-10 00:00:00', 8, 42, 455.0, 119.2, 289.8, 'dfa', 1, '2009-10-10 21:21:59');
/*!40000 ALTER TABLE `salestatistics` ENABLE KEYS */;

-- 导出  表 db_order.submenu 结构
DROP TABLE IF EXISTS `submenu`;
CREATE TABLE IF NOT EXISTS `submenu` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `MENUTYPE` int(10) DEFAULT NULL COMMENT '菜单类型',
  `CODE` varchar(20) NOT NULL DEFAULT '' COMMENT '编号',
  `NAME` varchar(80) NOT NULL COMMENT '名称',
  `PHOTO` varchar(40) DEFAULT NULL COMMENT '照片',
  `PRICE` float(6,1) DEFAULT '0.0' COMMENT '单价',
  `COST` float(6,1) DEFAULT '0.0' COMMENT '估计成本',
  `PROFIT` float(6,1) DEFAULT '0.0' COMMENT '估计利润',
  `SERIAL` tinyint(4) DEFAULT NULL COMMENT '排序',
  `DESCRIPTION` text COMMENT '描述',
  `STATUS` char(1) DEFAULT NULL COMMENT '状态',
  `STOCK` tinyint(4) DEFAULT '0' COMMENT '库存量',
  `SELL_NUMBER` int(11) DEFAULT '0' COMMENT '销售量',
  `EDITOR` int(10) DEFAULT NULL COMMENT '编辑人',
  `EDITTIME` datetime DEFAULT NULL COMMENT '编辑时间',
  `IS_RECOMMEND` char(1) DEFAULT '2' COMMENT '是否推荐菜单',
  `RECOMMEND_REASON` varchar(50) DEFAULT NULL COMMENT '推荐理由',
  `SUMMARY` varchar(100) DEFAULT NULL COMMENT '摘要',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CODE` (`CODE`),
  UNIQUE KEY `MENUTYPE` (`MENUTYPE`,`NAME`),
  KEY `FK_SUBMENU_EDITOR_USERS` (`EDITOR`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- 正在导出表  db_order.submenu 的数据：~26 rows (大约)
DELETE FROM `submenu`;
/*!40000 ALTER TABLE `submenu` DISABLE KEYS */;
INSERT INTO `submenu` (`ID`, `MENUTYPE`, `CODE`, `NAME`, `PHOTO`, `PRICE`, `COST`, `PROFIT`, `SERIAL`, `DESCRIPTION`, `STATUS`, `STOCK`, `SELL_NUMBER`, `EDITOR`, `EDITTIME`, `IS_RECOMMEND`, `RECOMMEND_REASON`, `SUMMARY`) VALUES
	(18, 13, '0011', '薄荷香煎金丝鱼', '20090930232730.jpg', 10.0, 5.0, 5.0, 1, '薄荷香煎金丝鱼', '1', 86, 14, 7, '2009-10-14 10:03:59', '2', '美味可口', NULL),
	(23, 17, '0012', '干煎盐酥带鱼', '20090912171744.jpg', 20.0, 10.0, 10.0, 2, '干煎盐酥带鱼', '1', 100, 1, NULL, '2009-10-05 22:59:24', '2', '干煎盐酥带鱼', NULL),
	(24, 13, '0013', '冰梅秘酱蒸鲶鱼', '20090912171819.jpg', 30.0, 10.0, 20.0, 3, '冰梅秘酱蒸鲶鱼', '1', 88, 17, NULL, '2009-09-30 09:32:22', '1', '冰梅秘酱蒸鲶鱼', NULL),
	(25, 13, '0014', '煎封秋刀鱼', '20090912171908.jpg', 5.0, 1.0, 4.0, 4, '煎封秋刀鱼', '1', 13, 7, NULL, NULL, '2', '煎封秋刀鱼', NULL),
	(26, 13, '0021', '金牌好味骨', '20090912172231.jpg', 6.0, 2.0, 4.0, 1, '金牌好味骨', '1', 74, 36, NULL, '2009-10-17 16:43:23', '1', '金牌好味骨', NULL),
	(27, 14, '0022', '啤酒鸡翅', '20090912172315.jpg', 5.0, 2.0, 3.0, 4, '啤酒鸡翅', '1', 94, 7, NULL, '2009-09-30 09:32:30', '2', '啤酒鸡翅', NULL),
	(28, 14, '0023', '茄汁免治猪扒', '20090912172407.jpg', 20.0, 5.0, 15.0, 5, '茄汁免治猪扒', '1', 89, 14, NULL, '2009-09-30 09:32:34', '1', '茄汁免治猪扒', NULL),
	(29, 14, '0024', '三鲜蒸冬瓜', '20090912172454.jpg', 4.0, 1.0, 3.0, 7, '三鲜蒸冬瓜', '1', 86, 15, NULL, '2009-09-30 09:32:39', '1', '三鲜蒸冬瓜', NULL),
	(30, 15, '0031', '黑木耳红枣汤', '20090912172854.jpg', 10.0, 2.0, 8.0, 7, '黑木耳红枣汤', '1', 84, 17, NULL, '2009-09-30 09:32:44', '2', '黑木耳红枣汤', NULL),
	(31, 15, '0032', '葫芦海鲜汤', '20090912172926.jpg', 8.0, 2.0, 6.0, 8, '葫芦海鲜汤', '1', 80, 23, NULL, '2009-09-30 09:32:54', '1', '葫芦海鲜汤', NULL),
	(32, 15, '0033', '老鸭冬笋汤', '20090912173032.jpg', 10.0, 5.0, 5.0, 9, '老鸭冬笋汤', '1', 77, 27, NULL, '2009-09-30 09:32:58', '2', '', NULL),
	(33, 15, '0034', '莲藕黄豆排骨汤', '20090912173144.jpg', 10.0, 2.0, 8.0, 9, '', '1', 100, NULL, NULL, '2009-09-30 09:33:00', '2', '', NULL),
	(34, 15, '0035', '芋艿白果老鸭煲', '20090912173217.jpg', 9.0, 2.0, 7.0, 8, '', '1', 99, 1, NULL, '2009-09-30 09:32:51', '2', '', NULL),
	(35, 15, '0036', '猪蹄花生煲', '20090912173301.jpg', 20.0, 5.0, 15.0, 7, '', '1', 99, 1, NULL, '2009-09-30 09:32:43', '2', '', NULL),
	(36, 16, '0041', '大寒糯米饭', '20090912173902.jpg', 10.0, 2.0, 8.0, 1, '', '1', 100, NULL, NULL, '2009-09-30 09:33:03', '2', '', NULL),
	(37, 16, '0042', '荷香糯米鸡', '20090912173928.jpg', 15.0, 5.0, 10.0, 1, '', '1', 99, 1, NULL, '2009-09-30 09:33:05', '2', '', NULL),
	(38, 16, '0043', '烤鸭腿盖饭', '20090912173956.jpg', 20.0, 5.0, 15.0, 2, '', '1', 99, 1, NULL, '2009-09-30 09:33:13', '2', '', NULL),
	(39, 14, '0044', '腊肉豌豆饭', '20090912174024.jpg', 15.0, 2.0, 13.0, 2, '', '1', 100, NULL, NULL, '2009-10-17 16:43:48', '2', '', NULL),
	(40, 16, '0045', '蜜汁鸡腿饭', '20090912174044.jpg', 10.0, 5.0, 5.0, 5, '', '1', 100, NULL, NULL, '2009-09-30 09:33:24', '2', '', NULL),
	(41, 16, '0046', '洋葱牛肉饭', '20090912174107.jpg', 20.0, 15.0, 5.0, 5, '', '1', 100, NULL, NULL, '2009-09-30 09:33:17', '2', '', NULL),
	(42, 16, '0047', '紫薯红枣饭', '20090912174128.jpg', 5.0, 2.0, 3.0, 2, '', '1', 100, NULL, NULL, '2009-09-30 09:33:11', '2', '', NULL),
	(43, 17, '0051', '春饼', '20090912175252.jpg', 1.0, 0.2, 0.8, 1, '', '1', 93, 7, NULL, NULL, '1', '', NULL),
	(44, 17, '0052', '牛肉汤河粉', '20090912175351.jpg', 5.0, 2.0, 3.0, 2, '', '1', 100, NULL, NULL, NULL, '2', '', NULL),
	(45, 17, '0053', '牛肉丸汤粉丝', '20090912175433.jpg', 5.0, 1.0, 4.0, 1, '', '1', 100, NULL, NULL, '2009-09-30 09:33:26', '2', '', NULL),
	(46, 17, '0054', '潮州大鱼丸', '20090912175514.jpg', 10.0, 2.0, 8.0, 1, '', '1', 99, 1, NULL, '2009-09-30 09:33:28', '2', '', NULL),
	(47, 17, '0055', '茶香海参', '20090912175537.jpg', 20.0, 5.0, 15.0, 1, '', '1', 100, NULL, NULL, '2009-09-30 09:33:30', '2', '', NULL);
/*!40000 ALTER TABLE `submenu` ENABLE KEYS */;

-- 导出  表 db_order.users 结构
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `ID` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `LOGIN_NAME` varchar(20) NOT NULL DEFAULT '' COMMENT '登录名',
  `PASSWORD` varchar(60) DEFAULT NULL COMMENT '密码',
  `NAME` varchar(20) DEFAULT NULL COMMENT '真实姓名',
  `EMAIL` varchar(50) DEFAULT NULL COMMENT '电邮',
  `LEVEL` char(1) DEFAULT NULL COMMENT '用户级别',
  `SEX` char(1) DEFAULT NULL COMMENT '性别',
  `PHONE` varchar(30) DEFAULT NULL COMMENT '联系电话',
  `LOGINCOUNT` int(7) DEFAULT NULL COMMENT '登录次数',
  `LASTTIME` datetime DEFAULT NULL COMMENT '上次登录时间',
  `FINALLYTIME` datetime DEFAULT NULL COMMENT '最后一次登录时间',
  `EDITOR` int(10) DEFAULT NULL COMMENT '编辑人',
  `EDITTIME` datetime DEFAULT NULL COMMENT '编辑时间',
  `REMARK` varchar(255) DEFAULT NULL COMMENT '备注',
  `ENABLED` char(1) DEFAULT NULL COMMENT '是否启用',
  `ACCOUNT_NON_EXPIRED` char(1) DEFAULT NULL COMMENT '帐号是否过期',
  `ACCOUNT_NON_LOCKED` char(1) DEFAULT NULL COMMENT '帐号是否锁定',
  `CREDENTIALS_NON_EXPIRED` char(1) DEFAULT NULL COMMENT '证件号是否过期',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `LOGIN_NAME` (`LOGIN_NAME`),
  KEY `FK_USERS_EDITOR` (`EDITOR`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- 正在导出表  db_order.users 的数据：~3 rows (大约)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`ID`, `LOGIN_NAME`, `PASSWORD`, `NAME`, `EMAIL`, `LEVEL`, `SEX`, `PHONE`, `LOGINCOUNT`, `LASTTIME`, `FINALLYTIME`, `EDITOR`, `EDITTIME`, `REMARK`, `ENABLED`, `ACCOUNT_NON_EXPIRED`, `ACCOUNT_NON_LOCKED`, `CREDENTIALS_NON_EXPIRED`) VALUES
	(1, 'tienting', 'c46c1e6d98c969101fa725ec7984ab84', 'admin', '', NULL, NULL, NULL, 2, '2009-10-17 16:18:48', '2009-10-17 16:42:49', NULL, NULL, NULL, '1', '1', '1', '1'),
	(7, 'admin', 'b594510740d2ac4261c1b2fe87850d08', 'admin', '', NULL, NULL, NULL, 3, '2009-10-17 16:32:40', '2009-10-17 16:33:00', NULL, NULL, NULL, '1', '1', '1', '1'),
	(9, 'wei', 'bcd8652394e5e14d5b452ee492030ae1', 'hjw', 'hjw@tienting.com', NULL, NULL, NULL, 0, '2009-10-14 17:47:27', '2009-10-14 21:50:06', NULL, NULL, NULL, '1', '1', '1', '1');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- 导出  表 db_order.users_roles 结构
DROP TABLE IF EXISTS `users_roles`;
CREATE TABLE IF NOT EXISTS `users_roles` (
  `USER_ID` int(10) NOT NULL DEFAULT '0' COMMENT '用户',
  `ROLE_ID` int(10) NOT NULL DEFAULT '0' COMMENT '角色',
  KEY `FK_USERS_ROLES_ROLES` (`ROLE_ID`),
  KEY `FK_USERS_ROLES_USERS` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_order.users_roles 的数据：~3 rows (大约)
DELETE FROM `users_roles`;
/*!40000 ALTER TABLE `users_roles` DISABLE KEYS */;
INSERT INTO `users_roles` (`USER_ID`, `ROLE_ID`) VALUES
	(1, 1),
	(7, 7),
	(9, 7);
/*!40000 ALTER TABLE `users_roles` ENABLE KEYS */;


-- 导出 db_pfms 的数据库结构
DROP DATABASE IF EXISTS `db_pfms`;
CREATE DATABASE IF NOT EXISTS `db_pfms` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_pfms`;

-- 导出  表 db_pfms.payin 结构
DROP TABLE IF EXISTS `payin`;
CREATE TABLE IF NOT EXISTS `payin` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `payInName` varchar(12) DEFAULT NULL,
  `payInMoney` double(7,2) DEFAULT NULL,
  `payInDate` date DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_pfms.payin 的数据：~0 rows (大约)
DELETE FROM `payin`;
/*!40000 ALTER TABLE `payin` DISABLE KEYS */;
/*!40000 ALTER TABLE `payin` ENABLE KEYS */;

-- 导出  表 db_pfms.payout 结构
DROP TABLE IF EXISTS `payout`;
CREATE TABLE IF NOT EXISTS `payout` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `payOutName` varchar(12) DEFAULT NULL,
  `payOutMoney` double(7,2) DEFAULT NULL,
  `payOutDate` date DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `userId` (`userId`),
  CONSTRAINT `payout_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=gb2312;

-- 正在导出表  db_pfms.payout 的数据：~22 rows (大约)
DELETE FROM `payout`;
/*!40000 ALTER TABLE `payout` DISABLE KEYS */;
INSERT INTO `payout` (`Id`, `payOutName`, `payOutMoney`, `payOutDate`, `userId`) VALUES
	(1, '吃早餐12', 2.60, '2009-06-10', 52),
	(3, '购物', 208.30, '2009-06-09', 50),
	(4, '吃晚饭', 12.00, '2009-08-27', 50),
	(16, '吃中饭', 34.00, '2009-01-10', 50),
	(17, '吃中饭', 25.00, '2009-06-10', 50),
	(18, '吃中饭', 23.00, '2009-06-10', 50),
	(19, '吃中饭', 34.00, '2009-06-10', 50),
	(20, '吃中饭', 23.00, '2009-06-11', 50),
	(21, '吃中饭', 25.00, '2009-06-10', 50),
	(22, '吃中饭', 23.00, '2009-06-10', 50),
	(23, '吃中饭', 23.00, '2009-06-12', 50),
	(24, '吃盒饭', 14.00, '2009-06-30', 50),
	(25, '吃盒饭', 12.00, '2009-06-12', 50),
	(26, '吃盒饭', 12.00, '2009-06-12', 50),
	(27, '吃盒饭', 12.00, '2009-06-12', 50),
	(28, '吃盒饭', 12.00, '2009-06-12', 50),
	(29, '吃中饭', 23.00, '2009-06-10', 52),
	(31, '吃中饭', 23.00, '2009-06-10', 52),
	(32, '吃晚饭', 23.00, '2009-06-10', 52),
	(33, '吃晚饭', 23.00, '2009-06-10', 52),
	(34, '吃晚饭', 23.00, '2009-06-10', 52),
	(35, '办理公交卡', 30.00, '2009-10-30', 52);
/*!40000 ALTER TABLE `payout` ENABLE KEYS */;

-- 导出  表 db_pfms.user 结构
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `quanxian` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=gb2312;

-- 正在导出表  db_pfms.user 的数据：~3 rows (大约)
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`Id`, `username`, `password`, `quanxian`) VALUES
	(50, 'xiaolu', '123', 0),
	(52, 'admin', 'admin', 1),
	(53, 'james', '12345', NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;


-- 导出 db_quote 的数据库结构
DROP DATABASE IF EXISTS `db_quote`;
CREATE DATABASE IF NOT EXISTS `db_quote` /*!40100 DEFAULT CHARACTER SET gb2312 */;
USE `db_quote`;

-- 导出  表 db_quote.tb_customer 结构
DROP TABLE IF EXISTS `tb_customer`;
CREATE TABLE IF NOT EXISTS `tb_customer` (
  `customerNO` varchar(20) NOT NULL DEFAULT '',
  `address` varchar(30) DEFAULT '(NULL)',
  `customerName` varchar(15) DEFAULT '(NULL)',
  `otherInfo` varchar(30) DEFAULT '(NULL)',
  `phone` varchar(15) DEFAULT '(NULL)',
  `relationman` varchar(15) DEFAULT '(NULL)',
  PRIMARY KEY (`customerNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_quote.tb_customer 的数据：~6 rows (大约)
DELETE FROM `tb_customer`;
/*!40000 ALTER TABLE `tb_customer` DISABLE KEYS */;
INSERT INTO `tb_customer` (`customerNO`, `address`, `customerName`, `otherInfo`, `phone`, `relationman`) VALUES
	('0201305', '北京市朝阳区XXX', '周氏国际', '备注1', '123456789', '周先生'),
	('0201306', '北京市朝阳区XXX', '张氏国际', '备注', '123456789', '张先生'),
	('0201307', '北京市朝阳区XXX', '李氏国际', '备注', '123456789', '李先生'),
	('0201308', '北京市朝阳区XXX', '刘氏国际', '备注', '123456789', '刘先生'),
	('0201309', '北京市朝阳区XXX', '陈氏国际', '备注', '123456789', '陈先生'),
	('0201310', '北京市朝阳区XXX', '唐氏国际', '备注信息', '123456789', '唐先生');
/*!40000 ALTER TABLE `tb_customer` ENABLE KEYS */;

-- 导出  表 db_quote.tb_order 结构
DROP TABLE IF EXISTS `tb_order`;
CREATE TABLE IF NOT EXISTS `tb_order` (
  `orderNO` varchar(10) NOT NULL DEFAULT '',
  `orderTime` datetime DEFAULT NULL,
  `otherInfo` varchar(50) DEFAULT '(NULL)',
  `quantity` varchar(10) DEFAULT '(NULL)',
  `customerNO` varchar(20) DEFAULT '(NULL)',
  `productNO` varchar(15) DEFAULT '(NULL)',
  PRIMARY KEY (`orderNO`),
  KEY `FKFA98EE3DD96DD882` (`customerNO`),
  KEY `FKFA98EE3D652AF8BA` (`productNO`),
  CONSTRAINT `FKFA98EE3D652AF8BA` FOREIGN KEY (`productNO`) REFERENCES `tb_product` (`productNO`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FKFA98EE3DD96DD882` FOREIGN KEY (`customerNO`) REFERENCES `tb_customer` (`customerNO`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_quote.tb_order 的数据：~4 rows (大约)
DELETE FROM `tb_order`;
/*!40000 ALTER TABLE `tb_order` DISABLE KEYS */;
INSERT INTO `tb_order` (`orderNO`, `orderTime`, `otherInfo`, `quantity`, `customerNO`, `productNO`) VALUES
	('1010121', '2009-11-08 00:00:00', '6月10号之前必须发货', '100', '0201305', '0104578'),
	('1010122', '2009-11-08 00:00:00', '6月10号之前必须发货', '500', '0201307', '0104579'),
	('1010123', '2009-11-08 00:00:00', '6月13号之前必须发货', '500', '0201310', '0104578'),
	('1010124', '2009-11-08 00:00:00', '6月14号之前必须发货', '223', '0201308', '0104588');
/*!40000 ALTER TABLE `tb_order` ENABLE KEYS */;

-- 导出  表 db_quote.tb_product 结构
DROP TABLE IF EXISTS `tb_product`;
CREATE TABLE IF NOT EXISTS `tb_product` (
  `productNO` varchar(15) NOT NULL DEFAULT '',
  `otherInfo` varchar(50) DEFAULT '(NULL)',
  `price` decimal(10,2) DEFAULT '0.00',
  `producingArea` varchar(20) DEFAULT '(NULL)',
  `productName` varchar(20) DEFAULT '(NULL)',
  `productOwner` varchar(20) DEFAULT '(NULL)',
  `quantity` int(11) DEFAULT '0',
  `unit` varchar(20) DEFAULT '(NULL)',
  `producttypeNO` varchar(15) DEFAULT '(NULL)',
  PRIMARY KEY (`productNO`),
  KEY `FKED97341E7C52804E` (`producttypeNO`),
  CONSTRAINT `FKED97341E7C52804E` FOREIGN KEY (`producttypeNO`) REFERENCES `tb_producttype` (`producttypeNO`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_quote.tb_product 的数据：~4 rows (大约)
DELETE FROM `tb_product`;
/*!40000 ALTER TABLE `tb_product` DISABLE KEYS */;
INSERT INTO `tb_product` (`productNO`, `otherInfo`, `price`, `producingArea`, `productName`, `productOwner`, `quantity`, `unit`, `producttypeNO`) VALUES
	('0104578', '备注', 2999.00, '中国大陆', '飞毛腿踏步机', '飞毛腿公司', 100, '台', '15487'),
	('0104579', '备注', 1888.00, '美国', '宝贝踏步机', '宝贝集团', 50, '台', '15487'),
	('0104587', '备注', 2500.00, '中国大陆', '桥大跑步机', '桥大科技', 150, '台', '17894'),
	('0104588', '备注', 5000.00, '美国', '汇祥跑步机', '汇祥科技', 20, '台', '17894');
/*!40000 ALTER TABLE `tb_product` ENABLE KEYS */;

-- 导出  表 db_quote.tb_producttype 结构
DROP TABLE IF EXISTS `tb_producttype`;
CREATE TABLE IF NOT EXISTS `tb_producttype` (
  `producttypeNO` varchar(15) NOT NULL DEFAULT '',
  `producttypeName` varchar(20) DEFAULT '(NULL)',
  PRIMARY KEY (`producttypeNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_quote.tb_producttype 的数据：~6 rows (大约)
DELETE FROM `tb_producttype`;
/*!40000 ALTER TABLE `tb_producttype` DISABLE KEYS */;
INSERT INTO `tb_producttype` (`producttypeNO`, `producttypeName`) VALUES
	('09', '测试'),
	('12456', '拉力器'),
	('15123', '拉力器'),
	('15474', '健身车'),
	('15487', '踏步机'),
	('17894', '跑步机');
/*!40000 ALTER TABLE `tb_producttype` ENABLE KEYS */;

-- 导出  表 db_quote.tb_quotation 结构
DROP TABLE IF EXISTS `tb_quotation`;
CREATE TABLE IF NOT EXISTS `tb_quotation` (
  `quotationNO` varchar(15) NOT NULL DEFAULT '',
  `otherInfo` varchar(50) DEFAULT '(NULL)',
  `quotationMan` varchar(15) DEFAULT '(NULL)',
  `quotationTime` datetime DEFAULT NULL,
  `customerNO` varchar(20) DEFAULT '(NULL)',
  `productNO` varchar(15) DEFAULT '',
  PRIMARY KEY (`quotationNO`),
  KEY `FKCABDECFBD96DD882` (`customerNO`),
  KEY `FKCABDECFB652AF8BA` (`productNO`),
  CONSTRAINT `FKCABDECFB652AF8BA` FOREIGN KEY (`productNO`) REFERENCES `tb_product` (`productNO`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FKCABDECFBD96DD882` FOREIGN KEY (`customerNO`) REFERENCES `tb_customer` (`customerNO`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_quote.tb_quotation 的数据：~4 rows (大约)
DELETE FROM `tb_quotation`;
/*!40000 ALTER TABLE `tb_quotation` DISABLE KEYS */;
INSERT INTO `tb_quotation` (`quotationNO`, `otherInfo`, `quotationMan`, `quotationTime`, `customerNO`, `productNO`) VALUES
	('01020304', '以后多多合作', '小张', '2009-11-08 00:00:00', '0201305', '0104578'),
	('01020305', '以后多多合作', '小李', '2009-11-08 00:00:00', '0201306', '0104579'),
	('01020306', '以后多多合作', '小孙', '2009-11-08 00:00:00', '0201310', '0104588'),
	('01020307', '以后多多合作', '杨波', '2009-11-08 00:00:00', '0201308', '0104578');
/*!40000 ALTER TABLE `tb_quotation` ENABLE KEYS */;

-- 导出  表 db_quote.tb_user 结构
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE IF NOT EXISTS `tb_user` (
  `username` varchar(18) NOT NULL DEFAULT '',
  `grade` int(11) NOT NULL DEFAULT '0',
  `password` varchar(18) DEFAULT '(NULL)',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_quote.tb_user 的数据：~4 rows (大约)
DELETE FROM `tb_user`;
/*!40000 ALTER TABLE `tb_user` DISABLE KEYS */;
INSERT INTO `tb_user` (`username`, `grade`, `password`) VALUES
	('2222', 1, '2222'),
	('3', 3, '3'),
	('admin', 3, 'admin'),
	('daa', 1, '22sa');
/*!40000 ALTER TABLE `tb_user` ENABLE KEYS */;


-- 导出 db_storage 的数据库结构
DROP DATABASE IF EXISTS `db_storage`;
CREATE DATABASE IF NOT EXISTS `db_storage` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_storage`;

-- 导出  表 db_storage.actionmaster 结构
DROP TABLE IF EXISTS `actionmaster`;
CREATE TABLE IF NOT EXISTS `actionmaster` (
  `action_id` varchar(20) NOT NULL,
  `action_desc` varchar(45) NOT NULL,
  `action_group` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_storage.actionmaster 的数据：~0 rows (大约)
DELETE FROM `actionmaster`;
/*!40000 ALTER TABLE `actionmaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `actionmaster` ENABLE KEYS */;

-- 导出  表 db_storage.classcode 结构
DROP TABLE IF EXISTS `classcode`;
CREATE TABLE IF NOT EXISTS `classcode` (
  `prod_id` varchar(10) NOT NULL,
  `prod_desc` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`prod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_storage.classcode 的数据：~4 rows (大约)
DELETE FROM `classcode`;
/*!40000 ALTER TABLE `classcode` DISABLE KEYS */;
INSERT INTO `classcode` (`prod_id`, `prod_desc`) VALUES
	('0124', '台式机'),
	('0125', '笔记本电脑'),
	('0126', '一体机'),
	('0127', 'iPAD');
/*!40000 ALTER TABLE `classcode` ENABLE KEYS */;

-- 导出  表 db_storage.currency 结构
DROP TABLE IF EXISTS `currency`;
CREATE TABLE IF NOT EXISTS `currency` (
  `cur_id` varchar(10) NOT NULL,
  `cur_desc` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cur_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_storage.currency 的数据：~13 rows (大约)
DELETE FROM `currency`;
/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
INSERT INTO `currency` (`cur_id`, `cur_desc`) VALUES
	('AUD', '澳大利亚元'),
	('CNY', '人民币元'),
	('DEM', '马克'),
	('GBP', '英镑'),
	('HKD', '港元'),
	('INR', '卢比'),
	('JPY', '日圆 '),
	('KPW', '朝鲜圆'),
	('LAK', '基普'),
	('MOP', '澳门元'),
	('MYR', '马元 '),
	('THP', '泰铢'),
	('VND', '越南盾');
/*!40000 ALTER TABLE `currency` ENABLE KEYS */;

-- 导出  表 db_storage.currencyrate 结构
DROP TABLE IF EXISTS `currencyrate`;
CREATE TABLE IF NOT EXISTS `currencyrate` (
  `cur_id` varchar(10) NOT NULL,
  `cur_id1` varchar(10) NOT NULL,
  `Mouth1` smallint(6) NOT NULL,
  `Cur_rate` double NOT NULL,
  PRIMARY KEY (`cur_id`,`cur_id1`,`Mouth1`,`Cur_rate`),
  KEY `FK3BF8CC7178BBFD9` (`cur_id`),
  KEY `FK3BF8CC719B192056` (`cur_id1`),
  CONSTRAINT `FK3BF8CC7178BBFD9` FOREIGN KEY (`cur_id`) REFERENCES `currency` (`cur_id`),
  CONSTRAINT `FK3BF8CC719B192056` FOREIGN KEY (`cur_id1`) REFERENCES `currency` (`cur_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_storage.currencyrate 的数据：~0 rows (大约)
DELETE FROM `currencyrate`;
/*!40000 ALTER TABLE `currencyrate` DISABLE KEYS */;
/*!40000 ALTER TABLE `currencyrate` ENABLE KEYS */;

-- 导出  表 db_storage.eceipt 结构
DROP TABLE IF EXISTS `eceipt`;
CREATE TABLE IF NOT EXISTS `eceipt` (
  `Key_id` int(11) NOT NULL,
  `Item_id` varchar(10) NOT NULL,
  `Loca_id` varchar(10) NOT NULL COMMENT '浠?浣?',
  `Ware_id` varchar(10) NOT NULL,
  `Reas_code` varchar(10) NOT NULL COMMENT '??ュ????????',
  `Re_type` varchar(1) NOT NULL COMMENT '??ュ??绫诲??',
  `Qty` double NOT NULL COMMENT '??ュ????伴??',
  `Bill_no` varchar(20) NOT NULL,
  `Actual_Qty` double NOT NULL,
  `AdJu_amt` double NOT NULL COMMENT '搴?瀛?璋???撮??棰?',
  `Trans_date` datetime DEFAULT NULL,
  PRIMARY KEY (`Key_id`),
  KEY `FKB1FC0F46BB2534FC` (`Loca_id`),
  KEY `FKB1FC0F46EC2CA92E` (`Item_id`),
  KEY `FKB1FC0F46BB541A13` (`Reas_code`),
  KEY `FKB1FC0F464B87AE52` (`Ware_id`),
  CONSTRAINT `FKB1FC0F464B87AE52` FOREIGN KEY (`Ware_id`) REFERENCES `warehouse` (`Ware_id`),
  CONSTRAINT `FKB1FC0F46BB2534FC` FOREIGN KEY (`Loca_id`) REFERENCES `location` (`Loca_id`),
  CONSTRAINT `FKB1FC0F46BB541A13` FOREIGN KEY (`Reas_code`) REFERENCES `stockreason` (`Rea_code`),
  CONSTRAINT `FKB1FC0F46EC2CA92E` FOREIGN KEY (`Item_id`) REFERENCES `itemgeneral` (`Item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_storage.eceipt 的数据：~0 rows (大约)
DELETE FROM `eceipt`;
/*!40000 ALTER TABLE `eceipt` DISABLE KEYS */;
/*!40000 ALTER TABLE `eceipt` ENABLE KEYS */;

-- 导出  表 db_storage.eceipt_bill 结构
DROP TABLE IF EXISTS `eceipt_bill`;
CREATE TABLE IF NOT EXISTS `eceipt_bill` (
  `bill_no` varchar(20) NOT NULL,
  `create_emp` varchar(10) NOT NULL COMMENT '??跺??浜?',
  `handle_emp` varchar(10) DEFAULT NULL COMMENT '缁????浜?',
  `bill_desc` varchar(200) DEFAULT NULL COMMENT '???瑕?',
  `createDate` datetime NOT NULL COMMENT '??跺????堕??',
  `lastHandleDate` datetime DEFAULT NULL COMMENT '??????澶??????堕??',
  `SourceCompany` varchar(45) NOT NULL COMMENT '寰???ュ??浣?',
  `cert_no` varchar(20) NOT NULL COMMENT '???绁ㄥ??',
  `status` varchar(1) NOT NULL COMMENT '??舵??',
  PRIMARY KEY (`bill_no`),
  KEY `FK41116960CE6E6A01` (`create_emp`),
  KEY `FK41116960F348C12D` (`handle_emp`),
  CONSTRAINT `FK41116960CE6E6A01` FOREIGN KEY (`create_emp`) REFERENCES `employee` (`emp_id`),
  CONSTRAINT `FK41116960F348C12D` FOREIGN KEY (`handle_emp`) REFERENCES `employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_storage.eceipt_bill 的数据：~0 rows (大约)
DELETE FROM `eceipt_bill`;
/*!40000 ALTER TABLE `eceipt_bill` DISABLE KEYS */;
/*!40000 ALTER TABLE `eceipt_bill` ENABLE KEYS */;

-- 导出  表 db_storage.employee 结构
DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `emp_id` varchar(10) NOT NULL,
  `emp_desc` varchar(45) DEFAULT NULL,
  `birth` datetime DEFAULT NULL,
  `password` varchar(45) NOT NULL,
  `folk` varchar(45) DEFAULT NULL COMMENT '姘????',
  `marri` varchar(45) DEFAULT NULL COMMENT '濠?濮?',
  `family` varchar(45) DEFAULT NULL COMMENT '瀛?濂?',
  `collage` varchar(45) DEFAULT NULL,
  `speci` varchar(45) DEFAULT NULL COMMENT '涓?涓?',
  `wage` bigint(20) NOT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_storage.employee 的数据：~1 rows (大约)
DELETE FROM `employee`;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` (`emp_id`, `emp_desc`, `birth`, `password`, `folk`, `marri`, `family`, `collage`, `speci`, `wage`) VALUES
	('1', '刘大伟', NULL, '111', NULL, NULL, NULL, NULL, NULL, 1);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;

-- 导出  表 db_storage.employeerole 结构
DROP TABLE IF EXISTS `employeerole`;
CREATE TABLE IF NOT EXISTS `employeerole` (
  `employeeRole_id` int(11) NOT NULL,
  `employee_id` varchar(10) NOT NULL,
  `role_id` varchar(10) NOT NULL,
  PRIMARY KEY (`employeeRole_id`),
  KEY `FK99096024491CBCAA` (`role_id`),
  KEY `FK99096024B348D348` (`employee_id`),
  CONSTRAINT `FK99096024491CBCAA` FOREIGN KEY (`role_id`) REFERENCES `rolemaster` (`role_id`),
  CONSTRAINT `FK99096024B348D348` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_storage.employeerole 的数据：~0 rows (大约)
DELETE FROM `employeerole`;
/*!40000 ALTER TABLE `employeerole` DISABLE KEYS */;
/*!40000 ALTER TABLE `employeerole` ENABLE KEYS */;

-- 导出  表 db_storage.inventorytag 结构
DROP TABLE IF EXISTS `inventorytag`;
CREATE TABLE IF NOT EXISTS `inventorytag` (
  `Lable` int(11) NOT NULL,
  `Warehouse` varchar(10) NOT NULL,
  `Audi_man` varchar(10) DEFAULT NULL,
  `Fr_loca` varchar(10) NOT NULL,
  `Fr_Item` varchar(10) NOT NULL,
  `Inc_zero` varchar(1) NOT NULL,
  `Inc_nega` varchar(1) NOT NULL,
  PRIMARY KEY (`Lable`),
  KEY `FK99F8D8BEB6F11AD0` (`Audi_man`),
  KEY `FK99F8D8BE82AB38B7` (`Fr_loca`),
  KEY `FK99F8D8BE49BA360D` (`Fr_Item`),
  KEY `FK99F8D8BE917576F8` (`Warehouse`),
  CONSTRAINT `FK99F8D8BE49BA360D` FOREIGN KEY (`Fr_Item`) REFERENCES `itemgeneral` (`Item_id`),
  CONSTRAINT `FK99F8D8BE82AB38B7` FOREIGN KEY (`Fr_loca`) REFERENCES `location` (`Loca_id`),
  CONSTRAINT `FK99F8D8BE917576F8` FOREIGN KEY (`Warehouse`) REFERENCES `warehouse` (`Ware_id`),
  CONSTRAINT `FK99F8D8BEB6F11AD0` FOREIGN KEY (`Audi_man`) REFERENCES `employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_storage.inventorytag 的数据：~0 rows (大约)
DELETE FROM `inventorytag`;
/*!40000 ALTER TABLE `inventorytag` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventorytag` ENABLE KEYS */;

-- 导出  表 db_storage.itemgeneral 结构
DROP TABLE IF EXISTS `itemgeneral`;
CREATE TABLE IF NOT EXISTS `itemgeneral` (
  `Item_id` varchar(10) NOT NULL,
  `Sale_Emp_id` varchar(10) DEFAULT NULL COMMENT '?????????',
  `PO_Emp_id` varchar(10) DEFAULT NULL COMMENT '???璐????',
  `Um_id` varchar(10) NOT NULL COMMENT '璁￠?????浣?',
  `Prod_code` varchar(10) NOT NULL COMMENT '???绫?',
  `Item_desc` varchar(45) DEFAULT NULL,
  `Color` varchar(20) DEFAULT NULL,
  `Tax_rate` bigint(20) NOT NULL COMMENT '0.0',
  `Sale_Pic` double DEFAULT NULL COMMENT '0.0',
  `Whol_Pic` double DEFAULT NULL COMMENT '0.0',
  `Status` varchar(1) NOT NULL,
  PRIMARY KEY (`Item_id`),
  KEY `FK782D8275B95DC52E` (`PO_Emp_id`),
  KEY `FK782D8275CC1071E6` (`Sale_Emp_id`),
  KEY `FK782D8275FBCBAB6A` (`Um_id`),
  KEY `FK782D82753F221EAC` (`Prod_code`),
  CONSTRAINT `FK782D82753F221EAC` FOREIGN KEY (`Prod_code`) REFERENCES `classcode` (`prod_id`),
  CONSTRAINT `FK782D8275B95DC52E` FOREIGN KEY (`PO_Emp_id`) REFERENCES `employee` (`emp_id`),
  CONSTRAINT `FK782D8275CC1071E6` FOREIGN KEY (`Sale_Emp_id`) REFERENCES `employee` (`emp_id`),
  CONSTRAINT `FK782D8275FBCBAB6A` FOREIGN KEY (`Um_id`) REFERENCES `ummaster` (`um_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_storage.itemgeneral 的数据：~3 rows (大约)
DELETE FROM `itemgeneral`;
/*!40000 ALTER TABLE `itemgeneral` DISABLE KEYS */;
INSERT INTO `itemgeneral` (`Item_id`, `Sale_Emp_id`, `PO_Emp_id`, `Um_id`, `Prod_code`, `Item_desc`, `Color`, `Tax_rate`, `Sale_Pic`, `Whol_Pic`, `Status`) VALUES
	('BH123', '1', '1', '0100', '0125', '联想笔记本电脑', '白色', 18, 4800, 4800000, '0'),
	('LH121', '1', '1', '0100', '0125', '惠普笔记本电脑', '黑色', 18, 3900, 3900000, '1'),
	('NB198', '1', '1', '0100', '0125', '华硕笔记本电脑', '白色', 18, 3500, 3500000, '1');
/*!40000 ALTER TABLE `itemgeneral` ENABLE KEYS */;

-- 导出  表 db_storage.itemlocation 结构
DROP TABLE IF EXISTS `itemlocation`;
CREATE TABLE IF NOT EXISTS `itemlocation` (
  `Ware_id` varchar(10) NOT NULL,
  `Item_id` varchar(10) NOT NULL,
  `Loca_id` varchar(10) NOT NULL,
  `Rank` int(11) NOT NULL,
  `Loca_qty` double NOT NULL,
  PRIMARY KEY (`Ware_id`,`Item_id`,`Loca_id`,`Rank`,`Loca_qty`),
  KEY `FK92EA57C8BB2534FC` (`Loca_id`),
  KEY `FK92EA57C84B87AE52` (`Ware_id`),
  CONSTRAINT `FK92EA57C84B87AE52` FOREIGN KEY (`Ware_id`) REFERENCES `warehouse` (`Ware_id`),
  CONSTRAINT `FK92EA57C8BB2534FC` FOREIGN KEY (`Loca_id`) REFERENCES `location` (`Loca_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_storage.itemlocation 的数据：~0 rows (大约)
DELETE FROM `itemlocation`;
/*!40000 ALTER TABLE `itemlocation` DISABLE KEYS */;
/*!40000 ALTER TABLE `itemlocation` ENABLE KEYS */;

-- 导出  表 db_storage.iusse 结构
DROP TABLE IF EXISTS `iusse`;
CREATE TABLE IF NOT EXISTS `iusse` (
  `Key_id` int(11) NOT NULL,
  `Item_id` varchar(10) NOT NULL,
  `Loca_id` varchar(10) NOT NULL,
  `Ware_id` varchar(10) NOT NULL,
  `Reas_code` varchar(10) NOT NULL,
  `Is_type` varchar(1) NOT NULL,
  `Qty` double NOT NULL COMMENT '??哄????伴??',
  `Actual_Qty` double NOT NULL,
  `AdJu_amt` double NOT NULL,
  `Trans_date` datetime DEFAULT NULL COMMENT '澶??????堕??',
  `Bill_no` varchar(20) NOT NULL,
  PRIMARY KEY (`Key_id`),
  KEY `FK5FE9159BB2534FC` (`Loca_id`),
  KEY `FK5FE9159EC2CA92E` (`Item_id`),
  KEY `FK5FE9159BB541A13` (`Reas_code`),
  KEY `FK5FE91594B87AE52` (`Ware_id`),
  CONSTRAINT `FK5FE91594B87AE52` FOREIGN KEY (`Ware_id`) REFERENCES `warehouse` (`Ware_id`),
  CONSTRAINT `FK5FE9159BB2534FC` FOREIGN KEY (`Loca_id`) REFERENCES `location` (`Loca_id`),
  CONSTRAINT `FK5FE9159BB541A13` FOREIGN KEY (`Reas_code`) REFERENCES `stockreason` (`Rea_code`),
  CONSTRAINT `FK5FE9159EC2CA92E` FOREIGN KEY (`Item_id`) REFERENCES `itemgeneral` (`Item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_storage.iusse 的数据：~0 rows (大约)
DELETE FROM `iusse`;
/*!40000 ALTER TABLE `iusse` DISABLE KEYS */;
/*!40000 ALTER TABLE `iusse` ENABLE KEYS */;

-- 导出  表 db_storage.iusse_bill 结构
DROP TABLE IF EXISTS `iusse_bill`;
CREATE TABLE IF NOT EXISTS `iusse_bill` (
  `bill_no` varchar(20) NOT NULL,
  `create_emp` varchar(10) NOT NULL COMMENT '??跺??浜?',
  `handle_emp` varchar(10) DEFAULT NULL COMMENT '缁????浜?',
  `bill_desc` varchar(200) DEFAULT NULL,
  `createDate` datetime NOT NULL,
  `lastHandleDate` datetime DEFAULT NULL,
  `DestCompany` varchar(45) NOT NULL,
  `cert_no` varchar(20) NOT NULL COMMENT '???绁ㄥ??',
  `status` varchar(1) NOT NULL,
  PRIMARY KEY (`bill_no`),
  KEY `FK14BC3B2DCE6E6A01` (`create_emp`),
  KEY `FK14BC3B2DF348C12D` (`handle_emp`),
  CONSTRAINT `FK14BC3B2DCE6E6A01` FOREIGN KEY (`create_emp`) REFERENCES `employee` (`emp_id`),
  CONSTRAINT `FK14BC3B2DF348C12D` FOREIGN KEY (`handle_emp`) REFERENCES `employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_storage.iusse_bill 的数据：~0 rows (大约)
DELETE FROM `iusse_bill`;
/*!40000 ALTER TABLE `iusse_bill` DISABLE KEYS */;
/*!40000 ALTER TABLE `iusse_bill` ENABLE KEYS */;

-- 导出  表 db_storage.location 结构
DROP TABLE IF EXISTS `location`;
CREATE TABLE IF NOT EXISTS `location` (
  `Loca_id` varchar(10) NOT NULL,
  `Loca_desc` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Loca_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_storage.location 的数据：~7 rows (大约)
DELETE FROM `location`;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` (`Loca_id`, `Loca_desc`) VALUES
	('FH0123512', '北京-西直门站-3H'),
	('FH0123513', '北京-西直门站-4H'),
	('FH0123514', '北京-东直门站-5D'),
	('FH0123515', '北京-东直门站-5H'),
	('FH0123516', '北京-上地站-1A'),
	('FH0123517', '北京-上地站-3F'),
	('FH0123518', '北京-上地站-6B');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;

-- 导出  表 db_storage.physicsdata 结构
DROP TABLE IF EXISTS `physicsdata`;
CREATE TABLE IF NOT EXISTS `physicsdata` (
  `Key_id` int(11) NOT NULL,
  `Item_id` varchar(10) NOT NULL,
  `Loca_id` varchar(10) NOT NULL,
  `Ware_id` varchar(10) NOT NULL,
  `Statue` varchar(1) NOT NULL,
  `Cutoff` double NOT NULL COMMENT '?????虫?伴??',
  `Act_qty` double NOT NULL COMMENT '瀹??????伴??',
  PRIMARY KEY (`Key_id`),
  KEY `FK82455A71BB2534FC` (`Loca_id`),
  KEY `FK82455A71EC2CA92E` (`Item_id`),
  KEY `FK82455A714B87AE52` (`Ware_id`),
  CONSTRAINT `FK82455A714B87AE52` FOREIGN KEY (`Ware_id`) REFERENCES `warehouse` (`Ware_id`),
  CONSTRAINT `FK82455A71BB2534FC` FOREIGN KEY (`Loca_id`) REFERENCES `location` (`Loca_id`),
  CONSTRAINT `FK82455A71EC2CA92E` FOREIGN KEY (`Item_id`) REFERENCES `itemgeneral` (`Item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_storage.physicsdata 的数据：~0 rows (大约)
DELETE FROM `physicsdata`;
/*!40000 ALTER TABLE `physicsdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `physicsdata` ENABLE KEYS */;

-- 导出  表 db_storage.roleaction 结构
DROP TABLE IF EXISTS `roleaction`;
CREATE TABLE IF NOT EXISTS `roleaction` (
  `roleActionID` int(11) NOT NULL AUTO_INCREMENT,
  `actionID` varchar(20) NOT NULL,
  `roleID` varchar(10) NOT NULL,
  PRIMARY KEY (`roleActionID`),
  KEY `FK6F644E2CE830AF37` (`actionID`),
  KEY `FK6F644E2CBFE26F37` (`roleID`),
  CONSTRAINT `FK6F644E2CBFE26F37` FOREIGN KEY (`roleID`) REFERENCES `rolemaster` (`role_id`),
  CONSTRAINT `FK6F644E2CE830AF37` FOREIGN KEY (`actionID`) REFERENCES `actionmaster` (`action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_storage.roleaction 的数据：~0 rows (大约)
DELETE FROM `roleaction`;
/*!40000 ALTER TABLE `roleaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `roleaction` ENABLE KEYS */;

-- 导出  表 db_storage.rolemaster 结构
DROP TABLE IF EXISTS `rolemaster`;
CREATE TABLE IF NOT EXISTS `rolemaster` (
  `role_id` varchar(10) NOT NULL,
  `role_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_storage.rolemaster 的数据：~0 rows (大约)
DELETE FROM `rolemaster`;
/*!40000 ALTER TABLE `rolemaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `rolemaster` ENABLE KEYS */;

-- 导出  表 db_storage.shipaddr 结构
DROP TABLE IF EXISTS `shipaddr`;
CREATE TABLE IF NOT EXISTS `shipaddr` (
  `ship_id` varchar(10) NOT NULL,
  `ship_dec` varchar(100) DEFAULT NULL,
  `ship_city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ship_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_storage.shipaddr 的数据：~0 rows (大约)
DELETE FROM `shipaddr`;
/*!40000 ALTER TABLE `shipaddr` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipaddr` ENABLE KEYS */;

-- 导出  表 db_storage.shipvin 结构
DROP TABLE IF EXISTS `shipvin`;
CREATE TABLE IF NOT EXISTS `shipvin` (
  `Shipvia_id` varchar(10) NOT NULL,
  `Shipvia_desc` varchar(45) NOT NULL,
  PRIMARY KEY (`Shipvia_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_storage.shipvin 的数据：~4 rows (大约)
DELETE FROM `shipvin`;
/*!40000 ALTER TABLE `shipvin` DISABLE KEYS */;
INSERT INTO `shipvin` (`Shipvia_id`, `Shipvia_desc`) VALUES
	('011111', '火车车皮'),
	('0111112', '水运'),
	('0111113', '海运'),
	('0111114', '航空运');
/*!40000 ALTER TABLE `shipvin` ENABLE KEYS */;

-- 导出  表 db_storage.stockreason 结构
DROP TABLE IF EXISTS `stockreason`;
CREATE TABLE IF NOT EXISTS `stockreason` (
  `Rea_code` varchar(10) NOT NULL,
  `Rea_desc` varchar(45) NOT NULL,
  PRIMARY KEY (`Rea_code`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_storage.stockreason 的数据：~0 rows (大约)
DELETE FROM `stockreason`;
/*!40000 ALTER TABLE `stockreason` DISABLE KEYS */;
/*!40000 ALTER TABLE `stockreason` ENABLE KEYS */;

-- 导出  表 db_storage.ummaster 结构
DROP TABLE IF EXISTS `ummaster`;
CREATE TABLE IF NOT EXISTS `ummaster` (
  `um_id` varchar(10) NOT NULL,
  `um_desc` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`um_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_storage.ummaster 的数据：~8 rows (大约)
DELETE FROM `ummaster`;
/*!40000 ALTER TABLE `ummaster` DISABLE KEYS */;
INSERT INTO `ummaster` (`um_id`, `um_desc`) VALUES
	('0100', '台'),
	('0200', '毫米'),
	('0201', '厘米'),
	('0202', '分米'),
	('0203', '米'),
	('0204', '十米'),
	('0205', '百米'),
	('0206', '千米');
/*!40000 ALTER TABLE `ummaster` ENABLE KEYS */;

-- 导出  表 db_storage.vendermaster 结构
DROP TABLE IF EXISTS `vendermaster`;
CREATE TABLE IF NOT EXISTS `vendermaster` (
  `Vend_id` varchar(10) NOT NULL,
  `Vend_type` varchar(10) DEFAULT NULL,
  `Vend_Shipvia` varchar(10) DEFAULT NULL COMMENT '???璐ч??寰?',
  `Vend_desc` varchar(45) DEFAULT NULL,
  `Vend_addr` varchar(100) DEFAULT NULL,
  `Vend_city` varchar(45) DEFAULT NULL,
  `Vend_nati` varchar(45) DEFAULT NULL,
  `Vend_phone` varchar(20) DEFAULT NULL,
  `Vend_post` varchar(10) DEFAULT NULL,
  `Vend_Email` varchar(30) DEFAULT NULL,
  `TradeAmount` bigint(20) DEFAULT NULL COMMENT '浜ゆ??棰?',
  `Cont_man` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Vend_id`),
  KEY `FK7650F8F476A4FD09` (`Vend_Shipvia`),
  KEY `FK7650F8F4761C2441` (`Vend_type`),
  CONSTRAINT `FK7650F8F4761C2441` FOREIGN KEY (`Vend_type`) REFERENCES `vendtype` (`Vendtype_id`),
  CONSTRAINT `FK7650F8F476A4FD09` FOREIGN KEY (`Vend_Shipvia`) REFERENCES `shipvin` (`Shipvia_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_storage.vendermaster 的数据：~0 rows (大约)
DELETE FROM `vendermaster`;
/*!40000 ALTER TABLE `vendermaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendermaster` ENABLE KEYS */;

-- 导出  表 db_storage.vendtype 结构
DROP TABLE IF EXISTS `vendtype`;
CREATE TABLE IF NOT EXISTS `vendtype` (
  `Vendtype_id` varchar(10) NOT NULL,
  `Vendtype_desc` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Vendtype_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_storage.vendtype 的数据：~3 rows (大约)
DELETE FROM `vendtype`;
/*!40000 ALTER TABLE `vendtype` DISABLE KEYS */;
INSERT INTO `vendtype` (`Vendtype_id`, `Vendtype_desc`) VALUES
	('0100', '厂家直销'),
	('0101', '授权分销'),
	('0102', '独立分销');
/*!40000 ALTER TABLE `vendtype` ENABLE KEYS */;

-- 导出  表 db_storage.warehouse 结构
DROP TABLE IF EXISTS `warehouse`;
CREATE TABLE IF NOT EXISTS `warehouse` (
  `Ware_id` varchar(10) NOT NULL,
  `Ware_desc` varchar(45) DEFAULT NULL,
  `Ware_adrr` varchar(130) DEFAULT NULL,
  `Val_emp` varchar(20) DEFAULT NULL COMMENT '???系人',
  `Fax` varchar(15) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`Ware_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_storage.warehouse 的数据：~8 rows (大约)
DELETE FROM `warehouse`;
/*!40000 ALTER TABLE `warehouse` DISABLE KEYS */;
INSERT INTO `warehouse` (`Ware_id`, `Ware_desc`, `Ware_adrr`, `Val_emp`, `Fax`, `Phone`) VALUES
	('0102010', '北京-五道口', '北京市五道口', '庞先生', '789456123', '789456123'),
	('010203', '北京-西直门站', '北京市西直门', '王先生', '123456789', '123456789'),
	('010204', '北京-东直门站', '北京东直门', '刘先生', '123456', '123456'),
	('010205', '北京-上地站', '北京市上地', '张先生', '123456123', '123456123'),
	('010206', '北京-五道口', '北京市五道口', '庞先生', '789456123', '789456123'),
	('010207', '北京-回龙观', '北京市回龙观', '黄先生', '789456123', '789456123'),
	('010208', '北京-霍营', '北京市霍营', '牛先生', '789456123', '789456123'),
	('010209', '北京-西三旗', '北京市西三旗', '杨先生', '789456123', '789456123');
/*!40000 ALTER TABLE `warehouse` ENABLE KEYS */;

-- 导出  表 db_storage.warehouse_item 结构
DROP TABLE IF EXISTS `warehouse_item`;
CREATE TABLE IF NOT EXISTS `warehouse_item` (
  `Item_id` varchar(10) NOT NULL,
  `Ware_id` varchar(10) NOT NULL,
  `Safe_stock` bigint(20) NOT NULL,
  `Last_count` datetime NOT NULL,
  PRIMARY KEY (`Item_id`,`Ware_id`,`Safe_stock`,`Last_count`),
  KEY `FKFFB23B0FEC2CA92E` (`Item_id`),
  KEY `FKFFB23B0F4B87AE52` (`Ware_id`),
  CONSTRAINT `FKFFB23B0F4B87AE52` FOREIGN KEY (`Ware_id`) REFERENCES `warehouse` (`Ware_id`),
  CONSTRAINT `FKFFB23B0FEC2CA92E` FOREIGN KEY (`Item_id`) REFERENCES `itemgeneral` (`Item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_storage.warehouse_item 的数据：~0 rows (大约)
DELETE FROM `warehouse_item`;
/*!40000 ALTER TABLE `warehouse_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `warehouse_item` ENABLE KEYS */;


-- 导出 db_stuman 的数据库结构
DROP DATABASE IF EXISTS `db_stuman`;
CREATE DATABASE IF NOT EXISTS `db_stuman` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_stuman`;

-- 导出  表 db_stuman.course 结构
DROP TABLE IF EXISTS `course`;
CREATE TABLE IF NOT EXISTS `course` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_stuman.course 的数据：~5 rows (大约)
DELETE FROM `course`;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` (`id`, `name`) VALUES
	('402881e625a9b5300125a9bcf8820005', '高等代数'),
	('402881e625a9cca50125a9daf58d0001', '大学英语'),
	('402881e625a9cca50125a9db0dcc0002', '大学语文'),
	('402881e625a9cca50125a9db2a060003', '计算机基础'),
	('402881e625a9cca50125a9db59f10004', '数学分析');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;

-- 导出  表 db_stuman.courseschedule 结构
DROP TABLE IF EXISTS `courseschedule`;
CREATE TABLE IF NOT EXISTS `courseschedule` (
  `id` varchar(255) NOT NULL,
  `semester` varchar(255) DEFAULT NULL,
  `score` float DEFAULT NULL,
  `teamId` varchar(255) DEFAULT NULL,
  `courseId` varchar(255) DEFAULT NULL,
  `teacherId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK702257F2A3B93E2E` (`courseId`),
  KEY `FK702257F249E8BD72` (`teamId`),
  KEY `FK702257F2D2169C62` (`teacherId`),
  KEY `FK702257F288FF255F` (`courseId`),
  KEY `FK702257F2E130BCE3` (`teamId`),
  KEY `FK702257F2958D9B51` (`teacherId`),
  KEY `FKA80127B288FF255F` (`courseId`),
  KEY `FKA80127B2958D9B51` (`teacherId`),
  KEY `FKA80127B2E130BCE3` (`teamId`),
  CONSTRAINT `FK702257F249E8BD72` FOREIGN KEY (`teamId`) REFERENCES `team` (`id`),
  CONSTRAINT `FK702257F288FF255F` FOREIGN KEY (`courseId`) REFERENCES `course` (`id`),
  CONSTRAINT `FK702257F2958D9B51` FOREIGN KEY (`teacherId`) REFERENCES `teacher` (`id`),
  CONSTRAINT `FK702257F2A3B93E2E` FOREIGN KEY (`courseId`) REFERENCES `course` (`id`),
  CONSTRAINT `FK702257F2D2169C62` FOREIGN KEY (`teacherId`) REFERENCES `teacher` (`id`),
  CONSTRAINT `FK702257F2E130BCE3` FOREIGN KEY (`teamId`) REFERENCES `team` (`id`),
  CONSTRAINT `FKA80127B288FF255F` FOREIGN KEY (`courseId`) REFERENCES `course` (`id`),
  CONSTRAINT `FKA80127B2958D9B51` FOREIGN KEY (`teacherId`) REFERENCES `teacher` (`id`),
  CONSTRAINT `FKA80127B2E130BCE3` FOREIGN KEY (`teamId`) REFERENCES `team` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_stuman.courseschedule 的数据：~7 rows (大约)
DELETE FROM `courseschedule`;
/*!40000 ALTER TABLE `courseschedule` DISABLE KEYS */;
INSERT INTO `courseschedule` (`id`, `semester`, `score`, `teamId`, `courseId`, `teacherId`) VALUES
	('402881e625a9c1a40125a9c225170001', '1', 6, '402881e625a9b5300125a9b824170001', '402881e625a9b5300125a9bcf8820005', '402881e625a9b5300125a9bdeffd0006'),
	('402881e625a9cca50125a9dd042a0008', '1', 4, '402881e625a9b5300125a9b824170001', '402881e625a9cca50125a9daf58d0001', '402881e625a9cca50125a9dbb4180005'),
	('402881e625a9cca50125a9dd25b70009', '1', 6, '402881e625a9b5300125a9b824170001', '402881e625a9cca50125a9db0dcc0002', '402881e625a9cca50125a9dbf80f0006'),
	('402881e625a9cca50125a9dd4ea4000a', '1', 2, '402881e625a9b5300125a9b824170001', '402881e625a9cca50125a9db2a060003', '402881e625a9cca50125a9dc213b0007'),
	('402881e625a9cca50125a9ddf9a0000c', '1', 2, '402881e625a9b5300125a9b824170001', '402881e625a9cca50125a9db59f10004', '402881e625a9cca50125a9dda259000b'),
	('402881e625a9cca50125a9e4b263000d', '1', 5, '402881e625a9b5300125a9b87b490002', '402881e625a9b5300125a9bcf8820005', '402881e625a9b5300125a9bdeffd0006'),
	('402881e625a9cca50125a9e4e30b000e', '2', 6, '402881e625a9b5300125a9bc70c50003', '402881e625a9b5300125a9bcf8820005', '402881e625a9b5300125a9bdeffd0006');
/*!40000 ALTER TABLE `courseschedule` ENABLE KEYS */;

-- 导出  表 db_stuman.mark 结构
DROP TABLE IF EXISTS `mark`;
CREATE TABLE IF NOT EXISTS `mark` (
  `id` varchar(255) NOT NULL,
  `score` float DEFAULT NULL,
  `studentId` varchar(255) DEFAULT NULL,
  `courseId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK247AEDA3B93E2E` (`courseId`),
  KEY `FK247AED5D5BD6D4` (`studentId`),
  KEY `FK247AED88FF255F` (`courseId`),
  KEY `FK247AED20D2D5C3` (`studentId`),
  KEY `FK3306CD88FF255F` (`courseId`),
  KEY `FK3306CD20D2D5C3` (`studentId`),
  CONSTRAINT `FK247AED20D2D5C3` FOREIGN KEY (`studentId`) REFERENCES `student` (`id`),
  CONSTRAINT `FK247AED5D5BD6D4` FOREIGN KEY (`studentId`) REFERENCES `student` (`id`),
  CONSTRAINT `FK247AED88FF255F` FOREIGN KEY (`courseId`) REFERENCES `course` (`id`),
  CONSTRAINT `FK247AEDA3B93E2E` FOREIGN KEY (`courseId`) REFERENCES `course` (`id`),
  CONSTRAINT `FK3306CD20D2D5C3` FOREIGN KEY (`studentId`) REFERENCES `student` (`id`),
  CONSTRAINT `FK3306CD88FF255F` FOREIGN KEY (`courseId`) REFERENCES `course` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_stuman.mark 的数据：~8 rows (大约)
DELETE FROM `mark`;
/*!40000 ALTER TABLE `mark` DISABLE KEYS */;
INSERT INTO `mark` (`id`, `score`, `studentId`, `courseId`) VALUES
	('1', 99, '402881e625a9cca50125a9ed31fe000f', '402881e625a9b5300125a9bcf8820005'),
	('2', 85, '402881e625a9cca50125a9ed31fe000f', '402881e625a9cca50125a9daf58d0001'),
	('3', 65, '402881e625a9cca50125a9ed31fe000f', '402881e625a9cca50125a9db0dcc0002'),
	('4', 78, '402881e625a9cca50125a9ed31fe000f', '402881e625a9cca50125a9db2a060003'),
	('5', 68, '402881e625a9cca50125a9ed31fe000f', '402881e625a9cca50125a9db59f10004'),
	('6', 74, '402881e625a9cca50125a9edda1e0010', '402881e625a9b5300125a9bcf8820005'),
	('7', 75, '402881e625a9cca50125a9edda1e0010', '402881e625a9cca50125a9daf58d0001'),
	('8', 76, '402881e625a9cca50125a9edda1e0010', '402881e625a9cca50125a9db0dcc0002');
/*!40000 ALTER TABLE `mark` ENABLE KEYS */;

-- 导出  表 db_stuman.student 结构
DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `id` varchar(255) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `enrollDate` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `teamId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKF3371A1B49E8BD72` (`teamId`),
  KEY `FKF3371A1BE130BCE3` (`teamId`),
  KEY `FK8FFE823BE130BCE3` (`teamId`),
  CONSTRAINT `FK8FFE823BE130BCE3` FOREIGN KEY (`teamId`) REFERENCES `team` (`id`),
  CONSTRAINT `FKF3371A1B49E8BD72` FOREIGN KEY (`teamId`) REFERENCES `team` (`id`),
  CONSTRAINT `FKF3371A1BE130BCE3` FOREIGN KEY (`teamId`) REFERENCES `team` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_stuman.student 的数据：~3 rows (大约)
DELETE FROM `student`;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` (`id`, `code`, `name`, `enrollDate`, `birthday`, `sex`, `teamId`) VALUES
	('402881e625a9cca50125a9ed31fe000f', '0509302-01', '李小刚', '2005年9月', '1985年5月12日', '男', '402881e625a9b5300125a9b824170001'),
	('402881e625a9cca50125a9edda1e0010', '0509302-02', '赵霞', '2005年9月', '1986年1月2日', '女', '402881e625a9b5300125a9b824170001'),
	('402881e625a9cca50125a9ee962d0011', '0509302-03', '杨杰', '2005年9月', '1988年1月1日', '男', '402881e625a9b5300125a9b824170001');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;

-- 导出  表 db_stuman.teacher 结构
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE IF NOT EXISTS `teacher` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_stuman.teacher 的数据：~5 rows (大约)
DELETE FROM `teacher`;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` (`id`, `name`) VALUES
	('402881e625a9b5300125a9bdeffd0006', '王菲'),
	('402881e625a9cca50125a9dbb4180005', '张时红'),
	('402881e625a9cca50125a9dbf80f0006', '刘德宽'),
	('402881e625a9cca50125a9dc213b0007', '李专政'),
	('402881e625a9cca50125a9dda259000b', '赵辉');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;

-- 导出  表 db_stuman.teacher_course 结构
DROP TABLE IF EXISTS `teacher_course`;
CREATE TABLE IF NOT EXISTS `teacher_course` (
  `courseId` varchar(255) NOT NULL,
  `teacherId` varchar(255) NOT NULL,
  PRIMARY KEY (`teacherId`,`courseId`),
  KEY `FK40C04F18A3B93E2E` (`courseId`),
  KEY `FK40C04F18D2169C62` (`teacherId`),
  KEY `FK40C04F1888FF255F` (`courseId`),
  KEY `FK40C04F18958D9B51` (`teacherId`),
  CONSTRAINT `FK40C04F1888FF255F` FOREIGN KEY (`courseId`) REFERENCES `course` (`id`),
  CONSTRAINT `FK40C04F18958D9B51` FOREIGN KEY (`teacherId`) REFERENCES `teacher` (`id`),
  CONSTRAINT `FK40C04F18A3B93E2E` FOREIGN KEY (`courseId`) REFERENCES `course` (`id`),
  CONSTRAINT `FK40C04F18D2169C62` FOREIGN KEY (`teacherId`) REFERENCES `teacher` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_stuman.teacher_course 的数据：~7 rows (大约)
DELETE FROM `teacher_course`;
/*!40000 ALTER TABLE `teacher_course` DISABLE KEYS */;
INSERT INTO `teacher_course` (`courseId`, `teacherId`) VALUES
	('402881e625a9b5300125a9bcf8820005', '402881e625a9b5300125a9bdeffd0006'),
	('402881e625a9cca50125a9daf58d0001', '402881e625a9cca50125a9dbb4180005'),
	('402881e625a9cca50125a9db0dcc0002', '402881e625a9cca50125a9dbf80f0006'),
	('402881e625a9cca50125a9db2a060003', '402881e625a9b5300125a9bdeffd0006'),
	('402881e625a9cca50125a9db2a060003', '402881e625a9cca50125a9dc213b0007'),
	('402881e625a9cca50125a9db59f10004', '402881e625a9b5300125a9bdeffd0006'),
	('402881e625a9cca50125a9db59f10004', '402881e625a9cca50125a9dda259000b');
/*!40000 ALTER TABLE `teacher_course` ENABLE KEYS */;

-- 导出  表 db_stuman.team 结构
DROP TABLE IF EXISTS `team`;
CREATE TABLE IF NOT EXISTS `team` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_stuman.team 的数据：~4 rows (大约)
DELETE FROM `team`;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` (`id`, `name`) VALUES
	('402881e625a9b5300125a9b824170001', '0509302'),
	('402881e625a9b5300125a9b87b490002', '0509301'),
	('402881e625a9b5300125a9bc70c50003', '0509303'),
	('402881e625a9b5300125a9bc880b0004', '0509304');
/*!40000 ALTER TABLE `team` ENABLE KEYS */;

-- 导出  表 db_stuman.user 结构
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- 正在导出表  db_stuman.user 的数据：~2 rows (大约)
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `name`, `password`) VALUES
	('1', 'admin', 'admin'),
	('402881e625a9b5300125a9bdeffd0006', 'abc', '12345');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;


-- 导出 db_votemanage 的数据库结构
DROP DATABASE IF EXISTS `db_votemanage`;
CREATE DATABASE IF NOT EXISTS `db_votemanage` /*!40100 DEFAULT CHARACTER SET gb2312 */;
USE `db_votemanage`;

-- 导出  表 db_votemanage.tb_channel 结构
DROP TABLE IF EXISTS `tb_channel`;
CREATE TABLE IF NOT EXISTS `tb_channel` (
  `channelID` int(11) NOT NULL AUTO_INCREMENT,
  `channelName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`channelID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=gb2312 COMMENT='投票频道表';

-- 正在导出表  db_votemanage.tb_channel 的数据：~6 rows (大约)
DELETE FROM `tb_channel`;
/*!40000 ALTER TABLE `tb_channel` DISABLE KEYS */;
INSERT INTO `tb_channel` (`channelID`, `channelName`) VALUES
	(1, 'NBA'),
	(2, 'CBA'),
	(3, '足球世界杯'),
	(4, '中超'),
	(5, '英超'),
	(6, 'F1');
/*!40000 ALTER TABLE `tb_channel` ENABLE KEYS */;

-- 导出  表 db_votemanage.tb_vote 结构
DROP TABLE IF EXISTS `tb_vote`;
CREATE TABLE IF NOT EXISTS `tb_vote` (
  `voteID` int(11) NOT NULL AUTO_INCREMENT,
  `voteName` varchar(255) DEFAULT NULL,
  `channelID` int(11) DEFAULT NULL,
  PRIMARY KEY (`voteID`),
  KEY `channelID` (`channelID`),
  CONSTRAINT `tb_vote_ibfk_1` FOREIGN KEY (`channelID`) REFERENCES `tb_channel` (`channelID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=gb2312 COMMENT='投票表';

-- 正在导出表  db_votemanage.tb_vote 的数据：~1 rows (大约)
DELETE FROM `tb_vote`;
/*!40000 ALTER TABLE `tb_vote` DISABLE KEYS */;
INSERT INTO `tb_vote` (`voteID`, `voteName`, `channelID`) VALUES
	(13, '请选择你最喜欢的CBA球员', 2);
/*!40000 ALTER TABLE `tb_vote` ENABLE KEYS */;

-- 导出  表 db_votemanage.tb_voteoption 结构
DROP TABLE IF EXISTS `tb_voteoption`;
CREATE TABLE IF NOT EXISTS `tb_voteoption` (
  `voteOptionID` int(11) NOT NULL AUTO_INCREMENT,
  `voteID` int(11) DEFAULT NULL,
  `voteOptionName` varchar(255) DEFAULT NULL,
  `ticketNum` int(11) DEFAULT '0',
  PRIMARY KEY (`voteOptionID`),
  KEY `voteID` (`voteID`),
  CONSTRAINT `tb_voteoption_ibfk_1` FOREIGN KEY (`voteID`) REFERENCES `tb_vote` (`voteID`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=gb2312 COMMENT='投票选项表';

-- 正在导出表  db_votemanage.tb_voteoption 的数据：~4 rows (大约)
DELETE FROM `tb_voteoption`;
/*!40000 ALTER TABLE `tb_voteoption` DISABLE KEYS */;
INSERT INTO `tb_voteoption` (`voteOptionID`, `voteID`, `voteOptionName`, `ticketNum`) VALUES
	(51, 13, '朱芳宇', 0),
	(52, 13, '王治郅', 3),
	(53, 13, '姚明', 1),
	(54, 13, '易建联', 0);
/*!40000 ALTER TABLE `tb_voteoption` ENABLE KEYS */;


-- 导出 hibernate 的数据库结构
DROP DATABASE IF EXISTS `hibernate`;
CREATE DATABASE IF NOT EXISTS `hibernate` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `hibernate`;

-- 导出  表 hibernate.address_inf 结构
DROP TABLE IF EXISTS `address_inf`;
CREATE TABLE IF NOT EXISTS `address_inf` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `addressDetail` varchar(255) DEFAULT NULL,
  `person_last` varchar(255) NOT NULL,
  `person_first` varchar(255) NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `FKewckxoplf4c7wf4ucj4bc48ic` (`person_last`,`person_first`),
  CONSTRAINT `FKewckxoplf4c7wf4ucj4bc48ic` FOREIGN KEY (`person_last`, `person_first`) REFERENCES `person_inf` (`last`, `first`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  hibernate.address_inf 的数据：~0 rows (大约)
DELETE FROM `address_inf`;
/*!40000 ALTER TABLE `address_inf` DISABLE KEYS */;
/*!40000 ALTER TABLE `address_inf` ENABLE KEYS */;

-- 导出  表 hibernate.order_inf 结构
DROP TABLE IF EXISTS `order_inf`;
CREATE TABLE IF NOT EXISTS `order_inf` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `orderDate` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  hibernate.order_inf 的数据：~1 rows (大约)
DELETE FROM `order_inf`;
/*!40000 ALTER TABLE `order_inf` DISABLE KEYS */;
INSERT INTO `order_inf` (`order_id`, `orderDate`) VALUES
	(1, '2017-02-10 10:05:48');
/*!40000 ALTER TABLE `order_inf` ENABLE KEYS */;

-- 导出  表 hibernate.order_item_inf 结构
DROP TABLE IF EXISTS `order_item_inf`;
CREATE TABLE IF NOT EXISTS `order_item_inf` (
  `count` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`order_id`,`count`),
  KEY `FK1v82jidrk946jfhylrvnwqhpc` (`order_id`),
  CONSTRAINT `FK1v82jidrk946jfhylrvnwqhpc` FOREIGN KEY (`order_id`) REFERENCES `order_inf` (`order_id`),
  CONSTRAINT `FKoyq1501jhqoierwsv7o4tgvl6` FOREIGN KEY (`product_id`) REFERENCES `product_inf` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  hibernate.order_item_inf 的数据：~2 rows (大约)
DELETE FROM `order_item_inf`;
/*!40000 ALTER TABLE `order_item_inf` DISABLE KEYS */;
INSERT INTO `order_item_inf` (`count`, `product_id`, `order_id`) VALUES
	(50, 1, 1),
	(18, 2, 1);
/*!40000 ALTER TABLE `order_item_inf` ENABLE KEYS */;

-- 导出  表 hibernate.person_inf 结构
DROP TABLE IF EXISTS `person_inf`;
CREATE TABLE IF NOT EXISTS `person_inf` (
  `last` varchar(255) NOT NULL,
  `first` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  PRIMARY KEY (`last`,`first`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  hibernate.person_inf 的数据：~0 rows (大约)
DELETE FROM `person_inf`;
/*!40000 ALTER TABLE `person_inf` DISABLE KEYS */;
/*!40000 ALTER TABLE `person_inf` ENABLE KEYS */;

-- 导出  表 hibernate.product_inf 结构
DROP TABLE IF EXISTS `product_inf`;
CREATE TABLE IF NOT EXISTS `product_inf` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- 正在导出表  hibernate.product_inf 的数据：~2 rows (大约)
DELETE FROM `product_inf`;
/*!40000 ALTER TABLE `product_inf` DISABLE KEYS */;
INSERT INTO `product_inf` (`product_id`, `name`) VALUES
	(1, '键盘'),
	(2, '显示器');
/*!40000 ALTER TABLE `product_inf` ENABLE KEYS */;


-- 导出 hrSystem 的数据库结构
DROP DATABASE IF EXISTS `hrSystem`;
CREATE DATABASE IF NOT EXISTS `hrSystem` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `hrSystem`;

-- 导出  表 hrSystem.application_inf 结构
DROP TABLE IF EXISTS `application_inf`;
CREATE TABLE IF NOT EXISTS `application_inf` (
  `app_id` int(11) NOT NULL AUTO_INCREMENT,
  `attend_id` int(11) NOT NULL,
  `app_reason` varchar(255) DEFAULT NULL,
  `app_result` tinyint(1) DEFAULT NULL,
  `type_id` int(11) NOT NULL,
  PRIMARY KEY (`app_id`),
  KEY `type_id` (`type_id`),
  KEY `attend_id` (`attend_id`),
  CONSTRAINT `application_inf_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `attend_type_inf` (`type_id`),
  CONSTRAINT `application_inf_ibfk_2` FOREIGN KEY (`attend_id`) REFERENCES `attend_inf` (`attend_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  hrSystem.application_inf 的数据：~0 rows (大约)
DELETE FROM `application_inf`;
/*!40000 ALTER TABLE `application_inf` DISABLE KEYS */;
/*!40000 ALTER TABLE `application_inf` ENABLE KEYS */;

-- 导出  表 hrSystem.attend_inf 结构
DROP TABLE IF EXISTS `attend_inf`;
CREATE TABLE IF NOT EXISTS `attend_inf` (
  `attend_id` int(11) NOT NULL AUTO_INCREMENT,
  `duty_day` varchar(50) NOT NULL,
  `punch_time` datetime DEFAULT NULL,
  `is_come` tinyint(1) NOT NULL,
  `type_id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  PRIMARY KEY (`attend_id`),
  KEY `type_id` (`type_id`),
  KEY `emp_id` (`emp_id`),
  CONSTRAINT `attend_inf_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `attend_type_inf` (`type_id`),
  CONSTRAINT `attend_inf_ibfk_2` FOREIGN KEY (`emp_id`) REFERENCES `employee_inf` (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- 正在导出表  hrSystem.attend_inf 的数据：~16 rows (大约)
DELETE FROM `attend_inf`;
/*!40000 ALTER TABLE `attend_inf` DISABLE KEYS */;
INSERT INTO `attend_inf` (`attend_id`, `duty_day`, `punch_time`, `is_come`, `type_id`, `emp_id`) VALUES
	(1, '2017-01-06', NULL, 0, 6, 1),
	(2, '2017-01-06', NULL, 0, 6, 2),
	(3, '2017-01-06', NULL, 0, 6, 3),
	(4, '2017-01-06', NULL, 0, 6, 4),
	(5, '2017-01-06', NULL, 0, 6, 5),
	(6, '2017-01-06', NULL, 0, 6, 6),
	(7, '2017-01-06', NULL, 0, 6, 7),
	(8, '2017-02-13', NULL, 0, 6, 1),
	(9, '2017-02-13', NULL, 0, 6, 2),
	(10, '2017-02-13', NULL, 0, 6, 3),
	(11, '2017-02-13', NULL, 0, 6, 4),
	(12, '2017-02-13', NULL, 0, 6, 5),
	(13, '2017-02-13', NULL, 0, 6, 6),
	(14, '2017-02-13', NULL, 0, 6, 7),
	(15, '2017-02-13', NULL, 0, 6, 8),
	(16, '2017-02-13', NULL, 0, 6, 9);
/*!40000 ALTER TABLE `attend_inf` ENABLE KEYS */;

-- 导出  表 hrSystem.attend_type_inf 结构
DROP TABLE IF EXISTS `attend_type_inf`;
CREATE TABLE IF NOT EXISTS `attend_type_inf` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `amerce_amount` double NOT NULL,
  `type_name` varchar(50) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- 正在导出表  hrSystem.attend_type_inf 的数据：~7 rows (大约)
DELETE FROM `attend_type_inf`;
/*!40000 ALTER TABLE `attend_type_inf` DISABLE KEYS */;
INSERT INTO `attend_type_inf` (`type_id`, `amerce_amount`, `type_name`) VALUES
	(1, 0, '正常'),
	(2, -20, '事假'),
	(3, -10, '病假'),
	(4, -10, '迟到'),
	(5, -10, '早退'),
	(6, -30, '旷工'),
	(7, 10, '出差');
/*!40000 ALTER TABLE `attend_type_inf` ENABLE KEYS */;

-- 导出  表 hrSystem.checkback_inf 结构
DROP TABLE IF EXISTS `checkback_inf`;
CREATE TABLE IF NOT EXISTS `checkback_inf` (
  `check_id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) NOT NULL,
  `check_result` tinyint(1) NOT NULL,
  `check_reason` varchar(255) DEFAULT NULL,
  `mgr_id` int(11) NOT NULL,
  PRIMARY KEY (`check_id`),
  KEY `app_id` (`app_id`),
  KEY `mgr_id` (`mgr_id`),
  CONSTRAINT `checkback_inf_ibfk_1` FOREIGN KEY (`app_id`) REFERENCES `application_inf` (`app_id`),
  CONSTRAINT `checkback_inf_ibfk_2` FOREIGN KEY (`mgr_id`) REFERENCES `employee_inf` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  hrSystem.checkback_inf 的数据：~0 rows (大约)
DELETE FROM `checkback_inf`;
/*!40000 ALTER TABLE `checkback_inf` DISABLE KEYS */;
/*!40000 ALTER TABLE `checkback_inf` ENABLE KEYS */;

-- 导出  表 hrSystem.employee_inf 结构
DROP TABLE IF EXISTS `employee_inf`;
CREATE TABLE IF NOT EXISTS `employee_inf` (
  `emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_type` int(11) DEFAULT NULL,
  `emp_name` varchar(50) NOT NULL,
  `emp_pass` varchar(50) NOT NULL,
  `emp_salary` double NOT NULL,
  `mgr_id` int(11) DEFAULT NULL,
  `dept_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  UNIQUE KEY `emp_name` (`emp_name`),
  KEY `mgr_id` (`mgr_id`),
  CONSTRAINT `employee_inf_ibfk_1` FOREIGN KEY (`mgr_id`) REFERENCES `employee_inf` (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- 正在导出表  hrSystem.employee_inf 的数据：~9 rows (大约)
DELETE FROM `employee_inf`;
/*!40000 ALTER TABLE `employee_inf` DISABLE KEYS */;
INSERT INTO `employee_inf` (`emp_id`, `emp_type`, `emp_name`, `emp_pass`, `emp_salary`, `mgr_id`, `dept_name`) VALUES
	(1, 2, 'oracle', 'oracle', 5000, NULL, 'DB部'),
	(2, 2, 'weblogic', 'weblogic', 6000, NULL, 'Server部'),
	(3, 1, 'mysql', 'mysql', 3000, 1, NULL),
	(4, 1, 'hsql', 'hsql', 3200, 1, NULL),
	(5, 1, 'tomcat', 'tomcat', 2800, 2, NULL),
	(6, 1, 'jetty', 'jetty', 2560, 2, NULL),
	(7, 1, 'zhangsan', 'zhangsan', 3500, 1, NULL),
	(8, 1, 'lisi', 'lisi', 4000, 1, NULL),
	(9, 1, 'wangwu', '123456', 3600, 1, NULL);
/*!40000 ALTER TABLE `employee_inf` ENABLE KEYS */;

-- 导出  表 hrSystem.payment_inf 结构
DROP TABLE IF EXISTS `payment_inf`;
CREATE TABLE IF NOT EXISTS `payment_inf` (
  `pay_id` int(11) NOT NULL AUTO_INCREMENT,
  `pay_month` varchar(50) NOT NULL,
  `pay_amount` double NOT NULL,
  `emp_id` int(11) NOT NULL,
  PRIMARY KEY (`pay_id`),
  KEY `emp_id` (`emp_id`),
  CONSTRAINT `payment_inf_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `employee_inf` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  hrSystem.payment_inf 的数据：~0 rows (大约)
DELETE FROM `payment_inf`;
/*!40000 ALTER TABLE `payment_inf` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_inf` ENABLE KEYS */;


-- 导出 mybatis_demo 的数据库结构
DROP DATABASE IF EXISTS `mybatis_demo`;
CREATE DATABASE IF NOT EXISTS `mybatis_demo` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mybatis_demo`;

-- 导出  表 mybatis_demo.article 结构
DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- 正在导出表  mybatis_demo.article 的数据：~4 rows (大约)
DELETE FROM `article`;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` (`id`, `userid`, `title`, `content`) VALUES
	(1, 1, 'test_title', 'test_content'),
	(2, 1, 'test_title_2', 'test_content_2'),
	(3, 1, 'test_title_3', 'test_content_3'),
	(4, 1, 'test_title_4', 'test_content_4');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;

-- 导出  表 mybatis_demo.user 结构
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(50) DEFAULT NULL,
  `userAge` int(11) DEFAULT NULL,
  `userAddress` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- 正在导出表  mybatis_demo.user 的数据：~5 rows (大约)
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `userName`, `userAge`, `userAddress`) VALUES
	(1, 'summer', 100, 'shanghai,pudong'),
	(3, '飞鸟', 80, '人民广场'),
	(4, '飞鸟', 80, '人民广场'),
	(5, '飞鸟', 80, '人民广场'),
	(6, '飞鸟', 80, '人民广场');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;


-- 导出 spring 的数据库结构
DROP DATABASE IF EXISTS `spring`;
CREATE DATABASE IF NOT EXISTS `spring` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `spring`;

-- 导出  表 spring.news_inf 结构
DROP TABLE IF EXISTS `news_inf`;
CREATE TABLE IF NOT EXISTS `news_inf` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_title` varchar(255) DEFAULT NULL,
  `news_content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- 正在导出表  spring.news_inf 的数据：~5 rows (大约)
DELETE FROM `news_inf`;
/*!40000 ALTER TABLE `news_inf` DISABLE KEYS */;
INSERT INTO `news_inf` (`news_id`, `news_title`, `news_content`) VALUES
	(1, 'Java进度', 'Java学习进入JavaEE阶段'),
	(2, 'Java进度', 'Java学习进入JavaEE阶段'),
	(3, 'Java进度', 'Java学习进入JavaEE阶段'),
	(4, 'Java进度', 'Java学习进入JavaEE阶段'),
	(5, 'Java进度', 'Java学习进入JavaEE阶段');
/*!40000 ALTER TABLE `news_inf` ENABLE KEYS */;


-- 导出 ssm 的数据库结构
DROP DATABASE IF EXISTS `ssm`;
CREATE DATABASE IF NOT EXISTS `ssm` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `ssm`;

-- 导出  表 ssm.appointment 结构
DROP TABLE IF EXISTS `appointment`;
CREATE TABLE IF NOT EXISTS `appointment` (
  `book_id` bigint(20) NOT NULL COMMENT '图书ID',
  `student_id` bigint(20) NOT NULL COMMENT '学号',
  `appoint_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '预约时间',
  PRIMARY KEY (`book_id`,`student_id`),
  KEY `idx_appoint_time` (`appoint_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='预约图书表';

-- 正在导出表  ssm.appointment 的数据：~1 rows (大约)
DELETE FROM `appointment`;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` (`book_id`, `student_id`, `appoint_time`) VALUES
	(1000, 12345678910, '2017-01-16 22:30:02');
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;

-- 导出  表 ssm.book 结构
DROP TABLE IF EXISTS `book`;
CREATE TABLE IF NOT EXISTS `book` (
  `book_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '图书ID',
  `name` varchar(100) NOT NULL COMMENT '图书名称',
  `number` int(11) NOT NULL COMMENT '馆藏数量',
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1004 DEFAULT CHARSET=utf8 COMMENT='图书表';

-- 正在导出表  ssm.book 的数据：~4 rows (大约)
DELETE FROM `book`;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` (`book_id`, `name`, `number`) VALUES
	(1000, 'Java程序设计', 9),
	(1001, '数据结构', 10),
	(1002, '设计模式', 10),
	(1003, '编译原理', 10);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;


-- 导出 train 的数据库结构
DROP DATABASE IF EXISTS `train`;
CREATE DATABASE IF NOT EXISTS `train` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `train`;

-- 导出  表 train.users 结构
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- 正在导出表  train.users 的数据：~4 rows (大约)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`ID`, `name`, `pass`) VALUES
	(1, 'jack11', 'jack11'),
	(2, 'jack12', 'jack12'),
	(4, 'tom11', 'tom11'),
	(5, 'jack14', 'jack14');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- 导出  表 train.user_info 结构
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE IF NOT EXISTS `user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- 正在导出表  train.user_info 的数据：~2 rows (大约)
DELETE FROM `user_info`;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` (`id`, `username`, `password`) VALUES
	(1, 'jack98', 'jack98'),
	(2, 'lisi+++', '8888888+++');
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
