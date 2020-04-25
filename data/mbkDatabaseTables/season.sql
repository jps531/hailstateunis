-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 25, 2020 at 06:37 AM
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
-- Database: `mbkTableData`
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
('00-2001', 'Rick Stansbury', 18, 13, 7, 9),
('01-2002', 'Rick Stansbury', 27, 8, 10, 6),
('02-2003', 'Rick Stansbury', 21, 10, 9, 7),
('03-2004', 'Rick Stansbury', 26, 4, 14, 2),
('04-2005', 'Rick Stansbury', 23, 11, 9, 7),
('05-2006', 'Rick Stansbury', 15, 15, 5, 11),
('06-2007', 'Rick Stansbury', 21, 14, 8, 8),
('07-2008', 'Rick Stansbury', 23, 11, 12, 4),
('08-2009', 'Rick Stansbury', 23, 13, 9, 7),
('09-2010', 'Rick Stansbury', 24, 12, 9, 7),
('10-2011', 'Rick Stansbury', 17, 13, 9, 7),
('11-2012', 'Rick Stansbury', 21, 12, 8, 8),
('12-2013', 'Rick Ray', 10, 22, 4, 14),
('13-2014', 'Rick Ray', 14, 19, 3, 15),
('14-2015', 'Rick Ray', 13, 19, 6, 12),
('15-2016', 'Ben Howland', 14, 17, 7, 11),
('16-2017', 'Ben Howland', 16, 16, 6, 12),
('17-2018', 'Ben Howland', 25, 12, 9, 9),
('18-2019', 'Ben Howland', 23, 11, 10, 8),
('19-2020', 'Ben Howland', 20, 11, 11, 7),
('62-1963', 'Babe McCarthy', 22, 6, 12, 2),
('78-1979', 'Jim Hatfield', 19, 9, 11, 7),
('89-1990', 'Richard Williams', 16, 14, 7, 11),
('90-1991', 'Richard Williams', 20, 9, 13, 5),
('93-1994', 'Richard Williams', 18, 11, 9, 7),
('94-1995', 'Richard Williams', 22, 8, 12, 4),
('95-1996', 'Richard Williams', 26, 8, 10, 6),
('96-1997', 'Richard Williams', 12, 18, 6, 10),
('97-1998', 'Richard Williams', 15, 15, 4, 12),
('98-1999', 'Rick Stansbury', 20, 13, 8, 8),
('99-2000', 'Rick Stansbury', 14, 16, 5, 11);

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
