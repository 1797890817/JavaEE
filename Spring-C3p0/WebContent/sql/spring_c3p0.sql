-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.7.15-log - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  9.4.0.5168
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- 导出 spring_c3p0 的数据库结构
DROP DATABASE IF EXISTS `spring_c3p0`;
CREATE DATABASE IF NOT EXISTS `spring_c3p0` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `spring_c3p0`;

-- 导出  表 spring_c3p0.news_inf 结构
DROP TABLE IF EXISTS `news_inf`;
CREATE TABLE IF NOT EXISTS `news_inf` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `progress` varchar(50) DEFAULT NULL,
  `content` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  spring_c3p0.news_inf 的数据：~0 rows (大约)
DELETE FROM `news_inf`;
/*!40000 ALTER TABLE `news_inf` DISABLE KEYS */;
INSERT INTO `news_inf` (`id`, `progress`, `content`) VALUES
	(1, 'Java进度', 'Java学习进入JavaEE阶段');
/*!40000 ALTER TABLE `news_inf` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
