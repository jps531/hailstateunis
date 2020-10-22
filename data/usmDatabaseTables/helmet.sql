-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 15, 2020 at 10:50 PM
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
(1, 'black', '2015 gloss black helmets', 'https://i.imgur.com/SmluK1a.png'),
(2, 'black', '2019 gloss black WS helmets', 'https://i.imgur.com/AaAGUet.png'),
(3, 'black', '2003 gloss black helmets', 'https://i.imgur.com/NkHV4fL.png'),
(4, 'black', '2018 gloss black america helmets', 'https://i.imgur.com/UN6GSjZ.png'),
(5, 'black', '1980 gloss black double stripe helmets', 'https://i.imgur.com/myrVy4o.png'),
(6, 'black', '2018 gloss black 15S helmets', 'https://i.imgur.com/Mr9Xz1X.png'),
(7, 'black', '1980 gloss black single stripe helmets', 'https://i.imgur.com/pzq6suo.png'),
(8, 'black', '2018 gloss black NE helmets', 'https://i.imgur.com/4P8C9I6.png'),
(9, 'black', '1997 gloss black helmets', 'https://i.imgur.com/o0cIgZh.png'),
(10, 'black', '2017 gloss black NE helmets', 'https://i.imgur.com/7b5vVRJ.png'),
(11, 'black', '2017 gloss black eagle helmets', 'https://i.imgur.com/3kmDVn5.png'),
(12, 'black', '2017 gloss black blackout helmets', 'https://i.imgur.com/H6d0sXX.png'),
(13, 'black', '2017 gloss black 03S helmets', 'https://i.imgur.com/03UzqD7.png'),
(14, 'black', '2017 matte black 03S helmets', 'https://i.imgur.com/6cHGFLV.png'),
(15, 'gold', '2013 gold helmets', 'https://i.imgur.com/thVFdU5.png'),
(16, 'gold', '2012 gold helmets', 'https://i.imgur.com/2aXxnxD.png'),
(17, 'black', '2012 gloss black america helmets', 'https://i.imgur.com/ICi3PF2.png'),
(18, 'black', '2011 matte black A helmets', 'https://i.imgur.com/91NmZPR.png'),
(19, 'black', '2011 matte black B helmets', 'https://i.imgur.com/Qpr2Jz4.png'),
(20, 'black', '2011 matte black C helmets', 'https://i.imgur.com/p7obfwk.png'),
(21, 'black', '2011 matte black D helmets', 'https://i.imgur.com/OwzGSSM.png'),
(22, 'black', '2011 matte black E helmets', 'https://i.imgur.com/PSn7sei.png'),
(23, 'black', '2011 matte black F helmets', 'https://i.imgur.com/pvO8aJt.png');

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
  MODIFY `helmetID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
