-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 14, 2020 at 07:47 AM
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
-- Database: `wbkTableData`
--

-- --------------------------------------------------------

--
-- Table structure for table `season`
--

CREATE TABLE `season` (
  `yr` varchar(7) NOT NULL,
  `head_coach` varchar(30) DEFAULT NULL,
  `wins` int(11) DEFAULT NULL,
  `losses` int(11) DEFAULT NULL,
  `sec_wins` int(11) DEFAULT NULL,
  `sec_losses` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `season`
--

INSERT INTO `season` (`yr`, `head_coach`, `wins`, `losses`, `sec_wins`, `sec_losses`) VALUES
('00-2001', 'Sharon Fanning-Otis', 17, 14, 4, 10),
('01-2002', 'Sharon Fanning-Otis', 19, 12, 8, 6),
('02-2003', 'Sharon Fanning-Otis', 24, 8, 10, 4),
('03-2004', 'Sharon Fanning-Otis', 14, 15, 7, 7),
('04-2005', 'Sharon Fanning-Otis', 17, 11, 6, 8),
('05-2006', 'Sharon Fanning-Otis', 6, 22, 1, 13),
('06-2007', 'Sharon Fanning-Otis', 17, 13, 7, 7),
('07-2008', 'Sharon Fanning-Otis', 16, 15, 4, 10),
('08-2009', 'Sharon Fanning-Otis', 23, 10, 8, 6),
('09-2010', 'Sharon Fanning-Otis', 21, 12, 9, 7),
('10-2011', 'Sharon Fanning-Otis', 13, 17, 4, 12),
('11-2012', 'Sharon Fanning-Otis', 14, 16, 4, 12),
('12-2013', 'Vic Schaefer', 13, 17, 5, 11),
('13-2014', 'Vic Schaefer', 22, 14, 5, 11),
('14-2015', 'Vic Schaefer', 27, 7, 11, 5),
('15-2016', 'Vic Schaefer', 28, 8, 11, 5),
('16-2017', 'Vic Schaefer', 34, 5, 13, 3),
('17-2018', 'Vic Schaefer', 37, 2, 16, 0),
('18-2019', 'Vic Schaefer', 33, 3, 15, 1),
('19-2020', 'Vic Schaefer', 27, 6, 13, 3),
('97-1998', 'Sharon Fanning-Otis', 14, 15, 4, 10),
('98-1999', 'Sharon Fanning-Otis', 17, 11, 7, 7),
('99-2000', 'Sharon Fanning-Otis', 24, 8, 8, 6);

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
