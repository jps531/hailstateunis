-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 02, 2020 at 04:27 AM
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
(1, 'gold', '2002 gold pants', 'https://i.imgur.com/50LeK1j.png'),
(2, 'green', '2007 green pants', 'https://i.imgur.com/otqQTmF.png'),
(3, 'white', '2011 white pants', 'https://i.imgur.com/SY9mHlq.png'),
(4, 'gold', '2011 gold pants', 'https://i.imgur.com/DMtzIs1.png'),
(5, 'white', '2013 white pants', 'https://i.imgur.com/dnV5mG0.png'),
(6, 'green', '2014 green pants', 'https://i.imgur.com/dBgUw85.png'),
(7, 'gold', '2015 gold pants', 'https://i.imgur.com/a9zMr8l.png'),
(8, 'gray', '2017 gray pants', 'https://i.imgur.com/FMNkkpc.png'),
(9, 'black', '2019 black pants', 'https://i.imgur.com/oEASfeq.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pants`
--
ALTER TABLE `pants`
  ADD PRIMARY KEY (`pantsID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pants`
--
ALTER TABLE `pants`
  MODIFY `pantsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
