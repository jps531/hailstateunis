-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 25, 2020 at 12:08 AM
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
-- Database: `footballTableData`
--

-- --------------------------------------------------------

--
-- Table structure for table `jersey`
--

CREATE TABLE `jersey` (
  `jerseyID` int(11) NOT NULL,
  `jColor` varchar(30) DEFAULT NULL,
  `jName` varchar(50) DEFAULT NULL,
  `jImage` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jersey`
--

INSERT INTO `jersey` (`jerseyID`, `jColor`, `jName`, `jImage`) VALUES
(0, 'white', '2016 white jerseys (2019 music city bowl)', 'https://i.imgur.com/ES8nEBZ.png'),
(1, 'maroon', '2019 egg bowl maroon jerseys', 'https://i.imgur.com/koCSDsu.png'),
(2, 'black', '2019 black jerseys', 'https://i.imgur.com/cr4poRg.png'),
(3, 'white', '2016 white jerseys', 'https://i.imgur.com/krxdYFC.png'),
(4, 'maroon', '2017 maroon jerseys', 'https://i.imgur.com/CFzyVOJ.png'),
(5, 'white', '2016 white jerseys (2019 outback bowl)', 'https://i.imgur.com/Qk7KFX3.png'),
(6, 'gray', '2018 statesman gray jerseys', 'https://i.imgur.com/cuVQwSh.png'),
(7, 'maroon', '2017 maroon jerseys (2017 taxslayer bowl)', 'https://i.imgur.com/CLXGkJf.png'),
(8, 'maroon', '2015 maroon jerseys', 'https://i.imgur.com/K13H3rc.png'),
(9, 'maroon', '2015 maroon jerseys (2015 belk bowl)', 'https://i.imgur.com/JHGyaet.png'),
(10, 'maroon', '2015 maroon jerseys (2016 st. petersburg bowl)', 'https://i.imgur.com/Zqv8cN1.png'),
(11, 'white', '2015 white jerseys', 'https://i.imgur.com/RZDTm7N.png'),
(12, 'white', '2014 orange bowl white jerseys', 'https://i.imgur.com/EFE1wcV.png'),
(13, 'maroon', '2017 veterans day maroon jerseys', 'https://i.imgur.com/ZfbLun7.png'),
(14, 'black', '2015 black jerseys', 'https://i.imgur.com/jlpqcs7.png'),
(15, 'black', '2016 black jerseys', 'https://i.imgur.com/VSZjLM3.png'),
(16, 'white', '2016 patriots white jerseys', 'https://i.imgur.com/gILrNFc.png'),
(17, 'maroon', '2014 dws 100 maroon jerseys', 'https://i.imgur.com/HZYD6uc.png'),
(18, 'maroon', '2012 maroon jerseys (2013 liberty bowl)', 'https://i.imgur.com/CApjQwT.png'),
(19, 'white', '2012 snow bowl white jerseys (2013 gator bowl)', 'https://i.imgur.com/Mk2ddfp.png'),
(20, 'white', '2012 snow bowl white jerseys', 'https://i.imgur.com/beIcda4.png'),
(21, 'white', '2012 white jerseys', 'https://i.imgur.com/j2b6BEY.png'),
(22, 'maroon', '2012 maroon jerseys', 'https://i.imgur.com/nE35xlj.png'),
(23, 'white', '2014 egg bowl white jerseys', 'https://i.imgur.com/3GPd3id.png'),
(24, 'maroon', '2013 egg bowl maroon jerseys', 'https://i.imgur.com/heavyzw.png'),
(25, 'white', '2012 egg bowl white jerseys', 'https://i.imgur.com/80tonSy.png'),
(26, 'maroon', '2011 egg bowl maroon jerseys', 'https://i.imgur.com/qFGXo6j.png'),
(27, 'white', '2009 white jerseys (2011 gator bowl)', 'https://i.imgur.com/sHBIQti.png'),
(28, 'white', '2009 white jerseys (2011 music city bowl)', 'https://i.imgur.com/dPZbPbd.png'),
(29, 'black', '2009 black jerseys', 'https://i.imgur.com/e3L2tkM.png'),
(30, 'white', '2009 white jerseys', 'https://i.imgur.com/jB1qP7B.png'),
(31, 'maroon', '2009 maroon jerseys', 'https://i.imgur.com/rmeWqmr.png'),
(32, 'maroon', '2004 maroon jerseys (2007 liberty bowl)', 'https://i.imgur.com/Kxkz8O0.png'),
(33, 'white', '2004 white jerseys', 'https://i.imgur.com/asH9nMk.png'),
(34, 'maroon', '2004 maroon jerseys', 'https://i.imgur.com/R050HIn.png'),
(35, 'white', '1996 white jerseys (2000 independence bowl)', 'https://i.imgur.com/r655ver.png'),
(36, 'maroon', '1996 maroon jerseys (1999 peach bowl)', 'https://i.imgur.com/YQtKMKW.png'),
(37, 'white', '1996 white jerseys (1999 cotton bowl)', 'https://i.imgur.com/3eGBgmp.png'),
(38, 'white', '1996 white jerseys', 'https://i.imgur.com/CapD2yH.png'),
(39, 'maroon', '1996 maroon jerseys', 'https://i.imgur.com/E07bqq0.png'),
(40, 'white', '1995 white jerseys', 'https://i.imgur.com/e1BMj7h.png'),
(41, 'maroon', '1995 maroon jerseys', 'https://i.imgur.com/x1o7Q2F.png'),
(42, 'white', '1991 white jerseys (1993/1995 peach bowl)', 'https://i.imgur.com/XVmA447.png'),
(43, 'maroon', '1991 maroon jerseys (1991 liberty bowl)', 'https://i.imgur.com/uXVcYnL.png'),
(44, 'white', '1991 white jerseys', 'https://i.imgur.com/CCn0iAd.png'),
(45, 'maroon', '1991 maroon jerseys', 'https://i.imgur.com/ohbITYg.png'),
(46, 'white', '1990 white jerseys', 'https://i.imgur.com/gAY3zcI.png'),
(47, 'maroon', '1990 maroon jerseys', 'https://i.imgur.com/bb5KqSn.png'),
(48, 'white', '1989 white jerseys', 'https://i.imgur.com/5VrVLx7.png'),
(49, 'maroon', '1989 maroon jerseys', 'https://i.imgur.com/3DKP4gx.png'),
(50, 'white', '1986 white jerseys', 'https://i.imgur.com/6NRRjO7.png'),
(51, 'maroon', '1986 maroon jerseys', 'https://i.imgur.com/C22Dqs7.png'),
(52, 'white', '1984 white jerseys', 'https://i.imgur.com/B6v6WDL.png'),
(53, 'maroon', '1984 maroon jerseys', 'https://i.imgur.com/Eh8RIPe.png'),
(54, 'white', '1983 white jerseys', 'https://i.imgur.com/BKGZlrz.png'),
(55, 'maroon', '1983 maroon jerseys', 'https://i.imgur.com/HdbIo0x.png'),
(56, 'white', '1982 white jerseys', 'https://i.imgur.com/mwW4Lj4.png'),
(57, 'maroon', '1982 maroon jerseys', 'https://i.imgur.com/Vwxwn3B.png'),
(58, 'white', '1981 white jerseys', 'https://i.imgur.com/zUCv7uY.png\r\n'),
(59, 'maroon', '1981 maroon jerseys', 'https://i.imgur.com/xh1H2eS.png'),
(60, 'maroon', '1981 maroon jerseys (1981 hall of fame bowl)', 'https://i.imgur.com/O1AtQwJ.png'),
(61, 'white', '1980 white jerseys', 'https://i.imgur.com/sN1QJc2.png'),
(62, 'maroon', '1980 maroon jerseys', 'https://i.imgur.com/otixXGW.png'),
(63, 'maroon', '1974 maroon jerseys', 'https://i.imgur.com/V3AfsTW.png'),
(64, 'maroon', '1963 maroon jerseys', 'https://i.imgur.com/bXnEoFF.png'),
(65, 'maroon', '1941 maroon jerseys', 'https://i.imgur.com/Fhs7Duh.png'),
(66, 'maroon', '1937 maroon jerseys', 'https://i.imgur.com/wvPxkca.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jersey`
--
ALTER TABLE `jersey`
  ADD PRIMARY KEY (`jerseyID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
