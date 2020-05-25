-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 25, 2020 at 09:21 PM
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
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `gameID` int(11) NOT NULL,
  `yr` year(4) DEFAULT NULL,
  `gameday` date DEFAULT NULL,
  `opponentName` varchar(30) DEFAULT NULL,
  `result` varchar(10) DEFAULT NULL,
  `points_for` int(11) DEFAULT NULL,
  `points_against` int(11) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL,
  `dh` tinyint(1) NOT NULL DEFAULT 0,
  `uniformID` int(11) NOT NULL,
  `article_title` varchar(100) DEFAULT NULL,
  `article_link` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`gameID`, `yr`, `gameday`, `opponentName`, `result`, `points_for`, `points_against`, `type`, `location`, `dh`, `uniformID`, `article_title`, `article_link`) VALUES
(1, 2020, '2020-03-11', 'Texas Tech', 'Win', 3, 2, 'Midweek', 'neutral', 0, 6, 'Mississippi State Sweeps Texas Tech in Two-Game Midweek Series in Biloxi', 'https://www.hailstateunis.com/2020-baseball-season/mississippi-state-sweeps-texas-tech-in-two-game-midweek-series-in-biloxi'),
(2, 2020, '2020-03-10', 'Texas Tech', 'Win', 6, 3, 'Midweek', 'neutral', 0, 4, 'Mississippi State Sweeps Texas Tech in Two-Game Midweek Series in Biloxi', 'https://www.hailstateunis.com/2020-baseball-season/mississippi-state-sweeps-texas-tech-in-two-game-midweek-series-in-biloxi'),
(3, 2020, '2020-03-08', 'Quinnipiac', 'Win', 8, 4, 'Non-Conference Game 3', 'home', 0, 7, 'Mississippi State Sweeps Quinnipiac', 'https://www.hailstateunis.com/2020-baseball-season/mississippi-state-sweeps-quinnipiac'),
(4, 2020, '2020-03-07', 'Quinnipiac', 'Win', 5, 4, 'Non-Conference Game 2', 'home', 0, 5, 'Mississippi State Sweeps Quinnipiac', 'https://www.hailstateunis.com/2020-baseball-season/mississippi-state-sweeps-quinnipiac'),
(5, 2020, '2020-03-06', 'Quinnipiac', 'Win', 5, 1, 'Non-Conference Game 1', 'home', 0, 2, 'Mississippi State Sweeps Quinnipiac', 'https://www.hailstateunis.com/2020-baseball-season/mississippi-state-sweeps-quinnipiac'),
(6, 2020, '2020-03-01', 'Long Beach St.', 'Loss', 2, 6, 'Non-Conference Game 3', 'road', 0, 3, 'Bulldogs Debut New Road Gray Uniforms at Long Beach', 'https://www.hailstateunis.com/2020-baseball-season/bulldogs-debut-new-road-gray-jerseys-at-long-beach'),
(7, 2020, '2020-02-29', 'Long Beach St.', 'Win', 9, 0, 'Non-Conference Game 2', 'road', 0, 1, 'Bulldogs Debut New Road Gray Uniforms at Long Beach', 'https://www.hailstateunis.com/2020-baseball-season/bulldogs-debut-new-road-gray-jerseys-at-long-beach'),
(8, 2020, '2020-02-28', 'Long Beach St.', 'Loss', 0, 4, 'Non-Conference Game 1', 'road', 0, 2, 'Bulldogs Debut New Road Gray Uniforms at Long Beach', 'https://www.hailstateunis.com/2020-baseball-season/bulldogs-debut-new-road-gray-jerseys-at-long-beach'),
(9, 2020, '2020-02-26', 'Alcorn State', 'Win', 8, 4, 'Midweek', 'Home', 0, 6, 'Bulldogs Debut New Road Gray Uniforms at Long Beach', 'https://www.hailstateunis.com/2020-baseball-season/bulldogs-debut-new-road-gray-jerseys-at-long-beach'),
(10, 2020, '2020-02-25', 'Texas Southern', 'Loss', 4, 8, 'Midweek', 'home', 0, 4, 'Bulldogs Debut New Road Gray Uniforms at Long Beach', 'https://www.hailstateunis.com/2020-baseball-season/bulldogs-debut-new-road-gray-jerseys-at-long-beach'),
(11, 2020, '2020-02-23', 'Oregon State', 'Loss', 2, 7, 'Non-Conference Game 3', 'home', 0, 7, 'Mississippi State Wins High-Profile Series with Oregon State', 'https://www.hailstateunis.com/2020-baseball-season/mississippi-state-wins-high-profile-series-with-oregon-state'),
(12, 2020, '2020-02-22', 'Oregon State', 'Win', 7, 4, 'Non-Conference Game 2', 'home', 0, 5, 'Mississippi State Wins High-Profile Series with Oregon State', 'https://www.hailstateunis.com/2020-baseball-season/mississippi-state-wins-high-profile-series-with-oregon-state'),
(13, 2020, '2020-02-21', 'Oregon State', 'Win', 6, 2, 'Non-Conference Game 1', 'home', 0, 2, 'Mississippi State Wins High-Profile Series with Oregon State', 'https://www.hailstateunis.com/2020-baseball-season/mississippi-state-wins-high-profile-series-with-oregon-state'),
(14, 2020, '2020-02-16', 'Wright State', 'Win', 5, 1, 'Non-Conference Game 3', 'home', 0, 7, 'Bulldogs Open 2020 Season With Sweep of Wright State', 'https://www.hailstateunis.com/2020-baseball-season/bulldogs-open-2020-season-with-sweep-of-wright-state'),
(15, 2020, '2020-02-15', 'Wright State', 'Win', 6, 2, 'Non-Conference Game 2', 'home', 0, 5, 'Bulldogs Open 2020 Season With Sweep of Wright State', 'https://www.hailstateunis.com/2020-baseball-season/bulldogs-open-2020-season-with-sweep-of-wright-state'),
(16, 2020, '2020-02-14', 'Wright State', 'Win', 9, 6, 'Non-Conference Game 1', 'home', 0, 2, 'Bulldogs Open 2020 Season With Sweep of Wright State', 'https://www.hailstateunis.com/2020-baseball-season/bulldogs-open-2020-season-with-sweep-of-wright-state');

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
  MODIFY `gameID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
