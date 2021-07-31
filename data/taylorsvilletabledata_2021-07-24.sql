# ************************************************************
# Sequel Ace SQL dump
# Version 3034
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# Host: ls-ed52acd835d3b04e8df8a962fff8a5e1f827d6c5.camxrlw6o2ww.us-east-1.rds.amazonaws.com (MySQL 5.7.33-log)
# Database: taylorsvilletabledata
# Generation Time: 2021-07-25 01:34:38 +0000
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4;

LOCK TABLES `combination` WRITE;
/*!40000 ALTER TABLE `combination` DISABLE KEYS */;

INSERT INTO `combination` (`comboID`, `helmetID`, `jerseyID`, `pantsID`, `cName`, `cImage`, `cThumb`)
VALUES
	(1,2,2,9,'2019 gold/black/black','https://i.imgur.com/fqdumMb.png','https://i.imgur.com/8VSiUPB.png'),
	(2,2,2,7,'2019 gold/black/gold','https://i.imgur.com/RDbXAdv.png','https://i.imgur.com/31UAk5z.png'),
	(3,2,2,6,'2019 gold/black/green','https://i.imgur.com/ZgVeCnw.png','https://i.imgur.com/q3P6VW6.png'),
	(4,2,3,6,'2019 gold/gray/green','https://i.imgur.com/o64PgsH.png','https://i.imgur.com/LCdnwNM.png'),
	(5,2,4,6,'2019 gold/green/green','https://i.imgur.com/DcsRkJo.png','https://i.imgur.com/Ek7B6D1.png'),
	(6,2,4,5,'2019 gold/green/white','https://i.imgur.com/bK43z6M.png','https://i.imgur.com/99oLhAj.png'),
	(7,2,4,8,'2019 gold/green/gray','https://i.imgur.com/lShrCFR.png','https://i.imgur.com/Iu53G6w.png'),
	(12,2,1,6,'2019 gold/gold/green','https://i.imgur.com/z2c9VW6.png','https://i.imgur.com/UUT5hsf.png'),
	(14,2,3,9,'2019 gold/gray/black','https://i.imgur.com/yZkQI1Q.png','https://i.imgur.com/IfSMcyX.png'),
	(15,2,3,7,'2018 gold/gray/gold','https://i.imgur.com/l6RbZWK.png','https://i.imgur.com/AQbPFA5.png'),
	(16,2,3,6,'2017 gold/gray/green','https://i.imgur.com/aUXmZuD.png','https://i.imgur.com/taR2pTe.png'),
	(17,2,3,8,'2017 gold/gray/gray','https://i.imgur.com/dtsP2Sn.png','https://i.imgur.com/z2tuJ6t.png'),
	(18,2,4,7,'2015 gold/green/gold','https://i.imgur.com/GXcuZ5b.png','https://i.imgur.com/0ZwfSWu.png'),
	(19,2,5,7,'2015 gold/white/gold','https://i.imgur.com/oSeOdPQ.png','https://i.imgur.com/mZiW3hl.png'),
	(20,2,6,7,'2015 gold/gold/gold','https://i.imgur.com/oDVxacY.png','https://i.imgur.com/dzqjyty.png'),
	(21,2,4,6,'2014 gold/green/green','https://i.imgur.com/sswqlo9.png','https://i.imgur.com/1jEzmPi.png'),
	(22,2,5,6,'2014 gold/white/green','https://i.imgur.com/6IBRJ4T.png','https://i.imgur.com/vkx8OJL.png'),
	(23,2,6,6,'2014 gold/gold/green','https://i.imgur.com/ltL5NSY.png','https://i.imgur.com/6IzIO0P.png'),
	(24,2,4,4,'2013 gold/green/gold','https://i.imgur.com/YCESDII.png','https://i.imgur.com/Jke0u16.png'),
	(25,2,4,5,'2013 gold/green/white','https://i.imgur.com/fy0zgDW.png','https://i.imgur.com/Pqwptri.png'),
	(26,2,6,5,'2013 gold/gold/white','https://i.imgur.com/9KIGao8.png','https://i.imgur.com/6qipWwm.png'),
	(27,2,6,2,'2013 gold/gold/green','https://i.imgur.com/Bx4yOlo.png','https://i.imgur.com/vURK3sP.png'),
	(28,2,5,5,'2013 gold/white/white','https://i.imgur.com/RL776gP.png','https://i.imgur.com/UykAf4j.png'),
	(29,2,7,4,'2012 gold/green/gold','https://i.imgur.com/MVKBK7p.png','https://i.imgur.com/OAhmzzX.png'),
	(30,2,7,2,'2012 gold/green/green','https://i.imgur.com/c5kSiqD.png','https://i.imgur.com/gGIZSSo.png'),
	(31,2,6,4,'2012 gold/gold/gold','https://i.imgur.com/T4QWp53.png','https://i.imgur.com/dwpuWjy.png'),
	(32,2,5,4,'2012 gold/white/gold','https://i.imgur.com/3M8XOdW.png','https://i.imgur.com/sIKmCyv.png'),
	(33,2,5,2,'2012 gold/white/green','https://i.imgur.com/b5nDbay.png','https://i.imgur.com/Hs0iUrT.png'),
	(34,2,5,3,'2012 gold/white/white','https://i.imgur.com/S9UAYRn.png','https://i.imgur.com/l0vHzDa.png'),
	(35,3,7,4,'2011 gold/green/gold','https://i.imgur.com/l9kHCEr.png','https://i.imgur.com/kmfaPt1.png'),
	(36,3,8,3,'2011 gold/white/white','https://i.imgur.com/54uxjlF.png','https://i.imgur.com/YOivSFy.png'),
	(37,6,12,1,'1991 gold/green/gold','https://i.imgur.com/KPBLLWF.png','https://i.imgur.com/CIRnCWi.png'),
	(38,5,12,1,'1993 gold/green/gold','https://i.imgur.com/QzqIj2C.png','https://i.imgur.com/zZGm9hv.png'),
	(39,5,13,1,'1994 gold/white/gold','https://i.imgur.com/IcbV77W.png','https://i.imgur.com/pIrqQcv.png'),
	(40,5,12,1,'1995 gold/green/gold','https://i.imgur.com/ChmbPgk.png','https://i.imgur.com/eY0zWyx.png'),
	(41,5,11,1,'1998 gold/white/gold','https://i.imgur.com/bCps42r.png','https://i.imgur.com/bc7wqZ0.png'),
	(42,5,10,1,'2002 gold/gold/gold','https://i.imgur.com/NDLh5oH.png','https://i.imgur.com/R2NvY2z.png'),
	(43,4,9,2,'2007 gold/green/green','https://i.imgur.com/7BtsBUy.png','https://i.imgur.com/8t51fOP.png'),
	(44,2,5,7,'2020 gold/white/gold','https://i.imgur.com/qsq8LjQ.png','https://i.imgur.com/JmOvbcB.png'),
	(45,2,4,7,'2020 gold/green/gold','https://i.imgur.com/AMExx2g.png','https://i.imgur.com/5eDWqTb.png'),
	(46,1,4,9,'2020 black/green/black','https://i.imgur.com/74lPKsS.png','https://i.imgur.com/hXzKCD8.png'),
	(47,2,1,7,'2020 gold/gold/gold','https://i.imgur.com/mWn3txA.png','https://i.imgur.com/SB6CRMj.png'),
	(48,2,5,6,'2020 gold/white/green','https://i.imgur.com/vyTH7zv.png','https://i.imgur.com/AbiGPmm.png'),
	(49,1,4,6,'2020 black/green/green','https://i.imgur.com/2m3CsrQ.png','https://i.imgur.com/A6BjGBw.png'),
	(50,1,2,9,'2020 black/black/black','https://i.imgur.com/N7BJezg.png','https://i.imgur.com/iqvnKRQ.png'),
	(51,2,3,7,'2020 gold/gray/gold','https://i.imgur.com/uCyPO8O.png','https://i.imgur.com/9R9AQAF.png'),
	(52,1,5,9,'2020 black/white/black','https://i.imgur.com/aXNqNMi.png','https://i.imgur.com/28c4fTd.png'),
	(53,2,3,8,'2020 gold/gray/gray','https://i.imgur.com/i7c2IAg.png','https://i.imgur.com/MYScTM3.png'),
	(54,2,1,9,'2020 gold/gold/black','https://i.imgur.com/QE5kByx.png','https://i.imgur.com/c0cK2bT.png'),
	(55,2,5,5,'2020 gold/white/white','https://i.imgur.com/1CFFtk7.png','https://i.imgur.com/8PBCnPj.png'),
	(56,1,5,5,'2020 black/white/white','https://i.imgur.com/4iKA5Tl.png','https://i.imgur.com/oVNGYVk.png');

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
) ENGINE=InnoDB AUTO_INCREMENT=623 DEFAULT CHARSET=utf8mb4;

LOCK TABLES `game` WRITE;
/*!40000 ALTER TABLE `game` DISABLE KEYS */;

INSERT INTO `game` (`gameID`, `yr`, `gameday`, `opponentName`, `result`, `points_for`, `points_against`, `location`, `comboID`, `away_helmet`, `home_helmet`, `article_title`, `article_link`)
VALUES
	(480,'2019','2019-12-07','Northside','Win',49,18,'playoffsStateChampionship',3,'https://i.imgur.com/mBeAWkb.png','https://i.imgur.com/hAiyC4m.png',NULL,NULL),
	(481,'2019','2019-11-29','Scott Central','Win',14,6,'playoffsSouthState',14,'https://i.imgur.com/eU64kXR.png','https://i.imgur.com/hAiyC4m.png',NULL,NULL),
	(482,'2019','2019-11-22','Philadelphia','Win',47,30,'playoffsThirdRound',7,'https://i.imgur.com/Ccmo52x.png','https://i.imgur.com/hAiyC4m.png',NULL,NULL),
	(483,'2019','2019-11-15','Collins','Win',21,8,'playoffsSecondRound',54,'https://i.imgur.com/29bJwwT.png','https://i.imgur.com/cyQsaf3.png',NULL,NULL),
	(484,'2019','2019-11-08','Union','Win',50,12,'playoffsFirstRound',4,'https://i.imgur.com/RDzd60B.png','https://i.imgur.com/hAiyC4m.png',NULL,NULL),
	(485,'2019','2019-11-01','Mize','Win',41,6,'home',2,'https://i.imgur.com/LB1eqZB.png','https://i.imgur.com/hAiyC4m.png',NULL,NULL),
	(486,'2019','2019-10-24','Puckett','Win',47,0,'road',6,'https://i.imgur.com/29bJwwT.png','https://i.imgur.com/DmXhaWU.png',NULL,NULL),
	(487,'2019','2019-10-18','Enterprise Clarke','Win',55,18,'home',47,'https://i.imgur.com/7uYOOEA.png','https://i.imgur.com/hAiyC4m.png',NULL,NULL),
	(488,'2019','2019-10-10','Heidelberg','Win',48,6,'road',48,'https://i.imgur.com/29bJwwT.png','https://i.imgur.com/VhigMZi.png',NULL,NULL),
	(489,'2019','2019-10-03','Bay Springs','Win',42,6,'home',45,'https://i.imgur.com/OBvgxUV.png','https://i.imgur.com/hAiyC4m.png',NULL,NULL),
	(490,'2019','2019-09-27','Jackson Prep','Loss',0,28,'road',55,'https://i.imgur.com/29bJwwT.png','https://i.imgur.com/b837dKw.png',NULL,NULL),
	(491,'2019','2019-09-20','Collins','Win',35,0,'road',53,'https://i.imgur.com/29bJwwT.png','https://i.imgur.com/cyQsaf3.png',NULL,NULL),
	(492,'2019','2019-09-13','Seminary','Win',40,6,'home',5,'https://i.imgur.com/c78MEic.png','https://i.imgur.com/hAiyC4m.png',NULL,NULL),
	(493,'2019','2019-09-05','Jeff Davis Co.','Win',46,14,'home',1,'https://i.imgur.com/nhnnXrO.png','https://i.imgur.com/hAiyC4m.png',NULL,NULL),
	(494,'2019','2019-08-29','Raleigh','Win',36,8,'road',12,'https://i.imgur.com/29bJwwT.png','https://i.imgur.com/58c2DhT.png',NULL,NULL),
	(495,'2019','2019-08-22','Scott Central','Win',32,12,'road',44,'https://i.imgur.com/29bJwwT.png','https://i.imgur.com/qCkMfBN.png',NULL,NULL),
	(496,'2018','2018-12-01','Scott Central','Loss',7,21,'playoffsStateChampionship',28,'https://i.imgur.com/tmhdMxJ.png','https://i.imgur.com/7P0NGnL.png',NULL,NULL),
	(497,'2018','2018-11-23','Bay Springs','Win',15,8,'playoffsSouthState',21,'https://i.imgur.com/sqttUZM.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(498,'2018','2018-11-16','Collins','Win',14,12,'playoffsThirdRound',28,'https://i.imgur.com/tmhdMxJ.png','https://i.imgur.com/0J1aRrZ.png',NULL,NULL),
	(499,'2018','2018-11-09','Pisgah','Win',48,7,'playoffsSecondRound',15,'https://i.imgur.com/O8D7xij.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(500,'2018','2018-11-02','Perry Central','Win',50,0,'playoffsFirstRound',17,'https://i.imgur.com/1REqaq1.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(501,'2018','2018-10-26','Clarkdale','Win',59,7,'home',21,'https://i.imgur.com/WwtB8Wh.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(502,'2018','2018-10-19','Heidelberg','Win',34,0,'road',28,'https://i.imgur.com/tmhdMxJ.png','https://i.imgur.com/uCiR93N.png',NULL,NULL),
	(503,'2018','2018-10-12','Enterprise Clarke','Win',41,6,'road',22,'https://i.imgur.com/tmhdMxJ.png','https://i.imgur.com/9GjjFUu.png',NULL,NULL),
	(504,'2018','2018-10-05','Lumberton','Win',35,9,'road',19,'https://i.imgur.com/tmhdMxJ.png','https://i.imgur.com/FBiwnhA.png',NULL,NULL),
	(505,'2018','2018-09-27','Bay Springs','Win',35,14,'home',17,'https://i.imgur.com/sqttUZM.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(506,'2018','2018-08-17','Northeast Jones','Win',28,25,'road',28,'https://i.imgur.com/tmhdMxJ.png','https://i.imgur.com/yYIcEwU.png',NULL,NULL),
	(507,'2018','2018-08-23','Raleigh','Win',34,12,'home',17,'https://i.imgur.com/FTjgCCA.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(508,'2018','2018-08-31','Mize','Win',41,6,'road',22,'https://i.imgur.com/tmhdMxJ.png','https://i.imgur.com/nSPM6Fx.png',NULL,NULL),
	(509,'2018','2018-09-07','Seminary','Win',33,20,'road',19,'https://i.imgur.com/tmhdMxJ.png','https://i.imgur.com/OEYEP3p.png',NULL,NULL),
	(510,'2018','2018-09-14','Columbia','Win',20,13,'home',21,'https://i.imgur.com/TeT86CE.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(511,'2018','2018-09-21','Perry Central','Win',42,0,'home',18,'https://i.imgur.com/1REqaq1.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(512,'2017','2017-12-01','Winona','Win',41,26,'playoffsStateChampionship',17,'https://i.imgur.com/44hTJlR.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(513,'2017','2017-11-24','Collins','Win',48,32,'playoffsSouthState',17,'https://i.imgur.com/gyKBAt8.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(514,'2017','2017-11-17','North Forrest','Win',49,14,'playoffsThirdRound',28,'https://i.imgur.com/tmhdMxJ.png','https://i.imgur.com/nwIyvXL.png',NULL,NULL),
	(515,'2017','2017-11-10','Perry Central','Win',24,19,'playoffsSecondRound',17,'https://i.imgur.com/1REqaq1.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(516,'2017','2017-11-03','Bogue Chitto','Win',47,7,'playoffsFirstRound',25,'https://i.imgur.com/XCPPxD6.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(517,'2017','2017-09-28','Bay Springs','Win',42,40,'road',17,'https://i.imgur.com/tmhdMxJ.png','https://i.imgur.com/baraTTF.png',NULL,NULL),
	(518,'2017','2017-10-06','Lumberton','Win',48,22,'home',25,'https://i.imgur.com/1Jkhr7c.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(519,'2017','2017-10-13','Enterprise Clarke','Win',40,14,'home',28,'https://i.imgur.com/ooULHsk.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(520,'2017','2017-10-20','Heidelberg','Win',35,24,'home',17,'https://i.imgur.com/KzeXFKO.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(521,'2017','2017-10-27','Clarkdale','Win',34,6,'road',22,'https://i.imgur.com/tmhdMxJ.png','https://i.imgur.com/SRfiYTt.png',NULL,NULL),
	(522,'2017','2017-08-18','Northeast Jones','Win',29,19,'home',18,'https://i.imgur.com/YRX9Sna.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(523,'2017','2017-08-25','Raleigh','Win',40,22,'road',17,'https://i.imgur.com/tmhdMxJ.png','https://i.imgur.com/EDfLil2.png',NULL,NULL),
	(524,'2017','2017-09-01','Mize','Win',21,6,'home',18,'https://i.imgur.com/eohgtCI.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(525,'2017','2017-09-08','Seminary','Win',46,15,'home',16,'https://i.imgur.com/mziLbGR.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(526,'2017','2017-09-15','Columbia','Win',38,21,'road',28,'https://i.imgur.com/tmhdMxJ.png','https://i.imgur.com/fXGhyI6.png',NULL,NULL),
	(527,'2017','2017-09-22','Perry Central','Loss',7,26,'road',19,'https://i.imgur.com/tmhdMxJ.png','https://i.imgur.com/3XUp8xY.png',NULL,NULL),
	(528,'2016','2016-11-04','Prentiss','Loss',12,28,'playoffsFirstRound',25,'https://i.imgur.com/byfkozu.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(529,'2016','2016-10-28','Richton','Win',42,6,'home',25,'https://i.imgur.com/67b4lsw.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(530,'2016','2016-10-21','North Forrest','Loss',21,27,'road',19,'https://i.imgur.com/tmhdMxJ.png','https://i.imgur.com/nwIyvXL.png',NULL,NULL),
	(531,'2016','2016-10-14','East Marion','Win',40,34,'home',18,'https://i.imgur.com/nvr5baw.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(532,'2016','2016-10-06','Mize','Win',34,8,'road',28,'https://i.imgur.com/tmhdMxJ.png','https://i.imgur.com/nSPM6Fx.png',NULL,NULL),
	(533,'2016','2016-08-18','Bay Springs','Loss',13,42,'road',18,'https://i.imgur.com/tmhdMxJ.png','https://i.imgur.com/F0XNoDO.png',NULL,NULL),
	(534,'2016','2016-08-26','Bay St. Louis','Win',44,18,'road',19,'https://i.imgur.com/tmhdMxJ.png','https://i.imgur.com/yj8Gih8.png',NULL,NULL),
	(535,'2016','2016-09-02','MRA','Loss',6,37,'home',18,'https://i.imgur.com/6OQ7jHg.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(536,'2016','2016-09-08','Raleigh','Loss',15,56,'home',28,'https://i.imgur.com/KjcDtEp.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(537,'2016','2016-09-16','Collins','Loss',27,50,'road',28,'https://i.imgur.com/tmhdMxJ.png','https://i.imgur.com/0J1aRrZ.png',NULL,NULL),
	(538,'2016','2016-09-23','Northeast Jones','Loss',14,28,'road',19,'https://i.imgur.com/tmhdMxJ.png','https://i.imgur.com/yYIcEwU.png',NULL,NULL),
	(539,'2015','2015-11-20','Bassfield','Loss',13,42,'playoffsThirdRound',23,'https://i.imgur.com/PwDUtav.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(540,'2015','2015-11-13','Puckett','Win',27,24,'playoffsSecondRound',28,'https://i.imgur.com/tmhdMxJ.png','https://i.imgur.com/ujGPqxB.png',NULL,NULL),
	(541,'2015','2015-11-06','Enterprise Clarke','Win',50,44,'playoffsFirstRound',23,'https://i.imgur.com/zziP7f8.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(542,'2015','2015-10-30','Richton','Win',55,42,'road',22,'https://i.imgur.com/tmhdMxJ.png','https://i.imgur.com/pU2B67Y.png',NULL,NULL),
	(543,'2015','2015-10-23','North Forrest','Win',15,14,'home',18,'https://i.imgur.com/4FwIHZZ.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(544,'2015','2015-10-16','East Marion','Win',47,19,'road',28,'https://i.imgur.com/tmhdMxJ.png','https://i.imgur.com/uvFNGRk.png',NULL,NULL),
	(545,'2015','2015-10-08','Mize','Loss',27,36,'home',20,'https://i.imgur.com/XGhqgxO.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(546,'2015','2015-09-25','Northeast Jones','Loss',14,36,'home',25,'https://i.imgur.com/YRX9Sna.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(547,'2015','2015-09-18','Collins','Loss',20,56,'home',18,'https://i.imgur.com/eIIZyIL.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(548,'2015','2015-09-10','Raleigh','Win',62,56,'road',23,'https://i.imgur.com/tmhdMxJ.png','https://i.imgur.com/0kogYjZ.png',NULL,NULL),
	(549,'2015','2015-09-04','MRA','Loss',30,56,'road',19,'https://i.imgur.com/tmhdMxJ.png','https://i.imgur.com/VtHLYm0.png',NULL,NULL),
	(550,'2015','2015-08-28','Bay St. Louis','Win',39,15,'home',26,'https://i.imgur.com/KR2tuDH.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(551,'2015','2015-08-20','Bay Springs','Loss',7,26,'road',21,'https://i.imgur.com/tmhdMxJ.png','https://i.imgur.com/F0XNoDO.png',NULL,NULL),
	(552,'2014','2014-11-21','Bassfield','Loss',27,60,'playoffsThirdRound',28,'https://i.imgur.com/tmhdMxJ.png','https://i.imgur.com/Abk9IGq.png',NULL,NULL),
	(553,'2014','2014-11-14','Union','Win',41,6,'playoffsSecondRound',25,'https://i.imgur.com/s9Ldd2j.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(554,'2014','2014-11-07','Madison St. Joe','Win',54,7,'playoffsFirstRound',23,'https://i.imgur.com/QesudF8.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(555,'2014','2014-10-31','Mize','Win',40,0,'road',28,'https://i.imgur.com/tmhdMxJ.png','https://i.imgur.com/WgrQ7fD.png',NULL,NULL),
	(556,'2014','2014-10-24','Heidelberg','Win',32,0,'road',22,'https://i.imgur.com/tmhdMxJ.png','https://i.imgur.com/Y3PpZKx.png',NULL,NULL),
	(557,'2014','2014-10-17','Bay Springs','Win',59,47,'home',24,'https://i.imgur.com/uM5PotB.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(558,'2014','2014-10-10','Richton','Win',43,6,'road',23,'https://i.imgur.com/tmhdMxJ.png','https://i.imgur.com/socHlYK.png',NULL,NULL),
	(559,'2014','2014-10-03','North Forrest','Win',53,0,'home',25,'https://i.imgur.com/4FwIHZZ.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(560,'2014','2014-08-22','Collins','Win',19,12,'road',32,'https://i.imgur.com/tmhdMxJ.png','https://i.imgur.com/YOR4Lma.png',NULL,NULL),
	(561,'2014','2014-08-29','Hazlehurst','Win',51,12,'home',21,'https://i.imgur.com/ErOrTDY.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(562,'2014','2014-09-05','MRA','Win',14,6,'road',28,'https://i.imgur.com/tmhdMxJ.png','https://i.imgur.com/VtHLYm0.png',NULL,NULL),
	(563,'2014','2014-09-12','Raleigh','Win',34,14,'home',31,'https://i.imgur.com/KjcDtEp.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(564,'2014','2014-09-19','Quitman','Loss',26,27,'home',24,'https://i.imgur.com/quMy9WY.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(565,'2014','2014-09-26','East Marion','Win',32,26,'road',22,'https://i.imgur.com/tmhdMxJ.png','https://i.imgur.com/uzE0iIb.png',NULL,NULL),
	(566,'2013','2013-11-22','Bassfield','Loss',14,51,'playoffsThirdRound',24,'https://i.imgur.com/PwDUtav.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(567,'2013','2013-11-15','Scott Central','Win',35,6,'playoffsSecondRound',33,'https://i.imgur.com/tmhdMxJ.png','https://i.imgur.com/g5BlJ0B.png',NULL,NULL),
	(568,'2013','2013-11-08','Loyd Star','Win',47,14,'playoffsFirstRound',26,'https://i.imgur.com/y0pFq9W.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(569,'2013','2013-11-01','Mize','Win',46,10,'home',24,'https://i.imgur.com/XGhqgxO.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(570,'2013','2013-10-25','Heidelberg','Win',37,6,'home',26,'https://i.imgur.com/sv9LE4E.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(571,'2013','2013-10-18','Bay Springs','Win',55,20,'road',32,'https://i.imgur.com/tmhdMxJ.png','https://i.imgur.com/lkOzrDz.png',NULL,NULL),
	(572,'2013','2013-10-11','Richton','Win',36,0,'home',25,'https://i.imgur.com/iWWnSMb.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(573,'2013','2013-10-04','North Forrest','Win',41,7,'road',26,'https://i.imgur.com/tmhdMxJ.png','https://i.imgur.com/SLSgDE0.png',NULL,NULL),
	(574,'2013','2013-08-23','Collins','Win',21,10,'home',24,'https://i.imgur.com/cBtXMBF.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(575,'2013','2013-08-30','Hazlehurst','Loss',10,13,'road',28,'https://i.imgur.com/tmhdMxJ.png','https://i.imgur.com/Un0ZRPA.png',NULL,NULL),
	(576,'2013','2013-09-06','MRA','Win',26,0,'home',24,'https://i.imgur.com/6BkUhl5.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(577,'2013','2013-09-13','Raleigh','Win',44,12,'road',27,'https://i.imgur.com/tmhdMxJ.png','https://i.imgur.com/eP6p7dq.png',NULL,NULL),
	(578,'2013','2013-09-20','Quitman','Win',20,9,'road',33,'https://i.imgur.com/tmhdMxJ.png','https://i.imgur.com/hpZFOWo.png',NULL,NULL),
	(579,'2013','2013-09-27','East Marion','Loss',15,20,'home',24,'https://i.imgur.com/BUE18eZ.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(580,'2012','2012-11-16','East Marion','Loss',34,48,'playoffsThirdRound',31,'https://i.imgur.com/BUE18eZ.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(581,'2012','2012-11-09','Lumberton','Win',42,6,'playoffsSecondRound',31,'https://i.imgur.com/tmhdMxJ.png','https://i.imgur.com/8B005dr.png',NULL,NULL),
	(582,'2012','2012-11-02','Puckett','Win',52,6,'playoffsFirstRound',30,'https://i.imgur.com/IHnp7JU.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(583,'2012','2012-10-26','Bay Springs','Win',39,13,'home',31,'https://i.imgur.com/quaDql3.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(584,'2012','2012-10-19','Enterprise Clarke','Win',50,0,'road',33,'https://i.imgur.com/tmhdMxJ.png','https://i.imgur.com/CjdHWQB.png',NULL,NULL),
	(585,'2012','2012-10-12','Bassfield','Loss',14,46,'road',32,'https://i.imgur.com/tmhdMxJ.png','https://i.imgur.com/Abk9IGq.png',NULL,NULL),
	(586,'2012','2012-10-05','Mize','Win',26,7,'home',30,'https://i.imgur.com/CK20pzU.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(587,'2012','2012-09-28','Clarkdale','Win',45,0,'road',34,'https://i.imgur.com/tmhdMxJ.png','https://i.imgur.com/3UsEHcH.png',NULL,NULL),
	(588,'2012','2012-09-21','Seminary','Win',32,6,'road',32,'https://i.imgur.com/tmhdMxJ.png','https://i.imgur.com/OEYEP3p.png',NULL,NULL),
	(589,'2012','2012-09-14','Greene County','Win',32,20,'home',30,'https://i.imgur.com/QesudF8.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(590,'2012','2012-09-07','Raleigh','Win',59,0,'home',30,'https://i.imgur.com/Q5hhw5T.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(591,'2012','2012-09-01','Collins','Win',38,6,'neutral',34,'https://i.imgur.com/tmhdMxJ.png','https://i.imgur.com/YOR4Lma.png',NULL,NULL),
	(592,'2012','2012-08-24','Prentiss','Win',41,0,'home',29,'https://i.imgur.com/byfkozu.png','https://i.imgur.com/cZNzsir.png',NULL,NULL),
	(593,'2011','2011-11-11','North Forrest','Loss',19,21,'playoffsSecondRound',36,'https://i.imgur.com/LVk0znj.png','https://i.imgur.com/SLSgDE0.png',NULL,NULL),
	(594,'2011','2011-11-04','Leake County','Win',39,0,'playoffsFirstRound',35,'https://i.imgur.com/xonkrGM.png','https://i.imgur.com/xxHW3H3.png',NULL,NULL),
	(595,'2011','2011-10-28','Bay Springs','Win',50,25,'road',36,'https://i.imgur.com/LVk0znj.png','https://i.imgur.com/ggvZo9F.png',NULL,NULL),
	(596,'2011','2011-10-21','Enterprise Clarke','Win',48,21,'home',35,'https://i.imgur.com/zziP7f8.png','https://i.imgur.com/xxHW3H3.png',NULL,NULL),
	(597,'2011','2011-10-14','Bassfield','Win',18,0,'home',35,'https://i.imgur.com/PwDUtav.png','https://i.imgur.com/xxHW3H3.png',NULL,NULL),
	(598,'2011','2011-10-07','Mize','Win',37,7,'road',36,'https://i.imgur.com/LVk0znj.png','https://i.imgur.com/68zCPAD.png',NULL,NULL),
	(599,'2011','2011-09-30','Clarkdale','Win',59,3,'home',35,'https://i.imgur.com/HsOsewe.png','https://i.imgur.com/xxHW3H3.png',NULL,NULL),
	(600,'2011','2011-09-23','Seminary','Win',27,14,'home',35,'https://i.imgur.com/mziLbGR.png','https://i.imgur.com/xxHW3H3.png',NULL,NULL),
	(601,'2011','2011-09-16','Greene County','Win',24,14,'road',36,'https://i.imgur.com/LVk0znj.png','https://i.imgur.com/FKol9ab.png',NULL,NULL),
	(602,'2011','2011-09-09','Raleigh','Win',51,20,'road',36,'https://i.imgur.com/LVk0znj.png','https://i.imgur.com/IlDl9AQ.png',NULL,NULL),
	(603,'2011','2011-09-02','Collins','Win',35,7,'home',35,'https://i.imgur.com/zca9MTw.png','https://i.imgur.com/xxHW3H3.png',NULL,NULL),
	(604,'2011','2011-08-26','Prentiss','Win',40,8,'road',36,'https://i.imgur.com/LVk0znj.png','https://i.imgur.com/sWso114.png',NULL,NULL),
	(605,'2007','2007-12-07','West Bolivar','Loss',22,25,'playoffsStateChampionship',43,'https://i.imgur.com/plQCSQR.png','https://i.imgur.com/EGxyXto.png',NULL,NULL),
	(606,'2002','2002-12-07','Eupora','Win',22,19,'playoffsStateChampionship',42,'https://i.imgur.com/TYgph1u.png','https://i.imgur.com/OLqCBw0.png',NULL,NULL),
	(607,'1998','1998-12-04','Booneville','Win',27,7,'playoffsStateChampionship',41,'https://i.imgur.com/TYgph1u.png','https://i.imgur.com/53dI3AZ.png',NULL,NULL),
	(608,'1995','1995-12-01','Calhoun City','Win',35,6,'playoffsStateChampionship',40,'https://i.imgur.com/kgUwZec.png','https://i.imgur.com/ZLfqteu.png',NULL,NULL),
	(609,'1994','1994-12-02','Calhoun City','Win',34,18,'playoffsStateChampionship',39,'https://i.imgur.com/TYgph1u.png','https://i.imgur.com/hpaIAVf.png',NULL,NULL),
	(610,'1993','1993-12-03','Okolona','Loss',7,29,'playoffsStateChampionship',38,'https://i.imgur.com/8MAA6kM.png','https://i.imgur.com/ZLfqteu.png',NULL,NULL),
	(611,'1991','1991-12-06','Bruce','Win',24,14,'playoffsStateChampionship',37,'https://i.imgur.com/tLU4o3D.png','https://i.imgur.com/kso0qj0.png',NULL,NULL),
	(612,'2020','2020-09-11','Seminary','Win',56,42,'road',44,'https://i.imgur.com/29bJwwT.png','https://i.imgur.com/KNdkTAP.png',NULL,NULL),
	(613,'2020','2020-09-18','Mendenhall','Win',41,13,'home',45,'https://i.imgur.com/vJ9B0zm.png','https://i.imgur.com/hAiyC4m.png',NULL,NULL),
	(614,'2020','2020-09-25','Jackson Prep','Win',47,37,'home',46,'https://i.imgur.com/roiSX1s.png','https://i.imgur.com/hSSqQi1.png',NULL,NULL),
	(615,'2020','2020-10-08','West Jones','Loss',21,35,'road',47,'https://i.imgur.com/29bJwwT.png','https://i.imgur.com/FytCXaP.png',NULL,NULL),
	(616,'2020','2020-10-16','Enterprise Clarke','Win',33,28,'road',48,'https://i.imgur.com/29bJwwT.png','https://i.imgur.com/cHoovkD.png',NULL,NULL),
	(617,'2020','2020-10-23','Puckett','Win',48,6,'home',49,'https://i.imgur.com/FMEruIY.png','https://i.imgur.com/hSSqQi1.png',NULL,NULL),
	(618,'2020','2020-11-06','Enterprise Lincoln','Win',55,8,'playoffsFirstRound',51,'https://i.imgur.com/10S0Dx5.png','https://i.imgur.com/hAiyC4m.png',NULL,NULL),
	(619,'2020','2020-11-13','Philadelphia','Win',47,6,'playoffsSecondRound',52,'https://i.imgur.com/x38LS8G.png','https://i.imgur.com/kGDcRMc.png',NULL,NULL),
	(620,'2020','2020-11-20','Union','Win',65,37,'playoffsThirdRound',53,'https://i.imgur.com/RDzd60B.png','https://i.imgur.com/hAiyC4m.png',NULL,NULL),
	(621,'2020','2020-11-27','Enterprise Clarke','Win',40,13,'playoffsSouthState',54,'https://i.imgur.com/7uYOOEA.png','https://i.imgur.com/hAiyC4m.png',NULL,NULL),
	(622,'2020','2020-12-05','Calhoun City','Win',42,0,'playoffsStateChampionship',56,'https://i.imgur.com/x38LS8G.png','https://i.imgur.com/LO8Qo3i.png',NULL,NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

LOCK TABLES `helmet` WRITE;
/*!40000 ALTER TABLE `helmet` DISABLE KEYS */;

INSERT INTO `helmet` (`helmetID`, `hColor`, `hName`, `hImage`)
VALUES
	(1,'black','2020 black helmet','https://i.imgur.com/iMjtcgs.png'),
	(2,'gold','2012 gold helmet','https://i.imgur.com/er1CDpz.png'),
	(3,'gold','2008 gold helmet','https://i.imgur.com/Y1L9rK2.png'),
	(4,'gold','2003 gold helmet','https://i.imgur.com/Sta8dm8.png'),
	(5,'gold','1993 gold helmet','https://i.imgur.com/utojRu3.png'),
	(6,'gold','1991 gold helmet','https://i.imgur.com/Va1gLbE.png');

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

LOCK TABLES `jersey` WRITE;
/*!40000 ALTER TABLE `jersey` DISABLE KEYS */;

INSERT INTO `jersey` (`jerseyID`, `jColor`, `jName`, `jImage`)
VALUES
	(1,'gold','2019 gold jerseys','https://i.imgur.com/YNWMykq.png'),
	(2,'black','2019 black jerseys','https://i.imgur.com/iajBeEU.png'),
	(3,'gray','2017 gray jerseys','https://i.imgur.com/m6OEmI7.png'),
	(4,'green','2013 green jerseys','https://i.imgur.com/dBgUw85.png'),
	(5,'white','2012 white jerseys','https://i.imgur.com/dnV5mG0.png'),
	(6,'gold','2012 gold jerseys','https://i.imgur.com/a9zMr8l.png'),
	(7,'green','2011 green jerseys','https://i.imgur.com/xHMRzGm.png'),
	(8,'white','2011 white jerseys','https://i.imgur.com/ydsCqs1.png'),
	(9,'green','2007 green jerseys','https://i.imgur.com/8URDBvV.png'),
	(10,'gold','2002 gold jerseys','https://i.imgur.com/Vbk04pz.png'),
	(11,'white','1998 white jerseys','https://i.imgur.com/bNwcg0m.png'),
	(12,'green','1993 green jerseys','https://i.imgur.com/fthrZlw.png'),
	(13,'white','1994 white jerseys','https://i.imgur.com/yMenBg1.png');

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
	('Bassfield','Defunct','#b89451','black'),
	('Bay Springs','4-1A','#ffae00','#002f88'),
	('Bay St. Louis','4A','#feb904','#3a4bb3'),
	('Bogue Chitto','2A South','#082e5d','white'),
	('Booneville','3A','#053c8f','#ffba00'),
	('Bruce','2A North','#004a9e','#ffc000'),
	('Calhoun City','2A North','black','#fc3d01'),
	('Clarkdale','3A','#3e040d','white'),
	('Collins','2A South','#0f8552','white'),
	('Columbia','4A','#044fa6','#feb904'),
	('East Marion','2A South','#0f1a43','#b90808'),
	('Enterprise Clarke','3A','black','white'),
	('Enterprise Lincoln','4-1A','#58080f','#fecd07'),
	('Eupora','2A North','#52131e','white'),
	('Greene County','4A','#172147','#a4a7a5'),
	('Hazlehurst','3A','#330a12','white'),
	('Heidelberg','2A South','#0069b3','#f8aa0f'),
	('Jackson Prep','MAIS','#bb1b2e','white'),
	('Jeff Davis Co.','3A','#1149b0','#a19d9b'),
	('Lawrence County','4A','black','#911e30'),
	('Leake County','3-1A','#d44200','white'),
	('Loyd Star','2A South','#d51c39','white'),
	('Lumberton','4-1A','black','#bc092f'),
	('Madison St. Joe','MAIS','#082e5d','#f1c500'),
	('Magee','3A','#aaa9a9','#b91c25'),
	('Mendenhall','4A','#b5914c','black'),
	('Mize','2A South','#002a8c','#ffae00'),
	('Morton','3A','#0f1a43','#c49d51'),
	('Mount Olive','4-1A','#321b4b','#e3a11f'),
	('MRA','MAIS','#12225c','#ad152b'),
	('North Forrest','2A South','#004491','#c20d0d'),
	('Northeast Jones','4A','black','#e9af10'),
	('Northside','2A North','#053c8f','#ff6600'),
	('Okolona','1A North','#400815','white'),
	('Perry Central','3A','#990033','#ffd000'),
	('Philadelphia','2A South','#b80014','white'),
	('Pisgah','2A South','#0b3d2a','white'),
	('Prentiss','Defunct','#bc1024','white'),
	('Puckett','2A South','#3e040d','#aaa9a9'),
	('Quitman','4A','#feb904','#1d3cb1'),
	('Raleigh','3A','#390613','white'),
	('Resurrection','4-1A','#094e9c','white'),
	('Richton','4-1A','#3a0f13','white'),
	('Salem','4-1A','#ffc000','#113825'),
	('Scott Central','2A South','#0c468d','#ea0101'),
	('Seminary','3A','#b91c25','white'),
	('Union','3A','black','#ffba00'),
	('West Bolivar','1A North','#0c2341','#c80909'),
	('West Jones','5A','#0e3c27','#b99846'),
	('Winona','3A','#ad1220','#aaa9a9');

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

LOCK TABLES `pants` WRITE;
/*!40000 ALTER TABLE `pants` DISABLE KEYS */;

INSERT INTO `pants` (`pantsID`, `pColor`, `pName`, `pImage`)
VALUES
	(1,'gold','2002 gold pants','https://i.imgur.com/50LeK1j.png'),
	(2,'green','2007 green pants','https://i.imgur.com/otqQTmF.png'),
	(3,'white','2011 white pants','https://i.imgur.com/SY9mHlq.png'),
	(4,'gold','2011 gold pants','https://i.imgur.com/DMtzIs1.png'),
	(5,'white','2013 white pants','https://i.imgur.com/dnV5mG0.png'),
	(6,'green','2014 green pants','https://i.imgur.com/dBgUw85.png'),
	(7,'gold','2015 gold pants','https://i.imgur.com/a9zMr8l.png'),
	(8,'gray','2017 gray pants','https://i.imgur.com/FMNkkpc.png'),
	(9,'black','2019 black pants','https://i.imgur.com/oEASfeq.png');

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
	('1991','Doug Merchant',13,1),
	('1993','Marcus Boyles',14,1),
	('1994','Marcus Boyles',15,0),
	('1995','Marcus Boyles',15,0),
	('1998','Shannon White',13,2),
	('2002','Shannon White',12,3),
	('2007','Bud Blackledge',13,2),
	('2011','Bud Blackledge',11,1),
	('2012','Matt Caldwell',11,2),
	('2013','Matt Caldwell',11,3),
	('2014','Matt Caldwell',12,2),
	('2015','Matt Caldwell',7,6),
	('2016','Chuck Robertson',4,7),
	('2017','Chuck Robertson',15,1),
	('2018','Mitch Evans',15,1),
	('2019','Mitch Evans',15,1),
	('2020','Mitch Evans',10,1),
	('2021','Jay Blackledge',0,0);

/*!40000 ALTER TABLE `season` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
