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
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (2,'test',0,'2016-03-28 23:07:51','2016-03-28 23:07:51'),(3,'???',1,'2016-03-28 00:00:00','2016-03-28 00:00:00'),(4,'play',52,'2016-03-28 23:18:02','2016-03-28 23:18:02'),(5,'mysql',35,'2016-03-28 23:19:13','2016-03-28 23:19:13'),(6,'backup & recovery',5,'2016-03-28 00:00:00','2016-03-28 00:00:00'),(7,'backup',6,'2016-03-28 00:00:00','2016-03-28 00:00:00'),(8,'mysqldump',7,'2016-03-28 00:00:00','2016-03-28 00:00:00'),(9,'git & github',0,'2016-03-28 23:36:38','2016-03-31 00:00:00'),(68,'perl6',31,'2016-03-31 00:00:00','2016-03-31 00:00:00'),(11,'测试中文',2,'2016-03-28 00:00:00','2016-03-28 00:00:00'),(12,'linux',69,'2016-03-29 00:46:38','2016-03-29 00:46:38'),(13,'command',12,'2016-03-28 00:00:00','2016-03-28 00:00:00'),(14,'file',13,'2016-03-28 00:00:00','2016-03-28 00:00:00'),(16,'command',5,'2016-03-30 00:00:00','2016-03-30 00:00:00'),(17,'install',4,'2016-03-30 00:00:00','2016-03-30 00:00:00'),(18,'create app',17,'2016-03-30 00:00:00','2016-03-30 00:00:00'),(19,'conecpts',4,'2016-03-30 00:00:00','2016-03-30 00:00:00'),(20,'Action',19,'2016-03-30 00:00:00','2016-03-30 00:00:00'),(21,'sample',20,'2016-03-30 00:00:00','2016-03-30 00:00:00'),(22,'results',20,'2016-03-30 00:00:00','2016-03-30 00:00:00'),(23,'routing',19,'2016-03-30 00:00:00','2016-03-30 00:00:00'),(24,'ntpdate',13,'2016-03-30 00:00:00','2016-03-30 00:00:00'),(25,'yum',13,'2016-03-30 00:00:00','2016-03-30 00:00:00'),(26,'公共仓库',25,'2016-03-30 00:00:00','2016-03-30 00:00:00'),(27,'nslookup',13,'2016-03-30 00:00:00','2016-03-30 00:00:00'),(28,'lsof',13,'2016-03-30 00:00:00','2016-03-30 00:00:00'),(29,'nginx',39,'2016-03-30 14:43:06','2016-03-30 14:43:06'),(30,'install',29,'2016-03-30 00:00:00','2016-03-30 00:00:00'),(31,'language',0,'2016-03-30 15:31:39','2016-03-30 15:31:39'),(32,'php',31,'2016-03-30 00:00:00','2016-03-30 00:00:00'),(33,'scala',31,'2016-03-30 00:00:00','2016-03-30 00:00:00'),(34,'java',31,'2016-03-30 00:00:00','2016-03-30 00:00:00'),(35,'database',0,'2016-03-30 15:32:35','2016-03-30 15:32:35'),(36,'oracle',35,'2016-03-30 00:00:00','2016-03-30 00:00:00'),(38,'hive',60,'2016-03-31 09:38:43','2016-03-31 09:38:43'),(40,'函数',38,'2016-03-31 00:00:00','2016-03-31 00:00:00'),(42,'hql',38,'2016-03-31 00:00:00','2016-03-31 00:00:00'),(43,'install',38,'2016-03-31 00:00:00','2016-03-31 00:00:00'),(44,'python',31,'2016-03-31 00:00:00','2016-03-31 00:00:00'),(46,'php',31,'2016-03-31 00:00:00','2016-03-31 00:00:00'),(47,'build tool',31,'2016-03-31 00:00:00','2016-03-31 00:00:00'),(48,'maven',47,'2016-03-31 00:00:00','2016-03-31 00:00:00'),(49,'sbt',47,'2016-03-31 00:00:00','2016-03-31 00:00:00'),(50,'gradle',47,'2016-03-31 00:00:00','2016-03-31 00:00:00'),(51,'public repo',47,'2016-03-31 00:00:00','2016-03-31 00:00:00'),(39,'webServer',0,'2016-03-31 11:29:55','2016-03-31 11:29:55'),(53,'apache',39,'2016-03-31 00:00:00','2016-03-31 00:00:00'),(69,'OS',0,'2016-03-31 13:19:57','2016-03-31 13:19:57'),(55,'character',5,'2016-03-31 00:00:00','2016-03-31 00:00:00'),(41,'ide',0,'2016-03-31 12:31:53','2016-03-31 12:31:53'),(56,'intellij',41,'2016-03-31 00:00:00','2016-03-31 00:00:00'),(57,'快捷键',56,'2016-03-31 00:00:00','2016-03-31 00:00:00'),(58,'win',57,'2016-03-31 00:00:00','2016-03-31 00:00:00'),(59,'mac',57,'2016-03-31 00:00:00','2016-03-31 00:00:00'),(45,'serviceDiscovery',0,'2016-03-31 12:58:46','2016-03-31 12:58:46'),(61,'consul',45,'2016-03-31 00:00:00','2016-03-31 00:00:00'),(62,'consul-template',61,'2016-03-31 00:00:00','2016-03-31 00:00:00'),(52,'frame',0,'2016-03-31 13:03:13','2016-03-31 13:03:13'),(63,'orm',52,'2016-03-31 00:00:00','2016-03-31 00:00:00'),(64,'slick',63,'2016-03-31 00:00:00','2016-03-31 00:00:00'),(65,'error',64,'2016-03-31 00:00:00','2016-03-31 00:00:00'),(66,'akka',52,'2016-03-31 00:00:00','2016-03-31 00:00:00'),(60,'bigData',0,'2016-03-31 13:16:18','2016-03-31 13:16:18'),(67,'kafka',60,'2016-03-31 00:00:00','2016-03-31 00:00:00'),(70,'command',9,'2016-03-31 00:00:00','2016-03-31 00:00:00'),(71,'zeppelin',60,'2016-03-31 00:00:00','2016-03-31 00:00:00'),(72,'redis',35,'2016-03-31 00:00:00','2016-03-31 00:00:00'),(73,'jvm',31,'2016-03-31 00:00:00','2016-03-31 00:00:00'),(74,'parameter',73,'2016-03-31 00:00:00','2016-03-31 00:00:00'),(75,'bin',73,'2016-03-31 00:00:00','2016-03-31 00:00:00'),(76,' jstat',75,'2016-03-31 00:00:00','2016-03-31 00:00:00'),(77,'jhat',75,'2016-03-31 00:00:00','2016-03-31 00:00:00'),(78,'protocol',0,'2016-03-31 13:49:20','2016-03-31 13:49:20'),(79,'http',78,'2016-03-31 00:00:00','2016-03-31 00:00:00'),(80,'Content-Type',79,'2016-03-31 00:00:00','2016-03-31 00:00:00'),(81,'状态码',79,'2016-03-31 00:00:00','2016-03-31 00:00:00'),(82,'results',19,'2016-03-31 00:00:00','2016-03-31 00:00:00'),(83,'session & Flash',19,'2016-03-31 00:00:00','2016-03-31 00:00:00'),(84,'函数式',33,'2016-03-31 00:00:00','2016-03-31 00:00:00'),(85,'构造action',20,'2016-03-31 00:00:00','2016-03-31 00:00:00'),(86,'dmesg',13,'2016-03-31 00:00:00','2016-03-31 00:00:00'),(87,'concepts',33,'2016-03-31 00:00:00','2016-03-31 00:00:00'),(88,'type system',87,'2016-03-31 00:00:00','2016-03-31 00:00:00');
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
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content`
--

LOCK TABLES `content` WRITE;
/*!40000 ALTER TABLE `content` DISABLE KEYS */;
INSERT INTO `content` VALUES (1,'test','test',2,'2016-03-28 23:08:22','2016-03-28 23:08:22',NULL),(2,'mysqldump --databases g_note > g_note.dmp.bak',' ',8,'2016-03-28 00:00:00','2016-03-28 00:00:00',NULL),(3,'file -i','-i 查看文件字符集',14,'2016-03-28 00:00:00','2016-03-28 00:00:00',NULL),(4,'-e','在命令行执行sql语句\r\nSHELL# mysql -e \"select now()\"',16,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),(5,'scala version','1. 安装jdk1.8\r\n2. 安装sbt\r\n3.project/plugins.sbt \r\n    resolvers += \"Typesafe repository\" at \"https://dl.bintray.com/typesafe/maven-releases/\"\r\n    addSbtPlugin(\"com.typesafe.play\" % \"sbt-plugin\" % \"2.5.x\")\r\n4.project/build.properties\r\n    sbt.version=0.13.11\r\n5.build.sbt\r\n    name := \"my-first-app\"\r\n    version := \"1.0.0-SNAPSHOT\"\r\n    lazy val root = (project in file(\".\")).enablePlugins(PlayScala)\r\n6.shell# sbt run\r\n',18,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),(6,'Action {\r\n  Ok(\"Hello world\")\r\n}','???',20,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),(7,'Action { request =>\r\n  Ok(\"Got request [\" + request + \"]\")\r\n}','',20,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),(8,'Action { implicit request =>\r\n  Ok(\"Got request [\" + request + \"]\")\r\n}','使用implicit关键字，当其他api需要隐式的调用request',20,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),(9,'Action(parse.json) { implicit request =>\r\n  Ok(\"Got request [\" + request + \"]\")\r\n}','???',20,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),(10,'Action的作用','play.api.mvc.Action 的作用是把 play.api.mvc.Request 变成 play.api.mvc.Result 返回给cliect\r\n也就是收到请求，并给出结果，返回给客户端',20,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),(11,'Action(parse.json) { implicit request =>\r\n  Ok(\"Got request [\" + request + \"]\")\r\n}','',20,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),(15,'play.api.mvc.Results','play提供的结果都在这个特质里面',22,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),(16,'Redirect(\"/user/home\")\r\nRedirect(\"/user/home\", MOVED_PERMANENTLY)','转跳',22,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),(13,'val ok = Ok(\"Hello world!\")\r\nval notFound = NotFound\r\nval pageNotFound = NotFound(<h1>Page not found</h1>)\r\nval badRequest = BadRequest(views.html.form(formWithErrors))\r\nval oops = InternalServerError(\"Oops\")\r\nval anyStatus = Status(488)(\"Strange response type\")','???',22,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),(14,'import play.api.http.HttpEntity\r\n\r\ndef index = Action {\r\n  Result(\r\n    header = ResponseHeader(200, Map.empty),\r\n    body = HttpEntity.Strict(ByteString(\"Hello world!\"), Some(\"text/plain\"))\r\n  )\r\n}','直接定义结果',22,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),(17,'def index(name:String) = TODO','TODO dummy page',20,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),(18,'提供的方法','GET, PATCH, POST, PUT, DELETE, HEAD',23,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),(19,'GET   /clients/all          controllers.Clients.list()','静态路径',23,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),(20,'GET   /clients/:id          controllers.Clients.show(id: Long)','动态路径',23,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),(21,'GET   /files/*name          controllers.Application.download(name)','假设url是GET /files/images/logo.png\r\n那么就捕获images/logo.png ',23,'2016-03-30 00:00:00','2016-03-31 00:00:00',NULL),(22,'GET   /items/$id<[0-9]+>    controllers.Items.show(id: Long)','使用正则表达式',23,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),(24,'yum install -y ntpdate','???',24,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),(25,'时间服务器','time.windows.com',24,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),(27,'???','yum -y install yum-utils\r\n使用yum-utils中的yumdownloader工具\r\n#查看工具是否存在\r\nrpm -ql yum-utils| grep yumdownloader\r\n#使用工具下载rpm,例子:下载gcc,他默认是放在当前目录\r\nyumdownloader gcc',25,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),(28,'group','#列出所有可以安装的GroupList\r\n yum grouplist\r\n#查看\r\n yum groupinfo <groupname>\r\n#安装\r\n yum groupinstall <groupname>\r\n#更新\r\n yum groupupdate <groupname>\r\n#移除\r\n yum groupremove <groupname>',25,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),(29,'查看系统中启动的yum资源','yum repolist { enabled | disabled | all }',25,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),(30,'EPEL','	\r\nyum install epel-release\r\n',26,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),(31,'WANdiscoSVN','/etc/yum.repos.d/wandisco-svn.repo:\r\nname=WANdisco SVN Repo 1.8\r\nenabled=1\r\nbaseurl=http://opensource.wandisco.com/centos/6/svn-1.8/RPMS/$basearch/\r\ngpgcheck=1\r\ngpgkey=http://opensource.wandisco.com/RPM-GPG-KEY-WANdisco',26,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),(32,'yum install bind-utils','',27,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),(33,'lsof（list open files）是一个列出当前系统(进程)打开文件的工具。','???',28,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),(34,'编译安装','yum install -y gcc zlib-devel pcre-devel make wget tar\r\nwget http://nginx.org/download/nginx-1.6.2.tar.gz\r\ntar zxvf nginx-1.6.2.tar.gz\r\ncd nginx-1.6.2 && ./configure --prefix=/usr/local/nginx && make && make install\r\n/usr/local/nginx/sbin/nginx',30,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),(35,'nginx 1.9 tcp负载','???',30,'2016-03-30 00:00:00','2016-03-30 00:00:00',10000),(36,'concat','合并2个列为一个字符串\r\nselect concat(a,\'-\',b) from',40,'2016-03-31 00:00:00','2016-03-31 00:00:00',NULL),(37,'substr','截取字符串',40,'2016-03-31 00:00:00','2016-03-31 00:00:00',NULL),(38,'创建表，并使用orc存储','create table Addresses (\r\n  name string,\r\n  street string,\r\n  city string,\r\n  state string,\r\n  zip int\r\n) stored as orc tblproperties (\"orc.compress\"=\"NONE\");',42,'2016-03-31 00:00:00','2016-03-31 00:00:00',NULL),(39,'配置mysql作为元数据存储','???',43,'2016-03-31 00:00:00','2016-03-31 00:00:00',10001),(40,'执行shell','import os\r\ntasks = os.popen(\'curl -X GET -H \"Accept: application/json\" http://192.168.12.40:8080/v2/apps/nginx421a/tasks\').read()',44,'2016-03-31 00:00:00','2016-03-31 00:00:00',NULL),(41,'https://repo.typesafe.com/typesafe/releases/\r\nhttps://repository.apache.org/content/groups/public/\r\nhttps://github.com/InMobi/mvn-repo/raw/master/snapshots/\r\nhttps://repo.maven.apache.org/maven2/\r\nhttps://repository.cloudera.com/artifactory/cloudera-repos/\r\nhttp://repo.spring.io/ext-release-local\r\nhttp://repo.spring.io/libs-release\r\nhttp://repository.apache.org/snapshots','???',51,'2016-03-31 00:00:00','2016-03-31 00:00:00',NULL),(42,'使用socks5代理','在jvm参数中添加\r\n-DsocksProxyHost=127.0.0.1  -DsocksProxyPort=9700',47,'2016-03-31 00:00:00','2016-03-31 00:00:00',NULL),(43,'http://repos.fedorapeople.org/repos/dchen/apache-maven/epel-apache-maven.repo','???',51,'2016-03-31 00:00:00','2016-03-31 00:00:00',NULL),(44,'安装apache 2.4.12','centos6.5 64',53,'2016-03-31 00:00:00','2016-03-31 00:00:00',10002),(45,'5.6版本','修改/etc/my.cnf配置文件\r\n\r\n[mysqld]\r\ncharacter-set-server=utf8\r\n\r\n[mysql]\r\ndefault-character-set=utf8\r\n查看\r\n\r\nmysql> show variables like \'character%\';',55,'2016-03-31 00:00:00','2016-03-31 00:00:00',NULL),(46,'alt + command + l','格式化代码',59,'2016-03-31 00:00:00','2016-03-31 00:00:00',NULL),(47,'ctrl+j','生成常规函数，比如main',58,'2016-03-31 00:00:00','2016-03-31 00:00:00',NULL),(48,'快捷键列表(mac)','???',59,'2016-03-31 00:00:00','2016-03-31 00:00:00',10003),(49,'debug','	\r\nF9            resume programe 恢复程序\r\nAlt+F10       show execution point 显示执行断点\r\nF8            Step Over 相当于eclipse的f6      跳到下一步\r\nF7            Step Into 相当于eclipse的f5就是  进入到代码\r\nAlt+shift+F7  Force Step Into 这个是强制进入代码\r\nShift+F8      Step Out  相当于eclipse的f8跳到下一个断点，也相当于eclipse的f7跳出函数\r\nAtl+F9        Run To Cursor 运行到光标处\r\nctrl+shift+F9   debug运行java类\r\nctrl+shift+F10  正常运行java类\r\nalt+F8          debug时选中查看值',58,'2016-03-31 00:00:00','2016-03-31 00:00:00',NULL),(50,'Ctrl + Alt + O ','优化import自动去除无用的import语句，蛮不错的一个功能。 ',58,'2016-03-31 00:00:00','2016-03-31 00:00:00',NULL),(51,'Ctrl + Alt + Shift + L','格式化当前文件代码',58,'2016-03-31 00:00:00','2016-03-31 00:00:00',NULL),(52,'CTRL + SHIFT + U','大小写切换',58,'2016-03-31 00:00:00','2016-03-31 00:00:00',NULL),(53,'编译consul-template','???',62,'2016-03-31 00:00:00','2016-03-31 00:00:00',10004),(54,'检查表是否存在','println(Await.result(db.run(MTable.getTables), Duration.Inf).toList)',64,'2016-03-31 00:00:00','2016-03-31 00:00:00',NULL),(55,'can\'t find method result on TableQuery with slick 3.0.0-RC1','I did hit the same problem and here is what I did to get rid of it:\r\n\r\nUpdated IntelliJ to version 14.1.3\r\nUsed Scala Plugin version 1.5\r\nMy scala version is 2.11.6\r\n\r\nI hope this helps somebody who might run into the same problem!',65,'2016-03-31 00:00:00','2016-03-31 00:00:00',NULL),(57,'zeppelin配置--yarn','zeppelin-env.sh\r\n  MASTER=yarn-client\r\n  HADOOP_CONF_DIR=/xxx/etc/hadoop\r\nbin/zeppelin-daemon.sh start',71,'2016-03-31 00:00:00','2016-03-31 00:00:00',NULL),(58,'在某个项目中，使用自己的仓库\r\n','在build.gradle文件中添加如下:\r\nrepositories {\r\n    maven {\r\n        url \"http://repo.mycompany.com/maven2\"\r\n    }\r\n}',50,'2016-03-31 00:00:00','2016-03-31 00:00:00',NULL),(59,'dir','内存dump到磁盘的位置\r\n可以在cli中用save手动刷,或shutdown save',72,'2016-03-31 00:00:00','2016-03-31 00:00:00',NULL),(60,'???','???',73,'2016-03-31 00:00:00','2016-03-31 00:00:00',NULL),(61,'-Xmx100m','最大head内存',74,'2016-03-31 00:00:00','2016-03-31 00:00:00',NULL),(62,'jconsole.exe','图形化用户界面的监测工具，主要用于监测并显示运行于Java平台上的应用程序的性能和资源占用等信息。',75,'2016-03-31 00:00:00','2016-03-31 00:00:00',NULL),(63,'jstat -gcutil','',76,'2016-03-31 00:00:00','2016-03-31 00:00:00',NULL),(64,'1. jmap -dump:live,file=a.map \r\n2. jhat a.map ','???',77,'2016-03-31 00:00:00','2016-03-31 00:00:00',NULL),(65,'application/java-archive','???',80,'2016-03-31 00:00:00','2016-03-31 00:00:00',NULL),(66,'application/java-archive','???',80,'2016-03-31 00:00:00','2016-03-31 00:00:00',NULL),(67,'400','Bad Request\r\nHTTP 1.1 中头缺失HOST协议，就回报400',81,'2016-03-31 00:00:00','2016-03-31 00:00:00',NULL),(68,'# The version parameter is optional. E.g. /api/list-all?version=3.0\r\nGET   /api/list-all         controllers.Api.list(version: Option[String])','可选参数',23,'2016-03-31 00:00:00','2016-03-31 00:00:00',NULL),(69,'routes.Application.hello','把action方法作为url',23,'2016-03-31 00:00:00','2016-03-31 00:00:00',NULL),(70,'Ok(\"Hello World!\")','Content-Type 自动设置为 text/plain',82,'2016-03-31 00:00:00','2016-03-31 00:00:00',NULL),(71,'Ok(<message>Hello World!</message>.as(\"application/xml\")','xml',82,'2016-03-31 00:00:00','2016-03-31 00:00:00',NULL),(72,'Ok(<h1>Hello World!</h1>).as(\"text/html\")\r\nOk(<h1>Hello World!</h1>).as(HTML)','使用HTML和使用text/html区别是使用HTML play会自动设置为text/html; charset=utf-8',82,'2016-03-31 00:00:00','2016-03-31 00:00:00',NULL),(73,'改变http responses text的charset 值','class Application extends Controller {\r\n\r\n  implicit val myCustomCharset = Codec.utf_8\r\n//  implicit val myCustomCharset = Codec.javaSupported(\"iso-8859-1\")\r\n\r\n  def index = Action {\r\n    Ok(<h1>Hello World!</h1>).as(HTML)\r\n  }\r\n\r\n}',82,'2016-03-31 00:00:00','2016-03-31 00:00:00',NULL),(74,'Ok(\"Welcome!\").withSession(\"connected\" -> \"user@gmail.com\")','设置session的值',83,'2016-03-31 00:00:00','2016-03-31 00:00:00',NULL),(75,'Ok(\"Hello World!\").withSession(request.session + (\"saidHello\" -> \"yes\"))','在session中添加值',83,'2016-03-31 00:00:00','2016-03-31 00:00:00',NULL),(76,'Ok(\"Theme reset!\").withSession(request.session - \"theme\")','移除session的值',83,'2016-03-31 00:00:00','2016-03-31 00:00:00',NULL),(77,'def index = Action { request =>\r\n  request.session.get(\"connected\").map { user =>\r\n    Ok(\"Hello \" + user)\r\n  }.getOrElse {\r\n    Unauthorized(\"Oops, you are not connected\")\r\n  }\r\n}','从action中读取session的值',83,'2016-03-31 00:00:00','2016-03-31 00:00:00',NULL),(78,'Ok(\"Bye\").withNewSession','开启一起新的session，等价于开启一个无值的session，等价于丢失上一个session保存的值',83,'2016-03-31 00:00:00','2016-03-31 00:00:00',NULL),(79,'text/plain','当设置为此值时，浏览器不会对body中的数据做处理，只是简单的当作文本展示出来',80,'2016-03-31 00:00:00','2016-03-31 00:00:00',NULL),(80,'text/html','浏览器把body的内容作为html数据解析后展示出来',80,'2016-03-31 00:00:00','2016-03-31 00:00:00',NULL),(81,'ActionBuilder','在Action中添加逻辑',85,'2016-03-31 00:00:00','2016-03-31 00:00:00',10005),(82,'dmesg','查看系统启动信息',13,'2016-03-31 00:00:00','2016-03-31 00:00:00',NULL),(83,'ActionTransformer','在request中添加信息\r\n具体来说就是你想在request中点出你自定义的属性：比如:request.user',85,'2016-03-31 00:00:00','2016-03-31 00:00:00',10006),(84,'ActionFilter','想在某些条件下过滤请求，并立即返回结果',85,'2016-03-31 00:00:00','2016-03-31 00:00:00',NULL),(85,'ActionRefiner','在某些条件下，增加一些定制的信息到request中',85,'2016-03-31 00:00:00','2016-03-31 00:00:00',NULL),(86,'泛型类','class Pair[T, S](val first: T, val second: S)\r\nval abc = new Pair(\"a\", 1)\r\nval abc2 = new Pair[String,Int](\"a\",1)  //显示的指定类型',88,'2016-03-31 00:00:00','2016-03-31 00:00:00',NULL),(87,'泛型函数','',88,'2016-03-31 00:00:00','2016-03-31 00:00:00',NULL);
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

-- Dump completed on 2016-03-31 18:33:55
