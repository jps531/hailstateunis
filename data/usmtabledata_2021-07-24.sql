# ************************************************************
# Sequel Ace SQL dump
# Version 3034
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# Host: ls-ed52acd835d3b04e8df8a962fff8a5e1f827d6c5.camxrlw6o2ww.us-east-1.rds.amazonaws.com (MySQL 5.7.33-log)
# Database: usmtabledata
# Generation Time: 2021-07-25 02:13:09 +0000
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
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4;

LOCK TABLES `combination` WRITE;
/*!40000 ALTER TABLE `combination` DISABLE KEYS */;

INSERT INTO `combination` (`comboID`, `helmetID`, `jerseyID`, `pantsID`, `cName`, `cImage`, `cThumb`)
VALUES
	(1,1,44,1,'2020 2015/blackB/black black/black/black','https://i.imgur.com/GJrqo4E.png','https://i.imgur.com/d9wmjPI.png'),
	(2,2,46,2,'2020 black/heathergray/heathergray','https://i.imgur.com/Sdbj1yB.png','https://i.imgur.com/yDuo5EX.png'),
	(3,3,45,3,'2020 2003/blackA/goldB black/black/gold','https://i.imgur.com/VQkGEtW.png','https://i.imgur.com/nczTxZl.png'),
	(4,3,48,4,'2020 2003/white/white black/white/white','https://i.imgur.com/ocC7US5.png','https://i.imgur.com/d0Am9ao.png'),
	(5,5,5,3,'2019 1980/gold/goldB black/gold/gold','https://i.imgur.com/8qH8PVg.png','https://i.imgur.com/U6jQmzr.png'),
	(6,5,4,5,'2019 1980/white/goldA black/white/gold','https://i.imgur.com/uyWP1l9.png','https://i.imgur.com/fN9QmwT.png'),
	(7,3,4,1,'2019 2003/white/black black/white/black','https://i.imgur.com/axkv5QH.png','https://i.imgur.com/UyPapLf.png'),
	(8,1,1,5,'2019 2015/blackB/goldA black/black/gold','https://i.imgur.com/efvwifz.png','https://i.imgur.com/CPxc7rs.png'),
	(9,1,1,1,'2019 2015/blackB/black black/black/black','https://i.imgur.com/MYqEdDX.png','https://i.imgur.com/Z8WYBbi.png'),
	(10,1,4,1,'2019 2015/white/black black/white/black','https://i.imgur.com/kfcwVeU.png','https://i.imgur.com/kDYguwX.png'),
	(11,3,4,5,'2019 2003/white/goldA black/white/gold','https://i.imgur.com/Ug2RnJE.png','https://i.imgur.com/azaz8Lf.png'),
	(12,4,1,1,'2019 america/blackB/black black/black/black','https://i.imgur.com/4PMbVIP.png','https://i.imgur.com/TAWXCJt.png'),
	(13,4,4,5,'2019 america/white/goldA black/white/gold','https://i.imgur.com/M61ZcSI.png','https://i.imgur.com/ctkbQzM.png'),
	(14,2,2,2,'2019 black/heathergray/heathergray','https://i.imgur.com/ZeGFCkF.png','https://i.imgur.com/oRRPfx8.png'),
	(15,1,4,5,'2019 2015/white/goldA black/white/gold','https://i.imgur.com/y4w2jU9.png','https://i.imgur.com/uHVZzs8.png'),
	(16,4,6,1,'2019 armed forces bowl america/white/black black/white/black','https://i.imgur.com/8TKtuXZ.png','https://i.imgur.com/rPVyKVT.png'),
	(17,7,1,5,'2018 1980/blackB/goldA black/black/gold','https://i.imgur.com/ZSWQfiO.png','https://i.imgur.com/uX2ZIdr.png'),
	(18,3,1,5,'2018 2003/blackB/goldA black/black/gold','https://i.imgur.com/eJzjfDC.png','https://i.imgur.com/wpNoihD.png'),
	(19,3,4,1,'2018 2003/white/black black/white/black','https://i.imgur.com/NeS3awT.png','https://i.imgur.com/Ju8guRi.png'),
	(20,3,4,6,'2018 2003/white/white black/white/white','https://i.imgur.com/JtZZIxa.png','https://i.imgur.com/2xbGHoL.png'),
	(21,1,1,1,'2018 2015/blackB/black black/black/black','https://i.imgur.com/khEfIuU.png','https://i.imgur.com/kknccIA.png'),
	(22,1,4,5,'2018 2015/white/goldA black/white/gold','https://i.imgur.com/mAHyd6H.png','https://i.imgur.com/BMQaYrt.png'),
	(23,6,4,5,'2018 15S/white/goldA black/white/gold','https://i.imgur.com/DMDioYs.png','https://i.imgur.com/TIivjv0.png'),
	(24,4,1,5,'2018 america/blackB/goldA black/black/gold','https://i.imgur.com/cK9HElB.png','https://i.imgur.com/67XctSB.png'),
	(25,8,3,1,'2018 NE/blackA/black black/black/black','https://i.imgur.com/JAXdTid.png','https://i.imgur.com/SA2e1b2.png'),
	(26,7,13,1,'2017 1980/black/black black/black/black','https://i.imgur.com/szt3exd.png','https://i.imgur.com/M5uKMJB.png'),
	(27,9,10,7,'2017 1997/black/oldgold black/black/oldgold','https://i.imgur.com/io3XLmA.png','https://i.imgur.com/3K90C7n.png'),
	(28,3,7,1,'2017 independence bowl 2003/gold/black black/gold/black','https://i.imgur.com/FCj1ynC.png','https://i.imgur.com/0crbmzl.png'),
	(29,3,12,5,'2017 2003/white/gold black/white/gold','https://i.imgur.com/8Mbb2dF.png','https://i.imgur.com/dj8b1zk.png'),
	(30,13,12,4,'2017 03S/white/white black/white/white','https://i.imgur.com/Hh6L4nE.png','https://i.imgur.com/z1dMm6h.png'),
	(31,1,13,5,'2017 2015/black/gold black/black/gold','https://i.imgur.com/QCbIaCJ.png','https://i.imgur.com/ubsGrOL.png'),
	(32,1,12,5,'2017 2015/white/gold black/white/gold','https://i.imgur.com/1gFIKyd.png','https://i.imgur.com/XjczgTg.png'),
	(33,1,12,4,'2017 2015/white/white black/white/white','https://i.imgur.com/T4rGsJ4.png','https://i.imgur.com/d88u4Nc.png'),
	(34,12,13,1,'2017 blackout/black/black black/black/black','https://i.imgur.com/mQfnZW3.png','https://i.imgur.com/ZVpBIP8.png'),
	(35,11,13,1,'2017 eagle/black/black black/black/black','https://i.imgur.com/2JmYAuy.png','https://i.imgur.com/c4c7dOS.png'),
	(36,11,11,5,'2017 eagle/gold/gold black/gold/gold','https://i.imgur.com/z8insjv.png','https://i.imgur.com/Xo4Bniv.png'),
	(37,11,12,1,'2017 eagle/white/black black/white/black','https://i.imgur.com/Xc5fqsn.png','https://i.imgur.com/2oO5aGh.png'),
	(38,10,12,1,'2017 EN/white/black black/white/black','https://i.imgur.com/X4D5Zr0.png','https://i.imgur.com/kjm5h0X.png'),
	(39,14,14,4,'2016 03S/white/white matteblack/white/white','https://i.imgur.com/0UZyIme.png','https://i.imgur.com/fGhKuhB.png'),
	(40,1,14,4,'2016 2015/white/white black/white/white','https://i.imgur.com/xtqRJer.png','https://i.imgur.com/hMGLbiZ.png'),
	(41,1,8,1,'2016 new orleans bowl 2015/white/black black/white/black','https://i.imgur.com/SqdVqbW.png','https://i.imgur.com/h7RMLda.png'),
	(42,1,14,1,'2016 2015/white/black black/white/black','https://i.imgur.com/vZevG5X.png','https://i.imgur.com/zqBSkgh.png'),
	(43,1,15,1,'2016 2015/black/black black/black/black','https://i.imgur.com/lsrrUL6.png','https://i.imgur.com/NA4T0PN.png'),
	(44,1,9,1,'2015 heart of dallas bowl 2015/black/black black/black/black','https://i.imgur.com/QXH7qWY.png','https://i.imgur.com/FRKFslx.png'),
	(45,1,14,1,'2015 2015/white/black black/white/black','https://i.imgur.com/5sonab4.png','https://i.imgur.com/AEJBU9W.png'),
	(46,1,15,1,'2015 2015/black/black black/black/black','https://i.imgur.com/ho5G8vM.png','https://i.imgur.com/TYBz5W9.png'),
	(47,3,16,9,'2014 black/gold/black','https://i.imgur.com/X8pQYvB.png','https://i.imgur.com/ZSCqMiI.png'),
	(48,3,17,8,'2014 black/white/white','https://i.imgur.com/zvBYcne.png','https://i.imgur.com/0Qx0QKe.png'),
	(49,3,18,9,'2014 black/black/black','https://i.imgur.com/NB8q5g6.png','https://i.imgur.com/PECOsNj.png'),
	(50,3,19,9,'2014 44 black/black/black','https://i.imgur.com/uh0gfPd.png','https://i.imgur.com/lDjXLFA.png'),
	(51,15,21,8,'2013 gold/white/white','https://i.imgur.com/CJy7HjN.png','https://i.imgur.com/XZh1mDn.png'),
	(52,3,20,9,'2013 black/gold/black','https://i.imgur.com/iXDvIlk.png','https://i.imgur.com/0yI01bb.png'),
	(53,3,21,8,'2013 black/white/white','https://i.imgur.com/Hw8ED5C.png','https://i.imgur.com/Bmy4xXT.png'),
	(54,3,21,9,'2013 black/white/black','https://i.imgur.com/YrmdLqg.png','https://i.imgur.com/PWRIw6b.png'),
	(55,3,22,8,'2013 black/black/white','https://i.imgur.com/UELTKh8.png','https://i.imgur.com/tzFpb7f.png'),
	(56,3,22,9,'2013 black/black/black','https://i.imgur.com/bw7XVVi.png','https://i.imgur.com/Ziqk1Du.png'),
	(57,17,28,13,'2012 america/black/black black/black/black','https://i.imgur.com/lqoToHa.png','https://i.imgur.com/YSpOrgG.png'),
	(58,16,26,10,'2012 throwbacks gold/white/gold','https://i.imgur.com/B6zhLdT.png','https://i.imgur.com/STLcYGH.png'),
	(59,16,27,11,'2012 gold/white/white','https://i.imgur.com/Iayl50V.png','https://i.imgur.com/4CJYTNw.png'),
	(60,16,27,13,'2012 gold/white/black','https://i.imgur.com/6IkwRgv.png','https://i.imgur.com/NNHolMT.png'),
	(61,3,27,13,'2012 black/white/black','https://i.imgur.com/Xua3nNn.png','https://i.imgur.com/RUR9MUQ.png'),
	(62,3,28,13,'2012 black/black/black','https://i.imgur.com/cgt6hVO.png','https://i.imgur.com/14D4G2c.png'),
	(63,3,28,11,'2012 black/black/white','https://i.imgur.com/D3013ey.png','https://i.imgur.com/ZEZUEFH.png'),
	(64,18,30,12,'2011 a/black/gold matteblack/black/gold','https://i.imgur.com/OKwytUn.png','https://i.imgur.com/cMITVHF.png'),
	(65,18,30,11,'2011 a/black/white matteblack/black/white','https://i.imgur.com/gQYH9dX.png','https://i.imgur.com/0qMxfkP.png'),
	(66,18,29,11,'2011 a/white/white matteblack/white/white','https://i.imgur.com/avSXSTM.png','https://i.imgur.com/0qnS58Z.png'),
	(67,19,30,13,'2011 b/black/black matteblack/black/black','https://i.imgur.com/poEMUzx.png','https://i.imgur.com/phL1A1U.png'),
	(68,19,29,13,'2011 b/white/black matteblack/white/black','https://i.imgur.com/QMyoRt4.png','https://i.imgur.com/yTIqZoG.png'),
	(69,20,30,13,'2011 c/black/black matteblack/black/black','https://i.imgur.com/fpiIDOM.png','https://i.imgur.com/TfsbYRo.png'),
	(70,20,29,13,'2011 c/white/black matteblack/white/black','https://i.imgur.com/RHzEB9l.png','https://i.imgur.com/WJfX5EE.png'),
	(71,21,30,13,'2011 d/black/black matteblack/black/black','https://i.imgur.com/AiiPZJA.png','https://i.imgur.com/EV23IB8.png'),
	(72,21,29,13,'2011 d/white/black matteblack/white/black','https://i.imgur.com/Cc7Wh66.png','https://i.imgur.com/qFHalRl.png'),
	(73,22,29,13,'2011 e/white/black matteblack/white/black','https://i.imgur.com/l6wh3ON.png','https://i.imgur.com/iJgqPpy.png'),
	(74,23,23,13,'2011 hawaii bowl f/black/black matteblack/black/black','https://i.imgur.com/LNmdsck.png','https://i.imgur.com/RJd39eJ.png'),
	(75,3,30,13,'2010 black/black/black','https://i.imgur.com/Kppz9MJ.png','https://i.imgur.com/iXvp6to.png'),
	(76,3,30,12,'2010 black/black/gold','https://i.imgur.com/J3iQxVx.png','https://i.imgur.com/JzyH2bP.png'),
	(77,3,29,13,'2010 black/white/black','https://i.imgur.com/aJYGYzn.png','https://i.imgur.com/QsczZw1.png'),
	(78,3,24,12,'2010 beef o bradys bowl black/white/gold','https://i.imgur.com/CL2RFLr.png','https://i.imgur.com/fn5bCaT.png'),
	(79,3,29,12,'2010 black/white/gold','https://i.imgur.com/0Z1In4S.png','https://i.imgur.com/tAtj35T.png'),
	(80,3,29,11,'2010 black/white/white','https://i.imgur.com/yJmxz8I.png','https://i.imgur.com/z8eSt5A.png'),
	(81,3,33,13,'2009 black/black/black','https://i.imgur.com/JYzmJai.png','https://i.imgur.com/pMarWvE.png'),
	(82,3,33,11,'2009 black/black/white','https://i.imgur.com/51MfoV6.png','https://i.imgur.com/jq78r9b.png'),
	(83,3,31,13,'2009 black/gold/black','https://i.imgur.com/hriveuU.png','https://i.imgur.com/d2xuDBD.png'),
	(84,3,31,11,'2009 black/gold/white','https://i.imgur.com/Mv1esTp.png','https://i.imgur.com/lNIqSYR.png'),
	(85,3,25,13,'2009 new orleans bowl black/white/black','https://i.imgur.com/E3Lhjqk.png','https://i.imgur.com/h466u9Z.png'),
	(86,3,32,13,'2009 black/white/black','https://i.imgur.com/fRz6BnW.png','https://i.imgur.com/qpAlr0u.png'),
	(87,3,32,12,'2009 black/white/gold','https://i.imgur.com/vpNXqoc.png','https://i.imgur.com/evc6Cjc.png'),
	(88,3,32,11,'2009 black/white/white','https://i.imgur.com/Pq9jpAm.png','https://i.imgur.com/nL13qsF.png'),
	(89,3,41,16,'2008 black/black/black','https://i.imgur.com/Af5ozps.png','https://i.imgur.com/RykBTvb.png'),
	(90,3,41,15,'2008 black/black/gold','https://i.imgur.com/TnTxMtg.png','https://i.imgur.com/EfDbmpv.png'),
	(91,3,39,16,'2008 black/gold/black','https://i.imgur.com/93ilu0b.png','https://i.imgur.com/9w2gPMJ.png'),
	(92,3,34,15,'2008 new orleans bowl black/gold/gold','https://i.imgur.com/Ta5JkER.png','https://i.imgur.com/Gf0Uu6R.png'),
	(93,3,39,15,'2008 black/gold/gold','https://i.imgur.com/G8uVWLL.png','https://i.imgur.com/4BXnjB2.png'),
	(94,3,40,16,'2008 black/white/black','https://i.imgur.com/GAxJgjL.png','https://i.imgur.com/zB3mJ2u.png'),
	(95,3,40,14,'2008 black/white/white','https://i.imgur.com/Kmbff7w.png','https://i.imgur.com/bjOTtl4.png'),
	(96,3,41,16,'2006 black/black/black','https://i.imgur.com/FNgos6R.png','https://i.imgur.com/gPxxwHz.png'),
	(97,3,36,15,'2006 gmac bowl black/black/gold','https://i.imgur.com/raRkiOv.png','https://i.imgur.com/lgkTIYs.png'),
	(98,3,41,15,'2006 black/black/gold','https://i.imgur.com/R7kowmx.png','https://i.imgur.com/O1YAa2Y.png'),
	(99,3,40,16,'2006 black/white/black','https://i.imgur.com/LPZJHh5.png','https://i.imgur.com/Pzmdp0n.png'),
	(100,3,40,15,'2006 black/white/gold','https://i.imgur.com/OAueq9G.png','https://i.imgur.com/GTqKdw4.png'),
	(101,3,35,14,'2007 papa johns bowl black/white/white','https://i.imgur.com/pI6jsNq.png','https://i.imgur.com/awmhoQI.png'),
	(102,3,40,14,'2006 black/white/white','https://i.imgur.com/j6Cq0Xz.png','https://i.imgur.com/Sq6UGuq.png'),
	(103,3,43,16,'2003 black/black/black','https://i.imgur.com/4SSV3pq.png','https://i.imgur.com/N5Rade5.png'),
	(104,3,43,15,'2003 black/black/gold','https://i.imgur.com/5ZBKeID.png','https://i.imgur.com/jxSO9pa.png'),
	(105,3,38,16,'2003 liberty bowl black/white/black','https://i.imgur.com/stO5Hmk.png','https://i.imgur.com/OXrl1pq.png'),
	(106,3,42,16,'2003 black/white/black','https://i.imgur.com/9n8pOra.png','https://i.imgur.com/1vkSQEw.png'),
	(107,3,37,15,'2004 new orleans bowl black/white/gold','https://i.imgur.com/W0Twxw3.png','https://i.imgur.com/smrqQFJ.png'),
	(108,3,42,15,'2003 black/white/gold','https://i.imgur.com/E5Qx955.png','https://i.imgur.com/fjrhyBE.png'),
	(109,3,45,1,'2020 2003/blackA/black black/black/black','https://i.imgur.com/zrBNbSy.png','https://i.imgur.com/PK7DO0u.png'),
	(110,4,46,4,'2020 america/heathergray/white black/heathergray/white','https://i.imgur.com/WrOP33N.png','https://i.imgur.com/0Mpkbi1.png'),
	(111,4,48,1,'2020 america/white/black black/white/black','https://i.imgur.com/5WY9S2V.png','https://i.imgur.com/80duC8w.png'),
	(112,3,47,1,'2020 2003/gold/black black/gold/black','https://i.imgur.com/PBRTfze.png','https://i.imgur.com/S1LIzFx.png');

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
) ENGINE=InnoDB AUTO_INCREMENT=228 DEFAULT CHARSET=utf8mb4;

LOCK TABLES `game` WRITE;
/*!40000 ALTER TABLE `game` DISABLE KEYS */;

INSERT INTO `game` (`gameID`, `yr`, `gameday`, `opponentName`, `result`, `points_for`, `points_against`, `location`, `comboID`, `away_helmet`, `home_helmet`, `article_title`, `article_link`)
VALUES
	(1,'2020','2020-09-03','South Alabama','Loss',21,32,'home',1,'https://i.imgur.com/m2agcmT.png','https://i.imgur.com/wQc4Dm4.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(2,'2020','2020-09-19','Louisiana Tech','Loss',30,31,'home',2,'https://i.imgur.com/mFkaE6v.png','https://i.imgur.com/xJRk7YX.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(3,'2020','2020-09-26','Tulane','Loss',24,66,'home',3,'https://i.imgur.com/WourjY2.png','https://i.imgur.com/yvxvdWK.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(4,'2020','2020-10-03','North Texas','Win',41,31,'road',4,'https://i.imgur.com/Gai1VS5.png','https://i.imgur.com/kSE3fKq.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(5,'2019','2020-01-04','Tulane','Loss',13,30,'armedForcesBowl',16,'https://i.imgur.com/9cNA6DF.png','https://i.imgur.com/Hvp3uA1.png','2019 Southern Miss Football Uniforms','https://southernmissunis.blogspot.com/2020/01/2019-southern-miss-football-uniforms.html'),
	(6,'2019','2019-11-30','Florida Atlantic','Loss',17,34,'road',15,'https://i.imgur.com/wbtsF8C.png','https://i.imgur.com/2ntbXKS.png','2019 Southern Miss Football Uniforms','https://southernmissunis.blogspot.com/2020/01/2019-southern-miss-football-uniforms.html'),
	(7,'2019','2019-11-23','Western Kentucky','Loss',10,28,'home',14,'https://i.imgur.com/lJKHSKH.png','https://i.imgur.com/xJRk7YX.png','2019 Southern Miss Football Uniforms','https://southernmissunis.blogspot.com/2020/01/2019-southern-miss-football-uniforms.html'),
	(8,'2019','2019-11-16','UTSA','Win',36,17,'road',13,'https://i.imgur.com/9cNA6DF.png','https://i.imgur.com/zfeYKcQ.png','2019 Southern Miss Football Uniforms','https://southernmissunis.blogspot.com/2020/01/2019-southern-miss-football-uniforms.html'),
	(9,'2019','2019-11-09','UAB','Win',37,2,'home',12,'https://i.imgur.com/bfLrq5a.png','https://i.imgur.com/0ai4GQH.png','2019 Southern Miss Football Uniforms','https://southernmissunis.blogspot.com/2020/01/2019-southern-miss-football-uniforms.html'),
	(10,'2019','2019-10-26','Rice','Win',20,6,'road',11,'https://i.imgur.com/Gai1VS5.png','https://i.imgur.com/VkKbVDa.png','2019 Southern Miss Football Uniforms','https://southernmissunis.blogspot.com/2020/01/2019-southern-miss-football-uniforms.html'),
	(11,'2019','2019-10-19','Louisiana Tech','Loss',30,45,'road',10,'https://i.imgur.com/wbtsF8C.png','https://i.imgur.com/e942lIY.png','2019 Southern Miss Football Uniforms','https://southernmissunis.blogspot.com/2020/01/2019-southern-miss-football-uniforms.html'),
	(12,'2019','2019-10-12','North Texas','Win',45,27,'home',9,'https://i.imgur.com/I45YnjU.png','https://i.imgur.com/wQc4Dm4.png','2019 Southern Miss Football Uniforms','https://southernmissunis.blogspot.com/2020/01/2019-southern-miss-football-uniforms.html'),
	(13,'2019','2019-09-28','UTEP','Win',31,13,'home',8,'https://i.imgur.com/5qcbcaV.png','https://i.imgur.com/wQc4Dm4.png','2019 Southern Miss Football Uniforms','https://southernmissunis.blogspot.com/2020/01/2019-southern-miss-football-uniforms.html'),
	(14,'2019','2019-09-21','Alabama','Loss',7,49,'road',7,'https://i.imgur.com/Gai1VS5.png','https://i.imgur.com/LazHS0m.png','2019 Southern Miss Football Uniforms','https://southernmissunis.blogspot.com/2020/01/2019-southern-miss-football-uniforms.html'),
	(15,'2019','2019-09-14','Troy','Win',47,42,'road',7,'https://i.imgur.com/Gai1VS5.png','https://i.imgur.com/RJMFxZM.png','2019 Southern Miss Football Uniforms','https://southernmissunis.blogspot.com/2020/01/2019-southern-miss-football-uniforms.html'),
	(16,'2019','2019-09-07','Mississippi State','Loss',15,38,'road',6,'https://i.imgur.com/rhPBiMs.png','https://i.imgur.com/RjEU0ja.png','2019 Southern Miss Football Uniforms','https://southernmissunis.blogspot.com/2020/01/2019-southern-miss-football-uniforms.html'),
	(17,'2019','2019-08-31','Alcorn State','Win',38,10,'home',5,'https://i.imgur.com/YAIEmhh.png','https://i.imgur.com/tMa6K6u.png','2019 Southern Miss Football Uniforms','https://southernmissunis.blogspot.com/2020/01/2019-southern-miss-football-uniforms.html'),
	(18,'2018','2018-09-01','Jackson State','Win',55,7,'home',25,'https://i.imgur.com/DMfnNnR.png','https://i.imgur.com/IJ5MjNr.png','2018 Southern Miss Football Uniforms','https://southernmissunis.blogspot.com/2018/12/2018-southern-miss-football-uniforms.html'),
	(19,'2018','2018-09-08','UL Monroe','Loss',20,21,'home',25,'https://i.imgur.com/UzCqVk6.png','https://i.imgur.com/IJ5MjNr.png','2018 Southern Miss Football Uniforms','https://southernmissunis.blogspot.com/2018/12/2018-southern-miss-football-uniforms.html'),
	(20,'2018','2018-09-22','Rice','Win',40,22,'home',18,'https://i.imgur.com/goqcEZt.png','https://i.imgur.com/yvxvdWK.png','2018 Southern Miss Football Uniforms','https://southernmissunis.blogspot.com/2018/12/2018-southern-miss-football-uniforms.html'),
	(21,'2018','2018-09-29','Auburn','Loss',13,24,'road',20,'https://i.imgur.com/Gai1VS5.png','https://i.imgur.com/5vU4AwU.png','2018 Southern Miss Football Uniforms','https://southernmissunis.blogspot.com/2018/12/2018-southern-miss-football-uniforms.html'),
	(22,'2018','2018-10-13','North Texas','Loss',7,30,'road',19,'https://i.imgur.com/Gai1VS5.png','https://i.imgur.com/lYxtVfN.png','2018 Southern Miss Football Uniforms','https://southernmissunis.blogspot.com/2018/12/2018-southern-miss-football-uniforms.html'),
	(23,'2018','2018-10-20','UTSA','Win',27,17,'home',17,'https://i.imgur.com/JWLsrxU.png','https://i.imgur.com/fBgIW7G.png','2018 Southern Miss Football Uniforms','https://southernmissunis.blogspot.com/2018/12/2018-southern-miss-football-uniforms.html'),
	(24,'2018','2018-10-27','Charlotte','Loss',17,20,'road',23,'https://i.imgur.com/lzPoaGL.png','https://i.imgur.com/th0C2AB.png','2018 Southern Miss Football Uniforms','https://southernmissunis.blogspot.com/2018/12/2018-southern-miss-football-uniforms.html'),
	(25,'2018','2018-11-03','Marshall','Win',26,24,'home',24,'https://i.imgur.com/NYMxDzB.png','https://i.imgur.com/0ai4GQH.png','2018 Southern Miss Football Uniforms','https://southernmissunis.blogspot.com/2018/12/2018-southern-miss-football-uniforms.html'),
	(26,'2018','2018-11-10','UAB','Loss',23,26,'road',24,'https://i.imgur.com/9cNA6DF.png','https://i.imgur.com/pydKaeA.png','2018 Southern Miss Football Uniforms','https://southernmissunis.blogspot.com/2018/12/2018-southern-miss-football-uniforms.html'),
	(27,'2018','2018-11-17','Louisiana Tech','Win',21,20,'home',21,'https://i.imgur.com/ZhHzotp.png','https://i.imgur.com/wQc4Dm4.png','2018 Southern Miss Football Uniforms','https://southernmissunis.blogspot.com/2018/12/2018-southern-miss-football-uniforms.html'),
	(28,'2018','2018-11-24','UTEP','Win',39,7,'road',22,'https://i.imgur.com/wbtsF8C.png','https://i.imgur.com/vbZTJUX.png','2018 Southern Miss Football Uniforms','https://southernmissunis.blogspot.com/2018/12/2018-southern-miss-football-uniforms.html'),
	(29,'2017','2017-09-02','Kentucky','Loss',17,24,'home',36,'https://i.imgur.com/WF3cY14.png','https://i.imgur.com/WDgmCGw.png','2017 Southern Miss Football Uniforms','http://southernmissunis.blogspot.com/2017/12/2017-southern-miss-football-uniforms.html'),
	(30,'2017','2017-09-09','Southern','Win',45,0,'home',35,'https://i.imgur.com/vBZXtnk.png','https://i.imgur.com/WDgmCGw.png','2017 Southern Miss Football Uniforms','http://southernmissunis.blogspot.com/2017/12/2017-southern-miss-football-uniforms.html'),
	(31,'2017','2017-09-16','UL Monroe','Win',28,17,'road',38,'https://i.imgur.com/UzCqVk6.png','https://i.imgur.com/BgkEL8k.png','2017 Southern Miss Football Uniforms','http://southernmissunis.blogspot.com/2017/12/2017-southern-miss-football-uniforms.html'),
	(32,'2017','2017-09-30','North Texas','Loss',28,43,'home',27,'https://i.imgur.com/WNnaqgN.png','https://i.imgur.com/JWCjZOr.png','2017 Southern Miss Football Uniforms','http://southernmissunis.blogspot.com/2017/12/2017-southern-miss-football-uniforms.html'),
	(33,'2017','2017-10-07','UTSA','Win',31,29,'road',30,'https://i.imgur.com/6azIS7e.png','https://i.imgur.com/13OjFUQ.png','2017 Southern Miss Football Uniforms','http://southernmissunis.blogspot.com/2017/12/2017-southern-miss-football-uniforms.html'),
	(34,'2017','2017-10-14','UTEP','Win',24,0,'home',26,'https://i.imgur.com/iazsOIl.png','https://i.imgur.com/i1gYLUh.png','2017 Southern Miss Football Uniforms','http://southernmissunis.blogspot.com/2017/12/2017-southern-miss-football-uniforms.html'),
	(35,'2017','2017-10-21','Louisiana Tech','Win',34,27,'road',32,'https://i.imgur.com/91mdYpw.png','https://i.imgur.com/oXLbvu5.png','2017 Southern Miss Football Uniforms','http://southernmissunis.blogspot.com/2017/12/2017-southern-miss-football-uniforms.html'),
	(36,'2017','2017-10-28','UAB','Loss',12,30,'home',34,'https://i.imgur.com/2bXQRtn.png','https://i.imgur.com/rnGrHkA.png','2017 Southern Miss Football Uniforms','http://southernmissunis.blogspot.com/2017/12/2017-southern-miss-football-uniforms.html'),
	(37,'2017','2017-11-04','Tennessee','Loss',10,24,'road',37,'https://i.imgur.com/gakLdHJ.png','https://i.imgur.com/M7uM8DW.png','2017 Southern Miss Football Uniforms','http://southernmissunis.blogspot.com/2017/12/2017-southern-miss-football-uniforms.html'),
	(38,'2017','2017-11-11','Rice','Win',43,34,'road',33,'https://i.imgur.com/91mdYpw.png','https://i.imgur.com/18TKdY6.png','2017 Southern Miss Football Uniforms','http://southernmissunis.blogspot.com/2017/12/2017-southern-miss-football-uniforms.html'),
	(39,'2017','2017-11-18','Charlotte','Win',66,21,'home',31,'https://i.imgur.com/wIZgsOb.png','https://i.imgur.com/D5EW4eS.png','2017 Southern Miss Football Uniforms','http://southernmissunis.blogspot.com/2017/12/2017-southern-miss-football-uniforms.html'),
	(40,'2017','2017-11-25','Marshall','Win',28,27,'road',29,'https://i.imgur.com/ceSE92H.png','https://i.imgur.com/r8kL90o.png','2017 Southern Miss Football Uniforms','http://southernmissunis.blogspot.com/2017/12/2017-southern-miss-football-uniforms.html'),
	(41,'2017','2017-12-27','Florida State','Loss',13,42,'independenceBowl',28,'https://i.imgur.com/ceSE92H.png','https://i.imgur.com/aGe8fmI.png','2017 Southern Miss Football Uniforms','http://southernmissunis.blogspot.com/2017/12/2017-southern-miss-football-uniforms.html'),
	(42,'2016','2016-09-03','Kentucky','Win',44,35,'road',42,'https://i.imgur.com/91mdYpw.png','https://i.imgur.com/y0jZCZQ.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(43,'2016','2016-09-10','Savannah St.','Win',56,0,'home',43,'https://i.imgur.com/olLogNO.png','https://i.imgur.com/D5EW4eS.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(44,'2016','2016-09-17','Troy','Loss',31,37,'home',43,'https://i.imgur.com/F6lSTix.png','https://i.imgur.com/D5EW4eS.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(45,'2016','2016-09-24','UTEP','Win',34,7,'road',42,'https://i.imgur.com/91mdYpw.png','https://i.imgur.com/U0ZE069.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(46,'2016','2016-10-01','Rice','Win',44,28,'home',43,'https://i.imgur.com/Pg8Pwsg.png','https://i.imgur.com/D5EW4eS.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(47,'2016','2016-10-08','UTSA','Loss',32,55,'road',42,'https://i.imgur.com/91mdYpw.png','https://i.imgur.com/0kJEHM4.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(48,'2016','2016-10-15','LSU','Loss',10,45,'road',42,'https://i.imgur.com/91mdYpw.png','https://i.imgur.com/ujp3lWl.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(49,'2016','2016-10-29','Marshall','Win',24,14,'home',43,'https://i.imgur.com/efNbL6h.png','https://i.imgur.com/D5EW4eS.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(50,'2016','2016-11-05','Charlotte','Loss',27,38,'home',43,'https://i.imgur.com/zJHuC8p.png','https://i.imgur.com/D5EW4eS.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(51,'2016','2016-11-12','Old Dominion','Loss',35,51,'road',40,'https://i.imgur.com/91mdYpw.png','https://i.imgur.com/YPXdtag.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(52,'2016','2016-11-19','North Texas','Loss',23,29,'road',39,'https://i.imgur.com/2AWstWH.png','https://i.imgur.com/XwJIeUo.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(53,'2016','2016-11-26','Louisiana Tech','Win',39,24,'home',43,'https://i.imgur.com/MU5vFAS.png','https://i.imgur.com/D5EW4eS.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(54,'2016','2016-12-17','Louisiana','Win',28,21,'newOrleansBowl',41,'https://i.imgur.com/91mdYpw.png','https://i.imgur.com/lX4wkin.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(55,'2015','2015-09-05','Mississippi State','Loss',16,34,'home',46,'https://i.imgur.com/QQZouT5.png','https://i.imgur.com/D5EW4eS.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(56,'2015','2015-09-12','Austin Peay','Win',52,6,'home',46,'https://i.imgur.com/tzGPqt9.png','https://i.imgur.com/D5EW4eS.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(57,'2015','2015-09-19','Texas State','Win',56,50,'road',46,'https://i.imgur.com/91mdYpw.png','https://i.imgur.com/fFpp94n.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(58,'2015','2015-09-26','Nebraska','Loss',28,36,'road',45,'https://i.imgur.com/91mdYpw.png','https://i.imgur.com/W3MtQIu.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(59,'2015','2015-10-03','North Texas','Win',49,14,'home',46,'https://i.imgur.com/a27MOQJ.png','https://i.imgur.com/D5EW4eS.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(60,'2015','2015-10-09','Marshall','Loss',10,31,'road',45,'https://i.imgur.com/91mdYpw.png','https://i.imgur.com/r8kL90o.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(61,'2015','2015-10-17','UTSA','Win',32,10,'home',46,'https://i.imgur.com/sEhsCYp.png','https://i.imgur.com/D5EW4eS.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(62,'2015','2015-10-24','Charlotte','Win',44,10,'road',45,'https://i.imgur.com/91mdYpw.png','https://i.imgur.com/hOmThlX.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(63,'2015','2015-10-31','UTEP','Win',34,13,'home',46,'https://i.imgur.com/hXizxrh.png','https://i.imgur.com/D5EW4eS.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(64,'2015','2015-11-14','Rice','Win',65,10,'road',45,'https://i.imgur.com/91mdYpw.png','https://i.imgur.com/18TKdY6.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(65,'2015','2015-11-21','Old Dominion','Win',56,31,'home',46,'https://i.imgur.com/26SkyAX.png','https://i.imgur.com/D5EW4eS.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(66,'2015','2015-11-28','Louisiana Tech','Win',58,24,'road',45,'https://i.imgur.com/91mdYpw.png','https://i.imgur.com/Er7ouMF.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(67,'2015','2015-12-05','Western Kentucky','Loss',28,45,'cusaChampionship',45,'https://i.imgur.com/91mdYpw.png','https://i.imgur.com/fYHT8Fj.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(68,'2015','2015-12-26','Washington','Loss',31,44,'heartOfDallasBowl',44,'https://i.imgur.com/4FjGj0c.png','https://i.imgur.com/D5EW4eS.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(69,'2014','2014-08-30','Mississippi State','Loss',0,49,'road',48,'https://i.imgur.com/ceSE92H.png','https://i.imgur.com/CnRR4Bl.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(70,'2014','2014-09-06','Alcorn State','Win',26,20,'home',49,'https://i.imgur.com/H5l7M0W.png','https://i.imgur.com/RpELg6F.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(71,'2014','2014-09-13','Alabama','Loss',12,52,'road',48,'https://i.imgur.com/ceSE92H.png','https://i.imgur.com/xTT7Jvp.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(72,'2014','2014-09-20','Appalachian St.','Win',21,20,'home',49,'https://i.imgur.com/Olo7y73.png','https://i.imgur.com/RpELg6F.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(73,'2014','2014-09-27','Rice','Loss',23,41,'home',50,'https://i.imgur.com/Pg8Pwsg.png','https://i.imgur.com/RpELg6F.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(74,'2014','2014-10-04','Middle Tennessee','Loss',31,37,'road',48,'https://i.imgur.com/ceSE92H.png','https://i.imgur.com/tJKACA7.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(75,'2014','2014-10-18','North Texas','Win',30,20,'road',48,'https://i.imgur.com/ceSE92H.png','https://i.imgur.com/eEydbLS.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(76,'2014','2014-10-25','Louisiana Tech','Loss',20,31,'home',49,'https://i.imgur.com/eMq0e6X.png','https://i.imgur.com/RpELg6F.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(77,'2014','2014-11-01','UTEP','Loss',14,35,'road',48,'https://i.imgur.com/ceSE92H.png','https://i.imgur.com/FedRkWQ.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(78,'2014','2014-11-08','Marshall','Loss',17,63,'home',47,'https://i.imgur.com/efNbL6h.png','https://i.imgur.com/RpELg6F.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(79,'2014','2014-11-13','UTSA','Loss',10,12,'road',48,'https://i.imgur.com/ceSE92H.png','https://i.imgur.com/2RJmn5t.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(80,'2014','2014-11-29','UAB','Loss',24,45,'home',49,'https://i.imgur.com/9ne7qX3.png','https://i.imgur.com/RpELg6F.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(81,'2013','2013-08-31','Texas State','Loss',15,22,'home',56,'https://i.imgur.com/WqoOpjs.png','https://i.imgur.com/RpELg6F.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(82,'2013','2013-09-07','Nebraska','Loss',13,56,'road',51,'https://i.imgur.com/iVA46ad.png','https://i.imgur.com/W3MtQIu.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(83,'2013','2013-09-14','Arkansas','Loss',3,24,'road',51,'https://i.imgur.com/iVA46ad.png','https://i.imgur.com/Vr8MyqP.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(84,'2013','2013-09-28','Boise State','Loss',7,60,'road',51,'https://i.imgur.com/iVA46ad.png','https://i.imgur.com/8owJa6W.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(85,'2013','2013-10-05','FIU','Loss',23,24,'home',56,'https://i.imgur.com/aFVKePr.png','https://i.imgur.com/RpELg6F.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(86,'2013','2013-10-19','East Carolina','Loss',14,55,'road',54,'https://i.imgur.com/ceSE92H.png','https://i.imgur.com/eoICdS3.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(87,'2013','2013-10-26','North Texas','Loss',14,55,'home',56,'https://i.imgur.com/BHFgLnI.png','https://i.imgur.com/RpELg6F.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(88,'2013','2013-11-02','Marshall','Loss',13,61,'road',53,'https://i.imgur.com/ceSE92H.png','https://i.imgur.com/r8kL90o.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(89,'2013','2013-11-09','Louisiana Tech','Loss',13,36,'road',53,'https://i.imgur.com/ceSE92H.png','https://i.imgur.com/N17AIWI.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(90,'2013','2013-11-16','Florida Atlantic','Loss',7,41,'home',52,'https://i.imgur.com/FMidTZe.png','https://i.imgur.com/RpELg6F.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(91,'2013','2013-11-23','Middle Tennessee','Loss',21,42,'home',55,'https://i.imgur.com/OIzN5Am.png','https://i.imgur.com/RpELg6F.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(92,'2013','2013-11-30','UAB','Win',62,27,'road',51,'https://i.imgur.com/iVA46ad.png','https://i.imgur.com/Bqbcf1e.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(93,'2012','2012-09-01','Nebraska','Loss',20,49,'road',61,'https://i.imgur.com/ceSE92H.png','https://i.imgur.com/W3MtQIu.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(94,'2012','2012-09-15','East Carolina','Loss',14,24,'home',63,'https://i.imgur.com/7V4DjBN.png','https://i.imgur.com/RpELg6F.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(95,'2012','2012-09-22','Western Kentucky','Loss',17,42,'road',61,'https://i.imgur.com/ceSE92H.png','https://i.imgur.com/sdMVjBf.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(96,'2012','2012-09-29','Louisville','Loss',17,21,'home',62,'https://i.imgur.com/YNFViJu.png','https://i.imgur.com/RpELg6F.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(97,'2012','2012-10-06','Boise State','Loss',14,40,'home',62,'https://i.imgur.com/HObuIyg.png','https://i.imgur.com/RpELg6F.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(98,'2012','2012-10-13','UCF','Loss',31,38,'road',61,'https://i.imgur.com/ceSE92H.png','https://i.imgur.com/e4IeW8a.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(99,'2012','2012-10-20','Marshall','Loss',24,59,'home',58,'https://i.imgur.com/efNbL6h.png','https://i.imgur.com/xs3ffsG.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(100,'2012','2012-10-27','Rice','Loss',17,44,'road',59,'https://i.imgur.com/tboQQX0.png','https://i.imgur.com/ow2bjaX.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(101,'2012','2012-11-03','UAB','Loss',19,27,'home',58,'https://i.imgur.com/i6B6NTm.png','https://i.imgur.com/xs3ffsG.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(102,'2012','2012-11-10','SMU','Loss',6,34,'road',60,'https://i.imgur.com/tboQQX0.png','https://i.imgur.com/m9CWpp5.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(103,'2012','2012-11-17','UTEP','Loss',33,34,'home',57,'https://i.imgur.com/vepWgsz.png','https://i.imgur.com/ehaZExI.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(104,'2012','2012-11-24','Memphis','Loss',24,42,'road',58,'https://i.imgur.com/tboQQX0.png','https://i.imgur.com/tfnMxv3.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(105,'2011','2011-09-03','Louisiana Tech','Win',19,17,'home',65,'https://i.imgur.com/IIG7ghU.png','https://i.imgur.com/taZOhoS.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(106,'2011','2011-09-10','Marshall','Loss',20,26,'road',66,'https://i.imgur.com/b2hxCO4.png','https://i.imgur.com/r8kL90o.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(107,'2011','2011-09-17','SE Louisiana','Win',52,6,'home',64,'https://i.imgur.com/1RVcqoC.png','https://i.imgur.com/taZOhoS.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(108,'2011','2011-09-24','Virginia','Win',30,24,'road',68,'https://i.imgur.com/0QSI8ct.png','https://i.imgur.com/vtqhluo.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(109,'2011','2011-10-01','Rice','Win',48,24,'home',67,'https://i.imgur.com/hJeASCC.png','https://i.imgur.com/0mb7iXg.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(110,'2011','2011-10-08','Navy','Win',63,35,'road',68,'https://i.imgur.com/0QSI8ct.png','https://i.imgur.com/7d0Cy0b.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(111,'2011','2011-10-22','SMU','Win',27,3,'home',69,'https://i.imgur.com/Wmb5RX4.png','https://i.imgur.com/9os2jI8.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(112,'2011','2011-10-29','UTEP','Win',31,13,'road',70,'https://i.imgur.com/Uooa71s.png','https://i.imgur.com/esTrmDY.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(113,'2011','2011-11-05','East Carolina','Win',48,28,'road',70,'https://i.imgur.com/Uooa71s.png','https://i.imgur.com/eoICdS3.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(114,'2011','2011-11-12','UCF','Win',30,29,'home',71,'https://i.imgur.com/6zF53D5.png','https://i.imgur.com/cUx2okI.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(115,'2011','2011-11-17','UAB','Loss',31,34,'road',72,'https://i.imgur.com/J7tCROM.png','https://i.imgur.com/Y0UURK7.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(116,'2011','2011-11-26','Memphis','Win',44,7,'home',71,'https://i.imgur.com/vXv59gl.png','https://i.imgur.com/cUx2okI.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(117,'2011','2011-12-03','Houston','Win',49,28,'cusaChampionship',73,'https://i.imgur.com/5tk7v86.png','https://i.imgur.com/MXzffEZ.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(118,'2011','2011-12-24','Nevada','Win',24,17,'hawaiiBowl',74,'https://i.imgur.com/dm5ePBd.png','https://i.imgur.com/8MOe3u1.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(119,'2010','2010-09-02','South Carolina','Loss',13,41,'road',80,'https://i.imgur.com/ceSE92H.png','https://i.imgur.com/YtP9j3s.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(120,'2010','2010-09-11','Prairie View','Win',34,7,'home',76,'https://i.imgur.com/8UjQBSz.png','https://i.imgur.com/RpELg6F.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(121,'2010','2010-09-17','Kansas','Win',31,16,'home',75,'https://i.imgur.com/cwaUKx2.png','https://i.imgur.com/RpELg6F.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(122,'2010','2010-09-25','Louisiana Tech','Win',13,12,'road',77,'https://i.imgur.com/ceSE92H.png','https://i.imgur.com/HfwpNT6.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(123,'2010','2010-10-02','Marshall','Win',41,16,'home',75,'https://i.imgur.com/efNbL6h.png','https://i.imgur.com/RpELg6F.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(124,'2010','2010-10-09','East Carolina','Loss',43,44,'home',75,'https://i.imgur.com/rQiLD2t.png','https://i.imgur.com/RpELg6F.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(125,'2010','2010-10-16','Memphis','Win',41,19,'road',79,'https://i.imgur.com/ceSE92H.png','https://i.imgur.com/tfnMxv3.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(126,'2010','2010-10-30','UAB','Loss',49,50,'home',75,'https://i.imgur.com/Ql0UlbW.png','https://i.imgur.com/RpELg6F.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(127,'2010','2010-11-06','Tulane','Win',46,30,'road',77,'https://i.imgur.com/ceSE92H.png','https://i.imgur.com/3fhWYcc.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(128,'2010','2010-11-13','UCF','Win',31,21,'road',79,'https://i.imgur.com/ceSE92H.png','https://i.imgur.com/e4IeW8a.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(129,'2010','2010-11-20','Houston','Win',59,41,'home',75,'https://i.imgur.com/vEJFaT6.png','https://i.imgur.com/RpELg6F.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(130,'2010','2010-11-26','Tulsa','Loss',50,56,'road',79,'https://i.imgur.com/ceSE92H.png','https://i.imgur.com/uIkZam5.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(131,'2010','2010-12-21','Louisville','Loss',28,31,'beefOBradysBowl',78,'https://i.imgur.com/ceSE92H.png','https://i.imgur.com/XHbmt8Y.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(132,'2009','2009-09-05','Alcorn State','Win',52,0,'home',82,'https://i.imgur.com/nRF1BJ4.png','https://i.imgur.com/RpELg6F.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(133,'2009','2009-09-12','UCF','Win',26,19,'home',81,'https://i.imgur.com/6zF53D5.png','https://i.imgur.com/RpELg6F.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(134,'2009','2009-09-19','Virginia','Win',37,34,'home',83,'https://i.imgur.com/YmUnfe4.png','https://i.imgur.com/RpELg6F.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(135,'2009','2009-09-26','Kansas','Loss',28,35,'road',87,'https://i.imgur.com/ceSE92H.png','https://i.imgur.com/d6FHTv9.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(136,'2009','2009-10-01','UAB','Loss',17,30,'road',88,'https://i.imgur.com/ceSE92H.png','https://i.imgur.com/Y0UURK7.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(137,'2009','2009-10-10','Louisville','Loss',23,25,'road',86,'https://i.imgur.com/ceSE92H.png','https://i.imgur.com/S6nBIq0.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(138,'2009','2009-10-17','Memphis','Win',36,16,'home',81,'https://i.imgur.com/vXv59gl.png','https://i.imgur.com/RpELg6F.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(139,'2009','2009-10-24','Tulane','Win',43,6,'home',84,'https://i.imgur.com/vp7jJKy.png','https://i.imgur.com/RpELg6F.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(140,'2009','2009-10-31','Houston','Loss',43,50,'road',87,'https://i.imgur.com/ceSE92H.png','https://i.imgur.com/MXzffEZ.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(141,'2009','2009-11-14','Marshall','Win',27,20,'road',86,'https://i.imgur.com/ceSE92H.png','https://i.imgur.com/FgwpwTI.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(142,'2009','2009-11-21','Tulsa','Win',44,34,'home',82,'https://i.imgur.com/CUTS35O.png','https://i.imgur.com/RpELg6F.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(143,'2009','2009-11-28','East Carolina','Loss',20,25,'road',86,'https://i.imgur.com/ceSE92H.png','https://i.imgur.com/SKMp3et.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(144,'2009','2009-12-20','Middle Tennessee','Loss',32,42,'newOrleansBowl',85,'https://i.imgur.com/ceSE92H.png','https://i.imgur.com/BlwDQVF.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(145,'2008','2008-08-30','Louisiana','Win',51,21,'home',90,'https://i.imgur.com/4R5kBrP.png','https://i.imgur.com/Jo5uwnI.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(146,'2008','2008-09-06','Auburn','Loss',13,27,'road',94,'https://i.imgur.com/1GmSLr6.png','https://i.imgur.com/4X8jjYq.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(147,'2008','2008-09-13','Arkansas State','Win',27,24,'road',94,'https://i.imgur.com/1GmSLr6.png','https://i.imgur.com/GVZDptq.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(148,'2008','2008-09-20','Marshall','Loss',27,34,'home',91,'https://i.imgur.com/09QqpnC.png','https://i.imgur.com/Jo5uwnI.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(149,'2008','2008-10-04','UTEP','Loss',37,40,'home',90,'https://i.imgur.com/FpHRbHy.png','https://i.imgur.com/Jo5uwnI.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(150,'2008','2008-10-11','Boise State','Loss',7,24,'home',89,'https://i.imgur.com/5c5yCKl.png','https://i.imgur.com/Jo5uwnI.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(151,'2008','2008-10-18','Rice','Loss',40,45,'road',94,'https://i.imgur.com/1GmSLr6.png','https://i.imgur.com/4MRkNVe.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(152,'2008','2008-10-25','Memphis','Loss',30,36,'road',95,'https://i.imgur.com/1GmSLr6.png','https://i.imgur.com/ixRTrVT.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(153,'2008','2008-11-01','UAB','Win',70,14,'home',93,'https://i.imgur.com/X4HtdpI.png','https://i.imgur.com/Jo5uwnI.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(154,'2008','2008-11-08','UCF','Win',17,6,'road',95,'https://i.imgur.com/1GmSLr6.png','https://i.imgur.com/HRBuoC6.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(155,'2008','2008-11-15','East Carolina','Win',21,3,'home',89,'https://i.imgur.com/46GbA4J.png','https://i.imgur.com/Jo5uwnI.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(156,'2008','2008-11-29','SMU','Win',28,12,'road',95,'https://i.imgur.com/1GmSLr6.png','https://i.imgur.com/EeqAKLJ.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(157,'2008','2008-12-21','Troy','Win',30,27,'newOrleansBowl',92,'https://i.imgur.com/1GmSLr6.png','https://i.imgur.com/2hUYk38.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(158,'2007','2007-09-01','UT Martin','Win',35,13,'home',98,'https://i.imgur.com/25XOOvt.png','https://i.imgur.com/Jo5uwnI.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(159,'2007','2007-09-08','Tennessee','Loss',19,39,'road',99,'https://i.imgur.com/1GmSLr6.png','https://i.imgur.com/4ANu8kF.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(160,'2007','2007-09-15','East Carolina','Win',28,21,'road',99,'https://i.imgur.com/1GmSLr6.png','https://i.imgur.com/kNQ7inN.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(161,'2007','2007-09-27','Boise State','Loss',16,38,'road',99,'https://i.imgur.com/1GmSLr6.png','https://i.imgur.com/IzOcK7M.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(162,'2007','2007-10-03','Rice','Loss',29,31,'home',98,'https://i.imgur.com/cUSo2H9.png','https://i.imgur.com/Jo5uwnI.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(163,'2007','2007-10-13','SMU','Win',28,7,'home',96,'https://i.imgur.com/gllh1zz.png','https://i.imgur.com/Jo5uwnI.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(164,'2007','2007-10-21','Marshall','Win',33,24,'road',99,'https://i.imgur.com/1GmSLr6.png','https://i.imgur.com/zaea4FC.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(165,'2007','2007-10-28','UCF','Loss',17,34,'home',96,'https://i.imgur.com/eP3c4LL.png','https://i.imgur.com/Jo5uwnI.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(166,'2007','2007-11-03','UAB','Win',37,7,'road',99,'https://i.imgur.com/1GmSLr6.png','https://i.imgur.com/mqn2CBW.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(167,'2007','2007-11-10','Memphis','Loss',26,29,'home',96,'https://i.imgur.com/5D7pByZ.png','https://i.imgur.com/Jo5uwnI.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(168,'2007','2007-11-17','UTEP','Win',56,30,'road',99,'https://i.imgur.com/1GmSLr6.png','https://i.imgur.com/lq5d3if.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(169,'2007','2007-11-24','Arkansas State','Win',16,10,'home',98,'https://i.imgur.com/hldnep0.png','https://i.imgur.com/Jo5uwnI.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(170,'2007','2007-12-22','Cincinnati','Loss',21,31,'papaJohnsBowl',101,'https://i.imgur.com/1GmSLr6.png','https://i.imgur.com/bH1Tyuu.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(171,'2006','2006-09-02','Florida','Loss',7,34,'road',102,'https://i.imgur.com/1GmSLr6.png','https://i.imgur.com/prt2bar.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(172,'2006','2006-09-09','SE Louisiana','Win',45,0,'home',98,'https://i.imgur.com/mJX77AD.png','https://i.imgur.com/Jo5uwnI.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(173,'2006','2006-09-16','NC State','Win',37,17,'home',96,'https://i.imgur.com/mlQbAPD.png','https://i.imgur.com/Jo5uwnI.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(174,'2006','2006-09-26','UCF','Win',19,14,'road',99,'https://i.imgur.com/1GmSLr6.png','https://i.imgur.com/4veFPld.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(175,'2006','2006-10-03','Tulsa','Loss',6,20,'road',99,'https://i.imgur.com/1GmSLr6.png','https://i.imgur.com/mc0tfoN.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(176,'2006','2006-10-14','Houston','Win',31,27,'home',96,'https://i.imgur.com/1l09IOn.png','https://i.imgur.com/Jo5uwnI.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(177,'2006','2006-10-21','Virginia Tech','Loss',6,46,'road',100,'https://i.imgur.com/1GmSLr6.png','https://i.imgur.com/RQS9J03.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(178,'2006','2006-10-28','East Carolina','Loss',17,20,'home',96,'https://i.imgur.com/46GbA4J.png','https://i.imgur.com/Jo5uwnI.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(179,'2006','2006-11-05','Memphis','Win',42,21,'road',102,'https://i.imgur.com/1GmSLr6.png','https://i.imgur.com/ixRTrVT.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(180,'2006','2006-11-11','Tulane','Win',31,3,'road',102,'https://i.imgur.com/1GmSLr6.png','https://i.imgur.com/KamunZb.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(181,'2006','2006-11-18','UAB','Win',25,20,'home',96,'https://i.imgur.com/wXF1lmX.png','https://i.imgur.com/Jo5uwnI.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(182,'2006','2006-11-25','Marshall','Win',42,7,'home',96,'https://i.imgur.com/09QqpnC.png','https://i.imgur.com/Jo5uwnI.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(183,'2006','2006-12-01','Houston','Loss',20,34,'cusaChampionship',102,'https://i.imgur.com/1GmSLr6.png','https://i.imgur.com/8X9EFjv.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(184,'2006','2007-01-07','Ohio','Win',28,7,'gmacBowl',97,'https://i.imgur.com/9tDHvDe.png','https://i.imgur.com/Jo5uwnI.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(185,'2005','2005-09-10','Alabama','Loss',21,30,'road',106,'https://i.imgur.com/1GmSLr6.png','https://i.imgur.com/5npSt03.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(186,'2005','2005-09-17','McNeese St.','Win',48,20,'home',104,'https://i.imgur.com/KEoaJKW.png','https://i.imgur.com/Jo5uwnI.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(187,'2005','2005-10-01','East Carolina','Win',33,7,'road',106,'https://i.imgur.com/1GmSLr6.png','https://i.imgur.com/vpVNl4O.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(188,'2005','2005-10-08','Tulsa','Loss',17,34,'home',104,'https://i.imgur.com/5WM3m8Z.png','https://i.imgur.com/Jo5uwnI.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(189,'2005','2005-10-15','UCF','Win',52,31,'home',104,'https://i.imgur.com/rxLpSYi.png','https://i.imgur.com/Jo5uwnI.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(190,'2005','2005-10-21','UAB','Win',37,28,'road',106,'https://i.imgur.com/1GmSLr6.png','https://i.imgur.com/mqn2CBW.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(191,'2005','2005-10-29','NC State','Loss',17,21,'road',106,'https://i.imgur.com/1GmSLr6.png','https://i.imgur.com/mCceWAD.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(192,'2005','2005-11-08','Marshall','Win',27,24,'road',106,'https://i.imgur.com/1GmSLr6.png','https://i.imgur.com/zaea4FC.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(193,'2005','2005-11-13','Houston','Loss',24,27,'road',106,'https://i.imgur.com/1GmSLr6.png','https://i.imgur.com/8X9EFjv.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(194,'2005','2005-11-19','Memphis','Loss',22,24,'home',103,'https://i.imgur.com/5D7pByZ.png','https://i.imgur.com/Jo5uwnI.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(195,'2005','2005-11-26','Tulane','Win',26,7,'home',104,'https://i.imgur.com/RKNRWeb.png','https://i.imgur.com/Jo5uwnI.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(196,'2005','2005-12-20','Arkansas State','Win',31,19,'newOrleansBowl',107,'https://i.imgur.com/1GmSLr6.png','https://i.imgur.com/etCKYCl.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(197,'2004','2004-09-11','Nebraska','Win',21,17,'road',108,'https://i.imgur.com/1GmSLr6.png','https://i.imgur.com/iULnlIR.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(198,'2004','2004-09-25','Tulane','Win',32,14,'road',108,'https://i.imgur.com/1GmSLr6.png','https://i.imgur.com/KamunZb.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(199,'2004','2004-10-02','South Florida','Win',32,20,'road',108,'https://i.imgur.com/1GmSLr6.png','https://i.imgur.com/SdPtTMr.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(200,'2004','2004-10-07','Houston','Win',35,29,'home',103,'https://i.imgur.com/1l09IOn.png','https://i.imgur.com/Jo5uwnI.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(201,'2004','2004-10-16','Alabama','Loss',3,27,'road',108,'https://i.imgur.com/1GmSLr6.png','https://i.imgur.com/5npSt03.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(202,'2004','2004-10-23','East Carolina','Win',51,10,'home',103,'https://i.imgur.com/izGKUWn.png','https://i.imgur.com/Jo5uwnI.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(203,'2004','2004-11-06','Cincinnati','Loss',24,52,'home',103,'https://i.imgur.com/sv679gk.png','https://i.imgur.com/Jo5uwnI.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(204,'2004','2004-11-12','Memphis','Loss',26,30,'road',108,'https://i.imgur.com/1GmSLr6.png','https://i.imgur.com/ixRTrVT.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(205,'2004','2004-11-20','TCU','Loss',17,42,'road',108,'https://i.imgur.com/1GmSLr6.png','https://i.imgur.com/9J9C3ot.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(206,'2004','2004-11-27','UAB','Win',26,21,'home',103,'https://i.imgur.com/wXF1lmX.png','https://i.imgur.com/Jo5uwnI.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(207,'2004','2004-12-04','California','Loss',16,26,'home',103,'https://i.imgur.com/RFEBWwh.png','https://i.imgur.com/Jo5uwnI.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(208,'2004','2004-12-14','North Texas','Win',31,10,'newOrleansBowl',107,'https://i.imgur.com/1GmSLr6.png','https://i.imgur.com/0c4UPZr.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(209,'2003','2003-08-30','California','Loss',2,34,'road',106,'https://i.imgur.com/1GmSLr6.png','https://i.imgur.com/SPt8cVy.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(210,'2003','2003-09-04','UAB','Win',17,12,'road',106,'https://i.imgur.com/1GmSLr6.png','https://i.imgur.com/mqn2CBW.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(211,'2003','2003-09-13','Memphis','Win',32,6,'home',104,'https://i.imgur.com/5D7pByZ.png','https://i.imgur.com/Jo5uwnI.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(212,'2003','2003-09-25','Nebraska','Loss',14,38,'home',104,'https://i.imgur.com/H8Q7UQQ.png','https://i.imgur.com/Jo5uwnI.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(213,'2003','2003-10-04','Cincinnati','Win',22,20,'road',108,'https://i.imgur.com/1GmSLr6.png','https://i.imgur.com/wibOgka.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(214,'2003','2003-10-11','Alabama','Loss',3,17,'road',108,'https://i.imgur.com/1GmSLr6.png','https://i.imgur.com/5npSt03.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(215,'2003','2003-10-25','South Florida','Win',27,6,'home',103,'https://i.imgur.com/cCGCBAM.png','https://i.imgur.com/Jo5uwnI.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(216,'2003','2003-11-01','Louisiana','Win',48,3,'home',104,'https://i.imgur.com/4R5kBrP.png','https://i.imgur.com/Jo5uwnI.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(217,'2003','2003-11-08','Houston','Win',31,10,'road',106,'https://i.imgur.com/1GmSLr6.png','https://i.imgur.com/8X9EFjv.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(218,'2003','2003-11-15','Tulane','Win',28,14,'home',104,'https://i.imgur.com/RKNRWeb.png','https://i.imgur.com/Jo5uwnI.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(219,'2003','2003-11-20','TCU','Win',40,28,'home',103,'https://i.imgur.com/hanZ87t.png','https://i.imgur.com/Jo5uwnI.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(220,'2003','2003-11-29','East Carolina','Win',38,21,'road',106,'https://i.imgur.com/1GmSLr6.png','https://i.imgur.com/kvemGvH.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(221,'2003','2003-12-31','Utah','Loss',0,17,'libertyBowl',105,'https://i.imgur.com/1GmSLr6.png','https://i.imgur.com/bOUmjnA.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(222,'2020','2020-10-24','Liberty','Loss',35,56,'road',4,'https://i.imgur.com/Gai1VS5.png','https://i.imgur.com/gAUKIKE.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(223,'2020','2020-10-31','Rice','Loss',6,30,'home',109,'https://i.imgur.com/6Bbi5un.png','https://i.imgur.com/yvxvdWK.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(224,'2020','2020-11-07','North Alabama','Win',24,13,'home',110,'https://i.imgur.com/bgHl4ip.png','https://i.imgur.com/0ai4GQH.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(225,'2020','2020-11-14','Western Kentucky','Loss',7,10,'road',111,'https://i.imgur.com/9cNA6DF.png','https://i.imgur.com/SRGBkLo.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(226,'2020','2020-11-21','UTSA','Loss',20,23,'home',3,'https://i.imgur.com/KVcdnFy.png','https://i.imgur.com/yvxvdWK.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html'),
	(227,'2020','2020-12-10','Florida Atlantic','Win',45,31,'home',112,'https://i.imgur.com/4HtlGNk.png','https://i.imgur.com/yvxvdWK.png','Southern Miss Football Uniform History','http://southernmissunis.blogspot.com/2018/12/southern-miss-football-uniforms-2003.html');

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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;

LOCK TABLES `helmet` WRITE;
/*!40000 ALTER TABLE `helmet` DISABLE KEYS */;

INSERT INTO `helmet` (`helmetID`, `hColor`, `hName`, `hImage`)
VALUES
	(1,'black','2015 gloss black helmets','https://i.imgur.com/SmluK1a.png'),
	(2,'black','2019 gloss black WS helmets','https://i.imgur.com/AaAGUet.png'),
	(3,'black','2003 gloss black helmets','https://i.imgur.com/NkHV4fL.png'),
	(4,'black','2018 gloss black america helmets','https://i.imgur.com/UN6GSjZ.png'),
	(5,'black','1980 gloss black double stripe helmets','https://i.imgur.com/myrVy4o.png'),
	(6,'black','2018 gloss black 15S helmets','https://i.imgur.com/Mr9Xz1X.png'),
	(7,'black','1980 gloss black single stripe helmets','https://i.imgur.com/pzq6suo.png'),
	(8,'black','2018 gloss black NE helmets','https://i.imgur.com/4P8C9I6.png'),
	(9,'black','1997 gloss black helmets','https://i.imgur.com/o0cIgZh.png'),
	(10,'black','2017 gloss black NE helmets','https://i.imgur.com/7b5vVRJ.png'),
	(11,'black','2017 gloss black eagle helmets','https://i.imgur.com/3kmDVn5.png'),
	(12,'black','2017 gloss black blackout helmets','https://i.imgur.com/H6d0sXX.png'),
	(13,'black','2017 gloss black 03S helmets','https://i.imgur.com/03UzqD7.png'),
	(14,'black','2017 matte black 03S helmets','https://i.imgur.com/6cHGFLV.png'),
	(15,'gold','2013 gold helmets','https://i.imgur.com/thVFdU5.png'),
	(16,'gold','2012 gold helmets','https://i.imgur.com/2aXxnxD.png'),
	(17,'black','2012 gloss black america helmets','https://i.imgur.com/ICi3PF2.png'),
	(18,'black','2011 matte black A helmets','https://i.imgur.com/91NmZPR.png'),
	(19,'black','2011 matte black B helmets','https://i.imgur.com/Qpr2Jz4.png'),
	(20,'black','2011 matte black C helmets','https://i.imgur.com/p7obfwk.png'),
	(21,'black','2011 matte black D helmets','https://i.imgur.com/OwzGSSM.png'),
	(22,'black','2011 matte black E helmets','https://i.imgur.com/PSn7sei.png'),
	(23,'black','2011 matte black F helmets','https://i.imgur.com/pvO8aJt.png'),
	(24,'white','2021 white helmets','https://i.imgur.com/8KSA5cK.png');

/*!40000 ALTER TABLE `helmet` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table jersey
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jersey`;

CREATE TABLE `jersey` (
  `jerseyID` int(11) NOT NULL,
  `jColor` varchar(30) DEFAULT NULL,
  `jName` varchar(50) DEFAULT NULL,
  `jImage` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`jerseyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `jersey` WRITE;
/*!40000 ALTER TABLE `jersey` DISABLE KEYS */;

INSERT INTO `jersey` (`jerseyID`, `jColor`, `jName`, `jImage`)
VALUES
	(0,NULL,NULL,NULL),
	(1,'black','2018 black B jerseys','https://i.imgur.com/BD69MV8.png'),
	(2,'heather gray','2019 heather gray jerseys','https://i.imgur.com/nHtTkO9.png'),
	(3,'black','2018 black A jerseys','https://i.imgur.com/tZ6UBew.png'),
	(4,'white','2018 white jersey','https://i.imgur.com/DePHyK8.png'),
	(5,'gold','2019 gold jersey','https://i.imgur.com/JyjLpWR.png'),
	(6,'white','2018 white jersey (2020 armed forces bowl)','https://i.imgur.com/hmOouTE.png'),
	(7,'gold','2017 gold jersey (2017 independence bowl)','https://i.imgur.com/wt1rsS4.png'),
	(8,'white','2015 white jersey (2016 new orleans bowl)','https://i.imgur.com/sdXCbfj.png'),
	(9,'black','2015 black jersey (2015 heart of dallas bowl)','https://i.imgur.com/becHZ7Z.png'),
	(10,'black','2017 black 1997 throwback jersey','https://i.imgur.com/2TLhhNe.png'),
	(11,'gold','2017 gold jersey','https://i.imgur.com/KFMRdZk.png'),
	(12,'white','2017 white jersey','https://i.imgur.com/1XQTW0d.png'),
	(13,'black','2017 black jersey','https://i.imgur.com/eUDidU6.png'),
	(14,'white','2015 white jersey','https://i.imgur.com/VE41kwE.png'),
	(15,'black','2015 black jersey','https://i.imgur.com/c70ZT2B.png'),
	(16,'gold','2014 gold jersey','https://i.imgur.com/AucSj4s.png'),
	(17,'white','2014 white jersey','https://i.imgur.com/OyjkfoE.png'),
	(18,'black','2014 black jersey','https://i.imgur.com/obez31x.png'),
	(19,'black','2014 black 44 jersey','https://i.imgur.com/51fsuqg.png'),
	(20,'gold','2013 gold jersey','https://i.imgur.com/lKfmdeM.png'),
	(21,'white','2013 white jersey','https://i.imgur.com/bJ9CM1p.png'),
	(22,'black','2013 black jersey','https://i.imgur.com/gOgwipg.png'),
	(23,'black','2010 black jersey (2011 hawaii bowl)','https://i.imgur.com/dWvXjYk.png'),
	(24,'white','2010 white jersey (2010 beef o bradys bowl)','https://i.imgur.com/jjmEpe2.png'),
	(25,'white','2009 white jersey (2009 new orleans bowl)','https://i.imgur.com/pZhSyAb.png'),
	(26,'white','2012 white throwback jerseys','https://i.imgur.com/SIfzoRQ.png'),
	(27,'white','2012 white jerseys','https://i.imgur.com/Gz9EUW6.png'),
	(28,'black','2012 black jerseys','https://i.imgur.com/FcSJI2T.png'),
	(29,'white','2010 white jerseys','https://i.imgur.com/KX6ybac.png'),
	(30,'black','2010 black jerseys','https://i.imgur.com/oJoOlIj.png'),
	(31,'gold','2009 gold jerseys','https://i.imgur.com/LW3Yo3Y.png'),
	(32,'white','2009 white jerseys','https://i.imgur.com/uboDHK3.png'),
	(33,'black','2009 black jerseys','https://i.imgur.com/yOAbVzb.png'),
	(34,'gold','2008 gold jerseys (2008 new orleans bowl)','https://i.imgur.com/KA3iRo2.png'),
	(35,'white','2006 white jerseys (2007 papajohns bowl)','https://i.imgur.com/9KXBGSm.png'),
	(36,'black','2006 black jerseys (2006 gmac bowl)','https://i.imgur.com/ypJzSs4.png'),
	(37,'white','2003 white jerseys (new orleans bowl)','https://i.imgur.com/6TcPDrt.png'),
	(38,'white','2003 white jerseys (2003 liberty bowl)','https://i.imgur.com/JmMFQAY.png'),
	(39,'gold','2008 gold jerseys','https://i.imgur.com/4FQWafw.png'),
	(40,'white','2006 white jerseys','https://i.imgur.com/Gcmb33j.png'),
	(41,'black','2006 black jerseys','https://i.imgur.com/eJJ1zII.png'),
	(42,'white','2003 white jerseys','https://i.imgur.com/fWmpwSZ.png'),
	(43,'black','2003 black jerseys','https://i.imgur.com/02hwsj7.png'),
	(44,'black','2020 black B jerseys','https://i.imgur.com/itVGHmz.png'),
	(45,'black','2020 black A jerseys','https://i.imgur.com/E1B92Ij.png'),
	(46,'heather gray','2020 heather gray jerseys','https://i.imgur.com/7mHGP2q.png'),
	(47,'gold','2020 gold jerseys','https://i.imgur.com/VJSUuIi.png'),
	(48,'white','2020 white jerseys','https://i.imgur.com/q7dNVcG.png'),
	(49,'black','2021 black jerseys','https://i.imgur.com/CjzyInL.png'),
	(50,'white','2021 white jerseys','https://i.imgur.com/Zq24TSu.png'),
	(51,'gold','2021 gold jerseys','https://i.imgur.com/8L0YpCw.png');

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
	('',NULL,NULL,NULL),
	('Alabama','SEC','#91002a','white'),
	('Alcorn State','FCS','#b79e6a','#491e6a'),
	('Appalachian St.','Sun Belt','black','#ffd600'),
	('Arkansas','SEC','#992231','white'),
	('Arkansas State','Sun Belt','black','#d02030'),
	('Auburn','SEC','#092647','#e85e33'),
	('Austin Peay','FCS','#bb032b','white'),
	('Boise State','Mountian West','#003d8f','#f3552e'),
	('California','Pac 12','#0f1d41','#fec524'),
	('Charlotte','Conference USA','#00573a','white'),
	('Cincinnati','American','black','#e51937'),
	('East Carolina','American','#4a2d7e','#f7c44b'),
	('FIU','Conference USA','#02244a','#cea73b'),
	('Florida','SEC','#273991','#ea2600'),
	('Florida Atlantic','Conference USA','#1e3160','#c12037'),
	('Florida State','ACC','#d2b885','#79233a'),
	('Grambling','FCS','black','#eead00'),
	('Houston','American','#ca1528','white'),
	('Jackson State','FCS','#002147','white'),
	('Kansas','Big 12','#0554ba','#d8091b'),
	('Kentucky','SEC','#00419c','white'),
	('Liberty','Independent','#002244','#d2001c'),
	('Louisiana','Sun Belt','#a60d1d','white'),
	('Louisiana Tech','Conference USA','#cb333b','#003087'),
	('Louisville','ACC','#ca0e33','white'),
	('LSU','SEC','#f4ac3d','#2c1359'),
	('Marshall','Conference USA','#419756','white'),
	('McNeese St.','FCS','#07569e','#fcd209'),
	('Memphis','American','#144bbf','white'),
	('Middle Tennessee','Conference USA','#a8a8a8','#1666d3'),
	('Mississippi State','SEC','#431724','white'),
	('Navy','American','#021743','#a28b39'),
	('NC State','ACC','#b51231','white'),
	('Nebraska','Big Ten','#e41c38','white'),
	('Nevada','Mountain West','#a8adb4','#011e41'),
	('North Alabama','FCS','#4f2d7f','#b5a268'),
	('North Texas','Conference USA','#079446','white'),
	('Ohio','MAC','#0e5d4b','white'),
	('Old Dominion','Conference USA','#003a69','#b0b6bb'),
	('Prairie View','FCS','#4f2784','#ffc323'),
	('Rice','Conference USA','#061838','white'),
	('Savannah St.','D-II','#011e96','#ff5a02'),
	('SE Louisiana','FCS','#1a704d','#deb02e'),
	('SMU','American','#005dab','#cc0035'),
	('South Alabama','Sun Belt','#13182e','#b8143f'),
	('South Carolina','SEC','#6f1028','white'),
	('South Florida','American','#005740','#c0ac6e'),
	('Southern','FCS','#44b0e6','#ffc700'),
	('TCU','Big 12','#502e84','white'),
	('Tennessee','SEC','#e9863d','white'),
	('Texas State','Sun Belt','#ac9156','#571c1f'),
	('Troy','Sun Belt','#9e0531','#b3b5b8'),
	('Tulane','American','#006647','white'),
	('Tulsa','American','#003382','#fe0000'),
	('UAB','Conference USA','#ba9c60','#034f35'),
	('UCF','American','#be9446','black'),
	('UL Monroe','Sun Belt','#7b1627','#f9b82d'),
	('UT Martin','FCS','#002649','#f8521c'),
	('Utah','Pac 12','#c32034','white'),
	('UTEP','Conference USA','#e95a0f','#002d62'),
	('UTSA','Conference USA','#002a61','#ff6d00'),
	('Virginia','ACC','#f14d24','#091f40'),
	('Virginia Tech','ACC','#43020e','#ff6600'),
	('Washington','Pac 12','#3c2e81','#e9bc77'),
	('Western Kentucky','Conference USA','#b01e24','white');

/*!40000 ALTER TABLE `opponent` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pants
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pants`;

CREATE TABLE `pants` (
  `pantsID` int(11) NOT NULL,
  `pColor` varchar(30) DEFAULT NULL,
  `pName` varchar(50) DEFAULT NULL,
  `pImage` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pantsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `pants` WRITE;
/*!40000 ALTER TABLE `pants` DISABLE KEYS */;

INSERT INTO `pants` (`pantsID`, `pColor`, `pName`, `pImage`)
VALUES
	(1,'black','2015 black pants','https://i.imgur.com/x4Nh7eW.png'),
	(2,'heather gray','2019 heather gray pants','https://i.imgur.com/Bmbt7Hx.png'),
	(3,'gold','2019 gold pants','https://i.imgur.com/ubZStY0.png'),
	(4,'white','2016 white pants','https://i.imgur.com/K7Vm1PL.png'),
	(5,'gold','2017 gold pants','https://i.imgur.com/aq9LBbn.png'),
	(6,'white','2018 white pants','https://i.imgur.com/YWNm9Tp.png'),
	(7,'old gold','2017 old gold pants','https://i.imgur.com/C1zGZyy.png'),
	(8,'white','2013 white pants','https://i.imgur.com/kuAAVqn.png'),
	(9,'black','2013 black pants','https://i.imgur.com/MMHjOJX.png'),
	(10,'gold','2012 gold pants','https://i.imgur.com/X7a4yiG.png'),
	(11,'white','2009 white pants','https://i.imgur.com/PxdCE6t.png'),
	(12,'gold','2009 gold pants','https://i.imgur.com/VzIyq3p.png'),
	(13,'black','2009 black pants','https://i.imgur.com/vE0TRcC.png'),
	(14,'white','2006 white pants','https://i.imgur.com/RFpeSTf.png'),
	(15,'gold','2003 gold pants','https://i.imgur.com/8ypT9uY.png'),
	(16,'black','2003 black pants','https://i.imgur.com/Nmbvpfr.png'),
	(17,'black','2021 black pants','https://i.imgur.com/ABiFDMv.png'),
	(18,'white','2021 white pants','https://i.imgur.com/nmxv3rS.png'),
	(19,'gold','2021 gold pants','https://i.imgur.com/zN9zpzJ.png');

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
  `cusa_wins` int(11) DEFAULT NULL,
  `cusa_losses` int(11) DEFAULT NULL,
  PRIMARY KEY (`yr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `season` WRITE;
/*!40000 ALTER TABLE `season` DISABLE KEYS */;

INSERT INTO `season` (`yr`, `head_coach`, `wins`, `losses`, `cusa_wins`, `cusa_losses`)
VALUES
	('2003','Jeff Bower',9,4,8,0),
	('2004','Jeff Bower',7,5,5,3),
	('2005','Jeff Bower',7,5,5,3),
	('2006','Jeff Bower',9,5,6,3),
	('2007','Jeff Bower',7,6,5,3),
	('2008','Larry Fedora',7,6,4,4),
	('2009','Larry Fedora',7,6,5,3),
	('2010','Larry Fedora',8,5,5,3),
	('2011','Larry Fedora',12,2,6,2),
	('2012','Ellis Johnson',0,12,0,8),
	('2013','Todd Monken',1,11,1,7),
	('2014','Todd Monken',3,9,1,7),
	('2015','Todd Monken',9,5,7,1),
	('2016','Jay Hopson',7,6,4,4),
	('2017','Jay Hopson',8,5,6,2),
	('2018','Jay Hopson',6,5,5,3),
	('2019','Jay Hopson',7,6,5,3),
	('2020','Tim Billings',3,7,2,4),
	('2021','Will Hall',0,0,0,0);

/*!40000 ALTER TABLE `season` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
