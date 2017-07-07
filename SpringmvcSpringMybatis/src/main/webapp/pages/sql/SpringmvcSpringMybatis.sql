-- --------------------------------------------------------
-- 主机:                           192.168.1.10
-- 服务器版本:                        5.7.17-1 - (Debian)
-- 服务器操作系统:                      Linux
-- HeidiSQL 版本:                  9.4.0.5148
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

-- 正在导出表  SpringmvcSpringMybatis.smi_shop_info 的数据：~0 rows (大约)
DELETE FROM `smi_shop_info`;
/*!40000 ALTER TABLE `smi_shop_info` DISABLE KEYS */;
INSERT INTO `smi_shop_info` (`id`, `shop_no`, `shop_name`, `shop_type`, `shop_password`, `note`) VALUES
	(1, '111111', 'shop-test', 'normal', '123456', 'test-data');
/*!40000 ALTER TABLE `smi_shop_info` ENABLE KEYS */;

-- 导出  表 SpringmvcSpringMybatis.student 结构
DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_id` int(11) NOT NULL,
  `stu_name` varchar(50) NOT NULL,
  `stu_sex` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='學生組件表';

-- 正在导出表  SpringmvcSpringMybatis.student 的数据：~3 rows (大约)
DELETE FROM `student`;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` (`id`, `stu_id`, `stu_name`, `stu_sex`) VALUES
	(9, 201677, 'FFF', 11),
	(10, 20170708, '王五', 1),
	(13, 20170320, '张三', 2);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
