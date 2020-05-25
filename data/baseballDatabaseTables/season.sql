-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 24, 2020 at 03:08 AM
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
-- Table structure for table `season`
--

CREATE TABLE `season` (
  `yr` year(4) NOT NULL,
  `head_coach` varchar(30) NOT NULL,
  `wins` int(11) DEFAULT NULL,
  `losses` int(11) DEFAULT NULL,
  `sec_wins` int(11) DEFAULT NULL,
  `sec_losses` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `season`
--

INSERT INTO `season` (`yr`, `head_coach`, `wins`, `losses`, `sec_wins`, `sec_losses`) VALUES
(1971, 'Paul Gregory', 32, 12, 13, 5),
(1979, 'Ron Polk', 48, 12, 17, 2),
(1981, 'Ron Polk', 46, 17, 17, 6),
(1985, 'Ron Polk', 50, 15, 16, 8),
(1990, 'Ron Polk', 50, 21, 17, 9),
(1997, 'Ron Polk', 47, 21, 19, 11),
(1998, 'Pat McMahon', 42, 23, 14, 15),
(1999, 'Pat McMahon', 42, 21, 15, 13),
(2000, 'Pat McMahon', 41, 20, 17, 10),
(2001, 'Pat McMahon', 39, 24, 17, 13),
(2002, 'Ron Polk', 34, 24, 14, 15),
(2003, 'Ron Polk', 42, 20, 17, 12),
(2004, 'Ron Polk', 35, 24, 13, 17),
(2005, 'Ron Polk', 42, 22, 13, 16),
(2006, 'Ron Polk', 37, 23, 12, 17),
(2007, 'Ron Polk', 38, 22, 15, 13),
(2011, 'John Cohen', 38, 25, 14, 16),
(2012, 'John Cohen', 40, 24, 16, 14),
(2013, 'John Cohen', 51, 20, 16, 14),
(2014, 'John Cohen', 39, 24, 18, 12),
(2015, 'John Cohen', 24, 30, 8, 22),
(2016, 'John Cohen', 44, 18, 21, 9),
(2017, 'Andy Cannizaro', 40, 27, 17, 13),
(2018, 'Andy Cannizaro', 0, 3, 0, 0),
(2018, 'Gary Henderson', 39, 26, 15, 15),
(2019, 'Chris Lemonis', 52, 15, 20, 10),
(2020, 'Chris Lemonis', 12, 4, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `season`
--
ALTER TABLE `season`
  ADD PRIMARY KEY (`yr`,`head_coach`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
