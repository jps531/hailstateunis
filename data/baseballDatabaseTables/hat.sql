-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 24, 2020 at 03:21 AM
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
-- Database: `baseballTableData`
--

-- --------------------------------------------------------

--
-- Table structure for table `hat`
--

CREATE TABLE `hat` (
  `hatID` int(11) NOT NULL,
  `hName` varchar(50) DEFAULT NULL,
  `hColor` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hat`
--

INSERT INTO `hat` (`hatID`, `hName`, `hColor`) VALUES
(1, 'maroon hat', 'maroon'),
(2, '2019 black hat', 'black'),
(3, '2018 black hat', 'black'),
(4, '2016 black hat', 'black'),
(5, '2016 mossy oak camo hat', 'camo'),
(6, '2016 maroon with white panel hat', 'maroon with white panel'),
(7, '2015 black with white panel hat', 'black with white panel'),
(8, '2015 green with white panel hat', 'green with white panel'),
(9, '2015 maroon fauxback hat', 'maroon'),
(10, '2014 cream hat', 'cream'),
(11, '2014 maroon with pink mother\'s day hat', 'maroon'),
(12, '2014 desert camo hat', 'camo'),
(13, '2013 maroon boston strong hat', 'maroon'),
(14, '2012 black hat', 'black'),
(15, '2012 green hat', 'green'),
(16, '2011 white american flag hat', 'white');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hat`
--
ALTER TABLE `hat`
  ADD PRIMARY KEY (`hatID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hat`
--
ALTER TABLE `hat`
  MODIFY `hatID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
