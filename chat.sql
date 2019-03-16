# Host: localhost  (Version: 5.5.53)
# Date: 2019-03-15 20:17:17
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "member"
#

DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `islogin` char(1) DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

#
# Data for table "member"
#

INSERT INTO `member` VALUES (8,'0','kiki','e10adc3949ba59abbe56e057f20f883e','630020826@qq.com'),(9,'1','Ai','e10adc3949ba59abbe56e057f20f883e','Ai@qq.com');

#
# Structure for table "talkroom"
#

DROP TABLE IF EXISTS `talkroom`;
CREATE TABLE `talkroom` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text,
  `uid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8;

#
# Data for table "talkroom"
#

INSERT INTO `talkroom` VALUES (38,'111','2'),(39,'2323','2'),(40,'@test2 ...','3'),(41,'@test2 000','3'),(42,'121212','3'),(43,'12121212121212','3'),(44,'111','3'),(45,'1212','3'),(46,'','3'),(47,'121212','3'),(48,'<img class=\"emoji_icon\" src=\"dist/img/qq/2.gif\">121212','3'),(49,'<img class=\"emoji_icon\" src=\"dist/img/qq/2.gif\">121212<img class=\"emoji_icon\" src=\"dist/img/qq/7.gif\">','3'),(50,'<img class=\"emoji_icon\" src=\"dist/img/qq/22.gif\"><img class=\"emoji_icon\" src=\"dist/img/qq/2.gif\">121212','3'),(51,'<img class=\"emoji_icon\" src=\"dist/img/qq/22.gif\">','3'),(52,'<img class=\"emoji_icon\" src=\"dist/img/qq/14.gif\">','3'),(53,'<img class=\"emoji_icon\" src=\"dist/img/qq/14.gif\">','3'),(54,'<img class=\"emoji_icon\" src=\"dist/img/qq/14.gif\">','3'),(55,'<img class=\"emoji_icon\" src=\"dist/img/qq/14.gif\">测试。','3'),(56,'121212','3'),(57,'武器大师多','3'),(58,'<img class=\"emoji_icon\" src=\"dist/img/qq/3.gif\">','3'),(59,'1121212','3'),(60,'<img class=\"emoji_icon\" src=\"dist/img/qq/4.gif\">','3'),(61,'@test2<img class=\"emoji_icon\" src=\"dist/img/qq/2.gif\"> ','3'),(62,'<img class=\"emoji_icon\" src=\"dist/img/qq/4.gif\">@test2&nbsp; ','3'),(63,'','3'),(64,'...','3'),(65,'...','3'),(66,'...','3'),(67,'12','3'),(68,'11111','2'),(69,'111212','2'),(70,'121212','3'),(71,'<img class=\"emoji_icon\" src=\"dist/img/qq/4.gif\">','3'),(72,'<img class=\"emoji_icon\" src=\"dist/img/qq/2.gif\">1212','2'),(73,'121212','3'),(74,'121212','2'),(75,'@test&nbsp;<img class=\"emoji_icon\" src=\"dist/img/qq/3.gif\">','2'),(76,'&lt;img src = /&gt;\"http://p4.qhimg.com/t0119c648cddf473a29.jpg\"/&gt;','2'),(77,'111111111<img class=\"emoji_icon\" src=\"dist/img/qq/4.gif\">','2'),(78,'111111111<img class=\"emoji_icon\" src=\"dist/img/qq/2.gif\">','3'),(79,'121212<img class=\"emoji_icon\" src=\"dist/img/qq/12.gif\">','2'),(80,'@test2&nbsp;<img class=\"emoji_icon\" src=\"dist/img/qq/1.gif\">','2'),(81,'121212<img class=\"emoji_icon\" src=\"dist/img/qq/3.gif\">','3'),(82,'&lt;h1&gt;666&lt;/h1&gt;','3'),(83,'&lt;h2&gt;1111&lt;/h2&gt;','3'),(84,'&lt;h1&gt;1111&lt;/h1&gt;','3'),(85,'<img class=\"emoji_icon\" src=\"dist/img/qq/2.gif\">','3'),(86,'1111','3'),(87,'&lt;h1&gt;11&lt;/h1&gt;','3'),(88,'<h2>222</h2><h2>222</h2><h2>222</h2><h2>222</h2><h2>222</h2><h2>222</h2><h2>222</h2><h2>222</h2><h2>222</h2><h2>222</h2><h2>222</h2><h2>222</h2><h2>222</h2><h2>222</h2><h2>222</h2><h2>222</h2><h2>222</h2><h2>222</h2><h2>222</h2><h2>222</h2><h2>222</h2><h2>222</h2><h2>222</h2><h2>222</h2><h2>222</h2><h2>222</h2><h2>222</h2><h2>222</h2><h2>222</h2><h2>222</h2><h2>222</h2>','3'),(89,'00','3'),(90,'111','3'),(91,'&lt;h1&gt;111&lt;/h1&gt;','3'),(92,'&lt;h1&gt;666666&lt;/h1&gt;','3'),(93,'&lt;p&gt;mini&lt;/p&gt;','3'),(94,'&lt;hr/&gt;','3'),(95,'&lt;span&nbsp; style=\"color:red\"&gt;333&lt;/span&gt;','3'),(96,'...','3'),(97,'<img class=\"emoji_icon\" src=\"dist/img/qq/1.gif\">','2'),(98,'<img class=\"emoji_icon\" src=\"dist/img/qq/4.gif\">','2'),(99,'<img class=\"emoji_icon\" src=\"dist/img/qq/2.gif\">','2'),(100,'121212','2'),(101,'<img class=\"emoji_icon\" src=\"dist/img/qq/3.gif\">','2'),(102,'<img class=\"emoji_icon\" src=\"dist/img/qq/10.gif\">','2'),(103,'<img class=\"emoji_icon\" src=\"dist/img/tieba/22.jpg\">','2'),(104,'<img class=\"emoji_icon\" src=\"dist/img/doutu/3.jpg\">','2'),(105,'<img class=\"emoji_icon\" src=\"dist/img/doutu/4.jpg\">','2'),(106,'<img class=\"emoji_icon\" src=\"dist/img/doutu/4.jpg\">','2'),(107,'<img class=\"emoji_icon\" src=\"dist/img/qq/4.gif\">','3'),(108,'121212','2'),(109,'<img class=\"emoji_icon\" src=\"dist/img/doutu/5.jpg\">','2'),(110,'111','2'),(111,'<img class=\"emoji_icon\" src=\"dist/img/doutu/3.jpg\">你好，test','2'),(112,'<img class=\"emoji_icon\" src=\"dist/img/tieba/13.jpg\">hahahah','3'),(113,'<img class=\"emoji_icon\" src=\"dist/img/doutu/3.jpg\">','2'),(114,'<img class=\"emoji_icon\" src=\"dist/img/tieba/23.jpg\">','3'),(115,'@test2&nbsp;<img class=\"emoji_icon\" src=\"dist/img/qq/2.gif\">','2'),(116,'11111','2'),(117,'1222222222222','2'),(118,'12222222','2'),(119,'<img class=\"emoji_icon\" src=\"dist/img/doutu/4.jpg\">111','2'),(120,'111','2'),(121,'12122','2'),(122,'121212','2'),(123,'...','2'),(124,'<img class=\"emoji_icon\" src=\"dist/img/doutu/1.jpg\"><img class=\"emoji_icon\" src=\"dist/img/doutu/3.jpg\">','2'),(125,'121212','2'),(126,'@test2&nbsp;<img class=\"emoji_icon\" src=\"dist/img/qq/2.gif\">','2'),(127,'<img class=\"emoji_icon\" src=\"dist/img/tieba/26.jpg\">','2'),(128,'1111','2'),(129,'1212','2'),(130,'1212','2'),(131,'你们好吗','2'),(132,'<img class=\"emoji_icon\" src=\"dist/img/qq/5.gif\">','2'),(133,'1212','2'),(134,'<img class=\"emoji_icon\" src=\"dist/img/doutu/5.jpg\">','2'),(135,'<img class=\"emoji_icon\" src=\"dist/img/qq/14.gif\">','2'),(136,'<img class=\"emoji_icon\" src=\"dist/img/qq/6.gif\">','2'),(137,'<img class=\"emoji_icon\" src=\"dist/img/qq/7.gif\">','3'),(138,'@test2 你好<img class=\"emoji_icon\" src=\"dist/img/qq/14.gif\">','2'),(139,'<img class=\"emoji_icon\" src=\"dist/img/qq/87.gif\">@test&nbsp;','3'),(140,'哈哈','2'),(141,'<img class=\"emoji_icon\" src=\"dist/img/qq/14.gif\">','8'),(142,'<img class=\"emoji_icon\" src=\"dist/img/doutu/3.jpg\">','8'),(143,'@kiki hai<img class=\"emoji_icon\" src=\"dist/img/qq/14.gif\">','9'),(144,'haha<img class=\"emoji_icon\" src=\"dist/img/doutu/4.jpg\">','8'),(145,'111','8'),(146,'111','9');
