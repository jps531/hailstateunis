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
-- Table structure for table `season`
--

CREATE TABLE `season` (
  `yr` year(4) NOT NULL,
  `head_coach` varchar(30) DEFAULT NULL,
  `wins` int(11) DEFAULT NULL,
  `losses` int(11) DEFAULT NULL,
  `cusa_wins` int(11) DEFAULT NULL,
  `cusa_losses` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `season`
--

INSERT INTO `season` (`yr`, `head_coach`, `wins`, `losses`, `cusa_wins`, `cusa_losses`) VALUES
(2003, 'Jeff Bower', 9, 4, 8, 0),
(2004, 'Jeff Bower', 7, 5, 5, 3),
(2005, 'Jeff Bower', 7, 5, 5, 3),
(2006, 'Jeff Bower', 9, 5, 6, 3),
(2007, 'Jeff Bower', 7, 6, 5, 3),
(2008, 'Larry Fedora', 7, 6, 4, 4),
(2009, 'Larry Fedora', 7, 6, 5, 3),
(2010, 'Larry Fedora', 8, 5, 5, 3),
(2011, 'Larry Fedora', 12, 2, 6, 2),
(2012, 'Ellis Johnson', 0, 12, 0, 8),
(2013, 'Todd Monken', 1, 11, 1, 7),
(2014, 'Todd Monken', 3, 9, 1, 7),
(2015, 'Todd Monken', 9, 5, 7, 1),
(2016, 'Jay Hopson', 7, 6, 4, 4),
(2017, 'Jay Hopson', 8, 5, 6, 2),
(2018, 'Jay Hopson', 6, 5, 5, 3),
(2019, 'Jay Hopson', 7, 6, 5, 3),
(2020, 'Scotty Walden', 1, 3, 1, 1);

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
