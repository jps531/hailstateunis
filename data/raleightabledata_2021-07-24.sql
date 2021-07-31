# ************************************************************
# Sequel Ace SQL dump
# Version 3034
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# Host: ls-ed52acd835d3b04e8df8a962fff8a5e1f827d6c5.camxrlw6o2ww.us-east-1.rds.amazonaws.com (MySQL 5.7.33-log)
# Database: raleightabledata
# Generation Time: 2021-07-25 01:34:16 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE='NO_AUTO_VALUE_ON_ZERO', SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table combination
# ------------------------------------------------------------

DROP TABLE IF EXISTS `combination`;

CREATE TABLE `combination` (
  `comboID` int(11) NOT NULL AUTO_INCREMENT,
  `helmetID` int(11) NOT NULL,
  `jerseyID` int(11) NOT NULL,
  `pantsID` int(11) NOT NULL,
  `cName` varchar(100) DEFAULT NULL,
  `cImage` varchar(100) DEFAULT NULL,
  `cThumb` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`comboID`,`helmetID`,`jerseyID`,`pantsID`),
  KEY `helmetID` (`helmetID`),
  KEY `jerseyID` (`jerseyID`),
  KEY `pantsID` (`pantsID`),
  CONSTRAINT `combination_ibfk_1` FOREIGN KEY (`helmetID`) REFERENCES `helmet` (`helmetID`),
  CONSTRAINT `combination_ibfk_2` FOREIGN KEY (`jerseyID`) REFERENCES `jersey` (`jerseyID`),
  CONSTRAINT `combination_ibfk_3` FOREIGN KEY (`pantsID`) REFERENCES `pants` (`pantsID`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4;

LOCK TABLES `combination` WRITE;
/*!40000 ALTER TABLE `combination` DISABLE KEYS */;

INSERT INTO `combination` (`comboID`, `helmetID`, `jerseyID`, `pantsID`, `cName`, `cImage`, `cThumb`)
VALUES
	(1,1,1,1,'1995 maroon/maroon/maroon','https://i.imgur.com/z8auTHn.png','https://i.imgur.com/txGywc1.png'),
	(2,6,7,1,'2020 maroon/maroon/maroon','https://i.imgur.com/3H5IK1C.png','https://i.imgur.com/U8vrQCe.png'),
	(3,6,7,5,'2020 maroon/maroon/white','https://i.imgur.com/6uMoYBP.png','https://i.imgur.com/tnl8Sev.png'),
	(4,6,7,3,'2020 maroon/maroon/darkgray','https://i.imgur.com/0kkUB8y.png','https://i.imgur.com/UdnHkpS.png'),
	(5,6,8,1,'2020 maroon/white/maroon','https://i.imgur.com/V1Ohklj.png','https://i.imgur.com/1SWKGnV.png'),
	(6,6,8,5,'2020 maroon/white/white','https://i.imgur.com/1KPwYNp.png','https://i.imgur.com/z8IL6bd.png'),
	(7,6,8,4,'2020 maroon/white/lightgray','https://i.imgur.com/2xYES1J.png','https://i.imgur.com/4TCMioI.png'),
	(8,5,7,4,'2018 maroon/maroon/lightgray','https://i.imgur.com/TGN08VF.png','https://i.imgur.com/4tNU8gZ.png'),
	(9,5,7,1,'2018 maroon/maroon/maroon','https://i.imgur.com/nVa1aTs.png','https://i.imgur.com/D9Y3Oof.png'),
	(10,5,8,4,'2018 maroon/white/lightgray','https://i.imgur.com/TpbVIiU.png','https://i.imgur.com/GbIO8tK.png'),
	(11,5,8,1,'2018 maroon/white/maroon','https://i.imgur.com/DJb3QAJ.png','https://i.imgur.com/DDgnFqn.png'),
	(12,5,9,1,'2018 maroon/black/maroon','https://i.imgur.com/hyQlveN.png','https://i.imgur.com/jt1nF46.png'),
	(13,5,6,1,'2017 maroon/maroon/maroon','https://i.imgur.com/KCXO60o.png','https://i.imgur.com/rGAlZk9.png'),
	(14,5,6,2,'2017 maroon/maroon/white','https://i.imgur.com/vvY3Ar4.png','https://i.imgur.com/10GZApT.png'),
	(15,5,6,3,'2017 maroon/maroon/darkgray','https://i.imgur.com/bbbxRgm.png','https://i.imgur.com/MtWGDSV.png'),
	(16,5,5,1,'2017 maroon/white/maroon','https://i.imgur.com/yRXWyIN.png','https://i.imgur.com/4mGuVHE.png'),
	(17,5,5,2,'2017 maroon/white/white','https://i.imgur.com/1H89vy7.png','https://i.imgur.com/aLrwqEt.png'),
	(18,5,5,3,'2017 maroon/white/darkgray','https://i.imgur.com/yBeIuBJ.png','https://i.imgur.com/EetQ0m8.png'),
	(19,5,4,3,'2017 maroon/darkgray/darkgray','https://i.imgur.com/URrNQFq.png','https://i.imgur.com/PzYGAhv.png'),
	(20,4,6,3,'2015 maroon/maroon/darkgray','https://i.imgur.com/tEzA0DZ.png','https://i.imgur.com/Nm36a5q.png'),
	(21,4,5,3,'2015 maroon/white/darkgray','https://i.imgur.com/8MXdyqa.png','https://i.imgur.com/mI1LBJ5.png'),
	(22,4,4,3,'2014 maroon/darkgray/darkgray','https://i.imgur.com/2YP5dpI.png','https://i.imgur.com/CNwzzq8.png'),
	(23,4,4,1,'2014 maroon/darkgray/maroon','https://i.imgur.com/CoU0Rjn.png','https://i.imgur.com/LrquPre.png'),
	(24,4,5,3,'2014 maroon/white/darkgray','https://i.imgur.com/ZnF6UoM.png','https://i.imgur.com/x5tNrDu.png'),
	(25,4,5,1,'2014 maroon/white/maroon','https://i.imgur.com/sVxAu1y.png','https://i.imgur.com/v91ZDlM.png'),
	(26,3,2,1,'2012 maroon/maroon/maroon','https://i.imgur.com/2JjpvvZ.png','https://i.imgur.com/79bctXu.png'),
	(27,3,2,3,'2013 maroon/maroon/darkgray','https://i.imgur.com/IKDU0mJ.png','https://i.imgur.com/X4Y8yxv.png'),
	(28,3,4,3,'2013 maroon/darkgray/darkgray','https://i.imgur.com/bt8bMfK.png','https://i.imgur.com/2vbwv94.png'),
	(29,3,5,1,'2013 maroon/white/maroon','https://i.imgur.com/oGAEy09.png','https://i.imgur.com/0m5uAjv.png'),
	(30,3,5,2,'2013 maroon/white/white','https://i.imgur.com/Tfizj8s.png','https://i.imgur.com/SWRhNDS.png'),
	(31,3,5,3,'2013 maroon/white/darkgray','https://i.imgur.com/uRN9ohv.png','https://i.imgur.com/DzrX4KM.png'),
	(32,3,2,2,'2012 maroon/maroon/white','https://i.imgur.com/BrDMx5M.png','https://i.imgur.com/8vFdp3M.png'),
	(33,3,3,1,'2012 maroon/white/maroon','https://i.imgur.com/kB6BXiM.png','https://i.imgur.com/aiEbGDH.png'),
	(34,3,3,2,'2012 maroon/white/white','https://i.imgur.com/06Cs2LU.png','https://i.imgur.com/q06s4JY.png'),
	(35,2,2,1,'2011 maroon/maroon/maroon','https://i.imgur.com/UVecK7q.png','https://i.imgur.com/nEFur3Y.png'),
	(36,2,2,2,'2011 maroon/maroon/white','https://i.imgur.com/rRTcg2G.png','https://i.imgur.com/YU01ojb.png'),
	(37,2,3,1,'2011 maroon/white/maroon','https://i.imgur.com/tpWZA7e.png','https://i.imgur.com/rPRnpkA.png'),
	(38,2,3,2,'2011 maroon/white/white','https://i.imgur.com/EmDDOi2.png','https://i.imgur.com/wXHdmc9.png'),
	(39,5,7,4,'2019 maroon/maroon/lightgray','https://i.imgur.com/gufClpB.png','https://i.imgur.com/mXGYTv3.png'),
	(40,5,7,1,'2019 maroon/maroon/maroon','https://i.imgur.com/S2BXxgi.png','https://i.imgur.com/aby2HPD.png'),
	(41,5,8,4,'2019 maroon/white/lightgray','https://i.imgur.com/zSLKTme.png','https://i.imgur.com/D0BhYgC.png'),
	(42,5,8,1,'2019 maroon/white/maroon','https://i.imgur.com/DtXmcyY.png','https://i.imgur.com/zMUZmxO.png'),
	(43,6,10,5,'2021 maroon/maroon/white','https://i.imgur.com/6l3lpNb.png','https://i.imgur.com/NPi4cDF.png'),
	(44,6,10,6,'2021 maroon/maroon/maroon','https://i.imgur.com/HSZk5ws.png','https://i.imgur.com/Y0tSFHt.png'),
	(45,6,11,5,'2021 maroon/white/white','https://i.imgur.com/tdcsJ4W.png','https://i.imgur.com/nBakcQO.png'),
	(46,6,11,6,'2021 maroon/white/maroon','https://i.imgur.com/UI7Vsnp.png','https://i.imgur.com/yQSBQWI.png');

/*!40000 ALTER TABLE `combination` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table game
# ------------------------------------------------------------

DROP TABLE IF EXISTS `game`;

CREATE TABLE `game` (
  `gameID` int(11) NOT NULL AUTO_INCREMENT,
  `yr` year(4) DEFAULT NULL,
  `gameday` date DEFAULT NULL,
  `opponentName` varchar(30) DEFAULT NULL,
  `result` varchar(10) DEFAULT NULL,
  `points_for` int(11) DEFAULT NULL,
  `points_against` int(11) DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL,
  `comboID` int(11) NOT NULL,
  `away_helmet` varchar(100) DEFAULT NULL,
  `home_helmet` varchar(100) DEFAULT NULL,
  `article_title` varchar(100) DEFAULT NULL,
  `article_link` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`gameID`,`comboID`),
  KEY `yr` (`yr`),
  KEY `opponentName` (`opponentName`),
  KEY `comboID` (`comboID`),
  CONSTRAINT `game_ibfk_1` FOREIGN KEY (`yr`) REFERENCES `season` (`yr`),
  CONSTRAINT `game_ibfk_2` FOREIGN KEY (`opponentName`) REFERENCES `opponent` (`opponentName`),
  CONSTRAINT `game_ibfk_3` FOREIGN KEY (`comboID`) REFERENCES `combination` (`comboID`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4;

LOCK TABLES `game` WRITE;
/*!40000 ALTER TABLE `game` DISABLE KEYS */;

INSERT INTO `game` (`gameID`, `yr`, `gameday`, `opponentName`, `result`, `points_for`, `points_against`, `location`, `comboID`, `away_helmet`, `home_helmet`, `article_title`, `article_link`)
VALUES
	(1,'1995','1995-12-02','Amory','Loss',12,42,'playoffsStateChampionship',1,'https://i.imgur.com/1gWNvgb.png','https://i.imgur.com/mhFtSEu.png',NULL,NULL),
	(2,'2020','2020-11-20','Magee','Loss',0,35,'playoffsThirdRound',2,'https://i.imgur.com/pWYETpD.png','https://i.imgur.com/LqHHtog.png',NULL,NULL),
	(3,'2020','2020-11-13','Forest','Win',50,28,'playoffsSecondRound',6,'https://i.imgur.com/4YevQur.png','https://i.imgur.com/i6CnMZ9.png',NULL,NULL),
	(4,'2020','2020-11-06','Jeff Davis Co.','Win',26,13,'playoffsFirstRound',2,'https://i.imgur.com/2QTBS9X.png','https://i.imgur.com/LqHHtog.png',NULL,NULL),
	(5,'2020','2020-10-30','Velma Jackson','Win',14,0,'road',6,'https://i.imgur.com/4YevQur.png','https://i.imgur.com/oRtazMt.png',NULL,NULL),
	(6,'2020','2020-10-23','St. Andrew\'s','Win',55,7,'home',3,'https://i.imgur.com/MokEB6g.png','https://i.imgur.com/LqHHtog.png',NULL,NULL),
	(7,'2020','2020-10-16','McLaurin','Win',55,6,'home',4,'https://i.imgur.com/buqIzpa.png','https://i.imgur.com/LqHHtog.png',NULL,NULL),
	(8,'2020','2020-10-08','Yazoo County','Win',54,7,'road',5,'https://i.imgur.com/4YevQur.png','https://i.imgur.com/mtgOi2B.png',NULL,NULL),
	(9,'2020','2020-10-02','Crystal Springs','Win',48,14,'home',2,'https://i.imgur.com/krfznjT.png','https://i.imgur.com/LqHHtog.png',NULL,NULL),
	(10,'2020','2020-09-25','Scott Central','Loss',20,26,'road',7,'https://i.imgur.com/4YevQur.png','https://i.imgur.com/qCkMfBN.png',NULL,NULL),
	(11,'2020','2020-09-18','Seminary','Loss',8,14,'home',3,'https://i.imgur.com/c78MEic.png','https://i.imgur.com/LqHHtog.png',NULL,NULL),
	(12,'2020','2020-09-11','Bay Springs','Win',24,6,'home',2,'https://i.imgur.com/OBvgxUV.png','https://i.imgur.com/LqHHtog.png',NULL,NULL),
	(13,'2020','2020-09-04','West Jones','Loss',6,35,'road',6,'https://i.imgur.com/4YevQur.png','https://i.imgur.com/FytCXaP.png',NULL,NULL),
	(14,'2019','2019-11-15','Magee','Loss',20,60,'playoffsSecondRound',40,'https://i.imgur.com/pWYETpD.png','https://i.imgur.com/58c2DhT.png',NULL,NULL),
	(15,'2019','2019-11-08','Kemper County','Win',38,14,'playoffsFirstRound',41,'https://i.imgur.com/RwEmSdb.png','https://i.imgur.com/BVwsRcR.png',NULL,NULL),
	(16,'2019','2019-11-01','Velma Jackson','Win',28,21,'home',40,'https://i.imgur.com/KKUKRNP.png','https://i.imgur.com/58c2DhT.png',NULL,NULL),
	(17,'2019','2019-10-25','St. Andrew\'s','Win',50,21,'road',41,'https://i.imgur.com/RwEmSdb.png','https://i.imgur.com/XbwEF5n.png',NULL,NULL),
	(18,'2019','2019-10-18','McLaurin','Win',34,14,'road',42,'https://i.imgur.com/RwEmSdb.png','https://i.imgur.com/BWutgJl.png',NULL,NULL),
	(19,'2019','2019-10-11','Yazoo County','Loss',14,31,'home',39,'https://i.imgur.com/FpaX67r.png','https://i.imgur.com/58c2DhT.png',NULL,NULL),
	(20,'2019','2019-10-04','Crystal Springs','Win',21,14,'road',42,'https://i.imgur.com/RwEmSdb.png','https://i.imgur.com/V93KiWI.png',NULL,NULL),
	(21,'2019','2019-09-27','Scott Central','Loss',12,40,'home',40,'https://i.imgur.com/eU64kXR.png','https://i.imgur.com/58c2DhT.png',NULL,NULL),
	(22,'2019','2019-09-20','Seminary','Loss',14,21,'road',42,'https://i.imgur.com/RwEmSdb.png','https://i.imgur.com/KNdkTAP.png',NULL,NULL),
	(23,'2019','2019-09-13','Bay Springs','Loss',6,30,'road',41,'https://i.imgur.com/RwEmSdb.png','https://i.imgur.com/pUtLqBf.png',NULL,NULL),
	(24,'2019','2019-09-06','Northeast Jones','Win',30,27,'home',39,'https://i.imgur.com/6GnaLZo.png','https://i.imgur.com/58c2DhT.png',NULL,NULL),
	(25,'2019','2019-08-29','Taylorsville','Loss',8,36,'home',40,'https://i.imgur.com/29bJwwT.png','https://i.imgur.com/58c2DhT.png',NULL,NULL),
	(26,'2018','2018-11-09','Seminary','Loss',6,22,'playoffsSecondRound',12,'https://i.imgur.com/mziLbGR.png','https://i.imgur.com/EDfLil2.png',NULL,NULL),
	(27,'2018','2018-11-02','Jefferson County','Win',25,6,'playoffsFirstRound',11,'https://i.imgur.com/FTjgCCA.png','https://i.imgur.com/S2OU2SK.png',NULL,NULL),
	(28,'2018','2018-10-26','Velma Jackson','Loss',56,63,'road',11,'https://i.imgur.com/FTjgCCA.png','https://i.imgur.com/QJpHc3z.png',NULL,NULL),
	(29,'2018','2018-10-19','St. Andrew\'s','Win',47,23,'home',12,'https://i.imgur.com/rgowPFF.png','https://i.imgur.com/EDfLil2.png',NULL,NULL),
	(30,'2018','2018-10-12','McLaurin','Win',35,7,'home',9,'https://i.imgur.com/IbQy4kj.png','https://i.imgur.com/EDfLil2.png',NULL,NULL),
	(31,'2018','2018-10-05','Magee','Loss',18,42,'road',10,'https://i.imgur.com/FTjgCCA.png','https://i.imgur.com/JDVrtoS.png',NULL,NULL),
	(32,'2018','2018-09-28','Crystal Springs','Win',21,0,'home',12,'https://i.imgur.com/kOL2y37.png','https://i.imgur.com/EDfLil2.png',NULL,NULL),
	(33,'2018','2018-09-21','Mendenhall','Loss',43,52,'road',11,'https://i.imgur.com/FTjgCCA.png','https://i.imgur.com/dc46ecT.png',NULL,NULL),
	(34,'2018','2018-09-14','Seminary','Loss',18,28,'home',9,'https://i.imgur.com/mziLbGR.png','https://i.imgur.com/EDfLil2.png',NULL,NULL),
	(35,'2018','2018-09-07','West Marion','Loss',8,14,'road',10,'https://i.imgur.com/FTjgCCA.png','https://i.imgur.com/gcsWHMV.png',NULL,NULL),
	(36,'2018','2018-08-31','Lawrence County','Loss',0,17,'road',11,'https://i.imgur.com/FTjgCCA.png','https://i.imgur.com/yXbzszE.png',NULL,NULL),
	(37,'2018','2018-08-23','Taylorsville','Loss',12,34,'road',10,'https://i.imgur.com/FTjgCCA.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(38,'2018','2018-08-17','Mize','Win',18,8,'home',8,'https://i.imgur.com/eohgtCI.png','https://i.imgur.com/EDfLil2.png',NULL,NULL),
	(39,'2017','2017-11-03','West Marion','Loss',20,22,'playoffsFirstRound',19,'https://i.imgur.com/XekI7bj.png','https://i.imgur.com/EDfLil2.png',NULL,NULL),
	(40,'2017','2017-10-26','Velma Jackson','Loss',13,14,'home',19,'https://i.imgur.com/abgfi5s.png','https://i.imgur.com/EDfLil2.png',NULL,NULL),
	(41,'2017','2017-10-20','St. Andrew\'s','Win',34,32,'road',18,'https://i.imgur.com/FTjgCCA.png','https://i.imgur.com/SfvMwFE.png',NULL,NULL),
	(42,'2017','2017-10-13','McLaurin','Win',41,14,'road',18,'https://i.imgur.com/FTjgCCA.png','https://i.imgur.com/rk63bh5.png',NULL,NULL),
	(43,'2017','2017-10-06','Magee','Win',42,28,'home',19,'https://i.imgur.com/kaC1krK.png','https://i.imgur.com/EDfLil2.png',NULL,NULL),
	(44,'2017','2017-09-29','Crystal Springs','Loss',27,28,'road',18,'https://i.imgur.com/FTjgCCA.png','https://i.imgur.com/hs0q2xY.png',NULL,NULL),
	(45,'2017','2017-09-22','Mendenhall','Loss',27,38,'home',14,'https://i.imgur.com/rAEV27N.png','https://i.imgur.com/EDfLil2.png',NULL,NULL),
	(46,'2017','2017-09-15','Seminary','Loss',7,23,'road',17,'https://i.imgur.com/FTjgCCA.png','https://i.imgur.com/OEYEP3p.png',NULL,NULL),
	(47,'2017','2017-09-08','West Marion','Loss',21,26,'home',14,'https://i.imgur.com/XekI7bj.png','https://i.imgur.com/EDfLil2.png',NULL,NULL),
	(48,'2017','2017-09-01','Lawrence County','Loss',22,32,'home',15,'https://i.imgur.com/54ghB2D.png','https://i.imgur.com/EDfLil2.png',NULL,NULL),
	(49,'2017','2017-08-25','Taylorsville','Loss',22,40,'home',13,'https://i.imgur.com/tmhdMxJ.png','https://i.imgur.com/EDfLil2.png',NULL,NULL),
	(50,'2017','2017-08-18','Mize','Win',20,0,'road',16,'https://i.imgur.com/FTjgCCA.png','https://i.imgur.com/nSPM6Fx.png',NULL,NULL),
	(51,'2016','2016-11-25','Kemper County','Loss',20,28,'playoffsSouthState',21,'https://i.imgur.com/JxXw851.png','https://i.imgur.com/ljT6Ibs.png',NULL,NULL),
	(52,'2016','2016-11-18','Hazlehurst','Win',42,22,'playoffsThirdRound',20,'https://i.imgur.com/aSe6lji.png','https://i.imgur.com/iuOlw0X.png',NULL,NULL),
	(53,'2016','2016-11-11','Tylertown','Win',36,7,'playoffsSecondRound',21,'https://i.imgur.com/JxXw851.png','https://i.imgur.com/bIgvQpd.png',NULL,NULL),
	(54,'2016','2016-11-04','Philadelphia','Win',26,21,'playoffsFirstRound',20,'https://i.imgur.com/fqCEraC.png','https://i.imgur.com/iuOlw0X.png',NULL,NULL),
	(55,'2016','2016-10-28','Morton','Loss',46,47,'road',21,'https://i.imgur.com/JxXw851.png','https://i.imgur.com/XvgAnLI.png',NULL,NULL),
	(56,'2016','2016-10-21','St. Andrew\'s','Win',52,50,'home',20,'https://i.imgur.com/rgowPFF.png','https://i.imgur.com/iuOlw0X.png',NULL,NULL),
	(57,'2016','2016-10-14','McLaurin','Win',46,7,'home',20,'https://i.imgur.com/PvybwiS.png','https://i.imgur.com/iuOlw0X.png',NULL,NULL),
	(58,'2016','2016-10-07','Magee','Win',66,38,'road',21,'https://i.imgur.com/JxXw851.png','https://i.imgur.com/ROv6mKW.png',NULL,NULL),
	(59,'2016','2016-09-30','Crystal Springs','Win',48,6,'home',20,'https://i.imgur.com/Q6rOCur.png','https://i.imgur.com/iuOlw0X.png',NULL,NULL),
	(60,'2016','2016-09-23','Bay Springs','Win',22,14,'road',21,'https://i.imgur.com/JxXw851.png','https://i.imgur.com/F0XNoDO.png',NULL,NULL),
	(61,'2016','2016-09-16','Seminary','Win',38,20,'home',20,'https://i.imgur.com/mziLbGR.png','https://i.imgur.com/iuOlw0X.png',NULL,NULL),
	(62,'2016','2016-09-08','Taylorsville','Win',56,15,'road',20,'https://i.imgur.com/JxXw851.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(63,'2016','2016-09-02','Mize','Win',52,6,'home',20,'https://i.imgur.com/eohgtCI.png','https://i.imgur.com/iuOlw0X.png',NULL,NULL),
	(64,'2016','2016-08-26','Newton','Win',56,6,'home',20,'https://i.imgur.com/xcDusen.png','https://i.imgur.com/iuOlw0X.png',NULL,NULL),
	(65,'2016','2016-08-19','Puckett','Win',46,18,'road',21,'https://i.imgur.com/JxXw851.png','https://i.imgur.com/xuxdLRi.png',NULL,NULL),
	(66,'2015','2015-11-13','West Marion','Loss',30,36,'playoffsSecondRound',20,'https://i.imgur.com/XekI7bj.png','https://i.imgur.com/iuOlw0X.png',NULL,NULL),
	(67,'2015','2015-11-05','Jefferson County','Win',62,32,'playoffsFirstRound',20,'https://i.imgur.com/xipzroG.png','https://i.imgur.com/iuOlw0X.png',NULL,NULL),
	(68,'2015','2015-10-30','Morton','Win',34,29,'home',20,'https://i.imgur.com/rHg0bi8.png','https://i.imgur.com/iuOlw0X.png',NULL,NULL),
	(69,'2015','2015-10-23','St. Andrew\'s','Win',56,3,'road',21,'https://i.imgur.com/JxXw851.png','https://i.imgur.com/7meM7Ft.png',NULL,NULL),
	(70,'2015','2015-10-16','McLaurin','Win',46,9,'road',21,'https://i.imgur.com/JxXw851.png','https://i.imgur.com/DHxcH1p.png',NULL,NULL),
	(71,'2015','2015-10-09','Magee','Win',38,28,'home',20,'https://i.imgur.com/UvFtUaE.png','https://i.imgur.com/iuOlw0X.png',NULL,NULL),
	(72,'2015','2015-10-02','Crystal Springs','Win',54,7,'road',21,'https://i.imgur.com/JxXw851.png','https://i.imgur.com/HUFvauF.png',NULL,NULL),
	(73,'2015','2015-09-25','Bay Springs','Win',34,22,'home',20,'https://i.imgur.com/Y4WnkvI.png','https://i.imgur.com/iuOlw0X.png',NULL,NULL),
	(74,'2015','2015-09-18','Seminary','Loss',34,40,'road',21,'https://i.imgur.com/JxXw851.png','https://i.imgur.com/OEYEP3p.png',NULL,NULL),
	(75,'2015','2015-09-10','Taylorsville','Loss',56,62,'home',20,'https://i.imgur.com/tmhdMxJ.png','https://i.imgur.com/iuOlw0X.png',NULL,NULL),
	(76,'2015','2015-09-04','Mize','Win',50,26,'road',21,'https://i.imgur.com/JxXw851.png','https://i.imgur.com/WgrQ7fD.png',NULL,NULL),
	(77,'2015','2015-08-28','Newton','Win',47,18,'road',21,'https://i.imgur.com/JxXw851.png','https://i.imgur.com/9sQJIv0.png',NULL,NULL),
	(78,'2015','2015-08-20','Puckett','Win',58,42,'home',20,'https://i.imgur.com/0bLFZ1z.png','https://i.imgur.com/iuOlw0X.png',NULL,NULL),
	(79,'2014','2014-11-14','Collins','Loss',0,48,'playoffsSecondRound',22,'https://i.imgur.com/cBtXMBF.png','https://i.imgur.com/iuOlw0X.png',NULL,NULL),
	(80,'2014','2014-11-07','Hazlehurst','Win',52,20,'playoffsFirstRound',24,'https://i.imgur.com/JxXw851.png','https://i.imgur.com/fBwx17p.png',NULL,NULL),
	(81,'2014','2014-10-31','SE Lauderdale','Win',24,21,'road',25,'https://i.imgur.com/JxXw851.png','https://i.imgur.com/0Hu449B.png',NULL,NULL),
	(82,'2014','2014-10-24','Choctaw Central','Win',58,26,'home',23,'https://i.imgur.com/TUlCpt1.png','https://i.imgur.com/iuOlw0X.png',NULL,NULL),
	(83,'2014','2014-10-17','Forest','Win',27,13,'road',25,'https://i.imgur.com/JxXw851.png','https://i.imgur.com/VaWmUBx.png',NULL,NULL),
	(84,'2014','2014-10-10','Philadelphia','Loss',26,27,'road',24,'https://i.imgur.com/JxXw851.png','https://i.imgur.com/nSH09q0.png',NULL,NULL),
	(85,'2014','2014-10-03','Choctaw County','Loss',14,28,'home',23,'https://i.imgur.com/3JLiaIO.png','https://i.imgur.com/iuOlw0X.png',NULL,NULL),
	(86,'2014','2014-09-26','West Marion','Loss',23,24,'home',22,'https://i.imgur.com/XekI7bj.png','https://i.imgur.com/iuOlw0X.png',NULL,NULL),
	(87,'2014','2014-09-19','Enterprise Clarke','Win',42,40,'road',25,'https://i.imgur.com/JxXw851.png','https://i.imgur.com/CjdHWQB.png',NULL,NULL),
	(88,'2014','2014-09-12','Taylorsville','Loss',14,34,'road',25,'https://i.imgur.com/JxXw851.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(89,'2014','2014-09-05','Mize','Loss',14,25,'home',22,'https://i.imgur.com/XGhqgxO.png','https://i.imgur.com/iuOlw0X.png',NULL,NULL),
	(90,'2014','2014-08-29','Newton','Win',35,3,'home',23,'https://i.imgur.com/WoABrYf.png','https://i.imgur.com/iuOlw0X.png',NULL,NULL),
	(91,'2014','2014-09-22','Poplarville','Loss',6,31,'road',24,'https://i.imgur.com/JxXw851.png','https://i.imgur.com/CqPZ8qH.png',NULL,NULL),
	(92,'2013','2013-11-01','SE Lauderdale','Loss',25,28,'home',28,'https://i.imgur.com/e1ZPbns.png','https://i.imgur.com/eP6p7dq.png',NULL,NULL),
	(93,'2013','2013-10-25','Choctaw Central','Win',34,16,'road',29,'https://i.imgur.com/Q5hhw5T.png','https://i.imgur.com/3GgqO9K.png',NULL,NULL),
	(94,'2013','2013-10-18','Forest','Loss',0,48,'home',26,'https://i.imgur.com/gdDz0Tk.png','https://i.imgur.com/eP6p7dq.png',NULL,NULL),
	(95,'2013','2013-10-11','Philadelphia','Loss',7,48,'home',27,'https://i.imgur.com/Enp30LT.png','https://i.imgur.com/eP6p7dq.png',NULL,NULL),
	(96,'2013','2013-10-04','Choctaw County','Loss',25,49,'road',31,'https://i.imgur.com/Q5hhw5T.png','https://i.imgur.com/itMqi2l.png',NULL,NULL),
	(97,'2013','2013-09-27','West Marion','Win',31,28,'road',31,'https://i.imgur.com/Q5hhw5T.png','https://i.imgur.com/tWv8Pyb.png',NULL,NULL),
	(98,'2013','2013-09-20','Enterprise Clarke','Win',39,15,'home',28,'https://i.imgur.com/zziP7f8.png','https://i.imgur.com/eP6p7dq.png',NULL,NULL),
	(99,'2013','2013-09-13','Taylorsville','Loss',12,44,'home',26,'https://i.imgur.com/tmhdMxJ.png','https://i.imgur.com/eP6p7dq.png',NULL,NULL),
	(100,'2013','2013-09-06','Mize','Loss',14,28,'road',30,'https://i.imgur.com/Q5hhw5T.png','https://i.imgur.com/WgrQ7fD.png',NULL,NULL),
	(101,'2013','2013-08-30','Newton','Win',0,27,'road',30,'https://i.imgur.com/Q5hhw5T.png','https://i.imgur.com/9sQJIv0.png',NULL,NULL),
	(102,'2013','2013-08-23','Poplarville','Loss',12,24,'home',26,'https://i.imgur.com/TI5qVpc.png','https://i.imgur.com/eP6p7dq.png',NULL,NULL),
	(103,'2012','2012-11-02','Hazlehurst','Loss',7,47,'playoffsFirstRound',34,'https://i.imgur.com/Q5hhw5T.png','https://i.imgur.com/Un0ZRPA.png',NULL,NULL),
	(104,'2012','2012-10-26','Madison LA','Win',55,32,'home',32,'https://i.imgur.com/5JJH1v7.png','https://i.imgur.com/eP6p7dq.png',NULL,NULL),
	(105,'2012','2012-10-19','Morton','Loss',13,45,'road',34,'https://i.imgur.com/Q5hhw5T.png','https://i.imgur.com/ur6wAgg.png',NULL,NULL),
	(106,'2012','2012-10-12','St. Andrew\'s','Win',37,21,'home',26,'https://i.imgur.com/AHA18rf.png','https://i.imgur.com/eP6p7dq.png',NULL,NULL),
	(107,'2012','2012-10-05','McLaurin','Loss',14,21,'home',26,'https://i.imgur.com/FJtBQW9.png','https://i.imgur.com/eP6p7dq.png',NULL,NULL),
	(108,'2012','2012-09-28','Forest','Loss',0,35,'road',34,'https://i.imgur.com/Q5hhw5T.png','https://i.imgur.com/VaWmUBx.png',NULL,NULL),
	(109,'2012','2012-09-21','Northeast Jones','Loss',8,31,'home',32,'https://i.imgur.com/BYsQvQh.png','https://i.imgur.com/eP6p7dq.png',NULL,NULL),
	(110,'2012','2012-09-14','Mize','Loss',8,31,'home',26,'https://i.imgur.com/CK20pzU.png','https://i.imgur.com/eP6p7dq.png',NULL,NULL),
	(111,'2012','2012-09-07','Taylorsville','Loss',0,59,'road',33,'https://i.imgur.com/Q5hhw5T.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(112,'2012','2012-09-01','Bay Springs','Loss',0,40,'road',33,'https://i.imgur.com/Q5hhw5T.png','https://i.imgur.com/ggvZo9F.png',NULL,NULL),
	(113,'2012','2012-08-17','Puckett','Win',36,14,'road',33,'https://i.imgur.com/Q5hhw5T.png','https://i.imgur.com/7mihGqe.png',NULL,NULL),
	(114,'2011','2011-11-04','West Marion','Loss',20,36,'playoffsFirstRound',38,'https://i.imgur.com/CBttOtD.png','https://i.imgur.com/tWv8Pyb.png',NULL,NULL),
	(115,'2011','2011-10-27','Bailey Magnet','Win',49,0,'road',38,'https://i.imgur.com/CBttOtD.png','https://i.imgur.com/PotZJIS.png',NULL,NULL),
	(116,'2011','2011-10-21','Morton','Loss',12,32,'home',36,'https://i.imgur.com/7ML8Mec.png','https://i.imgur.com/IlDl9AQ.png',NULL,NULL),
	(117,'2011','2011-10-14','St. Andrew\'s','Win',47,6,'road',38,'https://i.imgur.com/CBttOtD.png','https://i.imgur.com/SfvMwFE.png',NULL,NULL),
	(118,'2011','2011-10-07','McLaurin','Win',31,6,'road',38,'https://i.imgur.com/CBttOtD.png','https://i.imgur.com/A44Em1r.png',NULL,NULL),
	(119,'2011','2011-09-30','Forest','Loss',13,44,'home',35,'https://i.imgur.com/gdDz0Tk.png','https://i.imgur.com/IlDl9AQ.png',NULL,NULL),
	(120,'2011','2011-09-23','Northeast Jones','Loss',34,53,'road',37,'https://i.imgur.com/CBttOtD.png','https://i.imgur.com/17B5TMt.png',NULL,NULL),
	(121,'2011','2011-09-16','Mize','Win',21,20,'road',37,'https://i.imgur.com/CBttOtD.png','https://i.imgur.com/68zCPAD.png',NULL,NULL),
	(122,'2011','2011-09-09','Taylorsville','Loss',20,51,'home',35,'https://i.imgur.com/LVk0znj.png','https://i.imgur.com/IlDl9AQ.png',NULL,NULL),
	(123,'2011','2011-09-02','Bay Springs','Loss',26,31,'home',35,'https://i.imgur.com/quaDql3.png','https://i.imgur.com/IlDl9AQ.png',NULL,NULL),
	(124,'2011','2011-08-19','Puckett','Win',47,13,'home',35,'https://i.imgur.com/IHnp7JU.png','https://i.imgur.com/IlDl9AQ.png',NULL,NULL);

/*!40000 ALTER TABLE `game` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table helmet
# ------------------------------------------------------------

DROP TABLE IF EXISTS `helmet`;

CREATE TABLE `helmet` (
  `helmetID` int(11) NOT NULL AUTO_INCREMENT,
  `hColor` varchar(30) DEFAULT NULL,
  `hName` varchar(50) DEFAULT NULL,
  `hImage` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`helmetID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

LOCK TABLES `helmet` WRITE;
/*!40000 ALTER TABLE `helmet` DISABLE KEYS */;

INSERT INTO `helmet` (`helmetID`, `hColor`, `hName`, `hImage`)
VALUES
	(1,'rhs','1995 rhs helmet','https://i.imgur.com/buoIMdF.png'),
	(2,'rhs','2011 rhs helmet','https://i.imgur.com/jS7451S.png'),
	(3,'lion','2012 lion helmet','https://i.imgur.com/ElYCmkg.png'),
	(4,'number','2014 number helmet','https://i.imgur.com/HeuZRcB.png'),
	(5,'lion','2017 lion helmet','https://i.imgur.com/2M363Bv.png'),
	(6,'rhs','2020 rhs helmet','https://i.imgur.com/r10Sk5o.png');

/*!40000 ALTER TABLE `helmet` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table jersey
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jersey`;

CREATE TABLE `jersey` (
  `jerseyID` int(11) NOT NULL AUTO_INCREMENT,
  `jColor` varchar(30) DEFAULT NULL,
  `jName` varchar(50) DEFAULT NULL,
  `jImage` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`jerseyID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

LOCK TABLES `jersey` WRITE;
/*!40000 ALTER TABLE `jersey` DISABLE KEYS */;

INSERT INTO `jersey` (`jerseyID`, `jColor`, `jName`, `jImage`)
VALUES
	(1,'maroon','1995 maroon jersey','https://i.imgur.com/skewTD2.png'),
	(2,'maroon','2011 maroon jersey','https://i.imgur.com/ILdrtmT.png'),
	(3,'white','2011 white jersey','https://i.imgur.com/q7KL8Ub.png'),
	(4,'dark gray','2013 dark gray jersey','https://i.imgur.com/uC7ihR5.png'),
	(5,'white','2013 white jersey','https://i.imgur.com/MpyJ9k1.png'),
	(6,'maroon','2015 maroon jersey','https://i.imgur.com/bTwHIlr.png'),
	(7,'maroon','2018 maroon jersey','https://i.imgur.com/iOu7FFZ.png'),
	(8,'white','2018 white jersey','https://i.imgur.com/8s2wygk.png'),
	(9,'black','2018 black jersey','https://i.imgur.com/ptWLcLN.png'),
	(10,'maroon','2021 maroon jersey','https://i.imgur.com/Rxnbyp5.png'),
	(11,'white','2021 white jersey','https://i.imgur.com/IRIcG4n.png');

/*!40000 ALTER TABLE `jersey` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table opponent
# ------------------------------------------------------------

DROP TABLE IF EXISTS `opponent`;

CREATE TABLE `opponent` (
  `opponentName` varchar(30) NOT NULL,
  `conference` varchar(30) DEFAULT NULL,
  `colorA` varchar(30) DEFAULT NULL,
  `colorB` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`opponentName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `opponent` WRITE;
/*!40000 ALTER TABLE `opponent` DISABLE KEYS */;

INSERT INTO `opponent` (`opponentName`, `conference`, `colorA`, `colorB`)
VALUES
	('Amory','3A North','black','#c0a55d'),
	('Bailey Magnet','Defunct','black','#a4a4a4'),
	('Bay Springs','1A','#ffae00','#002f88'),
	('Choctaw Central','4A','#2f050b','white'),
	('Choctaw County','2A','#151f46','#d71521'),
	('Collins','2A','#0f8552','white'),
	('Crystal Springs','6-3A','#034590','#ffb922'),
	('Enterprise Clarke','5-3A','black','white'),
	('Forest','5-3A','#a3131b','#0051a6'),
	('Hazlehurst','6-3A','#330a12','white'),
	('Jeff Davis Co.','8-3A','#1149b0','#a19d9b'),
	('Jefferson County','7-3A','#094e9c','#feb904'),
	('Kemper County','2A','#feb904','#1b349a'),
	('Lawrence County','4A','black','#911e30'),
	('Madison LA','Out of State','#0048a9','#ffaa41'),
	('Magee','6-3A','#aaa9a9','#b91c25'),
	('McLaurin','6-3A','#0b3622','white'),
	('Mendenhall','4A','#b5914c','black'),
	('Mize','2A','#002a8c','#ffae00'),
	('Morton','5-3A','#0f1a43','#c49d51'),
	('MRA','MAIS','#12225c','#ad152b'),
	('Newton','2A','#06479f','white'),
	('Newton County','4A','#e94302','white'),
	('Northeast Jones','4A','black','#e9af10'),
	('Philadelphia','2A','#b80014','white'),
	('Poplarville','4A','#b48c41','#004833'),
	('Puckett','2A','#3e040d','#aaa9a9'),
	('Scott Central','2A','#0c468d','#ea0101'),
	('SE Lauderdale','5-3A','#1b37a3','white'),
	('Seminary','8-3A','#b91c25','white'),
	('St. Andrew\'s','3A Independent','#0f1a43','#c4c4c4'),
	('Taylorsville','1A','#068b48','#ffa800'),
	('Tylertown','7-3A','#00338c','#d0a83b'),
	('Velma Jackson','2A','#1b37a3','#ffb901'),
	('Wesson','6-3A','#0d4fb5','white'),
	('West Jones','5A','#0e3c27','#b99846'),
	('West Marion','8-3A','#a91929','black'),
	('Yazoo County','3A North','#76abdb','#151f46');

/*!40000 ALTER TABLE `opponent` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pants
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pants`;

CREATE TABLE `pants` (
  `pantsID` int(11) NOT NULL AUTO_INCREMENT,
  `pColor` varchar(30) DEFAULT NULL,
  `pName` varchar(50) DEFAULT NULL,
  `pImage` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pantsID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

LOCK TABLES `pants` WRITE;
/*!40000 ALTER TABLE `pants` DISABLE KEYS */;

INSERT INTO `pants` (`pantsID`, `pColor`, `pName`, `pImage`)
VALUES
	(1,'maroon','maroon pants','https://i.imgur.com/mGzhCug.png'),
	(2,'white','white pants','https://i.imgur.com/7KQVGp6.png'),
	(3,'dark gray','dark gray pants','https://i.imgur.com/E12jOcQ.png'),
	(4,'light gray','light gray pants','https://i.imgur.com/YwNczYD.png'),
	(5,'white','2020 white pants','https://i.imgur.com/IRIcG4n.png'),
	(6,'maroon','2021 maroon pants','https://i.imgur.com/Dp4z93S.png');

/*!40000 ALTER TABLE `pants` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table season
# ------------------------------------------------------------

DROP TABLE IF EXISTS `season`;

CREATE TABLE `season` (
  `yr` year(4) NOT NULL,
  `head_coach` varchar(30) DEFAULT NULL,
  `wins` int(11) DEFAULT NULL,
  `losses` int(11) DEFAULT NULL,
  PRIMARY KEY (`yr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `season` WRITE;
/*!40000 ALTER TABLE `season` DISABLE KEYS */;

INSERT INTO `season` (`yr`, `head_coach`, `wins`, `losses`)
VALUES
	('1995','Durwood Anderson',11,3),
	('2011','Durwood Anderson',5,6),
	('2012','Justin Cooley',2,8),
	('2013','Justin Cooley',4,7),
	('2014','Jeff Stockstill',6,7),
	('2015','Jeff Stockstill',10,3),
	('2016','Jeff Stockstill',13,2),
	('2017','Chad Collums',4,8),
	('2018','Chad Collums',5,8),
	('2019','Chad Collums',6,6),
	('2020','Ryan Higdon',8,3),
	('2021','Ryan Higdon',0,0);

/*!40000 ALTER TABLE `season` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
