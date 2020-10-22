-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 15, 2020 at 10:51 PM
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
(1, 'black', '2015 black pants', 'https://i.imgur.com/x4Nh7eW.png'),
(2, 'heather gray', '2019 heather gray pants', 'https://i.imgur.com/Bmbt7Hx.png'),
(3, 'gold', '2019 gold pants', 'https://i.imgur.com/ubZStY0.png'),
(4, 'white', '2016 white pants', 'https://i.imgur.com/K7Vm1PL.png'),
(5, 'gold', '2017 gold pants', 'https://i.imgur.com/aq9LBbn.png'),
(6, 'white', '2018 white pants', 'https://i.imgur.com/YWNm9Tp.png'),
(7, 'old gold', '2017 old gold pants', 'https://i.imgur.com/C1zGZyy.png'),
(8, 'white', '2013 white pants', 'https://i.imgur.com/kuAAVqn.png'),
(9, 'black', '2013 black pants', 'https://i.imgur.com/MMHjOJX.png'),
(10, 'gold', '2012 gold pants', 'https://i.imgur.com/X7a4yiG.png'),
(11, 'white', '2009 white pants', 'https://i.imgur.com/PxdCE6t.png'),
(12, 'gold', '2009 gold pants', 'https://i.imgur.com/VzIyq3p.png'),
(13, 'black', '2009 black pants', 'https://i.imgur.com/vE0TRcC.png'),
(14, 'white', '2006 white pants', 'https://i.imgur.com/RFpeSTf.png'),
(15, 'gold', '2003 gold pants', 'https://i.imgur.com/8ypT9uY.png'),
(16, 'black', '2003 black pants', 'https://i.imgur.com/Nmbvpfr.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pants`
--
ALTER TABLE `pants`
  ADD PRIMARY KEY (`pantsID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
