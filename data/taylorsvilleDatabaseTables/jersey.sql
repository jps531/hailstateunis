-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 02, 2020 at 04:28 AM
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
(1, 'gold', '2019 gold jerseys', 'https://i.imgur.com/YNWMykq.png'),
(2, 'black', '2019 black jerseys', 'https://i.imgur.com/iajBeEU.png'),
(3, 'gray', '2017 gray jerseys', 'https://i.imgur.com/m6OEmI7.png'),
(4, 'green', '2013 green jerseys', 'https://i.imgur.com/dBgUw85.png'),
(5, 'white', '2012 white jerseys', 'https://i.imgur.com/dnV5mG0.png'),
(6, 'gold', '2012 gold jerseys', 'https://i.imgur.com/a9zMr8l.png'),
(7, 'green', '2011 green jerseys', 'https://i.imgur.com/xHMRzGm.png'),
(8, 'white', '2011 white jerseys', 'https://i.imgur.com/ydsCqs1.png'),
(9, 'green', '2007 green jerseys', 'https://i.imgur.com/8URDBvV.png'),
(10, 'gold', '2002 gold jerseys', 'https://i.imgur.com/Vbk04pz.png'),
(11, 'white', '1998 white jerseys', 'https://i.imgur.com/bNwcg0m.png'),
(12, 'green', '1993 green jerseys', 'https://i.imgur.com/fthrZlw.png'),
(13, 'white', '1994 white jerseys', 'https://i.imgur.com/yMenBg1.png');

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
  MODIFY `jerseyID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
