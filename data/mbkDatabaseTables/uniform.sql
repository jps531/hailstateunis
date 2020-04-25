-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 25, 2020 at 06:50 AM
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
-- Table structure for table `uniform`
--

CREATE TABLE `uniform` (
  `uniformID` int(11) NOT NULL,
  `uColor` varchar(30) DEFAULT NULL,
  `uName` varchar(100) DEFAULT NULL,
  `uImage` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uniform`
--

INSERT INTO `uniform` (`uniformID`, `uColor`, `uName`, `uImage`) VALUES
(1, 'white', '2020 white uniforms perry', 'https://i.imgur.com/VJlmiXu.png'),
(2, 'maroon', '2020 maroon uniforms carter', 'https://i.imgur.com/NE3Bj1B.png'),
(3, 'black', '2020 black uniforms woodard', 'https://i.imgur.com/ow5lT04.png'),
(4, 'gray', '2020 gray uniforms n weatherspoon', 'https://i.imgur.com/XbB69Zw.png'),
(5, 'gray', '2020 gray uniforms molinar', 'https://i.imgur.com/uk3YgEC.png'),
(6, 'cream', '2020 cream uniforms ado', 'https://i.imgur.com/KarpxuU.png'),
(7, 'white', '2019 ncaa white uniforms q weatherspoon', 'https://i.imgur.com/UsIc8Id.png'),
(8, 'white', '2019 white uniforms q weatherspoon', 'https://i.imgur.com/w98YTR2.png'),
(9, 'maroon', '2019 maroon uniforms peters', 'https://i.imgur.com/fRnhOQJ.png'),
(10, 'gray', '2019 gray uniforms holman', 'https://i.imgur.com/w69Z6TP.png'),
(11, 'black', '2019 black uniforms ado', 'https://i.imgur.com/ejaopq0.png'),
(12, 'cream', '2019 harlem cream uniforms perry', 'https://i.imgur.com/ps2sE5j.png'),
(13, 'cream', '2019 cream uniforms carter', 'https://i.imgur.com/rLyripX.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `uniform`
--
ALTER TABLE `uniform`
  ADD PRIMARY KEY (`uniformID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `uniform`
--
ALTER TABLE `uniform`
  MODIFY `uniformID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
