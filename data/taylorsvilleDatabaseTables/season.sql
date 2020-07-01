-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 01, 2020 at 06:44 AM
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
-- Table structure for table `season`
--

CREATE TABLE `season` (
  `yr` year(4) NOT NULL,
  `head_coach` varchar(30) DEFAULT NULL,
  `wins` int(11) DEFAULT NULL,
  `losses` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `season`
--

INSERT INTO `season` (`yr`, `head_coach`, `wins`, `losses`) VALUES
(1991, 'Doug Merchant', 13, 1),
(1993, 'Marcus Boyles', 14, 1),
(1994, 'Marcus Boyles', 15, 0),
(1995, 'Marcus Boyles', 15, 0),
(1998, 'Shannon White', 13, 2),
(2002, 'Shannon White', 12, 3),
(2007, 'Bud Blackledge', 13, 2),
(2011, 'Bud Blackledge', 11, 1),
(2012, 'Matt Caldwell', 11, 2),
(2013, 'Matt Caldwell', 11, 3),
(2014, 'Matt Caldwell', 12, 2),
(2015, 'Matt Caldwell', 7, 6),
(2016, 'Chuck Robertson', 4, 7),
(2017, 'Chuck Robertson', 15, 1),
(2018, 'Mitch Evans', 15, 1),
(2019, 'Mitch Evans', 15, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `season`
--
ALTER TABLE `season`
  ADD PRIMARY KEY (`yr`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
