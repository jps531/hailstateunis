-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 25, 2020 at 12:09 AM
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
-- Database: `footballTableData`
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
  `sec_wins` int(11) DEFAULT NULL,
  `sec_losses` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `season`
--

INSERT INTO `season` (`yr`, `head_coach`, `wins`, `losses`, `sec_wins`, `sec_losses`) VALUES
(1936, 'Ralph Sasse', 7, 3, 3, 2),
(1940, 'Allyn McKeen', 10, 0, 4, 0),
(1963, 'Paul Davis', 7, 2, 4, 1),
(1974, 'Bob Tyler', 9, 3, 3, 3),
(1980, 'Emory Bellard', 9, 3, 5, 1),
(1981, 'Emory Bellard', 8, 4, 4, 2),
(1982, 'Emory Bellard', 5, 6, 2, 4),
(1983, 'Emory Bellard', 3, 8, 1, 5),
(1984, 'Emory Bellard', 4, 7, 1, 5),
(1985, 'Emory Bellard', 5, 6, 0, 6),
(1986, 'Rockey Felker', 6, 5, 2, 4),
(1987, 'Rockey Felker', 4, 7, 1, 5),
(1988, 'Rockey Felker', 1, 10, 0, 7),
(1989, 'Rockey Felker', 5, 6, 1, 6),
(1990, 'Rockey Felker', 5, 6, 1, 6),
(1991, 'Jackie Sherill', 7, 5, 4, 3),
(1992, 'Jackie Sherill', 7, 5, 4, 4),
(1993, 'Jackie Sherill', 4, 5, 3, 4),
(1994, 'Jackie Sherill', 8, 4, 5, 3),
(1995, 'Jackie Sherill', 3, 8, 1, 7),
(1996, 'Jackie Sherill', 5, 6, 3, 5),
(1997, 'Jackie Sherill', 7, 4, 4, 4),
(1998, 'Jackie Sherill', 8, 5, 6, 2),
(1999, 'Jackie Sherill', 10, 2, 6, 2),
(2000, 'Jackie Sherill', 8, 4, 4, 4),
(2001, 'Jackie Sherill', 3, 8, 2, 6),
(2002, 'Jackie Sherill', 3, 9, 0, 8),
(2003, 'Jackie Sherill', 2, 10, 1, 7),
(2004, 'Sylvester Croom', 3, 8, 2, 6),
(2005, 'Sylvester Croom', 3, 8, 1, 7),
(2006, 'Sylvester Croom', 3, 9, 1, 7),
(2007, 'Sylvester Croom', 8, 5, 4, 4),
(2008, 'Sylvester Croom', 4, 8, 2, 6),
(2009, 'Dan Mullen', 5, 7, 3, 5),
(2010, 'Dan Mullen', 9, 4, 4, 4),
(2011, 'Dan Mullen', 7, 6, 2, 6),
(2012, 'Dan Mullen', 8, 5, 4, 4),
(2013, 'Dan Mullen', 7, 6, 3, 5),
(2014, 'Dan Mullen', 10, 3, 6, 2),
(2015, 'Dan Mullen', 9, 4, 4, 4),
(2016, 'Dan Mullen', 6, 7, 3, 5),
(2017, 'Dan Mullen', 9, 4, 4, 4),
(2018, 'Joe Moorhead', 8, 5, 4, 4),
(2019, 'Joe Moorhead', 6, 7, 3, 5);

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
