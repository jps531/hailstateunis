-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 08, 2020 at 04:36 AM
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
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `gameID` int(11) NOT NULL,
  `yr` varchar(7) DEFAULT NULL,
  `gameday` date DEFAULT NULL,
  `opponentName` varchar(30) DEFAULT NULL,
  `result` varchar(10) DEFAULT NULL,
  `points_for` int(11) DEFAULT NULL,
  `points_against` int(11) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL,
  `uniformID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`gameID`, `yr`, `gameday`, `opponentName`, `result`, `points_for`, `points_against`, `type`, `location`, `uniformID`) VALUES
(1, '19-2020', '2020-03-08', 'South Carolina', 'Loss', 62, 76, 'SECT Championship', 'secT', 2),
(2, '19-2020', '2020-03-07', 'Kentucky', 'Win', 77, 59, 'SECT Semifinals', 'secT', 4),
(3, '19-2020', '2020-03-06', 'LSU', 'Win', 79, 49, 'SECT Quarterfinals', 'secT', 4),
(4, '18-2019', '2019-03-31', 'Oregon', 'Loss', 84, 88, 'Elite Eight', 'ncaaSsEe', 14),
(5, '18-2019', '2019-03-29', 'Arizona State', 'Win', 76, 53, 'Sweet Sixteen', 'ncaaSsEe', 12),
(6, '18-2019', '2019-03-24', 'Clemson', 'Win', 85, 61, 'Round of 32', 'ncaa', 12),
(7, '18-2019', '2019-03-22', 'Southern', 'Win', 103, 46, 'Round of 64', 'ncaa', 7),
(8, '18-2019', '2019-03-10', 'Arkansas', 'Win', 101, 70, 'SECT Championship', 'secT', 13),
(9, '18-2019', '2019-03-09', 'Missouri', 'Win', 71, 56, 'SECT Semifinals', 'secT', 11),
(10, '18-2019', '2019-03-08', 'Tennessee', 'Win', 83, 68, 'SECT Quarterfinals', 'secT', 11),
(11, '19-2020', '2020-03-01', 'Ole Miss', 'Win', 84, 59, 'SEC', 'road', 3),
(12, '19-2020', '2020-02-27', 'Arkansas', 'Win', 92, 83, 'SEC', 'home', 1),
(13, '19-2020', '2020-02-23', 'Alabama', 'Loss', 64, 66, 'SEC', 'home', 1),
(14, '19-2020', '2020-02-20', 'Auburn', 'Win', 92, 85, 'SEC', 'road', 2),
(15, '19-2020', '2020-02-16', 'Kentucky', 'Loss', 62, 73, 'SEC', 'road', 2),
(16, '19-2020', '2020-02-09', 'Texas A&M', 'Win', 69, 57, 'SEC', 'home', 5),
(17, '19-2020', '2020-02-06', 'Tennessee', 'Win', 72, 55, 'SEC', 'road', 2),
(18, '19-2020', '2020-02-03', 'Georgia', 'Win', 67, 53, 'SEC', 'home', 4),
(19, '19-2020', '2020-01-30', 'Auburn', 'Win', 78, 73, 'SEC', 'home', 1),
(20, '19-2020', '2020-01-26', 'Ole Miss', 'Win', 80, 39, 'SEC', 'home', 3),
(21, '19-2020', '2020-01-23', 'Vanderbilt', 'Win', 68, 52, 'SEC', 'road', 2),
(22, '19-2020', '2020-01-20', 'South Carolina', 'Loss', 79, 81, 'SEC', 'road', 2),
(23, '19-2020', '2020-01-16', 'LSU', 'Win', 64, 60, 'SEC', 'home', 1),
(24, '19-2020', '2020-01-09', 'Missouri', 'Win', 79, 64, 'SEC', 'road', 2),
(25, '19-2020', '2020-01-05', 'Georgia', 'Win', 73, 66, 'SEC', 'road', 1),
(26, '19-2020', '2020-01-02', 'Florida', 'Win', 93, 47, 'SEC', 'home', 1),
(27, '19-2020', '2019-11-09', 'Southern Miss', 'Win', 91, 58, 'Non-Conference', 'home', 1),
(28, '19-2020', '2019-11-11', 'UT Martin', 'Win', 82, 46, 'Non-Conference', 'home', 1),
(29, '19-2020', '2019-11-15', 'Murray State', 'Win', 124, 43, 'Non-Conference', 'home', 1),
(30, '19-2020', '2019-11-18', 'Troy', 'Win', 122, 82, 'Non-Conference', 'home', 1),
(31, '19-2020', '2019-11-21', 'Jackson State', 'Win', 92, 53, 'Non-Conference', 'road', 2),
(32, '19-2020', '2019-11-25', 'Marquette', 'Win', 74, 68, 'Non-Conference', 'road', 2),
(33, '19-2020', '2019-11-28', 'San Francisco', 'Win', 73, 38, 'Non-Conference', 'neutral', 1),
(34, '19-2020', '2019-11-29', 'Green Bay', 'Win', 83, 58, 'Non-Conference', 'neutral', 2),
(35, '19-2020', '2019-11-30', 'Stanford', 'Loss', 62, 67, 'Non-Conference', 'neutral', 1),
(36, '19-2020', '2019-12-08', 'West Virginia', 'Loss', 65, 71, 'Non-Conference', 'home', 1),
(37, '19-2020', '2019-12-16', 'Louisiana', 'Win', 64, 48, 'Non-Conference', 'road', 2),
(38, '19-2020', '2019-12-19', 'South Florida', 'Win', 86, 61, 'Non-Conference', 'neutral', 1),
(39, '19-2020', '2019-12-21', 'Virginia', 'Win', 72, 59, 'Non-Conference', 'neutral', 2),
(40, '19-2020', '2019-12-29', 'Little Rock', 'Win', 89, 50, 'Non-Conference', 'home', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`gameID`,`uniformID`),
  ADD KEY `yr` (`yr`),
  ADD KEY `opponentName` (`opponentName`),
  ADD KEY `uniformID` (`uniformID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `game`
--
ALTER TABLE `game`
  MODIFY `gameID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `game`
--
ALTER TABLE `game`
  ADD CONSTRAINT `game_ibfk_1` FOREIGN KEY (`yr`) REFERENCES `season` (`yr`),
  ADD CONSTRAINT `game_ibfk_2` FOREIGN KEY (`opponentName`) REFERENCES `opponent` (`opponentName`),
  ADD CONSTRAINT `game_ibfk_3` FOREIGN KEY (`uniformID`) REFERENCES `uniform` (`uniformID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
