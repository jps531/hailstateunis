-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 24, 2020 at 06:37 AM
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
-- Table structure for table `jersey`
--

CREATE TABLE `jersey` (
  `jerseyID` int(11) NOT NULL,
  `jName` varchar(50) DEFAULT NULL,
  `jColor` varchar(30) DEFAULT NULL,
  `jType` varchar(30) DEFAULT NULL,
  `jAttribute` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jersey`
--

INSERT INTO `jersey` (`jerseyID`, `jName`, `jColor`, `jType`, `jAttribute`) VALUES
(1, '2020 gray \"state\" script jerseys', 'gray', 'button-up', 'solid'),
(2, '2019 white state jerseys', 'white', 'button-up', 'solid'),
(3, '2019 white 85 jerseys', 'white', 'pullover', 'solid'),
(4, '2019 maroon 85 jerseys', 'maroon', 'pullover', 'solid'),
(5, '2019 black 85 jerseys', 'black', 'pullover', 'solid'),
(6, '2019 white \"state\" pinstripe jerseys', 'white', 'button-up', 'pinstripe'),
(7, '2019 gray ms sleeveless vest jerseys', 'gray', 'vest', 'solid'),
(8, '2019 alex wilcox teal jerseys', 'teal', 'pullover', 'solid'),
(9, '2018 white 85 jerseys', 'white', 'pullover', 'solid'),
(10, '2018 maroon 85 jerseys', 'maroon', 'pullover', 'solid'),
(11, '2018 black 85 jerseys', 'black', 'pullover', 'solid'),
(12, '2018 maroon ms jerseys', 'maroon', 'button-up', 'solid'),
(13, '2017 white \"state\" pinstripe jerseys', 'white', 'button-up', 'pinstripe'),
(14, '2016 gray ms pinstripe jerseys', 'gray', 'button-up', 'pinstripe'),
(15, '2016 inverted white 85 jerseys', 'white', 'pullover', 'solid'),
(16, '2016 mossy oak camo 85 jerseys', 'mossy oak camo', 'pullover', 'camo'),
(17, '2015 maroon ms jerseys', 'maroon', 'two-button', 'solid'),
(18, '2015 white ms jerseys', 'white', 'button-up', 'solid'),
(19, '2015 black 85 jerseys', 'black', 'pullover', 'solid'),
(20, '2015 digital camo ms jerseys', 'digital camo', 'pullover', 'camo'),
(21, '2015 gray \"mississippi state\" script jerseys', 'gray', 'button-up', 'solid'),
(22, '2015 maroon 85 jerseys', 'maroon', 'button-up', 'solid'),
(23, '2015 white ms pinstripes', 'white', 'button-up', 'pinstripe'),
(24, '2015 st. pat\'s 85 jerseys', 'white', 'pullover', 'solid'),
(25, '2015 wool fauxback ms jerseys', 'wool', 'long-sleeve', 'wool'),
(26, '2014 cream ms jerseys', 'cream', 'button-up', 'solid'),
(27, '2014 white hail state jerseys', 'white', 'two-button', 'solid'),
(28, '2014 gray hail state jerseys', 'gray', 'two-button', 'solid'),
(29, '2014 mother\'s day bulldogs jerseys', 'white', 'pullover', 'solid'),
(30, '2014 adidas rainbow bulldogs jerseys', 'white', 'pullover', 'solid'),
(31, '2013 white ms pinstripe jerseys', 'white', 'button-up', 'pinstripe'),
(32, '2012 white 85 jerseys', 'white', 'button-up', 'solid'),
(33, '2011 maroon ms jerseys', 'maroon', 'two-button', 'solid'),
(34, '2010 maroon 85 jerseys', 'maroon', 'button-up', 'solid'),
(35, '2010 white ms sleeveless vest jerseys', 'white', 'vest', 'solid'),
(36, '2010 black ms jerseys', 'black', 'button-up', 'solid'),
(37, '2007 white state jerseys', 'white', 'button-up', 'solid'),
(38, '2006 maroon \"state\" jerseys', 'maroon', 'button-up', 'solid'),
(39, '2005 maroon bulldogs jerseys', 'maroon', 'button-up', 'solid'),
(40, '2005 white state jerseys', 'white', 'button-up', 'solid'),
(41, '2005 maroon state jerseys', 'maroon', 'button-up', 'solid'),
(42, '2003 maroon state jerseys', 'maroon', 'button-up', 'solid'),
(43, '2002 white ms jerseys', 'white', 'button-up', 'solid'),
(44, '1999 gray ms pinstripe sleeveless vest jerseys', 'gray', 'vest', 'pinstripe'),
(45, '1998 white ms pinstripe jerseys', 'white', 'button-up', 'pinstripe'),
(46, '1998 maroon \"bulldogs\" jerseys', 'maroon', 'button-up', 'solid'),
(47, '1994 maroon state jerseys', 'maroon', 'button-up', 'solid'),
(48, '1989 gray \"mississippi state\" script jerseys', 'gray', 'button-up', 'solid'),
(49, '1988 white ms jerseys', 'white', 'button-up', 'solid'),
(50, '1985 white 85 jerseys', 'white', 'pullover', 'solid'),
(51, '1977 maroon 85 jerseys', 'maroon', 'pullover', 'solid'),
(52, '1966 white \"state\" pinstripe jerseys', 'white', 'button-up', 'pinstripe');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jersey`
--
ALTER TABLE `jersey`
  ADD PRIMARY KEY (`jerseyID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jersey`
--
ALTER TABLE `jersey`
  MODIFY `jerseyID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
