-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: g_note
-- ------------------------------------------------------
-- Server version	5.1.73

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `g_note`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `g_note` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `g_note`;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `father_id` int(11) NOT NULL,
  `createdata` datetime NOT NULL,
  `updatedata` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_father_id` (`father_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'oracle',0,'2016-03-28 23:01:36','2016-03-28 23:01:36'),(2,'test',0,'2016-03-28 23:07:51','2016-03-28 23:07:51'),(3,'???',1,'2016-03-28 00:00:00','2016-03-28 00:00:00'),(4,'play',0,'2016-03-28 23:18:02','2016-03-28 23:18:02'),(5,'mysql',0,'2016-03-28 23:19:13','2016-03-28 23:19:13'),(6,'backup & recovery',5,'2016-03-28 00:00:00','2016-03-28 00:00:00'),(7,'backup',6,'2016-03-28 00:00:00','2016-03-28 00:00:00'),(8,'mysqldump',7,'2016-03-28 00:00:00','2016-03-28 00:00:00'),(9,'github',0,'2016-03-28 23:36:38','2016-03-28 23:36:38'),(10,'perl6',0,'2016-03-29 00:40:22','2016-03-29 00:40:22'),(11,'测试中文',2,'2016-03-28 00:00:00','2016-03-28 00:00:00'),(12,'linux',0,'2016-03-29 00:46:38','2016-03-29 00:46:38'),(13,'command',12,'2016-03-28 00:00:00','2016-03-28 00:00:00'),(14,'file',13,'2016-03-28 00:00:00','2016-03-28 00:00:00'),(16,'command',5,'2016-03-30 00:00:00','2016-03-30 00:00:00'),(17,'install',4,'2016-03-30 00:00:00','2016-03-30 00:00:00'),(18,'create app',17,'2016-03-30 00:00:00','2016-03-30 00:00:00'),(19,'conecpts',4,'2016-03-30 00:00:00','2016-03-30 00:00:00'),(20,'Action',19,'2016-03-30 00:00:00','2016-03-30 00:00:00'),(21,'sample',20,'2016-03-30 00:00:00','2016-03-30 00:00:00'),(22,'results',20,'2016-03-30 00:00:00','2016-03-30 00:00:00'),(23,'routing',19,'2016-03-30 00:00:00','2016-03-30 00:00:00');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content`
--

DROP TABLE IF EXISTS `content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_1` varchar(2000) DEFAULT NULL,
  `content_2` varchar(2000) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `createdata` datetime NOT NULL,
  `updatedata` datetime NOT NULL,
  `document_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `document_id` (`document_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content`
--

LOCK TABLES `content` WRITE;
/*!40000 ALTER TABLE `content` DISABLE KEYS */;
INSERT INTO `content` VALUES (1,'test','test',2,'2016-03-28 23:08:22','2016-03-28 23:08:22',NULL),(2,'mysqldump --databases g_note > g_note.dmp.bak',' ',8,'2016-03-28 00:00:00','2016-03-28 00:00:00',NULL),(3,'file -i','-i 查看文件字符集',14,'2016-03-28 00:00:00','2016-03-28 00:00:00',NULL),(4,'-e','在命令行执行sql语句\r\nSHELL# mysql -e \"select now()\"',16,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),(5,'scala version','1. 安装jdk1.8\r\n2. 安装sbt\r\n3.project/plugins.sbt \r\n    resolvers += \"Typesafe repository\" at \"https://dl.bintray.com/typesafe/maven-releases/\"\r\n    addSbtPlugin(\"com.typesafe.play\" % \"sbt-plugin\" % \"2.5.x\")\r\n4.project/build.properties\r\n    sbt.version=0.13.11\r\n5.build.sbt\r\n    name := \"my-first-app\"\r\n    version := \"1.0.0-SNAPSHOT\"\r\n    lazy val root = (project in file(\".\")).enablePlugins(PlayScala)\r\n6.shell# sbt run\r\n',18,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),(6,'Action {\r\n  Ok(\"Hello world\")\r\n}','???',20,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),(7,'Action { request =>\r\n  Ok(\"Got request [\" + request + \"]\")\r\n}','',20,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),(8,'Action { implicit request =>\r\n  Ok(\"Got request [\" + request + \"]\")\r\n}','使用implicit关键字，当其他api需要隐式的调用request',20,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),(9,'Action(parse.json) { implicit request =>\r\n  Ok(\"Got request [\" + request + \"]\")\r\n}','???',20,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),(10,'Action的作用','play.api.mvc.Action 的作用是把 play.api.mvc.Request 变成 play.api.mvc.Result 返回给cliect\r\n也就是收到请求，并给出结果，返回给客户端',20,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),(11,'Action(parse.json) { implicit request =>\r\n  Ok(\"Got request [\" + request + \"]\")\r\n}','',20,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),(15,'play.api.mvc.Results','play提供的结果都在这个特质里面',22,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),(16,'Redirect(\"/user/home\")\r\nRedirect(\"/user/home\", MOVED_PERMANENTLY)','转跳',22,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),(13,'val ok = Ok(\"Hello world!\")\r\nval notFound = NotFound\r\nval pageNotFound = NotFound(<h1>Page not found</h1>)\r\nval badRequest = BadRequest(views.html.form(formWithErrors))\r\nval oops = InternalServerError(\"Oops\")\r\nval anyStatus = Status(488)(\"Strange response type\")','???',22,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),(14,'import play.api.http.HttpEntity\r\n\r\ndef index = Action {\r\n  Result(\r\n    header = ResponseHeader(200, Map.empty),\r\n    body = HttpEntity.Strict(ByteString(\"Hello world!\"), Some(\"text/plain\"))\r\n  )\r\n}','直接定义结果',22,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),(17,'def index(name:String) = TODO','TODO dummy page',20,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),(18,'提供的方法','GET, PATCH, POST, PUT, DELETE, HEAD',23,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),(19,'GET   /clients/all          controllers.Clients.list()','静态路径',23,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),(20,'GET   /clients/:id          controllers.Clients.show(id: Long)','动态路径',23,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),(21,'GET   /files/*name          controllers.Application.download(name)','假设url是GET /files/images/logo.png\r\n那么那么就捕获images/logo.png ',23,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),(22,'GET   /items/$id<[0-9]+>    controllers.Items.show(id: Long)','使用正则表达式',23,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL);
/*!40000 ALTER TABLE `content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document`
--

DROP TABLE IF EXISTS `document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dtype` varchar(5) DEFAULT NULL,
  `state` int(11) NOT NULL,
  `createdata` datetime NOT NULL,
  `updatedata` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document`
--

LOCK TABLES `document` WRITE;
/*!40000 ALTER TABLE `document` DISABLE KEYS */;
/*!40000 ALTER TABLE `document` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-30 21:27:22
