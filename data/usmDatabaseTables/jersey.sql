-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 15, 2020 at 10:50 PM
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
(1, 'black', '2018 black B jerseys', 'https://i.imgur.com/BD69MV8.png'),
(2, 'heather gray', '2019 heather gray jerseys', 'https://i.imgur.com/nHtTkO9.png'),
(3, 'black', '2018 black A jerseys', 'https://i.imgur.com/tZ6UBew.png'),
(4, 'white', '2018 white jerseys', 'https://i.imgur.com/DePHyK8.png'),
(5, 'gold', '2019 gold jersey', 'https://i.imgur.com/JyjLpWR.png'),
(6, 'white', '2018 white jersey (2020 armed forces bowl)', 'https://i.imgur.com/hmOouTE.png'),
(7, 'gold', '2017 gold jersey (2017 independence bowl)', 'https://i.imgur.com/wt1rsS4.png'),
(8, 'white', '2015 white jersey (2016 new orleans bowl)', 'https://i.imgur.com/sdXCbfj.png'),
(9, 'black', '2015 black jersey (2015 heart of dallas bowl)', 'https://i.imgur.com/becHZ7Z.png'),
(10, 'black', '2017 black 1997 throwback jersey', 'https://i.imgur.com/2TLhhNe.png'),
(11, 'gold', '2017 gold jersey', 'https://i.imgur.com/KFMRdZk.png'),
(12, 'white', '2017 white jersey', 'https://i.imgur.com/1XQTW0d.png'),
(13, 'black', '2017 black jersey', 'https://i.imgur.com/eUDidU6.png'),
(14, 'white', '2015 white jersey', 'https://i.imgur.com/VE41kwE.png'),
(15, 'black', '2015 black jersey', 'https://i.imgur.com/c70ZT2B.png'),
(16, 'gold', '2014 gold jersey', 'https://i.imgur.com/AucSj4s.png'),
(17, 'white', '2014 white jersey', 'https://i.imgur.com/OyjkfoE.png'),
(18, 'black', '2014 black jersey', 'https://i.imgur.com/obez31x.png'),
(19, 'black', '2014 black 44 jersey', 'https://i.imgur.com/51fsuqg.png'),
(20, 'gold', '2013 gold jersey', 'https://i.imgur.com/lKfmdeM.png'),
(21, 'white', '2013 white jersey', 'https://i.imgur.com/bJ9CM1p.png'),
(22, 'black', '2013 black jersey', 'https://i.imgur.com/gOgwipg.png'),
(23, 'black', '2010 black jersey (2011 hawaii bowl)', 'https://i.imgur.com/dWvXjYk.png'),
(24, 'white', '2010 white jersey (2010 beef o bradys bowl)', 'https://i.imgur.com/jjmEpe2.png'),
(25, 'white', '2009 white jersey (2009 new orleans bowl)', 'https://i.imgur.com/pZhSyAb.png'),
(26, 'white', '2012 white throwback jerseys', 'https://i.imgur.com/SIfzoRQ.png'),
(27, 'white', '2012 white jerseys', 'https://i.imgur.com/Gz9EUW6.png'),
(28, 'black', '2012 black jerseys', 'https://i.imgur.com/FcSJI2T.png'),
(29, 'white', '2010 white jerseys', 'https://i.imgur.com/KX6ybac.png'),
(30, 'black', '2010 black jerseys', 'https://i.imgur.com/oJoOlIj.png'),
(31, 'gold', '2009 gold jerseys', 'https://i.imgur.com/LW3Yo3Y.png'),
(32, 'white', '2009 white jerseys', 'https://i.imgur.com/uboDHK3.png'),
(33, 'black', '2009 black jerseys', 'https://i.imgur.com/yOAbVzb.png'),
(34, 'gold', '2008 gold jerseys (2008 new orleans bowl)', 'https://i.imgur.com/KA3iRo2.png'),
(35, 'white', '2006 white jerseys (2007 papajohns bowl)', 'https://i.imgur.com/9KXBGSm.png'),
(36, 'black', '2006 black jerseys (2006 gmac bowl)', 'https://i.imgur.com/ypJzSs4.png'),
(37, 'white', '2003 white jerseys (new orleans bowl)', 'https://i.imgur.com/6TcPDrt.png'),
(38, 'white', '2003 white jerseys (2003 liberty bowl)', 'https://i.imgur.com/JmMFQAY.png'),
(39, 'gold', '2008 gold jerseys', 'https://i.imgur.com/4FQWafw.png'),
(40, 'white', '2006 white jerseys', 'https://i.imgur.com/Gcmb33j.png'),
(41, 'black', '2006 black jerseys', 'https://i.imgur.com/eJJ1zII.png'),
(42, 'white', '2003 white jerseys', 'https://i.imgur.com/fWmpwSZ.png'),
(43, 'black', '2003 black jerseys', 'https://i.imgur.com/02hwsj7.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jersey`
--
ALTER TABLE `jersey`
  ADD PRIMARY KEY (`jerseyID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jersey`
--
ALTER TABLE `jersey`
  MODIFY `jerseyID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
