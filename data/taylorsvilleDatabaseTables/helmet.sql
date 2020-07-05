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
(1, 'black', '2020 black helmet', 'https://i.imgur.com/sGHKkpS.png'),
(2, 'gold', '2012 gold helmet', 'https://i.imgur.com/er1CDpz.png'),
(3, 'gold', '2008 gold helmet', 'https://i.imgur.com/Y1L9rK2.png'),
(4, 'gold', '2003 gold helmet', 'https://i.imgur.com/Sta8dm8.png'),
(5, 'gold', '1993 gold helmet', 'https://i.imgur.com/utojRu3.png'),
(6, 'gold', '1991 gold helmet', 'https://i.imgur.com/Va1gLbE.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `helmet`
--
ALTER TABLE `helmet`
  ADD PRIMARY KEY (`helmetID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `helmet`
--
ALTER TABLE `helmet`
  MODIFY `helmetID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
