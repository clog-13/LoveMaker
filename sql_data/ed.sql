-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: lovemaker
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `art_comment`
--

DROP TABLE IF EXISTS `art_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `art_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `author` varchar(255) NOT NULL,
  `responder` varchar(255) DEFAULT NULL,
  `time` date DEFAULT NULL,
  `text` text,
  `like_count` int(11) DEFAULT '0',
  `dislike` int(11) DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK86dvp1xui0e0xjxjjqicjcg3e` (`article_id`),
  CONSTRAINT `FK86dvp1xui0e0xjxjjqicjcg3e` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `art_comment`
--

LOCK TABLES `art_comment` WRITE;
/*!40000 ALTER TABLE `art_comment` DISABLE KEYS */;
INSERT INTO `art_comment` VALUES (1,1,1,'testUser3',NULL,'2019-10-03','666',0,0),(2,1,1,'testUser1','testUser3','2019-10-03','thanks',0,0),(3,1,1,'testUser3','testUser1','2019-10-03','no thanks',0,0),(4,1,1,'testUser2','testUser1','2019-10-03','ke qi',0,0),(5,1,5,'testUser1',NULL,'2019-10-03','you jump',0,0),(6,1,6,'testUser1',NULL,'2019-10-03','i jump',0,0);
/*!40000 ALTER TABLE `art_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `time` date DEFAULT NULL,
  `text` longtext,
  `like_count` int(11) DEFAULT '0',
  `dislike` int(11) DEFAULT '0',
  `read_counts` int(11) DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,1,'vivo X30系列视频曝光，挖孔屏+潜望式超远摄','2019-10-02','read committed：事务A未提交的数据，事务B读取不到，事务A提交后的数据事务B才能读取到。这个事务级别不会导致\"dirty read\"，但会导致\"不可重复读\"。假设事务A需要半天，在这期间有很多的其它事务都在修改数据，那么就导致了一个问题，事务A在开启时读到的数据与半天后读到的数据差别很大，那么事务A需要在这半天内读到的数据都是一样的该怎么办，比如每个月底网络运营商系统出账的时候，那肯定得在出账期间读到的数据都必须一样才行。',0,0,0),(2,1,'金色一加7T曝光，这是你买不到的手机','2019-10-03','你可能会认为电话号码和邮政编码应该存储在数值字段中（数值字段只存储数值数据），但是，这样做却是不可取的。如果在数值字段中存储邮政编码01234，则保存的将是数值1234，实际上丢失了一位数字。需要遵守的基本规则是：如果数值是计算（求和、平均等）中使用的数值，则应该存储在数值数据类型列中。如果作为字符串（可能只包含数字）使用，则应该保存在串数据类型列中。',0,0,0),(3,2,'三星Galaxy S11+渲染图曝光，摄像头逼疯强迫症？','2019-10-13','下面是关于事务处理需要知道的几个术语：事务（transaction）指一组SQL语句；回退（rollback）指撤销指定SQL语句的过程，即恢复到开启事务管理之前；提交（commit）指将未存储的SQL语句结果写入数据库表；保留点（savepoint）指事务处理中设置的临时占位符（place-holder），你可以对它发布回退（与回退整个事务处理不同）。\n事务处理用来管理INSERT、UPDATE和DELETE语句。你不能回退SELECT语句。（这样做也没有什么意义。）你不能回退CREATE或DROP操作。事务处理块中可以使用这两条语句，但如果你执行回退，它们不会被撤销。',0,0,0),(4,3,'荣耀 V30 系列正式发布：3299元起，买不买','2019-10-13','这个例子把一个名为custnew的表中的数据导入customers表中。为了试验这个例子，应该首先创建和填充custnew表。custnew表的结构与附录B中描述的customers表的相同。在填充custnew时，不应该使用已经在customers中使用过的cust_id值（如果主键值重复，后续的INSERT操作将会失败）或仅省略这列值让MySQL在导入数据的过程中产生新值。',0,0,0),(5,3,'三星 Galaxy S11+ 相机以及价格曝光','2019-10-13','你可能会认为电话号码和邮政编码应该存储在数值字段中（数值字段只存储数值数据），但是，这样做却是不可取的。如果在数值字段中存储邮政编码01234，则保存的将是数值1234，实际上丢失了一位数字。需要遵守的基本规则是：如果数值是计算（求和、平均等）中使用的数值，则应该存储在数值数据类型列中。如果作为字符串（可能只包含数字）使用，则应该保存在串数据类型列中。',0,0,0),(6,4,'vivo X30 系列来了：潜望式超远摄+5G 双模','2019-10-14','你可能会认为电话号码和邮政编码应该存储在数值字段中（数值字段只存储数值数据），但是，这样做却是不可取的。如果在数值字段中存储邮政编码01234，则保存的将是数值1234，实际上丢失了一位数字。需要遵守的基本规则是：如果数值是计算（求和、平均等）中使用的数值，则应该存储在数值数据类型列中。如果作为字符串（可能只包含数字）使用，则应该保存在串数据类型列中。',0,0,0),(7,5,'小米Redmi Note 8 Pro海洋蓝','2019-10-16','你可能会认为电话号码和邮政编码应该存储在数值字段中（数值字段只存储数值数据），但是，这样做却是不可取的。如果在数值字段中存储邮政编码01234，则保存的将是数值1234，实际上丢失了一位数字。需要遵守的基本规则是：如果数值是计算（求和、平均等）中使用的数值，则应该存储在数值数据类型列中。如果作为字符串（可能只包含数字）使用，则应该保存在串数据类型列中。',0,0,0),(8,5,'表现强劲，AirPods 出货量暴增！','2019-10-17','你可能会认为电话号码和邮政编码应该存储在数值字段中（数值字段只存储数值数据），但是，这样做却是不可取的。如果在数值字段中存储邮政编码01234，则保存的将是数值1234，实际上丢失了一位数字。需要遵守的基本规则是：如果数值是计算（求和、平均等）中使用的数值，则应该存储在数值数据类型列中。如果作为字符串（可能只包含数字）使用，则应该保存在串数据类型列中。',0,0,0);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_pic`
--

DROP TABLE IF EXISTS `article_pic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `article_pic` (
  `pic_id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `pic` longblob,
  PRIMARY KEY (`pic_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_pic`
--

LOCK TABLES `article_pic` WRITE;
/*!40000 ALTER TABLE `article_pic` DISABLE KEYS */;
/*!40000 ALTER TABLE `article_pic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commodity`
--

DROP TABLE IF EXISTS `commodity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `commodity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(255) NOT NULL,
  `c_price` varchar(255) NOT NULL,
  `c_pic` longblob,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commodity`
--

LOCK TABLES `commodity` WRITE;
/*!40000 ALTER TABLE `commodity` DISABLE KEYS */;
INSERT INTO `commodity` VALUES (1,'commodity1','123',NULL),(2,'commodity2','345',NULL),(3,'commodity3','567',NULL),(4,'commodity4','987',NULL),(5,'commodity5','4123',NULL),(6,'commodity6','6134',NULL);
/*!40000 ALTER TABLE `commodity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pho_comment`
--

DROP TABLE IF EXISTS `pho_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pho_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_id` int(11) NOT NULL,
  `author` varchar(255) NOT NULL,
  `responder` varchar(255) DEFAULT NULL,
  `time` date DEFAULT NULL,
  `text` text,
  `like_count` int(11) DEFAULT '0',
  `dislike` int(11) DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pho_comment`
--

LOCK TABLES `pho_comment` WRITE;
/*!40000 ALTER TABLE `pho_comment` DISABLE KEYS */;
INSERT INTO `pho_comment` VALUES (1,1,'testUser3',NULL,'2019-10-03','666',0,0),(2,1,'testUser1','testUser3','2019-10-05','真香',0,0),(3,1,'testUser3','testUser1','2019-10-07','不懂就问',0,0),(4,1,'testUser2','testUser1','2019-10-13','ke qi',0,0),(5,1,'testUser1',NULL,'2019-10-15','you jump',0,0),(6,1,'testUser1',NULL,'2019-10-16','i jump',0,0),(7,2,'testUser3',NULL,'2019-10-03','777',0,0),(8,2,'testUser1','testUser3','2019-10-05','真香',0,0),(9,2,'testUser3','testUser1','2019-10-07','不懂就问',0,0),(10,2,'testUser2','testUser1','2019-10-13','ke qi',0,0),(11,2,'testUser1',NULL,'2019-10-15','you jump',0,0),(12,2,'testUser1',NULL,'2019-10-16','i jump',0,0),(13,3,'testUser3',NULL,'2019-10-03','666',0,0),(14,3,'testUser1','testUser3','2019-10-05','真香',0,0),(15,3,'testUser3','testUser1','2019-10-07','不懂就问',0,0),(16,3,'testUser2','testUser1','2019-10-13','ke qi',0,0),(17,3,'testUser1',NULL,'2019-10-15','you jump',0,0),(18,3,'testUser1',NULL,'2019-10-16','i jump',0,0),(19,4,'testUser3',NULL,'2019-10-03','666',0,0),(20,4,'testUser1','testUser3','2019-10-05','真香',0,0),(21,4,'testUser3','testUser1','2019-10-07','不懂就问',0,0),(22,4,'testUser2','testUser1','2019-10-13','ke qi',0,0),(23,4,'testUser1',NULL,'2019-10-15','you jump',0,0),(24,4,'testUser1',NULL,'2019-10-16','i jump',0,0);
/*!40000 ALTER TABLE `pho_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone`
--

DROP TABLE IF EXISTS `phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `phone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `head_pic` longblob,
  `name` varchar(32) DEFAULT '锤子',
  `cpu` varchar(32) DEFAULT '暂无信息',
  `ram` varchar(32) DEFAULT '暂无信息',
  `memory` varchar(32) DEFAULT '暂无信息' COMMENT '存储空间',
  `camera` varchar(32) DEFAULT '暂无信息',
  `battery` varchar(32) DEFAULT '暂无信息' COMMENT '电池容量',
  `screen_size` varchar(32) DEFAULT '暂无信息',
  `resolution` varchar(32) DEFAULT '暂无信息' COMMENT '分辨率',
  `prices` varchar(32) DEFAULT '暂无信息',
  `listing_date` varchar(32) DEFAULT '暂无信息' COMMENT '上市日期',
  `screen_type` varchar(32) DEFAULT '暂无信息',
  `os` varchar(32) DEFAULT '暂无信息',
  `color` varchar(32) DEFAULT '暂无信息',
  `screen_pixel` varchar(32) DEFAULT '暂无信息' COMMENT '像素密度',
  `cpu_fre` varchar(32) DEFAULT '暂无信息' COMMENT 'CPU频率',
  `core_num` varchar(32) DEFAULT '暂无信息' COMMENT '核心数',
  `gpu` varchar(32) DEFAULT '暂无信息',
  `ram_size` varchar(32) DEFAULT '暂无信息',
  `rom_size` varchar(32) DEFAULT '暂无信息',
  `charging` varchar(32) DEFAULT '暂无信息' COMMENT '充电功率',
  `four_g` varchar(32) DEFAULT '暂无信息',
  `three_g` varchar(32) DEFAULT '暂无信息',
  `fre_band` varchar(32) DEFAULT '暂无信息' COMMENT '支持频段',
  `bluetooth` varchar(32) DEFAULT '暂无信息',
  `port` varchar(32) DEFAULT '暂无信息' COMMENT '机身接口',
  `post_camera` varchar(32) DEFAULT '暂无信息',
  `front_camera` varchar(32) DEFAULT '暂无信息',
  `sensor_type` varchar(32) DEFAULT '暂无信息' COMMENT '传感器类型',
  `sensor_model` varchar(32) DEFAULT '暂无信息' COMMENT '传感器型号',
  `size` varchar(32) DEFAULT '暂无信息',
  `weight` varchar(32) DEFAULT '暂无信息',
  `texture` varchar(32) DEFAULT '暂无信息' COMMENT '机身材质',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone`
--

LOCK TABLES `phone` WRITE;
/*!40000 ALTER TABLE `phone` DISABLE KEYS */;
INSERT INTO `phone` VALUES (1,_binary '�\��\�\0JFIF\0\0`\0`\0\0�\�\0C\0		\n\r\Z\Z $.\' \",#(7),01444\'9=82<.342�\�\0C			\r\r2!!22222222222222222222222222222222222222222222222222��\0\0�\0\�\"\0�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0F\0	\0\0\0\0!1AQ\"a���#q���$23BRbr\�es��\�CSc�\�4�\�\�\��\�\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0+\0\0\0\0\0\0\0\0!1AQ\"2a#R��Bq\�3�\�\0\0\0?\0\�⢘�L\�\rX�A�dQ��%��N)�&\\t��C`\�?]�\��\��\�VlИsV��5re2@\n�\n�&|*\�8Bi\�amr���\�X(Z��*erZ���W�H\�W9вW\�4\�\�\Z���Ԟ�E�\���w�ʎ�7��5�\�m\0\�U\�昡\"��Dq�(\�$z\�լQ$ySd�dT\�\n��h��52��JZ�0zR8\�A�ml\�ZH�z��I3;��Q�\�F�\�H��\�+QiI��6g��\��.i��\�hMpH\�)\�[)uTA��屓J�䱥W(�\�mOf5)\�T	�,�\�\��`\�n\"�}�\�\'�۶Xm.p_D\��?k$]\�r�\�ݔ[Cmg̳�nY��zx\�+cN\�\�\�k	U�k\�qq��\�6�\�\�\�\�)>�7m\�y�_J\��#�Cw�\�wR1\�\�v�wt��\��\�#Ě�\��\�\�mSjmvV:�\�矮���\01\�GX�\�\�f�P�\�4\�#R2^�*N/k�{��\\Q&�QI\�?Ug��n�	n�68\�>\\�\�\�M&\�݋�hdTٍ@\�Ӣ�ȑꡲ-�)\'�2�d�\�\�A\�*m\r��I\�L�����\�z��)��\�\�09�+P\�A\�\���&x�\�	�\��yS(1]t��\��\�j%��Q\�L�*g5Uү�1B*	�\�\�e�\�f��FkI\����\�\�\�86R�M)U��b\�V�5\")�^`\�$h2�M��\0\rV\�\">�\�R\�\��\�{\�\�?�\r�\0WR\�\�Iu\�;+$c,�\�Ǖw���\�\�\�\�8\�\�m\�\\⩒3Av̯\���ϷB��G��ГrQ}�\�M5��ݎ���]g�}��\�QKe��7�%�0\�`�	\�=Mv��\��itd\�\�b�(�G�,�nʶJ\�o\� E\�+!r-_\'9\�}U\�\�\"\��#H\�Nؐ*�t`��T\�d\��8��))8�R��\�\�\rs���h..��-&��ln\�P\�?ek�m�nv����\�W�\��l��\"-\n1�\�\�*Λ�^�\�c\�!\�\�),�\�\'��B�zi��QA��\�H\�>b��2b0F: �&\�2lWb�Ǟ�3�-B#��2�%r���O�n8�O4\�L�Q]�E	��vI�\�t�������\�Lf�����R�\�\�1�V6sS\�@P�H\�j=\�>|\�D\�\�S0:E#iU\�\�Ty�\��\�\�Q+S&�\���\�T\�g\�_\�*\�Q\�N�\0+�����Kތ\'o�o��F���s\�w�L�e�\�$č\�\�\�Iqb\�\��~\Z\�\�\�\�#�\�/�y�`��\�w_����8\�H\�Q�p\�\�G#x\�\�z3\�M<�|*�M]hCK#�7�\�}\�s:�\�\�\��\�s\�Jٽ�\�<\�\�\ro|�\�ns��Ս��\�0\�\�uPe5��/�/�}\�c�a��cHI\'�~5͆\�c\�;u�\�\�\��r�Ku�\�\�\�\�*Ej˙��Q�\�>\�\0��8\�g(�y%\n��\�\�\�r\�\\u)w\�\�\�\�5/�\�\�4Cf\��c\�\�3\�\�2)\�+.\�>:���\�w\�f2�b<�\�EH\�o\����\�1�]1;Dg\�Uh�f���4\�_\�9�mn$n\� {.\��L��\�>uZ8��w\�0/\�n8޴Yщ��Mʡp�\�y;1,&��PBz`�\�kV\�\�k[��U\�L�,q�\�J���\�U��saP0�X\�3�$���\�\�2�ӥ�2\�b\n<�?U:铴K(\��Ȣ��\�%ǆg�\��1����4:i\�\neJF�\�\�\�\�|h��j\�\��J\�<�2\��\�(ݳ�q�uWۊ޿\�[�\n\��\�i��%ڹR���\�\��1L�<n\�tVF	\�֟Ѫ1,71��U�\��򬋸���\�7\��\�Ы����\�r�*/viU�E~��\"�,S\\��b5��F��[޵��\�\�\��[\�-	�Ym\�\"r\�92><9�v\�b˯Y\�YŁy3\�*]\�\�H�r�\�K«\�GS�_E�f���Q�\�Y�\�k��y\�F��\�$;��zmǾ:�r��͚M�߷\�铟\�\�V\�Z�\�\�1;*\�\�?X�\0Z�k6T\�}(\��\�\�ҿֿ\Z\�\�\�;\��j\�~k�k\�\"�(\�h\�_p�\�\�\�\�)�ѶӬFC�\�L��ʥi���5k\�\�\�W�@\�Z9�pee��;C{MA`gbl@\�B��G��08��#8\��d���<�ͻ\�|\�2[4�\�\�Տ��xc\�8\�Z���M�\�\�x4s�ٞ6�#��7ɛ�\�21\�\�V#��\�R8\�Ӭ\�\�\�y��\�0�(\�GBG\�W\�\�\�vA��^i�\�\�V�c+֛4[(o\�om7w\�J���$�2<\�\�*z�9�]2�uJ�\�\�R��9F\�5=*\�s�5b\��\�\�O\�ĵ�\�d\��\�{�<��>\�E��y<�\�ż;J�[\�p�0V�y\�C��m���\�R}7Uy_n�{�\�\�MTՒ\�\�d��H\\�;d\\b�\�U\�#�Ǹ:>��+���ܻ��T\�2Fܦ}(�<�\�^+�\�\�Z���\�U\�\�\�V>ZM��\0\\Ury:\�Y���3Z?\�\��*�?\�Ǌ\�\��{\�\�PkCH_\�\�_q�������\rkh���\�5r�\�[LB?7��\�*dS¿A\�/���U.E��@�9S�D\�Kh��1��n\�\�mų\�\�\��lz�ܖ��n�<Snm��ϝ�[j];�v\�\�S1fm\�rq�h\�}T\�h䁈,��qIK+�Ѷ\�\�2&\0pŁ�=x���	\�\�e-�2&\0\�%��\'����%�$՝��f�@����Y\�\�Q̘mL�\�O��\�l\��\�Vz�\��I#\�j-\"�v�Ϙ����\�\�;�~��֜j\�e}��їmŤ\�\�8�]�\�p\�!	�\�@Nl���CUA\�p�;�-͋��\�\�ٝ�(I�xz�7�Zu\�\�OSL��j�G\�<*\�1�D\�)\�nZ�^\��\�\\�aI>4H\�ⲣ��\r�eu�\0a�\0�\\a5�=\�\�2\�q�X\�F~�+s�Wq\�\�4\�f�\\�t�h�\0s\�~8�\r{n�\'��\0�U][Q��\���\�h\�\�\�\�GX��I�\�>�Uթ[\�x\�r\Z#w�\�D|Eo\�i�\�\�=\�\\։�)\�a�x\�\�&=��\�a\�j\�S\�L\�E֧X\�{�\�\�ʋ\�Ļs܌��\�I\��\\N\�\�\�p�0\�\�\� ׼���r �����\�\�\�5a�\�\�Oὢ�uH�;�#\�B+|k=�/��\�_\�\nhЃ셗QwgHu�\�\�-�G�\��w�ۓh\�&�U\0�\�b|Y{\�X��\�B|\��(r\"�\0�:�y:)5�c6\�\�\�t�Ǵ\�\�Y5s�\�4\�^�|�����jjQ\�P�����_�z��g�6_�W1K���P&�sډ\���[Uu\�r\Z����@\�=��.e\�\�\�B����!�M.\�EU�4׶.P��\�\r;vį&׏>q\\\�\�D�����\�}Ƅ�����=\�M�z4놦�\0�:��q\��\0l$p\Z;x��\�\�C�f㭺�t\�\�\�\�le�F�H\�\�Q�\"\�$���\0Q\\5.\�\�j�:C\�)\�\'\�|�8�;e;&\�d3��\�\�+$1��SQK��\�n� \�\�:z/h���\��v\�Tu�)�X$RzEXP\�\�J�OG\�UW\�:Ƶ�\�C��\�\�ź3}�\\\�b*\�B\�����&\�T�7�\�\�͚(\�-8�^k$[}͍|�\�E\nL`�wG>ʧ1��0�sF|��\n�&\�e$\�h\�Q `=��o>O\"\�/\�IIg\�\�qN��[\�\�u@+\�\�\�\�d�Z\n1,,=y\���\0\��=f\�~��g˪ڴ�N�4~c�=\�ln�~\n��\�\�YY{@\�5�\�Gƹ�\�C��d�\��卦LF��y浌�\�I�\�ɗ�ۑ\�Zޝ��Kdu\�\��I�C�\�qB�n-%�\Z�JI�\�\��3\�s\�ƐUU\��\0`5�R\�=��<Vr=\�Cn\�\�\�;C\�\\\����:\\\�~L=��Cp\�q�\�\�R���c\�Z��\0\�r�\Z\�\�{�Ez���!,\�2�F�\�\�<#(�P��Zѝ\Z\�\�\�\�\�=�uhA\r\�0�q\�n\�W.o]\�1[c\�\���A�@�Ǟ��}\�\�\�\�ls1I\�Y}>\�/y&�/O\�!��H���>�#�FT�\�ì\�\�\�\n�FR}⮾�[��Bq\�r�V�\�\�>�foN�Q��2\�	8;�h�o\0j�o!�dʑz�ӏuR�x��\�w���G&\�qq�G\�K\�*cۊ��c��\�`\�*	��~�dy��\�n%�n��\�=݅�5\��4p���ު�Zb&^%\�=J�(m�wq��Xx�\�K�d\�Ydbr�4�HgaI�܈��#?\n�mt�\'s�/���\0�e}hn��\�\�q\����]\ZU#���̒\�E��m�\�3\�H|J��\�SF\�\�\�\"����ۊ�\�\� ��F6D�P��\�؂\�}�\r\�\�U\�d�]\�g>8�����\�->���\�\�2g�R|\�8\�U�K�\��\����qA�m�~�\�1�ƕ[J9\�<\��ci�R���\�\\QrE\�$\�mM]��B\�\�hsã@�aso\�\�\Ze��G�\�[��n�Ţ�(�J�\�/ ��\�\"�l\�!�[�\�ɬʦ��s��\�\"\�\�[\�\�s\�E�B,�G8=jI�\�;�W(\�Mn�\�>�ՙ\�U�@<�sTb\�oa9^@\��bqzܭ\�v!%\���x��h\��6\�}�\�\\�\�;\�YMV\�\�a i��\�,��L���Q��\�\�̾�\��j6\�@Ӹ\\�\�\�\�\"\�2~�\�@mL/	p�\��D�#\�\�+��\�\�K��Е\�Ʃ4e\rlg-\�L\�QA=���\�]\��$���`g;{i���\�.ʧ�K\�f�ib\�\0\�z\0�`��Eyng\�v�t,\�Mf��VoSP\�wX\�\�U}l������%��\��\�Џ\�$�F�h�\�\�\�rK(V�\�4\�Ccm%\�}ߑ�6\�Ÿ\�\� P\Z)�\�\�-S=��S��/�7`\�\��8�\�80Tq\�\�\�$�\�SE`WW�n\�j��\�8\���\��@\�eV$\���\"�8�����T�$ �*5HSa�\�F�H�\�<�u\�G\�\��]:2O^\�n�Qm4\�\�\�m1�\�?Ҵ�\�\�g\�\�1\�\���[�c�\�lʎh����rG�9�\�ۢGt݀x�j\�\�\�H4�q�XT�\0c�V�7�H�PB����\�~P^Nz[\�\0��2<;�=³f�\�Vm\�3d\�Evi~	o��>@Ħ�\��{kIG�1R5Z\�G\�\�\�찠P���C�=�\�X�W ���9\�\�c%ͳ�6�c\�j�x�b\�N��ұ�y=ڏq�\�\�W\�ě�Z�\�ƌ8*�\�\�I5\�y\�e���z�}\�\�\�\�g\�v�7\�\"�\�\'�\0}\�E�g�\�\�v�)�\�\�QJ��_��\�(�Q\�\�H=q\n�\0\��\�\r�)\�{�N�]�eں��`{�P|�\"�K�vn)�\r\��g!�`��Ȟ�#Iwg5F\�\�#<ҢK\�rA]Fw�\0\r�)QO\�\�\�ڗ^�S�ߟ/�\0hq\�-\�/)\�\�?y4�V{$�/�\��VT\�$\�D\�}ؠ\'g�q�I\��d�\�\�4�TSd\��C�\�QXp[$\��i�V\�\�uSJ�96b�\�\n\��JH\�?\�ڤ��n� �2\�\�J�M��b�\�w�\�c�$��\�\�ӋK\�\�mW\�����*7v&\�{�B\�S��#\�\�MUk�뀦W�\�\��R�v+@�\�\�E޶Z{/O�-\�\�Q�[��r\Z\�O�/�1~�R�W(�n\�\�kך�\0�H�\�>�MԖ\��\��¾\�T�\�&+l\�];X�n:\�\�\�\�*~)\�m5q)O�/V1\���\��\��Tid\�k4oc�Ƴ��\�X\�2=��E\�Ȅ\��\�\�Q\�\�7�\ZT��\�sb)m\�\�\�\�\�1=%�\�U/5e���tw8\�_�*T#�$�Pk�\�V������;8T]� \�\�\�R�V\��B\�Z�!\�M��yPx5A5�� �!��`\�\�=*u\��b�\�\�gVu �e\�\�\�\��]��(26��\0\ZT�\���e%ܨ���H\�#\�d\'�o��*Tp����]\��\�','VIVO X30','xxx','8G','256G','xxx','xxx','xxx','xxx','4396','2019-11-11','xxx','Android','xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx');
/*!40000 ALTER TABLE `phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','123123',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-29  0:18:23
