-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 118.25.153.97    Database: Xlab
-- ------------------------------------------------------
-- Server version	5.6.46

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `analycis_event_result`
--

DROP TABLE IF EXISTS `analycis_event_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `analycis_event_result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `recall_rate` decimal(10,0) DEFAULT NULL,
  `accuracy_rate` decimal(10,0) DEFAULT NULL,
  `event_num` int(11) DEFAULT NULL,
  `event_result` text COLLATE utf8_bin,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analycis_event_result`
--

LOCK TABLES `analycis_event_result` WRITE;
/*!40000 ALTER TABLE `analycis_event_result` DISABLE KEYS */;
/*!40000 ALTER TABLE `analycis_event_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `analycis_event_result_sub_thread`
--

DROP TABLE IF EXISTS `analycis_event_result_sub_thread`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `analycis_event_result_sub_thread` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `recall_rate` decimal(10,0) DEFAULT NULL,
  `accuracy_rate` decimal(10,0) DEFAULT NULL,
  `event_num` int(11) DEFAULT NULL,
  `event_result` text COLLATE utf8_bin,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analycis_event_result_sub_thread`
--

LOCK TABLES `analycis_event_result_sub_thread` WRITE;
/*!40000 ALTER TABLE `analycis_event_result_sub_thread` DISABLE KEYS */;
/*!40000 ALTER TABLE `analycis_event_result_sub_thread` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rs_analysis_event_library`
--

DROP TABLE IF EXISTS `rs_analysis_event_library`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rs_analysis_event_library` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `create_user` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rf_user_idx` (`create_user`),
  CONSTRAINT `rf_eve_user` FOREIGN KEY (`create_user`) REFERENCES `rs_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rs_analysis_event_library`
--

LOCK TABLES `rs_analysis_event_library` WRITE;
/*!40000 ALTER TABLE `rs_analysis_event_library` DISABLE KEYS */;
INSERT INTO `rs_analysis_event_library` VALUES (2,'default dictionary','MyVerbDic.txt',2,'2019-12-15 18:34:35'),(3,'国际翻译字典','international.translate.txt',2,'2019-12-24 14:56:50');
/*!40000 ALTER TABLE `rs_analysis_event_library` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rs_analysis_event_result_10`
--

DROP TABLE IF EXISTS `rs_analysis_event_result_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rs_analysis_event_result_10` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `text_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `recall_rate` decimal(10,2) DEFAULT NULL,
  `accuracy_rate` decimal(10,2) DEFAULT NULL,
  `event_num` int(11) NOT NULL,
  `event_result` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rs_analysis_event_result_10`
--

LOCK TABLES `rs_analysis_event_result_10` WRITE;
/*!40000 ALTER TABLE `rs_analysis_event_result_10` DISABLE KEYS */;
INSERT INTO `rs_analysis_event_result_10` VALUES (1,'1',NULL,NULL,1,'[{\"origin\": [\"CHNGOV\", \"---LEG\", \"010\"], \"content\": \" \\u80e1\\u9526\\u6d9b\\u3001\\u5434\\u90a6\\u56fd\\u3001\\u6e29\\u5bb6\\u5b9d\\u3001\\u8d3e\\u5e86\\u6797\\u3001\\u674e\\u957f\\u6625\\u3001\\u4e60\\u8fd1\\u5e73\\u3001\\u674e\\u514b\\u5f3a\\u3001\\u8d3a\\u56fd\\u5f3a\\u3001\\u5468\\u6c38\\u5eb7\\u7b49\\u515a\\u548c\\u56fd\\u5bb6\\u9886\\u5bfc\\u4eba\\u51fa\\u5e2d\\u4eca\\u5929\\u7684\\u5f00\\u5e55\\u5927\\u4f1a \", \"target\": \"\\u5927\\u4f1a\", \"source\": \"\\u80e1\\u9526\\u6d9b\", \"eventroot\": \"010 \\u51fa\\u5e2d \", \"actorroot\": \"\\u4e60\\u8fd1\\u5e73	---\", \"location\": \"\\u672a\\u63d0\\u53d6\\u51fa\\u5730\\u70b9\", \"eventtext\": \"\\u51fa\\u5e2d\", \"id\": \"1\", \"actortext\": \"\\u80e1\\u9526\\u6d9b	\\u5927\\u4f1a\"}]'),(2,'3',NULL,NULL,1,'[{\"origin\": [\"---BUSEDU\", \"---EDU\", \"199\"], \"content\": \" \\u63a8\\u884c\\u5b8c\\u5168\\u5b66\\u5206\\u5236\\uff0c\\u8bfe\\u7a0b\\u7684\\u96be\\u6613\\u5ea6\\u548c\\u5bbd\\u5e7f\\u5ea6\\u7531\\u5b66\\u751f\\u81ea\\u4e3b\\u9009\\u62e9 \", \"target\": \"\\u5b66\\u751f\", \"source\": \"<\\u5de5\\u4e1a> <\\u5927\\u5b66>\", \"eventroot\": \"199 [199] \", \"actorroot\": \"---	---\", \"location\": \"\\u672a\\u63d0\\u53d6\\u51fa\\u5730\\u70b9\", \"eventtext\": \"<\\u5f15\\u5165>\", \"id\": \"3\", \"actortext\": \"<\\u5de5\\u4e1a> <\\u5927\\u5b66>	\\u5b66\\u751f\"}]'),(3,'2',NULL,NULL,1,'[{\"origin\": [\"passive\", \"---CVL\", \"020\"], \"content\": \" \\u8d70\\u8fdb\\u6c5f\\u897f\\u7701\\u6a1f\\u6811\\u5e02\\u5e97\\u4e0b\\u9547\\u5927\\u6c57\\u6751\\u5927\\u6c57\\u6751\\u5c0f\\u7ec4\\uff0c\\u53ea\\u89c1\\u6751\\u843d\\u4f9d\\u5c71\\u800c\\u5efa\\uff0c\\u6751\\u524d\\u9621\\u964c\\u7eb5\\u6a2a\\uff0c\\u6751\\u5185\\u77f3\\u6eaa\\u6f7a\\u6f7a\\u2026\\u2026\\u6251\\u9762\\u800c\\u6765\\u7684\\u5c71\\u91ce\\u6c14\\u606f\\uff0c\\u8ba9\\u4eba\\u5fd8\\u5374\\u4e86\\u590f\\u65e5\\u708e\\u70ed \", \"target\": \"\\u6751\\u843d\", \"source\": \"---\", \"eventroot\": \"020 \\u5efa\\u7acb \", \"actorroot\": \"---	---\", \"location\": \"\\u672a\\u63d0\\u53d6\\u51fa\\u5730\\u70b9\", \"eventtext\": \"\\u5efa\", \"id\": \"2\", \"actortext\": \"---	\\u6751\\u843d\"}]'),(4,'5',NULL,NULL,1,'[{\"origin\": [\"CHN\", \"CHNGOV\", \"060\"], \"content\": \" \\u672c\\u5c4a\\u201c2018\\u5e74\\u4e2d\\u56fd\\u8282\\u201d\\u5b9e\\u884c\\u59d4\\u5458\\u957f\\u3001\\u4e2d\\u56fd\\u9a7b\\u65e5\\u672c\\u5927\\u4f7f\\u7a0b\\u6c38\\u534e\\u8868\\u793a\\uff0c\\u201c2018\\u5e74\\u4e2d\\u56fd\\u8282\\u201d\\u662f\\u4e00\\u573a\\u5c55\\u793a\\u4eca\\u65e5\\u4e2d\\u56fd\\u7684\\u76db\\u4f1a\\uff0c\\u4e5f\\u662f\\u4e00\\u5ea7\\u589e\\u8fdb\\u4e2d\\u65e5\\u4e24\\u56fd\\u6c11\\u4f17\\u76f8\\u4e92\\u7406\\u89e3\\u548c\\u53cb\\u597d\\u611f\\u60c5\\u7684\\u6865\\u6881 \", \"target\": \"\\u4e2d\\u56fd\", \"source\": \"\\u4e2d\\u56fd\", \"eventroot\": \"060 \\u5b9e\\u65bd \", \"actorroot\": \"\\u4e2d\\u56fd	\\u4e2d\\u56fd\", \"location\": \"\\u4e1c\\u4eac,\\u4ee3\\u4ee3\\u6728,\\u4e2d\\u65e5\", \"eventtext\": \"\\u5b9e\\u884c\", \"id\": \"5\", \"actortext\": \"\\u4e2d\\u56fd	\\u4e2d\\u56fd\"}]'),(5,'4',NULL,NULL,1,'[{\"origin\": [\"---GOVEDUJUDGOVJUD\", \"---LEG\", \"010\"], \"content\": \" \\u4e2d\\u5171\\u4e2d\\u592e\\u653f\\u6cbb\\u5c40\\u59d4\\u5458\\u3001\\u4e2d\\u592e\\u4e66\\u8bb0\\u5904\\u4e66\\u8bb0\\uff0c\\u5168\\u56fd\\u4eba\\u5927\\u5e38\\u59d4\\u4f1a\\u6709\\u5173\\u9886\\u5bfc\\u540c\\u5fd7\\uff0c\\u56fd\\u52a1\\u59d4\\u5458\\uff0c\\u6700\\u9ad8\\u4eba\\u6c11\\u6cd5\\u9662\\u9662\\u957f\\uff0c\\u6700\\u9ad8\\u4eba\\u6c11\\u68c0\\u5bdf\\u9662\\u68c0\\u5bdf\\u957f\\uff0c\\u5168\\u56fd\\u653f\\u534f\\u6709\\u5173\\u9886\\u5bfc\\u540c\\u5fd7\\u51fa\\u5e2d\\u5927\\u4f1a \", \"target\": \"\\u5927\\u4f1a\", \"source\": \"\\u653f\\u6cbb\\u5c40 ... \\u9662\\u957f ... \\u68c0\\u5bdf\\u9662 \\u68c0\\u5bdf\\u957f\", \"eventroot\": \"010 \\u51fa\\u5e2d \", \"actorroot\": \"---	---\", \"location\": \"\\u672a\\u63d0\\u53d6\\u51fa\\u5730\\u70b9\", \"eventtext\": \"\\u51fa\\u5e2d\", \"id\": \"4\", \"actortext\": \"\\u653f\\u6cbb\\u5c40 ... \\u9662\\u957f ... \\u68c0\\u5bdf\\u9662 \\u68c0\\u5bdf\\u957f	\\u5927\\u4f1a\"}]');
/*!40000 ALTER TABLE `rs_analysis_event_result_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rs_analysis_event_result_12`
--

DROP TABLE IF EXISTS `rs_analysis_event_result_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rs_analysis_event_result_12` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `text_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `recall_rate` decimal(10,2) DEFAULT NULL,
  `accuracy_rate` decimal(10,2) DEFAULT NULL,
  `event_num` int(11) NOT NULL,
  `event_result` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rs_analysis_event_result_12`
--

LOCK TABLES `rs_analysis_event_result_12` WRITE;
/*!40000 ALTER TABLE `rs_analysis_event_result_12` DISABLE KEYS */;
INSERT INTO `rs_analysis_event_result_12` VALUES (1,'5',NULL,NULL,1,'[{\"origin\": [\"---COP\", \"---CVL\", \"110\"], \"content\": \" 9\\u67087\\u65e5\\uff0c\\u5317\\u4eac\\u5e02\\u516c\\u5b89\\u5c40\\u4e3e\\u884c\\u6e2f\\u6fb3\\u53f0\\u5c45\\u6c11\\u5c45\\u4f4f\\u8bc1\\u9996\\u53d1\\u5f0f \", \"target\": \"\\u5c45\\u6c11\", \"source\": \"\\u516c\\u5b89\\u5c40\", \"eventroot\": \"110 \\u5f00\\u59cb \", \"actorroot\": \"---	---\", \"location\": \"\\u672a\\u63d0\\u53d6\\u51fa\\u5730\\u70b9\", \"eventtext\": \"\\u4e3e\\u884c\", \"id\": \"5\", \"actortext\": \"\\u516c\\u5b89\\u5c40	\\u5c45\\u6c11\"}]'),(2,'7',NULL,NULL,1,'[{\"origin\": [\"CHN\", \"CHNGOV\", \"060\"], \"content\": \" \\u672c\\u5c4a\\u201c2018\\u5e74\\u4e2d\\u56fd\\u8282\\u201d\\u5b9e\\u884c\\u59d4\\u5458\\u957f\\u3001\\u4e2d\\u56fd\\u9a7b\\u65e5\\u672c\\u5927\\u4f7f\\u7a0b\\u6c38\\u534e\\u8868\\u793a\\uff0c\\u201c2018\\u5e74\\u4e2d\\u56fd\\u8282\\u201d\\u662f\\u4e00\\u573a\\u5c55\\u793a\\u4eca\\u65e5\\u4e2d\\u56fd\\u7684\\u76db\\u4f1a\\uff0c\\u4e5f\\u662f\\u4e00\\u5ea7\\u589e\\u8fdb\\u4e2d\\u65e5\\u4e24\\u56fd\\u6c11\\u4f17\\u76f8\\u4e92\\u7406\\u89e3\\u548c\\u53cb\\u597d\\u611f\\u60c5\\u7684\\u6865\\u6881 \", \"target\": \"\\u4e2d\\u56fd\", \"source\": \"\\u4e2d\\u56fd\", \"eventroot\": \"060 \\u5b9e\\u65bd \", \"actorroot\": \"\\u4e2d\\u56fd	\\u4e2d\\u56fd\", \"location\": \"\\u4e1c\\u4eac,\\u4ee3\\u4ee3\\u6728,\\u4e2d\\u65e5\", \"eventtext\": \"\\u5b9e\\u884c\", \"id\": \"7\", \"actortext\": \"\\u4e2d\\u56fd	\\u4e2d\\u56fd\"}]');
/*!40000 ALTER TABLE `rs_analysis_event_result_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rs_analysis_event_result_131`
--

DROP TABLE IF EXISTS `rs_analysis_event_result_131`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rs_analysis_event_result_131` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `text_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `recall_rate` decimal(10,2) DEFAULT NULL,
  `accuracy_rate` decimal(10,2) DEFAULT NULL,
  `event_num` int(11) NOT NULL,
  `event_result` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rs_analysis_event_result_131`
--

LOCK TABLES `rs_analysis_event_result_131` WRITE;
/*!40000 ALTER TABLE `rs_analysis_event_result_131` DISABLE KEYS */;
INSERT INTO `rs_analysis_event_result_131` VALUES (1,'1',NULL,NULL,4,'[{\"origin\": \"2018-08-02 00:00:00 CHNGOV KOR 110\", \"target\": \"\\u97e9\\u56fd\", \"sentenceTime\": \"2018-08-25 00:00:00,2018-08-26 00:00:00\", \"content\": \" \\u80e1\\u9526\\u6d9b\\u5c06\\u4e8e25\\u65e5\\u81f326\\u65e5\\u5bf9\\u97e9\\u56fd\\u8fdb\\u884c\\u56fd\\u4e8b\\u8bbf\\u95ee \", \"source\": \"\\u80e1\\u9526\\u6d9b\", \"location\": \"\\u5bf9\\u97e9\\u56fd\", \"eventroot\": \"110 \\u5f00\\u59cb \", \"actorroot\": \"\\u4e60\\u8fd1\\u5e73	\\u97e9\\u56fd\", \"eventtext\": \"\\u8fdb\\u884c\", \"id\": \"1\", \"actortext\": \"\\u80e1\\u9526\\u6d9b	\\u97e9\\u56fd\"}, {\"origin\": \"2018-08-02 00:00:00 CHNGOV ---LEG 110\", \"target\": \"\\u5927\\u4f1a\", \"sentenceTime\": \"2018-08-02 00:00:00\", \"content\": \" \\u636e\\u6089\\uff0c\\u8bbf\\u95ee\\u671f\\u95f4\\uff0c\\u80e1\\u9526\\u6d9b\\u5c06\\u540c\\u963f\\u91cc\\u4e9a\\u65af\\u603b\\u7edf\\u4e3e\\u884c\\u4f1a\\u8c08\\uff0c\\u4f1a\\u89c1\\u54e5\\u65af\\u8fbe\\u9ece\\u52a0\\u7acb\\u6cd5\\u5927\\u4f1a\\u4e3b\\u5e2d\\u5e15\\u5207\\u79d1 \", \"source\": \"\\u80e1\\u9526\\u6d9b\", \"location\": \"\\u54e5\\u65af\\u8fbe\\u9ece\\u52a0\", \"eventroot\": \"110 \\u5f00\\u59cb \", \"actorroot\": \"\\u4e60\\u8fd1\\u5e73	---\", \"eventtext\": \"\\u4e3e\\u884c\", \"id\": \"1\", \"actortext\": \"\\u80e1\\u9526\\u6d9b	\\u5927\\u4f1a\"}, {\"origin\": \"2018-08-02 00:00:00 CHNGOV CUB 010\", \"target\": \"\\u53e4\\u5df4\", \"sentenceTime\": \"2018-08-02 00:00:00\", \"content\": \" \\u80e1\\u9526\\u6d9b\\u8fd8\\u5c06\\u51fa\\u5e2d\\u5728\\u79d8\\u9c81\\u9996\\u90fd\\u5229\\u9a6c\\u4e3e\\u884c\\u7684\\u4e9a\\u592a\\u7ecf\\u5408\\u7ec4\\u7ec7\\u7b2c\\u5341\\u516d\\u6b21\\u9886\\u5bfc\\u4eba\\u975e\\u6b63\\u5f0f\\u4f1a\\u8bae\\uff0c\\u5e76\\u8bbf\\u95ee\\u53e4\\u5df4\\u3001\\u79d8\\u9c81\\u548c\\u5e0c\\u814a \", \"source\": \"\\u80e1\\u9526\\u6d9b\", \"location\": \"\\u5728\\u79d8\\u9c81\\u9996\\u90fd\\u5229\\u9a6c\", \"eventroot\": \"010 \\u51fa\\u5e2d \", \"actorroot\": \"\\u4e60\\u8fd1\\u5e73	\\u53e4\\u5df4\", \"eventtext\": \"\\u51fa\\u5e2d\", \"id\": \"1\", \"actortext\": \"\\u80e1\\u9526\\u6d9b	\\u53e4\\u5df4\"}, {\"origin\": \"2018-08-02 00:00:00 INDGOV CHN 180\", \"target\": \"\\u4e2d\\u56fd\", \"sentenceTime\": \"2018-05-01 00:00:00\", \"content\": \" \\u5370\\u5ea6\\u603b\\u7406\\u8f9b\\u683c\\u5c06\\u4e8e\\u4eca\\u5929\\u62b5\\u8fbe\\u4e2d\\u56fd\\uff0c\\u53c2\\u52a0\\u5373\\u5c06\\u53ec\\u5f00\\u7684\\u7b2c\\u4e03\\u5c4a\\u4e9a\\u6b27\\u9996\\u8111\\u4f1a\\u8bae \", \"source\": \"\\u5370\\u5ea6 \\u603b\\u7406\", \"location\": \"\\u5370\\u5ea6\", \"eventroot\": \"180 \\u5230\\u8fbe \", \"actorroot\": \"\\u5370\\u5ea6	\\u4e2d\\u56fd\", \"eventtext\": \"\\u62b5\\u8fbe\", \"id\": \"1\", \"actortext\": \"\\u5370\\u5ea6 \\u603b\\u7406	\\u4e2d\\u56fd\"}]'),(2,'2',NULL,NULL,6,'[{\"origin\": \"2018-08-02 00:00:00 RUSEDU ---MED 040\", \"target\": \"\\u8bb0\\u8005\", \"sentenceTime\": \"2018-08-02 00:00:00\", \"content\": \" \\u4fc4\\u7f57\\u65af\\u8fdc\\u4e1c\\u8054\\u90a6\\u5927\\u5b66\\u5916\\u4e8b\\u526f\\u6821\\u957f\\u7ef4\\u591a\\u5229\\u4e9a\\u00b7\\u5e15\\u8bfa\\u5a03\\u5411\\u672c\\u62a5\\u8bb0\\u8005\\u8868\\u793a\\uff0c\\u671f\\u5f85\\u4e60\\u8fd1\\u5e73\\u4e3b\\u5e2d\\u6765\\u8bbf\\u80fd\\u8ba9\\u4fc4\\u4e2d\\u4e24\\u56fd\\u7684\\u53cb\\u597d\\u5173\\u7cfb\\u66f4\\u4e0a\\u4e00\\u5c42\\u697c \", \"source\": \"\\u4fc4\\u7f57\\u65af ... \\u5927\\u5b66\", \"location\": \"\\u4fc4\\u7f57\\u65af\\u8fdc\\u4e1c\\u8054\\u90a6\\u5927\\u5b66\", \"eventroot\": \"040 \\u8868\\u8fbe\\u610f\\u89c1 \", \"actorroot\": \"\\u4fc4\\u56fd	---\", \"eventtext\": \"\\u8868\\u793a\", \"id\": \"2\", \"actortext\": \"\\u4fc4\\u7f57\\u65af ... \\u5927\\u5b66	\\u8bb0\\u8005\"}, {\"origin\": \"2018-08-02 00:00:00 RUS EU 040\", \"target\": \"\\u6b27\\u76df\", \"sentenceTime\": \"2018-08-02 00:00:00\", \"content\": \" \\u4fc4\\u7f57\\u65af\\u5c31\\u6b64\\u5411\\u6b27\\u76df\\u65b9\\u9762\\u63d0\\u51fa\\u4e86\\u4e25\\u6b63\\u4ea4\\u6d89 \", \"source\": \"\\u4fc4\\u7f57\\u65af\", \"location\": \"\\u5411\\u6b27\\u76df\\u65b9\\u9762\", \"eventroot\": \"040 \\u8868\\u8fbe\\u610f\\u89c1 \", \"actorroot\": \"\\u4fc4\\u56fd	\\u6b27\\u76df\", \"eventtext\": \"\\u63d0\\u51fa\", \"id\": \"2\", \"actortext\": \"\\u4fc4\\u7f57\\u65af	\\u6b27\\u76df\"}, {\"origin\": \"2018-08-02 00:00:00 POM TRT 040\", \"target\": \"---\", \"sentenceTime\": \"\", \"content\": \" \\u9664\\u897f\\u73ed\\u7259\\u5916\\uff0c\\u571f\\u8033\\u5176\\u3001\\u7f57\\u9a6c\\u5c3c\\u4e9a\\u548c\\u6ce2\\u5170\\u4e09\\u56fd\\u4e5f\\u5df2\\u660e\\u786e\\u5ba3\\u5e03\\u52a0\\u5165\\u5317\\u7ea6\\u53cd\\u5bfc\\u7cfb\\u7edf \", \"source\": \"---\", \"location\": \"\\u9664\\u897f\\u73ed\\u7259\", \"eventroot\": \"---\", \"actorroot\": \"---	---\", \"eventtext\": \"---\", \"id\": \"2\", \"actortext\": \"---	---\"}, {\"origin\": \"2018-08-02 00:00:00 TRT POM 040\", \"target\": \"---\", \"sentenceTime\": \"\", \"content\": \" \\u9664\\u897f\\u73ed\\u7259\\u5916\\uff0c\\u571f\\u8033\\u5176\\u3001\\u7f57\\u9a6c\\u5c3c\\u4e9a\\u548c\\u6ce2\\u5170\\u4e09\\u56fd\\u4e5f\\u5df2\\u660e\\u786e\\u5ba3\\u5e03\\u52a0\\u5165\\u5317\\u7ea6\\u53cd\\u5bfc\\u7cfb\\u7edf \", \"source\": \"---\", \"location\": \"\\u9664\\u897f\\u73ed\\u7259\", \"eventroot\": \"---\", \"actorroot\": \"---	---\", \"eventtext\": \"---\", \"id\": \"2\", \"actortext\": \"---	---\"}, {\"origin\": \"2018-08-02 00:00:00 USA RUS 205\", \"target\": \"\\u4fc4\\u7f57\\u65af\", \"sentenceTime\": \"2017-11-01 00:00:00\", \"content\": \" \\u7f8e\\u56fd\\u548c\\u5317\\u7ea6\\u9080\\u8bf7\\u4fc4\\u7f57\\u65af\\u53c2\\u4e0e\\u6b27\\u6d32\\u53cd\\u5bfc\\u7cfb\\u7edf\\u5efa\\u8bbe\\uff0c\\u4f46\\u76f8\\u5173\\u8c08\\u5224\\u81f3\\u4eca\\u6beb\\u65e0\\u8fdb\\u5c55 \", \"source\": \"\\u7f8e\\u56fd\", \"location\": \"\\u7f8e\\u56fd\", \"eventroot\": \"205 [205] \", \"actorroot\": \"\\u7f8e\\u56fd	\\u4fc4\\u56fd\", \"eventtext\": \"\\u9080\\u8bf7\", \"id\": \"2\", \"actortext\": \"\\u7f8e\\u56fd	\\u4fc4\\u7f57\\u65af\"}, {\"origin\": \"2018-08-02 00:00:00 NATO RUS 205\", \"target\": \"\\u4fc4\\u7f57\\u65af\", \"sentenceTime\": \"2017-11-01 00:00:00\", \"content\": \" \\u7f8e\\u56fd\\u548c\\u5317\\u7ea6\\u9080\\u8bf7\\u4fc4\\u7f57\\u65af\\u53c2\\u4e0e\\u6b27\\u6d32\\u53cd\\u5bfc\\u7cfb\\u7edf\\u5efa\\u8bbe\\uff0c\\u4f46\\u76f8\\u5173\\u8c08\\u5224\\u81f3\\u4eca\\u6beb\\u65e0\\u8fdb\\u5c55 \", \"source\": \"\\u5317\\u7ea6\", \"location\": \"\\u7f8e\\u56fd\", \"eventroot\": \"205 [205] \", \"actorroot\": \"\\u5317\\u7ea6	\\u4fc4\\u56fd\", \"eventtext\": \"\\u9080\\u8bf7\", \"id\": \"2\", \"actortext\": \"\\u5317\\u7ea6	\\u4fc4\\u7f57\\u65af\"}]');
/*!40000 ALTER TABLE `rs_analysis_event_result_131` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rs_analysis_event_result_8`
--

DROP TABLE IF EXISTS `rs_analysis_event_result_8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rs_analysis_event_result_8` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `text_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `recall_rate` decimal(10,2) DEFAULT NULL,
  `accuracy_rate` decimal(10,2) DEFAULT NULL,
  `event_num` int(11) NOT NULL,
  `event_result` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rs_analysis_event_result_8`
--

LOCK TABLES `rs_analysis_event_result_8` WRITE;
/*!40000 ALTER TABLE `rs_analysis_event_result_8` DISABLE KEYS */;
INSERT INTO `rs_analysis_event_result_8` VALUES (1,'8',NULL,NULL,1,'[{\"origin\": [\"---CVL\", \"---CVL\", \"150\"], \"content\": \" \\u4e39\\u9ea6\\u56fd\\u9645\\u513f\\u7ae5\\u9752\\u5c11\\u5e74\\u620f\\u5267\\u4e2d\\u5fc3CEO\\u3001\\u4e39\\u9ea6\\u56fd\\u9645\\u513f\\u7ae5\\u9752\\u5c11\\u5e74\\u620f\\u5267\\u8282\\u4e3b\\u5e2d\\u4ea8\\u5229\\u00b7\\u79d1\\u52d2\\u8868\\u793a\\uff0c\\u5728\\u4e39\\u9ea6\\u6ca1\\u6709\\u56fa\\u5b9a\\u7684\\u5267\\u9662\\u63d0\\u4f9b\\u513f\\u7ae5\\u5267\\u6f14\\u51fa\\uff0c\\u800c\\u662f\\u628a\\u827a\\u672f\\u4ea4\\u7ed9\\u5b69\\u5b50\\uff0c\\u8ba9\\u5267\\u56e2\\u53bb\\u5b66\\u6821\\u5de1\\u6f14 \", \"target\": \"\\u513f\\u7ae5 ... \\u513f\\u7ae5\", \"source\": \"\\u513f\\u7ae5 ... \\u513f\\u7ae5\", \"eventroot\": \"150 \\u63d0\\u4f9b \", \"actorroot\": \"---	---\", \"location\": \"\\u4e39\\u9ea6\", \"eventtext\": \"\\u63d0\\u4f9b\", \"id\": \"8\", \"actortext\": \"\\u513f\\u7ae5 ... \\u513f\\u7ae5	\\u513f\\u7ae5 ... \\u513f\\u7ae5\"}]'),(2,'5',NULL,NULL,1,'[{\"origin\": [\"---COP\", \"---CVL\", \"110\"], \"content\": \" 9\\u67087\\u65e5\\uff0c\\u5317\\u4eac\\u5e02\\u516c\\u5b89\\u5c40\\u4e3e\\u884c\\u6e2f\\u6fb3\\u53f0\\u5c45\\u6c11\\u5c45\\u4f4f\\u8bc1\\u9996\\u53d1\\u5f0f \", \"target\": \"\\u5c45\\u6c11\", \"source\": \"\\u516c\\u5b89\\u5c40\", \"eventroot\": \"110 \\u5f00\\u59cb \", \"actorroot\": \"---	---\", \"location\": \"\\u672a\\u63d0\\u53d6\\u51fa\\u5730\\u70b9\", \"eventtext\": \"\\u4e3e\\u884c\", \"id\": \"5\", \"actortext\": \"\\u516c\\u5b89\\u5c40	\\u5c45\\u6c11\"}]'),(3,'7',NULL,NULL,1,'[{\"origin\": [\"CHN\", \"CHNGOV\", \"060\"], \"content\": \" \\u672c\\u5c4a\\u201c2018\\u5e74\\u4e2d\\u56fd\\u8282\\u201d\\u5b9e\\u884c\\u59d4\\u5458\\u957f\\u3001\\u4e2d\\u56fd\\u9a7b\\u65e5\\u672c\\u5927\\u4f7f\\u7a0b\\u6c38\\u534e\\u8868\\u793a\\uff0c\\u201c2018\\u5e74\\u4e2d\\u56fd\\u8282\\u201d\\u662f\\u4e00\\u573a\\u5c55\\u793a\\u4eca\\u65e5\\u4e2d\\u56fd\\u7684\\u76db\\u4f1a\\uff0c\\u4e5f\\u662f\\u4e00\\u5ea7\\u589e\\u8fdb\\u4e2d\\u65e5\\u4e24\\u56fd\\u6c11\\u4f17\\u76f8\\u4e92\\u7406\\u89e3\\u548c\\u53cb\\u597d\\u611f\\u60c5\\u7684\\u6865\\u6881 \", \"target\": \"\\u4e2d\\u56fd\", \"source\": \"\\u4e2d\\u56fd\", \"eventroot\": \"060 \\u5b9e\\u65bd \", \"actorroot\": \"\\u4e2d\\u56fd	\\u4e2d\\u56fd\", \"location\": \"\\u4e1c\\u4eac,\\u4ee3\\u4ee3\\u6728,\\u4e2d\\u65e5\", \"eventtext\": \"\\u5b9e\\u884c\", \"id\": \"7\", \"actortext\": \"\\u4e2d\\u56fd	\\u4e2d\\u56fd\"}]'),(4,'6',NULL,NULL,3,'[{\"origin\": [\"JPN\", \"RUS\", \"060\"], \"content\": \" \\u65e5\\u672c\\u4ece1868\\u5e74\\u5b9e\\u884c\\u660e\\u6cbb\\u7ef4\\u65b0\\uff0c\\u52301905\\u5e74\\u6253\\u8d25\\u4fc4\\u56fd\\u6210\\u4e3a\\u4e16\\u754c\\u5f3a\\u56fd\\u4e00\\u5458\\uff0c\\u7528\\u4e86\\u4e0d\\u523040\\u5e74 \", \"target\": \"\\u4fc4\\u56fd\", \"source\": \"\\u65e5\\u672c\", \"eventroot\": \"060 \\u5b9e\\u65bd \", \"actorroot\": \"\\u65e5\\u672c	\\u4fc4\\u56fd\", \"location\": \"\\u672a\\u63d0\\u53d6\\u51fa\\u5730\\u70b9\", \"eventtext\": \"\\u5b9e\\u884c\", \"id\": \"6\", \"actortext\": \"\\u65e5\\u672c	\\u4fc4\\u56fd\"}, {\"origin\": [\"USA\", \"URSMIL\", \"110\"], \"content\": \" \\u4e0a\\u4e16\\u7eaa80\\u5e74\\u4ee3\\uff0c\\u7f8e\\u56fd\\u5bf9\\u519b\\u4e8b\\u5f3a\\u56fd\\u82cf\\u8054\\u548c\\u7ecf\\u6d4e\\u5f3a\\u56fd\\u65e5\\u672c\\u8fdb\\u884c\\u6253\\u538b \", \"target\": \"\\u519b\\u4e8b\", \"source\": \"\\u7f8e\\u56fd\", \"eventroot\": \"110 \\u5f00\\u59cb \", \"actorroot\": \"\\u7f8e\\u56fd	\", \"location\": \"\\u672a\\u63d0\\u53d6\\u51fa\\u5730\\u70b9\", \"eventtext\": \"\\u8fdb\\u884c\", \"id\": \"6\", \"actortext\": \"\\u7f8e\\u56fd	\\u519b\\u4e8b\"}, {\"origin\": [\"USA\", \"JPNMIL\", \"110\"], \"content\": \" \\u4e0a\\u4e16\\u7eaa80\\u5e74\\u4ee3\\uff0c\\u7f8e\\u56fd\\u5bf9\\u519b\\u4e8b\\u5f3a\\u56fd\\u82cf\\u8054\\u548c\\u7ecf\\u6d4e\\u5f3a\\u56fd\\u65e5\\u672c\\u8fdb\\u884c\\u6253\\u538b \", \"target\": \"\\u82cf\\u8054\", \"source\": \"\\u7f8e\\u56fd\", \"eventroot\": \"110 \\u5f00\\u59cb \", \"actorroot\": \"\\u7f8e\\u56fd	\\u82cf\\u8054\", \"location\": \"\\u672a\\u63d0\\u53d6\\u51fa\\u5730\\u70b9\", \"eventtext\": \"\\u8fdb\\u884c\", \"id\": \"6\", \"actortext\": \"\\u7f8e\\u56fd	\\u82cf\\u8054\"}]');
/*!40000 ALTER TABLE `rs_analysis_event_result_8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rs_analysis_project`
--

DROP TABLE IF EXISTS `rs_analysis_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rs_analysis_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `analysis_fields` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `analysis_algorithm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `analysis_type` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `dictionary_id` int(11) DEFAULT NULL,
  `textlibrary_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `is_delete` int(11) unsigned zerofill DEFAULT '00000000000',
  `delete_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rs_analysis_project`
--

LOCK TABLES `rs_analysis_project` WRITE;
/*!40000 ALTER TABLE `rs_analysis_project` DISABLE KEYS */;
INSERT INTO `rs_analysis_project` VALUES (8,'国内新闻分析1',NULL,'0',13,2,2,19,'2019-12-18 20:20:37',1,NULL,'2019-12-18 20:21:53',00000000000,NULL),(10,'国内新闻提取情况分析',NULL,'1',13,2,2,20,'2019-12-18 21:57:34',2,NULL,'2019-12-18 21:58:06',00000000000,NULL),(12,'国内新闻分析结果',NULL,'0',13,2,2,19,'2019-12-24 15:04:27',2,NULL,'2019-12-24 15:05:02',00000000000,NULL),(131,'测试',NULL,'0',13,2,2,37,'2020-01-08 13:32:11',2,NULL,'2020-01-08 13:33:06',00000000000,NULL);
/*!40000 ALTER TABLE `rs_analysis_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rs_textlibrary`
--

DROP TABLE IF EXISTS `rs_textlibrary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rs_textlibrary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `textlibrary_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `line_no` int(20) DEFAULT NULL,
  `import_status` int(20) DEFAULT NULL,
  `parent_id` int(20) DEFAULT NULL,
  `conditions` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `create_user` int(11) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `is_delete` int(20) DEFAULT NULL,
  `delete_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rf_user_idx` (`create_user`),
  CONSTRAINT `rf_text_user` FOREIGN KEY (`create_user`) REFERENCES `rs_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rs_textlibrary`
--

LOCK TABLES `rs_textlibrary` WRITE;
/*!40000 ALTER TABLE `rs_textlibrary` DISABLE KEYS */;
INSERT INTO `rs_textlibrary` VALUES (18,'国际新闻','国际新闻文本库1',5,1,NULL,NULL,2,'2019-12-18 19:08:32',0,NULL),(19,'国内新闻','国内新闻1',2,1,NULL,NULL,2,'2019-12-18 19:26:38',0,NULL),(20,'国内新闻2','国内新闻文本库2',-8,1,NULL,NULL,2,'2019-12-18 19:43:24',1,'2019-12-19 16:32:30'),(21,'体育新闻','体育新闻',0,0,NULL,NULL,2,'2019-12-18 22:25:29',1,'2019-12-18 22:25:53'),(22,'体育新闻','中国体育新闻',9,1,NULL,NULL,2,'2019-12-18 22:27:48',1,'2019-12-19 13:36:30'),(23,'国内新闻3','中国国内新闻',0,0,NULL,NULL,2,'2019-12-19 11:17:58',1,'2019-12-19 11:46:41'),(24,'国际新闻2','国际新闻',0,0,NULL,NULL,2,'2019-12-19 11:47:08',1,'2019-12-19 13:36:06'),(25,'国内新闻2','国内新闻好呀',9,1,NULL,NULL,2,'2019-12-19 13:37:39',1,'2019-12-19 15:12:51'),(26,'国际新闻二号','国际新闻专栏',5,1,NULL,NULL,2,'2019-12-19 15:13:26',1,'2019-12-19 16:14:07'),(27,'国内新闻3','国内新闻3',1,1,NULL,NULL,2,'2019-12-19 16:32:21',1,'2019-12-19 17:38:20'),(28,'国内新闻4','国内新闻4',0,0,NULL,NULL,2,'2019-12-19 16:32:38',1,'2019-12-19 17:35:32'),(29,'国内新闻5','国内新闻5',0,0,NULL,NULL,2,'2019-12-19 16:32:45',1,'2019-12-19 17:35:29'),(30,'国内新闻4','国内新闻',5,1,NULL,NULL,2,'2019-12-19 17:10:59',1,'2019-12-19 17:35:27'),(31,'国际新闻','国际新闻总是很糟糕。',0,0,NULL,NULL,2,'2019-12-24 14:48:54',1,'2019-12-24 14:49:06'),(32,'国际新闻','国际新闻总是很糟糕。',1,1,NULL,NULL,2,'2019-12-24 14:49:10',0,NULL),(33,'外交新闻','外交新闻测试',2,1,NULL,NULL,2,'2019-12-31 02:00:47',0,NULL),(34,'测试','测试',2,1,NULL,NULL,2,'2019-12-31 13:05:52',1,'2020-01-08 02:20:38'),(35,'时政新闻','测试用',2,1,NULL,NULL,2,'2020-01-08 02:22:07',1,'2020-01-08 11:19:32'),(36,'时政新闻','测试',2,1,NULL,NULL,2,'2020-01-08 11:19:54',1,'2020-01-08 13:20:35'),(37,'新建','测试',2,1,NULL,NULL,2,'2020-01-08 13:29:32',1,'2020-01-08 13:34:58');
/*!40000 ALTER TABLE `rs_textlibrary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rs_textlibrary_data_18`
--

DROP TABLE IF EXISTS `rs_textlibrary_data_18`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rs_textlibrary_data_18` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `summary` text,
  `keywords` varchar(255) DEFAULT NULL,
  `publish_time` datetime DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `page` varchar(20) DEFAULT NULL,
  `content` text,
  `url` varchar(512) DEFAULT NULL,
  `publish_source` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `is_delete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rs_textlibrary_data_18`
--

LOCK TABLES `rs_textlibrary_data_18` WRITE;
/*!40000 ALTER TABLE `rs_textlibrary_data_18` DISABLE KEYS */;
INSERT INTO `rs_textlibrary_data_18` VALUES (1,'俄军总参谋长批评北约单方面部署欧洲反导系统','反导系统','反导 俄罗斯','2018-08-02 00:00:00','新华网莫斯科',NULL,NULL,'新华网莫斯科10月10日电 (记者刘恺) 俄罗斯国防部第一副部长兼武装力量总参谋长尼古拉·马卡罗夫10日在莫斯科与北约高官进行会晤，批评北约单方面加紧部署欧洲马卡罗夫在与到访的北约最高军事长官、美国海军上将詹姆斯·斯塔夫里迪斯会见后说，在部署欧洲反导系统问题上，北约一方面表示将与俄方展开谈判，另一方面却单方面加紧在欧洲部署反导装置。他强调，北约单方面行动不会对地区安全和稳定产生积极作用。　　马卡罗夫说，俄罗斯与北约既有共识也有分歧，俄方希望北约在认识到目前存在的问题后能增进双方互信。　　斯塔夫里迪斯表示，北约方面将认真听取俄方意见，他也会向美国领导人转达俄方相关表态。　　本月5日，北约秘书长拉斯穆森宣布，西班牙已同意美国在其境内部署4艘宙斯盾驱逐舰，以此作为北约反导系统组成部分，俄方对此表示强烈反对。除西班牙外，土耳其、罗马尼亚和波兰三国也已明确宣布加入北约反导系统。　　去年11月，北约领导人在里斯本峰会上决定建立覆盖欧洲的反导系统，美国在欧洲的反导计划是其重要组成部分。美国和北约邀请俄罗斯参与欧洲反导系统建设，但相关谈判至今毫无进展。','http://www.baidu.com',NULL,'2019-12-18 19:09:02',0),(2,'贾庆林出席朝鲜建国60周年庆祝宴会　','朝鲜建国','贾庆林','2018-08-02 00:00:00','新华网北京',NULL,NULL,'新华网北京9月8日电 (记者徐松)中共中央政治局常委、全国政协主席贾庆林8日晚出席朝鲜驻华大使崔镇洙举行的朝鲜建国60周年庆祝宴会并发表讲话。　　贾庆林代表中国党、政府和人民对朝鲜建国60周年表示热烈祝贺。他说，60年来，在金日成主席、金正日总书记的领导下，朝鲜人民在经济建设、社会发展以及对外交往等各个方面取得了显著成就。我们对此感到由衷的高兴。祝愿朝鲜人民在国家建设方面不断取得新的更大成就。　　贾庆林说，中朝两国是山水相连的友好邻邦。中朝关系保持着良好发展势头。我们愿同朝方一道，继续本着“继承传统、面向未来、睦邻友好、加强合作”的精神，推动中朝关系继续向前发展。　　崔镇洙在宴会上致辞，表示朝方高度重视朝中友好合作关系，愿同中方一道，以明年两国建交60周年为契机，办好“朝中友好年”活动，推动两国关系进一步发展。崔镇洙还对北京奥运会取得圆满成功表示祝贺。','http://www.baidu.com',NULL,'2019-12-18 19:09:02',0),(3,'外交部：亚欧首脑会议将讨论国际金融形势　　','例行记者会','记者会','2018-08-02 00:00:00','中新网',NULL,NULL,'中新网10月23日电 10月23日，中国外交部发言人举行例行记者会，就亚欧首脑会议、国际金融危机等答问。 　　秦刚：大家下午好。现在我愿意回答大家的问题。　　问：布什总统将于下月举办国际金融峰会，中国是否已接到邀请？是否出席？　　答：中方主张，国际社会应平等协商，加强合作，共同应对当前国际金融危机，共同维护世界经济金融稳定。中方重视有关召开国际金融峰会的倡议，愿积极考虑与会，并与有关各方保持沟通协调。　　问：印度总理将于今晚抵达北京，温家宝总理是否会单独会见印度总理，讨论中印关系的有关问题？第二个问题，你觉得即将举行的亚欧会议会使亚欧联合起来减轻美国和华尔街对国际金融市场的影响吗？　　答：印度总理辛格将于今天抵达中国，参加即将召开的第七届亚欧首脑会议。中方对他的到来表示欢迎。中方领导人会借这次机会与辛格总理举行会晤，就双边关系以及共同关心的国际和地区问题交换意见，这有利于双方保持政治对话，增进互信，促进两国各领域合作。　　关于你的第二个问题，这次亚欧会议是在当前国际金融危机不断恶化和蔓延的背景下召开的。在这场金融危机或者叫“金融海啸”之中，任何国家都不能置身其外，独善其身。所以需要国际社会加强合作，共同探讨因应之策。在这次亚欧首脑会议上，当前的国际金融形势当然将成为各国领导人关注和讨论的议题之一。中方作为东道主，在这方面也做出了相应安排。我们希望亚欧各国领导人能够利用这一场合充分交换意见，就如何加强协调合作，共同应对危机进行探讨并取得积极成果。　　在这里我要特别指出，参加亚欧首脑会议的有许多是发展中国家，它们在国际金融危机中所遭受的风险和面临的困难值得国际社会，特别是发达国家予以高度重视。希望国际社会在应对这场危机的过程中，充分考虑到发展中国家的关切和利益，维护发展中国家的经济和金融稳定。　　问：中方是否致函欧盟，警告欧方不要将本年度人权奖颁给胡嘉？如果欧盟颁奖给胡嘉将会有何后果？是否会影响亚欧峰会？　　答：中方在人权问题上的立场是明确的。我们反对利用人权问题干涉别国内政。胡嘉是由于煽动颠覆国家政权罪被中国司法机关判刑的罪犯。把这样的奖项颁给一个罪犯是对中国司法主权的干涉，也是对人权的不尊重，与人权宗旨背道而驰。中方就此向欧盟方面提出了严正交涉。　　 问：关于日本首相麻生访华，中方将2006年安倍首相的访问称为“破冰之旅”，将2007年福田首相的访问称为“迎春之旅”。中方如何定位此次麻生首相的访问？　　答：不管对这次访问冠以什么名称，它是一次重要的访问。我们对麻生首相前来参加亚欧会议表示欢迎，中方领导人期待着与麻生首相进行会晤，就进一步推动中日战略互惠关系发展及促进两国在各领域合作深入交换意见。我们希望麻生首相此访能够取得积极成果，也希望中日两个近邻的双边关系不断改善和发展并不断取得成果。　　问：你刚才提到在应对国际金融危机时，应充分考虑发展中国家的关切和利益，中方在亚欧首脑会议和其它国际会议上是否将提出维护发展中国家利益的具体建议？　　答：发达国家和发展中国家应该加强合作，共同应对国际金融危机。这样的合作应该建立在相互尊重和平等互利的基础上。此次亚欧首脑会议期间，发达国家和发展中国家的领导人将就国际经济、金融形势广泛交换意见。明天，应有关方面要求，我们将举行东盟与中、日、韩三国(10+3)早餐会，与会领导人将就国际形势，包括当前的国际经济和金融形势等问题非正式地、自由交换意见。 推而广之，国际社会也就如何应对当前的国际金融危机提出了不少倡议和主张，例如，召开20国领导人参加的国际金融峰会。中方对此予以重视，愿积极考虑与会。希望各国本着平等、协商、务实和合作的精神，共同努力，使会议取得积极成果。　　问：中方对在“清迈协议”基础上设立一个多边货币互换机制的建议持何立场？这是否会是本周亚欧首脑会议的议题之一？　　答：我想你指的是在10+3框架下建立一个外汇储备库的倡议。确实如你所说，这是10+3框架下“清迈倡议”多边化的一个步骤。有关各方已经就此设想达成基本共识，主要目的是在国际金融形势出现波动、外汇流动性出现困难的情况下，能够解燃眉之急，帮助一些国家克服困难。中方对此持积极态度，我们愿意与有关各方就此问题继续进行讨论。 如果没有其它问题了，谢谢大家出席，再见。','http://www.baidu.com',NULL,'2019-12-18 19:09:02',0),(4,'胡锦涛开始对哥斯达黎加进行国事访问　　','圣何塞','圣何塞','2018-08-02 00:00:00','新华网圣何塞',NULL,NULL,'新华网圣何塞11月16日电 中国国家主席胡锦涛16日抵达哥斯达黎加首都圣何塞，开始对这个中美洲国家进行国事访问。　　中国外交部官员说，胡锦涛访问哥斯达黎加是中国国家元首首次访问中美洲地区，将产生重要影响。　　据悉，访问期间，胡锦涛将同阿里亚斯总统举行会谈，会见哥斯达黎加立法大会主席帕切科。双方还将签署涉及经贸、金融、能源、教育、科技、质检等多个领域双边合作文件。　　哥斯达黎加是近年来第一个与中国建交的中美洲国家。建交一年多来，中哥关系快速发展。阿里亚斯总统去年10月访华，为两国互利友好合作关系奠定了坚实的基础。2007年双边贸易总额达28.74亿美元，比上年增长33.3%。双方在文教、能源、金融、质检、旅游等领域的友好合作也取得积极进展。两国在国际事务中保持着良好的沟通与协调。　　胡锦涛是在美国出席了二十国集团领导人金融市场和世界经济峰会后，从华盛顿乘专机抵达圣何塞的。胡锦涛还将出席在秘鲁首都利马举行的亚太经合组织第十六次领导人非正式会议，并访问古巴、秘鲁和希腊。 ','http://www.baidu.com',NULL,'2019-12-18 19:09:02',0),(5,'胡锦涛抵达哈瓦那对古巴进行国事访问　　','哈瓦那','胡锦涛','2018-08-02 00:00:00','新华网圣何塞',NULL,NULL,'新华网哈瓦那11月17日电 中国国家主席胡锦涛17日抵达哈瓦那，开始对古巴进行国事访问，推动中古两国友好合作关系进一步发展。　　这是胡锦涛2004年11月访问古巴后再次对这个拉美国家进行国事访问。　　据悉，访问期间，胡锦涛将同古巴国务委员会主席劳尔·卡斯特罗会谈。双方将签署经贸、教育等领域的多项协议。　　古巴是第一个同新中国建交的拉美国家。近年来，两国高层互访频繁，政治互信增强，各领域互利合作全面开展。2007年双边贸易额为22．8亿美元，比上一年增长27％。目前，中国是古巴第二大贸易伙伴，古巴是中国在拉美的第十大贸易伙伴。两国在文化、教育、科技等领域的交流合作也取得新的进展，双方在国际事务中保持良好合作。　　胡锦涛是在结束了对哥斯达黎加的国事访问后，从圣何塞乘专机抵达哈瓦那的。古巴是胡锦涛此次出访的第三站。此前，他在美国首都华盛顿出席了二十国集团领导人金融市场和世界经济峰会。他还将出席在秘鲁首都利马举行的亚太经合组织第十六次领导人非正式会议，并对秘鲁和希腊进行国事访问。　　相关阅读：　　胡锦涛开始对哥斯达黎加进行国事访问　　胡锦涛：将采取措施促进经济增长','http://www.baidu.com',NULL,'2019-12-18 19:09:02',0);
/*!40000 ALTER TABLE `rs_textlibrary_data_18` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rs_textlibrary_data_19`
--

DROP TABLE IF EXISTS `rs_textlibrary_data_19`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rs_textlibrary_data_19` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `summary` text,
  `keywords` varchar(255) DEFAULT NULL,
  `publish_time` datetime DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `page` varchar(20) DEFAULT NULL,
  `content` text,
  `url` varchar(512) DEFAULT NULL,
  `publish_source` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `is_delete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rs_textlibrary_data_19`
--

LOCK TABLES `rs_textlibrary_data_19` WRITE;
/*!40000 ALTER TABLE `rs_textlibrary_data_19` DISABLE KEYS */;
INSERT INTO `rs_textlibrary_data_19` VALUES (5,'北京市公安局举行港澳台居民居住证首发式','北京市公安局举行港澳台居民居住证首发式','港澳活动，公安局','2019-01-03 18:20:21','中新网',NULL,NULL,'“几天前我才提交了办理居住证的申请，没想到今天就可以拿到证件了。这下子出门办事就方便多了！”拿着手中的“小卡片”，香港青年蔡智恒表情兴奋，难掩领证时心中的喜悦。 　　9月7日，北京市公安局举行港澳台居民居住证首发式。来自香港、澳门、台湾的3名在京青年作为代表，领取了北京市的首批港澳台居民居住证。 　　很高兴成为新北京人 　　早上9时30分左右，记者来到位于朝阳区东三环附近的呼家楼派出所时，这里已是人头攒动，墙上的大屏幕显示着“北京市公安局港澳台居民居住证首发式”几个大字，让活动充满了仪式感。现场的媒体记者们架着“长枪短炮”，准备记录这一有历史意义的画面；公安方面的工作人员或维持秩序，或安排仪式，做着最后的准备。 　　9时50分，北京市公安局的警官宣布：北京市公安局港澳台居民居住证首发式开始！ 　　在主持人介绍完北京市港澳台居民居住证的办理情况后，北京市公安局党委副书记、常务副局长衡晓帆依次为来自港澳台的3名青年颁发了北京市首批港澳台居民居住证。仪式上，衡晓帆依次向他们敬礼、授证、合影，并表达祝福。接过居住证的青年也都向他回礼致敬。 　　为了凸显首批居住证的纪念意义，北京市公安局特地为居住证搭配了一份纪念证书。证书上写着“港澳台居民居住证首发纪念”，并搭配警徽、港澳台三地标志性建筑（香港中银大厦、澳门大三巴牌坊、台北101大楼）的图案。证书中间偏下位置则镶嵌着卡式居住证。 　　乍看之下，居住证与内地（大陆）的二代居民身份证无异，区别在于证件正面的名称字样不同，同时还各自添加了港澳回乡证和台胞证的号码。 　　“我很荣幸能够成为领取北京市第一张港澳台居民居住证的台湾人。现在我只想说，拿了这证，就是新北京人，我是台湾来的北京居民。”随后，郑博宇在微信朋友圈和微博推送了领证的消息和图片，迫不及待地向海峡两岸的朋友们分享喜悦。 　　再也不用排队取票了 　　来自澳门的林蔚妍女士之前在北京读研究生，毕业后因为看好内地发展便留在北京工作。不过，由于之前自己在内地只能使用回乡证，因此曾遇过诸多不便：“以前出去旅游只能住指定的涉外酒店，买高铁票时也要到人工窗口领取才行。我有好几次眼睁睁地看着我乘坐的火车要开走，但我还在人工窗口前排着队。而去年去西藏旅游的时候，因为原有证件酒店不能读取，无法办理入住，我就只能惨兮兮地睡在车上。”但如今，这些问题都迎刃而解。 　　蔡智恒告诉记者，有了居住证后，他就可以用火车站的自助取票机取票了，大大提高了出行效率。“9月底，广深港高铁香港段就要通车了。我希望“十一”假期时可以坐高铁回香港，体验一下沿途的大好风光。” 　　而对于郑博宇来说，用居住证办理信用卡一直是他挂在口头的“第一件最想做的事”，他拿到证件后便立马着手申请。“目前我所居住的公寓和银行有合作项目，办理信用卡后，银行可以帮我一次性缴清全年房租，我再通过免息的分期付款给银行，这样能享受减免1200元的优惠。对我而言，这是居住证带来的直接实惠。” 　　未来快递取证更便民 　　“从9月1日开通办理业务起到9月6日，北京市已有1376人申请办理港澳台居民居住证。”北京市公安局人口管理和基层工作总队副总队长吴克胜对记者说，为了实现居住证的办理、制作和后续使用，北京市公安局调整了户籍资料体系和网络系统，使它们能够接纳、识别港澳台居住证。目前大部分证件还在制作中，将陆续发放给304个受理点，由申请者到场申领。 　　吴克胜表示，未来，北京市公安局将进一步为居住证申请、发放提供便利。比如像开通EMS速递证件业务、网上公安受理申请等，这些服务都在规划中，希望能早日实现。 　　一周以来，全国各地的港澳台居民都争相办理居住证。原本按规定证件需20个工作日才能领取，但部分地区加班加点，几天之内就将首批证件制作完毕并发放。据不完全统计，除北京外，广西、福建、重庆、湖南、贵州、西藏、江苏等地近日也都陆续发放港澳台居民居住证，并为此举行首发仪式。多名港澳台居民受访表示，他们在内地（大陆）的学习、生活、创业、就业等方面将享有更多保障和便利，这让他们有了更多“归属感”。','http://paper.people.com.cn/rmrbhwb/html/2018-09/10/content_1880282.htm',NULL,'2019-12-18 19:30:22',0),(6,'中美经贸摩擦引起了国内外的广泛关注','中美经贸摩擦引起了国内外的广泛关注，国内出现了一些疑虑、慌张，','中美贸易，经济战，民族复兴','2019-01-04 00:00:00','人民日报',NULL,NULL,'当前，中美经贸摩擦引起了国内外的广泛关注，国内出现了一些疑虑、慌张，甚至有人惊呼“狼来了”。在这种情况下，需要我们放宽历史视野，在更高层次上“睁眼看世界”，总结世界强国兴衰的经验教训，认清我国所处的历史方位，正视各种外部挑战，齐心协力把自己的事情办好。 　　一、新兴国家在发展进程中普遍经历了一个关键性阶段 　　随着15世纪地理大发现和新航路的开辟，各大陆日益联为一体，人类历史进入真正意义上的世界史。500年来，一些国家相继崛起，你方唱罢我登场。其中，荷兰、英国和美国先后称雄世界，法国、德国、日本、苏联等国，也曾不止一次地向更高目标发起冲击，但最终没有成功。其间群雄逐鹿，此起彼伏；风云诡谲，步步惊心，呈现出一幅幅兴衰交替的历史画卷。 　　“海上马车夫”荷兰从1609年彻底独立到17世纪中叶成为当时世界强国，用了半个世纪左右。英国在资产阶级革命后迅速发展，到1784年打败老对手荷兰，用了100多年时间。 　　第一次工业革命之后，在科技进步和工业化生产的推动下，大国崛起速度明显加快。美国从1865年结束南北战争到1894年工业总产值跃居世界第一，用了约30年。法国自1789年爆发大革命，到1810年打败欧洲大陆主要对手，成为欧洲强国，用了20年。德国从1871年统一到1913年首次成为世界第二大经济体，用了42年；1938年再次跨入世界强国之列，主要工业指标位居世界第二位，用了20年。日本从1868年实行明治维新，到1905年打败俄国成为世界强国一员，用了不到40年；二战后，日本又经过30多年成为世界第二大经济体。苏联从1917年十月革命到1941年苏德战争爆发，用了不到30年成为世界强国之一；战后重新投入建设，又用了30年时间，到上世纪70年代中期成为与美国抗衡的超级大国。 　　在世界新兴国家由大而强的过程中，都经历了一个关键性阶段。这个将强未强的特殊历史阶段一般为10年左右，在此期间，相关国家面临的风险和挑战较前明显增大，事关兴衰成败。在这方面，英、美是成功的典型，法、德、日、苏则提供了历史教训。 　　英国在1763年击败法国成为欧洲强国，首次骄傲地自称“日不落帝国”，此时与其1784年彻底取代荷兰在世界上的地位之前，存在一个关键性阶段。这期间，英国通过工业革命，创造了“比过去一切时代创造的生产力还要多”的生产力，加快了向工业社会的转型，成为第一个“世界工厂”，为英国进入全盛时期打下了坚实基础。 　　美国在南北战争后积极采取措施缓和南北矛盾，实现国家重建，到1894年成为世界第一大经济体，开始步入关键性阶段。尽管美国在经济体量上占据世界首位，然而其综合实力还不如英国。尤其是，美国国内问题丛生，垄断加剧，腐败横行，社会矛盾尖锐。西奥多·罗斯福就任美国总统后，大力开展以反垄断为主要内容的社会进步主义运动，出台了一系列改革措施，赢得了“托拉斯爆破手”的美誉，为美国问鼎世界铺平了道路。 　　拿破仑于1804年建立法兰西第一帝国，标志着法国进入关键性阶段。但就是这样一位被黑格尔称为“马背上的世界灵魂”“神的存在”的大人物，却犯了一系列战略性错误，特别是1812年贸然发动对俄战争，劳师远袭，铩羽而归，最终于1815年兵败滑铁卢，使法国丧失了向世界强国冲击的机会。德、日类似的事例也一再上演。 　　苏联的教训更为惨痛。在迅速崛起成为超级大国后，苏联领导人犯下了一系列战略性失误，特别是走上军事称霸对抗的错误道路。1979年侵略阿富汗，陷入10年战争的泥潭，最终在这个“帝国坟场”自掘坟墓，撤兵两年后国家即宣告解体。 　　三十年河东，三十年河西。回望大国兴衰历史，一些国家用30年左右时间实现跨越式发展，是一种普遍现象。这个时候达到了一个重要历史节点，此后10年左右是其兴衰成败的关键性阶段，有的成功，有的不成功，也是一种普遍现象。在此期间，如果发展战略选择正确，实力将日益增强，最终会成为世界强国，荷、英、美都是如此；如果选择不正确，出现战略性失误，国家将迅速衰落下去，从而失去进一步发展的历史机遇，法、德、日、苏即是如此。 　　二、遭受打压是新兴国家绕不开的“坎” 　　新兴国家在崛起的关键性阶段，往往会与守成国家发生国家利益的激烈碰撞，无一例外地会受到刻意打压，这是必然遇到的“成长的烦恼”，是发展历程中绕不开的“坎”。 　　英国在崛起过程中先后受到西班牙、荷兰打压。地理大发现后首先成为海上霸主的是西班牙。16世纪后期，英国通过宗教改革激发了民族活力，积极进行海外扩张，与西班牙发生利益冲突。1588年，西班牙派遣“无敌舰队”气势汹汹打上门去，妄图依靠强大的海军力量将英国扼杀于摇篮之中。英国海军以弱胜强，打败西班牙，第一次以欧洲强国地位出现在世界舞台上。此后两国为争夺海上主导权反复较量，双方元气大伤。荷兰乘机崛起，成为海上霸主，垄断了全球贸易的一半。1651年，英国通过《航海条例》，规定进入英国的货物必须由英国商船或货物产地商船运输，次年荷兰即发动了绞杀英国的第一次英荷战争。这时英国正处于资产阶级革命中，凭借新兴资产阶级的锐气，战胜了荷兰。此后100多年时间里，荷兰与英国又进行了三次战争，一直到1780—1784年的第四次英荷战争，英国才彻底战胜了荷兰。 　　法国在发展的关键性阶段同样受到了英国的打压。英国成为世界霸主后，对于挑战其地位的国家毫不手软，典型的是主导反法同盟。针对称霸欧洲大陆的法国，欧洲君主国先后七次组成反法同盟予以围剿，最终于1815年彻底打败法国军队。参加反法同盟的国家时有变化，但英国始终是主要成员，其他国家是为了维护君主制度，而英国则是为了维护霸主地位。 　　美国在崛起过程中也受到了英国的打压。早在美国南北战争期间，英国就趁机图谋分裂美国，乃至幻想重新将美国变为自己的殖民地，于是口头上宣称中立，实际上支持南方，接济南方军火，为南方建造多艘军舰，给北方造成很大困扰和损失。第一次世界大战后，美国首先提出包括成立国际联盟在内的“十四点原则”，实质是在保障世界和平和国际合作的幌子下，建立由美国掌控的国际组织，试图主导世界秩序。用时任美国总统顾问豪斯上校的话说，就是要“按照我们的心愿完成对世界地图的重新绘制”。英国当然洞悉美国图谋，联手法国，百般掣肘，最终迫使美国放弃加入国联。 　　美国成为世界强国后，转而对威胁其地位的国家进行遏制和打压。上世纪80年代，美国对军事强国苏联和经济强国日本进行打压。尽管美国视前者为最大的敌人，视后者为亲密的盟友，但当他们威胁到美国自身地位时，都毫不留情。 　　对苏联，美国的手段可谓无所不用其极：向苏联大力输出西方价值观，进行意识形态渗透，培植“第五纵队”，诱导苏联进行所谓民主改革；同苏联大搞军备竞赛、金融货币战，限制苏联油气出口；挑拨离间苏联各民族之间、各加盟共和国之间的关系，等等。苏联这个超级大国之所以在瞬间轰然倒塌，固然有国内的因素，但来自美国的一套组合拳是主要外部因素。美国中央情报局前雇员彼得·施瓦茨写道：“谈论苏联崩溃而不知道美国秘密战略的作用，就像调查一件神秘突然死亡案子而不考虑谋杀、死亡事件是否存在着特殊反常和预谋一样。” 　　对日本，美国也丝毫没有网开一面、手下留情。上世纪80年代，日本产品充斥全球，对美国贸易大幅顺差，随之而来，大国雄心迅速膨胀，公开叫板美国，招致美国的打压。1985年9月，美国召集五国财长和央行行长会议，签署“广场协议”，逼迫日元升值。之后在不到三年时间里，日元对美元升值达50%，严重打击了日本出口，加之日本应对战略出现失误，导致经济持续低迷，经历了“失去的20年”。日本经济总量从上世纪80年代相当于美国的60%左右，下降到2017年的25%左右。 　　由此可见，新兴国家在发展关键性阶段受到守成国家的打压，也是一个普遍的历史现象。 　　三、中国完全有信心有能力跨过这道“坎” 　　我国经过了30多年改革开放，到2010年成为世界第二大经济体，经过长期努力，中国特色社会主义进入新时代。从世界强国发展规律来看，我国目前正处在爬坡过坎的关键性阶段。在这个阶段受到打压，不是有没有的问题，而是早晚的问题。实际上，自2010年开始，我们遇到的来自外部的挑战和麻烦，都与此有关。当前美国主动挑起的贸易战，就是这种挑战的继续。2017年8月，时任美国白宫首席战略分析师的班农就曾声称，美国在经济上打败中国仅剩5年左右的“窗口期”；他提出，美国与中国之间的经济战争是重中之重，必须集中一切资源打赢这一仗，“如果我们输了，5年以后，最多10年，我们就会达到一个无法挽回的临界点，那时，我们就一点翻盘的机会也没有了”。美国打乱中国发展进程的意图暴露无遗。这种打压也许还有别的花样，但不管怎么样，天塌不下来。对于我们来说，既不要心存侥幸，也不要惊慌失措，最重要的就是从容应对，更加专注地做好我们自己的事情。面对偏见，用行动说话；面对压力，用能力说话。 　　首先，要更加充满信心。这种信心，来自于以习近平同志为核心的党中央的坚强领导，来自于中国特色社会主义巨大的制度优势，来自于改革开放40年来我国经济社会发展取得的举世瞩目的成就。特别是党的十八大以来，党和国家事业取得历史性成就，发生历史性变革，解决了许多长期想解决而没有解决的难题，办成了许多过去想办而没有办成的大事。我们今天受到打压，恰恰说明我国社会主义建设取得了巨大成就，发展态势蒸蒸日上。我们有以习近平同志为核心的党中央的坚强领导，有习近平新时代中国特色社会主义思想的科学指导，这是战胜一切艰难险阻的信心所在、底气所在。在今后前进的道路上，无论出现什么样的外部挑战，我们都要保持定力，按照自己的节奏，办好自己的事情。正如古罗马哲学家奥勒留所讲的：“要像屹立于不断拍打的巨浪之前的礁石，岿然不动，驯服着它周围海浪的狂暴。” 　　其次，要更加增强忧患意识，防止犯战略性、颠覆性错误。前进道路不可能一帆风顺，越是处于发展的关键性阶段，越是要有如履薄冰的谨慎，越是要有居安思危的忧患。道路决定命运。坚持和发展中国特色社会主义是我们的根本利益所在，坚定不移地走中国特色社会主义道路，既不走封闭僵化的老路，也不走改旗易帜的邪路，这是我们付出巨大的学费和代价得出的结论，任何时候都不能动摇。改革开放是决定当代中国命运的关键一招。当今时代，“关起门来朝天过”的日子一去不复返了。我们不能因发展中遇到这样那样的问题而放弃改革开放，也不能因为外部压力，包括美国挑起的贸易摩擦，而改变改革开放的正确方向，不能说你让我改什么我就改什么，你让我放什么我就放什么。在压力面前，一定要有底气，既敢于斗争，又善于斗争，在坚决维护国家自身利益的前提下，务实理性处理好国家间关系。 　　第三，要更加紧密地团结起来。团结出生产力、出战斗力，团结是最大的力量。孙中山先生曾经指出，“中国人如果成一片散沙，是不好的事，我们趁早就要参加水和士敏土（即水泥——引者注），要那些散沙和士敏土彼此结合来成石头，变成坚固的团体”。历史证明，中国共产党成立以后，就成为了团结凝聚中国人民完成反帝反封建的新民主主义革命任务的“士敏土”，成为了中国革命和建设各项事业的主心骨、稳定器和领头人。越是在爬坡过坎的时候，越是在遭受外部遏制打压的时候，就越要紧密团结在以习近平同志为核心的党中央周围，心往一处想、劲往一处使，团结一心，众志成城，奋力前行。 　　中华民族的伟大复兴，中国人民对美好生活的向往，是任何外部力量都阻挡不了的！ 　　青山遮不住，毕竟东流去！','http://paper.people.com.cn/rmrb/html/2018-09/11/nw.D110000renmrb_20180911_1-02.htm',NULL,'2019-12-18 19:30:22',1),(7,'2018中国节','不仅可以吃到正宗的中国特色美食，而且还能欣赏中国辉煌灿烂的传统文化','特色，美食，传统文化','2019-01-05 00:00:00','人民日报',NULL,NULL,'“这个活动太有意义了，不仅可以吃到正宗的中国特色美食，而且还能欣赏中国辉煌灿烂的传统文化。希望能早日去中国看看。”9月8日，在东京举行的“2018年中国节”活动现场，家住日本埼玉县的中村保彦对本报记者说。 　　为纪念中日和平友好条约缔结40周年，“2018年中国节”9月8日—9日在东京代代木公园举办。本届“2018年中国节”实行委员长、中国驻日本大使程永华表示，“2018年中国节”是一场展示今日中国的盛会，也是一座增进中日两国民众相互理解和友好感情的桥梁。在中日交往史中，民间交流始终是推动两国关系向前发展的不竭动力。相信这一活动将成为中日两国民众加强面对面交流、增进友好感情的绝佳契机。 　　国之交在于民相亲。“近年来中国发展迅速，面貌可谓日新月异，希望日本民众多去中国走走，亲身感受中国迅速发展的脉搏。”“2018年中国节”实行委员会最高顾问、日本前首相福田康夫说，民间友谊是国家交往的基础，希望两国民众能够通过此次活动，进一步加深交流和相互理解。 　　为了让更多日本民众了解中国传统文化，东京中国文化中心从陕西省请来两位师傅，手把手教授捏面人、剪纸等，吸引不少小朋友前来学习。此外，东京中国文化中心工作人员还在现场教授编中国结。安庆市黄梅戏剧院、兰州歌舞剧院等中国地方演出团体精彩的文艺演出，引起现场观众的阵阵掌声。 　　“我非常喜欢中国文化。”家住代代木公园附近的加藤亚好美说，在家门口体验原汁原味的中国文化、品尝正宗的中国美食，没有比这更令人开心的事情。加藤亚好美还清晰地记得1978年第一次去中国的情形。她说，改革开放40年来中国发展迅速，希望有机会多去中国看看。日中两国一衣带水，友好交往的历史源远流长，希望两国永远友好下去。 　　“2018年中国节”受到中日双方各界积极响应和大力支持，致力于中日交流的多个机构和团体负责人出任实行委员，两国外交、文化、旅游等政府部门担任活动后援单位。“2018年中国节”场内设置了百余个展位，通过文艺演出、文化展示、美食品尝、旅游推介等方式向日本民众介绍中国。不少展位前排起了长长的队伍。活动期间还举行了超辣食品比赛、拉面比赛、乒乓球比赛等活动，吸引了包括日本民众、旅日华侨华人在内约15万人参加。 　　日本民众纷纷在社交媒体上分享参加“2018年中国节”的照片，推荐家人和朋友参加。不少日本民众更加了解了中国辉煌灿烂的历史和飞速发展的今天，期盼中日关系更加友好密切。','http://paper.people.com.cn/rmrb/html/2018-09/10/nw.D110000renmrb_20180910_4-21.htm',NULL,'2019-12-18 19:30:22',0),(8,'举办国际儿童青少年戏剧协会','首次在中国举办的国际儿童青少年戏剧协会（ASSITEJ）艺术交流大会，','儿童，艺术，大会','2019-01-06 00:00:00','新华社',NULL,NULL,'近日，首次在中国举办的国际儿童青少年戏剧协会（ASSITEJ）艺术交流大会，在北京圆满落幕。来自五大洲的近200名青少年儿童戏剧领域的艺术家、专家、教育工作者以及院团代表，在8月19日至21日的3天里，碰撞文化理念，探讨合作方式，共谋青少年儿童戏剧未来。众多国外儿童戏剧工作者来到中国，对中国儿童戏剧有了更深入的了解，对中国文化有了更强烈的感知，与此同时，他们也将国际青少年儿童戏剧理念带进中国，开阔了中国儿童戏剧工作者的视野。 　　在“东西方文化对儿童戏剧观的影响”的主题对话中，来自中国、日本、德国、丹麦等国家的儿童剧工作者分享了不同的儿童剧发展理念。ASSITEJ日本中心主席、编剧、导演藤田朝介绍，与中国儿童剧基本在剧院上演不同，日本儿童剧70%是学校公演，20%由学生母亲们主持的团体组织上演，10%在公共场所演出。与中国儿童剧相同的是，日本的儿童剧也十分重视剧作的故事情节和教育意义。 　　丹麦国际儿童青少年戏剧中心CEO、丹麦国际儿童青少年戏剧节主席亨利·科勒表示，在丹麦没有固定的剧院提供儿童剧演出，而是把艺术交给孩子，让剧团去学校巡演。丹麦大概有150个儿童剧团。丹麦儿童剧的题材比较宽泛，比如虐待、离婚等，与孩子产生联系的题材都有所呈现。 　　随着科技发展与文明进步，孩子们接受的文艺样式越来越多，儿童戏剧必然要找到独特的审美特点，才能独秀于丰富多彩的文艺样式中。在各国儿童剧工作者心目中，戏剧始终处于不可替代的地位。 　　中国儿童艺术剧院院长、ASSITEJ中国中心主席尹晓东表示，戏剧是了解世界、参悟人生的重要形式，戏剧可以告诉我们过去的事情、过去的人是什么样子。ASSITEJ德国中心副主席、ASSITEJ执委斯达芬·菲尔斯说，生活中总会有某个时刻打动你，但换一个时空就不会了，因此走进剧场，把自己沉浸在戏剧氛围中，这种感动是其他艺术样式不能给予的。 　　“儿童剧作为戏剧的一个重要组成部分，与创作者的文化背景息息相关，儿童戏剧无疑也受到各国文化的影响。应当坚持‘求同存异，异质互补’的原则，用多元开放的眼光观照世界文化，去建设一个更加开放、更加合理、更具人类性的儿童戏剧。”各国儿童剧工作者对东西文化的认识达成一致共识，引起在场所有人的共鸣和响应。“虽然东西方戏剧观略有差异，但对于戏剧的热情和探索却是一以贯之的。相信这次艺术交流大会的成功举行，将更好地促进中国以及世界各国儿童戏剧事业不断向前发展。”尹晓东表示。','http://paper.people.com.cn/rmrbhwb/html/2018-09/10/content_1880322.htm',NULL,'2019-12-18 19:30:22',1);
/*!40000 ALTER TABLE `rs_textlibrary_data_19` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rs_textlibrary_data_20`
--

DROP TABLE IF EXISTS `rs_textlibrary_data_20`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rs_textlibrary_data_20` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `summary` text,
  `keywords` varchar(255) DEFAULT NULL,
  `publish_time` datetime DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `page` varchar(20) DEFAULT NULL,
  `content` text,
  `url` varchar(512) DEFAULT NULL,
  `publish_source` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `is_delete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rs_textlibrary_data_20`
--

LOCK TABLES `rs_textlibrary_data_20` WRITE;
/*!40000 ALTER TABLE `rs_textlibrary_data_20` DISABLE KEYS */;
INSERT INTO `rs_textlibrary_data_20` VALUES (1,'胡锦涛等九常委出席中国工会第15次大会',' 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体','十五大 全国总工会新一届领导集体','2018-08-02 00:00:00','中新网',NULL,NULL,'中新网10月17日电 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体。　　胡锦涛、吴邦国、温家宝、贾庆林、李长春、习近平、李克强、贺国强、周永康等党和国家领导人出席今天的开幕大会。习近平代表中共中央致祝词。　　王兆国将在今天的大会上作全国工会十五大报告。　　上午九时，王兆国宣布中国工会第十五次全国代表大会开幕。今天的大会应到代表1800名，特邀代表289名，实到代表1776名，缺席24名，符合法定人数。　　本次大会将总结过去五年的工会工作，明确今后五年工会工作的主要任务，并将选举产生全国总工会新一届领导集体。','http://baidu.com',NULL,'2019-12-18 19:43:52',1),(2,'江西省樟树市','走进江西省樟树市店下镇大汗村大汗村小组，只见村落依山而建，村前阡陌纵横，村内石溪潺潺……扑面而来的山野气息，让人忘却了夏日炎热','江西  小组','2018-09-09 00:00:00','新华社',NULL,NULL,'走进江西省樟树市店下镇大汗村大汗村小组，只见村落依山而建，村前阡陌纵横，村内石溪潺潺……扑面而来的山野气息，让人忘却了夏日炎热。 　　“先到屋里坐一坐，吃点饭再去爬山。”下午4点，在一处绿色掩映的农家院落前，主人徐国平热情地迎了上来。一会儿工夫，老徐就端来了几碗绿茶以及花生、咸萝卜等小吃。 　　大汗村小组位于玉华山脚下，距樟树城区30多公里，海拔600多米，森林覆盖率达90%以上。每到节假日，许多游客前来观光休闲、登山越野。“以前咱山里人靠山吃山，以砍竹子、编竹篓过日子，一年到头也赚不了几个钱。”徐国平说，如今，村民们利用好山好水发展乡村旅游，收入翻了几番，每年收入不下10万元。 　　大汗村小组是樟树市秀美乡村建设精品示范点，政府先后投资1000万元，聘请专业设计公司进行规划建设，完善进村道路、给排水设施，整治村容村貌，利用村庄生态与文化旅游资源，盘活梯田、竹林、石溪等景观，修葺步行道路、栈道，增设休闲景观设施，提升村庄整体风貌环境。徐国平说：“村里不仅修通了水泥路，喝上了自来水，还实现了有线电视和网络的全覆盖，现在农家乐的生意越来越好了。” 　　“我们村像徐国平这样的不在少数，村里还有五六户在筹办农家乐或民宿旅舍。”大汗村党支部书记徐七根说，现在大汗村小组每年接待游客10多万人次，旅游综合收入上千万元。','http://paper.people.com.cn/rmrb/html/2018-09/09/nw.D110000renmrb_20180909_3-11.htm',NULL,'2019-12-18 19:43:52',0),(3,'核心阅读','西北工业大学在培养学生时，引入“生涯”概念，促使学生提前思考、规划；推行完全学分制，课程的难易度和宽广度由学生自主选择；开设职业发展教育课程，邀请行业大咖传授经验；在生产实习之外安排认识实习，使学生全面认识用人单位的生产管理状况，打开求职思路。','西北工业大学','2018-09-13 00:00:00','西北工业大学',NULL,NULL,'在引导帮扶大学生就业方面，高校如何发挥更大作用？ 　　西北工业大学在培养学生时，引入“生涯”概念，促使学生提前思考、规划；推行完全学分制，课程的难易度和宽广度由学生自主选择；开设职业发展教育课程，邀请行业大咖传授经验；在生产实习之外安排认识实习，使学生全面认识用人单位的生产管理状况，打开求职思路。这表明，高校从多渠道着手引导、保障大学生就业，对稳就业来说很有价值。 　　　　　　 　　“生涯密钥”，是西北工业大学送给2018年入学新生的一份特别的礼物。同学们拿到通知书后，通过扫描二维码，就可以用这把“钥匙”，打开一个海量数据库。 　　岗位和单位是啥性质？就业地点在哪？薪酬水平多少？运用大数据，师兄师姐的选择汇聚成了一张就业全景图，为这些充满好奇的年轻人提供了可靠的参考。 　　“这几年，学校在培养学生时引入‘生涯’的概念。”中国科学院院士、西北工业大学常务副校长黄维说，“无论是‘生涯密钥’大数据，还是推行完全学分制、倡导生产实习和认识实习，这些都旨在强化学生的‘生涯意识’，让学生能提前思考、提早规划。” 　　完全学分制 　　修够学分即能毕业，选啥课学生说了算 　　作为2018年的毕业生，钟昆洋的个人数据也添加进了学校的就业大数据中。4年前入学时，他也曾收到这样的礼物。 　　“我们2014级学生，是学校实行完全学分制的首批获益者。”钟昆洋说，“在课程选择上，不再像往届一样由教务处直接置入课程，而是每个人根据自己的喜好选择课程。” 　　经过两年的调研，西北工业大学于2014年启动了优化本科生人才培养方案。重点改革，就是实行完全学分制，让学生自主选择课程。 　　有些学生录取时被调剂了专业，在完全学分制下就可以实现“换专业”。学校的课程是分模块的。一年级理工类，基础课程模块基本相同。到了二年级，则可以根据自己的兴趣爱好选专业课，只要接收学院同意，就可以学习该学院的专业课模块。 　　配套完全学分制改革，学校允许学生自主选择课程。学生可根据自身情况，选择课程难易度和宽广度。比如，数学基础好的，可以跳过高等数学，直接选择工科数学分析；学飞行器设计的，也可以选择和专业不相关的管理学课程。 　　“学生基于自身兴趣和需要选课，有了更多的自主权。只要达到毕业所要求修的学分，就可以了。”党委学生工作部副部长、学生处副处长王莉说。 　　课程选择上的自由，让钟昆洋尝到了甜头。大三的时候，他就读完了原本在大四才可以选的专业选修课。到了大四，他的学习任务轻，可以花更多时间去寻找适合的工作，准备笔试和面试。 　　职业发展课 　　帮助认知自我，邀请大咖分享，再现招聘过程 　　“因为在课程选择上完全自由，新生容易在无拘束的环境中迷失方向。”学生就业创业指导服务中心老师朱莉说，“所以，指导中心除了在入学时开展新生导航讲座外，还开设了多门职业发展教育课程，希望能给学生一些指引。” 　　刚进大学时，钟昆洋也曾有“选择困难症”。大一时，他便选修了《大学生职业生涯规划》课程。课上，他结识了对他职业生涯有很大影响的朱莉老师。 　　“我们对钟昆洋同学进行了个性化的学业指导，利用学校成熟的职业测评工具，帮助他认知自我兴趣、性格以及价值观。根据他的情况，提供了相应的成长方案。”朱莉说。 　　在老师的帮助下，钟昆洋逐渐了解了自己和外在环境，确定了大学的学习生活目标，有规划地安排了4年的生活。大二时，他在朱莉老师的建议下选修了《求职有道》。这门课程，真实再现了企业招聘的全过程，让学生从招聘官的角度认知企业对人才的要求。 　　“在这些课程中，许多行业大咖现身说法。前辈们的交流分享、老师们的专业指导，使我对职业规划的重要性有了认识。我觉得自己的情况更适合先就业，而不是读研。”钟昆洋说。 　　随后，钟昆洋开始留意就业志愿者服务队的相关信息。大三时，他加入了服务队。这是一支由学生就业创业指导服务中心指导的，主要负责服务用人单位校园招聘工作的专业志愿者队伍。“这个团队有10年的光荣历史。钟昆洋勤恳踏实，待人真诚有礼貌，有很强的责任感，很快就成长为团队的队长。”朱莉老师说。 　　在就业中心，钟昆洋的主要工作是给用人单位安排场地，以及协调宣讲会相关工作。“这个过程中，可以和很多企业的人力资源部人员进行交流，积累求职经验，第一时间获得招聘信息。更重要的，是可以锻炼自己的综合协调能力。”钟昆洋说。 　　业界找感觉 　　除了生产实习，还安排了解型的认识实习 　　“大三是学生找工作的关键预备期。学校为每位学生安排了认识实习与生产实习。”朱莉介绍。 　　认识实习，旨在让学生全面了解用人单位的生产管理状况，从而获得对专业生产实践的初步认识。主要途径，是到相关企业参观学习。 　　“学院用了一个星期的时间，带我们参观了西安本地的5家军工企业。”钟昆洋说，在参观过程中，他了解到自己所在的微机电系统工程专业应用非常广泛，比如很多高端机器应用的传感器，都涉及这一专业。 　　然而，要从事本专业对口的工作，本科所学的并不够用，还需继续深造。这与先找工作的规划产生了矛盾，使钟昆洋陷入了困惑。 　　“在职业生涯辅导中，我了解到了他的困惑。”朱莉说，“微机电系统工程专业，是机械和微电子的交叉学科。所以我建议他，找工作不要局限于小专业，可以在机械和电子这个大类里去找。” 　　老师的点拨打开了钟昆洋的思路。之后，他拒绝了学校安排的生产实习。“学校安排的生产实习，是和专业密切相关的企业。我想从朱老师建议的大类上找工作，这样实习才对我找工作有帮助。”钟昆洋说。 　　大三暑假，钟昆洋申请去宁波某空调企业实习。在生产一线的工作，让他对自己的未来有了更清晰的认识。通过和他人交流，供应链管理、生产管理等书本上的概念，变得具体了起来。 　　“制造业的工作分工差不多。招聘的时候，我就知道自己想去什么岗位了。”钟昆洋说。 　　3年的认真探索和准备，为钟昆洋铺好了求职之路。大四刚开学，他就拿到中国航发贵州黎阳航空发动机有限公司抛来的橄榄枝，成为机电学院“第一签”。 　　“一线城市也曾考虑过，但生活成本太高了。回到老家，生活闲适，还可以陪家人，认识的同学也多。”钟昆洋说，“我们学校的许多同学，都有投身国防、报效国家的心思，我也不例外。这家公司，就是我的最佳选择。” 　　8月17日，钟昆洋到公司报到，经过一个星期的培训，他走上了自己心仪的工作岗位。','http://paper.people.com.cn/rmrb/html/2018-09/13/nw.D110000renmrb_20180913_1-17.htm',NULL,'2019-12-18 19:43:52',1),(4,'全国教育大会','全国教育大会10日在北京召开。中共中央总书记、国家主席、中央军委主席习近平出席会议并发表重要讲话','习近平 党','2018-09-11 00:00:00','人民网',NULL,NULL,'本报北京9月10日电  （记者张烁）全国教育大会10日在北京召开。中共中央总书记、国家主席、中央军委主席习近平出席会议并发表重要讲话。他强调，在党的坚强领导下，全面贯彻党的教育方针，坚持马克思主义指导地位，坚持中国特色社会主义教育发展道路，坚持社会主义办学方向，立足基本国情，遵循教育规律，坚持改革创新，以凝聚人心、完善人格、开发人力、培育人才、造福人民为工作目标，培养德智体美劳全面发展的社会主义建设者和接班人，加快推进教育现代化、建设教育强国、办好人民满意的教育。 　　9月10日是我国第三十四个教师节，习近平代表党中央，向全国广大教师和教育工作者致以节日的热烈祝贺和诚挚问候。他强调，长期以来，广大教师贯彻党的教育方针，教书育人，呕心沥血，默默奉献，为国家发展和民族振兴作出了重大贡献。教师是人类灵魂的工程师，是人类文明的传承者，承载着传播知识、传播思想、传播真理，塑造灵魂、塑造生命、塑造新人的时代重任。全党全社会要弘扬尊师重教的社会风尚，努力提高教师政治地位、社会地位、职业地位，让广大教师享有应有的社会声望，在教书育人岗位上为党和人民事业作出新的更大的贡献。 　　李克强在会上讲话。汪洋、王沪宁、赵乐际、韩正出席会议。 　　习近平在讲话中指出，党的十九大从新时代坚持和发展中国特色社会主义的战略高度，作出了优先发展教育事业、加快教育现代化、建设教育强国的重大部署。教育是民族振兴、社会进步的重要基石，是功在当代、利在千秋的德政工程，对提高人民综合素质、促进人的全面发展、增强中华民族创新创造活力、实现中华民族伟大复兴具有决定性意义。教育是国之大计、党之大计。 　　习近平强调，党的十八大以来，我们围绕培养什么人、怎样培养人、为谁培养人这一根本问题，全面加强党对教育工作的领导，坚持立德树人，加强学校思想政治工作，推进教育改革，加快补齐教育短板，教育事业中国特色更加鲜明，教育现代化加速推进，教育方面人民群众获得感明显增强，我国教育的国际影响力加快提升，13亿多中国人民的思想道德素质和科学文化素质全面提升。 　　习近平指出，在实践中，我们就教育改革发展提出一系列新理念新思想新观点，主要有以下几个方面，坚持党对教育事业的全面领导，坚持把立德树人作为根本任务，坚持优先发展教育事业，坚持社会主义办学方向，坚持扎根中国大地办教育，坚持以人民为中心发展教育，坚持深化教育改革创新，坚持把服务中华民族伟大复兴作为教育的重要使命，坚持把教师队伍建设作为基础工作。这是我们对我国教育事业规律性认识的深化，来之不易，要始终坚持并不断丰富发展。 　　习近平强调，新时代新形势，改革开放和社会主义现代化建设、促进人的全面发展和社会全面进步对教育和学习提出了新的更高的要求。我们要抓住机遇、超前布局，以更高远的历史站位、更宽广的国际视野、更深邃的战略眼光，对加快推进教育现代化、建设教育强国作出总体部署和战略设计，坚持把优先发展教育事业作为推动党和国家各项事业发展的重要先手棋，不断使教育同党和国家事业发展要求相适应、同人民群众期待相契合、同我国综合国力和国际地位相匹配。 　　习近平指出，培养什么人，是教育的首要问题。我国是中国共产党领导的社会主义国家，这就决定了我们的教育必须把培养社会主义建设者和接班人作为根本任务，培养一代又一代拥护中国共产党领导和我国社会主义制度、立志为中国特色社会主义奋斗终身的有用人才。这是教育工作的根本任务，也是教育现代化的方向目标。 　　习近平强调，要在坚定理想信念上下功夫，教育引导学生树立共产主义远大理想和中国特色社会主义共同理想，增强学生的中国特色社会主义道路自信、理论自信、制度自信、文化自信，立志肩负起民族复兴的时代重任。要在厚植爱国主义情怀上下功夫，让爱国主义精神在学生心中牢牢扎根，教育引导学生热爱和拥护中国共产党，立志听党话、跟党走，立志扎根人民、奉献国家。要在加强品德修养上下功夫，教育引导学生培育和践行社会主义核心价值观，踏踏实实修好品德，成为有大爱大德大情怀的人。要在增长知识见识上下功夫，教育引导学生珍惜学习时光，心无旁骛求知问学，增长见识，丰富学识，沿着求真理、悟道理、明事理的方向前进。要在培养奋斗精神上下功夫，教育引导学生树立高远志向，历练敢于担当、不懈奋斗的精神，具有勇于奋斗的精神状态、乐观向上的人生态度，做到刚健有为、自强不息。要在增强综合素质上下功夫，教育引导学生培养综合能力，培养创新思维。要树立健康第一的教育理念，开齐开足体育课，帮助学生在体育锻炼中享受乐趣、增强体质、健全人格、锤炼意志。要全面加强和改进学校美育，坚持以美育人、以文化人，提高学生审美和人文素养。要在学生中弘扬劳动精神，教育引导学生崇尚劳动、尊重劳动，懂得劳动最光荣、劳动最崇高、劳动最伟大、劳动最美丽的道理，长大后能够辛勤劳动、诚实劳动、创造性劳动。 　　习近平指出，要努力构建德智体美劳全面培养的教育体系，形成更高水平的人才培养体系。要把立德树人融入思想道德教育、文化知识教育、社会实践教育各环节，贯穿基础教育、职业教育、高等教育各领域，学科体系、教学体系、教材体系、管理体系要围绕这个目标来设计，教师要围绕这个目标来教，学生要围绕这个目标来学。凡是不利于实现这个目标的做法都要坚决改过来。 　　习近平强调，建设社会主义现代化强国，对教师队伍建设提出新的更高要求，也对全党全社会尊师重教提出新的更高要求。人民教师无上光荣，每个教师都要珍惜这份光荣，爱惜这份职业，严格要求自己，不断完善自己。做老师就要执着于教书育人，有热爱教育的定力、淡泊名利的坚守。随着办学条件不断改善，教育投入要更多向教师倾斜，不断提高教师待遇，让广大教师安心从教、热心从教。对教师队伍中存在的问题，要坚决依法依纪予以严惩。 　　习近平指出，要深化教育体制改革，健全立德树人落实机制，扭转不科学的教育评价导向，坚决克服唯分数、唯升学、唯文凭、唯论文、唯帽子的顽瘴痼疾，从根本上解决教育评价指挥棒问题。要深化办学体制和教育管理改革，充分激发教育事业发展生机活力。要提升教育服务经济社会发展能力，调整优化高校区域布局、学科结构、专业设置，建立健全学科专业动态调整机制，加快一流大学和一流学科建设，推进产学研协同创新，积极投身实施创新驱动发展战略，着重培养创新型、复合型、应用型人才。要扩大教育开放，同世界一流资源开展高水平合作办学。 　　习近平强调，加强党对教育工作的全面领导，是办好教育的根本保证。教育部门和各级各类学校的党组织要增强“四个意识”、坚定“四个自信”，坚定不移维护党中央权威和集中统一领导，自觉在政治立场、政治方向、政治原则、政治道路上同党中央保持高度一致。各级党委要把教育改革发展纳入议事日程，党政主要负责同志要熟悉教育、关心教育、研究教育。各级各类学校党组织要把抓好学校党建工作作为办学治校的基本功，把党的教育方针全面贯彻到学校工作各方面。思想政治工作是学校各项工作的生命线，各级党委、各级教育主管部门、学校党组织都必须紧紧抓在手上。要精心培养和组织一支会做思想政治工作的政工队伍，把思想政治工作做在日常、做到个人。 　　习近平指出，办好教育事业，家庭、学校、政府、社会都有责任。家庭是人生的第一所学校，家长是孩子的第一任老师，要给孩子讲好“人生第一课”，帮助扣好人生第一粒扣子。教育、妇联等部门要统筹协调社会资源支持服务家庭教育。全社会要担负起青少年成长成才的责任。各级党委和政府要为学校办学安全托底，解决学校后顾之忧，维护老师和学校应有的尊严，保护学生生命安全。 　　李克强在讲话中指出，要认真学习领会和贯彻落实习近平总书记重要讲话精神，以习近平新时代中国特色社会主义思想为指导，准确把握教育事业发展面临的新形势新任务，全面落实教育优先发展战略，在经济社会发展规划上优先安排教育、财政资金投入上优先保障教育、公共资源配置上优先满足教育和人力资源开发需要。坚持改革创新，坚持教育公平，推动教育从规模增长向质量提升转变，促进区域、城乡和各级各类教育均衡发展，以教育现代化支撑国家现代化。要着力补上短板，夯实义务教育这个根基，强化农村特别是贫困地区控辍保学工作，完善城乡统一、重在农村的义务教育经费保障机制，着力改善乡村学校办学条件、提高教学质量，注重运用信息化手段使乡村获得更多优质教育资源，在提速降费、网络建设方面给予特别照顾。把更多教育投入用到加强乡村师资队伍建设上，不折不扣落实现行的补助、奖励和各类保障政策，对符合条件的非在编教师要加快入编、同工同酬。前瞻规划布局城镇学校建设，增强容纳能力，加快实现随迁子女入学待遇同城化。同时，要重视发展学前教育、高中阶段教育和民族教育、特殊教育、继续教育等各类教育。 　　李克强强调，要增强教育服务创新发展能力，培养更多适应高质量发展的各类人才。优化高校区域布局、学科结构、专业设置，坚持以教学为中心，突出创新意识和实践能力，培养更多创新人才、高素质人才。更加重视、充分发挥高校在强化基础研究和原始创新、突破关键核心技术中的重要作用。大力办好职业院校，坚持面向市场、服务发展、促进就业的办学方向，推进产教融合、校企合作，培养更多高技能人才。提高技术技能人才的社会地位和待遇。 　　李克强要求，要深化教育领域“放管服”改革，充分释放教育事业发展生机活力。尊重教育发展规律，充分发挥学校办学主体作用，大幅减少各类检查、评估、评价，加强对办学方向、标准、质量的规范引导，为学校潜心治校办学创造良好环境。积极鼓励社会力量依法兴办教育。鼓励各级各类学校与时俱进创新教育理念和人才培养模式，发展“互联网+教育”，完善吸引优秀人才从事教育的体制机制，提升教师社会地位，让尊师重教蔚然成风。 　　中共中央政治局委员、中央书记处书记，全国人大常委会有关领导同志，国务委员，最高人民法院院长，最高人民检察院检察长，全国政协有关领导同志出席大会。 　　中央教育工作领导小组成员，各省区市和计划单列市、新疆生产建设兵团，中央和国家机关有关部门、有关人民团体，军队有关单位，部分高校负责同志参加大会。','http://paper.people.com.cn/rmrb/html/2018-09/11/nw.D110000renmrb_20180911_2-01.htm',NULL,'2019-12-18 19:43:52',1),(5,'2018中国节','“这个活动太有意义了，不仅可以吃到正宗的中国特色美食，而且还能欣赏中国辉煌灿烂的传统文化。希望能早日去中国看看','文化交流','2018-09-10 00:00:00','人民日报',NULL,NULL,'“这个活动太有意义了，不仅可以吃到正宗的中国特色美食，而且还能欣赏中国辉煌灿烂的传统文化。希望能早日去中国看看。”9月8日，在东京举行的“2018年中国节”活动现场，家住日本埼玉县的中村保彦对本报记者说。 　　为纪念中日和平友好条约缔结40周年，“2018年中国节”9月8日—9日在东京代代木公园举办。本届“2018年中国节”实行委员长、中国驻日本大使程永华表示，“2018年中国节”是一场展示今日中国的盛会，也是一座增进中日两国民众相互理解和友好感情的桥梁。在中日交往史中，民间交流始终是推动两国关系向前发展的不竭动力。相信这一活动将成为中日两国民众加强面对面交流、增进友好感情的绝佳契机。 　　国之交在于民相亲。“近年来中国发展迅速，面貌可谓日新月异，希望日本民众多去中国走走，亲身感受中国迅速发展的脉搏。”“2018年中国节”实行委员会最高顾问、日本前首相福田康夫说，民间友谊是国家交往的基础，希望两国民众能够通过此次活动，进一步加深交流和相互理解。 　　为了让更多日本民众了解中国传统文化，东京中国文化中心从陕西省请来两位师傅，手把手教授捏面人、剪纸等，吸引不少小朋友前来学习。此外，东京中国文化中心工作人员还在现场教授编中国结。安庆市黄梅戏剧院、兰州歌舞剧院等中国地方演出团体精彩的文艺演出，引起现场观众的阵阵掌声。 　　“我非常喜欢中国文化。”家住代代木公园附近的加藤亚好美说，在家门口体验原汁原味的中国文化、品尝正宗的中国美食，没有比这更令人开心的事情。加藤亚好美还清晰地记得1978年第一次去中国的情形。她说，改革开放40年来中国发展迅速，希望有机会多去中国看看。日中两国一衣带水，友好交往的历史源远流长，希望两国永远友好下去。 　　“2018年中国节”受到中日双方各界积极响应和大力支持，致力于中日交流的多个机构和团体负责人出任实行委员，两国外交、文化、旅游等政府部门担任活动后援单位。“2018年中国节”场内设置了百余个展位，通过文艺演出、文化展示、美食品尝、旅游推介等方式向日本民众介绍中国。不少展位前排起了长长的队伍。活动期间还举行了超辣食品比赛、拉面比赛、乒乓球比赛等活动，吸引了包括日本民众、旅日华侨华人在内约15万人参加。 　　日本民众纷纷在社交媒体上分享参加“2018年中国节”的照片，推荐家人和朋友参加。不少日本民众更加了解了中国辉煌灿烂的历史和飞速发展的今天，期盼中日关系更加友好密切。 　　（本报东京9月9日电）','http://paper.people.com.cn/rmrb/html/2018-09/10/nw.D110000renmrb_20180910_4-21.htm',NULL,'2019-12-18 19:43:52',1);
/*!40000 ALTER TABLE `rs_textlibrary_data_20` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rs_textlibrary_data_21`
--

DROP TABLE IF EXISTS `rs_textlibrary_data_21`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rs_textlibrary_data_21` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `summary` text,
  `keywords` varchar(255) DEFAULT NULL,
  `publish_time` datetime DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `page` varchar(20) DEFAULT NULL,
  `content` text,
  `url` varchar(512) DEFAULT NULL,
  `publish_source` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `is_delete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rs_textlibrary_data_21`
--

LOCK TABLES `rs_textlibrary_data_21` WRITE;
/*!40000 ALTER TABLE `rs_textlibrary_data_21` DISABLE KEYS */;
/*!40000 ALTER TABLE `rs_textlibrary_data_21` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rs_textlibrary_data_22`
--

DROP TABLE IF EXISTS `rs_textlibrary_data_22`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rs_textlibrary_data_22` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `summary` text,
  `keywords` varchar(255) DEFAULT NULL,
  `publish_time` datetime DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `page` varchar(20) DEFAULT NULL,
  `content` text,
  `url` varchar(512) DEFAULT NULL,
  `publish_source` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `is_delete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rs_textlibrary_data_22`
--

LOCK TABLES `rs_textlibrary_data_22` WRITE;
/*!40000 ALTER TABLE `rs_textlibrary_data_22` DISABLE KEYS */;
INSERT INTO `rs_textlibrary_data_22` VALUES (1,'胡锦涛等九常委出席中国工会第15次大会',' 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体','十五大 全国总工会新一届领导集体','2018-08-02 00:00:00','中新网',NULL,NULL,'中新网10月17日电 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体。　　胡锦涛、吴邦国、温家宝、贾庆林、李长春、习近平、李克强、贺国强、周永康等党和国家领导人出席今天的开幕大会。习近平代表中共中央致祝词。　　王兆国将在今天的大会上作全国工会十五大报告。　　上午九时，王兆国宣布中国工会第十五次全国代表大会开幕。今天的大会应到代表1800名，特邀代表289名，实到代表1776名，缺席24名，符合法定人数。　　本次大会将总结过去五年的工会工作，明确今后五年工会工作的主要任务，并将选举产生全国总工会新一届领导集体。','http://baidu.com',NULL,'2019-12-18 22:41:23',0),(2,'江西省樟树市','走进江西省樟树市店下镇大汗村大汗村小组，只见村落依山而建，村前阡陌纵横，村内石溪潺潺……扑面而来的山野气息，让人忘却了夏日炎热','江西  小组','2018-09-09 00:00:00','新华社',NULL,NULL,'走进江西省樟树市店下镇大汗村大汗村小组，只见村落依山而建，村前阡陌纵横，村内石溪潺潺……扑面而来的山野气息，让人忘却了夏日炎热。 　　“先到屋里坐一坐，吃点饭再去爬山。”下午4点，在一处绿色掩映的农家院落前，主人徐国平热情地迎了上来。一会儿工夫，老徐就端来了几碗绿茶以及花生、咸萝卜等小吃。 　　大汗村小组位于玉华山脚下，距樟树城区30多公里，海拔600多米，森林覆盖率达90%以上。每到节假日，许多游客前来观光休闲、登山越野。“以前咱山里人靠山吃山，以砍竹子、编竹篓过日子，一年到头也赚不了几个钱。”徐国平说，如今，村民们利用好山好水发展乡村旅游，收入翻了几番，每年收入不下10万元。 　　大汗村小组是樟树市秀美乡村建设精品示范点，政府先后投资1000万元，聘请专业设计公司进行规划建设，完善进村道路、给排水设施，整治村容村貌，利用村庄生态与文化旅游资源，盘活梯田、竹林、石溪等景观，修葺步行道路、栈道，增设休闲景观设施，提升村庄整体风貌环境。徐国平说：“村里不仅修通了水泥路，喝上了自来水，还实现了有线电视和网络的全覆盖，现在农家乐的生意越来越好了。” 　　“我们村像徐国平这样的不在少数，村里还有五六户在筹办农家乐或民宿旅舍。”大汗村党支部书记徐七根说，现在大汗村小组每年接待游客10多万人次，旅游综合收入上千万元。','http://paper.people.com.cn/rmrb/html/2018-09/09/nw.D110000renmrb_20180909_3-11.htm',NULL,'2019-12-18 22:41:23',0),(3,'核心阅读','西北工业大学在培养学生时，引入“生涯”概念，促使学生提前思考、规划；推行完全学分制，课程的难易度和宽广度由学生自主选择；开设职业发展教育课程，邀请行业大咖传授经验；在生产实习之外安排认识实习，使学生全面认识用人单位的生产管理状况，打开求职思路。','西北工业大学','2018-09-13 00:00:00','西北工业大学',NULL,NULL,'在引导帮扶大学生就业方面，高校如何发挥更大作用？ 　　西北工业大学在培养学生时，引入“生涯”概念，促使学生提前思考、规划；推行完全学分制，课程的难易度和宽广度由学生自主选择；开设职业发展教育课程，邀请行业大咖传授经验；在生产实习之外安排认识实习，使学生全面认识用人单位的生产管理状况，打开求职思路。这表明，高校从多渠道着手引导、保障大学生就业，对稳就业来说很有价值。 　　　　　　 　　“生涯密钥”，是西北工业大学送给2018年入学新生的一份特别的礼物。同学们拿到通知书后，通过扫描二维码，就可以用这把“钥匙”，打开一个海量数据库。 　　岗位和单位是啥性质？就业地点在哪？薪酬水平多少？运用大数据，师兄师姐的选择汇聚成了一张就业全景图，为这些充满好奇的年轻人提供了可靠的参考。 　　“这几年，学校在培养学生时引入‘生涯’的概念。”中国科学院院士、西北工业大学常务副校长黄维说，“无论是‘生涯密钥’大数据，还是推行完全学分制、倡导生产实习和认识实习，这些都旨在强化学生的‘生涯意识’，让学生能提前思考、提早规划。” 　　完全学分制 　　修够学分即能毕业，选啥课学生说了算 　　作为2018年的毕业生，钟昆洋的个人数据也添加进了学校的就业大数据中。4年前入学时，他也曾收到这样的礼物。 　　“我们2014级学生，是学校实行完全学分制的首批获益者。”钟昆洋说，“在课程选择上，不再像往届一样由教务处直接置入课程，而是每个人根据自己的喜好选择课程。” 　　经过两年的调研，西北工业大学于2014年启动了优化本科生人才培养方案。重点改革，就是实行完全学分制，让学生自主选择课程。 　　有些学生录取时被调剂了专业，在完全学分制下就可以实现“换专业”。学校的课程是分模块的。一年级理工类，基础课程模块基本相同。到了二年级，则可以根据自己的兴趣爱好选专业课，只要接收学院同意，就可以学习该学院的专业课模块。 　　配套完全学分制改革，学校允许学生自主选择课程。学生可根据自身情况，选择课程难易度和宽广度。比如，数学基础好的，可以跳过高等数学，直接选择工科数学分析；学飞行器设计的，也可以选择和专业不相关的管理学课程。 　　“学生基于自身兴趣和需要选课，有了更多的自主权。只要达到毕业所要求修的学分，就可以了。”党委学生工作部副部长、学生处副处长王莉说。 　　课程选择上的自由，让钟昆洋尝到了甜头。大三的时候，他就读完了原本在大四才可以选的专业选修课。到了大四，他的学习任务轻，可以花更多时间去寻找适合的工作，准备笔试和面试。 　　职业发展课 　　帮助认知自我，邀请大咖分享，再现招聘过程 　　“因为在课程选择上完全自由，新生容易在无拘束的环境中迷失方向。”学生就业创业指导服务中心老师朱莉说，“所以，指导中心除了在入学时开展新生导航讲座外，还开设了多门职业发展教育课程，希望能给学生一些指引。” 　　刚进大学时，钟昆洋也曾有“选择困难症”。大一时，他便选修了《大学生职业生涯规划》课程。课上，他结识了对他职业生涯有很大影响的朱莉老师。 　　“我们对钟昆洋同学进行了个性化的学业指导，利用学校成熟的职业测评工具，帮助他认知自我兴趣、性格以及价值观。根据他的情况，提供了相应的成长方案。”朱莉说。 　　在老师的帮助下，钟昆洋逐渐了解了自己和外在环境，确定了大学的学习生活目标，有规划地安排了4年的生活。大二时，他在朱莉老师的建议下选修了《求职有道》。这门课程，真实再现了企业招聘的全过程，让学生从招聘官的角度认知企业对人才的要求。 　　“在这些课程中，许多行业大咖现身说法。前辈们的交流分享、老师们的专业指导，使我对职业规划的重要性有了认识。我觉得自己的情况更适合先就业，而不是读研。”钟昆洋说。 　　随后，钟昆洋开始留意就业志愿者服务队的相关信息。大三时，他加入了服务队。这是一支由学生就业创业指导服务中心指导的，主要负责服务用人单位校园招聘工作的专业志愿者队伍。“这个团队有10年的光荣历史。钟昆洋勤恳踏实，待人真诚有礼貌，有很强的责任感，很快就成长为团队的队长。”朱莉老师说。 　　在就业中心，钟昆洋的主要工作是给用人单位安排场地，以及协调宣讲会相关工作。“这个过程中，可以和很多企业的人力资源部人员进行交流，积累求职经验，第一时间获得招聘信息。更重要的，是可以锻炼自己的综合协调能力。”钟昆洋说。 　　业界找感觉 　　除了生产实习，还安排了解型的认识实习 　　“大三是学生找工作的关键预备期。学校为每位学生安排了认识实习与生产实习。”朱莉介绍。 　　认识实习，旨在让学生全面了解用人单位的生产管理状况，从而获得对专业生产实践的初步认识。主要途径，是到相关企业参观学习。 　　“学院用了一个星期的时间，带我们参观了西安本地的5家军工企业。”钟昆洋说，在参观过程中，他了解到自己所在的微机电系统工程专业应用非常广泛，比如很多高端机器应用的传感器，都涉及这一专业。 　　然而，要从事本专业对口的工作，本科所学的并不够用，还需继续深造。这与先找工作的规划产生了矛盾，使钟昆洋陷入了困惑。 　　“在职业生涯辅导中，我了解到了他的困惑。”朱莉说，“微机电系统工程专业，是机械和微电子的交叉学科。所以我建议他，找工作不要局限于小专业，可以在机械和电子这个大类里去找。” 　　老师的点拨打开了钟昆洋的思路。之后，他拒绝了学校安排的生产实习。“学校安排的生产实习，是和专业密切相关的企业。我想从朱老师建议的大类上找工作，这样实习才对我找工作有帮助。”钟昆洋说。 　　大三暑假，钟昆洋申请去宁波某空调企业实习。在生产一线的工作，让他对自己的未来有了更清晰的认识。通过和他人交流，供应链管理、生产管理等书本上的概念，变得具体了起来。 　　“制造业的工作分工差不多。招聘的时候，我就知道自己想去什么岗位了。”钟昆洋说。 　　3年的认真探索和准备，为钟昆洋铺好了求职之路。大四刚开学，他就拿到中国航发贵州黎阳航空发动机有限公司抛来的橄榄枝，成为机电学院“第一签”。 　　“一线城市也曾考虑过，但生活成本太高了。回到老家，生活闲适，还可以陪家人，认识的同学也多。”钟昆洋说，“我们学校的许多同学，都有投身国防、报效国家的心思，我也不例外。这家公司，就是我的最佳选择。” 　　8月17日，钟昆洋到公司报到，经过一个星期的培训，他走上了自己心仪的工作岗位。','http://paper.people.com.cn/rmrb/html/2018-09/13/nw.D110000renmrb_20180913_1-17.htm',NULL,'2019-12-18 22:41:23',0),(4,'全国教育大会','全国教育大会10日在北京召开。中共中央总书记、国家主席、中央军委主席习近平出席会议并发表重要讲话','习近平 党','2018-09-11 00:00:00','人民网',NULL,NULL,'本报北京9月10日电  （记者张烁）全国教育大会10日在北京召开。中共中央总书记、国家主席、中央军委主席习近平出席会议并发表重要讲话。他强调，在党的坚强领导下，全面贯彻党的教育方针，坚持马克思主义指导地位，坚持中国特色社会主义教育发展道路，坚持社会主义办学方向，立足基本国情，遵循教育规律，坚持改革创新，以凝聚人心、完善人格、开发人力、培育人才、造福人民为工作目标，培养德智体美劳全面发展的社会主义建设者和接班人，加快推进教育现代化、建设教育强国、办好人民满意的教育。 　　9月10日是我国第三十四个教师节，习近平代表党中央，向全国广大教师和教育工作者致以节日的热烈祝贺和诚挚问候。他强调，长期以来，广大教师贯彻党的教育方针，教书育人，呕心沥血，默默奉献，为国家发展和民族振兴作出了重大贡献。教师是人类灵魂的工程师，是人类文明的传承者，承载着传播知识、传播思想、传播真理，塑造灵魂、塑造生命、塑造新人的时代重任。全党全社会要弘扬尊师重教的社会风尚，努力提高教师政治地位、社会地位、职业地位，让广大教师享有应有的社会声望，在教书育人岗位上为党和人民事业作出新的更大的贡献。 　　李克强在会上讲话。汪洋、王沪宁、赵乐际、韩正出席会议。 　　习近平在讲话中指出，党的十九大从新时代坚持和发展中国特色社会主义的战略高度，作出了优先发展教育事业、加快教育现代化、建设教育强国的重大部署。教育是民族振兴、社会进步的重要基石，是功在当代、利在千秋的德政工程，对提高人民综合素质、促进人的全面发展、增强中华民族创新创造活力、实现中华民族伟大复兴具有决定性意义。教育是国之大计、党之大计。 　　习近平强调，党的十八大以来，我们围绕培养什么人、怎样培养人、为谁培养人这一根本问题，全面加强党对教育工作的领导，坚持立德树人，加强学校思想政治工作，推进教育改革，加快补齐教育短板，教育事业中国特色更加鲜明，教育现代化加速推进，教育方面人民群众获得感明显增强，我国教育的国际影响力加快提升，13亿多中国人民的思想道德素质和科学文化素质全面提升。 　　习近平指出，在实践中，我们就教育改革发展提出一系列新理念新思想新观点，主要有以下几个方面，坚持党对教育事业的全面领导，坚持把立德树人作为根本任务，坚持优先发展教育事业，坚持社会主义办学方向，坚持扎根中国大地办教育，坚持以人民为中心发展教育，坚持深化教育改革创新，坚持把服务中华民族伟大复兴作为教育的重要使命，坚持把教师队伍建设作为基础工作。这是我们对我国教育事业规律性认识的深化，来之不易，要始终坚持并不断丰富发展。 　　习近平强调，新时代新形势，改革开放和社会主义现代化建设、促进人的全面发展和社会全面进步对教育和学习提出了新的更高的要求。我们要抓住机遇、超前布局，以更高远的历史站位、更宽广的国际视野、更深邃的战略眼光，对加快推进教育现代化、建设教育强国作出总体部署和战略设计，坚持把优先发展教育事业作为推动党和国家各项事业发展的重要先手棋，不断使教育同党和国家事业发展要求相适应、同人民群众期待相契合、同我国综合国力和国际地位相匹配。 　　习近平指出，培养什么人，是教育的首要问题。我国是中国共产党领导的社会主义国家，这就决定了我们的教育必须把培养社会主义建设者和接班人作为根本任务，培养一代又一代拥护中国共产党领导和我国社会主义制度、立志为中国特色社会主义奋斗终身的有用人才。这是教育工作的根本任务，也是教育现代化的方向目标。 　　习近平强调，要在坚定理想信念上下功夫，教育引导学生树立共产主义远大理想和中国特色社会主义共同理想，增强学生的中国特色社会主义道路自信、理论自信、制度自信、文化自信，立志肩负起民族复兴的时代重任。要在厚植爱国主义情怀上下功夫，让爱国主义精神在学生心中牢牢扎根，教育引导学生热爱和拥护中国共产党，立志听党话、跟党走，立志扎根人民、奉献国家。要在加强品德修养上下功夫，教育引导学生培育和践行社会主义核心价值观，踏踏实实修好品德，成为有大爱大德大情怀的人。要在增长知识见识上下功夫，教育引导学生珍惜学习时光，心无旁骛求知问学，增长见识，丰富学识，沿着求真理、悟道理、明事理的方向前进。要在培养奋斗精神上下功夫，教育引导学生树立高远志向，历练敢于担当、不懈奋斗的精神，具有勇于奋斗的精神状态、乐观向上的人生态度，做到刚健有为、自强不息。要在增强综合素质上下功夫，教育引导学生培养综合能力，培养创新思维。要树立健康第一的教育理念，开齐开足体育课，帮助学生在体育锻炼中享受乐趣、增强体质、健全人格、锤炼意志。要全面加强和改进学校美育，坚持以美育人、以文化人，提高学生审美和人文素养。要在学生中弘扬劳动精神，教育引导学生崇尚劳动、尊重劳动，懂得劳动最光荣、劳动最崇高、劳动最伟大、劳动最美丽的道理，长大后能够辛勤劳动、诚实劳动、创造性劳动。 　　习近平指出，要努力构建德智体美劳全面培养的教育体系，形成更高水平的人才培养体系。要把立德树人融入思想道德教育、文化知识教育、社会实践教育各环节，贯穿基础教育、职业教育、高等教育各领域，学科体系、教学体系、教材体系、管理体系要围绕这个目标来设计，教师要围绕这个目标来教，学生要围绕这个目标来学。凡是不利于实现这个目标的做法都要坚决改过来。 　　习近平强调，建设社会主义现代化强国，对教师队伍建设提出新的更高要求，也对全党全社会尊师重教提出新的更高要求。人民教师无上光荣，每个教师都要珍惜这份光荣，爱惜这份职业，严格要求自己，不断完善自己。做老师就要执着于教书育人，有热爱教育的定力、淡泊名利的坚守。随着办学条件不断改善，教育投入要更多向教师倾斜，不断提高教师待遇，让广大教师安心从教、热心从教。对教师队伍中存在的问题，要坚决依法依纪予以严惩。 　　习近平指出，要深化教育体制改革，健全立德树人落实机制，扭转不科学的教育评价导向，坚决克服唯分数、唯升学、唯文凭、唯论文、唯帽子的顽瘴痼疾，从根本上解决教育评价指挥棒问题。要深化办学体制和教育管理改革，充分激发教育事业发展生机活力。要提升教育服务经济社会发展能力，调整优化高校区域布局、学科结构、专业设置，建立健全学科专业动态调整机制，加快一流大学和一流学科建设，推进产学研协同创新，积极投身实施创新驱动发展战略，着重培养创新型、复合型、应用型人才。要扩大教育开放，同世界一流资源开展高水平合作办学。 　　习近平强调，加强党对教育工作的全面领导，是办好教育的根本保证。教育部门和各级各类学校的党组织要增强“四个意识”、坚定“四个自信”，坚定不移维护党中央权威和集中统一领导，自觉在政治立场、政治方向、政治原则、政治道路上同党中央保持高度一致。各级党委要把教育改革发展纳入议事日程，党政主要负责同志要熟悉教育、关心教育、研究教育。各级各类学校党组织要把抓好学校党建工作作为办学治校的基本功，把党的教育方针全面贯彻到学校工作各方面。思想政治工作是学校各项工作的生命线，各级党委、各级教育主管部门、学校党组织都必须紧紧抓在手上。要精心培养和组织一支会做思想政治工作的政工队伍，把思想政治工作做在日常、做到个人。 　　习近平指出，办好教育事业，家庭、学校、政府、社会都有责任。家庭是人生的第一所学校，家长是孩子的第一任老师，要给孩子讲好“人生第一课”，帮助扣好人生第一粒扣子。教育、妇联等部门要统筹协调社会资源支持服务家庭教育。全社会要担负起青少年成长成才的责任。各级党委和政府要为学校办学安全托底，解决学校后顾之忧，维护老师和学校应有的尊严，保护学生生命安全。 　　李克强在讲话中指出，要认真学习领会和贯彻落实习近平总书记重要讲话精神，以习近平新时代中国特色社会主义思想为指导，准确把握教育事业发展面临的新形势新任务，全面落实教育优先发展战略，在经济社会发展规划上优先安排教育、财政资金投入上优先保障教育、公共资源配置上优先满足教育和人力资源开发需要。坚持改革创新，坚持教育公平，推动教育从规模增长向质量提升转变，促进区域、城乡和各级各类教育均衡发展，以教育现代化支撑国家现代化。要着力补上短板，夯实义务教育这个根基，强化农村特别是贫困地区控辍保学工作，完善城乡统一、重在农村的义务教育经费保障机制，着力改善乡村学校办学条件、提高教学质量，注重运用信息化手段使乡村获得更多优质教育资源，在提速降费、网络建设方面给予特别照顾。把更多教育投入用到加强乡村师资队伍建设上，不折不扣落实现行的补助、奖励和各类保障政策，对符合条件的非在编教师要加快入编、同工同酬。前瞻规划布局城镇学校建设，增强容纳能力，加快实现随迁子女入学待遇同城化。同时，要重视发展学前教育、高中阶段教育和民族教育、特殊教育、继续教育等各类教育。 　　李克强强调，要增强教育服务创新发展能力，培养更多适应高质量发展的各类人才。优化高校区域布局、学科结构、专业设置，坚持以教学为中心，突出创新意识和实践能力，培养更多创新人才、高素质人才。更加重视、充分发挥高校在强化基础研究和原始创新、突破关键核心技术中的重要作用。大力办好职业院校，坚持面向市场、服务发展、促进就业的办学方向，推进产教融合、校企合作，培养更多高技能人才。提高技术技能人才的社会地位和待遇。 　　李克强要求，要深化教育领域“放管服”改革，充分释放教育事业发展生机活力。尊重教育发展规律，充分发挥学校办学主体作用，大幅减少各类检查、评估、评价，加强对办学方向、标准、质量的规范引导，为学校潜心治校办学创造良好环境。积极鼓励社会力量依法兴办教育。鼓励各级各类学校与时俱进创新教育理念和人才培养模式，发展“互联网+教育”，完善吸引优秀人才从事教育的体制机制，提升教师社会地位，让尊师重教蔚然成风。 　　中共中央政治局委员、中央书记处书记，全国人大常委会有关领导同志，国务委员，最高人民法院院长，最高人民检察院检察长，全国政协有关领导同志出席大会。 　　中央教育工作领导小组成员，各省区市和计划单列市、新疆生产建设兵团，中央和国家机关有关部门、有关人民团体，军队有关单位，部分高校负责同志参加大会。','http://paper.people.com.cn/rmrb/html/2018-09/11/nw.D110000renmrb_20180911_2-01.htm',NULL,'2019-12-18 22:41:23',0),(5,'2018中国节','“这个活动太有意义了，不仅可以吃到正宗的中国特色美食，而且还能欣赏中国辉煌灿烂的传统文化。希望能早日去中国看看','文化交流','2018-09-10 00:00:00','人民日报',NULL,NULL,'“这个活动太有意义了，不仅可以吃到正宗的中国特色美食，而且还能欣赏中国辉煌灿烂的传统文化。希望能早日去中国看看。”9月8日，在东京举行的“2018年中国节”活动现场，家住日本埼玉县的中村保彦对本报记者说。 　　为纪念中日和平友好条约缔结40周年，“2018年中国节”9月8日—9日在东京代代木公园举办。本届“2018年中国节”实行委员长、中国驻日本大使程永华表示，“2018年中国节”是一场展示今日中国的盛会，也是一座增进中日两国民众相互理解和友好感情的桥梁。在中日交往史中，民间交流始终是推动两国关系向前发展的不竭动力。相信这一活动将成为中日两国民众加强面对面交流、增进友好感情的绝佳契机。 　　国之交在于民相亲。“近年来中国发展迅速，面貌可谓日新月异，希望日本民众多去中国走走，亲身感受中国迅速发展的脉搏。”“2018年中国节”实行委员会最高顾问、日本前首相福田康夫说，民间友谊是国家交往的基础，希望两国民众能够通过此次活动，进一步加深交流和相互理解。 　　为了让更多日本民众了解中国传统文化，东京中国文化中心从陕西省请来两位师傅，手把手教授捏面人、剪纸等，吸引不少小朋友前来学习。此外，东京中国文化中心工作人员还在现场教授编中国结。安庆市黄梅戏剧院、兰州歌舞剧院等中国地方演出团体精彩的文艺演出，引起现场观众的阵阵掌声。 　　“我非常喜欢中国文化。”家住代代木公园附近的加藤亚好美说，在家门口体验原汁原味的中国文化、品尝正宗的中国美食，没有比这更令人开心的事情。加藤亚好美还清晰地记得1978年第一次去中国的情形。她说，改革开放40年来中国发展迅速，希望有机会多去中国看看。日中两国一衣带水，友好交往的历史源远流长，希望两国永远友好下去。 　　“2018年中国节”受到中日双方各界积极响应和大力支持，致力于中日交流的多个机构和团体负责人出任实行委员，两国外交、文化、旅游等政府部门担任活动后援单位。“2018年中国节”场内设置了百余个展位，通过文艺演出、文化展示、美食品尝、旅游推介等方式向日本民众介绍中国。不少展位前排起了长长的队伍。活动期间还举行了超辣食品比赛、拉面比赛、乒乓球比赛等活动，吸引了包括日本民众、旅日华侨华人在内约15万人参加。 　　日本民众纷纷在社交媒体上分享参加“2018年中国节”的照片，推荐家人和朋友参加。不少日本民众更加了解了中国辉煌灿烂的历史和飞速发展的今天，期盼中日关系更加友好密切。 　　（本报东京9月9日电）','http://paper.people.com.cn/rmrb/html/2018-09/10/nw.D110000renmrb_20180910_4-21.htm',NULL,'2019-12-18 22:41:23',0),(6,'北京市公安局举行港澳台居民居住证首发式','北京市公安局举行港澳台居民居住证首发式','港澳活动，公安局','2019-01-03 18:20:21','中新网',NULL,NULL,'“几天前我才提交了办理居住证的申请，没想到今天就可以拿到证件了。这下子出门办事就方便多了！”拿着手中的“小卡片”，香港青年蔡智恒表情兴奋，难掩领证时心中的喜悦。 　　9月7日，北京市公安局举行港澳台居民居住证首发式。来自香港、澳门、台湾的3名在京青年作为代表，领取了北京市的首批港澳台居民居住证。 　　很高兴成为新北京人 　　早上9时30分左右，记者来到位于朝阳区东三环附近的呼家楼派出所时，这里已是人头攒动，墙上的大屏幕显示着“北京市公安局港澳台居民居住证首发式”几个大字，让活动充满了仪式感。现场的媒体记者们架着“长枪短炮”，准备记录这一有历史意义的画面；公安方面的工作人员或维持秩序，或安排仪式，做着最后的准备。 　　9时50分，北京市公安局的警官宣布：北京市公安局港澳台居民居住证首发式开始！ 　　在主持人介绍完北京市港澳台居民居住证的办理情况后，北京市公安局党委副书记、常务副局长衡晓帆依次为来自港澳台的3名青年颁发了北京市首批港澳台居民居住证。仪式上，衡晓帆依次向他们敬礼、授证、合影，并表达祝福。接过居住证的青年也都向他回礼致敬。 　　为了凸显首批居住证的纪念意义，北京市公安局特地为居住证搭配了一份纪念证书。证书上写着“港澳台居民居住证首发纪念”，并搭配警徽、港澳台三地标志性建筑（香港中银大厦、澳门大三巴牌坊、台北101大楼）的图案。证书中间偏下位置则镶嵌着卡式居住证。 　　乍看之下，居住证与内地（大陆）的二代居民身份证无异，区别在于证件正面的名称字样不同，同时还各自添加了港澳回乡证和台胞证的号码。 　　“我很荣幸能够成为领取北京市第一张港澳台居民居住证的台湾人。现在我只想说，拿了这证，就是新北京人，我是台湾来的北京居民。”随后，郑博宇在微信朋友圈和微博推送了领证的消息和图片，迫不及待地向海峡两岸的朋友们分享喜悦。 　　再也不用排队取票了 　　来自澳门的林蔚妍女士之前在北京读研究生，毕业后因为看好内地发展便留在北京工作。不过，由于之前自己在内地只能使用回乡证，因此曾遇过诸多不便：“以前出去旅游只能住指定的涉外酒店，买高铁票时也要到人工窗口领取才行。我有好几次眼睁睁地看着我乘坐的火车要开走，但我还在人工窗口前排着队。而去年去西藏旅游的时候，因为原有证件酒店不能读取，无法办理入住，我就只能惨兮兮地睡在车上。”但如今，这些问题都迎刃而解。 　　蔡智恒告诉记者，有了居住证后，他就可以用火车站的自助取票机取票了，大大提高了出行效率。“9月底，广深港高铁香港段就要通车了。我希望“十一”假期时可以坐高铁回香港，体验一下沿途的大好风光。” 　　而对于郑博宇来说，用居住证办理信用卡一直是他挂在口头的“第一件最想做的事”，他拿到证件后便立马着手申请。“目前我所居住的公寓和银行有合作项目，办理信用卡后，银行可以帮我一次性缴清全年房租，我再通过免息的分期付款给银行，这样能享受减免1200元的优惠。对我而言，这是居住证带来的直接实惠。” 　　未来快递取证更便民 　　“从9月1日开通办理业务起到9月6日，北京市已有1376人申请办理港澳台居民居住证。”北京市公安局人口管理和基层工作总队副总队长吴克胜对记者说，为了实现居住证的办理、制作和后续使用，北京市公安局调整了户籍资料体系和网络系统，使它们能够接纳、识别港澳台居住证。目前大部分证件还在制作中，将陆续发放给304个受理点，由申请者到场申领。 　　吴克胜表示，未来，北京市公安局将进一步为居住证申请、发放提供便利。比如像开通EMS速递证件业务、网上公安受理申请等，这些服务都在规划中，希望能早日实现。 　　一周以来，全国各地的港澳台居民都争相办理居住证。原本按规定证件需20个工作日才能领取，但部分地区加班加点，几天之内就将首批证件制作完毕并发放。据不完全统计，除北京外，广西、福建、重庆、湖南、贵州、西藏、江苏等地近日也都陆续发放港澳台居民居住证，并为此举行首发仪式。多名港澳台居民受访表示，他们在内地（大陆）的学习、生活、创业、就业等方面将享有更多保障和便利，这让他们有了更多“归属感”。','http://paper.people.com.cn/rmrbhwb/html/2018-09/10/content_1880282.htm',NULL,'2019-12-18 22:53:09',0),(7,'中美经贸摩擦引起了国内外的广泛关注','中美经贸摩擦引起了国内外的广泛关注，国内出现了一些疑虑、慌张，','中美贸易，经济战，民族复兴','2019-01-04 00:00:00','人民日报',NULL,NULL,'当前，中美经贸摩擦引起了国内外的广泛关注，国内出现了一些疑虑、慌张，甚至有人惊呼“狼来了”。在这种情况下，需要我们放宽历史视野，在更高层次上“睁眼看世界”，总结世界强国兴衰的经验教训，认清我国所处的历史方位，正视各种外部挑战，齐心协力把自己的事情办好。 　　一、新兴国家在发展进程中普遍经历了一个关键性阶段 　　随着15世纪地理大发现和新航路的开辟，各大陆日益联为一体，人类历史进入真正意义上的世界史。500年来，一些国家相继崛起，你方唱罢我登场。其中，荷兰、英国和美国先后称雄世界，法国、德国、日本、苏联等国，也曾不止一次地向更高目标发起冲击，但最终没有成功。其间群雄逐鹿，此起彼伏；风云诡谲，步步惊心，呈现出一幅幅兴衰交替的历史画卷。 　　“海上马车夫”荷兰从1609年彻底独立到17世纪中叶成为当时世界强国，用了半个世纪左右。英国在资产阶级革命后迅速发展，到1784年打败老对手荷兰，用了100多年时间。 　　第一次工业革命之后，在科技进步和工业化生产的推动下，大国崛起速度明显加快。美国从1865年结束南北战争到1894年工业总产值跃居世界第一，用了约30年。法国自1789年爆发大革命，到1810年打败欧洲大陆主要对手，成为欧洲强国，用了20年。德国从1871年统一到1913年首次成为世界第二大经济体，用了42年；1938年再次跨入世界强国之列，主要工业指标位居世界第二位，用了20年。日本从1868年实行明治维新，到1905年打败俄国成为世界强国一员，用了不到40年；二战后，日本又经过30多年成为世界第二大经济体。苏联从1917年十月革命到1941年苏德战争爆发，用了不到30年成为世界强国之一；战后重新投入建设，又用了30年时间，到上世纪70年代中期成为与美国抗衡的超级大国。 　　在世界新兴国家由大而强的过程中，都经历了一个关键性阶段。这个将强未强的特殊历史阶段一般为10年左右，在此期间，相关国家面临的风险和挑战较前明显增大，事关兴衰成败。在这方面，英、美是成功的典型，法、德、日、苏则提供了历史教训。 　　英国在1763年击败法国成为欧洲强国，首次骄傲地自称“日不落帝国”，此时与其1784年彻底取代荷兰在世界上的地位之前，存在一个关键性阶段。这期间，英国通过工业革命，创造了“比过去一切时代创造的生产力还要多”的生产力，加快了向工业社会的转型，成为第一个“世界工厂”，为英国进入全盛时期打下了坚实基础。 　　美国在南北战争后积极采取措施缓和南北矛盾，实现国家重建，到1894年成为世界第一大经济体，开始步入关键性阶段。尽管美国在经济体量上占据世界首位，然而其综合实力还不如英国。尤其是，美国国内问题丛生，垄断加剧，腐败横行，社会矛盾尖锐。西奥多·罗斯福就任美国总统后，大力开展以反垄断为主要内容的社会进步主义运动，出台了一系列改革措施，赢得了“托拉斯爆破手”的美誉，为美国问鼎世界铺平了道路。 　　拿破仑于1804年建立法兰西第一帝国，标志着法国进入关键性阶段。但就是这样一位被黑格尔称为“马背上的世界灵魂”“神的存在”的大人物，却犯了一系列战略性错误，特别是1812年贸然发动对俄战争，劳师远袭，铩羽而归，最终于1815年兵败滑铁卢，使法国丧失了向世界强国冲击的机会。德、日类似的事例也一再上演。 　　苏联的教训更为惨痛。在迅速崛起成为超级大国后，苏联领导人犯下了一系列战略性失误，特别是走上军事称霸对抗的错误道路。1979年侵略阿富汗，陷入10年战争的泥潭，最终在这个“帝国坟场”自掘坟墓，撤兵两年后国家即宣告解体。 　　三十年河东，三十年河西。回望大国兴衰历史，一些国家用30年左右时间实现跨越式发展，是一种普遍现象。这个时候达到了一个重要历史节点，此后10年左右是其兴衰成败的关键性阶段，有的成功，有的不成功，也是一种普遍现象。在此期间，如果发展战略选择正确，实力将日益增强，最终会成为世界强国，荷、英、美都是如此；如果选择不正确，出现战略性失误，国家将迅速衰落下去，从而失去进一步发展的历史机遇，法、德、日、苏即是如此。 　　二、遭受打压是新兴国家绕不开的“坎” 　　新兴国家在崛起的关键性阶段，往往会与守成国家发生国家利益的激烈碰撞，无一例外地会受到刻意打压，这是必然遇到的“成长的烦恼”，是发展历程中绕不开的“坎”。 　　英国在崛起过程中先后受到西班牙、荷兰打压。地理大发现后首先成为海上霸主的是西班牙。16世纪后期，英国通过宗教改革激发了民族活力，积极进行海外扩张，与西班牙发生利益冲突。1588年，西班牙派遣“无敌舰队”气势汹汹打上门去，妄图依靠强大的海军力量将英国扼杀于摇篮之中。英国海军以弱胜强，打败西班牙，第一次以欧洲强国地位出现在世界舞台上。此后两国为争夺海上主导权反复较量，双方元气大伤。荷兰乘机崛起，成为海上霸主，垄断了全球贸易的一半。1651年，英国通过《航海条例》，规定进入英国的货物必须由英国商船或货物产地商船运输，次年荷兰即发动了绞杀英国的第一次英荷战争。这时英国正处于资产阶级革命中，凭借新兴资产阶级的锐气，战胜了荷兰。此后100多年时间里，荷兰与英国又进行了三次战争，一直到1780—1784年的第四次英荷战争，英国才彻底战胜了荷兰。 　　法国在发展的关键性阶段同样受到了英国的打压。英国成为世界霸主后，对于挑战其地位的国家毫不手软，典型的是主导反法同盟。针对称霸欧洲大陆的法国，欧洲君主国先后七次组成反法同盟予以围剿，最终于1815年彻底打败法国军队。参加反法同盟的国家时有变化，但英国始终是主要成员，其他国家是为了维护君主制度，而英国则是为了维护霸主地位。 　　美国在崛起过程中也受到了英国的打压。早在美国南北战争期间，英国就趁机图谋分裂美国，乃至幻想重新将美国变为自己的殖民地，于是口头上宣称中立，实际上支持南方，接济南方军火，为南方建造多艘军舰，给北方造成很大困扰和损失。第一次世界大战后，美国首先提出包括成立国际联盟在内的“十四点原则”，实质是在保障世界和平和国际合作的幌子下，建立由美国掌控的国际组织，试图主导世界秩序。用时任美国总统顾问豪斯上校的话说，就是要“按照我们的心愿完成对世界地图的重新绘制”。英国当然洞悉美国图谋，联手法国，百般掣肘，最终迫使美国放弃加入国联。 　　美国成为世界强国后，转而对威胁其地位的国家进行遏制和打压。上世纪80年代，美国对军事强国苏联和经济强国日本进行打压。尽管美国视前者为最大的敌人，视后者为亲密的盟友，但当他们威胁到美国自身地位时，都毫不留情。 　　对苏联，美国的手段可谓无所不用其极：向苏联大力输出西方价值观，进行意识形态渗透，培植“第五纵队”，诱导苏联进行所谓民主改革；同苏联大搞军备竞赛、金融货币战，限制苏联油气出口；挑拨离间苏联各民族之间、各加盟共和国之间的关系，等等。苏联这个超级大国之所以在瞬间轰然倒塌，固然有国内的因素，但来自美国的一套组合拳是主要外部因素。美国中央情报局前雇员彼得·施瓦茨写道：“谈论苏联崩溃而不知道美国秘密战略的作用，就像调查一件神秘突然死亡案子而不考虑谋杀、死亡事件是否存在着特殊反常和预谋一样。” 　　对日本，美国也丝毫没有网开一面、手下留情。上世纪80年代，日本产品充斥全球，对美国贸易大幅顺差，随之而来，大国雄心迅速膨胀，公开叫板美国，招致美国的打压。1985年9月，美国召集五国财长和央行行长会议，签署“广场协议”，逼迫日元升值。之后在不到三年时间里，日元对美元升值达50%，严重打击了日本出口，加之日本应对战略出现失误，导致经济持续低迷，经历了“失去的20年”。日本经济总量从上世纪80年代相当于美国的60%左右，下降到2017年的25%左右。 　　由此可见，新兴国家在发展关键性阶段受到守成国家的打压，也是一个普遍的历史现象。 　　三、中国完全有信心有能力跨过这道“坎” 　　我国经过了30多年改革开放，到2010年成为世界第二大经济体，经过长期努力，中国特色社会主义进入新时代。从世界强国发展规律来看，我国目前正处在爬坡过坎的关键性阶段。在这个阶段受到打压，不是有没有的问题，而是早晚的问题。实际上，自2010年开始，我们遇到的来自外部的挑战和麻烦，都与此有关。当前美国主动挑起的贸易战，就是这种挑战的继续。2017年8月，时任美国白宫首席战略分析师的班农就曾声称，美国在经济上打败中国仅剩5年左右的“窗口期”；他提出，美国与中国之间的经济战争是重中之重，必须集中一切资源打赢这一仗，“如果我们输了，5年以后，最多10年，我们就会达到一个无法挽回的临界点，那时，我们就一点翻盘的机会也没有了”。美国打乱中国发展进程的意图暴露无遗。这种打压也许还有别的花样，但不管怎么样，天塌不下来。对于我们来说，既不要心存侥幸，也不要惊慌失措，最重要的就是从容应对，更加专注地做好我们自己的事情。面对偏见，用行动说话；面对压力，用能力说话。 　　首先，要更加充满信心。这种信心，来自于以习近平同志为核心的党中央的坚强领导，来自于中国特色社会主义巨大的制度优势，来自于改革开放40年来我国经济社会发展取得的举世瞩目的成就。特别是党的十八大以来，党和国家事业取得历史性成就，发生历史性变革，解决了许多长期想解决而没有解决的难题，办成了许多过去想办而没有办成的大事。我们今天受到打压，恰恰说明我国社会主义建设取得了巨大成就，发展态势蒸蒸日上。我们有以习近平同志为核心的党中央的坚强领导，有习近平新时代中国特色社会主义思想的科学指导，这是战胜一切艰难险阻的信心所在、底气所在。在今后前进的道路上，无论出现什么样的外部挑战，我们都要保持定力，按照自己的节奏，办好自己的事情。正如古罗马哲学家奥勒留所讲的：“要像屹立于不断拍打的巨浪之前的礁石，岿然不动，驯服着它周围海浪的狂暴。” 　　其次，要更加增强忧患意识，防止犯战略性、颠覆性错误。前进道路不可能一帆风顺，越是处于发展的关键性阶段，越是要有如履薄冰的谨慎，越是要有居安思危的忧患。道路决定命运。坚持和发展中国特色社会主义是我们的根本利益所在，坚定不移地走中国特色社会主义道路，既不走封闭僵化的老路，也不走改旗易帜的邪路，这是我们付出巨大的学费和代价得出的结论，任何时候都不能动摇。改革开放是决定当代中国命运的关键一招。当今时代，“关起门来朝天过”的日子一去不复返了。我们不能因发展中遇到这样那样的问题而放弃改革开放，也不能因为外部压力，包括美国挑起的贸易摩擦，而改变改革开放的正确方向，不能说你让我改什么我就改什么，你让我放什么我就放什么。在压力面前，一定要有底气，既敢于斗争，又善于斗争，在坚决维护国家自身利益的前提下，务实理性处理好国家间关系。 　　第三，要更加紧密地团结起来。团结出生产力、出战斗力，团结是最大的力量。孙中山先生曾经指出，“中国人如果成一片散沙，是不好的事，我们趁早就要参加水和士敏土（即水泥——引者注），要那些散沙和士敏土彼此结合来成石头，变成坚固的团体”。历史证明，中国共产党成立以后，就成为了团结凝聚中国人民完成反帝反封建的新民主主义革命任务的“士敏土”，成为了中国革命和建设各项事业的主心骨、稳定器和领头人。越是在爬坡过坎的时候，越是在遭受外部遏制打压的时候，就越要紧密团结在以习近平同志为核心的党中央周围，心往一处想、劲往一处使，团结一心，众志成城，奋力前行。 　　中华民族的伟大复兴，中国人民对美好生活的向往，是任何外部力量都阻挡不了的！ 　　青山遮不住，毕竟东流去！','http://paper.people.com.cn/rmrb/html/2018-09/11/nw.D110000renmrb_20180911_1-02.htm',NULL,'2019-12-18 22:53:09',0),(8,'2018中国节','不仅可以吃到正宗的中国特色美食，而且还能欣赏中国辉煌灿烂的传统文化','特色，美食，传统文化','2019-01-05 00:00:00','人民日报',NULL,NULL,'“这个活动太有意义了，不仅可以吃到正宗的中国特色美食，而且还能欣赏中国辉煌灿烂的传统文化。希望能早日去中国看看。”9月8日，在东京举行的“2018年中国节”活动现场，家住日本埼玉县的中村保彦对本报记者说。 　　为纪念中日和平友好条约缔结40周年，“2018年中国节”9月8日—9日在东京代代木公园举办。本届“2018年中国节”实行委员长、中国驻日本大使程永华表示，“2018年中国节”是一场展示今日中国的盛会，也是一座增进中日两国民众相互理解和友好感情的桥梁。在中日交往史中，民间交流始终是推动两国关系向前发展的不竭动力。相信这一活动将成为中日两国民众加强面对面交流、增进友好感情的绝佳契机。 　　国之交在于民相亲。“近年来中国发展迅速，面貌可谓日新月异，希望日本民众多去中国走走，亲身感受中国迅速发展的脉搏。”“2018年中国节”实行委员会最高顾问、日本前首相福田康夫说，民间友谊是国家交往的基础，希望两国民众能够通过此次活动，进一步加深交流和相互理解。 　　为了让更多日本民众了解中国传统文化，东京中国文化中心从陕西省请来两位师傅，手把手教授捏面人、剪纸等，吸引不少小朋友前来学习。此外，东京中国文化中心工作人员还在现场教授编中国结。安庆市黄梅戏剧院、兰州歌舞剧院等中国地方演出团体精彩的文艺演出，引起现场观众的阵阵掌声。 　　“我非常喜欢中国文化。”家住代代木公园附近的加藤亚好美说，在家门口体验原汁原味的中国文化、品尝正宗的中国美食，没有比这更令人开心的事情。加藤亚好美还清晰地记得1978年第一次去中国的情形。她说，改革开放40年来中国发展迅速，希望有机会多去中国看看。日中两国一衣带水，友好交往的历史源远流长，希望两国永远友好下去。 　　“2018年中国节”受到中日双方各界积极响应和大力支持，致力于中日交流的多个机构和团体负责人出任实行委员，两国外交、文化、旅游等政府部门担任活动后援单位。“2018年中国节”场内设置了百余个展位，通过文艺演出、文化展示、美食品尝、旅游推介等方式向日本民众介绍中国。不少展位前排起了长长的队伍。活动期间还举行了超辣食品比赛、拉面比赛、乒乓球比赛等活动，吸引了包括日本民众、旅日华侨华人在内约15万人参加。 　　日本民众纷纷在社交媒体上分享参加“2018年中国节”的照片，推荐家人和朋友参加。不少日本民众更加了解了中国辉煌灿烂的历史和飞速发展的今天，期盼中日关系更加友好密切。','http://paper.people.com.cn/rmrb/html/2018-09/10/nw.D110000renmrb_20180910_4-21.htm',NULL,'2019-12-18 22:53:09',0),(9,'举办国际儿童青少年戏剧协会','首次在中国举办的国际儿童青少年戏剧协会（ASSITEJ）艺术交流大会，','儿童，艺术，大会','2019-01-06 00:00:00','新华社',NULL,NULL,'近日，首次在中国举办的国际儿童青少年戏剧协会（ASSITEJ）艺术交流大会，在北京圆满落幕。来自五大洲的近200名青少年儿童戏剧领域的艺术家、专家、教育工作者以及院团代表，在8月19日至21日的3天里，碰撞文化理念，探讨合作方式，共谋青少年儿童戏剧未来。众多国外儿童戏剧工作者来到中国，对中国儿童戏剧有了更深入的了解，对中国文化有了更强烈的感知，与此同时，他们也将国际青少年儿童戏剧理念带进中国，开阔了中国儿童戏剧工作者的视野。 　　在“东西方文化对儿童戏剧观的影响”的主题对话中，来自中国、日本、德国、丹麦等国家的儿童剧工作者分享了不同的儿童剧发展理念。ASSITEJ日本中心主席、编剧、导演藤田朝介绍，与中国儿童剧基本在剧院上演不同，日本儿童剧70%是学校公演，20%由学生母亲们主持的团体组织上演，10%在公共场所演出。与中国儿童剧相同的是，日本的儿童剧也十分重视剧作的故事情节和教育意义。 　　丹麦国际儿童青少年戏剧中心CEO、丹麦国际儿童青少年戏剧节主席亨利·科勒表示，在丹麦没有固定的剧院提供儿童剧演出，而是把艺术交给孩子，让剧团去学校巡演。丹麦大概有150个儿童剧团。丹麦儿童剧的题材比较宽泛，比如虐待、离婚等，与孩子产生联系的题材都有所呈现。 　　随着科技发展与文明进步，孩子们接受的文艺样式越来越多，儿童戏剧必然要找到独特的审美特点，才能独秀于丰富多彩的文艺样式中。在各国儿童剧工作者心目中，戏剧始终处于不可替代的地位。 　　中国儿童艺术剧院院长、ASSITEJ中国中心主席尹晓东表示，戏剧是了解世界、参悟人生的重要形式，戏剧可以告诉我们过去的事情、过去的人是什么样子。ASSITEJ德国中心副主席、ASSITEJ执委斯达芬·菲尔斯说，生活中总会有某个时刻打动你，但换一个时空就不会了，因此走进剧场，把自己沉浸在戏剧氛围中，这种感动是其他艺术样式不能给予的。 　　“儿童剧作为戏剧的一个重要组成部分，与创作者的文化背景息息相关，儿童戏剧无疑也受到各国文化的影响。应当坚持‘求同存异，异质互补’的原则，用多元开放的眼光观照世界文化，去建设一个更加开放、更加合理、更具人类性的儿童戏剧。”各国儿童剧工作者对东西文化的认识达成一致共识，引起在场所有人的共鸣和响应。“虽然东西方戏剧观略有差异，但对于戏剧的热情和探索却是一以贯之的。相信这次艺术交流大会的成功举行，将更好地促进中国以及世界各国儿童戏剧事业不断向前发展。”尹晓东表示。','http://paper.people.com.cn/rmrbhwb/html/2018-09/10/content_1880322.htm',NULL,'2019-12-18 22:53:09',0);
/*!40000 ALTER TABLE `rs_textlibrary_data_22` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rs_textlibrary_data_23`
--

DROP TABLE IF EXISTS `rs_textlibrary_data_23`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rs_textlibrary_data_23` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `summary` text,
  `keywords` varchar(255) DEFAULT NULL,
  `publish_time` datetime DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `page` varchar(20) DEFAULT NULL,
  `content` text,
  `url` varchar(512) DEFAULT NULL,
  `publish_source` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `is_delete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rs_textlibrary_data_23`
--

LOCK TABLES `rs_textlibrary_data_23` WRITE;
/*!40000 ALTER TABLE `rs_textlibrary_data_23` DISABLE KEYS */;
INSERT INTO `rs_textlibrary_data_23` VALUES (1,'俄军总参谋长批评北约单方面部署欧洲反导系统','反导系统','反导 俄罗斯','2018-08-02 00:00:00','新华网莫斯科',NULL,NULL,'新华网莫斯科10月10日电 (记者刘恺) 俄罗斯国防部第一副部长兼武装力量总参谋长尼古拉·马卡罗夫10日在莫斯科与北约高官进行会晤，批评北约单方面加紧部署欧洲马卡罗夫在与到访的北约最高军事长官、美国海军上将詹姆斯·斯塔夫里迪斯会见后说，在部署欧洲反导系统问题上，北约一方面表示将与俄方展开谈判，另一方面却单方面加紧在欧洲部署反导装置。他强调，北约单方面行动不会对地区安全和稳定产生积极作用。　　马卡罗夫说，俄罗斯与北约既有共识也有分歧，俄方希望北约在认识到目前存在的问题后能增进双方互信。　　斯塔夫里迪斯表示，北约方面将认真听取俄方意见，他也会向美国领导人转达俄方相关表态。　　本月5日，北约秘书长拉斯穆森宣布，西班牙已同意美国在其境内部署4艘宙斯盾驱逐舰，以此作为北约反导系统组成部分，俄方对此表示强烈反对。除西班牙外，土耳其、罗马尼亚和波兰三国也已明确宣布加入北约反导系统。　　去年11月，北约领导人在里斯本峰会上决定建立覆盖欧洲的反导系统，美国在欧洲的反导计划是其重要组成部分。美国和北约邀请俄罗斯参与欧洲反导系统建设，但相关谈判至今毫无进展。','baidu.com',NULL,'2019-12-19 11:18:46',1),(2,'贾庆林出席朝鲜建国60周年庆祝宴会　','朝鲜建国','贾庆林','2018-08-02 00:00:00','新华网北京',NULL,NULL,'新华网北京9月8日电 (记者徐松)中共中央政治局常委、全国政协主席贾庆林8日晚出席朝鲜驻华大使崔镇洙举行的朝鲜建国60周年庆祝宴会并发表讲话。　　贾庆林代表中国党、政府和人民对朝鲜建国60周年表示热烈祝贺。他说，60年来，在金日成主席、金正日总书记的领导下，朝鲜人民在经济建设、社会发展以及对外交往等各个方面取得了显著成就。我们对此感到由衷的高兴。祝愿朝鲜人民在国家建设方面不断取得新的更大成就。　　贾庆林说，中朝两国是山水相连的友好邻邦。中朝关系保持着良好发展势头。我们愿同朝方一道，继续本着“继承传统、面向未来、睦邻友好、加强合作”的精神，推动中朝关系继续向前发展。　　崔镇洙在宴会上致辞，表示朝方高度重视朝中友好合作关系，愿同中方一道，以明年两国建交60周年为契机，办好“朝中友好年”活动，推动两国关系进一步发展。崔镇洙还对北京奥运会取得圆满成功表示祝贺。','baidu.com',NULL,'2019-12-19 11:18:46',1),(3,'俄军总参谋长批评北约单方面部署欧洲反导系统','反导系统','反导 俄罗斯','2018-08-02 00:00:00','新华网莫斯科',NULL,NULL,'新华网莫斯科10月10日电 (记者刘恺) 俄罗斯国防部第一副部长兼武装力量总参谋长尼古拉·马卡罗夫10日在莫斯科与北约高官进行会晤，批评北约单方面加紧部署欧洲马卡罗夫在与到访的北约最高军事长官、美国海军上将詹姆斯·斯塔夫里迪斯会见后说，在部署欧洲反导系统问题上，北约一方面表示将与俄方展开谈判，另一方面却单方面加紧在欧洲部署反导装置。他强调，北约单方面行动不会对地区安全和稳定产生积极作用。　　马卡罗夫说，俄罗斯与北约既有共识也有分歧，俄方希望北约在认识到目前存在的问题后能增进双方互信。　　斯塔夫里迪斯表示，北约方面将认真听取俄方意见，他也会向美国领导人转达俄方相关表态。　　本月5日，北约秘书长拉斯穆森宣布，西班牙已同意美国在其境内部署4艘宙斯盾驱逐舰，以此作为北约反导系统组成部分，俄方对此表示强烈反对。除西班牙外，土耳其、罗马尼亚和波兰三国也已明确宣布加入北约反导系统。　　去年11月，北约领导人在里斯本峰会上决定建立覆盖欧洲的反导系统，美国在欧洲的反导计划是其重要组成部分。美国和北约邀请俄罗斯参与欧洲反导系统建设，但相关谈判至今毫无进展。','baidu.com',NULL,'2019-12-19 11:18:51',1),(4,'贾庆林出席朝鲜建国60周年庆祝宴会　','朝鲜建国','贾庆林','2018-08-02 00:00:00','新华网北京',NULL,NULL,'新华网北京9月8日电 (记者徐松)中共中央政治局常委、全国政协主席贾庆林8日晚出席朝鲜驻华大使崔镇洙举行的朝鲜建国60周年庆祝宴会并发表讲话。　　贾庆林代表中国党、政府和人民对朝鲜建国60周年表示热烈祝贺。他说，60年来，在金日成主席、金正日总书记的领导下，朝鲜人民在经济建设、社会发展以及对外交往等各个方面取得了显著成就。我们对此感到由衷的高兴。祝愿朝鲜人民在国家建设方面不断取得新的更大成就。　　贾庆林说，中朝两国是山水相连的友好邻邦。中朝关系保持着良好发展势头。我们愿同朝方一道，继续本着“继承传统、面向未来、睦邻友好、加强合作”的精神，推动中朝关系继续向前发展。　　崔镇洙在宴会上致辞，表示朝方高度重视朝中友好合作关系，愿同中方一道，以明年两国建交60周年为契机，办好“朝中友好年”活动，推动两国关系进一步发展。崔镇洙还对北京奥运会取得圆满成功表示祝贺。','baidu.com',NULL,'2019-12-19 11:18:51',1);
/*!40000 ALTER TABLE `rs_textlibrary_data_23` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rs_textlibrary_data_24`
--

DROP TABLE IF EXISTS `rs_textlibrary_data_24`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rs_textlibrary_data_24` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `summary` text,
  `keywords` varchar(255) DEFAULT NULL,
  `publish_time` datetime DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `page` varchar(20) DEFAULT NULL,
  `content` text,
  `url` varchar(512) DEFAULT NULL,
  `publish_source` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `is_delete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rs_textlibrary_data_24`
--

LOCK TABLES `rs_textlibrary_data_24` WRITE;
/*!40000 ALTER TABLE `rs_textlibrary_data_24` DISABLE KEYS */;
INSERT INTO `rs_textlibrary_data_24` VALUES (1,'俄军总参谋长批评北约单方面部署欧洲反导系统','反导系统','反导 俄罗斯','2018-08-02 00:00:00','新华网莫斯科',NULL,NULL,'新华网莫斯科10月10日电 (记者刘恺) 俄罗斯国防部第一副部长兼武装力量总参谋长尼古拉·马卡罗夫10日在莫斯科与北约高官进行会晤，批评北约单方面加紧部署欧洲马卡罗夫在与到访的北约最高军事长官、美国海军上将詹姆斯·斯塔夫里迪斯会见后说，在部署欧洲反导系统问题上，北约一方面表示将与俄方展开谈判，另一方面却单方面加紧在欧洲部署反导装置。他强调，北约单方面行动不会对地区安全和稳定产生积极作用。　　马卡罗夫说，俄罗斯与北约既有共识也有分歧，俄方希望北约在认识到目前存在的问题后能增进双方互信。　　斯塔夫里迪斯表示，北约方面将认真听取俄方意见，他也会向美国领导人转达俄方相关表态。　　本月5日，北约秘书长拉斯穆森宣布，西班牙已同意美国在其境内部署4艘宙斯盾驱逐舰，以此作为北约反导系统组成部分，俄方对此表示强烈反对。除西班牙外，土耳其、罗马尼亚和波兰三国也已明确宣布加入北约反导系统。　　去年11月，北约领导人在里斯本峰会上决定建立覆盖欧洲的反导系统，美国在欧洲的反导计划是其重要组成部分。美国和北约邀请俄罗斯参与欧洲反导系统建设，但相关谈判至今毫无进展。','baidu.com',NULL,'2019-12-19 11:47:49',1),(2,'贾庆林出席朝鲜建国60周年庆祝宴会　','朝鲜建国','贾庆林','2018-08-02 00:00:00','新华网北京',NULL,NULL,'新华网北京9月8日电 (记者徐松)中共中央政治局常委、全国政协主席贾庆林8日晚出席朝鲜驻华大使崔镇洙举行的朝鲜建国60周年庆祝宴会并发表讲话。　　贾庆林代表中国党、政府和人民对朝鲜建国60周年表示热烈祝贺。他说，60年来，在金日成主席、金正日总书记的领导下，朝鲜人民在经济建设、社会发展以及对外交往等各个方面取得了显著成就。我们对此感到由衷的高兴。祝愿朝鲜人民在国家建设方面不断取得新的更大成就。　　贾庆林说，中朝两国是山水相连的友好邻邦。中朝关系保持着良好发展势头。我们愿同朝方一道，继续本着“继承传统、面向未来、睦邻友好、加强合作”的精神，推动中朝关系继续向前发展。　　崔镇洙在宴会上致辞，表示朝方高度重视朝中友好合作关系，愿同中方一道，以明年两国建交60周年为契机，办好“朝中友好年”活动，推动两国关系进一步发展。崔镇洙还对北京奥运会取得圆满成功表示祝贺。','baidu.com',NULL,'2019-12-19 11:47:49',1);
/*!40000 ALTER TABLE `rs_textlibrary_data_24` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rs_textlibrary_data_25`
--

DROP TABLE IF EXISTS `rs_textlibrary_data_25`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rs_textlibrary_data_25` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `summary` text,
  `keywords` varchar(255) DEFAULT NULL,
  `publish_time` datetime DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `page` varchar(20) DEFAULT NULL,
  `content` text,
  `url` varchar(512) DEFAULT NULL,
  `publish_source` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `is_delete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rs_textlibrary_data_25`
--

LOCK TABLES `rs_textlibrary_data_25` WRITE;
/*!40000 ALTER TABLE `rs_textlibrary_data_25` DISABLE KEYS */;
INSERT INTO `rs_textlibrary_data_25` VALUES (1,'胡锦涛等九常委出席中国工会第15次大会',' 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体','十五大 全国总工会新一届领导集体','2018-08-02 00:00:00','中新网',NULL,NULL,'中新网10月17日电 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体。　　胡锦涛、吴邦国、温家宝、贾庆林、李长春、习近平、李克强、贺国强、周永康等党和国家领导人出席今天的开幕大会。习近平代表中共中央致祝词。　　王兆国将在今天的大会上作全国工会十五大报告。　　上午九时，王兆国宣布中国工会第十五次全国代表大会开幕。今天的大会应到代表1800名，特邀代表289名，实到代表1776名，缺席24名，符合法定人数。　　本次大会将总结过去五年的工会工作，明确今后五年工会工作的主要任务，并将选举产生全国总工会新一届领导集体。','http://baidu.com',NULL,'2019-12-19 13:38:19',1),(2,'江西省樟树市','走进江西省樟树市店下镇大汗村大汗村小组，只见村落依山而建，村前阡陌纵横，村内石溪潺潺……扑面而来的山野气息，让人忘却了夏日炎热','江西  小组','2018-09-09 00:00:00','新华社',NULL,NULL,'走进江西省樟树市店下镇大汗村大汗村小组，只见村落依山而建，村前阡陌纵横，村内石溪潺潺……扑面而来的山野气息，让人忘却了夏日炎热。 　　“先到屋里坐一坐，吃点饭再去爬山。”下午4点，在一处绿色掩映的农家院落前，主人徐国平热情地迎了上来。一会儿工夫，老徐就端来了几碗绿茶以及花生、咸萝卜等小吃。 　　大汗村小组位于玉华山脚下，距樟树城区30多公里，海拔600多米，森林覆盖率达90%以上。每到节假日，许多游客前来观光休闲、登山越野。“以前咱山里人靠山吃山，以砍竹子、编竹篓过日子，一年到头也赚不了几个钱。”徐国平说，如今，村民们利用好山好水发展乡村旅游，收入翻了几番，每年收入不下10万元。 　　大汗村小组是樟树市秀美乡村建设精品示范点，政府先后投资1000万元，聘请专业设计公司进行规划建设，完善进村道路、给排水设施，整治村容村貌，利用村庄生态与文化旅游资源，盘活梯田、竹林、石溪等景观，修葺步行道路、栈道，增设休闲景观设施，提升村庄整体风貌环境。徐国平说：“村里不仅修通了水泥路，喝上了自来水，还实现了有线电视和网络的全覆盖，现在农家乐的生意越来越好了。” 　　“我们村像徐国平这样的不在少数，村里还有五六户在筹办农家乐或民宿旅舍。”大汗村党支部书记徐七根说，现在大汗村小组每年接待游客10多万人次，旅游综合收入上千万元。','http://paper.people.com.cn/rmrb/html/2018-09/09/nw.D110000renmrb_20180909_3-11.htm',NULL,'2019-12-19 13:38:19',1),(3,'胡锦涛等九常委出席中国工会第15次大会',' 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体','十五大 全国总工会新一届领导集体','2018-08-02 00:00:00','中新网',NULL,NULL,'中新网10月17日电 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体。　　胡锦涛、吴邦国、温家宝、贾庆林、李长春、习近平、李克强、贺国强、周永康等党和国家领导人出席今天的开幕大会。习近平代表中共中央致祝词。　　王兆国将在今天的大会上作全国工会十五大报告。　　上午九时，王兆国宣布中国工会第十五次全国代表大会开幕。今天的大会应到代表1800名，特邀代表289名，实到代表1776名，缺席24名，符合法定人数。　　本次大会将总结过去五年的工会工作，明确今后五年工会工作的主要任务，并将选举产生全国总工会新一届领导集体。','http://baidu.com',NULL,'2019-12-19 13:38:36',1),(4,'江西省樟树市','走进江西省樟树市店下镇大汗村大汗村小组，只见村落依山而建，村前阡陌纵横，村内石溪潺潺……扑面而来的山野气息，让人忘却了夏日炎热','江西  小组','2018-09-09 00:00:00','新华社',NULL,NULL,'走进江西省樟树市店下镇大汗村大汗村小组，只见村落依山而建，村前阡陌纵横，村内石溪潺潺……扑面而来的山野气息，让人忘却了夏日炎热。 　　“先到屋里坐一坐，吃点饭再去爬山。”下午4点，在一处绿色掩映的农家院落前，主人徐国平热情地迎了上来。一会儿工夫，老徐就端来了几碗绿茶以及花生、咸萝卜等小吃。 　　大汗村小组位于玉华山脚下，距樟树城区30多公里，海拔600多米，森林覆盖率达90%以上。每到节假日，许多游客前来观光休闲、登山越野。“以前咱山里人靠山吃山，以砍竹子、编竹篓过日子，一年到头也赚不了几个钱。”徐国平说，如今，村民们利用好山好水发展乡村旅游，收入翻了几番，每年收入不下10万元。 　　大汗村小组是樟树市秀美乡村建设精品示范点，政府先后投资1000万元，聘请专业设计公司进行规划建设，完善进村道路、给排水设施，整治村容村貌，利用村庄生态与文化旅游资源，盘活梯田、竹林、石溪等景观，修葺步行道路、栈道，增设休闲景观设施，提升村庄整体风貌环境。徐国平说：“村里不仅修通了水泥路，喝上了自来水，还实现了有线电视和网络的全覆盖，现在农家乐的生意越来越好了。” 　　“我们村像徐国平这样的不在少数，村里还有五六户在筹办农家乐或民宿旅舍。”大汗村党支部书记徐七根说，现在大汗村小组每年接待游客10多万人次，旅游综合收入上千万元。','http://paper.people.com.cn/rmrb/html/2018-09/09/nw.D110000renmrb_20180909_3-11.htm',NULL,'2019-12-19 13:38:36',1),(5,'胡锦涛等九常委出席中国工会第15次大会',' 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体','十五大 全国总工会新一届领导集体','2018-08-02 00:00:00','中新网',NULL,NULL,'中新网10月17日电 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体。　　胡锦涛、吴邦国、温家宝、贾庆林、李长春、习近平、李克强、贺国强、周永康等党和国家领导人出席今天的开幕大会。习近平代表中共中央致祝词。　　王兆国将在今天的大会上作全国工会十五大报告。　　上午九时，王兆国宣布中国工会第十五次全国代表大会开幕。今天的大会应到代表1800名，特邀代表289名，实到代表1776名，缺席24名，符合法定人数。　　本次大会将总结过去五年的工会工作，明确今后五年工会工作的主要任务，并将选举产生全国总工会新一届领导集体。','http://baidu.com',NULL,'2019-12-19 13:39:10',1),(6,'江西省樟树市','走进江西省樟树市店下镇大汗村大汗村小组，只见村落依山而建，村前阡陌纵横，村内石溪潺潺……扑面而来的山野气息，让人忘却了夏日炎热','江西  小组','2018-09-09 00:00:00','新华社',NULL,NULL,'走进江西省樟树市店下镇大汗村大汗村小组，只见村落依山而建，村前阡陌纵横，村内石溪潺潺……扑面而来的山野气息，让人忘却了夏日炎热。 　　“先到屋里坐一坐，吃点饭再去爬山。”下午4点，在一处绿色掩映的农家院落前，主人徐国平热情地迎了上来。一会儿工夫，老徐就端来了几碗绿茶以及花生、咸萝卜等小吃。 　　大汗村小组位于玉华山脚下，距樟树城区30多公里，海拔600多米，森林覆盖率达90%以上。每到节假日，许多游客前来观光休闲、登山越野。“以前咱山里人靠山吃山，以砍竹子、编竹篓过日子，一年到头也赚不了几个钱。”徐国平说，如今，村民们利用好山好水发展乡村旅游，收入翻了几番，每年收入不下10万元。 　　大汗村小组是樟树市秀美乡村建设精品示范点，政府先后投资1000万元，聘请专业设计公司进行规划建设，完善进村道路、给排水设施，整治村容村貌，利用村庄生态与文化旅游资源，盘活梯田、竹林、石溪等景观，修葺步行道路、栈道，增设休闲景观设施，提升村庄整体风貌环境。徐国平说：“村里不仅修通了水泥路，喝上了自来水，还实现了有线电视和网络的全覆盖，现在农家乐的生意越来越好了。” 　　“我们村像徐国平这样的不在少数，村里还有五六户在筹办农家乐或民宿旅舍。”大汗村党支部书记徐七根说，现在大汗村小组每年接待游客10多万人次，旅游综合收入上千万元。','http://paper.people.com.cn/rmrb/html/2018-09/09/nw.D110000renmrb_20180909_3-11.htm',NULL,'2019-12-19 13:39:10',1),(7,'胡锦涛等九常委出席中国工会第15次大会',' 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体','十五大 全国总工会新一届领导集体','2018-08-02 00:00:00','中新网',NULL,NULL,'中新网10月17日电 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体。　　胡锦涛、吴邦国、温家宝、贾庆林、李长春、习近平、李克强、贺国强、周永康等党和国家领导人出席今天的开幕大会。习近平代表中共中央致祝词。　　王兆国将在今天的大会上作全国工会十五大报告。　　上午九时，王兆国宣布中国工会第十五次全国代表大会开幕。今天的大会应到代表1800名，特邀代表289名，实到代表1776名，缺席24名，符合法定人数。　　本次大会将总结过去五年的工会工作，明确今后五年工会工作的主要任务，并将选举产生全国总工会新一届领导集体。','http://baidu.com',NULL,'2019-12-19 13:45:36',1),(8,'江西省樟树市','走进江西省樟树市店下镇大汗村大汗村小组，只见村落依山而建，村前阡陌纵横，村内石溪潺潺……扑面而来的山野气息，让人忘却了夏日炎热','江西  小组','2018-09-09 00:00:00','新华社',NULL,NULL,'走进江西省樟树市店下镇大汗村大汗村小组，只见村落依山而建，村前阡陌纵横，村内石溪潺潺……扑面而来的山野气息，让人忘却了夏日炎热。 　　“先到屋里坐一坐，吃点饭再去爬山。”下午4点，在一处绿色掩映的农家院落前，主人徐国平热情地迎了上来。一会儿工夫，老徐就端来了几碗绿茶以及花生、咸萝卜等小吃。 　　大汗村小组位于玉华山脚下，距樟树城区30多公里，海拔600多米，森林覆盖率达90%以上。每到节假日，许多游客前来观光休闲、登山越野。“以前咱山里人靠山吃山，以砍竹子、编竹篓过日子，一年到头也赚不了几个钱。”徐国平说，如今，村民们利用好山好水发展乡村旅游，收入翻了几番，每年收入不下10万元。 　　大汗村小组是樟树市秀美乡村建设精品示范点，政府先后投资1000万元，聘请专业设计公司进行规划建设，完善进村道路、给排水设施，整治村容村貌，利用村庄生态与文化旅游资源，盘活梯田、竹林、石溪等景观，修葺步行道路、栈道，增设休闲景观设施，提升村庄整体风貌环境。徐国平说：“村里不仅修通了水泥路，喝上了自来水，还实现了有线电视和网络的全覆盖，现在农家乐的生意越来越好了。” 　　“我们村像徐国平这样的不在少数，村里还有五六户在筹办农家乐或民宿旅舍。”大汗村党支部书记徐七根说，现在大汗村小组每年接待游客10多万人次，旅游综合收入上千万元。','http://paper.people.com.cn/rmrb/html/2018-09/09/nw.D110000renmrb_20180909_3-11.htm',NULL,'2019-12-19 13:45:36',1),(9,'胡锦涛等九常委出席中国工会第15次大会',' 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体','十五大 全国总工会新一届领导集体','2018-08-02 00:00:00','中新网',NULL,NULL,'中新网10月17日电 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体。　　胡锦涛、吴邦国、温家宝、贾庆林、李长春、习近平、李克强、贺国强、周永康等党和国家领导人出席今天的开幕大会。习近平代表中共中央致祝词。　　王兆国将在今天的大会上作全国工会十五大报告。　　上午九时，王兆国宣布中国工会第十五次全国代表大会开幕。今天的大会应到代表1800名，特邀代表289名，实到代表1776名，缺席24名，符合法定人数。　　本次大会将总结过去五年的工会工作，明确今后五年工会工作的主要任务，并将选举产生全国总工会新一届领导集体。','http://baidu.com',NULL,'2019-12-19 13:45:36',1),(10,'江西省樟树市','走进江西省樟树市店下镇大汗村大汗村小组，只见村落依山而建，村前阡陌纵横，村内石溪潺潺……扑面而来的山野气息，让人忘却了夏日炎热','江西  小组','2018-09-09 00:00:00','新华社',NULL,NULL,'走进江西省樟树市店下镇大汗村大汗村小组，只见村落依山而建，村前阡陌纵横，村内石溪潺潺……扑面而来的山野气息，让人忘却了夏日炎热。 　　“先到屋里坐一坐，吃点饭再去爬山。”下午4点，在一处绿色掩映的农家院落前，主人徐国平热情地迎了上来。一会儿工夫，老徐就端来了几碗绿茶以及花生、咸萝卜等小吃。 　　大汗村小组位于玉华山脚下，距樟树城区30多公里，海拔600多米，森林覆盖率达90%以上。每到节假日，许多游客前来观光休闲、登山越野。“以前咱山里人靠山吃山，以砍竹子、编竹篓过日子，一年到头也赚不了几个钱。”徐国平说，如今，村民们利用好山好水发展乡村旅游，收入翻了几番，每年收入不下10万元。 　　大汗村小组是樟树市秀美乡村建设精品示范点，政府先后投资1000万元，聘请专业设计公司进行规划建设，完善进村道路、给排水设施，整治村容村貌，利用村庄生态与文化旅游资源，盘活梯田、竹林、石溪等景观，修葺步行道路、栈道，增设休闲景观设施，提升村庄整体风貌环境。徐国平说：“村里不仅修通了水泥路，喝上了自来水，还实现了有线电视和网络的全覆盖，现在农家乐的生意越来越好了。” 　　“我们村像徐国平这样的不在少数，村里还有五六户在筹办农家乐或民宿旅舍。”大汗村党支部书记徐七根说，现在大汗村小组每年接待游客10多万人次，旅游综合收入上千万元。','http://paper.people.com.cn/rmrb/html/2018-09/09/nw.D110000renmrb_20180909_3-11.htm',NULL,'2019-12-19 13:45:36',1),(11,'胡锦涛等九常委出席中国工会第15次大会',' 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体','十五大 全国总工会新一届领导集体','2018-08-02 00:00:00','中新网',NULL,NULL,'中新网10月17日电 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体。　　胡锦涛、吴邦国、温家宝、贾庆林、李长春、习近平、李克强、贺国强、周永康等党和国家领导人出席今天的开幕大会。习近平代表中共中央致祝词。　　王兆国将在今天的大会上作全国工会十五大报告。　　上午九时，王兆国宣布中国工会第十五次全国代表大会开幕。今天的大会应到代表1800名，特邀代表289名，实到代表1776名，缺席24名，符合法定人数。　　本次大会将总结过去五年的工会工作，明确今后五年工会工作的主要任务，并将选举产生全国总工会新一届领导集体。','http://baidu.com',NULL,'2019-12-19 13:45:36',1),(12,'江西省樟树市','走进江西省樟树市店下镇大汗村大汗村小组，只见村落依山而建，村前阡陌纵横，村内石溪潺潺……扑面而来的山野气息，让人忘却了夏日炎热','江西  小组','2018-09-09 00:00:00','新华社',NULL,NULL,'走进江西省樟树市店下镇大汗村大汗村小组，只见村落依山而建，村前阡陌纵横，村内石溪潺潺……扑面而来的山野气息，让人忘却了夏日炎热。 　　“先到屋里坐一坐，吃点饭再去爬山。”下午4点，在一处绿色掩映的农家院落前，主人徐国平热情地迎了上来。一会儿工夫，老徐就端来了几碗绿茶以及花生、咸萝卜等小吃。 　　大汗村小组位于玉华山脚下，距樟树城区30多公里，海拔600多米，森林覆盖率达90%以上。每到节假日，许多游客前来观光休闲、登山越野。“以前咱山里人靠山吃山，以砍竹子、编竹篓过日子，一年到头也赚不了几个钱。”徐国平说，如今，村民们利用好山好水发展乡村旅游，收入翻了几番，每年收入不下10万元。 　　大汗村小组是樟树市秀美乡村建设精品示范点，政府先后投资1000万元，聘请专业设计公司进行规划建设，完善进村道路、给排水设施，整治村容村貌，利用村庄生态与文化旅游资源，盘活梯田、竹林、石溪等景观，修葺步行道路、栈道，增设休闲景观设施，提升村庄整体风貌环境。徐国平说：“村里不仅修通了水泥路，喝上了自来水，还实现了有线电视和网络的全覆盖，现在农家乐的生意越来越好了。” 　　“我们村像徐国平这样的不在少数，村里还有五六户在筹办农家乐或民宿旅舍。”大汗村党支部书记徐七根说，现在大汗村小组每年接待游客10多万人次，旅游综合收入上千万元。','http://paper.people.com.cn/rmrb/html/2018-09/09/nw.D110000renmrb_20180909_3-11.htm',NULL,'2019-12-19 13:45:36',1),(13,'胡锦涛等九常委出席中国工会第15次大会',' 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体','十五大 全国总工会新一届领导集体','2018-08-02 00:00:00','中新网',NULL,NULL,'中新网10月17日电 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体。　　胡锦涛、吴邦国、温家宝、贾庆林、李长春、习近平、李克强、贺国强、周永康等党和国家领导人出席今天的开幕大会。习近平代表中共中央致祝词。　　王兆国将在今天的大会上作全国工会十五大报告。　　上午九时，王兆国宣布中国工会第十五次全国代表大会开幕。今天的大会应到代表1800名，特邀代表289名，实到代表1776名，缺席24名，符合法定人数。　　本次大会将总结过去五年的工会工作，明确今后五年工会工作的主要任务，并将选举产生全国总工会新一届领导集体。','http://baidu.com',NULL,'2019-12-19 13:45:36',1),(14,'胡锦涛等九常委出席中国工会第15次大会',' 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体','十五大 全国总工会新一届领导集体','2018-08-02 00:00:00','中新网',NULL,NULL,'中新网10月17日电 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体。　　胡锦涛、吴邦国、温家宝、贾庆林、李长春、习近平、李克强、贺国强、周永康等党和国家领导人出席今天的开幕大会。习近平代表中共中央致祝词。　　王兆国将在今天的大会上作全国工会十五大报告。　　上午九时，王兆国宣布中国工会第十五次全国代表大会开幕。今天的大会应到代表1800名，特邀代表289名，实到代表1776名，缺席24名，符合法定人数。　　本次大会将总结过去五年的工会工作，明确今后五年工会工作的主要任务，并将选举产生全国总工会新一届领导集体。','http://baidu.com',NULL,'2019-12-19 13:45:37',1),(15,'胡锦涛等九常委出席中国工会第15次大会',' 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体','十五大 全国总工会新一届领导集体','2018-08-02 00:00:00','中新网',NULL,NULL,'中新网10月17日电 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体。　　胡锦涛、吴邦国、温家宝、贾庆林、李长春、习近平、李克强、贺国强、周永康等党和国家领导人出席今天的开幕大会。习近平代表中共中央致祝词。　　王兆国将在今天的大会上作全国工会十五大报告。　　上午九时，王兆国宣布中国工会第十五次全国代表大会开幕。今天的大会应到代表1800名，特邀代表289名，实到代表1776名，缺席24名，符合法定人数。　　本次大会将总结过去五年的工会工作，明确今后五年工会工作的主要任务，并将选举产生全国总工会新一届领导集体。','http://baidu.com',NULL,'2019-12-19 13:45:38',1),(16,'胡锦涛等九常委出席中国工会第15次大会',' 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体','十五大 全国总工会新一届领导集体','2018-08-02 00:00:00','中新网',NULL,NULL,'中新网10月17日电 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体。　　胡锦涛、吴邦国、温家宝、贾庆林、李长春、习近平、李克强、贺国强、周永康等党和国家领导人出席今天的开幕大会。习近平代表中共中央致祝词。　　王兆国将在今天的大会上作全国工会十五大报告。　　上午九时，王兆国宣布中国工会第十五次全国代表大会开幕。今天的大会应到代表1800名，特邀代表289名，实到代表1776名，缺席24名，符合法定人数。　　本次大会将总结过去五年的工会工作，明确今后五年工会工作的主要任务，并将选举产生全国总工会新一届领导集体。','http://baidu.com',NULL,'2019-12-19 13:45:38',1),(17,'胡锦涛等九常委出席中国工会第15次大会',' 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体','十五大 全国总工会新一届领导集体','2018-08-02 00:00:00','中新网',NULL,NULL,'中新网10月17日电 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体。　　胡锦涛、吴邦国、温家宝、贾庆林、李长春、习近平、李克强、贺国强、周永康等党和国家领导人出席今天的开幕大会。习近平代表中共中央致祝词。　　王兆国将在今天的大会上作全国工会十五大报告。　　上午九时，王兆国宣布中国工会第十五次全国代表大会开幕。今天的大会应到代表1800名，特邀代表289名，实到代表1776名，缺席24名，符合法定人数。　　本次大会将总结过去五年的工会工作，明确今后五年工会工作的主要任务，并将选举产生全国总工会新一届领导集体。','http://baidu.com',NULL,'2019-12-19 13:45:38',1),(18,'胡锦涛等九常委出席中国工会第15次大会',' 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体','十五大 全国总工会新一届领导集体','2018-08-02 00:00:00','中新网',NULL,NULL,'中新网10月17日电 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体。　　胡锦涛、吴邦国、温家宝、贾庆林、李长春、习近平、李克强、贺国强、周永康等党和国家领导人出席今天的开幕大会。习近平代表中共中央致祝词。　　王兆国将在今天的大会上作全国工会十五大报告。　　上午九时，王兆国宣布中国工会第十五次全国代表大会开幕。今天的大会应到代表1800名，特邀代表289名，实到代表1776名，缺席24名，符合法定人数。　　本次大会将总结过去五年的工会工作，明确今后五年工会工作的主要任务，并将选举产生全国总工会新一届领导集体。','http://baidu.com',NULL,'2019-12-19 13:45:38',1),(19,'胡锦涛等九常委出席中国工会第15次大会',' 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体','十五大 全国总工会新一届领导集体','2018-08-02 00:00:00','中新网',NULL,NULL,'中新网10月17日电 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体。　　胡锦涛、吴邦国、温家宝、贾庆林、李长春、习近平、李克强、贺国强、周永康等党和国家领导人出席今天的开幕大会。习近平代表中共中央致祝词。　　王兆国将在今天的大会上作全国工会十五大报告。　　上午九时，王兆国宣布中国工会第十五次全国代表大会开幕。今天的大会应到代表1800名，特邀代表289名，实到代表1776名，缺席24名，符合法定人数。　　本次大会将总结过去五年的工会工作，明确今后五年工会工作的主要任务，并将选举产生全国总工会新一届领导集体。','http://baidu.com',NULL,'2019-12-19 13:45:38',1),(20,'胡锦涛等九常委出席中国工会第15次大会',' 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体','十五大 全国总工会新一届领导集体','2018-08-02 00:00:00','中新网',NULL,NULL,'中新网10月17日电 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体。　　胡锦涛、吴邦国、温家宝、贾庆林、李长春、习近平、李克强、贺国强、周永康等党和国家领导人出席今天的开幕大会。习近平代表中共中央致祝词。　　王兆国将在今天的大会上作全国工会十五大报告。　　上午九时，王兆国宣布中国工会第十五次全国代表大会开幕。今天的大会应到代表1800名，特邀代表289名，实到代表1776名，缺席24名，符合法定人数。　　本次大会将总结过去五年的工会工作，明确今后五年工会工作的主要任务，并将选举产生全国总工会新一届领导集体。','http://baidu.com',NULL,'2019-12-19 13:45:39',1),(21,'胡锦涛等九常委出席中国工会第15次大会',' 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体','十五大 全国总工会新一届领导集体','2018-08-02 00:00:00','中新网',NULL,NULL,'中新网10月17日电 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体。　　胡锦涛、吴邦国、温家宝、贾庆林、李长春、习近平、李克强、贺国强、周永康等党和国家领导人出席今天的开幕大会。习近平代表中共中央致祝词。　　王兆国将在今天的大会上作全国工会十五大报告。　　上午九时，王兆国宣布中国工会第十五次全国代表大会开幕。今天的大会应到代表1800名，特邀代表289名，实到代表1776名，缺席24名，符合法定人数。　　本次大会将总结过去五年的工会工作，明确今后五年工会工作的主要任务，并将选举产生全国总工会新一届领导集体。','http://baidu.com',NULL,'2019-12-19 13:45:39',1),(22,'胡锦涛等九常委出席中国工会第15次大会',' 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体','十五大 全国总工会新一届领导集体','2018-08-02 00:00:00','中新网',NULL,NULL,'中新网10月17日电 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体。　　胡锦涛、吴邦国、温家宝、贾庆林、李长春、习近平、李克强、贺国强、周永康等党和国家领导人出席今天的开幕大会。习近平代表中共中央致祝词。　　王兆国将在今天的大会上作全国工会十五大报告。　　上午九时，王兆国宣布中国工会第十五次全国代表大会开幕。今天的大会应到代表1800名，特邀代表289名，实到代表1776名，缺席24名，符合法定人数。　　本次大会将总结过去五年的工会工作，明确今后五年工会工作的主要任务，并将选举产生全国总工会新一届领导集体。','http://baidu.com',NULL,'2019-12-19 14:43:13',1),(23,'江西省樟树市','走进江西省樟树市店下镇大汗村大汗村小组，只见村落依山而建，村前阡陌纵横，村内石溪潺潺……扑面而来的山野气息，让人忘却了夏日炎热','江西  小组','2018-09-09 00:00:00','新华社',NULL,NULL,'走进江西省樟树市店下镇大汗村大汗村小组，只见村落依山而建，村前阡陌纵横，村内石溪潺潺……扑面而来的山野气息，让人忘却了夏日炎热。 　　“先到屋里坐一坐，吃点饭再去爬山。”下午4点，在一处绿色掩映的农家院落前，主人徐国平热情地迎了上来。一会儿工夫，老徐就端来了几碗绿茶以及花生、咸萝卜等小吃。 　　大汗村小组位于玉华山脚下，距樟树城区30多公里，海拔600多米，森林覆盖率达90%以上。每到节假日，许多游客前来观光休闲、登山越野。“以前咱山里人靠山吃山，以砍竹子、编竹篓过日子，一年到头也赚不了几个钱。”徐国平说，如今，村民们利用好山好水发展乡村旅游，收入翻了几番，每年收入不下10万元。 　　大汗村小组是樟树市秀美乡村建设精品示范点，政府先后投资1000万元，聘请专业设计公司进行规划建设，完善进村道路、给排水设施，整治村容村貌，利用村庄生态与文化旅游资源，盘活梯田、竹林、石溪等景观，修葺步行道路、栈道，增设休闲景观设施，提升村庄整体风貌环境。徐国平说：“村里不仅修通了水泥路，喝上了自来水，还实现了有线电视和网络的全覆盖，现在农家乐的生意越来越好了。” 　　“我们村像徐国平这样的不在少数，村里还有五六户在筹办农家乐或民宿旅舍。”大汗村党支部书记徐七根说，现在大汗村小组每年接待游客10多万人次，旅游综合收入上千万元。','http://paper.people.com.cn/rmrb/html/2018-09/09/nw.D110000renmrb_20180909_3-11.htm',NULL,'2019-12-19 14:43:13',1),(24,'胡锦涛等九常委出席中国工会第15次大会',' 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体','十五大 全国总工会新一届领导集体','2018-08-02 00:00:00','中新网',NULL,NULL,'中新网10月17日电 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体。　　胡锦涛、吴邦国、温家宝、贾庆林、李长春、习近平、李克强、贺国强、周永康等党和国家领导人出席今天的开幕大会。习近平代表中共中央致祝词。　　王兆国将在今天的大会上作全国工会十五大报告。　　上午九时，王兆国宣布中国工会第十五次全国代表大会开幕。今天的大会应到代表1800名，特邀代表289名，实到代表1776名，缺席24名，符合法定人数。　　本次大会将总结过去五年的工会工作，明确今后五年工会工作的主要任务，并将选举产生全国总工会新一届领导集体。','http://baidu.com',NULL,'2019-12-19 14:43:19',1),(25,'江西省樟树市','走进江西省樟树市店下镇大汗村大汗村小组，只见村落依山而建，村前阡陌纵横，村内石溪潺潺……扑面而来的山野气息，让人忘却了夏日炎热','江西  小组','2018-09-09 00:00:00','新华社',NULL,NULL,'走进江西省樟树市店下镇大汗村大汗村小组，只见村落依山而建，村前阡陌纵横，村内石溪潺潺……扑面而来的山野气息，让人忘却了夏日炎热。 　　“先到屋里坐一坐，吃点饭再去爬山。”下午4点，在一处绿色掩映的农家院落前，主人徐国平热情地迎了上来。一会儿工夫，老徐就端来了几碗绿茶以及花生、咸萝卜等小吃。 　　大汗村小组位于玉华山脚下，距樟树城区30多公里，海拔600多米，森林覆盖率达90%以上。每到节假日，许多游客前来观光休闲、登山越野。“以前咱山里人靠山吃山，以砍竹子、编竹篓过日子，一年到头也赚不了几个钱。”徐国平说，如今，村民们利用好山好水发展乡村旅游，收入翻了几番，每年收入不下10万元。 　　大汗村小组是樟树市秀美乡村建设精品示范点，政府先后投资1000万元，聘请专业设计公司进行规划建设，完善进村道路、给排水设施，整治村容村貌，利用村庄生态与文化旅游资源，盘活梯田、竹林、石溪等景观，修葺步行道路、栈道，增设休闲景观设施，提升村庄整体风貌环境。徐国平说：“村里不仅修通了水泥路，喝上了自来水，还实现了有线电视和网络的全覆盖，现在农家乐的生意越来越好了。” 　　“我们村像徐国平这样的不在少数，村里还有五六户在筹办农家乐或民宿旅舍。”大汗村党支部书记徐七根说，现在大汗村小组每年接待游客10多万人次，旅游综合收入上千万元。','http://paper.people.com.cn/rmrb/html/2018-09/09/nw.D110000renmrb_20180909_3-11.htm',NULL,'2019-12-19 14:43:19',1),(26,'胡锦涛等九常委出席中国工会第15次大会',' 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体','十五大 全国总工会新一届领导集体','2018-08-02 00:00:00','中新网',NULL,NULL,'中新网10月17日电 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体。　　胡锦涛、吴邦国、温家宝、贾庆林、李长春、习近平、李克强、贺国强、周永康等党和国家领导人出席今天的开幕大会。习近平代表中共中央致祝词。　　王兆国将在今天的大会上作全国工会十五大报告。　　上午九时，王兆国宣布中国工会第十五次全国代表大会开幕。今天的大会应到代表1800名，特邀代表289名，实到代表1776名，缺席24名，符合法定人数。　　本次大会将总结过去五年的工会工作，明确今后五年工会工作的主要任务，并将选举产生全国总工会新一届领导集体。','http://baidu.com',NULL,'2019-12-19 14:43:20',1),(27,'江西省樟树市','走进江西省樟树市店下镇大汗村大汗村小组，只见村落依山而建，村前阡陌纵横，村内石溪潺潺……扑面而来的山野气息，让人忘却了夏日炎热','江西  小组','2018-09-09 00:00:00','新华社',NULL,NULL,'走进江西省樟树市店下镇大汗村大汗村小组，只见村落依山而建，村前阡陌纵横，村内石溪潺潺……扑面而来的山野气息，让人忘却了夏日炎热。 　　“先到屋里坐一坐，吃点饭再去爬山。”下午4点，在一处绿色掩映的农家院落前，主人徐国平热情地迎了上来。一会儿工夫，老徐就端来了几碗绿茶以及花生、咸萝卜等小吃。 　　大汗村小组位于玉华山脚下，距樟树城区30多公里，海拔600多米，森林覆盖率达90%以上。每到节假日，许多游客前来观光休闲、登山越野。“以前咱山里人靠山吃山，以砍竹子、编竹篓过日子，一年到头也赚不了几个钱。”徐国平说，如今，村民们利用好山好水发展乡村旅游，收入翻了几番，每年收入不下10万元。 　　大汗村小组是樟树市秀美乡村建设精品示范点，政府先后投资1000万元，聘请专业设计公司进行规划建设，完善进村道路、给排水设施，整治村容村貌，利用村庄生态与文化旅游资源，盘活梯田、竹林、石溪等景观，修葺步行道路、栈道，增设休闲景观设施，提升村庄整体风貌环境。徐国平说：“村里不仅修通了水泥路，喝上了自来水，还实现了有线电视和网络的全覆盖，现在农家乐的生意越来越好了。” 　　“我们村像徐国平这样的不在少数，村里还有五六户在筹办农家乐或民宿旅舍。”大汗村党支部书记徐七根说，现在大汗村小组每年接待游客10多万人次，旅游综合收入上千万元。','http://paper.people.com.cn/rmrb/html/2018-09/09/nw.D110000renmrb_20180909_3-11.htm',NULL,'2019-12-19 14:43:20',1),(28,'胡锦涛等九常委出席中国工会第15次大会',' 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体','十五大 全国总工会新一届领导集体','2018-08-02 00:00:00','中新网',NULL,NULL,'中新网10月17日电 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体。　　胡锦涛、吴邦国、温家宝、贾庆林、李长春、习近平、李克强、贺国强、周永康等党和国家领导人出席今天的开幕大会。习近平代表中共中央致祝词。　　王兆国将在今天的大会上作全国工会十五大报告。　　上午九时，王兆国宣布中国工会第十五次全国代表大会开幕。今天的大会应到代表1800名，特邀代表289名，实到代表1776名，缺席24名，符合法定人数。　　本次大会将总结过去五年的工会工作，明确今后五年工会工作的主要任务，并将选举产生全国总工会新一届领导集体。','http://baidu.com',NULL,'2019-12-19 14:43:20',1),(29,'江西省樟树市','走进江西省樟树市店下镇大汗村大汗村小组，只见村落依山而建，村前阡陌纵横，村内石溪潺潺……扑面而来的山野气息，让人忘却了夏日炎热','江西  小组','2018-09-09 00:00:00','新华社',NULL,NULL,'走进江西省樟树市店下镇大汗村大汗村小组，只见村落依山而建，村前阡陌纵横，村内石溪潺潺……扑面而来的山野气息，让人忘却了夏日炎热。 　　“先到屋里坐一坐，吃点饭再去爬山。”下午4点，在一处绿色掩映的农家院落前，主人徐国平热情地迎了上来。一会儿工夫，老徐就端来了几碗绿茶以及花生、咸萝卜等小吃。 　　大汗村小组位于玉华山脚下，距樟树城区30多公里，海拔600多米，森林覆盖率达90%以上。每到节假日，许多游客前来观光休闲、登山越野。“以前咱山里人靠山吃山，以砍竹子、编竹篓过日子，一年到头也赚不了几个钱。”徐国平说，如今，村民们利用好山好水发展乡村旅游，收入翻了几番，每年收入不下10万元。 　　大汗村小组是樟树市秀美乡村建设精品示范点，政府先后投资1000万元，聘请专业设计公司进行规划建设，完善进村道路、给排水设施，整治村容村貌，利用村庄生态与文化旅游资源，盘活梯田、竹林、石溪等景观，修葺步行道路、栈道，增设休闲景观设施，提升村庄整体风貌环境。徐国平说：“村里不仅修通了水泥路，喝上了自来水，还实现了有线电视和网络的全覆盖，现在农家乐的生意越来越好了。” 　　“我们村像徐国平这样的不在少数，村里还有五六户在筹办农家乐或民宿旅舍。”大汗村党支部书记徐七根说，现在大汗村小组每年接待游客10多万人次，旅游综合收入上千万元。','http://paper.people.com.cn/rmrb/html/2018-09/09/nw.D110000renmrb_20180909_3-11.htm',NULL,'2019-12-19 14:43:20',1),(30,'胡锦涛等九常委出席中国工会第15次大会',' 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体','十五大 全国总工会新一届领导集体','2018-08-02 00:00:00','中新网',NULL,NULL,'中新网10月17日电 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体。　　胡锦涛、吴邦国、温家宝、贾庆林、李长春、习近平、李克强、贺国强、周永康等党和国家领导人出席今天的开幕大会。习近平代表中共中央致祝词。　　王兆国将在今天的大会上作全国工会十五大报告。　　上午九时，王兆国宣布中国工会第十五次全国代表大会开幕。今天的大会应到代表1800名，特邀代表289名，实到代表1776名，缺席24名，符合法定人数。　　本次大会将总结过去五年的工会工作，明确今后五年工会工作的主要任务，并将选举产生全国总工会新一届领导集体。','http://baidu.com',NULL,'2019-12-19 14:43:20',1),(31,'江西省樟树市','走进江西省樟树市店下镇大汗村大汗村小组，只见村落依山而建，村前阡陌纵横，村内石溪潺潺……扑面而来的山野气息，让人忘却了夏日炎热','江西  小组','2018-09-09 00:00:00','新华社',NULL,NULL,'走进江西省樟树市店下镇大汗村大汗村小组，只见村落依山而建，村前阡陌纵横，村内石溪潺潺……扑面而来的山野气息，让人忘却了夏日炎热。 　　“先到屋里坐一坐，吃点饭再去爬山。”下午4点，在一处绿色掩映的农家院落前，主人徐国平热情地迎了上来。一会儿工夫，老徐就端来了几碗绿茶以及花生、咸萝卜等小吃。 　　大汗村小组位于玉华山脚下，距樟树城区30多公里，海拔600多米，森林覆盖率达90%以上。每到节假日，许多游客前来观光休闲、登山越野。“以前咱山里人靠山吃山，以砍竹子、编竹篓过日子，一年到头也赚不了几个钱。”徐国平说，如今，村民们利用好山好水发展乡村旅游，收入翻了几番，每年收入不下10万元。 　　大汗村小组是樟树市秀美乡村建设精品示范点，政府先后投资1000万元，聘请专业设计公司进行规划建设，完善进村道路、给排水设施，整治村容村貌，利用村庄生态与文化旅游资源，盘活梯田、竹林、石溪等景观，修葺步行道路、栈道，增设休闲景观设施，提升村庄整体风貌环境。徐国平说：“村里不仅修通了水泥路，喝上了自来水，还实现了有线电视和网络的全覆盖，现在农家乐的生意越来越好了。” 　　“我们村像徐国平这样的不在少数，村里还有五六户在筹办农家乐或民宿旅舍。”大汗村党支部书记徐七根说，现在大汗村小组每年接待游客10多万人次，旅游综合收入上千万元。','http://paper.people.com.cn/rmrb/html/2018-09/09/nw.D110000renmrb_20180909_3-11.htm',NULL,'2019-12-19 14:43:20',1),(32,'胡锦涛等九常委出席中国工会第15次大会',' 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体','十五大 全国总工会新一届领导集体','2018-08-02 00:00:00','中新网',NULL,NULL,'中新网10月17日电 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体。　　胡锦涛、吴邦国、温家宝、贾庆林、李长春、习近平、李克强、贺国强、周永康等党和国家领导人出席今天的开幕大会。习近平代表中共中央致祝词。　　王兆国将在今天的大会上作全国工会十五大报告。　　上午九时，王兆国宣布中国工会第十五次全国代表大会开幕。今天的大会应到代表1800名，特邀代表289名，实到代表1776名，缺席24名，符合法定人数。　　本次大会将总结过去五年的工会工作，明确今后五年工会工作的主要任务，并将选举产生全国总工会新一届领导集体。','http://baidu.com',NULL,'2019-12-19 14:43:20',1),(33,'江西省樟树市','走进江西省樟树市店下镇大汗村大汗村小组，只见村落依山而建，村前阡陌纵横，村内石溪潺潺……扑面而来的山野气息，让人忘却了夏日炎热','江西  小组','2018-09-09 00:00:00','新华社',NULL,NULL,'走进江西省樟树市店下镇大汗村大汗村小组，只见村落依山而建，村前阡陌纵横，村内石溪潺潺……扑面而来的山野气息，让人忘却了夏日炎热。 　　“先到屋里坐一坐，吃点饭再去爬山。”下午4点，在一处绿色掩映的农家院落前，主人徐国平热情地迎了上来。一会儿工夫，老徐就端来了几碗绿茶以及花生、咸萝卜等小吃。 　　大汗村小组位于玉华山脚下，距樟树城区30多公里，海拔600多米，森林覆盖率达90%以上。每到节假日，许多游客前来观光休闲、登山越野。“以前咱山里人靠山吃山，以砍竹子、编竹篓过日子，一年到头也赚不了几个钱。”徐国平说，如今，村民们利用好山好水发展乡村旅游，收入翻了几番，每年收入不下10万元。 　　大汗村小组是樟树市秀美乡村建设精品示范点，政府先后投资1000万元，聘请专业设计公司进行规划建设，完善进村道路、给排水设施，整治村容村貌，利用村庄生态与文化旅游资源，盘活梯田、竹林、石溪等景观，修葺步行道路、栈道，增设休闲景观设施，提升村庄整体风貌环境。徐国平说：“村里不仅修通了水泥路，喝上了自来水，还实现了有线电视和网络的全覆盖，现在农家乐的生意越来越好了。” 　　“我们村像徐国平这样的不在少数，村里还有五六户在筹办农家乐或民宿旅舍。”大汗村党支部书记徐七根说，现在大汗村小组每年接待游客10多万人次，旅游综合收入上千万元。','http://paper.people.com.cn/rmrb/html/2018-09/09/nw.D110000renmrb_20180909_3-11.htm',NULL,'2019-12-19 14:43:20',1),(34,'胡锦涛等九常委出席中国工会第15次大会',' 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体','十五大 全国总工会新一届领导集体','2018-08-02 00:00:00','中新网',NULL,NULL,'中新网10月17日电 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体。　　胡锦涛、吴邦国、温家宝、贾庆林、李长春、习近平、李克强、贺国强、周永康等党和国家领导人出席今天的开幕大会。习近平代表中共中央致祝词。　　王兆国将在今天的大会上作全国工会十五大报告。　　上午九时，王兆国宣布中国工会第十五次全国代表大会开幕。今天的大会应到代表1800名，特邀代表289名，实到代表1776名，缺席24名，符合法定人数。　　本次大会将总结过去五年的工会工作，明确今后五年工会工作的主要任务，并将选举产生全国总工会新一届领导集体。','http://baidu.com',NULL,'2019-12-19 14:43:20',1),(35,'胡锦涛等九常委出席中国工会第15次大会',' 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体','十五大 全国总工会新一届领导集体','2018-08-02 00:00:00','中新网',NULL,NULL,'中新网10月17日电 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体。　　胡锦涛、吴邦国、温家宝、贾庆林、李长春、习近平、李克强、贺国强、周永康等党和国家领导人出席今天的开幕大会。习近平代表中共中央致祝词。　　王兆国将在今天的大会上作全国工会十五大报告。　　上午九时，王兆国宣布中国工会第十五次全国代表大会开幕。今天的大会应到代表1800名，特邀代表289名，实到代表1776名，缺席24名，符合法定人数。　　本次大会将总结过去五年的工会工作，明确今后五年工会工作的主要任务，并将选举产生全国总工会新一届领导集体。','http://baidu.com',NULL,'2019-12-19 14:43:21',1),(36,'胡锦涛等九常委出席中国工会第15次大会',' 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体','十五大 全国总工会新一届领导集体','2018-08-02 00:00:00','中新网',NULL,NULL,'中新网10月17日电 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体。　　胡锦涛、吴邦国、温家宝、贾庆林、李长春、习近平、李克强、贺国强、周永康等党和国家领导人出席今天的开幕大会。习近平代表中共中央致祝词。　　王兆国将在今天的大会上作全国工会十五大报告。　　上午九时，王兆国宣布中国工会第十五次全国代表大会开幕。今天的大会应到代表1800名，特邀代表289名，实到代表1776名，缺席24名，符合法定人数。　　本次大会将总结过去五年的工会工作，明确今后五年工会工作的主要任务，并将选举产生全国总工会新一届领导集体。','http://baidu.com',NULL,'2019-12-19 14:43:21',1),(37,'胡锦涛等九常委出席中国工会第15次大会',' 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体','十五大 全国总工会新一届领导集体','2018-08-02 00:00:00','中新网',NULL,NULL,'中新网10月17日电 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体。　　胡锦涛、吴邦国、温家宝、贾庆林、李长春、习近平、李克强、贺国强、周永康等党和国家领导人出席今天的开幕大会。习近平代表中共中央致祝词。　　王兆国将在今天的大会上作全国工会十五大报告。　　上午九时，王兆国宣布中国工会第十五次全国代表大会开幕。今天的大会应到代表1800名，特邀代表289名，实到代表1776名，缺席24名，符合法定人数。　　本次大会将总结过去五年的工会工作，明确今后五年工会工作的主要任务，并将选举产生全国总工会新一届领导集体。','http://baidu.com',NULL,'2019-12-19 14:43:21',1),(38,'胡锦涛等九常委出席中国工会第15次大会',' 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体','十五大 全国总工会新一届领导集体','2018-08-02 00:00:00','中新网',NULL,NULL,'中新网10月17日电 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体。　　胡锦涛、吴邦国、温家宝、贾庆林、李长春、习近平、李克强、贺国强、周永康等党和国家领导人出席今天的开幕大会。习近平代表中共中央致祝词。　　王兆国将在今天的大会上作全国工会十五大报告。　　上午九时，王兆国宣布中国工会第十五次全国代表大会开幕。今天的大会应到代表1800名，特邀代表289名，实到代表1776名，缺席24名，符合法定人数。　　本次大会将总结过去五年的工会工作，明确今后五年工会工作的主要任务，并将选举产生全国总工会新一届领导集体。','http://baidu.com',NULL,'2019-12-19 14:43:21',1),(39,'胡锦涛等九常委出席中国工会第15次大会',' 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体','十五大 全国总工会新一届领导集体','2018-08-02 00:00:00','中新网',NULL,NULL,'中新网10月17日电 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体。　　胡锦涛、吴邦国、温家宝、贾庆林、李长春、习近平、李克强、贺国强、周永康等党和国家领导人出席今天的开幕大会。习近平代表中共中央致祝词。　　王兆国将在今天的大会上作全国工会十五大报告。　　上午九时，王兆国宣布中国工会第十五次全国代表大会开幕。今天的大会应到代表1800名，特邀代表289名，实到代表1776名，缺席24名，符合法定人数。　　本次大会将总结过去五年的工会工作，明确今后五年工会工作的主要任务，并将选举产生全国总工会新一届领导集体。','http://baidu.com',NULL,'2019-12-19 14:43:21',1),(40,'胡锦涛等九常委出席中国工会第15次大会',' 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体','十五大 全国总工会新一届领导集体','2018-08-02 00:00:00','中新网',NULL,NULL,'中新网10月17日电 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体。　　胡锦涛、吴邦国、温家宝、贾庆林、李长春、习近平、李克强、贺国强、周永康等党和国家领导人出席今天的开幕大会。习近平代表中共中央致祝词。　　王兆国将在今天的大会上作全国工会十五大报告。　　上午九时，王兆国宣布中国工会第十五次全国代表大会开幕。今天的大会应到代表1800名，特邀代表289名，实到代表1776名，缺席24名，符合法定人数。　　本次大会将总结过去五年的工会工作，明确今后五年工会工作的主要任务，并将选举产生全国总工会新一届领导集体。','http://baidu.com',NULL,'2019-12-19 14:43:21',1),(41,'胡锦涛等九常委出席中国工会第15次大会',' 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体','十五大 全国总工会新一届领导集体','2018-08-02 00:00:00','中新网',NULL,NULL,'中新网10月17日电 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体。　　胡锦涛、吴邦国、温家宝、贾庆林、李长春、习近平、李克强、贺国强、周永康等党和国家领导人出席今天的开幕大会。习近平代表中共中央致祝词。　　王兆国将在今天的大会上作全国工会十五大报告。　　上午九时，王兆国宣布中国工会第十五次全国代表大会开幕。今天的大会应到代表1800名，特邀代表289名，实到代表1776名，缺席24名，符合法定人数。　　本次大会将总结过去五年的工会工作，明确今后五年工会工作的主要任务，并将选举产生全国总工会新一届领导集体。','http://baidu.com',NULL,'2019-12-19 14:43:22',1),(42,'胡锦涛等九常委出席中国工会第15次大会',' 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体','十五大 全国总工会新一届领导集体','2018-08-02 00:00:00','中新网',NULL,NULL,'中新网10月17日电 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体。　　胡锦涛、吴邦国、温家宝、贾庆林、李长春、习近平、李克强、贺国强、周永康等党和国家领导人出席今天的开幕大会。习近平代表中共中央致祝词。　　王兆国将在今天的大会上作全国工会十五大报告。　　上午九时，王兆国宣布中国工会第十五次全国代表大会开幕。今天的大会应到代表1800名，特邀代表289名，实到代表1776名，缺席24名，符合法定人数。　　本次大会将总结过去五年的工会工作，明确今后五年工会工作的主要任务，并将选举产生全国总工会新一届领导集体。','http://baidu.com',NULL,'2019-12-19 14:43:22',1),(43,'胡锦涛等九常委出席中国工会第15次大会',' 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体','十五大 全国总工会新一届领导集体','2018-08-02 00:00:00','中新网',NULL,NULL,'中新网10月17日电 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体。　　胡锦涛、吴邦国、温家宝、贾庆林、李长春、习近平、李克强、贺国强、周永康等党和国家领导人出席今天的开幕大会。习近平代表中共中央致祝词。　　王兆国将在今天的大会上作全国工会十五大报告。　　上午九时，王兆国宣布中国工会第十五次全国代表大会开幕。今天的大会应到代表1800名，特邀代表289名，实到代表1776名，缺席24名，符合法定人数。　　本次大会将总结过去五年的工会工作，明确今后五年工会工作的主要任务，并将选举产生全国总工会新一届领导集体。','http://baidu.com',NULL,'2019-12-19 14:43:22',1),(44,'胡锦涛等九常委出席中国工会第15次大会',' 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体','十五大 全国总工会新一届领导集体','2018-08-02 00:00:00','中新网',NULL,NULL,'中新网10月17日电 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体。　　胡锦涛、吴邦国、温家宝、贾庆林、李长春、习近平、李克强、贺国强、周永康等党和国家领导人出席今天的开幕大会。习近平代表中共中央致祝词。　　王兆国将在今天的大会上作全国工会十五大报告。　　上午九时，王兆国宣布中国工会第十五次全国代表大会开幕。今天的大会应到代表1800名，特邀代表289名，实到代表1776名，缺席24名，符合法定人数。　　本次大会将总结过去五年的工会工作，明确今后五年工会工作的主要任务，并将选举产生全国总工会新一届领导集体。','http://baidu.com',NULL,'2019-12-19 14:43:22',1),(45,'胡锦涛等九常委出席中国工会第15次大会',' 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体','十五大 全国总工会新一届领导集体','2018-08-02 00:00:00','中新网',NULL,NULL,'中新网10月17日电 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体。　　胡锦涛、吴邦国、温家宝、贾庆林、李长春、习近平、李克强、贺国强、周永康等党和国家领导人出席今天的开幕大会。习近平代表中共中央致祝词。　　王兆国将在今天的大会上作全国工会十五大报告。　　上午九时，王兆国宣布中国工会第十五次全国代表大会开幕。今天的大会应到代表1800名，特邀代表289名，实到代表1776名，缺席24名，符合法定人数。　　本次大会将总结过去五年的工会工作，明确今后五年工会工作的主要任务，并将选举产生全国总工会新一届领导集体。','http://baidu.com',NULL,'2019-12-19 14:43:22',1),(46,'胡锦涛等九常委出席中国工会第15次大会',' 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体','十五大 全国总工会新一届领导集体','2018-08-02 00:00:00','中新网',NULL,NULL,'中新网10月17日电 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体。　　胡锦涛、吴邦国、温家宝、贾庆林、李长春、习近平、李克强、贺国强、周永康等党和国家领导人出席今天的开幕大会。习近平代表中共中央致祝词。　　王兆国将在今天的大会上作全国工会十五大报告。　　上午九时，王兆国宣布中国工会第十五次全国代表大会开幕。今天的大会应到代表1800名，特邀代表289名，实到代表1776名，缺席24名，符合法定人数。　　本次大会将总结过去五年的工会工作，明确今后五年工会工作的主要任务，并将选举产生全国总工会新一届领导集体。','http://baidu.com',NULL,'2019-12-19 14:43:22',1),(47,'胡锦涛等九常委出席中国工会第15次大会',' 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体','十五大 全国总工会新一届领导集体','2018-08-02 00:00:00','中新网',NULL,NULL,'中新网10月17日电 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体。　　胡锦涛、吴邦国、温家宝、贾庆林、李长春、习近平、李克强、贺国强、周永康等党和国家领导人出席今天的开幕大会。习近平代表中共中央致祝词。　　王兆国将在今天的大会上作全国工会十五大报告。　　上午九时，王兆国宣布中国工会第十五次全国代表大会开幕。今天的大会应到代表1800名，特邀代表289名，实到代表1776名，缺席24名，符合法定人数。　　本次大会将总结过去五年的工会工作，明确今后五年工会工作的主要任务，并将选举产生全国总工会新一届领导集体。','http://baidu.com',NULL,'2019-12-19 14:50:57',1),(48,'江西省樟树市','走进江西省樟树市店下镇大汗村大汗村小组，只见村落依山而建，村前阡陌纵横，村内石溪潺潺……扑面而来的山野气息，让人忘却了夏日炎热','江西  小组','2018-09-09 00:00:00','新华社',NULL,NULL,'走进江西省樟树市店下镇大汗村大汗村小组，只见村落依山而建，村前阡陌纵横，村内石溪潺潺……扑面而来的山野气息，让人忘却了夏日炎热。 　　“先到屋里坐一坐，吃点饭再去爬山。”下午4点，在一处绿色掩映的农家院落前，主人徐国平热情地迎了上来。一会儿工夫，老徐就端来了几碗绿茶以及花生、咸萝卜等小吃。 　　大汗村小组位于玉华山脚下，距樟树城区30多公里，海拔600多米，森林覆盖率达90%以上。每到节假日，许多游客前来观光休闲、登山越野。“以前咱山里人靠山吃山，以砍竹子、编竹篓过日子，一年到头也赚不了几个钱。”徐国平说，如今，村民们利用好山好水发展乡村旅游，收入翻了几番，每年收入不下10万元。 　　大汗村小组是樟树市秀美乡村建设精品示范点，政府先后投资1000万元，聘请专业设计公司进行规划建设，完善进村道路、给排水设施，整治村容村貌，利用村庄生态与文化旅游资源，盘活梯田、竹林、石溪等景观，修葺步行道路、栈道，增设休闲景观设施，提升村庄整体风貌环境。徐国平说：“村里不仅修通了水泥路，喝上了自来水，还实现了有线电视和网络的全覆盖，现在农家乐的生意越来越好了。” 　　“我们村像徐国平这样的不在少数，村里还有五六户在筹办农家乐或民宿旅舍。”大汗村党支部书记徐七根说，现在大汗村小组每年接待游客10多万人次，旅游综合收入上千万元。','http://paper.people.com.cn/rmrb/html/2018-09/09/nw.D110000renmrb_20180909_3-11.htm',NULL,'2019-12-19 14:50:57',1),(49,'胡锦涛等九常委出席中国工会第15次大会',' 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体','十五大 全国总工会新一届领导集体','2018-08-02 00:00:00','中新网',NULL,NULL,'中新网10月17日电 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体。　　胡锦涛、吴邦国、温家宝、贾庆林、李长春、习近平、李克强、贺国强、周永康等党和国家领导人出席今天的开幕大会。习近平代表中共中央致祝词。　　王兆国将在今天的大会上作全国工会十五大报告。　　上午九时，王兆国宣布中国工会第十五次全国代表大会开幕。今天的大会应到代表1800名，特邀代表289名，实到代表1776名，缺席24名，符合法定人数。　　本次大会将总结过去五年的工会工作，明确今后五年工会工作的主要任务，并将选举产生全国总工会新一届领导集体。','http://baidu.com',NULL,'2019-12-19 14:52:37',1),(50,'江西省樟树市','走进江西省樟树市店下镇大汗村大汗村小组，只见村落依山而建，村前阡陌纵横，村内石溪潺潺……扑面而来的山野气息，让人忘却了夏日炎热','江西  小组','2018-09-09 00:00:00','新华社',NULL,NULL,'走进江西省樟树市店下镇大汗村大汗村小组，只见村落依山而建，村前阡陌纵横，村内石溪潺潺……扑面而来的山野气息，让人忘却了夏日炎热。 　　“先到屋里坐一坐，吃点饭再去爬山。”下午4点，在一处绿色掩映的农家院落前，主人徐国平热情地迎了上来。一会儿工夫，老徐就端来了几碗绿茶以及花生、咸萝卜等小吃。 　　大汗村小组位于玉华山脚下，距樟树城区30多公里，海拔600多米，森林覆盖率达90%以上。每到节假日，许多游客前来观光休闲、登山越野。“以前咱山里人靠山吃山，以砍竹子、编竹篓过日子，一年到头也赚不了几个钱。”徐国平说，如今，村民们利用好山好水发展乡村旅游，收入翻了几番，每年收入不下10万元。 　　大汗村小组是樟树市秀美乡村建设精品示范点，政府先后投资1000万元，聘请专业设计公司进行规划建设，完善进村道路、给排水设施，整治村容村貌，利用村庄生态与文化旅游资源，盘活梯田、竹林、石溪等景观，修葺步行道路、栈道，增设休闲景观设施，提升村庄整体风貌环境。徐国平说：“村里不仅修通了水泥路，喝上了自来水，还实现了有线电视和网络的全覆盖，现在农家乐的生意越来越好了。” 　　“我们村像徐国平这样的不在少数，村里还有五六户在筹办农家乐或民宿旅舍。”大汗村党支部书记徐七根说，现在大汗村小组每年接待游客10多万人次，旅游综合收入上千万元。','http://paper.people.com.cn/rmrb/html/2018-09/09/nw.D110000renmrb_20180909_3-11.htm',NULL,'2019-12-19 14:52:37',1),(51,'胡锦涛等九常委出席中国工会第15次大会',' 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体','十五大 全国总工会新一届领导集体','2018-08-02 00:00:00','中新网',NULL,NULL,'中新网10月17日电 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体。　　胡锦涛、吴邦国、温家宝、贾庆林、李长春、习近平、李克强、贺国强、周永康等党和国家领导人出席今天的开幕大会。习近平代表中共中央致祝词。　　王兆国将在今天的大会上作全国工会十五大报告。　　上午九时，王兆国宣布中国工会第十五次全国代表大会开幕。今天的大会应到代表1800名，特邀代表289名，实到代表1776名，缺席24名，符合法定人数。　　本次大会将总结过去五年的工会工作，明确今后五年工会工作的主要任务，并将选举产生全国总工会新一届领导集体。','http://baidu.com',NULL,'2019-12-19 14:54:18',1),(52,'江西省樟树市','走进江西省樟树市店下镇大汗村大汗村小组，只见村落依山而建，村前阡陌纵横，村内石溪潺潺……扑面而来的山野气息，让人忘却了夏日炎热','江西  小组','2018-09-09 00:00:00','新华社',NULL,NULL,'走进江西省樟树市店下镇大汗村大汗村小组，只见村落依山而建，村前阡陌纵横，村内石溪潺潺……扑面而来的山野气息，让人忘却了夏日炎热。 　　“先到屋里坐一坐，吃点饭再去爬山。”下午4点，在一处绿色掩映的农家院落前，主人徐国平热情地迎了上来。一会儿工夫，老徐就端来了几碗绿茶以及花生、咸萝卜等小吃。 　　大汗村小组位于玉华山脚下，距樟树城区30多公里，海拔600多米，森林覆盖率达90%以上。每到节假日，许多游客前来观光休闲、登山越野。“以前咱山里人靠山吃山，以砍竹子、编竹篓过日子，一年到头也赚不了几个钱。”徐国平说，如今，村民们利用好山好水发展乡村旅游，收入翻了几番，每年收入不下10万元。 　　大汗村小组是樟树市秀美乡村建设精品示范点，政府先后投资1000万元，聘请专业设计公司进行规划建设，完善进村道路、给排水设施，整治村容村貌，利用村庄生态与文化旅游资源，盘活梯田、竹林、石溪等景观，修葺步行道路、栈道，增设休闲景观设施，提升村庄整体风貌环境。徐国平说：“村里不仅修通了水泥路，喝上了自来水，还实现了有线电视和网络的全覆盖，现在农家乐的生意越来越好了。” 　　“我们村像徐国平这样的不在少数，村里还有五六户在筹办农家乐或民宿旅舍。”大汗村党支部书记徐七根说，现在大汗村小组每年接待游客10多万人次，旅游综合收入上千万元。','http://paper.people.com.cn/rmrb/html/2018-09/09/nw.D110000renmrb_20180909_3-11.htm',NULL,'2019-12-19 14:54:18',1),(53,'胡锦涛等九常委出席中国工会第15次大会',' 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体','十五大 全国总工会新一届领导集体','2018-08-02 00:00:00','中新网',NULL,NULL,'中新网10月17日电 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体。　　胡锦涛、吴邦国、温家宝、贾庆林、李长春、习近平、李克强、贺国强、周永康等党和国家领导人出席今天的开幕大会。习近平代表中共中央致祝词。　　王兆国将在今天的大会上作全国工会十五大报告。　　上午九时，王兆国宣布中国工会第十五次全国代表大会开幕。今天的大会应到代表1800名，特邀代表289名，实到代表1776名，缺席24名，符合法定人数。　　本次大会将总结过去五年的工会工作，明确今后五年工会工作的主要任务，并将选举产生全国总工会新一届领导集体。','http://baidu.com',NULL,'2019-12-19 14:54:53',1),(54,'江西省樟树市','走进江西省樟树市店下镇大汗村大汗村小组，只见村落依山而建，村前阡陌纵横，村内石溪潺潺……扑面而来的山野气息，让人忘却了夏日炎热','江西  小组','2018-09-09 00:00:00','新华社',NULL,NULL,'走进江西省樟树市店下镇大汗村大汗村小组，只见村落依山而建，村前阡陌纵横，村内石溪潺潺……扑面而来的山野气息，让人忘却了夏日炎热。 　　“先到屋里坐一坐，吃点饭再去爬山。”下午4点，在一处绿色掩映的农家院落前，主人徐国平热情地迎了上来。一会儿工夫，老徐就端来了几碗绿茶以及花生、咸萝卜等小吃。 　　大汗村小组位于玉华山脚下，距樟树城区30多公里，海拔600多米，森林覆盖率达90%以上。每到节假日，许多游客前来观光休闲、登山越野。“以前咱山里人靠山吃山，以砍竹子、编竹篓过日子，一年到头也赚不了几个钱。”徐国平说，如今，村民们利用好山好水发展乡村旅游，收入翻了几番，每年收入不下10万元。 　　大汗村小组是樟树市秀美乡村建设精品示范点，政府先后投资1000万元，聘请专业设计公司进行规划建设，完善进村道路、给排水设施，整治村容村貌，利用村庄生态与文化旅游资源，盘活梯田、竹林、石溪等景观，修葺步行道路、栈道，增设休闲景观设施，提升村庄整体风貌环境。徐国平说：“村里不仅修通了水泥路，喝上了自来水，还实现了有线电视和网络的全覆盖，现在农家乐的生意越来越好了。” 　　“我们村像徐国平这样的不在少数，村里还有五六户在筹办农家乐或民宿旅舍。”大汗村党支部书记徐七根说，现在大汗村小组每年接待游客10多万人次，旅游综合收入上千万元。','http://paper.people.com.cn/rmrb/html/2018-09/09/nw.D110000renmrb_20180909_3-11.htm',NULL,'2019-12-19 14:55:05',1),(55,'胡锦涛等九常委出席中国工会第15次大会',' 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体','十五大 全国总工会新一届领导集体','2018-08-02 00:00:00','中新网',NULL,NULL,'中新网10月17日电 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体。　　胡锦涛、吴邦国、温家宝、贾庆林、李长春、习近平、李克强、贺国强、周永康等党和国家领导人出席今天的开幕大会。习近平代表中共中央致祝词。　　王兆国将在今天的大会上作全国工会十五大报告。　　上午九时，王兆国宣布中国工会第十五次全国代表大会开幕。今天的大会应到代表1800名，特邀代表289名，实到代表1776名，缺席24名，符合法定人数。　　本次大会将总结过去五年的工会工作，明确今后五年工会工作的主要任务，并将选举产生全国总工会新一届领导集体。','http://baidu.com',NULL,'2019-12-19 14:55:42',1),(56,'江西省樟树市','走进江西省樟树市店下镇大汗村大汗村小组，只见村落依山而建，村前阡陌纵横，村内石溪潺潺……扑面而来的山野气息，让人忘却了夏日炎热','江西  小组','2018-09-09 00:00:00','新华社',NULL,NULL,'走进江西省樟树市店下镇大汗村大汗村小组，只见村落依山而建，村前阡陌纵横，村内石溪潺潺……扑面而来的山野气息，让人忘却了夏日炎热。 　　“先到屋里坐一坐，吃点饭再去爬山。”下午4点，在一处绿色掩映的农家院落前，主人徐国平热情地迎了上来。一会儿工夫，老徐就端来了几碗绿茶以及花生、咸萝卜等小吃。 　　大汗村小组位于玉华山脚下，距樟树城区30多公里，海拔600多米，森林覆盖率达90%以上。每到节假日，许多游客前来观光休闲、登山越野。“以前咱山里人靠山吃山，以砍竹子、编竹篓过日子，一年到头也赚不了几个钱。”徐国平说，如今，村民们利用好山好水发展乡村旅游，收入翻了几番，每年收入不下10万元。 　　大汗村小组是樟树市秀美乡村建设精品示范点，政府先后投资1000万元，聘请专业设计公司进行规划建设，完善进村道路、给排水设施，整治村容村貌，利用村庄生态与文化旅游资源，盘活梯田、竹林、石溪等景观，修葺步行道路、栈道，增设休闲景观设施，提升村庄整体风貌环境。徐国平说：“村里不仅修通了水泥路，喝上了自来水，还实现了有线电视和网络的全覆盖，现在农家乐的生意越来越好了。” 　　“我们村像徐国平这样的不在少数，村里还有五六户在筹办农家乐或民宿旅舍。”大汗村党支部书记徐七根说，现在大汗村小组每年接待游客10多万人次，旅游综合收入上千万元。','http://paper.people.com.cn/rmrb/html/2018-09/09/nw.D110000renmrb_20180909_3-11.htm',NULL,'2019-12-19 14:55:45',1),(57,'胡锦涛等九常委出席中国工会第15次大会',' 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体','十五大 全国总工会新一届领导集体','2018-08-02 00:00:00','中新网',NULL,NULL,'中新网10月17日电 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体。　　胡锦涛、吴邦国、温家宝、贾庆林、李长春、习近平、李克强、贺国强、周永康等党和国家领导人出席今天的开幕大会。习近平代表中共中央致祝词。　　王兆国将在今天的大会上作全国工会十五大报告。　　上午九时，王兆国宣布中国工会第十五次全国代表大会开幕。今天的大会应到代表1800名，特邀代表289名，实到代表1776名，缺席24名，符合法定人数。　　本次大会将总结过去五年的工会工作，明确今后五年工会工作的主要任务，并将选举产生全国总工会新一届领导集体。','http://baidu.com',NULL,'2019-12-19 14:58:30',1),(58,'江西省樟树市','走进江西省樟树市店下镇大汗村大汗村小组，只见村落依山而建，村前阡陌纵横，村内石溪潺潺……扑面而来的山野气息，让人忘却了夏日炎热','江西  小组','2018-09-09 00:00:00','新华社',NULL,NULL,'走进江西省樟树市店下镇大汗村大汗村小组，只见村落依山而建，村前阡陌纵横，村内石溪潺潺……扑面而来的山野气息，让人忘却了夏日炎热。 　　“先到屋里坐一坐，吃点饭再去爬山。”下午4点，在一处绿色掩映的农家院落前，主人徐国平热情地迎了上来。一会儿工夫，老徐就端来了几碗绿茶以及花生、咸萝卜等小吃。 　　大汗村小组位于玉华山脚下，距樟树城区30多公里，海拔600多米，森林覆盖率达90%以上。每到节假日，许多游客前来观光休闲、登山越野。“以前咱山里人靠山吃山，以砍竹子、编竹篓过日子，一年到头也赚不了几个钱。”徐国平说，如今，村民们利用好山好水发展乡村旅游，收入翻了几番，每年收入不下10万元。 　　大汗村小组是樟树市秀美乡村建设精品示范点，政府先后投资1000万元，聘请专业设计公司进行规划建设，完善进村道路、给排水设施，整治村容村貌，利用村庄生态与文化旅游资源，盘活梯田、竹林、石溪等景观，修葺步行道路、栈道，增设休闲景观设施，提升村庄整体风貌环境。徐国平说：“村里不仅修通了水泥路，喝上了自来水，还实现了有线电视和网络的全覆盖，现在农家乐的生意越来越好了。” 　　“我们村像徐国平这样的不在少数，村里还有五六户在筹办农家乐或民宿旅舍。”大汗村党支部书记徐七根说，现在大汗村小组每年接待游客10多万人次，旅游综合收入上千万元。','http://paper.people.com.cn/rmrb/html/2018-09/09/nw.D110000renmrb_20180909_3-11.htm',NULL,'2019-12-19 14:58:31',1),(59,'胡锦涛等九常委出席中国工会第15次大会',' 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体','十五大 全国总工会新一届领导集体','2018-08-02 00:00:00','中新网',NULL,NULL,'中新网10月17日电 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体。　　胡锦涛、吴邦国、温家宝、贾庆林、李长春、习近平、李克强、贺国强、周永康等党和国家领导人出席今天的开幕大会。习近平代表中共中央致祝词。　　王兆国将在今天的大会上作全国工会十五大报告。　　上午九时，王兆国宣布中国工会第十五次全国代表大会开幕。今天的大会应到代表1800名，特邀代表289名，实到代表1776名，缺席24名，符合法定人数。　　本次大会将总结过去五年的工会工作，明确今后五年工会工作的主要任务，并将选举产生全国总工会新一届领导集体。','http://baidu.com',NULL,'2019-12-19 15:06:28',1),(60,'江西省樟树市','走进江西省樟树市店下镇大汗村大汗村小组，只见村落依山而建，村前阡陌纵横，村内石溪潺潺……扑面而来的山野气息，让人忘却了夏日炎热','江西  小组','2018-09-09 00:00:00','新华社',NULL,NULL,'走进江西省樟树市店下镇大汗村大汗村小组，只见村落依山而建，村前阡陌纵横，村内石溪潺潺……扑面而来的山野气息，让人忘却了夏日炎热。 　　“先到屋里坐一坐，吃点饭再去爬山。”下午4点，在一处绿色掩映的农家院落前，主人徐国平热情地迎了上来。一会儿工夫，老徐就端来了几碗绿茶以及花生、咸萝卜等小吃。 　　大汗村小组位于玉华山脚下，距樟树城区30多公里，海拔600多米，森林覆盖率达90%以上。每到节假日，许多游客前来观光休闲、登山越野。“以前咱山里人靠山吃山，以砍竹子、编竹篓过日子，一年到头也赚不了几个钱。”徐国平说，如今，村民们利用好山好水发展乡村旅游，收入翻了几番，每年收入不下10万元。 　　大汗村小组是樟树市秀美乡村建设精品示范点，政府先后投资1000万元，聘请专业设计公司进行规划建设，完善进村道路、给排水设施，整治村容村貌，利用村庄生态与文化旅游资源，盘活梯田、竹林、石溪等景观，修葺步行道路、栈道，增设休闲景观设施，提升村庄整体风貌环境。徐国平说：“村里不仅修通了水泥路，喝上了自来水，还实现了有线电视和网络的全覆盖，现在农家乐的生意越来越好了。” 　　“我们村像徐国平这样的不在少数，村里还有五六户在筹办农家乐或民宿旅舍。”大汗村党支部书记徐七根说，现在大汗村小组每年接待游客10多万人次，旅游综合收入上千万元。','http://paper.people.com.cn/rmrb/html/2018-09/09/nw.D110000renmrb_20180909_3-11.htm',NULL,'2019-12-19 15:06:29',1),(61,'核心阅读','西北工业大学在培养学生时，引入“生涯”概念，促使学生提前思考、规划；推行完全学分制，课程的难易度和宽广度由学生自主选择；开设职业发展教育课程，邀请行业大咖传授经验；在生产实习之外安排认识实习，使学生全面认识用人单位的生产管理状况，打开求职思路。','西北工业大学','2018-09-13 00:00:00','西北工业大学',NULL,NULL,'在引导帮扶大学生就业方面，高校如何发挥更大作用？ 　　西北工业大学在培养学生时，引入“生涯”概念，促使学生提前思考、规划；推行完全学分制，课程的难易度和宽广度由学生自主选择；开设职业发展教育课程，邀请行业大咖传授经验；在生产实习之外安排认识实习，使学生全面认识用人单位的生产管理状况，打开求职思路。这表明，高校从多渠道着手引导、保障大学生就业，对稳就业来说很有价值。 　　　　　　 　　“生涯密钥”，是西北工业大学送给2018年入学新生的一份特别的礼物。同学们拿到通知书后，通过扫描二维码，就可以用这把“钥匙”，打开一个海量数据库。 　　岗位和单位是啥性质？就业地点在哪？薪酬水平多少？运用大数据，师兄师姐的选择汇聚成了一张就业全景图，为这些充满好奇的年轻人提供了可靠的参考。 　　“这几年，学校在培养学生时引入‘生涯’的概念。”中国科学院院士、西北工业大学常务副校长黄维说，“无论是‘生涯密钥’大数据，还是推行完全学分制、倡导生产实习和认识实习，这些都旨在强化学生的‘生涯意识’，让学生能提前思考、提早规划。” 　　完全学分制 　　修够学分即能毕业，选啥课学生说了算 　　作为2018年的毕业生，钟昆洋的个人数据也添加进了学校的就业大数据中。4年前入学时，他也曾收到这样的礼物。 　　“我们2014级学生，是学校实行完全学分制的首批获益者。”钟昆洋说，“在课程选择上，不再像往届一样由教务处直接置入课程，而是每个人根据自己的喜好选择课程。” 　　经过两年的调研，西北工业大学于2014年启动了优化本科生人才培养方案。重点改革，就是实行完全学分制，让学生自主选择课程。 　　有些学生录取时被调剂了专业，在完全学分制下就可以实现“换专业”。学校的课程是分模块的。一年级理工类，基础课程模块基本相同。到了二年级，则可以根据自己的兴趣爱好选专业课，只要接收学院同意，就可以学习该学院的专业课模块。 　　配套完全学分制改革，学校允许学生自主选择课程。学生可根据自身情况，选择课程难易度和宽广度。比如，数学基础好的，可以跳过高等数学，直接选择工科数学分析；学飞行器设计的，也可以选择和专业不相关的管理学课程。 　　“学生基于自身兴趣和需要选课，有了更多的自主权。只要达到毕业所要求修的学分，就可以了。”党委学生工作部副部长、学生处副处长王莉说。 　　课程选择上的自由，让钟昆洋尝到了甜头。大三的时候，他就读完了原本在大四才可以选的专业选修课。到了大四，他的学习任务轻，可以花更多时间去寻找适合的工作，准备笔试和面试。 　　职业发展课 　　帮助认知自我，邀请大咖分享，再现招聘过程 　　“因为在课程选择上完全自由，新生容易在无拘束的环境中迷失方向。”学生就业创业指导服务中心老师朱莉说，“所以，指导中心除了在入学时开展新生导航讲座外，还开设了多门职业发展教育课程，希望能给学生一些指引。” 　　刚进大学时，钟昆洋也曾有“选择困难症”。大一时，他便选修了《大学生职业生涯规划》课程。课上，他结识了对他职业生涯有很大影响的朱莉老师。 　　“我们对钟昆洋同学进行了个性化的学业指导，利用学校成熟的职业测评工具，帮助他认知自我兴趣、性格以及价值观。根据他的情况，提供了相应的成长方案。”朱莉说。 　　在老师的帮助下，钟昆洋逐渐了解了自己和外在环境，确定了大学的学习生活目标，有规划地安排了4年的生活。大二时，他在朱莉老师的建议下选修了《求职有道》。这门课程，真实再现了企业招聘的全过程，让学生从招聘官的角度认知企业对人才的要求。 　　“在这些课程中，许多行业大咖现身说法。前辈们的交流分享、老师们的专业指导，使我对职业规划的重要性有了认识。我觉得自己的情况更适合先就业，而不是读研。”钟昆洋说。 　　随后，钟昆洋开始留意就业志愿者服务队的相关信息。大三时，他加入了服务队。这是一支由学生就业创业指导服务中心指导的，主要负责服务用人单位校园招聘工作的专业志愿者队伍。“这个团队有10年的光荣历史。钟昆洋勤恳踏实，待人真诚有礼貌，有很强的责任感，很快就成长为团队的队长。”朱莉老师说。 　　在就业中心，钟昆洋的主要工作是给用人单位安排场地，以及协调宣讲会相关工作。“这个过程中，可以和很多企业的人力资源部人员进行交流，积累求职经验，第一时间获得招聘信息。更重要的，是可以锻炼自己的综合协调能力。”钟昆洋说。 　　业界找感觉 　　除了生产实习，还安排了解型的认识实习 　　“大三是学生找工作的关键预备期。学校为每位学生安排了认识实习与生产实习。”朱莉介绍。 　　认识实习，旨在让学生全面了解用人单位的生产管理状况，从而获得对专业生产实践的初步认识。主要途径，是到相关企业参观学习。 　　“学院用了一个星期的时间，带我们参观了西安本地的5家军工企业。”钟昆洋说，在参观过程中，他了解到自己所在的微机电系统工程专业应用非常广泛，比如很多高端机器应用的传感器，都涉及这一专业。 　　然而，要从事本专业对口的工作，本科所学的并不够用，还需继续深造。这与先找工作的规划产生了矛盾，使钟昆洋陷入了困惑。 　　“在职业生涯辅导中，我了解到了他的困惑。”朱莉说，“微机电系统工程专业，是机械和微电子的交叉学科。所以我建议他，找工作不要局限于小专业，可以在机械和电子这个大类里去找。” 　　老师的点拨打开了钟昆洋的思路。之后，他拒绝了学校安排的生产实习。“学校安排的生产实习，是和专业密切相关的企业。我想从朱老师建议的大类上找工作，这样实习才对我找工作有帮助。”钟昆洋说。 　　大三暑假，钟昆洋申请去宁波某空调企业实习。在生产一线的工作，让他对自己的未来有了更清晰的认识。通过和他人交流，供应链管理、生产管理等书本上的概念，变得具体了起来。 　　“制造业的工作分工差不多。招聘的时候，我就知道自己想去什么岗位了。”钟昆洋说。 　　3年的认真探索和准备，为钟昆洋铺好了求职之路。大四刚开学，他就拿到中国航发贵州黎阳航空发动机有限公司抛来的橄榄枝，成为机电学院“第一签”。 　　“一线城市也曾考虑过，但生活成本太高了。回到老家，生活闲适，还可以陪家人，认识的同学也多。”钟昆洋说，“我们学校的许多同学，都有投身国防、报效国家的心思，我也不例外。这家公司，就是我的最佳选择。” 　　8月17日，钟昆洋到公司报到，经过一个星期的培训，他走上了自己心仪的工作岗位。','http://paper.people.com.cn/rmrb/html/2018-09/13/nw.D110000renmrb_20180913_1-17.htm',NULL,'2019-12-19 15:06:31',1),(62,'全国教育大会','全国教育大会10日在北京召开。中共中央总书记、国家主席、中央军委主席习近平出席会议并发表重要讲话','习近平 党','2018-09-11 00:00:00','人民网',NULL,NULL,'本报北京9月10日电  （记者张烁）全国教育大会10日在北京召开。中共中央总书记、国家主席、中央军委主席习近平出席会议并发表重要讲话。他强调，在党的坚强领导下，全面贯彻党的教育方针，坚持马克思主义指导地位，坚持中国特色社会主义教育发展道路，坚持社会主义办学方向，立足基本国情，遵循教育规律，坚持改革创新，以凝聚人心、完善人格、开发人力、培育人才、造福人民为工作目标，培养德智体美劳全面发展的社会主义建设者和接班人，加快推进教育现代化、建设教育强国、办好人民满意的教育。 　　9月10日是我国第三十四个教师节，习近平代表党中央，向全国广大教师和教育工作者致以节日的热烈祝贺和诚挚问候。他强调，长期以来，广大教师贯彻党的教育方针，教书育人，呕心沥血，默默奉献，为国家发展和民族振兴作出了重大贡献。教师是人类灵魂的工程师，是人类文明的传承者，承载着传播知识、传播思想、传播真理，塑造灵魂、塑造生命、塑造新人的时代重任。全党全社会要弘扬尊师重教的社会风尚，努力提高教师政治地位、社会地位、职业地位，让广大教师享有应有的社会声望，在教书育人岗位上为党和人民事业作出新的更大的贡献。 　　李克强在会上讲话。汪洋、王沪宁、赵乐际、韩正出席会议。 　　习近平在讲话中指出，党的十九大从新时代坚持和发展中国特色社会主义的战略高度，作出了优先发展教育事业、加快教育现代化、建设教育强国的重大部署。教育是民族振兴、社会进步的重要基石，是功在当代、利在千秋的德政工程，对提高人民综合素质、促进人的全面发展、增强中华民族创新创造活力、实现中华民族伟大复兴具有决定性意义。教育是国之大计、党之大计。 　　习近平强调，党的十八大以来，我们围绕培养什么人、怎样培养人、为谁培养人这一根本问题，全面加强党对教育工作的领导，坚持立德树人，加强学校思想政治工作，推进教育改革，加快补齐教育短板，教育事业中国特色更加鲜明，教育现代化加速推进，教育方面人民群众获得感明显增强，我国教育的国际影响力加快提升，13亿多中国人民的思想道德素质和科学文化素质全面提升。 　　习近平指出，在实践中，我们就教育改革发展提出一系列新理念新思想新观点，主要有以下几个方面，坚持党对教育事业的全面领导，坚持把立德树人作为根本任务，坚持优先发展教育事业，坚持社会主义办学方向，坚持扎根中国大地办教育，坚持以人民为中心发展教育，坚持深化教育改革创新，坚持把服务中华民族伟大复兴作为教育的重要使命，坚持把教师队伍建设作为基础工作。这是我们对我国教育事业规律性认识的深化，来之不易，要始终坚持并不断丰富发展。 　　习近平强调，新时代新形势，改革开放和社会主义现代化建设、促进人的全面发展和社会全面进步对教育和学习提出了新的更高的要求。我们要抓住机遇、超前布局，以更高远的历史站位、更宽广的国际视野、更深邃的战略眼光，对加快推进教育现代化、建设教育强国作出总体部署和战略设计，坚持把优先发展教育事业作为推动党和国家各项事业发展的重要先手棋，不断使教育同党和国家事业发展要求相适应、同人民群众期待相契合、同我国综合国力和国际地位相匹配。 　　习近平指出，培养什么人，是教育的首要问题。我国是中国共产党领导的社会主义国家，这就决定了我们的教育必须把培养社会主义建设者和接班人作为根本任务，培养一代又一代拥护中国共产党领导和我国社会主义制度、立志为中国特色社会主义奋斗终身的有用人才。这是教育工作的根本任务，也是教育现代化的方向目标。 　　习近平强调，要在坚定理想信念上下功夫，教育引导学生树立共产主义远大理想和中国特色社会主义共同理想，增强学生的中国特色社会主义道路自信、理论自信、制度自信、文化自信，立志肩负起民族复兴的时代重任。要在厚植爱国主义情怀上下功夫，让爱国主义精神在学生心中牢牢扎根，教育引导学生热爱和拥护中国共产党，立志听党话、跟党走，立志扎根人民、奉献国家。要在加强品德修养上下功夫，教育引导学生培育和践行社会主义核心价值观，踏踏实实修好品德，成为有大爱大德大情怀的人。要在增长知识见识上下功夫，教育引导学生珍惜学习时光，心无旁骛求知问学，增长见识，丰富学识，沿着求真理、悟道理、明事理的方向前进。要在培养奋斗精神上下功夫，教育引导学生树立高远志向，历练敢于担当、不懈奋斗的精神，具有勇于奋斗的精神状态、乐观向上的人生态度，做到刚健有为、自强不息。要在增强综合素质上下功夫，教育引导学生培养综合能力，培养创新思维。要树立健康第一的教育理念，开齐开足体育课，帮助学生在体育锻炼中享受乐趣、增强体质、健全人格、锤炼意志。要全面加强和改进学校美育，坚持以美育人、以文化人，提高学生审美和人文素养。要在学生中弘扬劳动精神，教育引导学生崇尚劳动、尊重劳动，懂得劳动最光荣、劳动最崇高、劳动最伟大、劳动最美丽的道理，长大后能够辛勤劳动、诚实劳动、创造性劳动。 　　习近平指出，要努力构建德智体美劳全面培养的教育体系，形成更高水平的人才培养体系。要把立德树人融入思想道德教育、文化知识教育、社会实践教育各环节，贯穿基础教育、职业教育、高等教育各领域，学科体系、教学体系、教材体系、管理体系要围绕这个目标来设计，教师要围绕这个目标来教，学生要围绕这个目标来学。凡是不利于实现这个目标的做法都要坚决改过来。 　　习近平强调，建设社会主义现代化强国，对教师队伍建设提出新的更高要求，也对全党全社会尊师重教提出新的更高要求。人民教师无上光荣，每个教师都要珍惜这份光荣，爱惜这份职业，严格要求自己，不断完善自己。做老师就要执着于教书育人，有热爱教育的定力、淡泊名利的坚守。随着办学条件不断改善，教育投入要更多向教师倾斜，不断提高教师待遇，让广大教师安心从教、热心从教。对教师队伍中存在的问题，要坚决依法依纪予以严惩。 　　习近平指出，要深化教育体制改革，健全立德树人落实机制，扭转不科学的教育评价导向，坚决克服唯分数、唯升学、唯文凭、唯论文、唯帽子的顽瘴痼疾，从根本上解决教育评价指挥棒问题。要深化办学体制和教育管理改革，充分激发教育事业发展生机活力。要提升教育服务经济社会发展能力，调整优化高校区域布局、学科结构、专业设置，建立健全学科专业动态调整机制，加快一流大学和一流学科建设，推进产学研协同创新，积极投身实施创新驱动发展战略，着重培养创新型、复合型、应用型人才。要扩大教育开放，同世界一流资源开展高水平合作办学。 　　习近平强调，加强党对教育工作的全面领导，是办好教育的根本保证。教育部门和各级各类学校的党组织要增强“四个意识”、坚定“四个自信”，坚定不移维护党中央权威和集中统一领导，自觉在政治立场、政治方向、政治原则、政治道路上同党中央保持高度一致。各级党委要把教育改革发展纳入议事日程，党政主要负责同志要熟悉教育、关心教育、研究教育。各级各类学校党组织要把抓好学校党建工作作为办学治校的基本功，把党的教育方针全面贯彻到学校工作各方面。思想政治工作是学校各项工作的生命线，各级党委、各级教育主管部门、学校党组织都必须紧紧抓在手上。要精心培养和组织一支会做思想政治工作的政工队伍，把思想政治工作做在日常、做到个人。 　　习近平指出，办好教育事业，家庭、学校、政府、社会都有责任。家庭是人生的第一所学校，家长是孩子的第一任老师，要给孩子讲好“人生第一课”，帮助扣好人生第一粒扣子。教育、妇联等部门要统筹协调社会资源支持服务家庭教育。全社会要担负起青少年成长成才的责任。各级党委和政府要为学校办学安全托底，解决学校后顾之忧，维护老师和学校应有的尊严，保护学生生命安全。 　　李克强在讲话中指出，要认真学习领会和贯彻落实习近平总书记重要讲话精神，以习近平新时代中国特色社会主义思想为指导，准确把握教育事业发展面临的新形势新任务，全面落实教育优先发展战略，在经济社会发展规划上优先安排教育、财政资金投入上优先保障教育、公共资源配置上优先满足教育和人力资源开发需要。坚持改革创新，坚持教育公平，推动教育从规模增长向质量提升转变，促进区域、城乡和各级各类教育均衡发展，以教育现代化支撑国家现代化。要着力补上短板，夯实义务教育这个根基，强化农村特别是贫困地区控辍保学工作，完善城乡统一、重在农村的义务教育经费保障机制，着力改善乡村学校办学条件、提高教学质量，注重运用信息化手段使乡村获得更多优质教育资源，在提速降费、网络建设方面给予特别照顾。把更多教育投入用到加强乡村师资队伍建设上，不折不扣落实现行的补助、奖励和各类保障政策，对符合条件的非在编教师要加快入编、同工同酬。前瞻规划布局城镇学校建设，增强容纳能力，加快实现随迁子女入学待遇同城化。同时，要重视发展学前教育、高中阶段教育和民族教育、特殊教育、继续教育等各类教育。 　　李克强强调，要增强教育服务创新发展能力，培养更多适应高质量发展的各类人才。优化高校区域布局、学科结构、专业设置，坚持以教学为中心，突出创新意识和实践能力，培养更多创新人才、高素质人才。更加重视、充分发挥高校在强化基础研究和原始创新、突破关键核心技术中的重要作用。大力办好职业院校，坚持面向市场、服务发展、促进就业的办学方向，推进产教融合、校企合作，培养更多高技能人才。提高技术技能人才的社会地位和待遇。 　　李克强要求，要深化教育领域“放管服”改革，充分释放教育事业发展生机活力。尊重教育发展规律，充分发挥学校办学主体作用，大幅减少各类检查、评估、评价，加强对办学方向、标准、质量的规范引导，为学校潜心治校办学创造良好环境。积极鼓励社会力量依法兴办教育。鼓励各级各类学校与时俱进创新教育理念和人才培养模式，发展“互联网+教育”，完善吸引优秀人才从事教育的体制机制，提升教师社会地位，让尊师重教蔚然成风。 　　中共中央政治局委员、中央书记处书记，全国人大常委会有关领导同志，国务委员，最高人民法院院长，最高人民检察院检察长，全国政协有关领导同志出席大会。 　　中央教育工作领导小组成员，各省区市和计划单列市、新疆生产建设兵团，中央和国家机关有关部门、有关人民团体，军队有关单位，部分高校负责同志参加大会。','http://paper.people.com.cn/rmrb/html/2018-09/11/nw.D110000renmrb_20180911_2-01.htm',NULL,'2019-12-19 15:06:31',1),(63,'2018中国节','“这个活动太有意义了，不仅可以吃到正宗的中国特色美食，而且还能欣赏中国辉煌灿烂的传统文化。希望能早日去中国看看','文化交流','2018-09-10 00:00:00','人民日报',NULL,NULL,'“这个活动太有意义了，不仅可以吃到正宗的中国特色美食，而且还能欣赏中国辉煌灿烂的传统文化。希望能早日去中国看看。”9月8日，在东京举行的“2018年中国节”活动现场，家住日本埼玉县的中村保彦对本报记者说。 　　为纪念中日和平友好条约缔结40周年，“2018年中国节”9月8日—9日在东京代代木公园举办。本届“2018年中国节”实行委员长、中国驻日本大使程永华表示，“2018年中国节”是一场展示今日中国的盛会，也是一座增进中日两国民众相互理解和友好感情的桥梁。在中日交往史中，民间交流始终是推动两国关系向前发展的不竭动力。相信这一活动将成为中日两国民众加强面对面交流、增进友好感情的绝佳契机。 　　国之交在于民相亲。“近年来中国发展迅速，面貌可谓日新月异，希望日本民众多去中国走走，亲身感受中国迅速发展的脉搏。”“2018年中国节”实行委员会最高顾问、日本前首相福田康夫说，民间友谊是国家交往的基础，希望两国民众能够通过此次活动，进一步加深交流和相互理解。 　　为了让更多日本民众了解中国传统文化，东京中国文化中心从陕西省请来两位师傅，手把手教授捏面人、剪纸等，吸引不少小朋友前来学习。此外，东京中国文化中心工作人员还在现场教授编中国结。安庆市黄梅戏剧院、兰州歌舞剧院等中国地方演出团体精彩的文艺演出，引起现场观众的阵阵掌声。 　　“我非常喜欢中国文化。”家住代代木公园附近的加藤亚好美说，在家门口体验原汁原味的中国文化、品尝正宗的中国美食，没有比这更令人开心的事情。加藤亚好美还清晰地记得1978年第一次去中国的情形。她说，改革开放40年来中国发展迅速，希望有机会多去中国看看。日中两国一衣带水，友好交往的历史源远流长，希望两国永远友好下去。 　　“2018年中国节”受到中日双方各界积极响应和大力支持，致力于中日交流的多个机构和团体负责人出任实行委员，两国外交、文化、旅游等政府部门担任活动后援单位。“2018年中国节”场内设置了百余个展位，通过文艺演出、文化展示、美食品尝、旅游推介等方式向日本民众介绍中国。不少展位前排起了长长的队伍。活动期间还举行了超辣食品比赛、拉面比赛、乒乓球比赛等活动，吸引了包括日本民众、旅日华侨华人在内约15万人参加。 　　日本民众纷纷在社交媒体上分享参加“2018年中国节”的照片，推荐家人和朋友参加。不少日本民众更加了解了中国辉煌灿烂的历史和飞速发展的今天，期盼中日关系更加友好密切。 　　（本报东京9月9日电）','http://paper.people.com.cn/rmrb/html/2018-09/10/nw.D110000renmrb_20180910_4-21.htm',NULL,'2019-12-19 15:06:31',1),(64,'胡锦涛等九常委出席中国工会第15次大会',' 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体','十五大 全国总工会新一届领导集体','2018-08-02 00:00:00','中新网',NULL,NULL,'中新网10月17日电 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体。　　胡锦涛、吴邦国、温家宝、贾庆林、李长春、习近平、李克强、贺国强、周永康等党和国家领导人出席今天的开幕大会。习近平代表中共中央致祝词。　　王兆国将在今天的大会上作全国工会十五大报告。　　上午九时，王兆国宣布中国工会第十五次全国代表大会开幕。今天的大会应到代表1800名，特邀代表289名，实到代表1776名，缺席24名，符合法定人数。　　本次大会将总结过去五年的工会工作，明确今后五年工会工作的主要任务，并将选举产生全国总工会新一届领导集体。','http://baidu.com',NULL,'2019-12-19 15:06:53',1),(65,'江西省樟树市','走进江西省樟树市店下镇大汗村大汗村小组，只见村落依山而建，村前阡陌纵横，村内石溪潺潺……扑面而来的山野气息，让人忘却了夏日炎热','江西  小组','2018-09-09 00:00:00','新华社',NULL,NULL,'走进江西省樟树市店下镇大汗村大汗村小组，只见村落依山而建，村前阡陌纵横，村内石溪潺潺……扑面而来的山野气息，让人忘却了夏日炎热。 　　“先到屋里坐一坐，吃点饭再去爬山。”下午4点，在一处绿色掩映的农家院落前，主人徐国平热情地迎了上来。一会儿工夫，老徐就端来了几碗绿茶以及花生、咸萝卜等小吃。 　　大汗村小组位于玉华山脚下，距樟树城区30多公里，海拔600多米，森林覆盖率达90%以上。每到节假日，许多游客前来观光休闲、登山越野。“以前咱山里人靠山吃山，以砍竹子、编竹篓过日子，一年到头也赚不了几个钱。”徐国平说，如今，村民们利用好山好水发展乡村旅游，收入翻了几番，每年收入不下10万元。 　　大汗村小组是樟树市秀美乡村建设精品示范点，政府先后投资1000万元，聘请专业设计公司进行规划建设，完善进村道路、给排水设施，整治村容村貌，利用村庄生态与文化旅游资源，盘活梯田、竹林、石溪等景观，修葺步行道路、栈道，增设休闲景观设施，提升村庄整体风貌环境。徐国平说：“村里不仅修通了水泥路，喝上了自来水，还实现了有线电视和网络的全覆盖，现在农家乐的生意越来越好了。” 　　“我们村像徐国平这样的不在少数，村里还有五六户在筹办农家乐或民宿旅舍。”大汗村党支部书记徐七根说，现在大汗村小组每年接待游客10多万人次，旅游综合收入上千万元。','http://paper.people.com.cn/rmrb/html/2018-09/09/nw.D110000renmrb_20180909_3-11.htm',NULL,'2019-12-19 15:06:53',1),(66,'核心阅读','西北工业大学在培养学生时，引入“生涯”概念，促使学生提前思考、规划；推行完全学分制，课程的难易度和宽广度由学生自主选择；开设职业发展教育课程，邀请行业大咖传授经验；在生产实习之外安排认识实习，使学生全面认识用人单位的生产管理状况，打开求职思路。','西北工业大学','2018-09-13 00:00:00','西北工业大学',NULL,NULL,'在引导帮扶大学生就业方面，高校如何发挥更大作用？ 　　西北工业大学在培养学生时，引入“生涯”概念，促使学生提前思考、规划；推行完全学分制，课程的难易度和宽广度由学生自主选择；开设职业发展教育课程，邀请行业大咖传授经验；在生产实习之外安排认识实习，使学生全面认识用人单位的生产管理状况，打开求职思路。这表明，高校从多渠道着手引导、保障大学生就业，对稳就业来说很有价值。 　　　　　　 　　“生涯密钥”，是西北工业大学送给2018年入学新生的一份特别的礼物。同学们拿到通知书后，通过扫描二维码，就可以用这把“钥匙”，打开一个海量数据库。 　　岗位和单位是啥性质？就业地点在哪？薪酬水平多少？运用大数据，师兄师姐的选择汇聚成了一张就业全景图，为这些充满好奇的年轻人提供了可靠的参考。 　　“这几年，学校在培养学生时引入‘生涯’的概念。”中国科学院院士、西北工业大学常务副校长黄维说，“无论是‘生涯密钥’大数据，还是推行完全学分制、倡导生产实习和认识实习，这些都旨在强化学生的‘生涯意识’，让学生能提前思考、提早规划。” 　　完全学分制 　　修够学分即能毕业，选啥课学生说了算 　　作为2018年的毕业生，钟昆洋的个人数据也添加进了学校的就业大数据中。4年前入学时，他也曾收到这样的礼物。 　　“我们2014级学生，是学校实行完全学分制的首批获益者。”钟昆洋说，“在课程选择上，不再像往届一样由教务处直接置入课程，而是每个人根据自己的喜好选择课程。” 　　经过两年的调研，西北工业大学于2014年启动了优化本科生人才培养方案。重点改革，就是实行完全学分制，让学生自主选择课程。 　　有些学生录取时被调剂了专业，在完全学分制下就可以实现“换专业”。学校的课程是分模块的。一年级理工类，基础课程模块基本相同。到了二年级，则可以根据自己的兴趣爱好选专业课，只要接收学院同意，就可以学习该学院的专业课模块。 　　配套完全学分制改革，学校允许学生自主选择课程。学生可根据自身情况，选择课程难易度和宽广度。比如，数学基础好的，可以跳过高等数学，直接选择工科数学分析；学飞行器设计的，也可以选择和专业不相关的管理学课程。 　　“学生基于自身兴趣和需要选课，有了更多的自主权。只要达到毕业所要求修的学分，就可以了。”党委学生工作部副部长、学生处副处长王莉说。 　　课程选择上的自由，让钟昆洋尝到了甜头。大三的时候，他就读完了原本在大四才可以选的专业选修课。到了大四，他的学习任务轻，可以花更多时间去寻找适合的工作，准备笔试和面试。 　　职业发展课 　　帮助认知自我，邀请大咖分享，再现招聘过程 　　“因为在课程选择上完全自由，新生容易在无拘束的环境中迷失方向。”学生就业创业指导服务中心老师朱莉说，“所以，指导中心除了在入学时开展新生导航讲座外，还开设了多门职业发展教育课程，希望能给学生一些指引。” 　　刚进大学时，钟昆洋也曾有“选择困难症”。大一时，他便选修了《大学生职业生涯规划》课程。课上，他结识了对他职业生涯有很大影响的朱莉老师。 　　“我们对钟昆洋同学进行了个性化的学业指导，利用学校成熟的职业测评工具，帮助他认知自我兴趣、性格以及价值观。根据他的情况，提供了相应的成长方案。”朱莉说。 　　在老师的帮助下，钟昆洋逐渐了解了自己和外在环境，确定了大学的学习生活目标，有规划地安排了4年的生活。大二时，他在朱莉老师的建议下选修了《求职有道》。这门课程，真实再现了企业招聘的全过程，让学生从招聘官的角度认知企业对人才的要求。 　　“在这些课程中，许多行业大咖现身说法。前辈们的交流分享、老师们的专业指导，使我对职业规划的重要性有了认识。我觉得自己的情况更适合先就业，而不是读研。”钟昆洋说。 　　随后，钟昆洋开始留意就业志愿者服务队的相关信息。大三时，他加入了服务队。这是一支由学生就业创业指导服务中心指导的，主要负责服务用人单位校园招聘工作的专业志愿者队伍。“这个团队有10年的光荣历史。钟昆洋勤恳踏实，待人真诚有礼貌，有很强的责任感，很快就成长为团队的队长。”朱莉老师说。 　　在就业中心，钟昆洋的主要工作是给用人单位安排场地，以及协调宣讲会相关工作。“这个过程中，可以和很多企业的人力资源部人员进行交流，积累求职经验，第一时间获得招聘信息。更重要的，是可以锻炼自己的综合协调能力。”钟昆洋说。 　　业界找感觉 　　除了生产实习，还安排了解型的认识实习 　　“大三是学生找工作的关键预备期。学校为每位学生安排了认识实习与生产实习。”朱莉介绍。 　　认识实习，旨在让学生全面了解用人单位的生产管理状况，从而获得对专业生产实践的初步认识。主要途径，是到相关企业参观学习。 　　“学院用了一个星期的时间，带我们参观了西安本地的5家军工企业。”钟昆洋说，在参观过程中，他了解到自己所在的微机电系统工程专业应用非常广泛，比如很多高端机器应用的传感器，都涉及这一专业。 　　然而，要从事本专业对口的工作，本科所学的并不够用，还需继续深造。这与先找工作的规划产生了矛盾，使钟昆洋陷入了困惑。 　　“在职业生涯辅导中，我了解到了他的困惑。”朱莉说，“微机电系统工程专业，是机械和微电子的交叉学科。所以我建议他，找工作不要局限于小专业，可以在机械和电子这个大类里去找。” 　　老师的点拨打开了钟昆洋的思路。之后，他拒绝了学校安排的生产实习。“学校安排的生产实习，是和专业密切相关的企业。我想从朱老师建议的大类上找工作，这样实习才对我找工作有帮助。”钟昆洋说。 　　大三暑假，钟昆洋申请去宁波某空调企业实习。在生产一线的工作，让他对自己的未来有了更清晰的认识。通过和他人交流，供应链管理、生产管理等书本上的概念，变得具体了起来。 　　“制造业的工作分工差不多。招聘的时候，我就知道自己想去什么岗位了。”钟昆洋说。 　　3年的认真探索和准备，为钟昆洋铺好了求职之路。大四刚开学，他就拿到中国航发贵州黎阳航空发动机有限公司抛来的橄榄枝，成为机电学院“第一签”。 　　“一线城市也曾考虑过，但生活成本太高了。回到老家，生活闲适，还可以陪家人，认识的同学也多。”钟昆洋说，“我们学校的许多同学，都有投身国防、报效国家的心思，我也不例外。这家公司，就是我的最佳选择。” 　　8月17日，钟昆洋到公司报到，经过一个星期的培训，他走上了自己心仪的工作岗位。','http://paper.people.com.cn/rmrb/html/2018-09/13/nw.D110000renmrb_20180913_1-17.htm',NULL,'2019-12-19 15:06:53',1),(67,'全国教育大会','全国教育大会10日在北京召开。中共中央总书记、国家主席、中央军委主席习近平出席会议并发表重要讲话','习近平 党','2018-09-11 00:00:00','人民网',NULL,NULL,'本报北京9月10日电  （记者张烁）全国教育大会10日在北京召开。中共中央总书记、国家主席、中央军委主席习近平出席会议并发表重要讲话。他强调，在党的坚强领导下，全面贯彻党的教育方针，坚持马克思主义指导地位，坚持中国特色社会主义教育发展道路，坚持社会主义办学方向，立足基本国情，遵循教育规律，坚持改革创新，以凝聚人心、完善人格、开发人力、培育人才、造福人民为工作目标，培养德智体美劳全面发展的社会主义建设者和接班人，加快推进教育现代化、建设教育强国、办好人民满意的教育。 　　9月10日是我国第三十四个教师节，习近平代表党中央，向全国广大教师和教育工作者致以节日的热烈祝贺和诚挚问候。他强调，长期以来，广大教师贯彻党的教育方针，教书育人，呕心沥血，默默奉献，为国家发展和民族振兴作出了重大贡献。教师是人类灵魂的工程师，是人类文明的传承者，承载着传播知识、传播思想、传播真理，塑造灵魂、塑造生命、塑造新人的时代重任。全党全社会要弘扬尊师重教的社会风尚，努力提高教师政治地位、社会地位、职业地位，让广大教师享有应有的社会声望，在教书育人岗位上为党和人民事业作出新的更大的贡献。 　　李克强在会上讲话。汪洋、王沪宁、赵乐际、韩正出席会议。 　　习近平在讲话中指出，党的十九大从新时代坚持和发展中国特色社会主义的战略高度，作出了优先发展教育事业、加快教育现代化、建设教育强国的重大部署。教育是民族振兴、社会进步的重要基石，是功在当代、利在千秋的德政工程，对提高人民综合素质、促进人的全面发展、增强中华民族创新创造活力、实现中华民族伟大复兴具有决定性意义。教育是国之大计、党之大计。 　　习近平强调，党的十八大以来，我们围绕培养什么人、怎样培养人、为谁培养人这一根本问题，全面加强党对教育工作的领导，坚持立德树人，加强学校思想政治工作，推进教育改革，加快补齐教育短板，教育事业中国特色更加鲜明，教育现代化加速推进，教育方面人民群众获得感明显增强，我国教育的国际影响力加快提升，13亿多中国人民的思想道德素质和科学文化素质全面提升。 　　习近平指出，在实践中，我们就教育改革发展提出一系列新理念新思想新观点，主要有以下几个方面，坚持党对教育事业的全面领导，坚持把立德树人作为根本任务，坚持优先发展教育事业，坚持社会主义办学方向，坚持扎根中国大地办教育，坚持以人民为中心发展教育，坚持深化教育改革创新，坚持把服务中华民族伟大复兴作为教育的重要使命，坚持把教师队伍建设作为基础工作。这是我们对我国教育事业规律性认识的深化，来之不易，要始终坚持并不断丰富发展。 　　习近平强调，新时代新形势，改革开放和社会主义现代化建设、促进人的全面发展和社会全面进步对教育和学习提出了新的更高的要求。我们要抓住机遇、超前布局，以更高远的历史站位、更宽广的国际视野、更深邃的战略眼光，对加快推进教育现代化、建设教育强国作出总体部署和战略设计，坚持把优先发展教育事业作为推动党和国家各项事业发展的重要先手棋，不断使教育同党和国家事业发展要求相适应、同人民群众期待相契合、同我国综合国力和国际地位相匹配。 　　习近平指出，培养什么人，是教育的首要问题。我国是中国共产党领导的社会主义国家，这就决定了我们的教育必须把培养社会主义建设者和接班人作为根本任务，培养一代又一代拥护中国共产党领导和我国社会主义制度、立志为中国特色社会主义奋斗终身的有用人才。这是教育工作的根本任务，也是教育现代化的方向目标。 　　习近平强调，要在坚定理想信念上下功夫，教育引导学生树立共产主义远大理想和中国特色社会主义共同理想，增强学生的中国特色社会主义道路自信、理论自信、制度自信、文化自信，立志肩负起民族复兴的时代重任。要在厚植爱国主义情怀上下功夫，让爱国主义精神在学生心中牢牢扎根，教育引导学生热爱和拥护中国共产党，立志听党话、跟党走，立志扎根人民、奉献国家。要在加强品德修养上下功夫，教育引导学生培育和践行社会主义核心价值观，踏踏实实修好品德，成为有大爱大德大情怀的人。要在增长知识见识上下功夫，教育引导学生珍惜学习时光，心无旁骛求知问学，增长见识，丰富学识，沿着求真理、悟道理、明事理的方向前进。要在培养奋斗精神上下功夫，教育引导学生树立高远志向，历练敢于担当、不懈奋斗的精神，具有勇于奋斗的精神状态、乐观向上的人生态度，做到刚健有为、自强不息。要在增强综合素质上下功夫，教育引导学生培养综合能力，培养创新思维。要树立健康第一的教育理念，开齐开足体育课，帮助学生在体育锻炼中享受乐趣、增强体质、健全人格、锤炼意志。要全面加强和改进学校美育，坚持以美育人、以文化人，提高学生审美和人文素养。要在学生中弘扬劳动精神，教育引导学生崇尚劳动、尊重劳动，懂得劳动最光荣、劳动最崇高、劳动最伟大、劳动最美丽的道理，长大后能够辛勤劳动、诚实劳动、创造性劳动。 　　习近平指出，要努力构建德智体美劳全面培养的教育体系，形成更高水平的人才培养体系。要把立德树人融入思想道德教育、文化知识教育、社会实践教育各环节，贯穿基础教育、职业教育、高等教育各领域，学科体系、教学体系、教材体系、管理体系要围绕这个目标来设计，教师要围绕这个目标来教，学生要围绕这个目标来学。凡是不利于实现这个目标的做法都要坚决改过来。 　　习近平强调，建设社会主义现代化强国，对教师队伍建设提出新的更高要求，也对全党全社会尊师重教提出新的更高要求。人民教师无上光荣，每个教师都要珍惜这份光荣，爱惜这份职业，严格要求自己，不断完善自己。做老师就要执着于教书育人，有热爱教育的定力、淡泊名利的坚守。随着办学条件不断改善，教育投入要更多向教师倾斜，不断提高教师待遇，让广大教师安心从教、热心从教。对教师队伍中存在的问题，要坚决依法依纪予以严惩。 　　习近平指出，要深化教育体制改革，健全立德树人落实机制，扭转不科学的教育评价导向，坚决克服唯分数、唯升学、唯文凭、唯论文、唯帽子的顽瘴痼疾，从根本上解决教育评价指挥棒问题。要深化办学体制和教育管理改革，充分激发教育事业发展生机活力。要提升教育服务经济社会发展能力，调整优化高校区域布局、学科结构、专业设置，建立健全学科专业动态调整机制，加快一流大学和一流学科建设，推进产学研协同创新，积极投身实施创新驱动发展战略，着重培养创新型、复合型、应用型人才。要扩大教育开放，同世界一流资源开展高水平合作办学。 　　习近平强调，加强党对教育工作的全面领导，是办好教育的根本保证。教育部门和各级各类学校的党组织要增强“四个意识”、坚定“四个自信”，坚定不移维护党中央权威和集中统一领导，自觉在政治立场、政治方向、政治原则、政治道路上同党中央保持高度一致。各级党委要把教育改革发展纳入议事日程，党政主要负责同志要熟悉教育、关心教育、研究教育。各级各类学校党组织要把抓好学校党建工作作为办学治校的基本功，把党的教育方针全面贯彻到学校工作各方面。思想政治工作是学校各项工作的生命线，各级党委、各级教育主管部门、学校党组织都必须紧紧抓在手上。要精心培养和组织一支会做思想政治工作的政工队伍，把思想政治工作做在日常、做到个人。 　　习近平指出，办好教育事业，家庭、学校、政府、社会都有责任。家庭是人生的第一所学校，家长是孩子的第一任老师，要给孩子讲好“人生第一课”，帮助扣好人生第一粒扣子。教育、妇联等部门要统筹协调社会资源支持服务家庭教育。全社会要担负起青少年成长成才的责任。各级党委和政府要为学校办学安全托底，解决学校后顾之忧，维护老师和学校应有的尊严，保护学生生命安全。 　　李克强在讲话中指出，要认真学习领会和贯彻落实习近平总书记重要讲话精神，以习近平新时代中国特色社会主义思想为指导，准确把握教育事业发展面临的新形势新任务，全面落实教育优先发展战略，在经济社会发展规划上优先安排教育、财政资金投入上优先保障教育、公共资源配置上优先满足教育和人力资源开发需要。坚持改革创新，坚持教育公平，推动教育从规模增长向质量提升转变，促进区域、城乡和各级各类教育均衡发展，以教育现代化支撑国家现代化。要着力补上短板，夯实义务教育这个根基，强化农村特别是贫困地区控辍保学工作，完善城乡统一、重在农村的义务教育经费保障机制，着力改善乡村学校办学条件、提高教学质量，注重运用信息化手段使乡村获得更多优质教育资源，在提速降费、网络建设方面给予特别照顾。把更多教育投入用到加强乡村师资队伍建设上，不折不扣落实现行的补助、奖励和各类保障政策，对符合条件的非在编教师要加快入编、同工同酬。前瞻规划布局城镇学校建设，增强容纳能力，加快实现随迁子女入学待遇同城化。同时，要重视发展学前教育、高中阶段教育和民族教育、特殊教育、继续教育等各类教育。 　　李克强强调，要增强教育服务创新发展能力，培养更多适应高质量发展的各类人才。优化高校区域布局、学科结构、专业设置，坚持以教学为中心，突出创新意识和实践能力，培养更多创新人才、高素质人才。更加重视、充分发挥高校在强化基础研究和原始创新、突破关键核心技术中的重要作用。大力办好职业院校，坚持面向市场、服务发展、促进就业的办学方向，推进产教融合、校企合作，培养更多高技能人才。提高技术技能人才的社会地位和待遇。 　　李克强要求，要深化教育领域“放管服”改革，充分释放教育事业发展生机活力。尊重教育发展规律，充分发挥学校办学主体作用，大幅减少各类检查、评估、评价，加强对办学方向、标准、质量的规范引导，为学校潜心治校办学创造良好环境。积极鼓励社会力量依法兴办教育。鼓励各级各类学校与时俱进创新教育理念和人才培养模式，发展“互联网+教育”，完善吸引优秀人才从事教育的体制机制，提升教师社会地位，让尊师重教蔚然成风。 　　中共中央政治局委员、中央书记处书记，全国人大常委会有关领导同志，国务委员，最高人民法院院长，最高人民检察院检察长，全国政协有关领导同志出席大会。 　　中央教育工作领导小组成员，各省区市和计划单列市、新疆生产建设兵团，中央和国家机关有关部门、有关人民团体，军队有关单位，部分高校负责同志参加大会。','http://paper.people.com.cn/rmrb/html/2018-09/11/nw.D110000renmrb_20180911_2-01.htm',NULL,'2019-12-19 15:06:53',1),(68,'2018中国节','“这个活动太有意义了，不仅可以吃到正宗的中国特色美食，而且还能欣赏中国辉煌灿烂的传统文化。希望能早日去中国看看','文化交流','2018-09-10 00:00:00','人民日报',NULL,NULL,'“这个活动太有意义了，不仅可以吃到正宗的中国特色美食，而且还能欣赏中国辉煌灿烂的传统文化。希望能早日去中国看看。”9月8日，在东京举行的“2018年中国节”活动现场，家住日本埼玉县的中村保彦对本报记者说。 　　为纪念中日和平友好条约缔结40周年，“2018年中国节”9月8日—9日在东京代代木公园举办。本届“2018年中国节”实行委员长、中国驻日本大使程永华表示，“2018年中国节”是一场展示今日中国的盛会，也是一座增进中日两国民众相互理解和友好感情的桥梁。在中日交往史中，民间交流始终是推动两国关系向前发展的不竭动力。相信这一活动将成为中日两国民众加强面对面交流、增进友好感情的绝佳契机。 　　国之交在于民相亲。“近年来中国发展迅速，面貌可谓日新月异，希望日本民众多去中国走走，亲身感受中国迅速发展的脉搏。”“2018年中国节”实行委员会最高顾问、日本前首相福田康夫说，民间友谊是国家交往的基础，希望两国民众能够通过此次活动，进一步加深交流和相互理解。 　　为了让更多日本民众了解中国传统文化，东京中国文化中心从陕西省请来两位师傅，手把手教授捏面人、剪纸等，吸引不少小朋友前来学习。此外，东京中国文化中心工作人员还在现场教授编中国结。安庆市黄梅戏剧院、兰州歌舞剧院等中国地方演出团体精彩的文艺演出，引起现场观众的阵阵掌声。 　　“我非常喜欢中国文化。”家住代代木公园附近的加藤亚好美说，在家门口体验原汁原味的中国文化、品尝正宗的中国美食，没有比这更令人开心的事情。加藤亚好美还清晰地记得1978年第一次去中国的情形。她说，改革开放40年来中国发展迅速，希望有机会多去中国看看。日中两国一衣带水，友好交往的历史源远流长，希望两国永远友好下去。 　　“2018年中国节”受到中日双方各界积极响应和大力支持，致力于中日交流的多个机构和团体负责人出任实行委员，两国外交、文化、旅游等政府部门担任活动后援单位。“2018年中国节”场内设置了百余个展位，通过文艺演出、文化展示、美食品尝、旅游推介等方式向日本民众介绍中国。不少展位前排起了长长的队伍。活动期间还举行了超辣食品比赛、拉面比赛、乒乓球比赛等活动，吸引了包括日本民众、旅日华侨华人在内约15万人参加。 　　日本民众纷纷在社交媒体上分享参加“2018年中国节”的照片，推荐家人和朋友参加。不少日本民众更加了解了中国辉煌灿烂的历史和飞速发展的今天，期盼中日关系更加友好密切。 　　（本报东京9月9日电）','http://paper.people.com.cn/rmrb/html/2018-09/10/nw.D110000renmrb_20180910_4-21.htm',NULL,'2019-12-19 15:06:53',1);
/*!40000 ALTER TABLE `rs_textlibrary_data_25` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rs_textlibrary_data_26`
--

DROP TABLE IF EXISTS `rs_textlibrary_data_26`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rs_textlibrary_data_26` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `summary` text,
  `keywords` varchar(255) DEFAULT NULL,
  `publish_time` datetime DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `page` varchar(20) DEFAULT NULL,
  `content` text,
  `url` varchar(512) DEFAULT NULL,
  `publish_source` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `is_delete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rs_textlibrary_data_26`
--

LOCK TABLES `rs_textlibrary_data_26` WRITE;
/*!40000 ALTER TABLE `rs_textlibrary_data_26` DISABLE KEYS */;
INSERT INTO `rs_textlibrary_data_26` VALUES (1,'胡锦涛等九常委出席中国工会第15次大会',' 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体','十五大 全国总工会新一届领导集体','2018-08-02 00:00:00','中新网',NULL,NULL,'中新网10月17日电 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体。　　胡锦涛、吴邦国、温家宝、贾庆林、李长春、习近平、李克强、贺国强、周永康等党和国家领导人出席今天的开幕大会。习近平代表中共中央致祝词。　　王兆国将在今天的大会上作全国工会十五大报告。　　上午九时，王兆国宣布中国工会第十五次全国代表大会开幕。今天的大会应到代表1800名，特邀代表289名，实到代表1776名，缺席24名，符合法定人数。　　本次大会将总结过去五年的工会工作，明确今后五年工会工作的主要任务，并将选举产生全国总工会新一届领导集体。','http://baidu.com',NULL,'2019-12-19 15:14:05',0),(2,'江西省樟树市','走进江西省樟树市店下镇大汗村大汗村小组，只见村落依山而建，村前阡陌纵横，村内石溪潺潺……扑面而来的山野气息，让人忘却了夏日炎热','江西  小组','2018-09-09 00:00:00','新华社',NULL,NULL,'走进江西省樟树市店下镇大汗村大汗村小组，只见村落依山而建，村前阡陌纵横，村内石溪潺潺……扑面而来的山野气息，让人忘却了夏日炎热。 　　“先到屋里坐一坐，吃点饭再去爬山。”下午4点，在一处绿色掩映的农家院落前，主人徐国平热情地迎了上来。一会儿工夫，老徐就端来了几碗绿茶以及花生、咸萝卜等小吃。 　　大汗村小组位于玉华山脚下，距樟树城区30多公里，海拔600多米，森林覆盖率达90%以上。每到节假日，许多游客前来观光休闲、登山越野。“以前咱山里人靠山吃山，以砍竹子、编竹篓过日子，一年到头也赚不了几个钱。”徐国平说，如今，村民们利用好山好水发展乡村旅游，收入翻了几番，每年收入不下10万元。 　　大汗村小组是樟树市秀美乡村建设精品示范点，政府先后投资1000万元，聘请专业设计公司进行规划建设，完善进村道路、给排水设施，整治村容村貌，利用村庄生态与文化旅游资源，盘活梯田、竹林、石溪等景观，修葺步行道路、栈道，增设休闲景观设施，提升村庄整体风貌环境。徐国平说：“村里不仅修通了水泥路，喝上了自来水，还实现了有线电视和网络的全覆盖，现在农家乐的生意越来越好了。” 　　“我们村像徐国平这样的不在少数，村里还有五六户在筹办农家乐或民宿旅舍。”大汗村党支部书记徐七根说，现在大汗村小组每年接待游客10多万人次，旅游综合收入上千万元。','http://paper.people.com.cn/rmrb/html/2018-09/09/nw.D110000renmrb_20180909_3-11.htm',NULL,'2019-12-19 15:14:05',0),(3,'核心阅读','西北工业大学在培养学生时，引入“生涯”概念，促使学生提前思考、规划；推行完全学分制，课程的难易度和宽广度由学生自主选择；开设职业发展教育课程，邀请行业大咖传授经验；在生产实习之外安排认识实习，使学生全面认识用人单位的生产管理状况，打开求职思路。','西北工业大学','2018-09-13 00:00:00','西北工业大学',NULL,NULL,'在引导帮扶大学生就业方面，高校如何发挥更大作用？ 　　西北工业大学在培养学生时，引入“生涯”概念，促使学生提前思考、规划；推行完全学分制，课程的难易度和宽广度由学生自主选择；开设职业发展教育课程，邀请行业大咖传授经验；在生产实习之外安排认识实习，使学生全面认识用人单位的生产管理状况，打开求职思路。这表明，高校从多渠道着手引导、保障大学生就业，对稳就业来说很有价值。 　　　　　　 　　“生涯密钥”，是西北工业大学送给2018年入学新生的一份特别的礼物。同学们拿到通知书后，通过扫描二维码，就可以用这把“钥匙”，打开一个海量数据库。 　　岗位和单位是啥性质？就业地点在哪？薪酬水平多少？运用大数据，师兄师姐的选择汇聚成了一张就业全景图，为这些充满好奇的年轻人提供了可靠的参考。 　　“这几年，学校在培养学生时引入‘生涯’的概念。”中国科学院院士、西北工业大学常务副校长黄维说，“无论是‘生涯密钥’大数据，还是推行完全学分制、倡导生产实习和认识实习，这些都旨在强化学生的‘生涯意识’，让学生能提前思考、提早规划。” 　　完全学分制 　　修够学分即能毕业，选啥课学生说了算 　　作为2018年的毕业生，钟昆洋的个人数据也添加进了学校的就业大数据中。4年前入学时，他也曾收到这样的礼物。 　　“我们2014级学生，是学校实行完全学分制的首批获益者。”钟昆洋说，“在课程选择上，不再像往届一样由教务处直接置入课程，而是每个人根据自己的喜好选择课程。” 　　经过两年的调研，西北工业大学于2014年启动了优化本科生人才培养方案。重点改革，就是实行完全学分制，让学生自主选择课程。 　　有些学生录取时被调剂了专业，在完全学分制下就可以实现“换专业”。学校的课程是分模块的。一年级理工类，基础课程模块基本相同。到了二年级，则可以根据自己的兴趣爱好选专业课，只要接收学院同意，就可以学习该学院的专业课模块。 　　配套完全学分制改革，学校允许学生自主选择课程。学生可根据自身情况，选择课程难易度和宽广度。比如，数学基础好的，可以跳过高等数学，直接选择工科数学分析；学飞行器设计的，也可以选择和专业不相关的管理学课程。 　　“学生基于自身兴趣和需要选课，有了更多的自主权。只要达到毕业所要求修的学分，就可以了。”党委学生工作部副部长、学生处副处长王莉说。 　　课程选择上的自由，让钟昆洋尝到了甜头。大三的时候，他就读完了原本在大四才可以选的专业选修课。到了大四，他的学习任务轻，可以花更多时间去寻找适合的工作，准备笔试和面试。 　　职业发展课 　　帮助认知自我，邀请大咖分享，再现招聘过程 　　“因为在课程选择上完全自由，新生容易在无拘束的环境中迷失方向。”学生就业创业指导服务中心老师朱莉说，“所以，指导中心除了在入学时开展新生导航讲座外，还开设了多门职业发展教育课程，希望能给学生一些指引。” 　　刚进大学时，钟昆洋也曾有“选择困难症”。大一时，他便选修了《大学生职业生涯规划》课程。课上，他结识了对他职业生涯有很大影响的朱莉老师。 　　“我们对钟昆洋同学进行了个性化的学业指导，利用学校成熟的职业测评工具，帮助他认知自我兴趣、性格以及价值观。根据他的情况，提供了相应的成长方案。”朱莉说。 　　在老师的帮助下，钟昆洋逐渐了解了自己和外在环境，确定了大学的学习生活目标，有规划地安排了4年的生活。大二时，他在朱莉老师的建议下选修了《求职有道》。这门课程，真实再现了企业招聘的全过程，让学生从招聘官的角度认知企业对人才的要求。 　　“在这些课程中，许多行业大咖现身说法。前辈们的交流分享、老师们的专业指导，使我对职业规划的重要性有了认识。我觉得自己的情况更适合先就业，而不是读研。”钟昆洋说。 　　随后，钟昆洋开始留意就业志愿者服务队的相关信息。大三时，他加入了服务队。这是一支由学生就业创业指导服务中心指导的，主要负责服务用人单位校园招聘工作的专业志愿者队伍。“这个团队有10年的光荣历史。钟昆洋勤恳踏实，待人真诚有礼貌，有很强的责任感，很快就成长为团队的队长。”朱莉老师说。 　　在就业中心，钟昆洋的主要工作是给用人单位安排场地，以及协调宣讲会相关工作。“这个过程中，可以和很多企业的人力资源部人员进行交流，积累求职经验，第一时间获得招聘信息。更重要的，是可以锻炼自己的综合协调能力。”钟昆洋说。 　　业界找感觉 　　除了生产实习，还安排了解型的认识实习 　　“大三是学生找工作的关键预备期。学校为每位学生安排了认识实习与生产实习。”朱莉介绍。 　　认识实习，旨在让学生全面了解用人单位的生产管理状况，从而获得对专业生产实践的初步认识。主要途径，是到相关企业参观学习。 　　“学院用了一个星期的时间，带我们参观了西安本地的5家军工企业。”钟昆洋说，在参观过程中，他了解到自己所在的微机电系统工程专业应用非常广泛，比如很多高端机器应用的传感器，都涉及这一专业。 　　然而，要从事本专业对口的工作，本科所学的并不够用，还需继续深造。这与先找工作的规划产生了矛盾，使钟昆洋陷入了困惑。 　　“在职业生涯辅导中，我了解到了他的困惑。”朱莉说，“微机电系统工程专业，是机械和微电子的交叉学科。所以我建议他，找工作不要局限于小专业，可以在机械和电子这个大类里去找。” 　　老师的点拨打开了钟昆洋的思路。之后，他拒绝了学校安排的生产实习。“学校安排的生产实习，是和专业密切相关的企业。我想从朱老师建议的大类上找工作，这样实习才对我找工作有帮助。”钟昆洋说。 　　大三暑假，钟昆洋申请去宁波某空调企业实习。在生产一线的工作，让他对自己的未来有了更清晰的认识。通过和他人交流，供应链管理、生产管理等书本上的概念，变得具体了起来。 　　“制造业的工作分工差不多。招聘的时候，我就知道自己想去什么岗位了。”钟昆洋说。 　　3年的认真探索和准备，为钟昆洋铺好了求职之路。大四刚开学，他就拿到中国航发贵州黎阳航空发动机有限公司抛来的橄榄枝，成为机电学院“第一签”。 　　“一线城市也曾考虑过，但生活成本太高了。回到老家，生活闲适，还可以陪家人，认识的同学也多。”钟昆洋说，“我们学校的许多同学，都有投身国防、报效国家的心思，我也不例外。这家公司，就是我的最佳选择。” 　　8月17日，钟昆洋到公司报到，经过一个星期的培训，他走上了自己心仪的工作岗位。','http://paper.people.com.cn/rmrb/html/2018-09/13/nw.D110000renmrb_20180913_1-17.htm',NULL,'2019-12-19 15:14:05',0),(4,'全国教育大会','全国教育大会10日在北京召开。中共中央总书记、国家主席、中央军委主席习近平出席会议并发表重要讲话','习近平 党','2018-09-11 00:00:00','人民网',NULL,NULL,'本报北京9月10日电  （记者张烁）全国教育大会10日在北京召开。中共中央总书记、国家主席、中央军委主席习近平出席会议并发表重要讲话。他强调，在党的坚强领导下，全面贯彻党的教育方针，坚持马克思主义指导地位，坚持中国特色社会主义教育发展道路，坚持社会主义办学方向，立足基本国情，遵循教育规律，坚持改革创新，以凝聚人心、完善人格、开发人力、培育人才、造福人民为工作目标，培养德智体美劳全面发展的社会主义建设者和接班人，加快推进教育现代化、建设教育强国、办好人民满意的教育。 　　9月10日是我国第三十四个教师节，习近平代表党中央，向全国广大教师和教育工作者致以节日的热烈祝贺和诚挚问候。他强调，长期以来，广大教师贯彻党的教育方针，教书育人，呕心沥血，默默奉献，为国家发展和民族振兴作出了重大贡献。教师是人类灵魂的工程师，是人类文明的传承者，承载着传播知识、传播思想、传播真理，塑造灵魂、塑造生命、塑造新人的时代重任。全党全社会要弘扬尊师重教的社会风尚，努力提高教师政治地位、社会地位、职业地位，让广大教师享有应有的社会声望，在教书育人岗位上为党和人民事业作出新的更大的贡献。 　　李克强在会上讲话。汪洋、王沪宁、赵乐际、韩正出席会议。 　　习近平在讲话中指出，党的十九大从新时代坚持和发展中国特色社会主义的战略高度，作出了优先发展教育事业、加快教育现代化、建设教育强国的重大部署。教育是民族振兴、社会进步的重要基石，是功在当代、利在千秋的德政工程，对提高人民综合素质、促进人的全面发展、增强中华民族创新创造活力、实现中华民族伟大复兴具有决定性意义。教育是国之大计、党之大计。 　　习近平强调，党的十八大以来，我们围绕培养什么人、怎样培养人、为谁培养人这一根本问题，全面加强党对教育工作的领导，坚持立德树人，加强学校思想政治工作，推进教育改革，加快补齐教育短板，教育事业中国特色更加鲜明，教育现代化加速推进，教育方面人民群众获得感明显增强，我国教育的国际影响力加快提升，13亿多中国人民的思想道德素质和科学文化素质全面提升。 　　习近平指出，在实践中，我们就教育改革发展提出一系列新理念新思想新观点，主要有以下几个方面，坚持党对教育事业的全面领导，坚持把立德树人作为根本任务，坚持优先发展教育事业，坚持社会主义办学方向，坚持扎根中国大地办教育，坚持以人民为中心发展教育，坚持深化教育改革创新，坚持把服务中华民族伟大复兴作为教育的重要使命，坚持把教师队伍建设作为基础工作。这是我们对我国教育事业规律性认识的深化，来之不易，要始终坚持并不断丰富发展。 　　习近平强调，新时代新形势，改革开放和社会主义现代化建设、促进人的全面发展和社会全面进步对教育和学习提出了新的更高的要求。我们要抓住机遇、超前布局，以更高远的历史站位、更宽广的国际视野、更深邃的战略眼光，对加快推进教育现代化、建设教育强国作出总体部署和战略设计，坚持把优先发展教育事业作为推动党和国家各项事业发展的重要先手棋，不断使教育同党和国家事业发展要求相适应、同人民群众期待相契合、同我国综合国力和国际地位相匹配。 　　习近平指出，培养什么人，是教育的首要问题。我国是中国共产党领导的社会主义国家，这就决定了我们的教育必须把培养社会主义建设者和接班人作为根本任务，培养一代又一代拥护中国共产党领导和我国社会主义制度、立志为中国特色社会主义奋斗终身的有用人才。这是教育工作的根本任务，也是教育现代化的方向目标。 　　习近平强调，要在坚定理想信念上下功夫，教育引导学生树立共产主义远大理想和中国特色社会主义共同理想，增强学生的中国特色社会主义道路自信、理论自信、制度自信、文化自信，立志肩负起民族复兴的时代重任。要在厚植爱国主义情怀上下功夫，让爱国主义精神在学生心中牢牢扎根，教育引导学生热爱和拥护中国共产党，立志听党话、跟党走，立志扎根人民、奉献国家。要在加强品德修养上下功夫，教育引导学生培育和践行社会主义核心价值观，踏踏实实修好品德，成为有大爱大德大情怀的人。要在增长知识见识上下功夫，教育引导学生珍惜学习时光，心无旁骛求知问学，增长见识，丰富学识，沿着求真理、悟道理、明事理的方向前进。要在培养奋斗精神上下功夫，教育引导学生树立高远志向，历练敢于担当、不懈奋斗的精神，具有勇于奋斗的精神状态、乐观向上的人生态度，做到刚健有为、自强不息。要在增强综合素质上下功夫，教育引导学生培养综合能力，培养创新思维。要树立健康第一的教育理念，开齐开足体育课，帮助学生在体育锻炼中享受乐趣、增强体质、健全人格、锤炼意志。要全面加强和改进学校美育，坚持以美育人、以文化人，提高学生审美和人文素养。要在学生中弘扬劳动精神，教育引导学生崇尚劳动、尊重劳动，懂得劳动最光荣、劳动最崇高、劳动最伟大、劳动最美丽的道理，长大后能够辛勤劳动、诚实劳动、创造性劳动。 　　习近平指出，要努力构建德智体美劳全面培养的教育体系，形成更高水平的人才培养体系。要把立德树人融入思想道德教育、文化知识教育、社会实践教育各环节，贯穿基础教育、职业教育、高等教育各领域，学科体系、教学体系、教材体系、管理体系要围绕这个目标来设计，教师要围绕这个目标来教，学生要围绕这个目标来学。凡是不利于实现这个目标的做法都要坚决改过来。 　　习近平强调，建设社会主义现代化强国，对教师队伍建设提出新的更高要求，也对全党全社会尊师重教提出新的更高要求。人民教师无上光荣，每个教师都要珍惜这份光荣，爱惜这份职业，严格要求自己，不断完善自己。做老师就要执着于教书育人，有热爱教育的定力、淡泊名利的坚守。随着办学条件不断改善，教育投入要更多向教师倾斜，不断提高教师待遇，让广大教师安心从教、热心从教。对教师队伍中存在的问题，要坚决依法依纪予以严惩。 　　习近平指出，要深化教育体制改革，健全立德树人落实机制，扭转不科学的教育评价导向，坚决克服唯分数、唯升学、唯文凭、唯论文、唯帽子的顽瘴痼疾，从根本上解决教育评价指挥棒问题。要深化办学体制和教育管理改革，充分激发教育事业发展生机活力。要提升教育服务经济社会发展能力，调整优化高校区域布局、学科结构、专业设置，建立健全学科专业动态调整机制，加快一流大学和一流学科建设，推进产学研协同创新，积极投身实施创新驱动发展战略，着重培养创新型、复合型、应用型人才。要扩大教育开放，同世界一流资源开展高水平合作办学。 　　习近平强调，加强党对教育工作的全面领导，是办好教育的根本保证。教育部门和各级各类学校的党组织要增强“四个意识”、坚定“四个自信”，坚定不移维护党中央权威和集中统一领导，自觉在政治立场、政治方向、政治原则、政治道路上同党中央保持高度一致。各级党委要把教育改革发展纳入议事日程，党政主要负责同志要熟悉教育、关心教育、研究教育。各级各类学校党组织要把抓好学校党建工作作为办学治校的基本功，把党的教育方针全面贯彻到学校工作各方面。思想政治工作是学校各项工作的生命线，各级党委、各级教育主管部门、学校党组织都必须紧紧抓在手上。要精心培养和组织一支会做思想政治工作的政工队伍，把思想政治工作做在日常、做到个人。 　　习近平指出，办好教育事业，家庭、学校、政府、社会都有责任。家庭是人生的第一所学校，家长是孩子的第一任老师，要给孩子讲好“人生第一课”，帮助扣好人生第一粒扣子。教育、妇联等部门要统筹协调社会资源支持服务家庭教育。全社会要担负起青少年成长成才的责任。各级党委和政府要为学校办学安全托底，解决学校后顾之忧，维护老师和学校应有的尊严，保护学生生命安全。 　　李克强在讲话中指出，要认真学习领会和贯彻落实习近平总书记重要讲话精神，以习近平新时代中国特色社会主义思想为指导，准确把握教育事业发展面临的新形势新任务，全面落实教育优先发展战略，在经济社会发展规划上优先安排教育、财政资金投入上优先保障教育、公共资源配置上优先满足教育和人力资源开发需要。坚持改革创新，坚持教育公平，推动教育从规模增长向质量提升转变，促进区域、城乡和各级各类教育均衡发展，以教育现代化支撑国家现代化。要着力补上短板，夯实义务教育这个根基，强化农村特别是贫困地区控辍保学工作，完善城乡统一、重在农村的义务教育经费保障机制，着力改善乡村学校办学条件、提高教学质量，注重运用信息化手段使乡村获得更多优质教育资源，在提速降费、网络建设方面给予特别照顾。把更多教育投入用到加强乡村师资队伍建设上，不折不扣落实现行的补助、奖励和各类保障政策，对符合条件的非在编教师要加快入编、同工同酬。前瞻规划布局城镇学校建设，增强容纳能力，加快实现随迁子女入学待遇同城化。同时，要重视发展学前教育、高中阶段教育和民族教育、特殊教育、继续教育等各类教育。 　　李克强强调，要增强教育服务创新发展能力，培养更多适应高质量发展的各类人才。优化高校区域布局、学科结构、专业设置，坚持以教学为中心，突出创新意识和实践能力，培养更多创新人才、高素质人才。更加重视、充分发挥高校在强化基础研究和原始创新、突破关键核心技术中的重要作用。大力办好职业院校，坚持面向市场、服务发展、促进就业的办学方向，推进产教融合、校企合作，培养更多高技能人才。提高技术技能人才的社会地位和待遇。 　　李克强要求，要深化教育领域“放管服”改革，充分释放教育事业发展生机活力。尊重教育发展规律，充分发挥学校办学主体作用，大幅减少各类检查、评估、评价，加强对办学方向、标准、质量的规范引导，为学校潜心治校办学创造良好环境。积极鼓励社会力量依法兴办教育。鼓励各级各类学校与时俱进创新教育理念和人才培养模式，发展“互联网+教育”，完善吸引优秀人才从事教育的体制机制，提升教师社会地位，让尊师重教蔚然成风。 　　中共中央政治局委员、中央书记处书记，全国人大常委会有关领导同志，国务委员，最高人民法院院长，最高人民检察院检察长，全国政协有关领导同志出席大会。 　　中央教育工作领导小组成员，各省区市和计划单列市、新疆生产建设兵团，中央和国家机关有关部门、有关人民团体，军队有关单位，部分高校负责同志参加大会。','http://paper.people.com.cn/rmrb/html/2018-09/11/nw.D110000renmrb_20180911_2-01.htm',NULL,'2019-12-19 15:14:05',0),(5,'2018中国节','“这个活动太有意义了，不仅可以吃到正宗的中国特色美食，而且还能欣赏中国辉煌灿烂的传统文化。希望能早日去中国看看','文化交流','2018-09-10 00:00:00','人民日报',NULL,NULL,'“这个活动太有意义了，不仅可以吃到正宗的中国特色美食，而且还能欣赏中国辉煌灿烂的传统文化。希望能早日去中国看看。”9月8日，在东京举行的“2018年中国节”活动现场，家住日本埼玉县的中村保彦对本报记者说。 　　为纪念中日和平友好条约缔结40周年，“2018年中国节”9月8日—9日在东京代代木公园举办。本届“2018年中国节”实行委员长、中国驻日本大使程永华表示，“2018年中国节”是一场展示今日中国的盛会，也是一座增进中日两国民众相互理解和友好感情的桥梁。在中日交往史中，民间交流始终是推动两国关系向前发展的不竭动力。相信这一活动将成为中日两国民众加强面对面交流、增进友好感情的绝佳契机。 　　国之交在于民相亲。“近年来中国发展迅速，面貌可谓日新月异，希望日本民众多去中国走走，亲身感受中国迅速发展的脉搏。”“2018年中国节”实行委员会最高顾问、日本前首相福田康夫说，民间友谊是国家交往的基础，希望两国民众能够通过此次活动，进一步加深交流和相互理解。 　　为了让更多日本民众了解中国传统文化，东京中国文化中心从陕西省请来两位师傅，手把手教授捏面人、剪纸等，吸引不少小朋友前来学习。此外，东京中国文化中心工作人员还在现场教授编中国结。安庆市黄梅戏剧院、兰州歌舞剧院等中国地方演出团体精彩的文艺演出，引起现场观众的阵阵掌声。 　　“我非常喜欢中国文化。”家住代代木公园附近的加藤亚好美说，在家门口体验原汁原味的中国文化、品尝正宗的中国美食，没有比这更令人开心的事情。加藤亚好美还清晰地记得1978年第一次去中国的情形。她说，改革开放40年来中国发展迅速，希望有机会多去中国看看。日中两国一衣带水，友好交往的历史源远流长，希望两国永远友好下去。 　　“2018年中国节”受到中日双方各界积极响应和大力支持，致力于中日交流的多个机构和团体负责人出任实行委员，两国外交、文化、旅游等政府部门担任活动后援单位。“2018年中国节”场内设置了百余个展位，通过文艺演出、文化展示、美食品尝、旅游推介等方式向日本民众介绍中国。不少展位前排起了长长的队伍。活动期间还举行了超辣食品比赛、拉面比赛、乒乓球比赛等活动，吸引了包括日本民众、旅日华侨华人在内约15万人参加。 　　日本民众纷纷在社交媒体上分享参加“2018年中国节”的照片，推荐家人和朋友参加。不少日本民众更加了解了中国辉煌灿烂的历史和飞速发展的今天，期盼中日关系更加友好密切。 　　（本报东京9月9日电）','http://paper.people.com.cn/rmrb/html/2018-09/10/nw.D110000renmrb_20180910_4-21.htm',NULL,'2019-12-19 15:14:05',0);
/*!40000 ALTER TABLE `rs_textlibrary_data_26` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rs_textlibrary_data_27`
--

DROP TABLE IF EXISTS `rs_textlibrary_data_27`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rs_textlibrary_data_27` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `summary` text,
  `keywords` varchar(255) DEFAULT NULL,
  `publish_time` datetime DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `page` varchar(20) DEFAULT NULL,
  `content` text,
  `url` varchar(512) DEFAULT NULL,
  `publish_source` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `is_delete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rs_textlibrary_data_27`
--

LOCK TABLES `rs_textlibrary_data_27` WRITE;
/*!40000 ALTER TABLE `rs_textlibrary_data_27` DISABLE KEYS */;
INSERT INTO `rs_textlibrary_data_27` VALUES (1,'胡锦涛等九常委出席中国工会第15次大会',' 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体','十五大 全国总工会新一届领导集体','2018-08-02 00:00:00','中新网',NULL,NULL,'中新网10月17日电 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体。　　胡锦涛、吴邦国、温家宝、贾庆林、李长春、习近平、李克强、贺国强、周永康等党和国家领导人出席今天的开幕大会。习近平代表中共中央致祝词。　　王兆国将在今天的大会上作全国工会十五大报告。　　上午九时，王兆国宣布中国工会第十五次全国代表大会开幕。今天的大会应到代表1800名，特邀代表289名，实到代表1776名，缺席24名，符合法定人数。　　本次大会将总结过去五年的工会工作，明确今后五年工会工作的主要任务，并将选举产生全国总工会新一届领导集体。','http://baidu.com',NULL,'2019-12-19 16:44:01',1),(2,'江西省樟树市','走进江西省樟树市店下镇大汗村大汗村小组，只见村落依山而建，村前阡陌纵横，村内石溪潺潺……扑面而来的山野气息，让人忘却了夏日炎热','江西  小组','2018-09-09 00:00:00','新华社',NULL,NULL,'走进江西省樟树市店下镇大汗村大汗村小组，只见村落依山而建，村前阡陌纵横，村内石溪潺潺……扑面而来的山野气息，让人忘却了夏日炎热。 　　“先到屋里坐一坐，吃点饭再去爬山。”下午4点，在一处绿色掩映的农家院落前，主人徐国平热情地迎了上来。一会儿工夫，老徐就端来了几碗绿茶以及花生、咸萝卜等小吃。 　　大汗村小组位于玉华山脚下，距樟树城区30多公里，海拔600多米，森林覆盖率达90%以上。每到节假日，许多游客前来观光休闲、登山越野。“以前咱山里人靠山吃山，以砍竹子、编竹篓过日子，一年到头也赚不了几个钱。”徐国平说，如今，村民们利用好山好水发展乡村旅游，收入翻了几番，每年收入不下10万元。 　　大汗村小组是樟树市秀美乡村建设精品示范点，政府先后投资1000万元，聘请专业设计公司进行规划建设，完善进村道路、给排水设施，整治村容村貌，利用村庄生态与文化旅游资源，盘活梯田、竹林、石溪等景观，修葺步行道路、栈道，增设休闲景观设施，提升村庄整体风貌环境。徐国平说：“村里不仅修通了水泥路，喝上了自来水，还实现了有线电视和网络的全覆盖，现在农家乐的生意越来越好了。” 　　“我们村像徐国平这样的不在少数，村里还有五六户在筹办农家乐或民宿旅舍。”大汗村党支部书记徐七根说，现在大汗村小组每年接待游客10多万人次，旅游综合收入上千万元。','http://paper.people.com.cn/rmrb/html/2018-09/09/nw.D110000renmrb_20180909_3-11.htm',NULL,'2019-12-19 16:44:01',1),(3,'核心阅读','西北工业大学在培养学生时，引入“生涯”概念，促使学生提前思考、规划；推行完全学分制，课程的难易度和宽广度由学生自主选择；开设职业发展教育课程，邀请行业大咖传授经验；在生产实习之外安排认识实习，使学生全面认识用人单位的生产管理状况，打开求职思路。','西北工业大学','2018-09-13 00:00:00','西北工业大学',NULL,NULL,'在引导帮扶大学生就业方面，高校如何发挥更大作用？ 　　西北工业大学在培养学生时，引入“生涯”概念，促使学生提前思考、规划；推行完全学分制，课程的难易度和宽广度由学生自主选择；开设职业发展教育课程，邀请行业大咖传授经验；在生产实习之外安排认识实习，使学生全面认识用人单位的生产管理状况，打开求职思路。这表明，高校从多渠道着手引导、保障大学生就业，对稳就业来说很有价值。 　　　　　　 　　“生涯密钥”，是西北工业大学送给2018年入学新生的一份特别的礼物。同学们拿到通知书后，通过扫描二维码，就可以用这把“钥匙”，打开一个海量数据库。 　　岗位和单位是啥性质？就业地点在哪？薪酬水平多少？运用大数据，师兄师姐的选择汇聚成了一张就业全景图，为这些充满好奇的年轻人提供了可靠的参考。 　　“这几年，学校在培养学生时引入‘生涯’的概念。”中国科学院院士、西北工业大学常务副校长黄维说，“无论是‘生涯密钥’大数据，还是推行完全学分制、倡导生产实习和认识实习，这些都旨在强化学生的‘生涯意识’，让学生能提前思考、提早规划。” 　　完全学分制 　　修够学分即能毕业，选啥课学生说了算 　　作为2018年的毕业生，钟昆洋的个人数据也添加进了学校的就业大数据中。4年前入学时，他也曾收到这样的礼物。 　　“我们2014级学生，是学校实行完全学分制的首批获益者。”钟昆洋说，“在课程选择上，不再像往届一样由教务处直接置入课程，而是每个人根据自己的喜好选择课程。” 　　经过两年的调研，西北工业大学于2014年启动了优化本科生人才培养方案。重点改革，就是实行完全学分制，让学生自主选择课程。 　　有些学生录取时被调剂了专业，在完全学分制下就可以实现“换专业”。学校的课程是分模块的。一年级理工类，基础课程模块基本相同。到了二年级，则可以根据自己的兴趣爱好选专业课，只要接收学院同意，就可以学习该学院的专业课模块。 　　配套完全学分制改革，学校允许学生自主选择课程。学生可根据自身情况，选择课程难易度和宽广度。比如，数学基础好的，可以跳过高等数学，直接选择工科数学分析；学飞行器设计的，也可以选择和专业不相关的管理学课程。 　　“学生基于自身兴趣和需要选课，有了更多的自主权。只要达到毕业所要求修的学分，就可以了。”党委学生工作部副部长、学生处副处长王莉说。 　　课程选择上的自由，让钟昆洋尝到了甜头。大三的时候，他就读完了原本在大四才可以选的专业选修课。到了大四，他的学习任务轻，可以花更多时间去寻找适合的工作，准备笔试和面试。 　　职业发展课 　　帮助认知自我，邀请大咖分享，再现招聘过程 　　“因为在课程选择上完全自由，新生容易在无拘束的环境中迷失方向。”学生就业创业指导服务中心老师朱莉说，“所以，指导中心除了在入学时开展新生导航讲座外，还开设了多门职业发展教育课程，希望能给学生一些指引。” 　　刚进大学时，钟昆洋也曾有“选择困难症”。大一时，他便选修了《大学生职业生涯规划》课程。课上，他结识了对他职业生涯有很大影响的朱莉老师。 　　“我们对钟昆洋同学进行了个性化的学业指导，利用学校成熟的职业测评工具，帮助他认知自我兴趣、性格以及价值观。根据他的情况，提供了相应的成长方案。”朱莉说。 　　在老师的帮助下，钟昆洋逐渐了解了自己和外在环境，确定了大学的学习生活目标，有规划地安排了4年的生活。大二时，他在朱莉老师的建议下选修了《求职有道》。这门课程，真实再现了企业招聘的全过程，让学生从招聘官的角度认知企业对人才的要求。 　　“在这些课程中，许多行业大咖现身说法。前辈们的交流分享、老师们的专业指导，使我对职业规划的重要性有了认识。我觉得自己的情况更适合先就业，而不是读研。”钟昆洋说。 　　随后，钟昆洋开始留意就业志愿者服务队的相关信息。大三时，他加入了服务队。这是一支由学生就业创业指导服务中心指导的，主要负责服务用人单位校园招聘工作的专业志愿者队伍。“这个团队有10年的光荣历史。钟昆洋勤恳踏实，待人真诚有礼貌，有很强的责任感，很快就成长为团队的队长。”朱莉老师说。 　　在就业中心，钟昆洋的主要工作是给用人单位安排场地，以及协调宣讲会相关工作。“这个过程中，可以和很多企业的人力资源部人员进行交流，积累求职经验，第一时间获得招聘信息。更重要的，是可以锻炼自己的综合协调能力。”钟昆洋说。 　　业界找感觉 　　除了生产实习，还安排了解型的认识实习 　　“大三是学生找工作的关键预备期。学校为每位学生安排了认识实习与生产实习。”朱莉介绍。 　　认识实习，旨在让学生全面了解用人单位的生产管理状况，从而获得对专业生产实践的初步认识。主要途径，是到相关企业参观学习。 　　“学院用了一个星期的时间，带我们参观了西安本地的5家军工企业。”钟昆洋说，在参观过程中，他了解到自己所在的微机电系统工程专业应用非常广泛，比如很多高端机器应用的传感器，都涉及这一专业。 　　然而，要从事本专业对口的工作，本科所学的并不够用，还需继续深造。这与先找工作的规划产生了矛盾，使钟昆洋陷入了困惑。 　　“在职业生涯辅导中，我了解到了他的困惑。”朱莉说，“微机电系统工程专业，是机械和微电子的交叉学科。所以我建议他，找工作不要局限于小专业，可以在机械和电子这个大类里去找。” 　　老师的点拨打开了钟昆洋的思路。之后，他拒绝了学校安排的生产实习。“学校安排的生产实习，是和专业密切相关的企业。我想从朱老师建议的大类上找工作，这样实习才对我找工作有帮助。”钟昆洋说。 　　大三暑假，钟昆洋申请去宁波某空调企业实习。在生产一线的工作，让他对自己的未来有了更清晰的认识。通过和他人交流，供应链管理、生产管理等书本上的概念，变得具体了起来。 　　“制造业的工作分工差不多。招聘的时候，我就知道自己想去什么岗位了。”钟昆洋说。 　　3年的认真探索和准备，为钟昆洋铺好了求职之路。大四刚开学，他就拿到中国航发贵州黎阳航空发动机有限公司抛来的橄榄枝，成为机电学院“第一签”。 　　“一线城市也曾考虑过，但生活成本太高了。回到老家，生活闲适，还可以陪家人，认识的同学也多。”钟昆洋说，“我们学校的许多同学，都有投身国防、报效国家的心思，我也不例外。这家公司，就是我的最佳选择。” 　　8月17日，钟昆洋到公司报到，经过一个星期的培训，他走上了自己心仪的工作岗位。','http://paper.people.com.cn/rmrb/html/2018-09/13/nw.D110000renmrb_20180913_1-17.htm',NULL,'2019-12-19 16:44:01',1),(4,'全国教育大会','全国教育大会10日在北京召开。中共中央总书记、国家主席、中央军委主席习近平出席会议并发表重要讲话','习近平 党','2018-09-11 00:00:00','人民网',NULL,NULL,'本报北京9月10日电  （记者张烁）全国教育大会10日在北京召开。中共中央总书记、国家主席、中央军委主席习近平出席会议并发表重要讲话。他强调，在党的坚强领导下，全面贯彻党的教育方针，坚持马克思主义指导地位，坚持中国特色社会主义教育发展道路，坚持社会主义办学方向，立足基本国情，遵循教育规律，坚持改革创新，以凝聚人心、完善人格、开发人力、培育人才、造福人民为工作目标，培养德智体美劳全面发展的社会主义建设者和接班人，加快推进教育现代化、建设教育强国、办好人民满意的教育。 　　9月10日是我国第三十四个教师节，习近平代表党中央，向全国广大教师和教育工作者致以节日的热烈祝贺和诚挚问候。他强调，长期以来，广大教师贯彻党的教育方针，教书育人，呕心沥血，默默奉献，为国家发展和民族振兴作出了重大贡献。教师是人类灵魂的工程师，是人类文明的传承者，承载着传播知识、传播思想、传播真理，塑造灵魂、塑造生命、塑造新人的时代重任。全党全社会要弘扬尊师重教的社会风尚，努力提高教师政治地位、社会地位、职业地位，让广大教师享有应有的社会声望，在教书育人岗位上为党和人民事业作出新的更大的贡献。 　　李克强在会上讲话。汪洋、王沪宁、赵乐际、韩正出席会议。 　　习近平在讲话中指出，党的十九大从新时代坚持和发展中国特色社会主义的战略高度，作出了优先发展教育事业、加快教育现代化、建设教育强国的重大部署。教育是民族振兴、社会进步的重要基石，是功在当代、利在千秋的德政工程，对提高人民综合素质、促进人的全面发展、增强中华民族创新创造活力、实现中华民族伟大复兴具有决定性意义。教育是国之大计、党之大计。 　　习近平强调，党的十八大以来，我们围绕培养什么人、怎样培养人、为谁培养人这一根本问题，全面加强党对教育工作的领导，坚持立德树人，加强学校思想政治工作，推进教育改革，加快补齐教育短板，教育事业中国特色更加鲜明，教育现代化加速推进，教育方面人民群众获得感明显增强，我国教育的国际影响力加快提升，13亿多中国人民的思想道德素质和科学文化素质全面提升。 　　习近平指出，在实践中，我们就教育改革发展提出一系列新理念新思想新观点，主要有以下几个方面，坚持党对教育事业的全面领导，坚持把立德树人作为根本任务，坚持优先发展教育事业，坚持社会主义办学方向，坚持扎根中国大地办教育，坚持以人民为中心发展教育，坚持深化教育改革创新，坚持把服务中华民族伟大复兴作为教育的重要使命，坚持把教师队伍建设作为基础工作。这是我们对我国教育事业规律性认识的深化，来之不易，要始终坚持并不断丰富发展。 　　习近平强调，新时代新形势，改革开放和社会主义现代化建设、促进人的全面发展和社会全面进步对教育和学习提出了新的更高的要求。我们要抓住机遇、超前布局，以更高远的历史站位、更宽广的国际视野、更深邃的战略眼光，对加快推进教育现代化、建设教育强国作出总体部署和战略设计，坚持把优先发展教育事业作为推动党和国家各项事业发展的重要先手棋，不断使教育同党和国家事业发展要求相适应、同人民群众期待相契合、同我国综合国力和国际地位相匹配。 　　习近平指出，培养什么人，是教育的首要问题。我国是中国共产党领导的社会主义国家，这就决定了我们的教育必须把培养社会主义建设者和接班人作为根本任务，培养一代又一代拥护中国共产党领导和我国社会主义制度、立志为中国特色社会主义奋斗终身的有用人才。这是教育工作的根本任务，也是教育现代化的方向目标。 　　习近平强调，要在坚定理想信念上下功夫，教育引导学生树立共产主义远大理想和中国特色社会主义共同理想，增强学生的中国特色社会主义道路自信、理论自信、制度自信、文化自信，立志肩负起民族复兴的时代重任。要在厚植爱国主义情怀上下功夫，让爱国主义精神在学生心中牢牢扎根，教育引导学生热爱和拥护中国共产党，立志听党话、跟党走，立志扎根人民、奉献国家。要在加强品德修养上下功夫，教育引导学生培育和践行社会主义核心价值观，踏踏实实修好品德，成为有大爱大德大情怀的人。要在增长知识见识上下功夫，教育引导学生珍惜学习时光，心无旁骛求知问学，增长见识，丰富学识，沿着求真理、悟道理、明事理的方向前进。要在培养奋斗精神上下功夫，教育引导学生树立高远志向，历练敢于担当、不懈奋斗的精神，具有勇于奋斗的精神状态、乐观向上的人生态度，做到刚健有为、自强不息。要在增强综合素质上下功夫，教育引导学生培养综合能力，培养创新思维。要树立健康第一的教育理念，开齐开足体育课，帮助学生在体育锻炼中享受乐趣、增强体质、健全人格、锤炼意志。要全面加强和改进学校美育，坚持以美育人、以文化人，提高学生审美和人文素养。要在学生中弘扬劳动精神，教育引导学生崇尚劳动、尊重劳动，懂得劳动最光荣、劳动最崇高、劳动最伟大、劳动最美丽的道理，长大后能够辛勤劳动、诚实劳动、创造性劳动。 　　习近平指出，要努力构建德智体美劳全面培养的教育体系，形成更高水平的人才培养体系。要把立德树人融入思想道德教育、文化知识教育、社会实践教育各环节，贯穿基础教育、职业教育、高等教育各领域，学科体系、教学体系、教材体系、管理体系要围绕这个目标来设计，教师要围绕这个目标来教，学生要围绕这个目标来学。凡是不利于实现这个目标的做法都要坚决改过来。 　　习近平强调，建设社会主义现代化强国，对教师队伍建设提出新的更高要求，也对全党全社会尊师重教提出新的更高要求。人民教师无上光荣，每个教师都要珍惜这份光荣，爱惜这份职业，严格要求自己，不断完善自己。做老师就要执着于教书育人，有热爱教育的定力、淡泊名利的坚守。随着办学条件不断改善，教育投入要更多向教师倾斜，不断提高教师待遇，让广大教师安心从教、热心从教。对教师队伍中存在的问题，要坚决依法依纪予以严惩。 　　习近平指出，要深化教育体制改革，健全立德树人落实机制，扭转不科学的教育评价导向，坚决克服唯分数、唯升学、唯文凭、唯论文、唯帽子的顽瘴痼疾，从根本上解决教育评价指挥棒问题。要深化办学体制和教育管理改革，充分激发教育事业发展生机活力。要提升教育服务经济社会发展能力，调整优化高校区域布局、学科结构、专业设置，建立健全学科专业动态调整机制，加快一流大学和一流学科建设，推进产学研协同创新，积极投身实施创新驱动发展战略，着重培养创新型、复合型、应用型人才。要扩大教育开放，同世界一流资源开展高水平合作办学。 　　习近平强调，加强党对教育工作的全面领导，是办好教育的根本保证。教育部门和各级各类学校的党组织要增强“四个意识”、坚定“四个自信”，坚定不移维护党中央权威和集中统一领导，自觉在政治立场、政治方向、政治原则、政治道路上同党中央保持高度一致。各级党委要把教育改革发展纳入议事日程，党政主要负责同志要熟悉教育、关心教育、研究教育。各级各类学校党组织要把抓好学校党建工作作为办学治校的基本功，把党的教育方针全面贯彻到学校工作各方面。思想政治工作是学校各项工作的生命线，各级党委、各级教育主管部门、学校党组织都必须紧紧抓在手上。要精心培养和组织一支会做思想政治工作的政工队伍，把思想政治工作做在日常、做到个人。 　　习近平指出，办好教育事业，家庭、学校、政府、社会都有责任。家庭是人生的第一所学校，家长是孩子的第一任老师，要给孩子讲好“人生第一课”，帮助扣好人生第一粒扣子。教育、妇联等部门要统筹协调社会资源支持服务家庭教育。全社会要担负起青少年成长成才的责任。各级党委和政府要为学校办学安全托底，解决学校后顾之忧，维护老师和学校应有的尊严，保护学生生命安全。 　　李克强在讲话中指出，要认真学习领会和贯彻落实习近平总书记重要讲话精神，以习近平新时代中国特色社会主义思想为指导，准确把握教育事业发展面临的新形势新任务，全面落实教育优先发展战略，在经济社会发展规划上优先安排教育、财政资金投入上优先保障教育、公共资源配置上优先满足教育和人力资源开发需要。坚持改革创新，坚持教育公平，推动教育从规模增长向质量提升转变，促进区域、城乡和各级各类教育均衡发展，以教育现代化支撑国家现代化。要着力补上短板，夯实义务教育这个根基，强化农村特别是贫困地区控辍保学工作，完善城乡统一、重在农村的义务教育经费保障机制，着力改善乡村学校办学条件、提高教学质量，注重运用信息化手段使乡村获得更多优质教育资源，在提速降费、网络建设方面给予特别照顾。把更多教育投入用到加强乡村师资队伍建设上，不折不扣落实现行的补助、奖励和各类保障政策，对符合条件的非在编教师要加快入编、同工同酬。前瞻规划布局城镇学校建设，增强容纳能力，加快实现随迁子女入学待遇同城化。同时，要重视发展学前教育、高中阶段教育和民族教育、特殊教育、继续教育等各类教育。 　　李克强强调，要增强教育服务创新发展能力，培养更多适应高质量发展的各类人才。优化高校区域布局、学科结构、专业设置，坚持以教学为中心，突出创新意识和实践能力，培养更多创新人才、高素质人才。更加重视、充分发挥高校在强化基础研究和原始创新、突破关键核心技术中的重要作用。大力办好职业院校，坚持面向市场、服务发展、促进就业的办学方向，推进产教融合、校企合作，培养更多高技能人才。提高技术技能人才的社会地位和待遇。 　　李克强要求，要深化教育领域“放管服”改革，充分释放教育事业发展生机活力。尊重教育发展规律，充分发挥学校办学主体作用，大幅减少各类检查、评估、评价，加强对办学方向、标准、质量的规范引导，为学校潜心治校办学创造良好环境。积极鼓励社会力量依法兴办教育。鼓励各级各类学校与时俱进创新教育理念和人才培养模式，发展“互联网+教育”，完善吸引优秀人才从事教育的体制机制，提升教师社会地位，让尊师重教蔚然成风。 　　中共中央政治局委员、中央书记处书记，全国人大常委会有关领导同志，国务委员，最高人民法院院长，最高人民检察院检察长，全国政协有关领导同志出席大会。 　　中央教育工作领导小组成员，各省区市和计划单列市、新疆生产建设兵团，中央和国家机关有关部门、有关人民团体，军队有关单位，部分高校负责同志参加大会。','http://paper.people.com.cn/rmrb/html/2018-09/11/nw.D110000renmrb_20180911_2-01.htm',NULL,'2019-12-19 16:44:01',0),(5,'2018中国节','“这个活动太有意义了，不仅可以吃到正宗的中国特色美食，而且还能欣赏中国辉煌灿烂的传统文化。希望能早日去中国看看','文化交流','2018-09-10 00:00:00','人民日报',NULL,NULL,'“这个活动太有意义了，不仅可以吃到正宗的中国特色美食，而且还能欣赏中国辉煌灿烂的传统文化。希望能早日去中国看看。”9月8日，在东京举行的“2018年中国节”活动现场，家住日本埼玉县的中村保彦对本报记者说。 　　为纪念中日和平友好条约缔结40周年，“2018年中国节”9月8日—9日在东京代代木公园举办。本届“2018年中国节”实行委员长、中国驻日本大使程永华表示，“2018年中国节”是一场展示今日中国的盛会，也是一座增进中日两国民众相互理解和友好感情的桥梁。在中日交往史中，民间交流始终是推动两国关系向前发展的不竭动力。相信这一活动将成为中日两国民众加强面对面交流、增进友好感情的绝佳契机。 　　国之交在于民相亲。“近年来中国发展迅速，面貌可谓日新月异，希望日本民众多去中国走走，亲身感受中国迅速发展的脉搏。”“2018年中国节”实行委员会最高顾问、日本前首相福田康夫说，民间友谊是国家交往的基础，希望两国民众能够通过此次活动，进一步加深交流和相互理解。 　　为了让更多日本民众了解中国传统文化，东京中国文化中心从陕西省请来两位师傅，手把手教授捏面人、剪纸等，吸引不少小朋友前来学习。此外，东京中国文化中心工作人员还在现场教授编中国结。安庆市黄梅戏剧院、兰州歌舞剧院等中国地方演出团体精彩的文艺演出，引起现场观众的阵阵掌声。 　　“我非常喜欢中国文化。”家住代代木公园附近的加藤亚好美说，在家门口体验原汁原味的中国文化、品尝正宗的中国美食，没有比这更令人开心的事情。加藤亚好美还清晰地记得1978年第一次去中国的情形。她说，改革开放40年来中国发展迅速，希望有机会多去中国看看。日中两国一衣带水，友好交往的历史源远流长，希望两国永远友好下去。 　　“2018年中国节”受到中日双方各界积极响应和大力支持，致力于中日交流的多个机构和团体负责人出任实行委员，两国外交、文化、旅游等政府部门担任活动后援单位。“2018年中国节”场内设置了百余个展位，通过文艺演出、文化展示、美食品尝、旅游推介等方式向日本民众介绍中国。不少展位前排起了长长的队伍。活动期间还举行了超辣食品比赛、拉面比赛、乒乓球比赛等活动，吸引了包括日本民众、旅日华侨华人在内约15万人参加。 　　日本民众纷纷在社交媒体上分享参加“2018年中国节”的照片，推荐家人和朋友参加。不少日本民众更加了解了中国辉煌灿烂的历史和飞速发展的今天，期盼中日关系更加友好密切。 　　（本报东京9月9日电）','http://paper.people.com.cn/rmrb/html/2018-09/10/nw.D110000renmrb_20180910_4-21.htm',NULL,'2019-12-19 16:44:01',1);
/*!40000 ALTER TABLE `rs_textlibrary_data_27` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rs_textlibrary_data_28`
--

DROP TABLE IF EXISTS `rs_textlibrary_data_28`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rs_textlibrary_data_28` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `summary` text,
  `keywords` varchar(255) DEFAULT NULL,
  `publish_time` datetime DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `page` varchar(20) DEFAULT NULL,
  `content` text,
  `url` varchar(512) DEFAULT NULL,
  `publish_source` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `is_delete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rs_textlibrary_data_28`
--

LOCK TABLES `rs_textlibrary_data_28` WRITE;
/*!40000 ALTER TABLE `rs_textlibrary_data_28` DISABLE KEYS */;
/*!40000 ALTER TABLE `rs_textlibrary_data_28` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rs_textlibrary_data_29`
--

DROP TABLE IF EXISTS `rs_textlibrary_data_29`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rs_textlibrary_data_29` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `summary` text,
  `keywords` varchar(255) DEFAULT NULL,
  `publish_time` datetime DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `page` varchar(20) DEFAULT NULL,
  `content` text,
  `url` varchar(512) DEFAULT NULL,
  `publish_source` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `is_delete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rs_textlibrary_data_29`
--

LOCK TABLES `rs_textlibrary_data_29` WRITE;
/*!40000 ALTER TABLE `rs_textlibrary_data_29` DISABLE KEYS */;
/*!40000 ALTER TABLE `rs_textlibrary_data_29` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rs_textlibrary_data_30`
--

DROP TABLE IF EXISTS `rs_textlibrary_data_30`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rs_textlibrary_data_30` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `summary` text,
  `keywords` varchar(255) DEFAULT NULL,
  `publish_time` datetime DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `page` varchar(20) DEFAULT NULL,
  `content` text,
  `url` varchar(512) DEFAULT NULL,
  `publish_source` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `is_delete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rs_textlibrary_data_30`
--

LOCK TABLES `rs_textlibrary_data_30` WRITE;
/*!40000 ALTER TABLE `rs_textlibrary_data_30` DISABLE KEYS */;
INSERT INTO `rs_textlibrary_data_30` VALUES (1,'胡锦涛等九常委出席中国工会第15次大会',' 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体','十五大 全国总工会新一届领导集体','2018-08-02 00:00:00','中新网',NULL,NULL,'中新网10月17日电 中国工会第十五次全国代表大会开幕式今日上午九时在人民大会堂举行，本次大会将选举产生全国总工会新一届领导集体。　　胡锦涛、吴邦国、温家宝、贾庆林、李长春、习近平、李克强、贺国强、周永康等党和国家领导人出席今天的开幕大会。习近平代表中共中央致祝词。　　王兆国将在今天的大会上作全国工会十五大报告。　　上午九时，王兆国宣布中国工会第十五次全国代表大会开幕。今天的大会应到代表1800名，特邀代表289名，实到代表1776名，缺席24名，符合法定人数。　　本次大会将总结过去五年的工会工作，明确今后五年工会工作的主要任务，并将选举产生全国总工会新一届领导集体。','http://baidu.com',NULL,'2019-12-19 17:11:36',0),(2,'江西省樟树市','走进江西省樟树市店下镇大汗村大汗村小组，只见村落依山而建，村前阡陌纵横，村内石溪潺潺……扑面而来的山野气息，让人忘却了夏日炎热','江西  小组','2018-09-09 00:00:00','新华社',NULL,NULL,'走进江西省樟树市店下镇大汗村大汗村小组，只见村落依山而建，村前阡陌纵横，村内石溪潺潺……扑面而来的山野气息，让人忘却了夏日炎热。 　　“先到屋里坐一坐，吃点饭再去爬山。”下午4点，在一处绿色掩映的农家院落前，主人徐国平热情地迎了上来。一会儿工夫，老徐就端来了几碗绿茶以及花生、咸萝卜等小吃。 　　大汗村小组位于玉华山脚下，距樟树城区30多公里，海拔600多米，森林覆盖率达90%以上。每到节假日，许多游客前来观光休闲、登山越野。“以前咱山里人靠山吃山，以砍竹子、编竹篓过日子，一年到头也赚不了几个钱。”徐国平说，如今，村民们利用好山好水发展乡村旅游，收入翻了几番，每年收入不下10万元。 　　大汗村小组是樟树市秀美乡村建设精品示范点，政府先后投资1000万元，聘请专业设计公司进行规划建设，完善进村道路、给排水设施，整治村容村貌，利用村庄生态与文化旅游资源，盘活梯田、竹林、石溪等景观，修葺步行道路、栈道，增设休闲景观设施，提升村庄整体风貌环境。徐国平说：“村里不仅修通了水泥路，喝上了自来水，还实现了有线电视和网络的全覆盖，现在农家乐的生意越来越好了。” 　　“我们村像徐国平这样的不在少数，村里还有五六户在筹办农家乐或民宿旅舍。”大汗村党支部书记徐七根说，现在大汗村小组每年接待游客10多万人次，旅游综合收入上千万元。','http://paper.people.com.cn/rmrb/html/2018-09/09/nw.D110000renmrb_20180909_3-11.htm',NULL,'2019-12-19 17:11:36',0),(3,'核心阅读','西北工业大学在培养学生时，引入“生涯”概念，促使学生提前思考、规划；推行完全学分制，课程的难易度和宽广度由学生自主选择；开设职业发展教育课程，邀请行业大咖传授经验；在生产实习之外安排认识实习，使学生全面认识用人单位的生产管理状况，打开求职思路。','西北工业大学','2018-09-13 00:00:00','西北工业大学',NULL,NULL,'在引导帮扶大学生就业方面，高校如何发挥更大作用？ 　　西北工业大学在培养学生时，引入“生涯”概念，促使学生提前思考、规划；推行完全学分制，课程的难易度和宽广度由学生自主选择；开设职业发展教育课程，邀请行业大咖传授经验；在生产实习之外安排认识实习，使学生全面认识用人单位的生产管理状况，打开求职思路。这表明，高校从多渠道着手引导、保障大学生就业，对稳就业来说很有价值。 　　　　　　 　　“生涯密钥”，是西北工业大学送给2018年入学新生的一份特别的礼物。同学们拿到通知书后，通过扫描二维码，就可以用这把“钥匙”，打开一个海量数据库。 　　岗位和单位是啥性质？就业地点在哪？薪酬水平多少？运用大数据，师兄师姐的选择汇聚成了一张就业全景图，为这些充满好奇的年轻人提供了可靠的参考。 　　“这几年，学校在培养学生时引入‘生涯’的概念。”中国科学院院士、西北工业大学常务副校长黄维说，“无论是‘生涯密钥’大数据，还是推行完全学分制、倡导生产实习和认识实习，这些都旨在强化学生的‘生涯意识’，让学生能提前思考、提早规划。” 　　完全学分制 　　修够学分即能毕业，选啥课学生说了算 　　作为2018年的毕业生，钟昆洋的个人数据也添加进了学校的就业大数据中。4年前入学时，他也曾收到这样的礼物。 　　“我们2014级学生，是学校实行完全学分制的首批获益者。”钟昆洋说，“在课程选择上，不再像往届一样由教务处直接置入课程，而是每个人根据自己的喜好选择课程。” 　　经过两年的调研，西北工业大学于2014年启动了优化本科生人才培养方案。重点改革，就是实行完全学分制，让学生自主选择课程。 　　有些学生录取时被调剂了专业，在完全学分制下就可以实现“换专业”。学校的课程是分模块的。一年级理工类，基础课程模块基本相同。到了二年级，则可以根据自己的兴趣爱好选专业课，只要接收学院同意，就可以学习该学院的专业课模块。 　　配套完全学分制改革，学校允许学生自主选择课程。学生可根据自身情况，选择课程难易度和宽广度。比如，数学基础好的，可以跳过高等数学，直接选择工科数学分析；学飞行器设计的，也可以选择和专业不相关的管理学课程。 　　“学生基于自身兴趣和需要选课，有了更多的自主权。只要达到毕业所要求修的学分，就可以了。”党委学生工作部副部长、学生处副处长王莉说。 　　课程选择上的自由，让钟昆洋尝到了甜头。大三的时候，他就读完了原本在大四才可以选的专业选修课。到了大四，他的学习任务轻，可以花更多时间去寻找适合的工作，准备笔试和面试。 　　职业发展课 　　帮助认知自我，邀请大咖分享，再现招聘过程 　　“因为在课程选择上完全自由，新生容易在无拘束的环境中迷失方向。”学生就业创业指导服务中心老师朱莉说，“所以，指导中心除了在入学时开展新生导航讲座外，还开设了多门职业发展教育课程，希望能给学生一些指引。” 　　刚进大学时，钟昆洋也曾有“选择困难症”。大一时，他便选修了《大学生职业生涯规划》课程。课上，他结识了对他职业生涯有很大影响的朱莉老师。 　　“我们对钟昆洋同学进行了个性化的学业指导，利用学校成熟的职业测评工具，帮助他认知自我兴趣、性格以及价值观。根据他的情况，提供了相应的成长方案。”朱莉说。 　　在老师的帮助下，钟昆洋逐渐了解了自己和外在环境，确定了大学的学习生活目标，有规划地安排了4年的生活。大二时，他在朱莉老师的建议下选修了《求职有道》。这门课程，真实再现了企业招聘的全过程，让学生从招聘官的角度认知企业对人才的要求。 　　“在这些课程中，许多行业大咖现身说法。前辈们的交流分享、老师们的专业指导，使我对职业规划的重要性有了认识。我觉得自己的情况更适合先就业，而不是读研。”钟昆洋说。 　　随后，钟昆洋开始留意就业志愿者服务队的相关信息。大三时，他加入了服务队。这是一支由学生就业创业指导服务中心指导的，主要负责服务用人单位校园招聘工作的专业志愿者队伍。“这个团队有10年的光荣历史。钟昆洋勤恳踏实，待人真诚有礼貌，有很强的责任感，很快就成长为团队的队长。”朱莉老师说。 　　在就业中心，钟昆洋的主要工作是给用人单位安排场地，以及协调宣讲会相关工作。“这个过程中，可以和很多企业的人力资源部人员进行交流，积累求职经验，第一时间获得招聘信息。更重要的，是可以锻炼自己的综合协调能力。”钟昆洋说。 　　业界找感觉 　　除了生产实习，还安排了解型的认识实习 　　“大三是学生找工作的关键预备期。学校为每位学生安排了认识实习与生产实习。”朱莉介绍。 　　认识实习，旨在让学生全面了解用人单位的生产管理状况，从而获得对专业生产实践的初步认识。主要途径，是到相关企业参观学习。 　　“学院用了一个星期的时间，带我们参观了西安本地的5家军工企业。”钟昆洋说，在参观过程中，他了解到自己所在的微机电系统工程专业应用非常广泛，比如很多高端机器应用的传感器，都涉及这一专业。 　　然而，要从事本专业对口的工作，本科所学的并不够用，还需继续深造。这与先找工作的规划产生了矛盾，使钟昆洋陷入了困惑。 　　“在职业生涯辅导中，我了解到了他的困惑。”朱莉说，“微机电系统工程专业，是机械和微电子的交叉学科。所以我建议他，找工作不要局限于小专业，可以在机械和电子这个大类里去找。” 　　老师的点拨打开了钟昆洋的思路。之后，他拒绝了学校安排的生产实习。“学校安排的生产实习，是和专业密切相关的企业。我想从朱老师建议的大类上找工作，这样实习才对我找工作有帮助。”钟昆洋说。 　　大三暑假，钟昆洋申请去宁波某空调企业实习。在生产一线的工作，让他对自己的未来有了更清晰的认识。通过和他人交流，供应链管理、生产管理等书本上的概念，变得具体了起来。 　　“制造业的工作分工差不多。招聘的时候，我就知道自己想去什么岗位了。”钟昆洋说。 　　3年的认真探索和准备，为钟昆洋铺好了求职之路。大四刚开学，他就拿到中国航发贵州黎阳航空发动机有限公司抛来的橄榄枝，成为机电学院“第一签”。 　　“一线城市也曾考虑过，但生活成本太高了。回到老家，生活闲适，还可以陪家人，认识的同学也多。”钟昆洋说，“我们学校的许多同学，都有投身国防、报效国家的心思，我也不例外。这家公司，就是我的最佳选择。” 　　8月17日，钟昆洋到公司报到，经过一个星期的培训，他走上了自己心仪的工作岗位。','http://paper.people.com.cn/rmrb/html/2018-09/13/nw.D110000renmrb_20180913_1-17.htm',NULL,'2019-12-19 17:11:36',0),(4,'全国教育大会','全国教育大会10日在北京召开。中共中央总书记、国家主席、中央军委主席习近平出席会议并发表重要讲话','习近平 党','2018-09-11 00:00:00','人民网',NULL,NULL,'本报北京9月10日电  （记者张烁）全国教育大会10日在北京召开。中共中央总书记、国家主席、中央军委主席习近平出席会议并发表重要讲话。他强调，在党的坚强领导下，全面贯彻党的教育方针，坚持马克思主义指导地位，坚持中国特色社会主义教育发展道路，坚持社会主义办学方向，立足基本国情，遵循教育规律，坚持改革创新，以凝聚人心、完善人格、开发人力、培育人才、造福人民为工作目标，培养德智体美劳全面发展的社会主义建设者和接班人，加快推进教育现代化、建设教育强国、办好人民满意的教育。 　　9月10日是我国第三十四个教师节，习近平代表党中央，向全国广大教师和教育工作者致以节日的热烈祝贺和诚挚问候。他强调，长期以来，广大教师贯彻党的教育方针，教书育人，呕心沥血，默默奉献，为国家发展和民族振兴作出了重大贡献。教师是人类灵魂的工程师，是人类文明的传承者，承载着传播知识、传播思想、传播真理，塑造灵魂、塑造生命、塑造新人的时代重任。全党全社会要弘扬尊师重教的社会风尚，努力提高教师政治地位、社会地位、职业地位，让广大教师享有应有的社会声望，在教书育人岗位上为党和人民事业作出新的更大的贡献。 　　李克强在会上讲话。汪洋、王沪宁、赵乐际、韩正出席会议。 　　习近平在讲话中指出，党的十九大从新时代坚持和发展中国特色社会主义的战略高度，作出了优先发展教育事业、加快教育现代化、建设教育强国的重大部署。教育是民族振兴、社会进步的重要基石，是功在当代、利在千秋的德政工程，对提高人民综合素质、促进人的全面发展、增强中华民族创新创造活力、实现中华民族伟大复兴具有决定性意义。教育是国之大计、党之大计。 　　习近平强调，党的十八大以来，我们围绕培养什么人、怎样培养人、为谁培养人这一根本问题，全面加强党对教育工作的领导，坚持立德树人，加强学校思想政治工作，推进教育改革，加快补齐教育短板，教育事业中国特色更加鲜明，教育现代化加速推进，教育方面人民群众获得感明显增强，我国教育的国际影响力加快提升，13亿多中国人民的思想道德素质和科学文化素质全面提升。 　　习近平指出，在实践中，我们就教育改革发展提出一系列新理念新思想新观点，主要有以下几个方面，坚持党对教育事业的全面领导，坚持把立德树人作为根本任务，坚持优先发展教育事业，坚持社会主义办学方向，坚持扎根中国大地办教育，坚持以人民为中心发展教育，坚持深化教育改革创新，坚持把服务中华民族伟大复兴作为教育的重要使命，坚持把教师队伍建设作为基础工作。这是我们对我国教育事业规律性认识的深化，来之不易，要始终坚持并不断丰富发展。 　　习近平强调，新时代新形势，改革开放和社会主义现代化建设、促进人的全面发展和社会全面进步对教育和学习提出了新的更高的要求。我们要抓住机遇、超前布局，以更高远的历史站位、更宽广的国际视野、更深邃的战略眼光，对加快推进教育现代化、建设教育强国作出总体部署和战略设计，坚持把优先发展教育事业作为推动党和国家各项事业发展的重要先手棋，不断使教育同党和国家事业发展要求相适应、同人民群众期待相契合、同我国综合国力和国际地位相匹配。 　　习近平指出，培养什么人，是教育的首要问题。我国是中国共产党领导的社会主义国家，这就决定了我们的教育必须把培养社会主义建设者和接班人作为根本任务，培养一代又一代拥护中国共产党领导和我国社会主义制度、立志为中国特色社会主义奋斗终身的有用人才。这是教育工作的根本任务，也是教育现代化的方向目标。 　　习近平强调，要在坚定理想信念上下功夫，教育引导学生树立共产主义远大理想和中国特色社会主义共同理想，增强学生的中国特色社会主义道路自信、理论自信、制度自信、文化自信，立志肩负起民族复兴的时代重任。要在厚植爱国主义情怀上下功夫，让爱国主义精神在学生心中牢牢扎根，教育引导学生热爱和拥护中国共产党，立志听党话、跟党走，立志扎根人民、奉献国家。要在加强品德修养上下功夫，教育引导学生培育和践行社会主义核心价值观，踏踏实实修好品德，成为有大爱大德大情怀的人。要在增长知识见识上下功夫，教育引导学生珍惜学习时光，心无旁骛求知问学，增长见识，丰富学识，沿着求真理、悟道理、明事理的方向前进。要在培养奋斗精神上下功夫，教育引导学生树立高远志向，历练敢于担当、不懈奋斗的精神，具有勇于奋斗的精神状态、乐观向上的人生态度，做到刚健有为、自强不息。要在增强综合素质上下功夫，教育引导学生培养综合能力，培养创新思维。要树立健康第一的教育理念，开齐开足体育课，帮助学生在体育锻炼中享受乐趣、增强体质、健全人格、锤炼意志。要全面加强和改进学校美育，坚持以美育人、以文化人，提高学生审美和人文素养。要在学生中弘扬劳动精神，教育引导学生崇尚劳动、尊重劳动，懂得劳动最光荣、劳动最崇高、劳动最伟大、劳动最美丽的道理，长大后能够辛勤劳动、诚实劳动、创造性劳动。 　　习近平指出，要努力构建德智体美劳全面培养的教育体系，形成更高水平的人才培养体系。要把立德树人融入思想道德教育、文化知识教育、社会实践教育各环节，贯穿基础教育、职业教育、高等教育各领域，学科体系、教学体系、教材体系、管理体系要围绕这个目标来设计，教师要围绕这个目标来教，学生要围绕这个目标来学。凡是不利于实现这个目标的做法都要坚决改过来。 　　习近平强调，建设社会主义现代化强国，对教师队伍建设提出新的更高要求，也对全党全社会尊师重教提出新的更高要求。人民教师无上光荣，每个教师都要珍惜这份光荣，爱惜这份职业，严格要求自己，不断完善自己。做老师就要执着于教书育人，有热爱教育的定力、淡泊名利的坚守。随着办学条件不断改善，教育投入要更多向教师倾斜，不断提高教师待遇，让广大教师安心从教、热心从教。对教师队伍中存在的问题，要坚决依法依纪予以严惩。 　　习近平指出，要深化教育体制改革，健全立德树人落实机制，扭转不科学的教育评价导向，坚决克服唯分数、唯升学、唯文凭、唯论文、唯帽子的顽瘴痼疾，从根本上解决教育评价指挥棒问题。要深化办学体制和教育管理改革，充分激发教育事业发展生机活力。要提升教育服务经济社会发展能力，调整优化高校区域布局、学科结构、专业设置，建立健全学科专业动态调整机制，加快一流大学和一流学科建设，推进产学研协同创新，积极投身实施创新驱动发展战略，着重培养创新型、复合型、应用型人才。要扩大教育开放，同世界一流资源开展高水平合作办学。 　　习近平强调，加强党对教育工作的全面领导，是办好教育的根本保证。教育部门和各级各类学校的党组织要增强“四个意识”、坚定“四个自信”，坚定不移维护党中央权威和集中统一领导，自觉在政治立场、政治方向、政治原则、政治道路上同党中央保持高度一致。各级党委要把教育改革发展纳入议事日程，党政主要负责同志要熟悉教育、关心教育、研究教育。各级各类学校党组织要把抓好学校党建工作作为办学治校的基本功，把党的教育方针全面贯彻到学校工作各方面。思想政治工作是学校各项工作的生命线，各级党委、各级教育主管部门、学校党组织都必须紧紧抓在手上。要精心培养和组织一支会做思想政治工作的政工队伍，把思想政治工作做在日常、做到个人。 　　习近平指出，办好教育事业，家庭、学校、政府、社会都有责任。家庭是人生的第一所学校，家长是孩子的第一任老师，要给孩子讲好“人生第一课”，帮助扣好人生第一粒扣子。教育、妇联等部门要统筹协调社会资源支持服务家庭教育。全社会要担负起青少年成长成才的责任。各级党委和政府要为学校办学安全托底，解决学校后顾之忧，维护老师和学校应有的尊严，保护学生生命安全。 　　李克强在讲话中指出，要认真学习领会和贯彻落实习近平总书记重要讲话精神，以习近平新时代中国特色社会主义思想为指导，准确把握教育事业发展面临的新形势新任务，全面落实教育优先发展战略，在经济社会发展规划上优先安排教育、财政资金投入上优先保障教育、公共资源配置上优先满足教育和人力资源开发需要。坚持改革创新，坚持教育公平，推动教育从规模增长向质量提升转变，促进区域、城乡和各级各类教育均衡发展，以教育现代化支撑国家现代化。要着力补上短板，夯实义务教育这个根基，强化农村特别是贫困地区控辍保学工作，完善城乡统一、重在农村的义务教育经费保障机制，着力改善乡村学校办学条件、提高教学质量，注重运用信息化手段使乡村获得更多优质教育资源，在提速降费、网络建设方面给予特别照顾。把更多教育投入用到加强乡村师资队伍建设上，不折不扣落实现行的补助、奖励和各类保障政策，对符合条件的非在编教师要加快入编、同工同酬。前瞻规划布局城镇学校建设，增强容纳能力，加快实现随迁子女入学待遇同城化。同时，要重视发展学前教育、高中阶段教育和民族教育、特殊教育、继续教育等各类教育。 　　李克强强调，要增强教育服务创新发展能力，培养更多适应高质量发展的各类人才。优化高校区域布局、学科结构、专业设置，坚持以教学为中心，突出创新意识和实践能力，培养更多创新人才、高素质人才。更加重视、充分发挥高校在强化基础研究和原始创新、突破关键核心技术中的重要作用。大力办好职业院校，坚持面向市场、服务发展、促进就业的办学方向，推进产教融合、校企合作，培养更多高技能人才。提高技术技能人才的社会地位和待遇。 　　李克强要求，要深化教育领域“放管服”改革，充分释放教育事业发展生机活力。尊重教育发展规律，充分发挥学校办学主体作用，大幅减少各类检查、评估、评价，加强对办学方向、标准、质量的规范引导，为学校潜心治校办学创造良好环境。积极鼓励社会力量依法兴办教育。鼓励各级各类学校与时俱进创新教育理念和人才培养模式，发展“互联网+教育”，完善吸引优秀人才从事教育的体制机制，提升教师社会地位，让尊师重教蔚然成风。 　　中共中央政治局委员、中央书记处书记，全国人大常委会有关领导同志，国务委员，最高人民法院院长，最高人民检察院检察长，全国政协有关领导同志出席大会。 　　中央教育工作领导小组成员，各省区市和计划单列市、新疆生产建设兵团，中央和国家机关有关部门、有关人民团体，军队有关单位，部分高校负责同志参加大会。','http://paper.people.com.cn/rmrb/html/2018-09/11/nw.D110000renmrb_20180911_2-01.htm',NULL,'2019-12-19 17:11:36',0),(5,'2018中国节','“这个活动太有意义了，不仅可以吃到正宗的中国特色美食，而且还能欣赏中国辉煌灿烂的传统文化。希望能早日去中国看看','文化交流','2018-09-10 00:00:00','人民日报',NULL,NULL,'“这个活动太有意义了，不仅可以吃到正宗的中国特色美食，而且还能欣赏中国辉煌灿烂的传统文化。希望能早日去中国看看。”9月8日，在东京举行的“2018年中国节”活动现场，家住日本埼玉县的中村保彦对本报记者说。 　　为纪念中日和平友好条约缔结40周年，“2018年中国节”9月8日—9日在东京代代木公园举办。本届“2018年中国节”实行委员长、中国驻日本大使程永华表示，“2018年中国节”是一场展示今日中国的盛会，也是一座增进中日两国民众相互理解和友好感情的桥梁。在中日交往史中，民间交流始终是推动两国关系向前发展的不竭动力。相信这一活动将成为中日两国民众加强面对面交流、增进友好感情的绝佳契机。 　　国之交在于民相亲。“近年来中国发展迅速，面貌可谓日新月异，希望日本民众多去中国走走，亲身感受中国迅速发展的脉搏。”“2018年中国节”实行委员会最高顾问、日本前首相福田康夫说，民间友谊是国家交往的基础，希望两国民众能够通过此次活动，进一步加深交流和相互理解。 　　为了让更多日本民众了解中国传统文化，东京中国文化中心从陕西省请来两位师傅，手把手教授捏面人、剪纸等，吸引不少小朋友前来学习。此外，东京中国文化中心工作人员还在现场教授编中国结。安庆市黄梅戏剧院、兰州歌舞剧院等中国地方演出团体精彩的文艺演出，引起现场观众的阵阵掌声。 　　“我非常喜欢中国文化。”家住代代木公园附近的加藤亚好美说，在家门口体验原汁原味的中国文化、品尝正宗的中国美食，没有比这更令人开心的事情。加藤亚好美还清晰地记得1978年第一次去中国的情形。她说，改革开放40年来中国发展迅速，希望有机会多去中国看看。日中两国一衣带水，友好交往的历史源远流长，希望两国永远友好下去。 　　“2018年中国节”受到中日双方各界积极响应和大力支持，致力于中日交流的多个机构和团体负责人出任实行委员，两国外交、文化、旅游等政府部门担任活动后援单位。“2018年中国节”场内设置了百余个展位，通过文艺演出、文化展示、美食品尝、旅游推介等方式向日本民众介绍中国。不少展位前排起了长长的队伍。活动期间还举行了超辣食品比赛、拉面比赛、乒乓球比赛等活动，吸引了包括日本民众、旅日华侨华人在内约15万人参加。 　　日本民众纷纷在社交媒体上分享参加“2018年中国节”的照片，推荐家人和朋友参加。不少日本民众更加了解了中国辉煌灿烂的历史和飞速发展的今天，期盼中日关系更加友好密切。 　　（本报东京9月9日电）','http://paper.people.com.cn/rmrb/html/2018-09/10/nw.D110000renmrb_20180910_4-21.htm',NULL,'2019-12-19 17:11:36',0);
/*!40000 ALTER TABLE `rs_textlibrary_data_30` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rs_textlibrary_data_31`
--

DROP TABLE IF EXISTS `rs_textlibrary_data_31`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rs_textlibrary_data_31` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `summary` text,
  `keywords` varchar(255) DEFAULT NULL,
  `publish_time` datetime DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `page` varchar(20) DEFAULT NULL,
  `content` text,
  `url` varchar(512) DEFAULT NULL,
  `publish_source` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `is_delete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rs_textlibrary_data_31`
--

LOCK TABLES `rs_textlibrary_data_31` WRITE;
/*!40000 ALTER TABLE `rs_textlibrary_data_31` DISABLE KEYS */;
/*!40000 ALTER TABLE `rs_textlibrary_data_31` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rs_textlibrary_data_32`
--

DROP TABLE IF EXISTS `rs_textlibrary_data_32`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rs_textlibrary_data_32` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `summary` text,
  `keywords` varchar(255) DEFAULT NULL,
  `publish_time` datetime DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `page` varchar(20) DEFAULT NULL,
  `content` text,
  `url` varchar(512) DEFAULT NULL,
  `publish_source` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `is_delete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rs_textlibrary_data_32`
--

LOCK TABLES `rs_textlibrary_data_32` WRITE;
/*!40000 ALTER TABLE `rs_textlibrary_data_32` DISABLE KEYS */;
INSERT INTO `rs_textlibrary_data_32` VALUES (1,'俄军总参谋长批评北约单方面部署欧洲反导系统','反导系统','反导 俄罗斯','2018-08-02 00:00:00','新华网莫斯科',NULL,NULL,'新华网莫斯科10月10日电 (记者刘恺) 俄罗斯国防部第一副部长兼武装力量总参谋长尼古拉·马卡罗夫10日在莫斯科与北约高官进行会晤，批评北约单方面加紧部署欧洲马卡罗夫在与到访的北约最高军事长官、美国海军上将詹姆斯·斯塔夫里迪斯会见后说，在部署欧洲反导系统问题上，北约一方面表示将与俄方展开谈判，另一方面却单方面加紧在欧洲部署反导装置。他强调，北约单方面行动不会对地区安全和稳定产生积极作用。　　马卡罗夫说，俄罗斯与北约既有共识也有分歧，俄方希望北约在认识到目前存在的问题后能增进双方互信。　　斯塔夫里迪斯表示，北约方面将认真听取俄方意见，他也会向美国领导人转达俄方相关表态。　　本月5日，北约秘书长拉斯穆森宣布，西班牙已同意美国在其境内部署4艘宙斯盾驱逐舰，以此作为北约反导系统组成部分，俄方对此表示强烈反对。除西班牙外，土耳其、罗马尼亚和波兰三国也已明确宣布加入北约反导系统。　　去年11月，北约领导人在里斯本峰会上决定建立覆盖欧洲的反导系统，美国在欧洲的反导计划是其重要组成部分。美国和北约邀请俄罗斯参与欧洲反导系统建设，但相关谈判至今毫无进展。','baidu.com',NULL,'2019-12-24 14:50:03',0),(2,'贾庆林出席朝鲜建国60周年庆祝宴会　','朝鲜建国','贾庆林','2018-08-02 00:00:00','新华网北京',NULL,NULL,'新华网北京9月8日电 (记者徐松)中共中央政治局常委、全国政协主席贾庆林8日晚出席朝鲜驻华大使崔镇洙举行的朝鲜建国60周年庆祝宴会并发表讲话。　　贾庆林代表中国党、政府和人民对朝鲜建国60周年表示热烈祝贺。他说，60年来，在金日成主席、金正日总书记的领导下，朝鲜人民在经济建设、社会发展以及对外交往等各个方面取得了显著成就。我们对此感到由衷的高兴。祝愿朝鲜人民在国家建设方面不断取得新的更大成就。　　贾庆林说，中朝两国是山水相连的友好邻邦。中朝关系保持着良好发展势头。我们愿同朝方一道，继续本着“继承传统、面向未来、睦邻友好、加强合作”的精神，推动中朝关系继续向前发展。　　崔镇洙在宴会上致辞，表示朝方高度重视朝中友好合作关系，愿同中方一道，以明年两国建交60周年为契机，办好“朝中友好年”活动，推动两国关系进一步发展。崔镇洙还对北京奥运会取得圆满成功表示祝贺。','baidu.com',NULL,'2019-12-24 14:50:03',1);
/*!40000 ALTER TABLE `rs_textlibrary_data_32` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rs_textlibrary_data_33`
--

DROP TABLE IF EXISTS `rs_textlibrary_data_33`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rs_textlibrary_data_33` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `summary` text,
  `keywords` varchar(255) DEFAULT NULL,
  `publish_time` datetime DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `page` varchar(20) DEFAULT NULL,
  `content` text,
  `url` varchar(512) DEFAULT NULL,
  `publish_source` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `is_delete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rs_textlibrary_data_33`
--

LOCK TABLES `rs_textlibrary_data_33` WRITE;
/*!40000 ALTER TABLE `rs_textlibrary_data_33` DISABLE KEYS */;
INSERT INTO `rs_textlibrary_data_33` VALUES (1,'胡锦涛主席访问韩国','胡锦涛将于25日至26日对韩国进行国事访问。','胡锦涛 外交 会议','2018-08-02 00:00:00','国际在线',NULL,NULL,'胡锦涛将于25日至26日对韩国进行国事访问。韩国《中央日报》中国研究所所长刘尚哲先生认为，胡主席此访将为韩中两国关系发展做出重要贡献。　　刘尚哲说，中韩建交以来，双方领导人互访的时间间隔越来越短，这表明两国关系更加密切，也显示了两国领导人对双边关系的重视。　　刘尚哲表示：“胡主席此次访问韩国，距韩国总统李明博5月访华仅3个月时间，表明两国关系趋于更加密切。这次胡主席访韩是在北京奥运会闭幕后的第二天进行，24日又是韩中建交16周年的日子，可以理解为中国高度重视韩中关系。”　　中韩两国1992年8月24日建交之后，双边关系发展迅速。目前，中国是韩国最大的贸易伙伴、最大的出口市场和最大的海外投资对象国。韩国是中国第三大贸易伙伴国和第四大外商直接投资来源地。2007年，两国人员往来600万人次，中韩贸易额从建交当年的50亿美元增加到1599亿美元。刘尚哲说，受世界冷战格局的影响，中韩两国曾有近半个世纪处于隔绝状态，建交后两国关系之所以能迅速发展，是因为两国文化相近，更得益于两国政府和人民的努力。　　刘尚哲表示：“1992年两国建交，过去两国历经数千年的相互交流得到了重新恢复。中韩两国是近邻，又具有相似的文化传统和亲近感。两国政府和人民为两国关系的发展做出了很多努力，实现了双方关系的飞跃。我相信，两国之间的交流将继续保持高速发展势头。”　　韩国总统李明博今年5月访华期间，中韩宣布建立战略合作伙伴关系，两国关系发展面临新的机遇。中方希望通过胡锦涛主席的这次访问，明确今后两国各领域交流与合作的努力方向，推动中韩关系进一步向前发展。在谈到中韩双方今后应加强哪些方面的交流和合作时，刘尚哲特别强调要加强两国人民之间的交流、增进相互信任。  周永康对希尔代表加拿大政府来华出席北京奥运会闭幕式表示欢迎，祝贺加拿大运动员在本届 奥运会上迄今获得18枚奖牌的良好成绩。他说，中加建交以来，双边关系总体发展顺利。不久前，胡锦 涛主席和哈珀总理举行成功会晤，就发展中加关系达成重要共识。 周永康表示，中方愿与加方一道，从战略高度和长远角度看待和发展两国关系，抓住当前机遇，共同推动中加关系健康发展。希望加强两国党际交流与对话，加深了解和互信，为中加国家关系发展发挥积极作用。','http://news.sina.com.cn/c/2008-08-23/200316163262.shtml',NULL,'2019-12-31 02:01:16',0),(2,'俄军总参谋长批评北约单方面部署欧洲反导系统','俄军总参谋长批评北约单方面部署欧洲反导系统','俄罗斯 国防部 北约 美国','2018-08-02 00:00:00','新华社莫斯科',NULL,NULL,'俄罗斯国防部第一副部长兼武装力量总参谋长尼古拉·马卡罗夫10日在莫斯科与北约高官进行会晤，批评北约单方面加紧部署欧洲反导系统。　　马卡罗夫在与到访的北约最高军事长官、美国海军上将詹姆斯·斯塔夫里迪斯会见后说，在部署欧洲反导系统问题上，北约一方面表示将与俄方展开谈判，另一方面却单方面加紧在欧洲部署反导装置。他强调，北约单方面行动不会对地区安全和稳定产生积极作用。　　马卡罗夫说，俄罗斯与北约既有共识也有分歧，俄方希望北约在认识到目前存在的问题后能增进双方互信。　　斯塔夫里迪斯表示，北约方面将认真听取俄方意见，他也会向美国领导人转达俄方相关表态。　　本月5日，北约秘书长拉斯穆森宣布，西班牙已同意美国在其境内部署4艘宙斯盾驱逐舰，以此作为北约反导系统组成部分，俄方对此表示强烈反对。除西班牙外，土耳其、罗马尼亚和波兰三国也已明确宣布加入北约反导系统。　　去年11月，北约领导人在里斯本峰会上决定建立覆盖欧洲的反导系统，美国在欧洲的反导计划是其重要组成部分。美国和北约邀请俄罗斯参与欧洲反导系统建设，但相关谈判至今毫无进展。','http://cyfd.cnki.com.cn/Article/N2013060013002446.htm',NULL,'2019-12-31 02:01:16',0);
/*!40000 ALTER TABLE `rs_textlibrary_data_33` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rs_textlibrary_data_34`
--

DROP TABLE IF EXISTS `rs_textlibrary_data_34`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rs_textlibrary_data_34` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `summary` text,
  `keywords` varchar(255) DEFAULT NULL,
  `publish_time` datetime DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `page` varchar(20) DEFAULT NULL,
  `content` text,
  `url` varchar(512) DEFAULT NULL,
  `publish_source` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `is_delete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rs_textlibrary_data_34`
--

LOCK TABLES `rs_textlibrary_data_34` WRITE;
/*!40000 ALTER TABLE `rs_textlibrary_data_34` DISABLE KEYS */;
INSERT INTO `rs_textlibrary_data_34` VALUES (1,'胡锦涛主席访问韩国','胡锦涛将于25日至26日对韩国进行国事访问。','胡锦涛 外交 会议','2018-08-02 00:00:00','国际在线',NULL,NULL,'胡锦涛将于25日至26日对韩国进行国事访问。韩国《中央日报》中国研究所所长刘尚哲先生认为，胡主席此访将为韩中两国关系发展做出重要贡献。　　刘尚哲说，中韩建交以来，双方领导人互访的时间间隔越来越短，这表明两国关系更加密切，也显示了两国领导人对双边关系的重视。　　刘尚哲表示：“胡主席此次访问韩国，距韩国总统李明博5月访华仅3个月时间，表明两国关系趋于更加密切。这次胡主席访韩是在北京奥运会闭幕后的第二天进行，24日又是韩中建交16周年的日子，可以理解为中国高度重视韩中关系。”　　据悉，访问期间，胡锦涛将同阿里亚斯总统举行会谈，会见哥斯达黎加立法大会主席帕切科 。胡锦涛还将出席在秘鲁首都利马举行的亚太经合组织第十六次领导人非正式会议，并访问古巴、秘鲁和希腊。中韩两国1992年8月24日建交之后，双边关系发展迅速。目前，中国是韩国最大的贸易伙伴、最大的出口市场和最大的海外投资对象国。韩国是中国第三大贸易伙伴国和第四大外商直接投资来源地。2007年，两国人员往来600万人次，中韩贸易额从建交当年的50亿美元增加到1599亿美元。刘尚哲说，受世界冷战格局的影响，中韩两国曾有近半个世纪处于隔绝状态，建交后两国关系之所以能迅速发展，是因为两国文化相近，更得益于两国政府和人民的努力。　　刘尚哲表示：“1992年两国建交，过去两国历经数千年的相互交流得到了重新恢复。中韩两国是近邻，又具有相似的文化传统和亲近感。两国政府和人民为两国关系的发展做出了很多努力，实现了双方关系的飞跃。我相信，两国之间的交流将继续保持高速发展势头。”　　韩国总统李明博今年5月访华期间，中韩宣布建立战略合作伙伴关系，两国关系发展面临新的机遇。中方希望通过胡锦涛主席的这次访问，明确今后两国各领域交流与合作的努力方向，推动中韩关系进一步向前发展。在谈到中韩双方今后应加强哪些方面的交流和合作时，刘尚哲特别强调要加强两国人民之间的交流、增进相互信任。  周永康对希尔代表加拿大政府来华出席北京奥运会闭幕式表示欢迎，祝贺加拿大运动员在本届 奥运会上迄今获得18枚奖牌的良好成绩。他说，中加建交以来，双边关系总体发展顺利。印度总理辛格将于今天抵达中国，参加即将召开的第七届亚欧首脑会议 。不久前，胡锦 涛主席和哈珀总理举行成功会晤，就发展中加关系达成重要共识。 周永康表示，中方愿与加方一道，从战略高度和长远角度看待和发展两国关系，抓住当前机遇，共同推动中加关系健康发展。希望加强两国党际交流与对话，加深了解和互信，为中加国家关系发展发挥积极作用。','http://news.sina.com.cn/c/2008-08-23/200316163262.shtml',NULL,'2019-12-31 13:06:52',0),(2,'俄军总参谋长批评北约单方面部署欧洲反导系统','俄军总参谋长批评北约单方面部署欧洲反导系统','俄罗斯 国防部 北约 美国','2018-08-02 00:00:00','新华社莫斯科',NULL,NULL,'俄罗斯国防部第一副部长兼武装力量总参谋长尼古拉·马卡罗夫10日在莫斯科与北约高官进行会晤，批评北约单方面加紧部署欧洲反导系统。　　马卡罗夫在与到访的北约最高军事长官、美国海军上将詹姆斯·斯塔夫里迪斯会见后说，在部署欧洲反导系统问题上，北约一方面表示将与俄方展开谈判，另一方面却单方面加紧在欧洲部署反导装置。他强调，北约单方面行动不会对地区安全和稳定产生积极作用。　　马卡罗夫说，俄罗斯与北约既有共识也有分歧，俄方希望北约在认识到目前存在的问题后能增进双方互信。　　俄罗斯就此向欧盟方面提出了严正交涉。斯塔夫里迪斯表示，北约方面将认真听取俄方意见，他也会向美国领导人转达俄方相关表态。俄罗斯远东联邦大学外事副校长维多利亚·帕诺娃向本报记者表示，期待习近平主席来访能让俄中两国的友好关系更上一层楼。　　本月5日，北约秘书长拉斯穆森宣布，西班牙已同意美国在其境内部署4艘宙斯盾驱逐舰，以此作为北约反导系统组成部分，俄方对此表示强烈反对。除西班牙外，土耳其、罗马尼亚和波兰三国也已明确宣布加入北约反导系统。　　去年11月，北约领导人在里斯本峰会上决定建立覆盖欧洲的反导系统，美国在欧洲的反导计划是其重要组成部分。美国和北约邀请俄罗斯参与欧洲反导系统建设，但相关谈判至今毫无进展。','http://cyfd.cnki.com.cn/Article/N2013060013002446.htm',NULL,'2019-12-31 13:06:53',0);
/*!40000 ALTER TABLE `rs_textlibrary_data_34` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rs_textlibrary_data_35`
--

DROP TABLE IF EXISTS `rs_textlibrary_data_35`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rs_textlibrary_data_35` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `summary` text,
  `keywords` varchar(255) DEFAULT NULL,
  `publish_time` datetime DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `page` varchar(20) DEFAULT NULL,
  `content` text,
  `url` varchar(512) DEFAULT NULL,
  `publish_source` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `is_delete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rs_textlibrary_data_35`
--

LOCK TABLES `rs_textlibrary_data_35` WRITE;
/*!40000 ALTER TABLE `rs_textlibrary_data_35` DISABLE KEYS */;
INSERT INTO `rs_textlibrary_data_35` VALUES (1,'胡锦涛主席访问韩国','胡锦涛将于25日至26日对韩国进行国事访问。','胡锦涛 外交 会议','2018-08-02 00:00:00','国际在线',NULL,NULL,'胡锦涛将于25日至26日对韩国进行国事访问。韩国《中央日报》中国研究所所长刘尚哲先生认为，胡主席此访将为韩中两国关系发展做出重要贡献。　　刘尚哲说，中韩建交以来，双方领导人互访的时间间隔越来越短，这表明两国关系更加密切，也显示了两国领导人对双边关系的重视。　　刘尚哲表示：“胡主席此次访问韩国，距韩国总统李明博5月访华仅3个月时间，表明两国关系趋于更加密切。这次胡主席访韩是在北京奥运会闭幕后的第二天进行，24日又是韩中建交16周年的日子，可以理解为中国高度重视韩中关系。”　　据悉，访问期间，胡锦涛将同阿里亚斯总统举行会谈，会见哥斯达黎加立法大会主席帕切科 。胡锦涛还将出席在秘鲁首都利马举行的亚太经合组织第十六次领导人非正式会议，并访问古巴、秘鲁和希腊。中韩两国1992年8月24日建交之后，双边关系发展迅速。目前，中国是韩国最大的贸易伙伴、最大的出口市场和最大的海外投资对象国。韩国是中国第三大贸易伙伴国和第四大外商直接投资来源地。2007年，两国人员往来600万人次，中韩贸易额从建交当年的50亿美元增加到1599亿美元。刘尚哲说，受世界冷战格局的影响，中韩两国曾有近半个世纪处于隔绝状态，建交后两国关系之所以能迅速发展，是因为两国文化相近，更得益于两国政府和人民的努力。　　刘尚哲表示：“1992年两国建交，过去两国历经数千年的相互交流得到了重新恢复。中韩两国是近邻，又具有相似的文化传统和亲近感。两国政府和人民为两国关系的发展做出了很多努力，实现了双方关系的飞跃。我相信，两国之间的交流将继续保持高速发展势头。”　　韩国总统李明博今年5月访华期间，中韩宣布建立战略合作伙伴关系，两国关系发展面临新的机遇。中方希望通过胡锦涛主席的这次访问，明确今后两国各领域交流与合作的努力方向，推动中韩关系进一步向前发展。在谈到中韩双方今后应加强哪些方面的交流和合作时，刘尚哲特别强调要加强两国人民之间的交流、增进相互信任。  周永康对希尔代表加拿大政府来华出席北京奥运会闭幕式表示欢迎，祝贺加拿大运动员在本届 奥运会上迄今获得18枚奖牌的良好成绩。他说，中加建交以来，双边关系总体发展顺利。印度总理辛格将于今天抵达中国，参加即将召开的第七届亚欧首脑会议 。不久前，胡锦 涛主席和哈珀总理举行成功会晤，就发展中加关系达成重要共识。 周永康表示，中方愿与加方一道，从战略高度和长远角度看待和发展两国关系，抓住当前机遇，共同推动中加关系健康发展。希望加强两国党际交流与对话，加深了解和互信，为中加国家关系发展发挥积极作用。','http://news.sina.com.cn/c/2008-08-23/200316163262.shtml',NULL,'2020-01-08 02:22:56',0),(2,'俄军总参谋长批评北约单方面部署欧洲反导系统','俄军总参谋长批评北约单方面部署欧洲反导系统','俄罗斯 国防部 北约 美国','2018-08-02 00:00:00','新华社莫斯科',NULL,NULL,'俄罗斯国防部第一副部长兼武装力量总参谋长尼古拉·马卡罗夫10日在莫斯科与北约高官进行会晤，批评北约单方面加紧部署欧洲反导系统。　　马卡罗夫在与到访的北约最高军事长官、美国海军上将詹姆斯·斯塔夫里迪斯会见后说，在部署欧洲反导系统问题上，北约一方面表示将与俄方展开谈判，另一方面却单方面加紧在欧洲部署反导装置。他强调，北约单方面行动不会对地区安全和稳定产生积极作用。　　马卡罗夫说，俄罗斯与北约既有共识也有分歧，俄方希望北约在认识到目前存在的问题后能增进双方互信。　　俄罗斯就此向欧盟方面提出了严正交涉。斯塔夫里迪斯表示，北约方面将认真听取俄方意见，他也会向美国领导人转达俄方相关表态。俄罗斯远东联邦大学外事副校长维多利亚·帕诺娃向本报记者表示，期待习近平主席来访能让俄中两国的友好关系更上一层楼。　　本月5日，北约秘书长拉斯穆森宣布，西班牙已同意美国在其境内部署4艘宙斯盾驱逐舰，以此作为北约反导系统组成部分，俄方对此表示强烈反对。除西班牙外，土耳其、罗马尼亚和波兰三国也已明确宣布加入北约反导系统。　　去年11月，北约领导人在里斯本峰会上决定建立覆盖欧洲的反导系统，美国在欧洲的反导计划是其重要组成部分。美国和北约邀请俄罗斯参与欧洲反导系统建设，但相关谈判至今毫无进展。','http://cyfd.cnki.com.cn/Article/N2013060013002446.htm',NULL,'2020-01-08 02:22:56',0);
/*!40000 ALTER TABLE `rs_textlibrary_data_35` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rs_textlibrary_data_36`
--

DROP TABLE IF EXISTS `rs_textlibrary_data_36`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rs_textlibrary_data_36` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `summary` text,
  `keywords` varchar(255) DEFAULT NULL,
  `publish_time` datetime DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `page` varchar(20) DEFAULT NULL,
  `content` text,
  `url` varchar(512) DEFAULT NULL,
  `publish_source` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `is_delete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rs_textlibrary_data_36`
--

LOCK TABLES `rs_textlibrary_data_36` WRITE;
/*!40000 ALTER TABLE `rs_textlibrary_data_36` DISABLE KEYS */;
INSERT INTO `rs_textlibrary_data_36` VALUES (1,'胡锦涛主席访问韩国','胡锦涛将于25日至26日对韩国进行国事访问。','胡锦涛 外交 会议','2018-08-02 00:00:00','国际在线',NULL,NULL,'胡锦涛将于25日至26日对韩国进行国事访问。韩国《中央日报》中国研究所所长刘尚哲先生认为，胡主席此访将为韩中两国关系发展做出重要贡献。　　刘尚哲说，中韩建交以来，双方领导人互访的时间间隔越来越短，这表明两国关系更加密切，也显示了两国领导人对双边关系的重视。　　刘尚哲表示：“胡主席此次访问韩国，距韩国总统李明博5月访华仅3个月时间，表明两国关系趋于更加密切。这次胡主席访韩是在北京奥运会闭幕后的第二天进行，24日又是韩中建交16周年的日子，可以理解为中国高度重视韩中关系。”　　据悉，访问期间，胡锦涛将同阿里亚斯总统举行会谈，会见哥斯达黎加立法大会主席帕切科 。胡锦涛还将出席在秘鲁首都利马举行的亚太经合组织第十六次领导人非正式会议，并访问古巴、秘鲁和希腊。中韩两国1992年8月24日建交之后，双边关系发展迅速。目前，中国是韩国最大的贸易伙伴、最大的出口市场和最大的海外投资对象国。韩国是中国第三大贸易伙伴国和第四大外商直接投资来源地。2007年，两国人员往来600万人次，中韩贸易额从建交当年的50亿美元增加到1599亿美元。刘尚哲说，受世界冷战格局的影响，中韩两国曾有近半个世纪处于隔绝状态，建交后两国关系之所以能迅速发展，是因为两国文化相近，更得益于两国政府和人民的努力。　　刘尚哲表示：“1992年两国建交，过去两国历经数千年的相互交流得到了重新恢复。中韩两国是近邻，又具有相似的文化传统和亲近感。两国政府和人民为两国关系的发展做出了很多努力，实现了双方关系的飞跃。我相信，两国之间的交流将继续保持高速发展势头。”　　韩国总统李明博今年5月访华期间，中韩宣布建立战略合作伙伴关系，两国关系发展面临新的机遇。中方希望通过胡锦涛主席的这次访问，明确今后两国各领域交流与合作的努力方向，推动中韩关系进一步向前发展。在谈到中韩双方今后应加强哪些方面的交流和合作时，刘尚哲特别强调要加强两国人民之间的交流、增进相互信任。  周永康对希尔代表加拿大政府来华出席北京奥运会闭幕式表示欢迎，祝贺加拿大运动员在本届 奥运会上迄今获得18枚奖牌的良好成绩。他说，中加建交以来，双边关系总体发展顺利。印度总理辛格将于今天抵达中国，参加即将召开的第七届亚欧首脑会议 。不久前，胡锦 涛主席和哈珀总理举行成功会晤，就发展中加关系达成重要共识。 周永康表示，中方愿与加方一道，从战略高度和长远角度看待和发展两国关系，抓住当前机遇，共同推动中加关系健康发展。希望加强两国党际交流与对话，加深了解和互信，为中加国家关系发展发挥积极作用。','http://news.sina.com.cn/c/2008-08-23/200316163262.shtml',NULL,'2020-01-08 11:20:26',0),(2,'俄军总参谋长批评北约单方面部署欧洲反导系统','俄军总参谋长批评北约单方面部署欧洲反导系统','俄罗斯 国防部 北约 美国','2018-08-02 00:00:00','新华社莫斯科',NULL,NULL,'俄罗斯国防部第一副部长兼武装力量总参谋长尼古拉·马卡罗夫10日在莫斯科与北约高官进行会晤，批评北约单方面加紧部署欧洲反导系统。　　马卡罗夫在与到访的北约最高军事长官、美国海军上将詹姆斯·斯塔夫里迪斯会见后说，在部署欧洲反导系统问题上，北约一方面表示将与俄方展开谈判，另一方面却单方面加紧在欧洲部署反导装置。他强调，北约单方面行动不会对地区安全和稳定产生积极作用。　　马卡罗夫说，俄罗斯与北约既有共识也有分歧，俄方希望北约在认识到目前存在的问题后能增进双方互信。　　俄罗斯就此向欧盟方面提出了严正交涉。斯塔夫里迪斯表示，北约方面将认真听取俄方意见，他也会向美国领导人转达俄方相关表态。俄罗斯远东联邦大学外事副校长维多利亚·帕诺娃向本报记者表示，期待习近平主席来访能让俄中两国的友好关系更上一层楼。　　本月5日，北约秘书长拉斯穆森宣布，西班牙已同意美国在其境内部署4艘宙斯盾驱逐舰，以此作为北约反导系统组成部分，俄方对此表示强烈反对。除西班牙外，土耳其、罗马尼亚和波兰三国也已明确宣布加入北约反导系统。　　去年11月，北约领导人在里斯本峰会上决定建立覆盖欧洲的反导系统，美国在欧洲的反导计划是其重要组成部分。美国和北约邀请俄罗斯参与欧洲反导系统建设，但相关谈判至今毫无进展。','http://cyfd.cnki.com.cn/Article/N2013060013002446.htm',NULL,'2020-01-08 11:20:26',0);
/*!40000 ALTER TABLE `rs_textlibrary_data_36` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rs_textlibrary_data_37`
--

DROP TABLE IF EXISTS `rs_textlibrary_data_37`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rs_textlibrary_data_37` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `summary` text,
  `keywords` varchar(255) DEFAULT NULL,
  `publish_time` datetime DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `page` varchar(20) DEFAULT NULL,
  `content` text,
  `url` varchar(512) DEFAULT NULL,
  `publish_source` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `is_delete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rs_textlibrary_data_37`
--

LOCK TABLES `rs_textlibrary_data_37` WRITE;
/*!40000 ALTER TABLE `rs_textlibrary_data_37` DISABLE KEYS */;
INSERT INTO `rs_textlibrary_data_37` VALUES (1,'胡锦涛主席访问韩国','胡锦涛将于25日至26日对韩国进行国事访问。','胡锦涛 外交 会议','2018-08-02 00:00:00','国际在线',NULL,NULL,'胡锦涛将于25日至26日对韩国进行国事访问。韩国《中央日报》中国研究所所长刘尚哲先生认为，胡主席此访将为韩中两国关系发展做出重要贡献。　　刘尚哲说，中韩建交以来，双方领导人互访的时间间隔越来越短，这表明两国关系更加密切，也显示了两国领导人对双边关系的重视。　　刘尚哲表示：“胡主席此次访问韩国，距韩国总统李明博5月访华仅3个月时间，表明两国关系趋于更加密切。这次胡主席访韩是在北京奥运会闭幕后的第二天进行，24日又是韩中建交16周年的日子，可以理解为中国高度重视韩中关系。”　　据悉，访问期间，胡锦涛将同阿里亚斯总统举行会谈，会见哥斯达黎加立法大会主席帕切科 。胡锦涛还将出席在秘鲁首都利马举行的亚太经合组织第十六次领导人非正式会议，并访问古巴、秘鲁和希腊。中韩两国1992年8月24日建交之后，双边关系发展迅速。目前，中国是韩国最大的贸易伙伴、最大的出口市场和最大的海外投资对象国。韩国是中国第三大贸易伙伴国和第四大外商直接投资来源地。2007年，两国人员往来600万人次，中韩贸易额从建交当年的50亿美元增加到1599亿美元。刘尚哲说，受世界冷战格局的影响，中韩两国曾有近半个世纪处于隔绝状态，建交后两国关系之所以能迅速发展，是因为两国文化相近，更得益于两国政府和人民的努力。　　刘尚哲表示：“1992年两国建交，过去两国历经数千年的相互交流得到了重新恢复。中韩两国是近邻，又具有相似的文化传统和亲近感。两国政府和人民为两国关系的发展做出了很多努力，实现了双方关系的飞跃。我相信，两国之间的交流将继续保持高速发展势头。”　　韩国总统李明博今年5月访华期间，中韩宣布建立战略合作伙伴关系，两国关系发展面临新的机遇。中方希望通过胡锦涛主席的这次访问，明确今后两国各领域交流与合作的努力方向，推动中韩关系进一步向前发展。在谈到中韩双方今后应加强哪些方面的交流和合作时，刘尚哲特别强调要加强两国人民之间的交流、增进相互信任。  周永康对希尔代表加拿大政府来华出席北京奥运会闭幕式表示欢迎，祝贺加拿大运动员在本届 奥运会上迄今获得18枚奖牌的良好成绩。他说，中加建交以来，双边关系总体发展顺利。印度总理辛格将于今天抵达中国，参加即将召开的第七届亚欧首脑会议 。不久前，胡锦 涛主席和哈珀总理举行成功会晤，就发展中加关系达成重要共识。 周永康表示，中方愿与加方一道，从战略高度和长远角度看待和发展两国关系，抓住当前机遇，共同推动中加关系健康发展。希望加强两国党际交流与对话，加深了解和互信，为中加国家关系发展发挥积极作用。','http://news.sina.com.cn/c/2008-08-23/200316163262.shtml',NULL,'2020-01-08 13:29:53',0),(2,'俄军总参谋长批评北约单方面部署欧洲反导系统','俄军总参谋长批评北约单方面部署欧洲反导系统','俄罗斯 国防部 北约 美国','2018-08-02 00:00:00','新华社莫斯科',NULL,NULL,'俄罗斯国防部第一副部长兼武装力量总参谋长尼古拉·马卡罗夫10日在莫斯科与北约高官进行会晤，批评北约单方面加紧部署欧洲反导系统。　　马卡罗夫在与到访的北约最高军事长官、美国海军上将詹姆斯·斯塔夫里迪斯会见后说，在部署欧洲反导系统问题上，北约一方面表示将与俄方展开谈判，另一方面却单方面加紧在欧洲部署反导装置。他强调，北约单方面行动不会对地区安全和稳定产生积极作用。　　马卡罗夫说，俄罗斯与北约既有共识也有分歧，俄方希望北约在认识到目前存在的问题后能增进双方互信。　　俄罗斯就此向欧盟方面提出了严正交涉。斯塔夫里迪斯表示，北约方面将认真听取俄方意见，他也会向美国领导人转达俄方相关表态。俄罗斯远东联邦大学外事副校长维多利亚·帕诺娃向本报记者表示，期待习近平主席来访能让俄中两国的友好关系更上一层楼。　　本月5日，北约秘书长拉斯穆森宣布，西班牙已同意美国在其境内部署4艘宙斯盾驱逐舰，以此作为北约反导系统组成部分，俄方对此表示强烈反对。除西班牙外，土耳其、罗马尼亚和波兰三国也已明确宣布加入北约反导系统。　　去年11月，北约领导人在里斯本峰会上决定建立覆盖欧洲的反导系统，美国在欧洲的反导计划是其重要组成部分。美国和北约邀请俄罗斯参与欧洲反导系统建设，但相关谈判至今毫无进展。','http://cyfd.cnki.com.cn/Article/N2013060013002446.htm',NULL,'2020-01-08 13:29:54',0);
/*!40000 ALTER TABLE `rs_textlibrary_data_37` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rs_user`
--

DROP TABLE IF EXISTS `rs_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rs_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `telephone` varchar(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  UNIQUE KEY `telephone_UNIQUE` (`telephone`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rs_user`
--

LOCK TABLES `rs_user` WRITE;
/*!40000 ALTER TABLE `rs_user` DISABLE KEYS */;
INSERT INTO `rs_user` VALUES (2,'18916107060','admin','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,NULL,'2019-12-10 21:43:46');
/*!40000 ALTER TABLE `rs_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `text_library_data`
--

DROP TABLE IF EXISTS `text_library_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `text_library_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `summary` text COLLATE utf8_bin,
  `publish_time` datetime DEFAULT NULL,
  `author` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `content` text COLLATE utf8_bin,
  `url` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `is_delete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `text_library_data`
--

LOCK TABLES `text_library_data` WRITE;
/*!40000 ALTER TABLE `text_library_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `text_library_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-08 15:24:46
