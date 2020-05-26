-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 25, 2020 at 07:45 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `baseballTableData`
--

-- --------------------------------------------------------

--
-- Table structure for table `uniform`
--

CREATE TABLE `uniform` (
  `uniformID` int(11) NOT NULL,
  `hatID` int(11) DEFAULT NULL,
  `jerseyID` int(11) DEFAULT NULL,
  `pantsColor` varchar(30) DEFAULT NULL,
  `uName` varchar(100) DEFAULT NULL,
  `uImage` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uniform`
--

INSERT INTO `uniform` (`uniformID`, `hatID`, `jerseyID`, `pantsColor`, `uName`, `uImage`) VALUES
(1, 1, 1, 'gray', '2020 gray \"state\" script maroon/gray/gray jordan', 'https://i.imgur.com/sExHITV.png'),
(2, 1, 4, 'white', '2020 maroon 85 over white double stripe maroon/maroon/white macleod', 'https://i.imgur.com/ClJ1LEc.png'),
(3, 1, 4, 'white pinstripe', '2020 maroon 85 over white pins maroon/maroon/whitepins price', 'https://i.imgur.com/xoMuGM8.png'),
(4, 1, 3, 'white', '2020 white 85 double stripe maroon/white/white westburg', 'https://i.imgur.com/9tOMNnk.png'),
(5, 1, 2, 'white', '2020 white state single stripe maroon/white/white bednar', 'https://i.imgur.com/PiYHSU2.png'),
(6, 1, 6, 'white pinstripe', '2020 white \"state\" pinstripes maroon/whitepins/whitepins hatcher', 'https://i.imgur.com/p8v3MZE.png'),
(7, 2, 5, 'black', '2020 black 85 over black black/black/black fescue', 'https://i.imgur.com/EKVmJmK.png'),
(8, 1, 3, 'white', '2019 postseason white 85 single stripe maroon/white/white halter', 'https://i.imgur.com/QHoBAAk.png'),
(9, 1, 4, 'gray', '2019 postseason maroon 85 over gray maroon/maroon/gray small', 'https://i.imgur.com/8WvIt5t.png'),
(10, 1, 3, 'white', '2019 postseason white 85 single stripe maroon/white/white jordan', 'https://i.imgur.com/pE0y5jp.png'),
(11, 1, 2, 'white', '2019 postseason white state single stripe maroon/white/white jordan', 'https://i.imgur.com/JT5YR0n.png'),
(12, 1, 4, 'white', '2019 postseason maroon 85 over white single stripe maroon/maroon/white allen', 'https://i.imgur.com/hAsZHiZ.png'),
(13, 2, 5, 'black', '2019 postseason black 85 over black black/black/black mangum', 'https://i.imgur.com/Wi4HYaV.png'),
(14, 2, 5, 'black', '2019 postseason black 85 over black black/black/black skelton', 'https://i.imgur.com/Odv7QJ2.png'),
(15, 2, 5, 'black', '2019 cws black 85 over black black/black/black gilbert', 'https://i.imgur.com/Oxbo8pI.png'),
(16, 1, 3, 'white', '2019 cws white 85 single stripe maroon/white/white mangum', 'https://i.imgur.com/tGg1qtw.png'),
(17, 1, 4, 'gray', '2019 cws maroon 85 over gray maroon/maroon/gray ginn', 'https://i.imgur.com/4Txlvfc.png'),
(18, 1, 4, 'white', '2019 maroon 85 over white single stripe maroon/maroon/white small', 'https://i.imgur.com/nRS9nyU.png'),
(19, 1, 4, 'gray', '2019 maroon 85 over gray maroon/maroon/gray gordon', 'https://i.imgur.com/2As2Zuy.png'),
(20, 1, 3, 'white', '2019 white 85 single stripe maroon/white/white foscue', 'https://i.imgur.com/P4QC03h.png'),
(21, 1, 2, 'white', '2019 white state single stripe maroon/white/white mangum', 'https://i.imgur.com/K8Yra0l.png'),
(22, 1, 6, 'white pinstripe', '2019 white \"state\" pinstripes maroon/whitepins/whitepins plumlee', 'https://i.imgur.com/n7QiHPu.png'),
(23, 1, 14, 'gray pinstripe', '2019 gray ms pinstripes maroon/graypins/graypins allen', 'https://i.imgur.com/EFySRyJ.png'),
(24, 1, 7, 'gray', '2019 gray ms vests maroon/gray/gray ginn', 'https://i.imgur.com/MJad96D.png'),
(25, 2, 5, 'black', '2019 black 85 over black black/black/black macnamee', 'https://i.imgur.com/yJ6u2zu.png'),
(26, 1, 8, 'white', '2019 alex wilcox teal single stripe maroon/teal/white skelton', 'https://i.imgur.com/oW5wFyT.png'),
(27, 1, 10, 'white', '2018 postseason maroon 85 over white single stripe maroon/maroon/white skelton', 'https://i.imgur.com/wDLQGXW.png'),
(28, 3, 11, 'black', '2018 postseason black 85 over black black/black/black mangum', 'https://i.imgur.com/9CW6gCQ.png'),
(29, 1, 14, 'gray pinstripe', '2018 postseason gray ms pinstripes maroon/graypins/graypins france', 'https://i.imgur.com/KqN1A0u.png'),
(30, 1, 10, 'white', '2018 postseason maroon 85 over white single stripe maroon/maroon/white macnamee', 'https://i.imgur.com/VYLucjl.png'),
(31, 1, 14, 'gray pinstripe', '2018 postseason gray ms pinstripes maroon/graypins/graypins alexander', 'https://i.imgur.com/RBjdHBX.png'),
(32, 1, 13, 'white pinstripe', '2018 cws white \"state\" pinstripes maroon/whitepins/whitepins Alexander', 'https://i.imgur.com/WfTL3ii.png'),
(33, 1, 14, 'gray pinstripe', '2018 cws gray ms pinstripes maroon/graypins/graypins westburg', 'https://i.imgur.com/Trqm9BS.png'),
(34, 1, 10, 'white', '2018 cws maroon 85 over white single stripe maroon/maroon/white Stovall', 'https://i.imgur.com/lTjoTqS.png'),
(35, 3, 11, 'black', '2018 cws black 85 over black black/black/black gordon', 'https://i.imgur.com/QF1mbqP.png'),
(36, 1, 10, 'white', '2018 maroon 85 over white single stripe maroon/maroon/white allen', 'https://i.imgur.com/rc2IEOg.png'),
(37, 1, 10, 'white pinstripe', '2018 maroon 85 over white pins maroon/maroon/whitepins pilkington', 'https://i.imgur.com/ysbv6pl.png'),
(38, 1, 12, 'white pinstripe', '2018 maroon ms over white pins maroon/maroon/whitepins stovall', 'https://i.imgur.com/vrzNZ2p.png'),
(39, 1, 9, 'white', '2018 white 85 single stripe maroon/white/white mangum', 'https://i.imgur.com/i6Npxm3.png'),
(40, 1, 13, 'white pinstripe', '2018 white \"state\" pinstripes maroon/whitepins/whitepins macnamee', 'https://i.imgur.com/tO5dKWl.png'),
(41, 1, 14, 'gray pinstripe', '2018 gray ms pinstripes maroon/graypins/graypins small', 'https://i.imgur.com/wCWvfxs.png'),
(42, 1, 11, 'white', '2018 black 85 over white single stripe maroon/black/white self', 'https://i.imgur.com/JORl5wa.png'),
(43, 3, 11, 'black', '2018 black 85 over black black/black/black france', 'https://i.imgur.com/6Q3FD3N.png'),
(44, 1, 17, 'white', '2017 postseason maroon ms over white single stripe maroon/maroon/white rooker', 'https://i.imgur.com/PcAJ1Pq.png'),
(45, 1, 17, 'white', '2017 postseason maroon ms over white single stripe maroon/maroon/white pilkington', 'https://i.imgur.com/WmRlstT.png'),
(46, 1, 17, 'white', '2017 postseason maroon ms over white single stripe maroon/maroon/white gordon', 'https://i.imgur.com/yKY6Xz2.png'),
(47, 1, 15, 'white', '2017 postseason inverted white 85 single stripe maroon/white/white stovall', 'https://i.imgur.com/ekpmlWq.png'),
(48, 1, 15, 'white', '2017 postseason inverted white 85 single stripe maroon/white/white billingsley', 'https://i.imgur.com/a1k874Y.png'),
(49, 1, 15, 'white', '2017 postseason inverted white 85 single stripe maroon/white/white rooker', 'https://i.imgur.com/YHfGYGl.png'),
(50, 1, 17, 'white', '2017 postseason maroon ms over white single stripe maroon/maroon/white mangum', 'https://i.imgur.com/AhGOasO.png'),
(51, 1, 15, 'white', '2017 postseason inverted white 85 single stripe maroon/white/white bragg', 'https://i.imgur.com/zl2Nk2x.png'),
(52, 1, 17, 'white', '2017 maroon ms over white single stripe maroon/maroon/white brown', 'https://i.imgur.com/TFOotKY.png'),
(53, 1, 17, 'white pinstripe', '2017 maroon ms over white pins maroon/maroon/whitepins gridley', 'https://i.imgur.com/RteUbON.png'),
(54, 1, 17, 'gray pinstripe', '2017 maroon ms over gray pins maroon/maroon/graypins pilkington', 'https://i.imgur.com/3MFm2Za.png'),
(55, 1, 15, 'white', '2017 inverted white 85 single stripe maroon/white/white mangum', 'https://i.imgur.com/i2WiDyc.png'),
(56, 1, 13, 'white pinstripe', '2017 white \"state\" pinstripes maroon/whitepins/whitepins rooker', 'https://i.imgur.com/pFyflJq.png'),
(57, 1, 14, 'gray pinstripe', '2017 gray ms pinstripes maroon/graypins/graypins self', 'https://i.imgur.com/RfYVEoX.png'),
(58, 1, 18, 'white', '2016 postseason white ms single stripe maroon/white/white collins', 'https://i.imgur.com/exKnX92.png'),
(59, 1, 17, 'white', '2016 postseason maroon ms over white single stripe maroon/maroon/white gridley', 'https://i.imgur.com/R1xeYnD.png'),
(60, 1, 17, 'white', '2016 postseason maroon ms over white single stripe maroon/maroon/white lowe', 'https://i.imgur.com/r8wyyPJ.png'),
(61, 1, 17, 'white', '2016 postseason maroon ms over white no stripe maroon/maroon/white rooker', 'https://i.imgur.com/mPWX5G1.png'),
(62, 1, 14, 'gray pinstripe', '2016 postseason gray ms pinstripes maroon/graypins/graypins collins', 'https://i.imgur.com/CalSyxB.png'),
(63, 1, 15, 'white', '2016 postseason inverted white 85 single stripe maroon/white/white houston', 'https://i.imgur.com/kWGG6HY.png'),
(64, 1, 14, 'gray pinstripe', '2016 postseason gray ms pinstripes maroon/graypins/graypins sexton', 'https://i.imgur.com/Z1zqQvT.png'),
(65, 1, 17, 'white', '2016 maroon ms over white single stripe maroon/maroon/white hudson', 'https://i.imgur.com/IaO57I2.png'),
(66, 1, 18, 'white', '2016 white ms single stripe maroon/white/white sexton', 'https://i.imgur.com/KPDnX3i.png'),
(67, 1, 15, 'white', '2016 inverted white 85 single stripe maroon/white/white robson', 'https://i.imgur.com/VFh8mGu.png'),
(68, 1, 19, 'white', '2016 black 85 over white single stripe with maroon hat maroon/black/white collins', 'https://i.imgur.com/xTHyA24.png'),
(69, 1, 20, 'white', '2016 digital camo over white single stripe maroon/camo/white rooker', 'https://i.imgur.com/rnRdl0r.png'),
(70, 1, 17, 'white', '2016 maroon ms over white no stripe maroon/maroon/white hudson', 'https://i.imgur.com/dvyre6E.png'),
(71, 1, 18, 'white', '2016 white ms no stripe maroon/white/white sexton', 'https://i.imgur.com/dAfDReU.png'),
(72, 6, 18, 'white', '2016 white ms with white panel hat no stripe maroonwhitepanel/white/white humphreys', 'https://i.imgur.com/BZQFUeM.png'),
(73, 1, 15, 'white', '2016 inverted white 85 no stripe maroon/white/white robson', 'https://i.imgur.com/vRjYAMe.png'),
(74, 1, 14, 'gray pinstripe', '2016 gray ms pinstripes maroon/graypins/graypins mangum', 'https://i.imgur.com/0QXy8dZ.png'),
(75, 1, 19, 'white', '2016 black 85 over white no stripe with maroon hat maroon/black/white collins', 'https://i.imgur.com/n7Tkd6J.png'),
(76, 4, 19, 'white', '2016 black 85 over white no stripe with black hat black/black/white kruger', 'https://i.imgur.com/rMMQcwt.png'),
(77, 5, 16, 'white', '2016 mossy oak camo over white no stripe camo/camo/white lowe', 'https://i.imgur.com/dwXPPNv.png'),
(78, 1, 20, 'white', '2016 digital camo over white no stripe maroon/camo/white rooker', 'https://i.imgur.com/spt3XxG.png'),
(79, 1, 17, 'white', '2015 maroon ms over white single stripe maroon/maroon/white robson', 'https://i.imgur.com/rIDVvxy.png'),
(80, 1, 17, 'white', '2015 maroon ms over white no stripe maroon/maroon/white robson', 'https://i.imgur.com/dROD8k1.png'),
(81, 1, 17, 'white pinstripe', '2015 maroon ms over white pins maroon/maroon/whitepins robson', 'https://i.imgur.com/LxtSUBf.png'),
(82, 1, 17, 'gray', '2015 maroon ms over gray maroon/maroon/gray robson', 'https://i.imgur.com/GgKid8g.png'),
(83, 1, 22, 'white', '2015 maroon 85 over white single stripe maroon/maroon/white rea', 'https://i.imgur.com/CzbWIAg.png'),
(84, 1, 22, 'white pinstripe', '2015 maroon 85 over white pins maroon/maroon/whitepins rea', 'https://i.imgur.com/vnc3Vyy.png'),
(85, 1, 22, 'gray', '2015 maroon 85 over gray maroon/maroon/gray rea', 'https://i.imgur.com/jW2IRF2.png'),
(86, 1, 26, 'cream', '2015 cream ms with maroon hat maroon/cream/cream gridley', 'https://i.imgur.com/1VKVxvO.png'),
(87, 10, 26, 'cream', '2015 cream ms with cream hat cream/cream/cream gridley', 'https://i.imgur.com/e1yqEnS.png'),
(88, 1, 18, 'white', '2015 white ms single stripe maroon/white/white heck', 'https://i.imgur.com/DR8rMzL.png'),
(89, 1, 21, 'gray', '2015 gray \"mississippi state\" script maroon/gray/gray brown', 'https://i.imgur.com/fxrsd5a.png'),
(90, 1, 23, 'white pinstripe', '2015 white ms pinstripes maroon/whitepins/whitepins britton', 'https://i.imgur.com/lhyJDIL.png'),
(91, 7, 19, 'white', '2015 black 85 over white no stripe blackwhitepanel/black/black holland', 'https://i.imgur.com/JsaYO4J.png'),
(92, 7, 19, 'black', '2015 black 85 over black blackwhitepanel/black/black holland', 'https://i.imgur.com/FGtssLJ.png'),
(93, 9, 25, 'wool', '2015 wool fauxbacks maroon/wool/wool mitchell', 'https://i.imgur.com/TpK26wd.png'),
(94, 8, 24, 'white', '2015 white st pat\'s day no stripe greenwhitepanel/white/white laster', 'https://i.imgur.com/0wu059Y.png'),
(95, 1, 20, 'white', '2015 digital camo over white single stripe maroon/camo/white humphreys', 'https://i.imgur.com/EmaT459.png'),
(96, 1, 34, 'gray', '2014 postseason maroon 85 over gray maroon/maroon/gray heck', 'https://i.imgur.com/iXsr1CD.png'),
(97, 1, 26, 'cream', '2014 postseason cream ms with maroon hat maroon/cream/cream bradford', 'https://i.imgur.com/RIrZLei.png'),
(98, 1, 33, 'white pinstripe', '2014 postseason maroon ms over white pins maroon/maroon/whitepins vickerson', 'https://i.imgur.com/qt120Pu.png'),
(99, 1, 33, 'gray', '2014 postseason maroon ms over gray maroon/maroon/gray holder', 'https://i.imgur.com/cNvka3u.png'),
(100, 1, 33, 'white pinstripe', '2014 postseason maroon ms over white pins maroon/maroon/whitepins pirtle', 'https://i.imgur.com/5bqUQW5.png'),
(101, 1, 34, 'white', '2014 postseason maroon 85 over white double stripe maroon/maroon/white lindgren', 'https://i.imgur.com/sTH8fE8.png'),
(102, 1, 33, 'white', '2014 maroon ms over white single stripe maroon/maroon/white mitchell', 'https://i.imgur.com/iHUtU3t.png'),
(103, 1, 33, 'white pinstripe', '2014 maroon ms over white pins maroon/maroon/whitepins mitchell', 'https://i.imgur.com/vkVy1R0.png'),
(104, 1, 33, 'gray', '2014 maroon ms over gray maroon/maroon/gray mitchell', 'https://i.imgur.com/yjdH7Jr.png'),
(105, 1, 34, 'white', '2014 maroon 85 over white double stripe maroon/maroon/white holder', 'https://i.imgur.com/x2U03IH.png'),
(106, 1, 34, 'white', '2014 maroon 85 over white single stripe maroon/maroon/white holder', 'https://i.imgur.com/oS2bSUL.png'),
(107, 1, 34, 'white pinstripe', '2014 maroon 85 over white pins maroon/maroon/whitepins holder', 'https://i.imgur.com/zO0MAwH.png'),
(108, 1, 34, 'gray', '2014 maroon 85 over gray maroon/maroon/gray holder', 'https://i.imgur.com/CLUebYL.png'),
(109, 1, 32, 'white', '2014 white 85 double stripe maroon/white/white pirtle', 'https://i.imgur.com/EdIS5AJ.png'),
(110, 12, 32, 'white', '2014 white 85 with camo hat double stripe camo/white/white pirtle', 'https://i.imgur.com/56mfQRi.png'),
(111, 1, 35, 'white', '2014 white ms vests single stripe maroon/white/white lindgren', 'https://i.imgur.com/R7DWTXy.png'),
(112, 1, 35, 'white', '2014 white ms vests double stripe maroon/white/white lindgren', 'https://i.imgur.com/imIgaEi.png'),
(113, 1, 31, 'white pinstripe', '2014 white ms pinstripes maroon/whitepins/whitepins lindgren', 'https://i.imgur.com/putuX3j.png'),
(114, 1, 26, 'cream', '2014 cream ms with maroon hat maroon/cream/cream collins', 'https://i.imgur.com/oBYaAQB.png'),
(115, 10, 26, 'cream', '2014 cream ms with cream hat cream/cream/cream heck', 'https://i.imgur.com/aPxys6s.png'),
(116, 1, 36, 'white', '2014 black ms over white single stripe maroon/black/white detz', 'https://i.imgur.com/yvBmeTI.png'),
(117, 1, 36, 'white', '2014 black ms over white double stripe maroon/black/white detz', 'https://i.imgur.com/LNoCyNG.png'),
(118, 1, 36, 'white pinstripe', '2014 black ms over white pins maroon/black/whitepins bracewell', 'https://i.imgur.com/1zLPv5f.png'),
(119, 1, 36, 'gray', '2014 black ms over gray maroon/black/gray bradford', 'https://i.imgur.com/7JVmjzV.png'),
(120, 1, 27, 'white', '2014 white hail state maroon/white/white britton', 'https://i.imgur.com/ZDQIwut.png'),
(121, 1, 28, 'gray', '2014 gray hail state maroon/gray/gray brown', 'https://i.imgur.com/JGXXSDd.png'),
(122, 1, 30, 'white', '2014 adidas rainbow over white single stripe maroon/white/white rea', 'https://i.imgur.com/aXEfkXk.png'),
(123, 1, 30, 'white', '2014 adidas rainbow over white double stripe maroon/white/white rea', 'https://i.imgur.com/Cq9Mj04.png'),
(124, 1, 30, 'white pinstripe', '2014 adidas rainbow over white pins maroon/white/whitepins vickerson', 'https://i.imgur.com/Ue4cy8C.png'),
(125, 11, 29, 'white', '2014 white pink mother\'s day double stripe maroon/white/white armstrong', 'https://i.imgur.com/RF2pJ7L.png'),
(126, 1, 32, 'white', '2013 postseason white 85 double stripe maroon/white/white slauter', 'https://i.imgur.com/iOFfaB5.png'),
(127, 1, 34, 'gray', '2013 postseason maroon 85 over gray maroon/maroon/gray rea', 'https://i.imgur.com/BS6n06H.png'),
(128, 1, 34, 'gray', '2013 postseason maroon 85 over gray maroon/maroon/gray frazier', 'https://i.imgur.com/5y6YV8H.png'),
(129, 1, 33, 'white', '2013 postseason maroon ms over white pins maroon/maroon/whitepins renfroe', 'https://i.imgur.com/761OGc1.png'),
(130, 1, 33, 'white', '2013 postseason maroon ms over white single stripe maroon/maroon/white graveman', 'https://i.imgur.com/FMmlvPr.png'),
(131, 1, 34, 'gray', '2013 postseason maroon 85 over gray maroon/maroon/gray mitchell', 'https://i.imgur.com/i4TiL8L.png'),
(132, 1, 34, 'white', '2013 postseason maroon 85 over white double stripe maroon/maroon/white frost', 'https://i.imgur.com/vF8uIp7.png'),
(133, 1, 33, 'white', '2013 postseason maroon ms over white single stripe maroon/maroon/white girodo', 'https://i.imgur.com/rblYiBO.png'),
(134, 1, 33, 'white', '2013 cws maroon ms over white single stripe maroon/maroon/white holder', 'https://i.imgur.com/QKQeMNM.png'),
(135, 1, 34, 'white pinstripe', '2013 cws maroon 85 over white pins maroon/maroon/whitepins girodo', 'https://i.imgur.com/cs9EhMz.png'),
(136, 1, 31, 'white pinstripe', '2013 cws white ms pinstripes maroon/whitepins/whitepins renfroe', 'https://i.imgur.com/6pITuYU.png'),
(137, 1, 31, 'white pinstripe', '2013 cws white ms pinstripes maroon/whitepins/whitepins pirtle', 'https://i.imgur.com/X6kIx5v.png'),
(138, 1, 34, 'gray', '2013 cws maroon 85 over gray maroon/maroon/gray frazier', 'https://i.imgur.com/ce2Gbm2.png'),
(139, 1, 33, 'white', '2013 maroon ms over white single stripe maroon/maroon/white mitchell', 'https://i.imgur.com/FzMPYoR.png'),
(140, 1, 33, 'white pinstripe', '2013 maroon ms over white pins maroon/maroon/whitepins fitts', 'https://i.imgur.com/rcBJFKT.png'),
(141, 1, 33, 'gray', '2013 maroon ms over gray maroon/maroon/gray graveman', 'https://i.imgur.com/UoLBfpl.png'),
(142, 1, 34, 'white', '2013 maroon 85 over white double stripe maroon/maroon/white frazier', 'https://i.imgur.com/Tsrf1Vn.png'),
(143, 1, 34, 'white pinstripe', '2013 maroon 85 over white pins maroon/maroon/whitepins pirtle', 'https://i.imgur.com/RpMRTrI.png'),
(144, 1, 34, 'gray', '2013 maroon 85 over gray maroon/maroon/gray girodo', 'https://i.imgur.com/c54MISm.png'),
(145, 1, 35, 'white', '2013 white ms vests single stripe maroon/white/white porter', 'https://i.imgur.com/HINN5WX.png'),
(146, 1, 32, 'white', '2013 white 85 double stripe maroon/white/white pollorena', 'https://i.imgur.com/e9FwJHG.png'),
(147, 1, 31, 'white pinstripe', '2013 white ms pinstripes maroon/whitepins/whitepins renfroe', 'https://i.imgur.com/4qDqev6.png'),
(148, 13, 31, 'white pinstripe', '2013 white ms pinstripes with boston strong hat maroon/whitepins/whitepins holder', 'https://i.imgur.com/WnwJomE.png'),
(149, 1, 36, 'white pinstripe', '2013 black ms over white pins with maroon hat maroon/black/whitepins bradford', 'https://i.imgur.com/MqYvnLd.png'),
(150, 1, 36, 'gray', '2013 black ms over gray with maroon hat maroon/black/gray ammirati', 'https://i.imgur.com/Ign0mpC.png'),
(151, 15, 36, 'white pinstripe', '2013 black ms over white pins with green hat green/black/whitepins henderson', 'https://i.imgur.com/Zdr4cPD.png'),
(152, 14, 36, 'white', '2013 black ms over white single stripe with black hat black/black/white detz', 'https://i.imgur.com/pv5EzGb.png'),
(153, 14, 36, 'gray', '2013 black ms over gray with black hat black/black/gray rea', 'https://i.imgur.com/Aa4QlCW.png'),
(154, 1, 33, 'gray', '2012 postseason maroon ms over gray maroon/maroon/gray stratton', 'https://i.imgur.com/k3SxWsi.png'),
(155, 1, 33, 'gray', '2012 postseason maroon ms over gray maroon/maroon/gray frazier', 'https://i.imgur.com/yRyjdVk.png'),
(156, 1, 32, 'white', '2012 postseason white 85 double stripe maroon/white/white renfroe', 'https://i.imgur.com/CEJ2eu1.png'),
(157, 1, 34, 'white', '2012 postseason maroon 85 over white single stripe maroon/maroon/white routt', 'https://i.imgur.com/v7jWEx7.png'),
(158, 1, 34, 'white', '2012 postseason maroon 85 over white single stripe maroon/maroon/white mitchell', 'https://i.imgur.com/ozrrSzk.png'),
(159, 1, 33, 'white', '2012 maroon ms over white single stripe maroon/maroon/white renfroe', 'https://i.imgur.com/ULxk5wX.png'),
(160, 1, 33, 'gray', '2012 maroon ms over gray maroon/maroon/gray rea', 'https://i.imgur.com/ShakHax.png'),
(161, 1, 34, 'white', '2012 maroon 85 over white single stripe maroon/maroon/white stratton', 'https://i.imgur.com/rq9qxo0.png'),
(162, 15, 34, 'white', '2012 maroon 85 over white double stripe with green hat green/maroon/white porter', 'https://i.imgur.com/i2sA736.png'),
(163, 1, 32, 'white', '2012 white 85 double stripe maroon/white/white frazier', 'https://i.imgur.com/bI3AkNo.png'),
(164, 1, 35, 'white', '2012 white ms vests single stripe maroon/white/white holder', 'https://i.imgur.com/f4xrwsi.png'),
(165, 1, 36, 'white', '2012 black 85 over white single stripe maroon/black/white routt', 'https://i.imgur.com/ptLeDlk.png'),
(166, 1, 36, 'gray', '2012 black 85 over gray maroon/black/gray henderson', 'https://i.imgur.com/6Ca1BEq.png'),
(167, 14, 36, 'white', '2012 black 85 over white single stripe with black hat black/black/white bradford', 'https://i.imgur.com/UlOr7ic.png'),
(168, 14, 36, 'gray', '2012 black 85 over gray with black hat black/black/gray pollorena', 'https://i.imgur.com/YAfFd9Z.png'),
(169, 1, 33, 'gray', '2011 postseason maroon ms over gray maroon/maroon/gray pollorena', 'https://i.imgur.com/xjZ3k3P.png'),
(170, 1, 33, 'gray', '2011 postseason maroon ms over gray maroon/maroon/gray vickerson', 'https://i.imgur.com/x6rrEQ4.png'),
(171, 1, 33, 'white', '2011 postseason maroon ms over white single stripe maroon/maroon/white routt', 'https://i.imgur.com/koGZVri.png'),
(172, 1, 33, 'white', '2011 maroon ms over white single stripe maroon/maroon/white mitchell', 'https://i.imgur.com/5IfqGbq.png'),
(173, 1, 33, 'gray', '2011 maroon ms over gray maroon/maroon/gray routt', 'https://i.imgur.com/pHXPIq2.png'),
(174, 1, 34, 'white', '2011 maroon 85 over white single stripe maroon/maroon/white vickerson', 'https://i.imgur.com/dUAbZSp.png'),
(175, 1, 34, 'gray', '2011 maroon 85 over gray maroon/maroon/gray bradford', 'https://i.imgur.com/rhTdW0L.png'),
(176, 16, 33, 'white', '2011 maroon ms over white single stripe with white american flag hat white/maroon/white shepard', 'https://i.imgur.com/rEAncJQ.png'),
(177, 1, 35, 'white', '2011 white ms vests single stripe maroon/white/white pollorena', 'https://i.imgur.com/sIooRhS.png'),
(178, 1, 36, 'white', '2011 black ms over white single stripe maroon/black/white parks', 'https://i.imgur.com/D6OhExZ.png'),
(179, 1, 36, 'gray', '2011 black ms over gray maroon/black/gray brownlee', 'https://i.imgur.com/z3fmwTo.png'),
(180, 1, 37, 'white', '2007 postseason white state no stripe maroon/white/white easley', 'https://i.imgur.com/8tBc5ik.png'),
(181, 1, 38, 'maroon', '2007 postseason maroon \"state\" over gray maroon/maroon/gray mccaskill', 'https://i.imgur.com/gQajESa.png'),
(182, 1, 37, 'white', '2007 postseason white state no stripe maroon/white/white mccaskill', 'https://i.imgur.com/gQajESa.png'),
(183, 1, 38, 'gray', '2007 postseason maroon \"state\" over gray maroon/maroon/gray pigott', 'https://i.imgur.com/MpnslkX.png'),
(184, 1, 37, 'white', '2007 postseason white state no stripe maroon/white/white moreland', 'https://i.imgur.com/p3ShW4O.png'),
(185, 1, 37, 'white', '2007 postseason white state no stripe maroon/white/white powers', 'https://i.imgur.com/21IjKAY.png'),
(186, 1, 38, 'gray', '2007 postseason maroon \"state\" over gray maroon/maroon/gray moreland', 'https://i.imgur.com/qexRc32.png'),
(187, 1, 38, 'gray', '2007 cws maroon \"state\" over gray maroon/maroon/gray easley', 'https://i.imgur.com/roc5STA.png'),
(188, 1, 37, 'white', '2007 cws white state no stripe maroon/white/white rea', 'https://i.imgur.com/bukcGqz.png'),
(189, 1, 38, 'gray', '2006 postseason maroon \"state\" over gray maroon/maroon/gray rea', 'https://i.imgur.com/5Tq6EpE.png'),
(190, 1, 40, 'white', '2006 postseason white state double stripe maroon/white/white berkery', 'https://i.imgur.com/iLs4WyO.png'),
(191, 1, 41, 'white', '2005 postseason maroon state over white single stripe maroon/maroon/white corley', 'https://i.imgur.com/HZ66wGJ.png'),
(192, 1, 39, 'white', '2005 postseason maroon bulldogs over white single stripe maroon/maroon/white gant', 'https://i.imgur.com/1NtTajN.png'),
(193, 1, 41, 'white', '2005 postseason maroon state over white single stripe maroon/maroon/white butts', 'https://i.imgur.com/OWZT9dF.png'),
(194, 1, 39, 'white', '2005 postseason maroon bulldogs over white single stripe maroon/maroon/white hunter', 'https://i.imgur.com/xTTDwcQ.png'),
(195, 1, 41, 'gray', '2005 postseason maroon state over gray maroon/maroon/gray berkery', 'https://i.imgur.com/X1KMH1g.png'),
(196, 1, 39, 'white', '2005 postseason maroon bulldogs over white single stripe maroon/maroon/white rea', 'https://i.imgur.com/yH8yggv.png'),
(197, 1, 40, 'white', '2005 postseason white state double stripe maroon/white/white crosby', 'https://i.imgur.com/fZZTiJG.png'),
(198, 1, 39, 'white', '2005 postseason maroon bulldogs over white single stripe maroon/maroon/white butts', 'https://i.imgur.com/eLfANQh.png'),
(199, 1, 44, 'gray pinstripe', '2004 postseason gray ms pinstripe vests maroon/graypins/graypins hunter', 'https://i.imgur.com/UyFBgHg.png'),
(200, 1, 43, 'white', '2003 postseason white ms single stripe maroon/white/white maholm', 'https://i.imgur.com/2tZfEsZ.png'),
(201, 1, 42, 'gray', '2003 postseason maroon state over gray maroon/maroon/gray corley', 'https://i.imgur.com/5dufSAD.png'),
(202, 1, 46, 'gray', '2003 postseason maroon \"bulldogs\" over gray maroon/maroon/gray maniscalco', 'https://i.imgur.com/ap5L5DE.png'),
(203, 1, 43, 'white', '2003 postseason white ms single stripe maroon/white/white tatum', 'https://i.imgur.com/nPLYsQS.png'),
(204, 1, 45, 'white pinstripe', '2001 postseason white ms pinstripes maroon/whitepins/whitepins jones', 'https://i.imgur.com/9tWVl2Tr.png'),
(205, 1, 47, 'gray pinstripe', '2001 postseason maroon state over gray pins maroon/maroon/graypins brinson', 'https://i.imgur.com/8j86wm8.png'),
(206, 1, 45, 'white pinstripe', '2001 postseason white ms pinstripes maroon/whitepins/whitepins brinson', 'https://i.imgur.com/NfpV8vA.png'),
(207, 1, 47, 'gray pinstripe', '2001 postseason maroon state over gray pins maroon/maroon/graypins papelbon', 'https://i.imgur.com/Sf4R2Ou.png'),
(208, 1, 45, 'white pinstripe', '2001 postseason white ms pinstripes maroon/whitepins/whitepins maholm', 'https://i.imgur.com/fAwlpv2.png'),
(209, 1, 45, 'white pinstripe', '2000 postseason white ms pinstripes maroon/whitepins/whitepins donovan', 'https://i.imgur.com/K9EskzD.png'),
(210, 1, 46, 'gray pinstripe', '2000 postseason maroon \"bulldogs\" over gray pins maroon/maroon/graypins freed', 'https://i.imgur.com/IoBYboB.png'),
(211, 1, 47, 'white pinstripe', '2000 postseason maroon state over white pins maroon/maroon/whitepins willingham', 'https://i.imgur.com/353nBfI.png'),
(212, 1, 45, 'white pinstripe', '2000 postseason white ms pinstripes maroon/whitepins/whitepins martin', 'https://i.imgur.com/5iGwJER.png'),
(213, 1, 44, 'gray pinstripe', '2000 postseason gray ms pinstripe vests maroon/graypins/graypins rock', 'https://i.imgur.com/LmMPiDO.png'),
(214, 1, 45, 'white pinstripe', '2000 postseason white ms pinstripes maroon/whitepins/whitepins chapman', 'https://i.imgur.com/bY87Sim.png'),
(215, 1, 46, 'gray', '1998 cws maroon \"bulldogs\" over gray maroon/maroon/gray bryan', 'https://i.imgur.com/G5KKyHd.png'),
(216, 1, 46, 'gray', '1998 cws maroon \"bulldogs\" over gray maroon/maroon/gray lee', 'https://i.imgur.com/7OCzPTp.png'),
(217, 1, 45, 'white pinstripe', '1998 cws white ms pinstripes maroon/whitepins/whitepins freeman', 'https://i.imgur.com/kECjsMX.png'),
(218, 1, 48, 'gray', '1997 cws gray \"mississippi state\" script maroon/gray/gray scioneaux', 'https://i.imgur.com/LgZ4WVB.png'),
(219, 1, 47, 'white', '1997 cws maroon state over white single stripe maroon/maroon/white wiese', 'https://i.imgur.com/Qp4LCkn.png'),
(220, 1, 47, 'gray', '1997 cws maroon state over gray maroon/maroon/gray lee', 'https://i.imgur.com/0QikW4l.png'),
(221, 1, 48, 'gray', '1990 cws gray \"mississippi state\" script maroon/gray/gray reed', 'https://i.imgur.com/71U1aeq.png'),
(222, 1, 48, 'gray', '1990 cws gray \"mississippi state\" script maroon/gray/gray cohen', 'https://i.imgur.com/EWRhVjY.png'),
(223, 1, 49, 'white', '1990 white ms single stripe maroon/white/white mitchell', 'https://i.imgur.com/sdPkSVb.png'),
(224, 1, 50, 'white', '1985 cws white 85 no stripe maroon/white/white palmerio', 'https://i.imgur.com/yxrgXe8.png'),
(225, 1, 51, 'gray', '1985 cws maroon 85 over gray maroon/maroon/gray clark', 'https://i.imgur.com/cz9Mf2P.png'),
(226, 1, 50, 'white', '1985 cws white 85 no stripe maroon/white/white van cleve', 'https://i.imgur.com/x2tmKwq.png'),
(227, 1, 50, 'white', '1985 cws white 85 no stripe maroon/white/white thigpen', 'https://i.imgur.com/PdYlXBC.png'),
(228, 1, 51, 'white', '1981 cws maroon 85 over white no stripe maroon/maroon/white gillaspie', 'https://i.imgur.com/3uzxTHo.png'),
(229, 1, 51, 'gray', '1981 cws maroon 85 over gray maroon/maroon/gray loe', 'https://i.imgur.com/Hqo4bsE.png'),
(230, 1, 51, 'white', '1981 cws maroon 85 over white no stripe maroon/maroon/white castoria', 'https://i.imgur.com/BcJLtM9.png'),
(231, 1, 51, 'white', '1979 cws maroon 85 over white no stripe maroon/maroon/white kurtz', 'https://i.imgur.com/BnGK9IM.png'),
(232, 1, 51, 'gray', '1979 cws maroon 85 over gray maroon/maroon/gray conner', 'https://i.imgur.com/f0iO34z.png'),
(233, 1, 51, 'white', '1979 cws maroon 85 over white no stripe maroon/maroon/white dixon', 'https://i.imgur.com/AntyPdo.png'),
(234, 1, 52, 'white pinstripe', '1971 cws white \"state\" pinstripes maroon/whitepins/whitepins still', 'https://i.imgur.com/IK656Jf.png'),
(235, 1, 52, 'white pinstripe', '1971 cws white \"state\" pinstripes maroon/whitepins/whitepins croswell', 'https://i.imgur.com/JR9EmZO.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `uniform`
--
ALTER TABLE `uniform`
  ADD PRIMARY KEY (`uniformID`),
  ADD KEY `hatID` (`hatID`),
  ADD KEY `jerseyID` (`jerseyID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `uniform`
--
ALTER TABLE `uniform`
  MODIFY `uniformID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `uniform`
--
ALTER TABLE `uniform`
  ADD CONSTRAINT `uniform_ibfk_1` FOREIGN KEY (`hatID`) REFERENCES `hat` (`hatID`),
  ADD CONSTRAINT `uniform_ibfk_2` FOREIGN KEY (`jerseyID`) REFERENCES `jersey` (`jerseyID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
