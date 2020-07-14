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
INSERT INTO `article` VALUES (1,1,'vivo X30ç³»åˆ—è§†é¢‘æ›å…‰ï¼ŒæŒ–å­”å±+æ½œæœ›å¼è¶…è¿œæ‘„','2019-10-02','read committedï¼šäº‹åŠ¡Aæœªæäº¤çš„æ•°æ®ï¼Œäº‹åŠ¡Bè¯»å–ä¸åˆ°ï¼Œäº‹åŠ¡Aæäº¤åŽçš„æ•°æ®äº‹åŠ¡Bæ‰èƒ½è¯»å–åˆ°ã€‚è¿™ä¸ªäº‹åŠ¡çº§åˆ«ä¸ä¼šå¯¼è‡´\"dirty read\"ï¼Œä½†ä¼šå¯¼è‡´\"ä¸å¯é‡å¤è¯»\"ã€‚å‡è®¾äº‹åŠ¡Aéœ€è¦åŠå¤©ï¼Œåœ¨è¿™æœŸé—´æœ‰å¾ˆå¤šçš„å…¶å®ƒäº‹åŠ¡éƒ½åœ¨ä¿®æ”¹æ•°æ®ï¼Œé‚£ä¹ˆå°±å¯¼è‡´äº†ä¸€ä¸ªé—®é¢˜ï¼Œäº‹åŠ¡Aåœ¨å¼€å¯æ—¶è¯»åˆ°çš„æ•°æ®ä¸ŽåŠå¤©åŽè¯»åˆ°çš„æ•°æ®å·®åˆ«å¾ˆå¤§ï¼Œé‚£ä¹ˆäº‹åŠ¡Aéœ€è¦åœ¨è¿™åŠå¤©å†…è¯»åˆ°çš„æ•°æ®éƒ½æ˜¯ä¸€æ ·çš„è¯¥æ€Žä¹ˆåŠžï¼Œæ¯”å¦‚æ¯ä¸ªæœˆåº•ç½‘ç»œè¿è¥å•†ç³»ç»Ÿå‡ºè´¦çš„æ—¶å€™ï¼Œé‚£è‚¯å®šå¾—åœ¨å‡ºè´¦æœŸé—´è¯»åˆ°çš„æ•°æ®éƒ½å¿…é¡»ä¸€æ ·æ‰è¡Œã€‚',0,0,0),(2,1,'é‡‘è‰²ä¸€åŠ 7Tæ›å…‰ï¼Œè¿™æ˜¯ä½ ä¹°ä¸åˆ°çš„æ‰‹æœº','2019-10-03','ä½ å¯èƒ½ä¼šè®¤ä¸ºç”µè¯å·ç å’Œé‚®æ”¿ç¼–ç åº”è¯¥å­˜å‚¨åœ¨æ•°å€¼å­—æ®µä¸­ï¼ˆæ•°å€¼å­—æ®µåªå­˜å‚¨æ•°å€¼æ•°æ®ï¼‰ï¼Œä½†æ˜¯ï¼Œè¿™æ ·åšå´æ˜¯ä¸å¯å–çš„ã€‚å¦‚æžœåœ¨æ•°å€¼å­—æ®µä¸­å­˜å‚¨é‚®æ”¿ç¼–ç 01234ï¼Œåˆ™ä¿å­˜çš„å°†æ˜¯æ•°å€¼1234ï¼Œå®žé™…ä¸Šä¸¢å¤±äº†ä¸€ä½æ•°å­—ã€‚éœ€è¦éµå®ˆçš„åŸºæœ¬è§„åˆ™æ˜¯ï¼šå¦‚æžœæ•°å€¼æ˜¯è®¡ç®—ï¼ˆæ±‚å’Œã€å¹³å‡ç­‰ï¼‰ä¸­ä½¿ç”¨çš„æ•°å€¼ï¼Œåˆ™åº”è¯¥å­˜å‚¨åœ¨æ•°å€¼æ•°æ®ç±»åž‹åˆ—ä¸­ã€‚å¦‚æžœä½œä¸ºå­—ç¬¦ä¸²ï¼ˆå¯èƒ½åªåŒ…å«æ•°å­—ï¼‰ä½¿ç”¨ï¼Œåˆ™åº”è¯¥ä¿å­˜åœ¨ä¸²æ•°æ®ç±»åž‹åˆ—ä¸­ã€‚',0,0,0),(3,2,'ä¸‰æ˜ŸGalaxy S11+æ¸²æŸ“å›¾æ›å…‰ï¼Œæ‘„åƒå¤´é€¼ç–¯å¼ºè¿«ç—‡ï¼Ÿ','2019-10-13','ä¸‹é¢æ˜¯å…³äºŽäº‹åŠ¡å¤„ç†éœ€è¦çŸ¥é“çš„å‡ ä¸ªæœ¯è¯­ï¼šäº‹åŠ¡ï¼ˆtransactionï¼‰æŒ‡ä¸€ç»„SQLè¯­å¥ï¼›å›žé€€ï¼ˆrollbackï¼‰æŒ‡æ’¤é”€æŒ‡å®šSQLè¯­å¥çš„è¿‡ç¨‹ï¼Œå³æ¢å¤åˆ°å¼€å¯äº‹åŠ¡ç®¡ç†ä¹‹å‰ï¼›æäº¤ï¼ˆcommitï¼‰æŒ‡å°†æœªå­˜å‚¨çš„SQLè¯­å¥ç»“æžœå†™å…¥æ•°æ®åº“è¡¨ï¼›ä¿ç•™ç‚¹ï¼ˆsavepointï¼‰æŒ‡äº‹åŠ¡å¤„ç†ä¸­è®¾ç½®çš„ä¸´æ—¶å ä½ç¬¦ï¼ˆplace-holderï¼‰ï¼Œä½ å¯ä»¥å¯¹å®ƒå‘å¸ƒå›žé€€ï¼ˆä¸Žå›žé€€æ•´ä¸ªäº‹åŠ¡å¤„ç†ä¸åŒï¼‰ã€‚\näº‹åŠ¡å¤„ç†ç”¨æ¥ç®¡ç†INSERTã€UPDATEå’ŒDELETEè¯­å¥ã€‚ä½ ä¸èƒ½å›žé€€SELECTè¯­å¥ã€‚ï¼ˆè¿™æ ·åšä¹Ÿæ²¡æœ‰ä»€ä¹ˆæ„ä¹‰ã€‚ï¼‰ä½ ä¸èƒ½å›žé€€CREATEæˆ–DROPæ“ä½œã€‚äº‹åŠ¡å¤„ç†å—ä¸­å¯ä»¥ä½¿ç”¨è¿™ä¸¤æ¡è¯­å¥ï¼Œä½†å¦‚æžœä½ æ‰§è¡Œå›žé€€ï¼Œå®ƒä»¬ä¸ä¼šè¢«æ’¤é”€ã€‚',0,0,0),(4,3,'è£è€€ V30 ç³»åˆ—æ­£å¼å‘å¸ƒï¼š3299å…ƒèµ·ï¼Œä¹°ä¸ä¹°','2019-10-13','è¿™ä¸ªä¾‹å­æŠŠä¸€ä¸ªåä¸ºcustnewçš„è¡¨ä¸­çš„æ•°æ®å¯¼å…¥customersè¡¨ä¸­ã€‚ä¸ºäº†è¯•éªŒè¿™ä¸ªä¾‹å­ï¼Œåº”è¯¥é¦–å…ˆåˆ›å»ºå’Œå¡«å……custnewè¡¨ã€‚custnewè¡¨çš„ç»“æž„ä¸Žé™„å½•Bä¸­æè¿°çš„customersè¡¨çš„ç›¸åŒã€‚åœ¨å¡«å……custnewæ—¶ï¼Œä¸åº”è¯¥ä½¿ç”¨å·²ç»åœ¨customersä¸­ä½¿ç”¨è¿‡çš„cust_idå€¼ï¼ˆå¦‚æžœä¸»é”®å€¼é‡å¤ï¼ŒåŽç»­çš„INSERTæ“ä½œå°†ä¼šå¤±è´¥ï¼‰æˆ–ä»…çœç•¥è¿™åˆ—å€¼è®©MySQLåœ¨å¯¼å…¥æ•°æ®çš„è¿‡ç¨‹ä¸­äº§ç”Ÿæ–°å€¼ã€‚',0,0,0),(5,3,'ä¸‰æ˜Ÿ Galaxy S11+ ç›¸æœºä»¥åŠä»·æ ¼æ›å…‰','2019-10-13','ä½ å¯èƒ½ä¼šè®¤ä¸ºç”µè¯å·ç å’Œé‚®æ”¿ç¼–ç åº”è¯¥å­˜å‚¨åœ¨æ•°å€¼å­—æ®µä¸­ï¼ˆæ•°å€¼å­—æ®µåªå­˜å‚¨æ•°å€¼æ•°æ®ï¼‰ï¼Œä½†æ˜¯ï¼Œè¿™æ ·åšå´æ˜¯ä¸å¯å–çš„ã€‚å¦‚æžœåœ¨æ•°å€¼å­—æ®µä¸­å­˜å‚¨é‚®æ”¿ç¼–ç 01234ï¼Œåˆ™ä¿å­˜çš„å°†æ˜¯æ•°å€¼1234ï¼Œå®žé™…ä¸Šä¸¢å¤±äº†ä¸€ä½æ•°å­—ã€‚éœ€è¦éµå®ˆçš„åŸºæœ¬è§„åˆ™æ˜¯ï¼šå¦‚æžœæ•°å€¼æ˜¯è®¡ç®—ï¼ˆæ±‚å’Œã€å¹³å‡ç­‰ï¼‰ä¸­ä½¿ç”¨çš„æ•°å€¼ï¼Œåˆ™åº”è¯¥å­˜å‚¨åœ¨æ•°å€¼æ•°æ®ç±»åž‹åˆ—ä¸­ã€‚å¦‚æžœä½œä¸ºå­—ç¬¦ä¸²ï¼ˆå¯èƒ½åªåŒ…å«æ•°å­—ï¼‰ä½¿ç”¨ï¼Œåˆ™åº”è¯¥ä¿å­˜åœ¨ä¸²æ•°æ®ç±»åž‹åˆ—ä¸­ã€‚',0,0,0),(6,4,'vivo X30 ç³»åˆ—æ¥äº†ï¼šæ½œæœ›å¼è¶…è¿œæ‘„+5G åŒæ¨¡','2019-10-14','ä½ å¯èƒ½ä¼šè®¤ä¸ºç”µè¯å·ç å’Œé‚®æ”¿ç¼–ç åº”è¯¥å­˜å‚¨åœ¨æ•°å€¼å­—æ®µä¸­ï¼ˆæ•°å€¼å­—æ®µåªå­˜å‚¨æ•°å€¼æ•°æ®ï¼‰ï¼Œä½†æ˜¯ï¼Œè¿™æ ·åšå´æ˜¯ä¸å¯å–çš„ã€‚å¦‚æžœåœ¨æ•°å€¼å­—æ®µä¸­å­˜å‚¨é‚®æ”¿ç¼–ç 01234ï¼Œåˆ™ä¿å­˜çš„å°†æ˜¯æ•°å€¼1234ï¼Œå®žé™…ä¸Šä¸¢å¤±äº†ä¸€ä½æ•°å­—ã€‚éœ€è¦éµå®ˆçš„åŸºæœ¬è§„åˆ™æ˜¯ï¼šå¦‚æžœæ•°å€¼æ˜¯è®¡ç®—ï¼ˆæ±‚å’Œã€å¹³å‡ç­‰ï¼‰ä¸­ä½¿ç”¨çš„æ•°å€¼ï¼Œåˆ™åº”è¯¥å­˜å‚¨åœ¨æ•°å€¼æ•°æ®ç±»åž‹åˆ—ä¸­ã€‚å¦‚æžœä½œä¸ºå­—ç¬¦ä¸²ï¼ˆå¯èƒ½åªåŒ…å«æ•°å­—ï¼‰ä½¿ç”¨ï¼Œåˆ™åº”è¯¥ä¿å­˜åœ¨ä¸²æ•°æ®ç±»åž‹åˆ—ä¸­ã€‚',0,0,0),(7,5,'å°ç±³Redmi Note 8 Proæµ·æ´‹è“','2019-10-16','ä½ å¯èƒ½ä¼šè®¤ä¸ºç”µè¯å·ç å’Œé‚®æ”¿ç¼–ç åº”è¯¥å­˜å‚¨åœ¨æ•°å€¼å­—æ®µä¸­ï¼ˆæ•°å€¼å­—æ®µåªå­˜å‚¨æ•°å€¼æ•°æ®ï¼‰ï¼Œä½†æ˜¯ï¼Œè¿™æ ·åšå´æ˜¯ä¸å¯å–çš„ã€‚å¦‚æžœåœ¨æ•°å€¼å­—æ®µä¸­å­˜å‚¨é‚®æ”¿ç¼–ç 01234ï¼Œåˆ™ä¿å­˜çš„å°†æ˜¯æ•°å€¼1234ï¼Œå®žé™…ä¸Šä¸¢å¤±äº†ä¸€ä½æ•°å­—ã€‚éœ€è¦éµå®ˆçš„åŸºæœ¬è§„åˆ™æ˜¯ï¼šå¦‚æžœæ•°å€¼æ˜¯è®¡ç®—ï¼ˆæ±‚å’Œã€å¹³å‡ç­‰ï¼‰ä¸­ä½¿ç”¨çš„æ•°å€¼ï¼Œåˆ™åº”è¯¥å­˜å‚¨åœ¨æ•°å€¼æ•°æ®ç±»åž‹åˆ—ä¸­ã€‚å¦‚æžœä½œä¸ºå­—ç¬¦ä¸²ï¼ˆå¯èƒ½åªåŒ…å«æ•°å­—ï¼‰ä½¿ç”¨ï¼Œåˆ™åº”è¯¥ä¿å­˜åœ¨ä¸²æ•°æ®ç±»åž‹åˆ—ä¸­ã€‚',0,0,0),(8,5,'è¡¨çŽ°å¼ºåŠ²ï¼ŒAirPods å‡ºè´§é‡æš´å¢žï¼','2019-10-17','ä½ å¯èƒ½ä¼šè®¤ä¸ºç”µè¯å·ç å’Œé‚®æ”¿ç¼–ç åº”è¯¥å­˜å‚¨åœ¨æ•°å€¼å­—æ®µä¸­ï¼ˆæ•°å€¼å­—æ®µåªå­˜å‚¨æ•°å€¼æ•°æ®ï¼‰ï¼Œä½†æ˜¯ï¼Œè¿™æ ·åšå´æ˜¯ä¸å¯å–çš„ã€‚å¦‚æžœåœ¨æ•°å€¼å­—æ®µä¸­å­˜å‚¨é‚®æ”¿ç¼–ç 01234ï¼Œåˆ™ä¿å­˜çš„å°†æ˜¯æ•°å€¼1234ï¼Œå®žé™…ä¸Šä¸¢å¤±äº†ä¸€ä½æ•°å­—ã€‚éœ€è¦éµå®ˆçš„åŸºæœ¬è§„åˆ™æ˜¯ï¼šå¦‚æžœæ•°å€¼æ˜¯è®¡ç®—ï¼ˆæ±‚å’Œã€å¹³å‡ç­‰ï¼‰ä¸­ä½¿ç”¨çš„æ•°å€¼ï¼Œåˆ™åº”è¯¥å­˜å‚¨åœ¨æ•°å€¼æ•°æ®ç±»åž‹åˆ—ä¸­ã€‚å¦‚æžœä½œä¸ºå­—ç¬¦ä¸²ï¼ˆå¯èƒ½åªåŒ…å«æ•°å­—ï¼‰ä½¿ç”¨ï¼Œåˆ™åº”è¯¥ä¿å­˜åœ¨ä¸²æ•°æ®ç±»åž‹åˆ—ä¸­ã€‚',0,0,0);
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
INSERT INTO `pho_comment` VALUES (1,1,'testUser3',NULL,'2019-10-03','666',0,0),(2,1,'testUser1','testUser3','2019-10-05','çœŸé¦™',0,0),(3,1,'testUser3','testUser1','2019-10-07','ä¸æ‡‚å°±é—®',0,0),(4,1,'testUser2','testUser1','2019-10-13','ke qi',0,0),(5,1,'testUser1',NULL,'2019-10-15','you jump',0,0),(6,1,'testUser1',NULL,'2019-10-16','i jump',0,0),(7,2,'testUser3',NULL,'2019-10-03','777',0,0),(8,2,'testUser1','testUser3','2019-10-05','çœŸé¦™',0,0),(9,2,'testUser3','testUser1','2019-10-07','ä¸æ‡‚å°±é—®',0,0),(10,2,'testUser2','testUser1','2019-10-13','ke qi',0,0),(11,2,'testUser1',NULL,'2019-10-15','you jump',0,0),(12,2,'testUser1',NULL,'2019-10-16','i jump',0,0),(13,3,'testUser3',NULL,'2019-10-03','666',0,0),(14,3,'testUser1','testUser3','2019-10-05','çœŸé¦™',0,0),(15,3,'testUser3','testUser1','2019-10-07','ä¸æ‡‚å°±é—®',0,0),(16,3,'testUser2','testUser1','2019-10-13','ke qi',0,0),(17,3,'testUser1',NULL,'2019-10-15','you jump',0,0),(18,3,'testUser1',NULL,'2019-10-16','i jump',0,0),(19,4,'testUser3',NULL,'2019-10-03','666',0,0),(20,4,'testUser1','testUser3','2019-10-05','çœŸé¦™',0,0),(21,4,'testUser3','testUser1','2019-10-07','ä¸æ‡‚å°±é—®',0,0),(22,4,'testUser2','testUser1','2019-10-13','ke qi',0,0),(23,4,'testUser1',NULL,'2019-10-15','you jump',0,0),(24,4,'testUser1',NULL,'2019-10-16','i jump',0,0);
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
  `name` varchar(32) DEFAULT 'é”¤å­',
  `cpu` varchar(32) DEFAULT 'æš‚æ— ä¿¡æ¯',
  `ram` varchar(32) DEFAULT 'æš‚æ— ä¿¡æ¯',
  `memory` varchar(32) DEFAULT 'æš‚æ— ä¿¡æ¯' COMMENT 'å­˜å‚¨ç©ºé—´',
  `camera` varchar(32) DEFAULT 'æš‚æ— ä¿¡æ¯',
  `battery` varchar(32) DEFAULT 'æš‚æ— ä¿¡æ¯' COMMENT 'ç”µæ± å®¹é‡',
  `screen_size` varchar(32) DEFAULT 'æš‚æ— ä¿¡æ¯',
  `resolution` varchar(32) DEFAULT 'æš‚æ— ä¿¡æ¯' COMMENT 'åˆ†è¾¨çŽ‡',
  `prices` varchar(32) DEFAULT 'æš‚æ— ä¿¡æ¯',
  `listing_date` varchar(32) DEFAULT 'æš‚æ— ä¿¡æ¯' COMMENT 'ä¸Šå¸‚æ—¥æœŸ',
  `screen_type` varchar(32) DEFAULT 'æš‚æ— ä¿¡æ¯',
  `os` varchar(32) DEFAULT 'æš‚æ— ä¿¡æ¯',
  `color` varchar(32) DEFAULT 'æš‚æ— ä¿¡æ¯',
  `screen_pixel` varchar(32) DEFAULT 'æš‚æ— ä¿¡æ¯' COMMENT 'åƒç´ å¯†åº¦',
  `cpu_fre` varchar(32) DEFAULT 'æš‚æ— ä¿¡æ¯' COMMENT 'CPUé¢‘çŽ‡',
  `core_num` varchar(32) DEFAULT 'æš‚æ— ä¿¡æ¯' COMMENT 'æ ¸å¿ƒæ•°',
  `gpu` varchar(32) DEFAULT 'æš‚æ— ä¿¡æ¯',
  `ram_size` varchar(32) DEFAULT 'æš‚æ— ä¿¡æ¯',
  `rom_size` varchar(32) DEFAULT 'æš‚æ— ä¿¡æ¯',
  `charging` varchar(32) DEFAULT 'æš‚æ— ä¿¡æ¯' COMMENT 'å……ç”µåŠŸçŽ‡',
  `four_g` varchar(32) DEFAULT 'æš‚æ— ä¿¡æ¯',
  `three_g` varchar(32) DEFAULT 'æš‚æ— ä¿¡æ¯',
  `fre_band` varchar(32) DEFAULT 'æš‚æ— ä¿¡æ¯' COMMENT 'æ”¯æŒé¢‘æ®µ',
  `bluetooth` varchar(32) DEFAULT 'æš‚æ— ä¿¡æ¯',
  `port` varchar(32) DEFAULT 'æš‚æ— ä¿¡æ¯' COMMENT 'æœºèº«æŽ¥å£',
  `post_camera` varchar(32) DEFAULT 'æš‚æ— ä¿¡æ¯',
  `front_camera` varchar(32) DEFAULT 'æš‚æ— ä¿¡æ¯',
  `sensor_type` varchar(32) DEFAULT 'æš‚æ— ä¿¡æ¯' COMMENT 'ä¼ æ„Ÿå™¨ç±»åž‹',
  `sensor_model` varchar(32) DEFAULT 'æš‚æ— ä¿¡æ¯' COMMENT 'ä¼ æ„Ÿå™¨åž‹å·',
  `size` varchar(32) DEFAULT 'æš‚æ— ä¿¡æ¯',
  `weight` varchar(32) DEFAULT 'æš‚æ— ä¿¡æ¯',
  `texture` varchar(32) DEFAULT 'æš‚æ— ä¿¡æ¯' COMMENT 'æœºèº«æè´¨',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone`
--

LOCK TABLES `phone` WRITE;
/*!40000 ALTER TABLE `phone` DISABLE KEYS */;
INSERT INTO `phone` VALUES (1,_binary 'ÿ\Øÿ\à\0JFIF\0\0`\0`\0\0ÿ\Û\0C\0		\n\r\Z\Z $.\' \",#(7),01444\'9=82<.342ÿ\Û\0C			\r\r2!!22222222222222222222222222222222222222222222222222ÿÀ\0\0–\0\æ\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0F\0	\0\0\0\0!1AQ\"a‘±Á#q¡²$23BRbr\Ñes‚¢\ÂCSc“\á4ƒ\Ò\ð\ñÿ\Ä\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0+\0\0\0\0\0\0\0\0!1AQ\"2a#R¡±Bq\ð3ÿ\Ú\0\0\0?\0\öâ¢˜€L\Ô\rXˆA¨dQ¨…%€“N)ƒ&\\t£¾C`\ã?]©\ò©§\Ü‹\ðVlÐ˜sV‡5re2@\nŸ\nƒ&|*\Å8Bi\ïamr¨‡ø\ÅX(ZŽ*erZÀ•WšH\èW9Ð²WÂŸ\æ4\Â\É\Z·…­Ôž”E”\ôÁ©w‡ÊŽ¨7Œ€5²\â‚m\0\äU\Üæ˜¡\"Š›Dq‹(\÷$z\éÕ¬Q$ySdÁdT\î\nˆ…h•ˆ52ŸJZ›0zR8\ÚA«ml\ÞZH™zŠ¹I3;‹‰Q­\÷F†\ÐHª¬\î+QiIš¹6g•€\ç“.i±\ÎhMpH\Æ)\Ô[)uTAº å±“J€ä±¥W(™\ÝmOf5)\ËT	¯,‘\ê\ÛŠ`\Ån\"¶}”\ô\'œÛ¶Xm.p_D\õ©?k$]\är¾\í”Ý”[CmgÌ³»nY¨½zx\ò+cN\Ö\ì\õk	UŠk\Ûqq»°\ï6ø\ñ\ãŠ\ó¿\Ë)>”7m\Çy_J\êû#£Cw§\öwR1\È\÷vºwt²‡\ô°\ç#ÄšÀ\àœ\î\îmSjmvV:À\ÍçŸ®™£¼\01\åGX¶\Õ\õf‘P¹\ô‡4\ô#R2^­*N/k•{ª‰\\Q&‘QI\Ï?Ug¾­n·	nú68\ê>\\°\ö\×M&\ÌÝ‹’hdTÙ@\äÓ¢¦È‘ê¡²-š)\'­2°dª\Ð\ÚA\à*m\r–¬I\ÊL‰—„¤ø\Ôz©†)¬„\Í\Ü09¦+P\ÞA\æ\ò©‹˜’&x¨\Å	§\ó˜yS(1]t¹ \Èù\ð¨j%§Q\×L¯*g5UÒ¯¶1B*	«\â\ìe¨\îfºšFkI\ã ˜ª\è\Ì\Ç86R«M)U™”b\ÏV¦5\")±^`\ö$h2œMùÿ\0\rV\ë‰\">§\÷R\Ô\ö±\é{\Ñ\æ?•\rÿ\0WR\Ø\ÚIu\Ý;+$c,¹\ñÇ•w–…\ôŽ\È\Û\Ã8\ô\ím\Ñ\\â©’3AvÌ¯\õš´Ï·B¾þGü±Ð“rQ}\ÜM5¹­ÝŽ°Ÿ”]g´}¦ž\ÏQKe·’7’%‰0\Ñ`Ž	\ñ=Mvž\í¿itd\Ô\íb–(šGŒ,¤nÊ¶J\ño\É E\í+!r-_\'9\ãŒ}U\í\ð\"\ÛÀ#H\âŒNØ*ût`®ŽT\ôd\î¤ÂšÁ8–ü))8ûR´®\å\ô\rs·—‹h..™ˆ-&” ln\ÚP\ã?ek„mýnv®¾‘ú\êW“\Ëùl™¤\"-\n1ü\÷\à*Î›ù^’\æc\ò½!\Ê\Ã), \ç\'žµB’zi„øQA¡”\åH\È>b™2b0F: «&\Í2lWb«Çž”3«-B#šµ2™%r¹…¨O®n8¨O4\ÊL®Q]ŠE	Š‡vI«\Ät¡•«Š¥™Œ\ÔLf­•¨”¦R¦\Ì\Ò1‘V6sS\æŽ@P¹H\Æj=\Ñ>|\ÆD\Å\åS0:E#iU\Þ\äšTy\äü\î\ÓQ+S&˜\×„†\ÓT\ï†g\É_\Ü*\õQ\ÔNÿ\0+¶–§µKÞŒ\'o¤o®®Fþ•s\ìw™Lùe¬\É$Ä\õ\Õ\ëIqb\Ü\õ”~\Z\Ï\Ã\Ç\ê#¥\Æ/¤y¿`»ª\öw_¸º¿Š8\âH\ÌQ•p\Å\òG#x\ó\Íz3\ËM<¼|*“M]hCK#‡7©\Ù}\Ís:³\î\Ó\õý\Ûs\îJÙ½—\Ñ<\Ö\Ñ\ro|¡\ÓnsþŠÕ©¿\è0\Ü\ñuPe5¯¤/§/ù}\æ²cýaú«cHI\'ù~5Í†\åc\é;uü\Ò\ð“\ðŠr´Kuü\Ò\ð\×\Ü*EjË™šŠQÀ\Ó>\Ä\0·‘8\Íg( y%\nœ¹\ò\õ\Ñr\Ð\\u)w\ÒÂ\ä\ã\ç5/\Ê\Ó4Cf\õúc\Ú\Ø3\Â\ò2)\Û+.\Ñ>:Ÿþø\Öw\Èf2´b<²\òEH\Ôo\à’¤—\È1¤]1;Dg\êUh¬f¸‘’4\É_\Ò9Àmn$n\ê {.\êúL¯·\í>uZ8„–w\Ð0/\Þn8Þ´YÑ‰žúMÊ¡p¨\áy;1,&¹ýPBz`¸\ØkV\Æ\Îk[•žU\î£L–,q‘\åJÁ»®\öU›saP0½X\Å3«$µ“\Õ\ô2¤Ó¥Š2\îb\n<¤?U:é“´K(\î¶„È¢µ¯\Ñ%Ç†g‹\ÝŽ1¾ “4:i\Ü\neJF \ð\Ù\ê\Ä|hª²j\à\äÁJ\Æ<¶2\Å‘\Ô(Ý³®qŸuWÛŠÞ¿\ö[™\n\î˜ˆ\Øi¬£%Ú¹R¼‘û\Ù\ñû1L«<n\ÄtVF	\ëÖŸÑª1,71—¤U³\êÀò¬‹¸€›€\Ú7\èý\ôÐ«“°³¢\â¯r*/viU—E~£²\"›,S\\£·b5«F§ø[Þµ§Š\É\×\Øù[\ñ-	ûYm\õ\"r\Ò92><9«v\óbË¯Y\ÛYÅy3\à*]\ö\ËHýrŸ\ÃKÂ«\ÕGSŽ_E–f›ŽµQ¥\ç­Y¨\æk¶ y\é­F»\â³$;£¼zmÇ¾:µrþºÍšM±ß·\îé“Ÿ\õ\ÅV\ÉZ›\ä\Ê1;*\×\Ò?Xÿ\0Zük6T\Û}(\õš\Ô\ÒÒ¿Ö¿\Z\ä\Ç\Ü;\Øúj\Ü~køk\î\"µ(\óh\Ã_p©\â…\Å\Ä\Þ)ŠÑ¶Ó¬FC…\ÅLÊ¥iŠž¹5k\ä\í¼§\ÆW‚@\ÏZ9¡pee‰¥;C{MA`gbl@\ÆB€‚G‘¦08 #8\ÏŽdÀ¬°<ªÍ»\ô|\Í2[4ˆ\Î\ÂÕ“¿xc\ã8\ÏZŒ´M´\õ\Æx4s€Ùž6“#¯7É›º\ï21\å\ãV#¤\ÈR8\çÓ¬\å”\è\ðy©—\È0ø(\ì¦GBG\ÕW\Ò\Õ\ävAŒ¯^i–\Õ\ÚVŒc+Ö›4[(o\Þom7w\ÇJ¼¶­$…2<\ê\Ç*zŠ9¡]2—uJ­\ì\õR£™9F\õ5=*\Ãs¢5b\öˆ\â\ÙO\ðŸÄµµ\Åd\ö‚\Ò{­<üš>\òEýy<ƒ\ð¥–Å¼;J¬[\òp­0Vy\ñCº›m´þ©\÷R}7Uy_n—{\ß\òMTÕ’\â\Òd¸‚H\\¹;d\\b®\àU\ë#­Ç¸:>–·+²ª–Ü»‡¬T\è2FÜ¦}(<ø\Ô^+µ\Ø\ó²Z„º\ÖU\ã\â\ËV>ZMÁÿ\0\\Ury:\óY·3Z?\Ü\÷Ž*•?\äÇŠ\Ð\à¦®{\Ï\ÞPkCH_\Î\ë_q¬û¦´ü†\rkh«›¬\÷5r£\î[LB?7‹ù\Ü*dSÂ¿A\ò/º¥´U.E–Š@•9SƒD\ÛKh¡‘1½ƒn\Ò\ó¨–mÅ³\É\ñ\Åªlz¨Ü–¹ƒnŸ<Snmû³Ïª[j];›v\ì\óŒS1fm\ÌrqŽh\Å}T\Ûhäˆ,Ÿ¢qIK+§Ñ¶\Ó\ì2&\0pÅÁ=x¦•‹	\ñ\Åe-µ2&\0\ô%•ˆ\'©¨²—%$Õ´¶f¦@À«²•Y\î\éQÌ˜mL¯\ÞOªœ\êl\êÁ\õVz²\íúI#\Ôj-\"€v°Ï˜ü¸ø˜\Ë\ß;ž~‘Öœj\Êe}µŽÑ—mÅ¤\ó\ç8¦]™\Çp\ç!	¦\å@NlŸCUA\Åp”;³-Í‹‘Ž\Ú\êÙ”(I”xz®7·Zu\ì°\ÛOSL±’j’G\Ø<*\î1…D\Ë)\ÔnZ˜^\÷ý\×\\¤aI>4H\åâ²£µ¿\rƒeuÿ\0aÿ\0¥\\a5¤=\í\Ì2\ÃqºX\ÙF~²+s”Wq\å«\Ð4\Òfª\\’thÿ\0s\Ü~8ª\r{ný\'ˆÿ\0œU][Q·µ\ìþ \âh\Ý\î\ìš\ÖGX¼ˆIÀ\ð>±UÕ©[\Ôx\ìr\Z#w–\òD|Eo\èiù\ð\Æ=\Í\\Ö‰º)\Éa€x\æº\í&=ºŠ\ã¡a\îj\çS\ÝL\÷EÖ§X\Ñ{…\È\ÏÊ‹\óÄ»sÜŒýµ\ÎI\ÕÀ\\N\ä\Â\ôp¡0\Õ\Ø\í ×¼þ¢´r üú‰š\ô\É\Ö5a¡\Ñ\ÌOá½¢³uH ;±#\öB+|k=¯/¹•\å_\äŒ\nhÐƒì…—QwgHuû\Â\à-†G¨\Ñþw»Û“h\ò&°U\0›\æb|Y{\çX‹¥\ÈB|\àû(r\"ÿ\0‰:™y:)5ùc6\Ã\×\étªÇ´\÷\ð¶Y5s\É4\ä³^Ž|ˆ¢ùŸjjQ\æP¾Ÿ¦¦·_±zªgú6_µW1K‰­‚P&¥sÚ‰\à¼[Uu\Ær\Z±Œ†@\Í=¼¬.e\æ¤\å\ãBþˆý”!M.\ÈEU»4×¶.P‘·\Ø\r;vÄ¯&×>q\\\ã\ÞD ‡µ˜©\ñŒ}Æ„úŽ–«°=\ÄMŒz4ë†¦ÿ\0ˆ:š¿q\Óÿ\0l$p\Z;x¶ú\ä\ÅCûfã­ºt\çš\æ\å\ÔleˆF“H\ñ…\ÛQŽ\"\î$ž§¾\0Q\\5.\ñ\âjù:C\Û)\×\'\äª|8¤;e;&\ád3û \æ°\Ö+$1ú¤SQK­‡\Òn  \ó\ì:z/hƒ©«\÷’v\âTu“)¥X$RzEXP\ã\ÝJOG\íUW\î:Æµ³\çCû\à\ÐÅº3}¹\\\Òb*\ÓB\î ¸”ž»&\ÅTº7°\î\ÅÍš(\ç-8^k$[}Í|•\î¢E\nL`øwG>Ê§1¼•0—sF|û¶\n„&\îe$\Ïh\ÊQ `=”®o>O\"\Ä/\àIIg\ë\ÐqN•™[\Õ\îu@+\Ç\í\ä\Ôd“Z\n1,,=y\í¬Áÿ\0\åÀ=f\Ð~¬µgËªÚ´»N­4~c»=\õlnû~\n–\Ï\òYY{@\Ã5¸\õGÆ¹þ\ÞCª§d\õ¸å¦LF¤œyæµŒ–\óI»\çÉ—¢Û‘\ñªZÞ©¥Kdu\î\ñ˜ŒI…C™\ÆqB¢n-%ø\Z“JI¿\Ù\ã™ú3\Òs\ÓÆUU\Óÿ\0`5§R\Ñ=„Š<Vr=\ëCn\Â\ë©\Ö;C\õ\\\â¹ü©ø:\\\Ú~L=®³Cp\÷qŸ\Ã\ðµR± c\èZÀÿ\0\Ër¿\Z\ß\Ð{­Ez¦ú­!,\ï2¶FÀ\ã\Í<#(½P³œZÑ\Z\Æ\î\Ä\â\ç®=ŸuhA\r\Æ0­q\ðn\é³W.o]\÷1[c\Û\ò†þ•Aµ@šÇž™¶}\Õ\Ð\É\Éls1I\îY}>\ä/y&©/O\Ñ! H¶¨ >£#ùFT¼\ÓÃ¬\Ü\Æ\Ê\n–FR}â®¾°[†´Bq\×rüV…\æ¿\È>–foNQü‹2\ñ¢¬	8;žh½o\0j°o!˜dÊ‘zŽÓuRšx™›\àw¨û³G&\Åqq§G\ïK\è¥*cÛŠµ±c”’\Ø`\õ*	© ~œdy‡˜\Én%€n¼°\Å=Ý…²5\Ú4p‘Ž¢Þª´Zb&^%\É=Jü(m¬wq¨ŠXx§\ï K©d\ïžYdbr±4‰HgaI–Üˆ¯#?\nªmt·\'s²/ƒÿ\0§e}hn°š\ä·\Öq\í«¦ƒ¶]\ZU#§‰£Ì’\òEû™m¢\Æ3\éH|JÀ§\áSF\Ñ\ä\Ã\"Žž•°ÛŠ¹\ò\Í “‹F6DŒP¤¹\ÑØ‚\í©}¬\r\ï\ä˜U\Ñdý]\Êg>8£ü†Á½\î->³Œû\è\èŒ2g¸R|\Ó8\ÒUK‰\Øþ\è­¿‘qA¾m~®\í1üÆ•[J9\Ý<\ñùciøR£”¿\È\\QrE\Ð$\ÉmM]ÀB\Ç\ìhsÃ£@‚aso\È\Û\Ze‡žG‡\×[–únŸÅ¢²(ûJ\Ñ/ ýµ\Ò\"l\í!…[©\ÛÉ¬Ê¦»³s§¦\Æ\"\ß\è[\ã\ås\÷E–B,€G8=jI©\é;„W(\ßMnü\ã>¹Õ™\ô‹‘U•@<sTb\Óoa9^@\à‡bqzÜ­\Ýv!%\õ¼‹x¥Šh\ßþ6\î}ù\Å\\´\Ó;\ÕYMV\Î\éa i­…\Ä,±•LŽ¹¸Q®’\ä…\ÄÌ¾ \ïýj6\ö@Ó¸\\¤\Ï\É\í\"\Ú2~Œ\ß@mL/	p¬\íÀD‡#\ð\Õ+ˆ¥\Ù\ËK¸þÐ•\ÇÆ©4e\rlg-\ÆL\ÍQA=Á‘²\Ò]\É$€ø¬`g;{i®˜²\é.Ê§´K\ïf¬ib\Ë\0\Úz\0½`ª®Eyng\Ìvœt,\íMf–€VoSP\éwX\È\ÑU}l“øªœ‰%º\Ö‘\×Ð\áš$ˆF…h‰\Ü\æŽ\×rK(V‚\Þ4\ÇCcm%\å}ß‘ž6\ÐÅ¸\Õ\í P\Z)ø\é±\÷-S=¤·S„¶/ž7`\ó\í¹8•\ß80Tq\Î\ô\ç$\î«SE`WW—n\áj±±\é¹8\÷š‚\ö @\ÅeV$\õú·\"®8™¶€¶ŽT¶$ ø*5HSa£\íFžHü\Ø<„u\êG\ÜÂ™\îü]:2O^\ðn€Qm4\×\Î\ãm1ú\â?Ò´’\Æ\ßg\Ò\Ù1\ó\Ýþ•[”c°\ÖlÊŽhþ´»rG–9û\èÛ¢GtÝ€x¬j\ç\ãŠ\ÒH4¸q›XTÿ\0cúV„7–H›PB¾ ¢‘\Ô~P^Nz[\Ù\0ú–2<;°=Â³f–\îVm\×3d\ÈEvi~	o¥¶>@Ä¦™\ï¸{kIG­1R5Z\ìG\ä\ã\Íì° P”¹¨C«=œ\ÂX­W þ’¸9\ö\×c%Í³¯6°c\ËjŸxªb\ÛN¸“Ò±y=Úq¦\æ®\èW\äÄ›µZ±\åÆŒ8*ù\ç\×I5\Íy\Ôe­¥¯zŠ}\à\Ö\Ý\Ïg\ôvˆ7\Ë\"\È\'†\0}\æ³E¯g \Þ\Óv’)À\ì\ëQJ´_€¸\Ì(—Q\ã\ÒH=q\nÿ\0\ñ©¹ \É\r‹)\ë²{±N—]œeÚº”²`{¶P|¹\"«K«vn)‘\r\ï¢Àg!‰`¡¾Èž¯#Iwg5F\ß\Ä#<Ò¢K\ÙrA]Fwÿ\0\rü)QO\á’\Ï\àÚ—^S˜ßŸ/ÿ\0hq\Ü-\à/)\á–\É?y4©V{$´/½\Ù­VT\Û$\÷D\Å}Ø \'g£q¹I\çþd®\ç\ï4©TSd\Å“C\ÆQXp[$\æ†úiµV\å\äuSJ•96b…\ä‹\n\ÃŸJH\Í?\ÍÚ¤ˆ²nµ Ž2\ì\á¥J¯M¨•b›\Öw¹\Úc·$þ¸\ã\ðÓ‹K\ñ\ÕmW\Ö›ý¢•*7v&\ò{¸B\ï»S»Á#\Ç\ÞMUkþë€¦W«\à\ì©R§v+@ž\ê\öEÞ¶Z{/O¤-\î\ÅQŸ[¾³r\Z\ÛOˆ/Œ1~üR¥W(¡n\É\Úk×š†\0šH‡\ð>¯MÔ–\ìý\×ýÂ¾\êT¨\Ù&+l\Æ];Xœn:\Å\Þ\Ü\ð¿*~)\ím5q)Ož/V1\Çþ©\Øý\ô©Tid\ìk4ocµÆ³¬–\ÏX\î2=†ªE\ÚÈ„\Æ‰\ï\æQ\Æ\â7´\ZTª½\Ésb)m\î\á\Þ\â\ì1=%Á\óU/5e°“ºtw8\ê¸_…*T#«$‘Pkû\òVûŸø¢¦­;8T]¾ \ï\é\÷R¥V\Ù´B\ëZ!\íMª¥yPx5A5™§ ú!©`\ð\Æ=Â•*u\à—bù\ê\õgVu †e\É\â¢\Ú\åù]»¢(26˜Á\0\ZT©\ð‚e%Ü¨ú¶ H\äˆ#\Ød\'Ÿo®•*Tp€ª’]\Ïÿ\Ù','VIVO X30','xxx','8G','256G','xxx','xxx','xxx','xxx','4396','2019-11-11','xxx','Android','xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx');
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
