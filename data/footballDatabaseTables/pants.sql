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
-- Table structure for table `pants`
--

CREATE TABLE `pants` (
  `pantsID` int(11) NOT NULL,
  `pColor` varchar(30) DEFAULT NULL,
  `pName` varchar(50) DEFAULT NULL,
  `pImage` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pants`
--

INSERT INTO `pants` (`pantsID`, `pColor`, `pName`, `pImage`) VALUES
(0, 'white', '2018 white pants', 'https://i.imgur.com/dkJhhDM.png'),
(1, 'maroon', '2019 egg bowl maroon pants', 'https://i.imgur.com/T6jyMsS.png'),
(2, 'black', '2019 black pants', 'https://i.imgur.com/cr4poRg.png'),
(3, 'gray', '2018 gray pants', 'https://i.imgur.com/0JP9hTZ.png'),
(4, 'maroon', '2018 maroon pants', 'https://i.imgur.com/lDKdXnQ.png'),
(5, 'gray', '2018 statesman gray pants', 'https://i.imgur.com/BOQKWjJ.png'),
(6, 'gray', '2015 gray pants', 'https://i.imgur.com/DfrlltQ.png'),
(7, 'white', '2016 white pants', 'https://i.imgur.com/krxdYFC.png'),
(8, 'maroon', '2016 maroon pants', 'https://i.imgur.com/CFzyVOJ.png'),
(9, 'maroon', '2016 patriots maroon pants', 'https://i.imgur.com/mmIDXz7.png'),
(10, 'black', '2016 black pants', 'https://i.imgur.com/sNRU91J.png'),
(11, 'maroon', '2016 veterans day maroon pants', 'https://i.imgur.com/3lmrMRK.png'),
(12, 'black', '2015 black pants', 'https://i.imgur.com/cBVJpel.png'),
(13, 'maroon', '2015 maroon pants', 'https://i.imgur.com/XVw9Inf.png'),
(14, 'white', '2015 white pants', 'https://i.imgur.com/DSOEwao.png'),
(15, 'white', '2014 white pants', 'https://i.imgur.com/gFqzDck.png'),
(16, 'white', 'solid white pants', 'https://i.imgur.com/ZMt2UCr.png'),
(17, 'maroon', 'solid maroon pants', 'https://i.imgur.com/oq7PqRQ.png'),
(18, 'maroon', '2012 maroon pants', 'https://i.imgur.com/JOLS8Su.png'),
(19, 'white', '2012 white pants', 'https://i.imgur.com/0mvwC3i.png'),
(20, 'white', '2012 snow bowl white pants', 'https://i.imgur.com/TrUj8C4.png'),
(21, 'gray', '2012 gray pants', 'https://i.imgur.com/tC2eTwE.png'),
(22, 'maroon', '2013 egg bowl maroon pants', 'https://i.imgur.com/tfxU5uw.png'),
(23, 'black', '2010 black pants', 'https://i.imgur.com/F6NWhKr.png'),
(24, 'maroon', '2009 maroon pants', 'https://i.imgur.com/dBwgjjy.png'),
(25, 'white', '2009 white pants', 'https://i.imgur.com/297zSiV.png'),
(26, 'maroon', '2006 maroon pants', 'https://i.imgur.com/Jnd2fCC.png'),
(27, 'white', '2004 white pants', 'https://i.imgur.com/gPWVBbr.png'),
(28, 'maroon', '1997 maroon pants', 'https://i.imgur.com/xvV82nQ.png'),
(29, 'white', '1997 white pants', 'https://i.imgur.com/RETEebD.png'),
(30, 'maroon', '1992 maroon pants', 'https://i.imgur.com/r4JAdus.png'),
(31, 'white', '1991 white pants', 'https://i.imgur.com/XVgdOQi.png'),
(32, 'white', '1989 white pants', 'https://i.imgur.com/6vMo0pt.png'),
(33, 'silver', '1986 silver pants', 'https://i.imgur.com/w5YqOG0.png'),
(34, 'white', '1980 white pants', 'https://i.imgur.com/WI35jfi.png'),
(35, 'maroon', '1941 maroon pants', 'https://i.imgur.com/ZdDD60o.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pants`
--
ALTER TABLE `pants`
  ADD PRIMARY KEY (`pantsID`);

--
-- AUTO_INCREMENT for table `jersey`
--
ALTER TABLE `jersey`
  MODIFY `jerseyID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
