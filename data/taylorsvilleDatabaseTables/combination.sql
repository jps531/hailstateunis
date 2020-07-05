-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 02, 2020 at 06:17 AM
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
-- Table structure for table `combination`
--

CREATE TABLE `combination` (
  `comboID` int(11) NOT NULL,
  `helmetID` int(11) NOT NULL,
  `jerseyID` int(11) NOT NULL,
  `pantsID` int(11) NOT NULL,
  `cName` varchar(100) DEFAULT NULL,
  `cImage` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `combination`
--

INSERT INTO `combination` (`comboID`, `helmetID`, `jerseyID`, `pantsID`, `cName`, `cImage`) VALUES
(1, 2, 2, 9, '2019 gold/black/black', 'https://i.imgur.com/d8xMTCn.png'),
(2, 2, 2, 7, '2019 gold/black/gold', 'https://i.imgur.com/tlEmbxr.png'),
(3, 2, 2, 6, '2019 gold/black/green', 'https://i.imgur.com/Bj4qs2G.png'),
(4, 2, 4, 7, '2019 gold/green/gold', 'https://i.imgur.com/R6NHkLz.png'),
(5, 2, 4, 6, '2019 gold/green/green', 'https://i.imgur.com/kFCfLUe.png'),
(6, 2, 4, 5, '2019 gold/green/white', 'https://i.imgur.com/RxohbNB.png'),
(7, 2, 4, 8, '2019 gold/green/gray', 'https://i.imgur.com/VhmdFen.png'),
(8, 2, 5, 7, '2019 gold/white/gold', 'https://i.imgur.com/PDT5uGv.png'),
(9, 2, 5, 5, '2019 gold/white/white', 'https://i.imgur.com/JLqs1Rn.png'),
(10, 2, 5, 6, '2019 gold/white/green', 'https://i.imgur.com/OCA2xnA.png'),
(11, 2, 1, 7, '2019 gold/gold/gold', 'https://i.imgur.com/R9RCOCj.png'),
(12, 2, 1, 6, '2019 gold/gold/green', 'https://i.imgur.com/0ew7dMy.png'),
(13, 2, 1, 9, '2019 gold/gold/black', 'https://i.imgur.com/K8o7iNH.png'),
(14, 2, 3, 9, '2019 gold/gray/black', 'https://i.imgur.com/Xbn6ax3.png'),
(15, 2, 3, 7, '2018 gold/gray/gold', 'https://i.imgur.com/co4kQcR.png'),
(16, 2, 3, 6, '2017 gold/gray/green', 'https://i.imgur.com/TkhdgFU.png'),
(17, 2, 3, 8, '2017 gold/gray/gray', 'https://i.imgur.com/L168UeD.png'),
(18, 2, 4, 7, '2015 gold/green/gold', 'https://i.imgur.com/OINruki.png'),
(19, 2, 5, 7, '2015 gold/white/gold', 'https://i.imgur.com/OjU4KfA.png'),
(20, 2, 6, 7, '2015 gold/gold/gold', 'https://i.imgur.com/fQ2JaGd.png'),
(21, 2, 4, 6, '2014 gold/green/green', 'https://i.imgur.com/a3oAu3E.png'),
(22, 2, 5, 6, '2014 gold/white/green', 'https://i.imgur.com/QCANAYg.png'),
(23, 2, 6, 6, '2014 gold/gold/green', 'https://i.imgur.com/DoHUXLj.png'),
(24, 2, 4, 4, '2013 gold/green/gold', 'https://i.imgur.com/Kg4LWM4.png'),
(25, 2, 4, 5, '2013 gold/green/white', 'https://i.imgur.com/yUkARQJ.png'),
(26, 2, 6, 5, '2013 gold/gold/white', 'https://i.imgur.com/JeuhkNg.png'),
(27, 2, 6, 2, '2013 gold/gold/green', 'https://i.imgur.com/eacOcUr.png'),
(28, 2, 5, 5, '2013 gold/white/white', 'https://i.imgur.com/FxloYlJ.png'),
(29, 2, 7, 4, '2012 gold/green/gold', 'https://i.imgur.com/QPCgSvN.png'),
(30, 2, 7, 2, '2012 gold/green/green', 'https://i.imgur.com/OR9vUfL.png'),
(31, 2, 6, 4, '2012 gold/gold/gold', 'https://i.imgur.com/4L98VoE.png'),
(32, 2, 5, 4, '2012 gold/white/gold', 'https://i.imgur.com/oAOS8kA.png'),
(33, 2, 5, 2, '2012 gold/white/green', 'https://i.imgur.com/iauhAUv.png'),
(34, 2, 5, 3, '2012 gold/white/white', 'https://i.imgur.com/x1zCtjC.png'),
(35, 3, 7, 4, '2011 gold/green/gold', 'https://i.imgur.com/A1ERAJ8.png'),
(36, 3, 8, 3, '2011 gold/white/white', 'https://i.imgur.com/Zs3wE5D.png'),
(37, 6, 12, 1, '1991 gold/green/gold', 'https://i.imgur.com/ND1hW0p.png'),
(38, 5, 12, 1, '1993 gold/green/gold', 'https://i.imgur.com/kaakRkz.png'),
(39, 5, 13, 1, '1994 gold/white/gold', 'https://i.imgur.com/9LMEKNa.png'),
(40, 5, 12, 1, '1995 gold/green/gold', 'https://i.imgur.com/yy37TOt.png'),
(41, 5, 11, 1, '1998 gold/white/gold', 'https://i.imgur.com/S5bTZ7i.png'),
(42, 5, 10, 1, '2002 gold/gold/gold', 'https://i.imgur.com/1jcqWlw.png'),
(43, 4, 9, 2, '2007 gold/green/green', 'https://i.imgur.com/uVjK4AQ.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `combination`
--
ALTER TABLE `combination`
  ADD PRIMARY KEY (`comboID`,`helmetID`,`jerseyID`,`pantsID`),
  ADD KEY `helmetID` (`helmetID`),
  ADD KEY `jerseyID` (`jerseyID`),
  ADD KEY `pantsID` (`pantsID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `combination`
--
ALTER TABLE `combination`
  MODIFY `comboID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `combination`
--
ALTER TABLE `combination`
  ADD CONSTRAINT `combination_ibfk_1` FOREIGN KEY (`helmetID`) REFERENCES `helmet` (`helmetID`),
  ADD CONSTRAINT `combination_ibfk_2` FOREIGN KEY (`jerseyID`) REFERENCES `jersey` (`jerseyID`),
  ADD CONSTRAINT `combination_ibfk_3` FOREIGN KEY (`pantsID`) REFERENCES `pants` (`pantsID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
