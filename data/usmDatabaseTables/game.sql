-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 22, 2020 at 06:37 AM
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
-- Database: `usmTableData`
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
(1, 2020, '2020-09-03', 'South Alabama', 'Loss', 21, 32, 'home', 1, 'https://i.imgur.com/m2agcmT.png', 'https://i.imgur.com/wQc4Dm4.png', NULL, NULL),
(2, 2020, '2020-09-19', 'Louisiana Tech', 'Loss', 30, 31, 'home', 2, 'https://i.imgur.com/mFkaE6v.png', 'https://i.imgur.com/xJRk7YX.png', NULL, NULL),
(3, 2020, '2020-09-26', 'Tulane', 'Loss', 24, 66, 'home', 3, 'https://i.imgur.com/WourjY2.png', 'https://i.imgur.com/yvxvdWK.png', NULL, NULL),
(4, 2020, '2020-10-03', 'North Texas', 'Win', 41, 31, 'road', 4, 'https://i.imgur.com/Gai1VS5.png', 'https://i.imgur.com/kSE3fKq.png', NULL, NULL),
(5, 2019, '2020-01-04', 'Tulane', 'Loss', 13, 30, 'armedForcesBowl', 16, 'https://i.imgur.com/oMHfI4b.png', 'https://i.imgur.com/umZMBCM.png', NULL, NULL),
(6, 2019, '2019-11-30', 'Florida Atlantic', 'Loss', 17, 34, 'road', 15, 'https://i.imgur.com/91mdYpw.png', 'https://i.imgur.com/sb1i6BG.png', NULL, NULL),
(7, 2019, '2019-11-23', 'Western Kentucky', 'Loss', 10, 28, 'home', 14, 'https://i.imgur.com/DjZYdpk.png', 'https://i.imgur.com/CW8nc4w.png', NULL, NULL),
(8, 2019, '2019-11-16', 'UTSA', 'Win', 36, 17, 'road', 13, 'https://i.imgur.com/oMHfI4b.png', 'https://i.imgur.com/13OjFUQ.png', NULL, NULL),
(9, 2019, '2019-11-09', 'UAB', 'Win', 37, 2, 'home', 12, 'https://i.imgur.com/2bXQRtn.png', 'https://i.imgur.com/iPAzqnF.png', NULL, NULL),
(10, 2019, '2019-10-26', 'Rice', 'Win', 20, 6, 'road', 11, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/x7y3C85.png', NULL, NULL),
(11, 2019, '2019-10-19', 'Louisiana Tech', 'Loss', 30, 45, 'road', 10, 'https://i.imgur.com/91mdYpw.png', 'https://i.imgur.com/l07Qkss.png', NULL, NULL),
(12, 2019, '2019-10-12', 'North Texas', 'Win', 45, 27, 'home', 9, 'https://i.imgur.com/r9wEXXG.png', 'https://i.imgur.com/D5EW4eS.png', NULL, NULL),
(13, 2019, '2019-09-28', 'UTEP', 'Win', 31, 13, 'home', 8, 'https://i.imgur.com/7POaBls.png', 'https://i.imgur.com/D5EW4eS.png', NULL, NULL),
(14, 2019, '2019-09-21', 'Alabama', 'Loss', 7, 49, 'road', 7, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/oXypdot.png', NULL, NULL),
(15, 2019, '2019-09-14', 'Troy', 'Win', 47, 42, 'road', 7, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/wh3j8Ba.png', NULL, NULL),
(16, 2019, '2019-09-07', 'Mississippi State', 'Loss', 15, 38, 'road', 6, 'https://i.imgur.com/s8jAZ4G.png', 'https://i.imgur.com/za2UhX9.png', NULL, NULL),
(17, 2019, '2019-08-31', 'Alcorn State', 'Win', 38, 10, 'home', 5, 'https://i.imgur.com/DDZppLu.png', 'https://i.imgur.com/NQsEiKB.png', NULL, NULL),
(18, 2018, '2018-09-01', 'Jackson State', 'Win', 55, 7, 'home', 25, 'https://i.imgur.com/vuMteVr.png', 'https://i.imgur.com/WDgmCGw.png', NULL, NULL),
(19, 2018, '2018-09-08', 'UL Monroe', 'Loss', 20, 21, 'home', 25, 'https://i.imgur.com/Wb2IMiG.png', 'https://i.imgur.com/WDgmCGw.png', NULL, NULL),
(20, 2018, '2018-09-22', 'Rice', 'Win', 40, 22, 'home', 18, 'https://i.imgur.com/Pg8Pwsg.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(21, 2018, '2018-09-29', 'Auburn', 'Loss', 13, 24, 'road', 20, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/RRfRSxT.png', NULL, NULL),
(22, 2018, '2018-10-13', 'North Texas', 'Loss', 7, 30, 'road', 19, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/JwIJ4mK.png', NULL, NULL),
(23, 2018, '2018-10-20', 'UTSA', 'Win', 27, 17, 'home', 17, 'https://i.imgur.com/sEhsCYp.png', 'https://i.imgur.com/i1gYLUh.png', NULL, NULL),
(24, 2018, '2018-10-27', 'Charlotte', 'Loss', 17, 20, 'road', 23, 'https://i.imgur.com/FQTfB3W.png', 'https://i.imgur.com/gYR8tWm.png', NULL, NULL),
(25, 2018, '2018-11-03', 'Marshall', 'Win', 26, 24, 'home', 24, 'https://i.imgur.com/efNbL6h.png', 'https://i.imgur.com/iPAzqnF.png', NULL, NULL),
(26, 2018, '2018-11-10', 'UAB', 'Loss', 23, 26, 'road', 24, 'https://i.imgur.com/oMHfI4b.png', 'https://i.imgur.com/AJmhcpO.png', NULL, NULL),
(27, 2018, '2018-11-17', 'Louisiana Tech', 'Win', 21, 20, 'home', 21, 'https://i.imgur.com/kX19nQr.png', 'https://i.imgur.com/D5EW4eS.png', NULL, NULL),
(28, 2018, '2018-11-24', 'UTEP', 'Win', 39, 7, 'road', 22, 'https://i.imgur.com/91mdYpw.png', 'https://i.imgur.com/nck7Cp8.png', NULL, NULL),
(29, 2017, '2017-09-02', 'Kentucky', 'Loss', 17, 24, 'home', 36, 'https://i.imgur.com/WF3cY14.png', 'https://i.imgur.com/WDgmCGw.png', NULL, NULL),
(30, 2017, '2017-09-09', 'Southern', 'Win', 45, 0, 'home', 35, 'https://i.imgur.com/vBZXtnk.png', 'https://i.imgur.com/WDgmCGw.png', NULL, NULL),
(31, 2017, '2017-09-16', 'UL Monroe', 'Win', 28, 17, 'road', 38, 'https://i.imgur.com/gakLdHJ.png', 'https://i.imgur.com/BgkEL8k.png', NULL, NULL),
(32, 2017, '2017-09-30', 'North Texas', 'Loss', 28, 43, 'home', 27, 'https://i.imgur.com/WNnaqgN.png', 'https://i.imgur.com/JWCjZOr.png', NULL, NULL),
(33, 2017, '2017-10-07', 'UTSA', 'Win', 31, 29, 'road', 30, 'https://i.imgur.com/6azIS7e.png', 'https://i.imgur.com/13OjFUQ.png', NULL, NULL),
(34, 2017, '2017-10-14', 'UTEP', 'Win', 24, 0, 'home', 26, 'https://i.imgur.com/iazsOIl.png', 'https://i.imgur.com/i1gYLUh.png', NULL, NULL),
(35, 2017, '2017-10-21', 'Louisiana Tech', 'Win', 34, 27, 'road', 32, 'https://i.imgur.com/91mdYpw.png', 'https://i.imgur.com/oXLbvu5.png', NULL, NULL),
(36, 2017, '2017-10-28', 'UAB', 'Loss', 12, 30, 'home', 34, 'https://i.imgur.com/2bXQRtn.png', 'https://i.imgur.com/rnGrHkA.png', NULL, NULL),
(37, 2017, '2017-11-04', 'Tennessee', 'Loss', 10, 24, 'road', 37, 'https://i.imgur.com/gakLdHJ.png', 'https://i.imgur.com/M7uM8DW.png', NULL, NULL),
(38, 2017, '2017-11-11', 'Rice', 'Win', 43, 34, 'road', 33, 'https://i.imgur.com/91mdYpw.png', 'https://i.imgur.com/18TKdY6.png', NULL, NULL),
(39, 2017, '2017-11-18', 'Charlotte', 'Win', 66, 21, 'home', 31, 'https://i.imgur.com/wIZgsOb.png', 'https://i.imgur.com/D5EW4eS.png', NULL, NULL),
(40, 2017, '2017-11-25', 'Marshall', 'Win', 28, 27, 'road', 29, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/r8kL90o.png', NULL, NULL),
(41, 2017, '2017-12-27', 'Florida State', 'Loss', 13, 42, 'independenceBowl', 28, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/aGe8fmI.png', NULL, NULL),
(42, 2016, '2016-09-03', 'Kentucky', 'Win', 44, 35, 'road', 42, 'https://i.imgur.com/91mdYpw.png', 'https://i.imgur.com/y0jZCZQ.png', NULL, NULL),
(43, 2016, '2016-09-10', 'Savannah St.', 'Win', 56, 0, 'home', 43, 'https://i.imgur.com/olLogNO.png', 'https://i.imgur.com/D5EW4eS.png', NULL, NULL),
(44, 2016, '2016-09-17', 'Troy', 'Loss', 31, 37, 'home', 43, 'https://i.imgur.com/F6lSTix.png', 'https://i.imgur.com/D5EW4eS.png', NULL, NULL),
(45, 2016, '2016-09-24', 'UTEP', 'Win', 34, 7, 'road', 42, 'https://i.imgur.com/91mdYpw.png', 'https://i.imgur.com/U0ZE069.png', NULL, NULL),
(46, 2016, '2016-10-01', 'Rice', 'Win', 44, 28, 'home', 43, 'https://i.imgur.com/Pg8Pwsg.png', 'https://i.imgur.com/D5EW4eS.png', NULL, NULL),
(47, 2016, '2016-10-08', 'UTSA', 'Loss', 32, 55, 'road', 42, 'https://i.imgur.com/91mdYpw.png', 'https://i.imgur.com/0kJEHM4.png', NULL, NULL),
(48, 2016, '2016-10-15', 'LSU', 'Loss', 10, 45, 'road', 42, 'https://i.imgur.com/91mdYpw.png', 'https://i.imgur.com/ujp3lWl.png', NULL, NULL),
(49, 2016, '2016-10-29', 'Marshall', 'Win', 24, 14, 'home', 43, 'https://i.imgur.com/efNbL6h.png', 'https://i.imgur.com/D5EW4eS.png', NULL, NULL),
(50, 2016, '2016-11-05', 'Charlotte', 'Loss', 27, 38, 'home', 43, 'https://i.imgur.com/zJHuC8p.png', 'https://i.imgur.com/D5EW4eS.png', NULL, NULL),
(51, 2016, '2016-11-12', 'Old Dominion', 'Loss', 35, 51, 'road', 40, 'https://i.imgur.com/91mdYpw.png', 'https://i.imgur.com/YPXdtag.png', NULL, NULL),
(52, 2016, '2016-11-19', 'North Texas', 'Loss', 23, 29, 'road', 39, 'https://i.imgur.com/2AWstWH.png', 'https://i.imgur.com/XwJIeUo.png', NULL, NULL),
(53, 2016, '2016-11-26', 'Louisiana Tech', 'Win', 39, 24, 'home', 43, 'https://i.imgur.com/MU5vFAS.png', 'https://i.imgur.com/D5EW4eS.png', NULL, NULL),
(54, 2016, '2016-12-17', 'Louisiana', 'Win', 28, 21, 'newOrleansBowl', 41, 'https://i.imgur.com/91mdYpw.png', 'https://i.imgur.com/lX4wkin.png', NULL, NULL),
(55, 2015, '2015-09-05', 'Mississippi State', 'Loss', 16, 34, 'home', 46, 'https://i.imgur.com/QQZouT5.png', 'https://i.imgur.com/D5EW4eS.png', NULL, NULL),
(56, 2015, '2015-09-12', 'Austin Peay', 'Win', 52, 6, 'home', 46, 'https://i.imgur.com/tzGPqt9.png', 'https://i.imgur.com/D5EW4eS.png', NULL, NULL),
(57, 2015, '2015-09-19', 'Texas State', 'Win', 56, 50, 'road', 46, 'https://i.imgur.com/91mdYpw.png', 'https://i.imgur.com/fFpp94n.png', NULL, NULL),
(58, 2015, '2015-09-26', 'Nebraska', 'Loss', 28, 36, 'road', 45, 'https://i.imgur.com/91mdYpw.png', 'https://i.imgur.com/W3MtQIu.png', NULL, NULL),
(59, 2015, '2015-10-03', 'North Texas', 'Win', 49, 14, 'home', 46, 'https://i.imgur.com/a27MOQJ.png', 'https://i.imgur.com/D5EW4eS.png', NULL, NULL),
(60, 2015, '2015-10-09', 'Marshall', 'Loss', 10, 31, 'road', 45, 'https://i.imgur.com/91mdYpw.png', 'https://i.imgur.com/r8kL90o.png', NULL, NULL),
(61, 2015, '2015-10-17', 'UTSA', 'Win', 32, 10, 'home', 46, 'https://i.imgur.com/sEhsCYp.png', 'https://i.imgur.com/D5EW4eS.png', NULL, NULL),
(62, 2015, '2015-10-24', 'Charlotte', 'Win', 44, 10, 'road', 45, 'https://i.imgur.com/91mdYpw.png', 'https://i.imgur.com/hOmThlX.png', NULL, NULL),
(63, 2015, '2015-10-31', 'UTEP', 'Win', 34, 13, 'home', 46, 'https://i.imgur.com/hXizxrh.png', 'https://i.imgur.com/D5EW4eS.png', NULL, NULL),
(64, 2015, '2015-11-14', 'Rice', 'Win', 65, 10, 'road', 45, 'https://i.imgur.com/91mdYpw.png', 'https://i.imgur.com/18TKdY6.png', NULL, NULL),
(65, 2015, '2015-11-21', 'Old Dominion', 'Win', 56, 31, 'home', 46, 'https://i.imgur.com/26SkyAX.png', 'https://i.imgur.com/D5EW4eS.png', NULL, NULL),
(66, 2015, '2015-11-28', 'Louisiana Tech', 'Win', 58, 24, 'road', 45, 'https://i.imgur.com/91mdYpw.png', 'https://i.imgur.com/Er7ouMF.png', NULL, NULL),
(67, 2015, '2015-12-05', 'Western Kentucky', 'Loss', 28, 45, 'cusaChampionship', 45, 'https://i.imgur.com/91mdYpw.png', 'https://i.imgur.com/fYHT8Fj.png', NULL, NULL),
(68, 2015, '2015-12-26', 'Washington', 'Loss', 31, 44, 'heartOfDallasBowl', 44, 'https://i.imgur.com/4FjGj0c.png', 'https://i.imgur.com/D5EW4eS.png', NULL, NULL),
(69, 2014, '2014-08-30', 'Mississippi State', 'Loss', 0, 49, 'road', 48, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/CnRR4Bl.png', NULL, NULL),
(70, 2014, '2014-09-06', 'Alcorn State', 'Win', 26, 20, 'home', 49, 'https://i.imgur.com/H5l7M0W.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(71, 2014, '2014-09-13', 'Alabama', 'Loss', 12, 52, 'road', 48, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/xTT7Jvp.png', NULL, NULL),
(72, 2014, '2014-09-20', 'Appalachian St.', 'Win', 21, 20, 'home', 49, 'https://i.imgur.com/Olo7y73.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(73, 2014, '2014-09-27', 'Rice', 'Loss', 23, 41, 'home', 50, 'https://i.imgur.com/Pg8Pwsg.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(74, 2014, '2014-10-04', 'Middle Tennessee', 'Loss', 31, 37, 'road', 48, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/tJKACA7.png', NULL, NULL),
(75, 2014, '2014-10-18', 'North Texas', 'Win', 30, 20, 'road', 48, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/eEydbLS.png', NULL, NULL),
(76, 2014, '2014-10-25', 'Louisiana Tech', 'Loss', 20, 31, 'home', 49, 'https://i.imgur.com/eMq0e6X.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(77, 2014, '2014-11-01', 'UTEP', 'Loss', 14, 35, 'road', 48, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/FedRkWQ.png', NULL, NULL),
(78, 2014, '2014-11-08', 'Marshall', 'Loss', 17, 63, 'home', 47, 'https://i.imgur.com/efNbL6h.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(79, 2014, '2014-11-13', 'UTSA', 'Loss', 10, 12, 'road', 48, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/2RJmn5t.png', NULL, NULL),
(80, 2014, '2014-11-29', 'UAB', 'Loss', 24, 45, 'home', 49, 'https://i.imgur.com/9ne7qX3.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(81, 2013, '2013-08-31', 'Texas State', 'Loss', 15, 22, 'home', 56, 'https://i.imgur.com/WqoOpjs.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(82, 2013, '2013-09-07', 'Nebraska', 'Loss', 13, 56, 'road', 51, 'https://i.imgur.com/iVA46ad.png', 'https://i.imgur.com/W3MtQIu.png', NULL, NULL),
(83, 2013, '2013-09-14', 'Arkansas', 'Loss', 3, 24, 'road', 51, 'https://i.imgur.com/iVA46ad.png', 'https://i.imgur.com/Vr8MyqP.png', NULL, NULL),
(84, 2013, '2013-09-28', 'Boise State', 'Loss', 7, 60, 'road', 51, 'https://i.imgur.com/iVA46ad.png', 'https://i.imgur.com/8owJa6W.png', NULL, NULL),
(85, 2013, '2013-10-05', 'FIU', 'Loss', 23, 24, 'home', 56, 'https://i.imgur.com/aFVKePr.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(86, 2013, '2013-10-19', 'East Carolina', 'Loss', 14, 55, 'road', 54, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/eoICdS3.png', NULL, NULL),
(87, 2013, '2013-10-26', 'North Texas', 'Loss', 14, 55, 'home', 56, 'https://i.imgur.com/BHFgLnI.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(88, 2013, '2013-11-02', 'Marshall', 'Loss', 13, 61, 'road', 53, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/r8kL90o.png', NULL, NULL),
(89, 2013, '2013-11-09', 'Louisiana Tech', 'Loss', 13, 36, 'road', 53, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/N17AIWI.png', NULL, NULL),
(90, 2013, '2013-11-16', 'Florida Atlantic', 'Loss', 7, 41, 'home', 52, 'https://i.imgur.com/FMidTZe.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(91, 2013, '2013-11-23', 'Middle Tennessee', 'Loss', 21, 42, 'home', 55, 'https://i.imgur.com/OIzN5Am.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(92, 2013, '2013-11-30', 'UAB', 'Win', 62, 27, 'road', 51, 'https://i.imgur.com/iVA46ad.png', 'https://i.imgur.com/Bqbcf1e.png', NULL, NULL),
(93, 2012, '2012-09-01', 'Nebraska', 'Loss', 20, 49, 'road', 61, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/W3MtQIu.png', NULL, NULL),
(94, 2012, '2012-09-15', 'East Carolina', 'Loss', 14, 24, 'home', 63, 'https://i.imgur.com/7V4DjBN.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(95, 2012, '2012-09-22', 'Western Kentucky', 'Loss', 17, 42, 'road', 61, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/sdMVjBf.png', NULL, NULL),
(96, 2012, '2012-09-29', 'Louisville', 'Loss', 17, 21, 'home', 62, 'https://i.imgur.com/YNFViJu.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(97, 2012, '2012-10-06', 'Boise State', 'Loss', 14, 40, 'home', 62, 'https://i.imgur.com/HObuIyg.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(98, 2012, '2012-10-13', 'UCF', 'Loss', 31, 38, 'road', 61, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/e4IeW8a.png', NULL, NULL),
(99, 2012, '2012-10-20', 'Marshall', 'Loss', 24, 59, 'home', 58, 'https://i.imgur.com/efNbL6h.png', 'https://i.imgur.com/xs3ffsG.png', NULL, NULL),
(100, 2012, '2012-10-27', 'Rice', 'Loss', 17, 44, 'road', 59, 'https://i.imgur.com/tboQQX0.png', 'https://i.imgur.com/ow2bjaX.png', NULL, NULL),
(101, 2012, '2012-11-03', 'UAB', 'Loss', 19, 27, 'home', 58, 'https://i.imgur.com/i6B6NTm.png', 'https://i.imgur.com/xs3ffsG.png', NULL, NULL),
(102, 2012, '2012-11-10', 'SMU', 'Loss', 6, 34, 'road', 60, 'https://i.imgur.com/tboQQX0.png', 'https://i.imgur.com/m9CWpp5.png', NULL, NULL),
(103, 2012, '2012-11-17', 'UTEP', 'Loss', 33, 34, 'home', 57, 'https://i.imgur.com/vepWgsz.png', 'https://i.imgur.com/ehaZExI.png', NULL, NULL),
(104, 2012, '2012-11-24', 'Memphis', 'Loss', 24, 42, 'road', 58, 'https://i.imgur.com/tboQQX0.png', 'https://i.imgur.com/tfnMxv3.png', NULL, NULL),
(105, 2011, '2011-09-03', 'Louisiana Tech', 'Win', 19, 17, 'home', 65, 'https://i.imgur.com/IIG7ghU.png', 'https://i.imgur.com/taZOhoS.png', NULL, NULL),
(106, 2011, '2011-09-10', 'Marshall', 'Loss', 20, 26, 'road', 66, 'https://i.imgur.com/b2hxCO4.png', 'https://i.imgur.com/r8kL90o.png', NULL, NULL),
(107, 2011, '2011-09-17', 'SE Louisiana', 'Win', 52, 6, 'home', 64, 'https://i.imgur.com/1RVcqoC.png', 'https://i.imgur.com/taZOhoS.png', NULL, NULL),
(108, 2011, '2011-09-24', 'Virginia', 'Win', 30, 24, 'road', 68, 'https://i.imgur.com/0QSI8ct.png', 'https://i.imgur.com/vtqhluo.png', NULL, NULL),
(109, 2011, '2011-10-01', 'Rice', 'Win', 48, 24, 'home', 67, 'https://i.imgur.com/hJeASCC.png', 'https://i.imgur.com/0mb7iXg.png', NULL, NULL),
(110, 2011, '2011-10-08', 'Navy', 'Win', 63, 35, 'road', 68, 'https://i.imgur.com/0QSI8ct.png', 'https://i.imgur.com/7d0Cy0b.png', NULL, NULL),
(111, 2011, '2011-10-22', 'SMU', 'Win', 27, 3, 'home', 69, 'https://i.imgur.com/Wmb5RX4.png', 'https://i.imgur.com/9os2jI8.png', NULL, NULL),
(112, 2011, '2011-10-29', 'UTEP', 'Win', 31, 13, 'road', 70, 'https://i.imgur.com/Uooa71s.png', 'https://i.imgur.com/esTrmDY.png', NULL, NULL),
(113, 2011, '2011-11-05', 'East Carolina', 'Win', 48, 28, 'road', 70, 'https://i.imgur.com/Uooa71s.png', 'https://i.imgur.com/eoICdS3.png', NULL, NULL),
(114, 2011, '2011-11-12', 'UCF', 'Win', 30, 29, 'home', 71, 'https://i.imgur.com/6zF53D5.png', 'https://i.imgur.com/cUx2okI.png', NULL, NULL),
(115, 2011, '2011-11-17', 'UAB', 'Loss', 31, 34, 'road', 72, 'https://i.imgur.com/J7tCROM.png', 'https://i.imgur.com/Y0UURK7.png', NULL, NULL),
(116, 2011, '2011-11-26', 'Memphis', 'Win', 44, 7, 'home', 71, 'https://i.imgur.com/vXv59gl.png', 'https://i.imgur.com/cUx2okI.png', NULL, NULL),
(117, 2011, '2011-12-03', 'Houston', 'Win', 49, 28, 'cusaChampionship', 73, 'https://i.imgur.com/5tk7v86.png', 'https://i.imgur.com/MXzffEZ.png', NULL, NULL),
(118, 2011, '2011-12-24', 'Nevada', 'Win', 24, 17, 'hawaiiBowl', 74, 'https://i.imgur.com/dm5ePBd.png', 'https://i.imgur.com/8MOe3u1.png', NULL, NULL),
(119, 2010, '2010-09-02', 'South Carolina', 'Loss', 13, 41, 'road', 80, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/YtP9j3s.png', NULL, NULL),
(120, 2010, '2010-09-11', 'Prairie View', 'Win', 34, 7, 'home', 76, 'https://i.imgur.com/8UjQBSz.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(121, 2010, '2010-09-17', 'Kansas', 'Win', 31, 16, 'home', 75, 'https://i.imgur.com/cwaUKx2.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(122, 2010, '2010-09-25', 'Louisiana Tech', 'Win', 13, 12, 'road', 77, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/HfwpNT6.png', NULL, NULL),
(123, 2010, '2010-10-02', 'Marshall', 'Win', 41, 16, 'home', 75, 'https://i.imgur.com/efNbL6h.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(124, 2010, '2010-10-09', 'East Carolina', 'Loss', 43, 44, 'home', 75, 'https://i.imgur.com/rQiLD2t.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(125, 2010, '2010-10-16', 'Memphis', 'Win', 41, 19, 'road', 79, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/tfnMxv3.png', NULL, NULL),
(126, 2010, '2010-10-30', 'UAB', 'Loss', 49, 50, 'home', 75, 'https://i.imgur.com/Ql0UlbW.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(127, 2010, '2010-11-06', 'Tulane', 'Win', 46, 30, 'road', 77, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/3fhWYcc.png', NULL, NULL),
(128, 2010, '2010-11-13', 'UCF', 'Win', 31, 21, 'road', 79, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/e4IeW8a.png', NULL, NULL),
(129, 2010, '2010-11-20', 'Houston', 'Win', 59, 41, 'home', 75, 'https://i.imgur.com/vEJFaT6.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(130, 2010, '2010-11-26', 'Tulsa', 'Loss', 50, 56, 'road', 79, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/uIkZam5.png', NULL, NULL),
(131, 2010, '2010-12-21', 'Louisville', 'Loss', 28, 31, 'beefOBradysBowl', 78, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/XHbmt8Y.png', NULL, NULL),
(132, 2009, '2009-09-05', 'Alcorn State', 'Win', 52, 0, 'home', 82, 'https://i.imgur.com/nRF1BJ4.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(133, 2009, '2009-09-12', 'UCF', 'Win', 26, 19, 'home', 81, 'https://i.imgur.com/6zF53D5.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(134, 2009, '2009-09-19', 'Virginia', 'Win', 37, 34, 'home', 83, 'https://i.imgur.com/YmUnfe4.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(135, 2009, '2009-09-26', 'Kansas', 'Loss', 28, 35, 'road', 87, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/d6FHTv9.png', NULL, NULL),
(136, 2009, '2009-10-01', 'UAB', 'Loss', 17, 30, 'road', 88, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/Y0UURK7.png', NULL, NULL),
(137, 2009, '2009-10-10', 'Louisville', 'Loss', 23, 25, 'road', 86, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/S6nBIq0.png', NULL, NULL),
(138, 2009, '2009-10-17', 'Memphis', 'Win', 36, 16, 'home', 81, 'https://i.imgur.com/vXv59gl.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(139, 2009, '2009-10-24', 'Tulane', 'Win', 43, 6, 'home', 84, 'https://i.imgur.com/vp7jJKy.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(140, 2009, '2009-10-31', 'Houston', 'Loss', 43, 50, 'road', 87, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/MXzffEZ.png', NULL, NULL),
(141, 2009, '2009-11-14', 'Marshall', 'Win', 27, 20, 'road', 86, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/FgwpwTI.png', NULL, NULL),
(142, 2009, '2009-11-21', 'Tulsa', 'Win', 44, 34, 'home', 82, 'https://i.imgur.com/CUTS35O.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(143, 2009, '2009-11-28', 'East Carolina', 'Loss', 20, 25, 'road', 86, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/SKMp3et.png', NULL, NULL),
(144, 2009, '2009-12-20', 'Middle Tennessee', 'Loss', 32, 42, 'newOrleansBowl', 85, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/BlwDQVF.png', NULL, NULL),
(145, 2008, '2008-08-30', 'Louisiana', 'Win', 51, 21, 'home', 90, 'https://i.imgur.com/WGejTIs.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(146, 2008, '2008-09-06', 'Auburn', 'Loss', 13, 27, 'road', 94, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/RRfRSxT.png', NULL, NULL),
(147, 2008, '2008-09-13', 'Arkansas State', 'Win', 27, 24, 'road', 94, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/mAb9MZD.png', NULL, NULL),
(148, 2008, '2008-09-20', 'Marshall', 'Loss', 27, 34, 'home', 91, 'https://i.imgur.com/Iq16O93.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(149, 2008, '2008-10-04', 'UTEP', 'Loss', 37, 40, 'home', 90, 'https://i.imgur.com/vepWgsz.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(150, 2008, '2008-10-11', 'Boise State', 'Loss', 7, 24, 'home', 89, 'https://i.imgur.com/GvcKDlg.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(151, 2008, '2008-10-18', 'Rice', 'Loss', 40, 45, 'road', 94, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/VaP1mkm.png', NULL, NULL),
(152, 2008, '2008-10-25', 'Memphis', 'Loss', 30, 36, 'road', 95, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/tfnMxv3.png', NULL, NULL),
(153, 2008, '2008-11-01', 'UAB', 'Win', 70, 14, 'home', 93, 'https://i.imgur.com/Ql0UlbW.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(154, 2008, '2008-11-08', 'UCF', 'Win', 17, 6, 'road', 95, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/e4IeW8a.png', NULL, NULL),
(155, 2008, '2008-11-15', 'East Carolina', 'Win', 21, 3, 'home', 89, 'https://i.imgur.com/rQiLD2t.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(156, 2008, '2008-11-29', 'SMU', 'Win', 28, 12, 'road', 95, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/5cOq8Ag.png', NULL, NULL),
(157, 2008, '2008-12-21', 'Troy', 'Win', 30, 27, 'newOrleansBowl', 92, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/FIQdu6D.png', NULL, NULL),
(158, 2007, '2007-09-01', 'UT Martin', 'Win', 35, 13, 'home', 98, 'https://i.imgur.com/cxfKwMj.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(159, 2007, '2007-09-08', 'Tennessee', 'Loss', 19, 39, 'road', 99, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/EgBsRn7.png', NULL, NULL),
(160, 2007, '2007-09-15', 'East Carolina', 'Win', 28, 21, 'road', 99, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/SKMp3et.png', NULL, NULL),
(161, 2007, '2007-09-27', 'Boise State', 'Loss', 16, 38, 'road', 99, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/pukYdz5.png', NULL, NULL),
(162, 2007, '2007-10-03', 'Rice', 'Loss', 29, 31, 'home', 98, 'https://i.imgur.com/hJeASCC.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(163, 2007, '2007-10-13', 'SMU', 'Win', 28, 7, 'home', 96, 'https://i.imgur.com/jYjrbUB.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(164, 2007, '2007-10-21', 'Marshall', 'Win', 33, 24, 'road', 99, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/IzDrt3q.png', NULL, NULL),
(165, 2007, '2007-10-28', 'UCF', 'Loss', 17, 34, 'home', 96, 'https://i.imgur.com/6zF53D5.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(166, 2007, '2007-11-03', 'UAB', 'Win', 37, 7, 'road', 99, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/538nHgu.png', NULL, NULL),
(167, 2007, '2007-11-10', 'Memphis', 'Loss', 26, 29, 'home', 96, 'https://i.imgur.com/vXv59gl.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(168, 2007, '2007-11-17', 'UTEP', 'Win', 56, 30, 'road', 99, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/esTrmDY.png', NULL, NULL),
(169, 2007, '2007-11-24', 'Arkansas State', 'Win', 16, 10, 'home', 98, 'https://i.imgur.com/1EB7zJg.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(170, 2007, '2007-12-22', 'Cincinnati', 'Loss', 21, 31, 'papaJohnsBowl', 101, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/TnZeslF.png', NULL, NULL),
(171, 2006, '2006-09-02', 'Florida', 'Loss', 7, 34, 'road', 102, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/uVMCcBB.png', NULL, NULL),
(172, 2006, '2006-09-09', 'SE Louisiana', 'Win', 45, 0, 'home', 98, 'https://i.imgur.com/1RVcqoC.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(173, 2006, '2006-09-16', 'NC State', 'Win', 37, 17, 'home', 96, 'https://i.imgur.com/gcZAQVm.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(174, 2006, '2006-09-26', 'UCF', 'Win', 19, 14, 'road', 99, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/Nzl76HC.png', NULL, NULL),
(175, 2006, '2006-10-03', 'Tulsa', 'Loss', 6, 20, 'road', 99, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/fDJlTBp.png', NULL, NULL),
(176, 2006, '2006-10-14', 'Houston', 'Win', 31, 27, 'home', 96, 'https://i.imgur.com/vEJFaT6.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(177, 2006, '2006-10-21', 'Virginia Tech', 'Loss', 6, 46, 'road', 100, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/mvEiOaX.png', NULL, NULL),
(178, 2006, '2006-10-28', 'East Carolina', 'Loss', 17, 20, 'home', 96, 'https://i.imgur.com/rQiLD2t.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(179, 2006, '2006-11-05', 'Memphis', 'Win', 42, 21, 'road', 102, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/tfnMxv3.png', NULL, NULL),
(180, 2006, '2006-11-11', 'Tulane', 'Win', 31, 3, 'road', 102, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/KyFtGt0.png', NULL, NULL),
(181, 2006, '2006-11-18', 'UAB', 'Win', 25, 20, 'home', 96, 'https://i.imgur.com/dphW9Gq.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(182, 2006, '2006-11-25', 'Marshall', 'Win', 42, 7, 'home', 96, 'https://i.imgur.com/Iq16O93.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(183, 2006, '2006-12-01', 'Houston', 'Loss', 20, 34, 'cusaChampionship', 102, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/MXzffEZ.png', NULL, NULL),
(184, 2006, '2007-01-07', 'Ohio', 'Win', 28, 7, 'gmacBowl', 97, 'https://i.imgur.com/cHcNVai.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(185, 2005, '2005-09-10', 'Alabama', 'Loss', 21, 30, 'road', 106, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/W8fxa37.png', NULL, NULL),
(186, 2005, '2005-09-17', 'McNeese St.', 'Win', 48, 20, 'home', 104, 'https://i.imgur.com/ckc7PUn.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(187, 2005, '2005-10-01', 'East Carolina', 'Win', 33, 7, 'road', 106, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/NkOnJ70.png', NULL, NULL),
(188, 2005, '2005-10-08', 'Tulsa', 'Loss', 17, 34, 'home', 104, 'https://i.imgur.com/LurdQN6.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(189, 2005, '2005-10-15', 'UCF', 'Win', 52, 31, 'home', 104, 'https://i.imgur.com/07Ar05N.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(190, 2005, '2005-10-21', 'UAB', 'Win', 37, 28, 'road', 106, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/538nHgu.png', NULL, NULL),
(191, 2005, '2005-10-29', 'NC State', 'Loss', 17, 21, 'road', 106, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/d6jXGPs.png', NULL, NULL),
(192, 2005, '2005-11-08', 'Marshall', 'Win', 27, 24, 'road', 106, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/IzDrt3q.png', NULL, NULL),
(193, 2005, '2005-11-13', 'Houston', 'Loss', 24, 27, 'road', 106, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/MXzffEZ.png', NULL, NULL),
(194, 2005, '2005-11-19', 'Memphis', 'Loss', 22, 24, 'home', 103, 'https://i.imgur.com/vXv59gl.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(195, 2005, '2005-11-26', 'Tulane', 'Win', 26, 7, 'home', 104, 'https://i.imgur.com/vp7jJKy.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(196, 2005, '2005-12-20', 'Arkansas State', 'Win', 31, 19, 'newOrleansBowl', 107, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/3YE2dwo.png', NULL, NULL),
(197, 2004, '2004-09-11', 'Nebraska', 'Win', 21, 17, 'road', 108, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/W3MtQIu.png', NULL, NULL),
(198, 2004, '2004-09-25', 'Tulane', 'Win', 32, 14, 'road', 108, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/KyFtGt0.png', NULL, NULL),
(199, 2004, '2004-10-02', 'South Florida', 'Win', 32, 20, 'road', 108, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/zml5GtK.png', NULL, NULL),
(200, 2004, '2004-10-07', 'Houston', 'Win', 35, 29, 'home', 103, 'https://i.imgur.com/vEJFaT6.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(201, 2004, '2004-10-16', 'Alabama', 'Loss', 3, 27, 'road', 108, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/W8fxa37.png', NULL, NULL),
(202, 2004, '2004-10-23', 'East Carolina', 'Win', 51, 10, 'home', 103, 'https://i.imgur.com/Glbu14C.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(203, 2004, '2004-11-06', 'Cincinnati', 'Loss', 24, 52, 'home', 103, 'https://i.imgur.com/q6YQF4f.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(204, 2004, '2004-11-12', 'Memphis', 'Loss', 26, 30, 'road', 108, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/tfnMxv3.png', NULL, NULL),
(205, 2004, '2004-11-20', 'TCU', 'Loss', 17, 42, 'road', 108, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/yvDxItm.png', NULL, NULL),
(206, 2004, '2004-11-27', 'UAB', 'Win', 26, 21, 'home', 103, 'https://i.imgur.com/dphW9Gq.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(207, 2004, '2004-12-04', 'California', 'Loss', 16, 26, 'home', 103, 'https://i.imgur.com/HGDsUzq.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(208, 2004, '2004-12-14', 'North Texas', 'Win', 31, 10, 'newOrleansBowl', 107, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/DeeuiSS.png', NULL, NULL),
(209, 2003, '2003-08-30', 'California', 'Loss', 2, 34, 'road', 106, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/mqCFDCB.png', NULL, NULL),
(210, 2003, '2003-09-04', 'UAB', 'Win', 17, 12, 'road', 106, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/538nHgu.png', NULL, NULL),
(211, 2003, '2003-09-13', 'Memphis', 'Win', 32, 6, 'home', 104, 'https://i.imgur.com/vXv59gl.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(212, 2003, '2003-09-25', 'Nebraska', 'Loss', 14, 38, 'home', 104, 'https://i.imgur.com/dmQFHNn.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(213, 2003, '2003-10-04', 'Cincinnati', 'Win', 22, 20, 'road', 108, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/3Zq3QXu.png', NULL, NULL),
(214, 2003, '2003-10-11', 'Alabama', 'Loss', 3, 17, 'road', 108, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/W8fxa37.png', NULL, NULL),
(215, 2003, '2003-10-25', 'South Florida', 'Win', 27, 6, 'home', 103, 'https://i.imgur.com/hUnfonx.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(216, 2003, '2003-11-01', 'Louisiana', 'Win', 48, 3, 'home', 104, 'https://i.imgur.com/WGejTIs.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(217, 2003, '2003-11-08', 'Houston', 'Win', 31, 10, 'road', 106, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/MXzffEZ.png', NULL, NULL),
(218, 2003, '2003-11-15', 'Tulane', 'Win', 28, 14, 'home', 104, 'https://i.imgur.com/vp7jJKy.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(219, 2003, '2003-11-20', 'TCU', 'Win', 40, 28, 'home', 103, 'https://i.imgur.com/4H2RZ0D.png', 'https://i.imgur.com/RpELg6F.png', NULL, NULL),
(220, 2003, '2003-11-29', 'East Carolina', 'Win', 38, 21, 'road', 106, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/o57nnJM.png', NULL, NULL),
(221, 2003, '2003-12-31', 'Utah', 'Loss', 0, 17, 'libertyBowl', 105, 'https://i.imgur.com/ceSE92H.png', 'https://i.imgur.com/YDMBLSw.png', NULL, NULL);

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
  MODIFY `gameID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=481;

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
