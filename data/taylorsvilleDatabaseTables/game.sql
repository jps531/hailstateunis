-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 05, 2020 at 06:05 AM
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
-- Database: `taylorsvilleTableData`
--

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `gameID` int(11) NOT NULL,
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
  `article_link` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`gameID`, `yr`, `gameday`, `opponentName`, `result`, `points_for`, `points_against`, `location`, `comboID`, `away_helmet`, `home_helmet`, `article_title`, `article_link`) VALUES
(480, 2019, '2019-12-07', 'Northside', 'Win', 49, 18, 'playoffsStateChampionship', 3, 'https://i.imgur.com/XJSWFCk.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(481, 2019, '2019-11-29', 'Scott Central', 'Win', 14, 6, 'playoffsSouthState', 14, 'https://i.imgur.com/MYyNzyO.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(482, 2019, '2019-11-22', 'Philadelphia', 'Win', 47, 30, 'playoffsThirdRound', 7, 'https://i.imgur.com/Enp30LT.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(483, 2019, '2019-11-15', 'Collins', 'Win', 21, 8, 'playoffsSecondRound', 13, 'https://i.imgur.com/tmhdMxJ.png', 'https://i.imgur.com/0J1aRrZ.png', NULL, NULL),
(484, 2019, '2019-11-08', 'Union', 'Win', 50, 12, 'playoffsFirstRound', 16, 'https://i.imgur.com/s9Ldd2j.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(485, 2019, '2019-11-01', 'Mize', 'Win', 41, 6, 'home', 2, 'https://i.imgur.com/GZZYc7H.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(486, 2019, '2019-10-24', 'Puckett', 'Win', 47, 0, 'road', 6, 'https://i.imgur.com/tmhdMxJ.png', 'https://i.imgur.com/xuxdLRi.png', NULL, NULL),
(487, 2019, '2019-10-18', 'Enterprise Clarke', 'Win', 55, 18, 'home', 11, 'https://i.imgur.com/GgY8DDy.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(488, 2019, '2019-10-10', 'Heidelberg', 'Win', 48, 6, 'road', 10, 'https://i.imgur.com/tmhdMxJ.png', 'https://i.imgur.com/uCiR93N.png', NULL, NULL),
(489, 2019, '2019-10-03', 'Bay Springs', 'Win', 42, 6, 'home', 4, 'https://i.imgur.com/sqttUZM.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(490, 2019, '2019-09-27', 'Jackson Prep', 'Loss', 0, 28, 'road', 9, 'https://i.imgur.com/tmhdMxJ.png', 'https://i.imgur.com/rNLEXOR.png', NULL, NULL),
(491, 2019, '2019-09-20', 'Collins', 'Win', 35, 0, 'road', 17, 'https://i.imgur.com/tmhdMxJ.png', 'https://i.imgur.com/0J1aRrZ.png', NULL, NULL),
(492, 2019, '2019-09-13', 'Seminary', 'Win', 40, 6, 'home', 5, 'https://i.imgur.com/mziLbGR.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(493, 2019, '2019-09-05', 'Jeff Davis Co.', 'Win', 46, 14, 'home', 1, 'https://i.imgur.com/vsqT2xL.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(494, 2019, '2019-08-29', 'Raleigh', 'Win', 36, 8, 'road', 12, 'https://i.imgur.com/tmhdMxJ.png', 'https://i.imgur.com/EDfLil2.png', NULL, NULL),
(495, 2019, '2019-08-22', 'Scott Central', 'Win', 32, 12, 'road', 8, 'https://i.imgur.com/tmhdMxJ.png', 'https://i.imgur.com/7P0NGnL.png', NULL, NULL),
(496, 2018, '2018-12-01', 'Scott Central', 'Loss', 7, 21, 'playoffsStateChampionship', 28, 'https://i.imgur.com/tmhdMxJ.png', 'https://i.imgur.com/7P0NGnL.png', NULL, NULL),
(497, 2018, '2018-11-23', 'Bay Springs', 'Win', 15, 8, 'playoffsSouthState', 21, 'https://i.imgur.com/sqttUZM.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(498, 2018, '2018-11-16', 'Collins', 'Win', 14, 12, 'playoffsThirdRound', 28, 'https://i.imgur.com/tmhdMxJ.png', 'https://i.imgur.com/0J1aRrZ.png', NULL, NULL),
(499, 2018, '2018-11-09', 'Pisgah', 'Win', 48, 7, 'playoffsSecondRound', 15, 'https://i.imgur.com/O8D7xij.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(500, 2018, '2018-11-02', 'Perry Central', 'Win', 50, 0, 'playoffsFirstRound', 17, 'https://i.imgur.com/1REqaq1.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(501, 2018, '2018-10-26', 'Clarkdale', 'Win', 59, 7, 'home', 21, 'https://i.imgur.com/WwtB8Wh.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(502, 2018, '2018-10-19', 'Heidelberg', 'Win', 34, 0, 'road', 28, 'https://i.imgur.com/tmhdMxJ.png', 'https://i.imgur.com/uCiR93N.png', NULL, NULL),
(503, 2018, '2018-10-12', 'Enterprise Clarke', 'Win', 41, 6, 'road', 22, 'https://i.imgur.com/tmhdMxJ.png', 'https://i.imgur.com/9GjjFUu.png', NULL, NULL),
(504, 2018, '2018-10-05', 'Lumberton', 'Win', 35, 9, 'road', 19, 'https://i.imgur.com/tmhdMxJ.png', 'https://i.imgur.com/FBiwnhA.png', NULL, NULL),
(505, 2018, '2018-09-27', 'Bay Springs', 'Win', 35, 14, 'home', 17, 'https://i.imgur.com/sqttUZM.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(506, 2018, '2018-08-17', 'Northeast Jones', 'Win', 28, 25, 'road', 28, 'https://i.imgur.com/tmhdMxJ.png', 'https://i.imgur.com/yYIcEwU.png', NULL, NULL),
(507, 2018, '2018-08-23', 'Raleigh', 'Win', 34, 12, 'home', 17, 'https://i.imgur.com/FTjgCCA.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(508, 2018, '2018-08-31', 'Mize', 'Win', 41, 6, 'road', 22, 'https://i.imgur.com/tmhdMxJ.png', 'https://i.imgur.com/CyuQBm2.png', NULL, NULL),
(509, 2018, '2018-09-07', 'Seminary', 'Win', 33, 20, 'road', 19, 'https://i.imgur.com/tmhdMxJ.png', 'https://i.imgur.com/OEYEP3p.png', NULL, NULL),
(510, 2018, '2018-09-14', 'Columbia', 'Win', 20, 13, 'home', 21, 'https://i.imgur.com/TeT86CE.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(511, 2018, '2018-09-21', 'Perry Central', 'Win', 42, 0, 'home', 18, 'https://i.imgur.com/1REqaq1.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(512, 2017, '2017-12-01', 'Winona', 'Win', 41, 26, 'playoffsStateChampionship', 17, 'https://i.imgur.com/44hTJlR.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(513, 2017, '2017-11-24', 'Collins', 'Win', 48, 32, 'playoffsSouthState', 17, 'https://i.imgur.com/gyKBAt8.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(514, 2017, '2017-11-17', 'North Forrest', 'Win', 49, 14, 'playoffsThirdRound', 28, 'https://i.imgur.com/tmhdMxJ.png', 'https://i.imgur.com/nwIyvXL.png', NULL, NULL),
(515, 2017, '2017-11-10', 'Perry Central', 'Win', 24, 19, 'playoffsSecondRound', 17, 'https://i.imgur.com/1REqaq1.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(516, 2017, '2017-11-03', 'Bogue Chitto', 'Win', 47, 7, 'playoffsFirstRound', 25, 'https://i.imgur.com/XCPPxD6.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(517, 2017, '2017-09-28', 'Bay Springs', 'Win', 42, 40, 'road', 17, 'https://i.imgur.com/tmhdMxJ.png', 'https://i.imgur.com/baraTTF.png', NULL, NULL),
(518, 2017, '2017-10-06', 'Lumberton', 'Win', 48, 22, 'home', 25, 'https://i.imgur.com/1Jkhr7c.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(519, 2017, '2017-10-13', 'Enterprise Clarke', 'Win', 40, 14, 'home', 28, 'https://i.imgur.com/ooULHsk.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(520, 2017, '2017-10-20', 'Heidelberg', 'Win', 35, 24, 'home', 17, 'https://i.imgur.com/KzeXFKO.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(521, 2017, '2017-10-27', 'Clarkdale', 'Win', 34, 6, 'road', 22, 'https://i.imgur.com/tmhdMxJ.png', 'https://i.imgur.com/SRfiYTt.png', NULL, NULL),
(522, 2017, '2017-08-18', 'Northeast Jones', 'Win', 29, 19, 'home', 18, 'https://i.imgur.com/YRX9Sna.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(523, 2017, '2017-08-25', 'Raleigh', 'Win', 40, 22, 'road', 17, 'https://i.imgur.com/tmhdMxJ.png', 'https://i.imgur.com/EDfLil2.png', NULL, NULL),
(524, 2017, '2017-09-01', 'Mize', 'Win', 21, 6, 'home', 18, 'https://i.imgur.com/GZZYc7H.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(525, 2017, '2017-09-08', 'Seminary', 'Win', 46, 15, 'home', 16, 'https://i.imgur.com/mziLbGR.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(526, 2017, '2017-09-15', 'Columbia', 'Win', 38, 21, 'road', 28, 'https://i.imgur.com/tmhdMxJ.png', 'https://i.imgur.com/fXGhyI6.png', NULL, NULL),
(527, 2017, '2017-09-22', 'Perry Central', 'Loss', 7, 26, 'road', 19, 'https://i.imgur.com/tmhdMxJ.png', 'https://i.imgur.com/3XUp8xY.png', NULL, NULL),
(528, 2016, '2016-11-04', 'Prentiss', 'Loss', 12, 28, 'playoffsFirstRound', 25, 'https://i.imgur.com/byfkozu.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(529, 2016, '2016-10-28', 'Richton', 'Win', 42, 6, 'home', 25, 'https://i.imgur.com/67b4lsw.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(530, 2016, '2016-10-21', 'North Forrest', 'Loss', 21, 27, 'road', 19, 'https://i.imgur.com/tmhdMxJ.png', 'https://i.imgur.com/nwIyvXL.png', NULL, NULL),
(531, 2016, '2016-10-14', 'East Marion', 'Win', 40, 34, 'home', 18, 'https://i.imgur.com/nvr5baw.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(532, 2016, '2016-10-06', 'Mize', 'Win', 34, 8, 'road', 28, 'https://i.imgur.com/tmhdMxJ.png', 'https://i.imgur.com/CyuQBm2.png', NULL, NULL),
(533, 2016, '2016-08-18', 'Bay Springs', 'Loss', 13, 42, 'road', 18, 'https://i.imgur.com/tmhdMxJ.png', 'https://i.imgur.com/F0XNoDO.png', NULL, NULL),
(534, 2016, '2016-08-26', 'Bay St. Louis', 'Win', 44, 18, 'road', 19, 'https://i.imgur.com/tmhdMxJ.png', 'https://i.imgur.com/yj8Gih8.png', NULL, NULL),
(535, 2016, '2016-09-02', 'MRA', 'Loss', 6, 37, 'home', 18, 'https://i.imgur.com/6OQ7jHg.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(536, 2016, '2016-09-08', 'Raleigh', 'Loss', 15, 56, 'home', 28, 'https://i.imgur.com/KjcDtEp.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(537, 2016, '2016-09-16', 'Collins', 'Loss', 27, 50, 'road', 28, 'https://i.imgur.com/tmhdMxJ.png', 'https://i.imgur.com/0J1aRrZ.png', NULL, NULL),
(538, 2016, '2016-09-23', 'Northeast Jones', 'Loss', 14, 28, 'road', 19, 'https://i.imgur.com/tmhdMxJ.png', 'https://i.imgur.com/yYIcEwU.png', NULL, NULL),
(539, 2015, '2015-11-20', 'Bassfield', 'Loss', 13, 42, 'playoffsThirdRound', 23, 'https://i.imgur.com/PwDUtav.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(540, 2015, '2015-11-13', 'Puckett', 'Win', 27, 24, 'playoffsSecondRound', 28, 'https://i.imgur.com/tmhdMxJ.png', 'https://i.imgur.com/ujGPqxB.png', NULL, NULL),
(541, 2015, '2015-11-06', 'Enterprise Clarke', 'Win', 50, 44, 'playoffsFirstRound', 23, 'https://i.imgur.com/zziP7f8.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(542, 2015, '2015-10-30', 'Richton', 'Win', 55, 42, 'road', 22, 'https://i.imgur.com/tmhdMxJ.png', 'https://i.imgur.com/pU2B67Y.png', NULL, NULL),
(543, 2015, '2015-10-23', 'North Forrest', 'Win', 15, 14, 'home', 18, 'https://i.imgur.com/4FwIHZZ.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(544, 2015, '2015-10-16', 'East Marion', 'Win', 47, 19, 'road', 28, 'https://i.imgur.com/tmhdMxJ.png', 'https://i.imgur.com/uvFNGRk.png', NULL, NULL),
(545, 2015, '2015-10-08', 'Mize', 'Loss', 27, 36, 'home', 20, 'https://i.imgur.com/jMGUgET.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(546, 2015, '2015-09-25', 'Northeast Jones', 'Loss', 14, 36, 'home', 25, 'https://i.imgur.com/YRX9Sna.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(547, 2015, '2015-09-18', 'Collins', 'Loss', 20, 56, 'home', 18, 'https://i.imgur.com/eIIZyIL.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(548, 2015, '2015-09-10', 'Raleigh', 'Win', 62, 56, 'road', 23, 'https://i.imgur.com/tmhdMxJ.png', 'https://i.imgur.com/0kogYjZ.png', NULL, NULL),
(549, 2015, '2015-09-04', 'MRA', 'Loss', 30, 56, 'road', 19, 'https://i.imgur.com/tmhdMxJ.png', 'https://i.imgur.com/VtHLYm0.png', NULL, NULL),
(550, 2015, '2015-08-28', 'Bay St. Louis', 'Win', 39, 15, 'home', 26, 'https://i.imgur.com/KR2tuDH.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(551, 2015, '2015-08-20', 'Bay Springs', 'Loss', 7, 26, 'road', 21, 'https://i.imgur.com/tmhdMxJ.png', 'https://i.imgur.com/F0XNoDO.png', NULL, NULL),
(552, 2014, '2014-11-21', 'Bassfield', 'Loss', 27, 60, 'playoffsThirdRound', 28, 'https://i.imgur.com/tmhdMxJ.png', 'https://i.imgur.com/Abk9IGq.png', NULL, NULL),
(553, 2014, '2014-11-14', 'Union', 'Win', 41, 6, 'playoffsSecondRound', 25, 'https://i.imgur.com/s9Ldd2j.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(554, 2014, '2014-11-07', 'Madison St. Joe', 'Win', 54, 7, 'playoffsFirstRound', 23, 'https://i.imgur.com/QesudF8.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(555, 2014, '2014-10-31', 'Mize', 'Win', 40, 0, 'road', 28, 'https://i.imgur.com/tmhdMxJ.png', 'https://i.imgur.com/KhIFBKQ.png', NULL, NULL),
(556, 2014, '2014-10-24', 'Heidelberg', 'Win', 32, 0, 'road', 22, 'https://i.imgur.com/tmhdMxJ.png', 'https://i.imgur.com/Y3PpZKx.png', NULL, NULL),
(557, 2014, '2014-10-17', 'Bay Springs', 'Win', 59, 47, 'home', 24, 'https://i.imgur.com/uM5PotB.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(558, 2014, '2014-10-10', 'Richton', 'Win', 43, 6, 'road', 23, 'https://i.imgur.com/tmhdMxJ.png', 'https://i.imgur.com/socHlYK.png', NULL, NULL),
(559, 2014, '2014-10-03', 'North Forrest', 'Win', 53, 0, 'home', 25, 'https://i.imgur.com/4FwIHZZ.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(560, 2014, '2014-08-22', 'Collins', 'Win', 19, 12, 'road', 32, 'https://i.imgur.com/tmhdMxJ.png', 'https://i.imgur.com/YOR4Lma.png', NULL, NULL),
(561, 2014, '2014-08-29', 'Hazlehurst', 'Win', 51, 12, 'home', 21, 'https://i.imgur.com/ErOrTDY.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(562, 2014, '2014-09-05', 'MRA', 'Win', 14, 6, 'road', 28, 'https://i.imgur.com/tmhdMxJ.png', 'https://i.imgur.com/VtHLYm0.png', NULL, NULL),
(563, 2014, '2014-09-12', 'Raleigh', 'Win', 34, 14, 'home', 31, 'https://i.imgur.com/KjcDtEp.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(564, 2014, '2014-09-19', 'Quitman', 'Loss', 26, 27, 'home', 24, 'https://i.imgur.com/quMy9WY.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(565, 2014, '2014-09-26', 'East Marion', 'Win', 32, 26, 'road', 22, 'https://i.imgur.com/tmhdMxJ.png', 'https://i.imgur.com/uzE0iIb.png', NULL, NULL),
(566, 2013, '2013-11-22', 'Bassfield', 'Loss', 14, 51, 'playoffsThirdRound', 24, 'https://i.imgur.com/PwDUtav.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(567, 2013, '2013-11-15', 'Scott Central', 'Win', 35, 6, 'playoffsSecondRound', 33, 'https://i.imgur.com/tmhdMxJ.png', 'https://i.imgur.com/g5BlJ0B.png', NULL, NULL),
(568, 2013, '2013-11-08', 'Loyd Star', 'Win', 47, 14, 'playoffsFirstRound', 26, 'https://i.imgur.com/y0pFq9W.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(569, 2013, '2013-11-01', 'Mize', 'Win', 46, 10, 'home', 24, 'https://i.imgur.com/jMGUgET.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(570, 2013, '2013-10-25', 'Heidelberg', 'Win', 37, 6, 'home', 26, 'https://i.imgur.com/sv9LE4E.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(571, 2013, '2013-10-18', 'Bay Springs', 'Win', 55, 20, 'road', 32, 'https://i.imgur.com/tmhdMxJ.png', 'https://i.imgur.com/lkOzrDz.png', NULL, NULL),
(572, 2013, '2013-10-11', 'Richton', 'Win', 36, 0, 'home', 25, 'https://i.imgur.com/iWWnSMb.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(573, 2013, '2013-10-04', 'North Forrest', 'Win', 41, 7, 'road', 26, 'https://i.imgur.com/tmhdMxJ.png', 'https://i.imgur.com/SLSgDE0.png', NULL, NULL),
(574, 2013, '2013-08-23', 'Collins', 'Win', 21, 10, 'home', 24, 'https://i.imgur.com/cBtXMBF.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(575, 2013, '2013-08-30', 'Hazlehurst', 'Loss', 10, 13, 'road', 28, 'https://i.imgur.com/tmhdMxJ.png', 'https://i.imgur.com/Un0ZRPA.png', NULL, NULL),
(576, 2013, '2013-09-06', 'MRA', 'Win', 26, 0, 'home', 24, 'https://i.imgur.com/6BkUhl5.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(577, 2013, '2013-09-13', 'Raleigh', 'Win', 44, 12, 'road', 27, 'https://i.imgur.com/tmhdMxJ.png', 'https://i.imgur.com/eP6p7dq.png', NULL, NULL),
(578, 2013, '2013-09-20', 'Quitman', 'Win', 20, 9, 'road', 33, 'https://i.imgur.com/tmhdMxJ.png', 'https://i.imgur.com/hpZFOWo.png', NULL, NULL),
(579, 2013, '2013-09-27', 'East Marion', 'Loss', 15, 20, 'home', 24, 'https://i.imgur.com/BUE18eZ.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(580, 2012, '2012-11-16', 'East Marion', 'Loss', 34, 48, 'playoffsThirdRound', 31, 'https://i.imgur.com/BUE18eZ.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(581, 2012, '2012-11-09', 'Lumberton', 'Win', 42, 6, 'playoffsSecondRound', 31, 'https://i.imgur.com/tmhdMxJ.png', 'https://i.imgur.com/8B005dr.png', NULL, NULL),
(582, 2012, '2012-11-02', 'Puckett', 'Win', 52, 6, 'playoffsFirstRound', 30, 'https://i.imgur.com/IHnp7JU.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(583, 2012, '2012-10-26', 'Bay Springs', 'Win', 39, 13, 'home', 31, 'https://i.imgur.com/quaDql3.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(584, 2012, '2012-10-19', 'Enterprise Clarke', 'Win', 50, 0, 'road', 33, 'https://i.imgur.com/tmhdMxJ.png', 'https://i.imgur.com/CjdHWQB.png', NULL, NULL),
(585, 2012, '2012-10-12', 'Bassfield', 'Loss', 14, 46, 'road', 32, 'https://i.imgur.com/tmhdMxJ.png', 'https://i.imgur.com/Abk9IGq.png', NULL, NULL),
(586, 2012, '2012-10-05', 'Mize', 'Win', 26, 7, 'home', 30, 'https://i.imgur.com/CK20pzU.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(587, 2012, '2012-09-28', 'Clarkdale', 'Win', 45, 0, 'road', 34, 'https://i.imgur.com/tmhdMxJ.png', 'https://i.imgur.com/3UsEHcH.png', NULL, NULL),
(588, 2012, '2012-09-21', 'Seminary', 'Win', 32, 6, 'road', 32, 'https://i.imgur.com/tmhdMxJ.png', 'https://i.imgur.com/OEYEP3p.png', NULL, NULL),
(589, 2012, '2012-09-14', 'Greene County', 'Win', 32, 20, 'home', 30, 'https://i.imgur.com/QesudF8.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(590, 2012, '2012-09-07', 'Raleigh', 'Win', 59, 0, 'home', 30, 'https://i.imgur.com/Q5hhw5T.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(591, 2012, '2012-09-01', 'Collins', 'Win', 38, 6, 'neutral', 34, 'https://i.imgur.com/tmhdMxJ.png', 'https://i.imgur.com/YOR4Lma.png', NULL, NULL),
(592, 2012, '2012-08-24', 'Prentiss', 'Win', 41, 0, 'home', 29, 'https://i.imgur.com/byfkozu.png', 'https://i.imgur.com/cZNzsir.png', NULL, NULL),
(593, 2011, '2011-11-11', 'North Forrest', 'Loss', 19, 21, 'playoffsSecondRound', 36, 'https://i.imgur.com/LVk0znj.png', 'https://i.imgur.com/SLSgDE0.png', NULL, NULL),
(594, 2011, '2011-11-04', 'Leake County', 'Win', 39, 0, 'playoffsFirstRound', 35, 'https://i.imgur.com/xonkrGM.png', 'https://i.imgur.com/xxHW3H3.png', NULL, NULL),
(595, 2011, '2011-10-28', 'Bay Springs', 'Win', 50, 25, 'road', 36, 'https://i.imgur.com/LVk0znj.png', 'https://i.imgur.com/ggvZo9F.png', NULL, NULL),
(596, 2011, '2011-10-21', 'Enterprise Clarke', 'Win', 48, 21, 'home', 35, 'https://i.imgur.com/zziP7f8.png', 'https://i.imgur.com/xxHW3H3.png', NULL, NULL),
(597, 2011, '2011-10-14', 'Bassfield', 'Win', 18, 0, 'home', 35, 'https://i.imgur.com/PwDUtav.png', 'https://i.imgur.com/xxHW3H3.png', NULL, NULL),
(598, 2011, '2011-10-07', 'Mize', 'Win', 37, 7, 'road', 36, 'https://i.imgur.com/LVk0znj.png', 'https://i.imgur.com/68zCPAD.png', NULL, NULL),
(599, 2011, '2011-09-30', 'Clarkdale', 'Win', 59, 3, 'home', 35, 'https://i.imgur.com/HsOsewe.png', 'https://i.imgur.com/xxHW3H3.png', NULL, NULL),
(600, 2011, '2011-09-23', 'Seminary', 'Win', 27, 14, 'home', 35, 'https://i.imgur.com/mziLbGR.png', 'https://i.imgur.com/xxHW3H3.png', NULL, NULL),
(601, 2011, '2011-09-16', 'Greene County', 'Win', 24, 14, 'road', 36, 'https://i.imgur.com/LVk0znj.png', 'https://i.imgur.com/FKol9ab.png', NULL, NULL),
(602, 2011, '2011-09-09', 'Raleigh', 'Win', 51, 20, 'road', 36, 'https://i.imgur.com/LVk0znj.png', 'https://i.imgur.com/IlDl9AQ.png', NULL, NULL),
(603, 2011, '2011-09-02', 'Collins', 'Win', 35, 7, 'home', 35, 'https://i.imgur.com/zca9MTw.png', 'https://i.imgur.com/xxHW3H3.png', NULL, NULL),
(604, 2011, '2011-08-26', 'Prentiss', 'Win', 40, 8, 'road', 36, 'https://i.imgur.com/LVk0znj.png', 'https://i.imgur.com/sWso114.png', NULL, NULL),
(605, 2007, '2007-12-07', 'West Bolivar', 'Loss', 22, 25, 'playoffsStateChampionship', 43, 'https://i.imgur.com/1T0Wr9K.png', 'https://i.imgur.com/oSc5RLu.png', NULL, NULL),
(606, 2002, '2002-12-07', 'Eupora', 'Win', 24, 22, 'playoffsStateChampionship', 42, 'https://i.imgur.com/TYgph1u.png', 'https://i.imgur.com/OLqCBw0.png', NULL, NULL),
(607, 1998, '1998-12-04', 'Booneville', 'Win', 27, 7, 'playoffsStateChampionship', 41, 'https://i.imgur.com/TYgph1u.png', 'https://i.imgur.com/53dI3AZ.png', NULL, NULL),
(608, 1995, '1995-12-01', 'Calhoun City', 'Win', 35, 6, 'playoffsStateChampionship', 40, 'https://i.imgur.com/kgUwZec.png', 'https://i.imgur.com/ZLfqteu.png', NULL, NULL),
(609, 1994, '1994-12-02', 'Calhoun City', 'Win', 34, 18, 'playoffsStateChampionship', 39, 'https://i.imgur.com/TYgph1u.png', 'https://i.imgur.com/hpaIAVf.png', NULL, NULL),
(610, 1993, '1993-12-03', 'Okolona', 'Loss', 7, 29, 'playoffsStateChampionship', 38, 'https://i.imgur.com/8MAA6kM.png', 'https://i.imgur.com/ZLfqteu.png', NULL, NULL),
(611, 1991, '1991-12-06', 'Bruce', 'Win', 24, 14, 'playoffsStateChampionship', 37, 'https://i.imgur.com/tLU4o3D.png', 'https://i.imgur.com/kso0qj0.png', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`gameID`,`comboID`),
  ADD KEY `yr` (`yr`),
  ADD KEY `opponentName` (`opponentName`),
  ADD KEY `comboID` (`comboID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `game`
--
ALTER TABLE `game`
  MODIFY `gameID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=612;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `game`
--
ALTER TABLE `game`
  ADD CONSTRAINT `game_ibfk_1` FOREIGN KEY (`yr`) REFERENCES `season` (`yr`),
  ADD CONSTRAINT `game_ibfk_2` FOREIGN KEY (`opponentName`) REFERENCES `opponent` (`opponentName`),
  ADD CONSTRAINT `game_ibfk_3` FOREIGN KEY (`comboID`) REFERENCES `combination` (`comboID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
