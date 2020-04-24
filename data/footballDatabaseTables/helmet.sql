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
-- Table structure for table `helmet`
--

CREATE TABLE `helmet` (
  `helmetID` int(11) NOT NULL,
  `hColor` varchar(30) DEFAULT NULL,
  `hName` varchar(50) DEFAULT NULL,
  `hImage` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `helmet`
--

INSERT INTO `helmet` (`helmetID`, `hColor`, `hName`, `hImage`) VALUES
(0, 'white', '2015 white helmets', 'https://i.imgur.com/QtfoPxR.png'),
(1, 'maroon', '2019 egg bowl shiny maroon helmets', 'https://i.imgur.com/ZTaHA2V.png'),
(2, 'matte maroon', '2019 matte maroon helmets', 'https://i.imgur.com/MArQmOA.png'),
(3, 'matte maroon', '2018 matte maroon helmets', 'https://i.imgur.com/JJ66T9w.png'),
(4, 'silver', '2018 statesman silver helmets', 'https://i.imgur.com/jPx2rrC.png'),
(5, 'maroon', '2018 shiny maroon helmets', 'https://i.imgur.com/VPMHc9s.png'),
(6, 'silver', '2016 silver helmets', 'https://i.imgur.com/KLH8JHH.png'),
(7, 'maroon', '2015 shiny maroon helmets', 'https://i.imgur.com/chLGYzp.png'),
(8, 'matte maroon', '2015 matte maroon helmets', 'https://i.imgur.com/RCaE8Pt.png'),
(9, 'maroon', '2015 early shiny maroon helmets', 'https://i.imgur.com/4QQdGwX.png'),
(10, 'maroon', '2014 egg bowl shiny maroon helmets', 'https://i.imgur.com/9NfqMZQ.png'),
(11, 'gold', '2013 egg bowl chrome gold helmets', 'https://i.imgur.com/syweRBM.png'),
(12, 'matte maroon', '2012 egg bowl matte maroon helmets', 'https://i.imgur.com/e7ewY5x.png'),
(13, 'maroon', '2011 egg bowl shiny maroon helmets', 'https://i.imgur.com/Pup1qcG.png'),
(14, 'matte maroon', '2011 music city bowl matte maroon helmets', 'https://i.imgur.com/kn8kN1z.png'),
(15, 'maroon', '2014 dws 100 shiny maroon helmets', 'https://i.imgur.com/XhsXbsv.png'),
(16, 'matte maroon', '2012 matte maroon helmets', 'https://i.imgur.com/enSyYjs.png'),
(17, 'maroon', '2012 shiny maroon helmets', 'https://i.imgur.com/5tOguNA.png'),
(18, 'matte maroon', '2011 matte maroon helmets', 'https://i.imgur.com/uraeaWt.png'),
(19, 'maroon', '2011 shiny maroon helmets', 'https://i.imgur.com/drAivS0.png'),
(20, 'maroon', '2009 shiny maroon helmets', 'https://i.imgur.com/nA4L9Jp.png'),
(21, 'matte maroon', '2013 bulldog matte maroon helmets', 'https://i.imgur.com/r4Wd4kF.png'),
(22, 'white', '2012 bulldog white helmets', 'https://i.imgur.com/bxHFTpA.png'),
(23, 'white', '2008 bca white helmets', 'https://i.imgur.com/RQWzIAG.png'),
(24, 'white', '2004 white helmets', 'https://i.imgur.com/YSQw9Yd.png'),
(25, 'white', '2003 number white helmets', 'https://i.imgur.com/RVGgxIA.png'),
(26, 'white', '2000 white helmets', 'https://i.imgur.com/Ec97EzJ.png'),
(27, 'maroon', '1996 shiny maroon helmets', 'https://i.imgur.com/q2zFjS4.png'),
(28, 'maroon', '1989 shiny maroon helmets', 'https://i.imgur.com/Hd53MjS.png'),
(29, 'maroon', '1986 shiny maroon helmets', 'https://i.imgur.com/HgwIKOF.png'),
(30, 'maroon', '1979 shiny maroon helmets', 'https://i.imgur.com/PpPrBUl.png'),
(31, 'maroon', '1973 shiny maroon helmets', 'https://i.imgur.com/k1T02uF.png'),
(32, 'maroon', '1963 bulldog shiny maroon helmets', 'https://i.imgur.com/hO0t6Mh.png'),
(33, 'maroon', '1941 maroon helmets', 'https://i.imgur.com/ULaO6w4.png'),
(34, 'unknown', '1937 helmets', 'https://i.imgur.com/rVtHnPX.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `helmet`
--
ALTER TABLE `helmet`
  ADD PRIMARY KEY (`helmetID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
