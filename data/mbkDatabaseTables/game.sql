-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 28, 2020 at 06:26 AM
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
(1, '19-2020', '2020-03-07', 'Ole Miss', 'Win', 69, 44, 'SEC', 'home', 2),
(2, '19-2020', '2020-02-25', 'Alabama', 'Win', 80, 73, 'SEC', 'home', 1),
(3, '19-2020', '2020-02-11', 'Ole Miss', 'Loss', 58, 83, 'SEC', 'road', 3),
(4, '19-2020', '2019-12-14', 'Kansas State', 'Win', 67, 61, 'Non-Conference', 'neutral', 5),
(5, '18-2019', '2019-03-15', 'Tennessee', 'Loss', 76, 83, 'SECT Quarterfinals', 'secT', 9),
(6, '19-2020', '2019-12-18', 'Radford', 'Win', 77, 68, 'Non-Conference', 'home', 6),
(7, '18-2019', '2019-03-22', 'Liberty', 'Loss', 76, 80, 'Round of 64', 'ncaa', 7),
(8, '19-2020', '2020-03-03', 'South Carolina', 'Loss', 71, 83, 'SEC', 'road', 2),
(9, '19-2020', '2020-02-29', 'Missouri', 'Win', 67, 63, 'SEC', 'road', 2),
(10, '19-2020', '2020-02-22', 'Texas A&M', 'Loss', 75, 87, 'SEC', 'road', 2),
(11, '19-2020', '2020-02-19', 'South Carolina', 'Win', 79, 76, 'SEC', 'home', 1),
(12, '19-2020', '2020-02-15', 'Arkansas', 'Win', 78, 77, 'SEC', 'road', 2),
(13, '19-2020', '2020-02-08', 'Vanderbilt', 'Win', 80, 70, 'SEC', 'home', 1),
(14, '19-2020', '2020-02-04', 'Kentucky', 'Loss', 72, 80, 'SEC', 'road', 3),
(15, '19-2020', '2020-02-01', 'Tennessee', 'Win', 86, 73, 'SEC', 'home', 3),
(16, '19-2020', '2020-01-28', 'Florida', 'Win', 78, 71, 'SEC', 'road', 3),
(17, '19-2020', '2020-01-22', 'Arkansas', 'Win', 77, 70, 'SEC', 'home', 3),
(18, '19-2020', '2020-01-18', 'Georgia', 'Win', 91, 59, 'SEC', 'home', 1),
(19, '19-2020', '2020-01-14', 'Missouri', 'Win', 72, 45, 'SEC', 'home', 3),
(20, '19-2020', '2020-01-11', 'LSU', 'Loss', 59, 60, 'SEC', 'road', 4),
(21, '19-2020', '2020-01-08', 'Alabama', 'Loss', 69, 90, 'SEC', 'road', 2),
(22, '19-2020', '2020-01-04', 'Auburn', 'Loss', 68, 80, 'SEC', 'home', 1),
(23, '19-2020', '2020-01-25', 'Oklahoma', 'Loss', 62, 63, 'Non-Conference', 'road', 4),
(24, '19-2020', '2019-12-30', 'Kent State', 'Win', 96, 68, 'Non-Conference', 'home', 3),
(25, '19-2020', '2019-12-22', 'New Mexico St.', 'Loss', 52, 58, 'Non-Conference', 'neutral', 2),
(26, '19-2020', '2019-12-05', 'Louisiana Tech', 'Loss', 67, 74, 'Non-Conference', 'home', 1),
(27, '19-2020', '2019-11-24', 'Coastal Carolina', 'Win', 81, 56, 'Non-Conference', 'road', 2),
(28, '19-2020', '2019-11-22', 'Villanova', 'Loss', 76, 83, 'Non-Conference', 'neutral', 2),
(29, '19-2020', '2019-11-21', 'Tulane', 'Win', 80, 66, 'Non-Conference', 'neutral', 5),
(30, '19-2020', '2019-11-17', 'New Orleans', 'Win', 82, 59, 'Non-Conference', 'home', 3),
(31, '19-2020', '2019-11-14', 'UL Monroe', 'Win', 62, 45, 'Non-Conference', 'home', 2),
(32, '19-2020', '2019-11-08', 'Sam Houston St.', 'Win', 67, 58, 'Non-Conference', 'home', 1),
(33, '19-2020', '2019-11-05', 'FIU', 'Win', 77, 69, 'Non-Conference', 'home', 1),
(34, '18-2019', '2019-03-14', 'Texas A&M', 'Win', 80, 54, 'SECT Second Round', 'secT', 8),
(35, '18-2019', '2019-03-09', 'Texas A&M', 'Win', 92, 81, 'SEC', 'home', 8),
(36, '18-2019', '2019-03-05', 'Tennessee', 'Loss', 54, 71, 'SEC', 'road', 9),
(37, '18-2019', '2019-03-02', 'Auburn', 'Loss', 75, 80, 'SEC', 'road', 10),
(38, '18-2019', '2019-02-26', 'Missouri', 'Win', 68, 49, 'SEC', 'home', 12),
(39, '18-2019', '2019-02-23', 'South Carolina', 'Win', 76, 61, 'SEC', 'home', 12),
(40, '18-2019', '2019-02-20', 'Georgia', 'Win', 68, 67, 'SEC', 'road', 9),
(41, '18-2019', '2019-02-16', 'Arkansas', 'Win', 77, 67, 'SEC', 'road', 9),
(42, '18-2019', '2019-02-12', 'Alabama', 'Win', 81, 62, 'SEC', 'home', 11),
(43, '18-2019', '2019-02-09', 'Kentucky', 'Loss', 67, 71, 'SEC', 'home', 8),
(44, '18-2019', '2019-02-06', 'LSU', 'Loss', 88, 92, 'SEC', 'home', 8),
(45, '18-2019', '2019-02-02', 'Ole Miss', 'Win', 81, 75, 'SEC', 'road', 9),
(46, '18-2019', '2019-01-29', 'Alabama', 'Loss', 79, 83, 'SEC', 'road', 9),
(47, '18-2019', '2019-01-26', 'Auburn', 'Win', 92, 84, 'SEC', 'home', 8),
(48, '18-2019', '2019-01-22', 'Kentucky', 'Loss', 55, 76, 'SEC', 'road', 10),
(49, '18-2019', '2019-01-19', 'Vanderbilt', 'Win', 71, 55, 'SEC', 'road', 9),
(50, '18-2019', '2019-01-15', 'Florida', 'Win', 71, 68, 'SEC', 'home', 8),
(51, '18-2019', '2019-01-12', 'Ole Miss', 'Loss', 77, 81, 'SEC', 'home', 9),
(52, '18-2019', '2019-01-08', 'South Carolina', 'Loss', 82, 87, 'SEC', 'road', 11),
(53, '18-2019', '2018-12-29', 'BYU', 'Win', 103, 81, 'Non-Conference', 'home', 8),
(54, '18-2019', '2018-12-22', 'Wright State', 'Win', 67, 63, 'Non-Conference', 'neutral', 13),
(55, '18-2019', '2018-12-19', 'Wofford', 'Win', 98, 87, 'Non-Conference', 'home', 8),
(56, '18-2019', '2018-12-15', 'Cincinnati', 'Win', 70, 59, 'Non-Conference', 'home', 10),
(57, '18-2019', '2018-12-08', 'Clemson', 'Win', 82, 71, 'Non-Conference', 'neutral', 8),
(58, '18-2019', '2018-12-04', 'McNeese St.', 'Win', 90, 77, 'Non-Conference', 'home', 8),
(59, '18-2019', '2018-11-30', 'Dayton', 'Win', 65, 58, 'Non-Conference', 'road', 10),
(60, '18-2019', '2018-11-26', 'Alcorn State', 'Win', 88, 65, 'Non-Conference', 'home', 8),
(61, '18-2019', '2018-11-21', 'Saint Mary\'s', 'Win', 61, 57, 'Non-Conference', 'neutral', 9),
(62, '18-2019', '2018-11-16', 'Long Beach St.', 'Win', 79, 51, 'Non-Conference', 'home', 13),
(63, '18-2019', '2018-11-11', 'Hartford', 'Win', 77, 59, 'Non-Conference', 'home', 8),
(64, '18-2019', '2018-11-09', 'Austin Peay', 'Win', 95, 67, 'Non-Conference', 'home', 8),
(65, '18-2019', '2018-11-19', 'Arizona State', 'Loss', 67, 72, 'Non-Conference', 'neutral', 9),
(66, '17-2018', '2018-03-27', 'Penn State', 'Loss', 60, 75, 'NIT Final Four', 'nitFinalFour', 19),
(67, '17-2018', '2018-03-20', 'Louisville', 'Win', 79, 56, 'NIT Quarterfinals', 'nit', 10),
(68, '17-2018', '2018-03-18', 'Baylor', 'Win', 78, 77, 'NIT Second Round', 'nit', 10),
(69, '17-2018', '2018-03-14', 'Nebraska', 'Win', 66, 59, 'NIT First Round', 'nit', 14),
(70, '17-2018', '2018-03-09', 'Tennessee', 'Loss', 59, 62, 'SECT Quarterfinals', 'secT', 18),
(71, '17-2018', '2018-03-08', 'LSU', 'Win', 80, 77, 'SECT Second Round', 'secT', 17),
(72, '17-2018', '2018-03-03', 'LSU', 'Loss', 57, 78, 'SEC', 'road', 18),
(73, '17-2018', '2018-02-27', 'Tennessee', 'Loss', 54, 76, 'SEC', 'home', 17),
(74, '17-2018', '2018-02-24', 'South Carolina', 'Win', 72, 68, 'SEC', 'home', 17),
(75, '17-2018', '2018-02-20', 'Texas A&M', 'Win', 93, 81, 'SEC', 'road', 10),
(76, '17-2018', '2018-02-17', 'Ole Miss', 'Win', 79, 62, 'SEC', 'home', 17),
(77, '17-2018', '2018-02-14', 'Vanderbilt', 'Loss', 80, 81, 'SEC', 'road', 18),
(78, '17-2018', '2018-02-10', 'Missouri', 'Loss', 85, 89, 'SEC', 'road', 18),
(79, '17-2018', '2018-02-06', 'Alabama', 'Win', 67, 63, 'SEC', 'home', 19),
(80, '17-2018', '2018-02-03', 'Georgia', 'Win', 72, 57, 'SEC', 'home', 17),
(81, '17-2018', '2018-01-31', 'South Carolina', 'Win', 81, 76, 'SEC', 'road', 18),
(82, '17-2018', '2018-01-27', 'Missouri', 'Win', 74, 62, 'SEC', 'home', 17),
(83, '17-2018', '2018-01-23', 'Kentucky', 'Loss', 65, 78, 'SEC', 'road', 18),
(84, '17-2018', '2018-01-20', 'Alabama', 'Loss', 62, 68, 'SEC', 'road', 18),
(85, '17-2018', '2018-01-16', 'Vanderbilt', 'Win', 80, 62, 'SEC', 'home', 17),
(86, '17-2018', '2018-01-13', 'Auburn', 'Loss', 68, 76, 'SEC', 'home', 10),
(87, '17-2018', '2018-01-10', 'Florida', 'Loss', 54, 71, 'SEC', 'road', 18),
(88, '17-2018', '2018-01-06', 'Ole Miss', 'Loss', 58, 64, 'SEC', 'road', 19),
(89, '17-2018', '2018-01-02', 'Arkansas', 'Win', 78, 75, 'SEC', 'home', 17),
(90, '17-2018', '2017-12-30', 'North Florida', 'Win', 109, 81, 'Non-Conference', 'home', 17),
(91, '17-2018', '2017-12-23', 'Southern Miss', 'Win', 70, 64, 'Non-Conference', 'neutral', 19),
(92, '17-2018', '2017-12-20', 'Litte Rock', 'Win', 64, 48, 'Non-Conference', 'home', 15),
(93, '17-2018', '2017-12-16', 'UT Martin', 'Win', 92, 61, 'Non-Conference', 'home', 16),
(94, '17-2018', '2017-12-12', 'Cincinnati', 'Loss', 50, 65, 'Non-Conference', 'road', 18),
(95, '17-2018', '2017-12-09', 'North Georgia', 'Win', 95, 62, 'Non-Conference', 'home', 17),
(96, '17-2018', '2017-12-03', 'Dayton', 'Win', 61, 59, 'Non-Conference', 'home', 17),
(97, '17-2018', '2017-11-30', 'North Dakota St.', 'Win', 83, 59, 'Non-Conference', 'home', 17),
(98, '17-2018', '2017-11-26', 'Jacksonville State', 'Win', 59, 56, 'Non-Conference', 'home', 17),
(99, '17-2018', '2017-11-22', 'Stephen F. Austin', 'Win', 80, 75, 'Non-Conference', 'home', 17),
(100, '17-2018', '2017-11-20', 'Green Bay', 'Win', 77, 68, 'Non-Conference', 'home', 17),
(101, '17-2018', '2017-11-18', 'Florida A&M', 'Win', 79, 48, 'Non-Conference', 'home', 17),
(102, '17-2018', '2017-11-10', 'Alabama State', 'Win', 96, 68, 'Non-Conference', 'home', 17),
(103, '16-2017', '2017-03-09', 'Alabama', 'Loss', 55, 75, 'SECT Second Round', 'secT', 20),
(104, '16-2017', '2017-03-08', 'LSU', 'Win', 79, 52, 'SECT First Round', 'secT', 21),
(105, '16-2017', '2017-03-04', 'LSU', 'Win', 88, 76, 'SEC', 'home', 22),
(106, '16-2017', '2017-02-28', 'South Carolina', 'Loss', 57, 63, 'SEC', 'road', 24),
(107, '16-2017', '2017-02-25', 'Vanderbilt', 'Loss', 48, 77, 'SEC', 'road', 18),
(108, '16-2017', '2017-02-21', 'Ole Miss', 'Loss', 82, 87, 'SEC', 'home', 15),
(109, '16-2017', '2017-02-18', 'Florida', 'Loss', 52, 57, 'SEC', 'home', 23),
(110, '16-2017', '2017-02-14', 'Georgia', 'Loss', 72, 79, 'SEC', 'road', 24),
(111, '16-2017', '2017-02-11', 'South Carolina', 'Loss', 73, 77, 'SEC', 'home', 15),
(112, '16-2017', '2017-02-07', 'Auburn', 'Loss', 92, 98, 'SEC', 'road', 18),
(113, '16-2017', '2017-02-04', 'Tennessee', 'Win', 64, 59, 'SEC', 'home', 18),
(114, '16-2017', '2017-01-31', 'Ole Miss', 'Loss', 61, 88, 'SEC', 'road', 24),
(115, '16-2017', '2017-01-28', 'Alabama', 'Loss', 62, 71, 'SEC', 'road', 18),
(116, '16-2017', '2017-01-25', 'Missouri', 'Win', 89, 74, 'SEC', 'home', 22),
(117, '16-2017', '2017-01-21', 'Tennessee', 'Loss', 74, 91, 'SEC', 'road', 24),
(118, '16-2017', '2017-01-17', 'Kentucky', 'Loss', 81, 88, 'SEC', 'home', 23),
(119, '16-2017', '2017-01-14', 'Texas A&M', 'Win', 67, 59, 'SEC', 'home', 24),
(120, '16-2017', '2017-01-10', 'Arkansas', 'Win', 84, 78, 'SEC', 'road', 18),
(121, '16-2017', '2017-01-07', 'LSU', 'Win', 95, 78, 'SEC', 'road', 18),
(122, '16-2017', '2017-01-03', 'Alabama', 'Loss', 58, 68, 'SEC', 'home', 23),
(123, '16-2017', '2016-12-29', 'Kansas City', 'Win', 77, 54, 'Non-Conference', 'home', 23),
(124, '16-2017', '2016-12-22', 'Morehead State', 'Win', 85, 76, 'Non-Conference', 'home', 23),
(125, '16-2017', '2016-12-19', 'Southern Miss', 'Win', 86, 44, 'Non-Conference', 'neutral', 23),
(126, '16-2017', '2016-12-14', 'East Tennessee St.', 'Loss', 65, 67, 'Non-Conference', 'home', 23),
(127, '16-2017', '2016-12-04', 'Georgia State', 'Win', 82, 60, 'Non-Conference', 'home', 23),
(128, '16-2017', '2016-12-01', 'Oregon State', 'Win', 74, 57, 'Non-Conference', 'home', 23),
(129, '16-2017', '2016-11-28', 'Northwestern State', 'Win', 65, 59, 'Non-Conference', 'home', 23),
(130, '16-2017', '2016-11-25', 'Lehigh', 'Loss', 73, 87, 'Non-Conference', 'home', 23),
(131, '16-2017', '2016-11-20', 'UTEP', 'Win', 61, 54, 'Non-Conference', 'neutral', 23),
(132, '16-2017', '2016-11-18', 'Boise State', 'Win', 80, 68, 'Non-Conference', 'neutral', 18),
(133, '16-2017', '2016-11-17', 'UCF', 'Loss', 61, 86, 'Non-Conference', 'neutral', 18),
(134, '16-2017', '2016-11-11', 'Norfolk State', 'Win', 78, 74, 'Non-Conference', 'home', 24),
(135, '15-2016', '2016-03-10', 'Georgia', 'Loss', 69, 79, 'SECT Second Round', 'secT', 25),
(136, '15-2016', '2016-03-05', 'Auburn', 'Win', 79, 66, 'SEC', 'home', 22),
(137, '15-2016', '2016-03-02', 'Ole Miss', 'Loss', 78, 86, 'SEC', 'road', 29),
(138, '15-2016', '2016-02-27', 'South Carolina', 'Win', 68, 58, 'SEC', 'home', 22),
(139, '15-2016', '2016-02-24', 'Texas A&M', 'Loss', 66, 68, 'SEC', 'road', 29),
(140, '15-2016', '2016-02-20', 'Alabama', 'Win', 67, 61, 'SEC', 'road', 29),
(141, '15-2016', '2016-02-16', 'Vanderbilt', 'Win', 75, 74, 'SEC', 'home', 30),
(142, '15-2016', '2016-02-13', 'Georgia', 'Loss', 57, 66, 'SEC', 'home', 30),
(143, '15-2016', '2016-02-09', 'Arkansas', 'Win', 78, 46, 'SEC', 'home', 30),
(144, '15-2016', '2016-02-06', 'LSU', 'Loss', 77, 88, 'SEC', 'road', 29),
(145, '15-2016', '2016-02-02', 'Alabama', 'Loss', 80, 82, 'SEC', 'home', 26),
(146, '15-2016', '2016-01-30', 'Missouri', 'Win', 76, 62, 'SEC', 'road', 29),
(147, '15-2016', '2016-01-26', 'South Carolina', 'Loss', 74, 84, 'SEC', 'road', 29),
(148, '15-2016', '2016-01-23', 'Ole Miss', 'Win', 83, 77, 'SEC', 'home', 26),
(149, '15-2016', '2016-01-19', 'Florida', 'Loss', 78, 81, 'SEC', 'road', 29),
(150, '15-2016', '2016-01-16', 'Tennessee', 'Loss', 75, 80, 'SEC', 'home', 22),
(151, '15-2016', '2016-01-12', 'Kentucky', 'Loss', 74, 80, 'SEC', 'road', 29),
(152, '15-2016', '2016-01-09', 'Arkansas', 'Loss', 68, 82, 'SEC', 'road', 26),
(153, '15-2016', '2016-01-06', 'Texas A&M', 'Loss', 60, 61, 'SEC', 'home', 30),
(166, '15-2016', '2015-12-31', 'NC Central', 'Win', 71, 48, 'Non-Conference', 'home', 30),
(167, '15-2016', '2015-12-23', 'N Colorado', 'Win', 93, 69, 'Non-Conference', 'neutral', 30),
(168, '15-2016', '2015-12-19', 'Tulane', 'Win', 69, 59, 'Non-Conference', 'home', 30),
(169, '15-2016', '2015-12-16', 'Florida State', 'Loss', 66, 90, 'Non-Conference', 'road', 29),
(170, '15-2016', '2015-12-12', 'Kansas City', 'Loss', 67, 72, 'Non-Conference', 'road', 29),
(171, '15-2016', '2015-11-20', 'Texas Tech', 'Loss', 72, 74, 'Non-Conference', 'neutral', 29),
(172, '15-2016', '2015-12-02', 'Texas Southern', 'Win', 86, 73, 'Non-Conference', 'home', 26),
(173, '15-2016', '2015-11-28', 'UT Martin', 'Win', 76, 51, 'Non-Conference', 'home', 30),
(174, '15-2016', '2015-11-22', 'Missouri State', 'Win', 84, 70, 'Non-Conference', 'neutral', 30),
(175, '15-2016', '2015-11-19', 'Miami FL', 'Loss', 79, 105, 'Non-Conference', 'neutral', 30),
(176, '15-2016', '2015-11-16', 'Southern', 'Loss', 72, 76, 'Non-Conference', 'home', 30),
(177, '15-2016', '2015-11-13', 'E Washington', 'Win', 106, 88, 'Non-Conference', 'home', 30),
(178, '14-2015', '2015-03-11', 'Auburn', 'Loss', 68, 74, 'SECT First Round', 'secT', 27),
(179, '13-2014', '2014-03-13', 'Ole Miss', 'Loss', 66, 78, 'SECT Second Round', 'secT', 34),
(180, '13-2014', '2014-03-12', 'Vanderbilt', 'Win', 82, 68, 'SECT First Round', 'secT', 34),
(181, '12-2013', '2013-03-14', 'Tennessee', 'Loss', 53, 79, 'SECT Second Round', 'secT', 34),
(182, '12-2013', '2013-03-13', 'South Carolina', 'Win', 70, 59, 'SECT First Round', 'secT', 34),
(183, '12-2013', '2013-03-09', 'Auburn', 'Win', 74, 71, 'SEC', 'home', 35),
(184, '12-2013', '2013-03-06', 'South Carolina', 'Loss', 72, 79, 'SEC', 'road', 33),
(185, '12-2013', '2013-03-02', 'Ole Miss', 'Win', 73, 67, 'SEC', 'home', 35),
(186, '12-2013', '2013-02-27', 'Kentucky', 'Loss', 55, 85, 'SEC', 'road', 34),
(187, '12-2013', '2013-02-23', 'Vanderbilt', 'Loss', 31, 72, 'SEC', 'home', 35),
(188, '12-2013', '2013-02-20', 'Alabama', 'Loss', 56, 64, 'SEC', 'road', 34),
(189, '12-2013', '2013-02-16', 'LSU', 'Loss', 68, 80, 'SEC', 'road', 34),
(190, '12-2013', '2013-02-13', 'Missouri', 'Loss', 36, 78, 'SEC', 'home', 35),
(191, '12-2013', '2013-02-09', 'Florida', 'Loss', 58, 83, 'SEC', 'road', 34),
(192, '12-2013', '2013-02-06', 'Ole Miss', 'Loss', 75, 93, 'SEC', 'road', 34),
(193, '12-2013', '2013-02-02', 'LSU', 'Loss', 68, 69, 'SEC', 'home', 35),
(194, '12-2013', '2013-01-30', 'Texas A&M', 'Loss', 49, 55, 'SEC', 'home', 32),
(195, '12-2013', '2013-01-26', 'Florida', 'Loss', 47, 82, 'SEC', 'home', 35),
(196, '12-2013', '2013-01-23', 'Arkansas', 'Loss', 70, 96, 'SEC', 'road', 34),
(197, '12-2013', '2013-01-19', 'Tennessee', 'Loss', 57, 72, 'SEC', 'road', 34),
(198, '12-2013', '2013-01-16', 'Alabama', 'Loss', 43, 75, 'SEC', 'home', 35),
(199, '12-2013', '2013-01-12', 'Georgia', 'Win', 72, 61, 'SEC', 'road', 34),
(200, '12-2013', '2013-01-09', 'South Carolina', 'Win', 56, 54, 'SEC', 'home', 35),
(210, '13-2014', '2014-03-08', 'South Carolina', 'Loss', 62, 74, 'SEC', 'home', 35),
(211, '13-2014', '2014-03-05', 'Georgia', 'Loss', 45, 66, 'SEC', 'road', 34),
(212, '13-2014', '2014-03-01', 'Missouri', 'Loss', 66, 85, 'SEC', 'road', 34),
(213, '13-2014', '2014-02-26', 'Tennessee', 'Loss', 68, 75, 'SEC', 'home', 31),
(214, '13-2014', '2014-02-22', 'Arkansas', 'Loss', 69, 73, 'SEC', 'home', 35),
(215, '13-2014', '2014-02-19', 'LSU', 'Loss', 81, 92, 'SEC', 'road', 34),
(216, '13-2014', '2014-02-15', 'Auburn', 'Loss', 82, 92, 'SEC', 'road', 34),
(217, '13-2014', '2014-02-12', 'Georgia', 'Loss', 55, 75, 'SEC', 'home', 35),
(218, '13-2014', '2014-02-08', 'Kentucky', 'Loss', 59, 69, 'SEC', 'home', 35),
(219, '13-2014', '2014-02-05', 'Texas A&M', 'Loss', 52, 72, 'SEC', 'road', 33),
(220, '13-2014', '2014-02-01', 'Vanderbilt', 'Loss', 49, 55, 'SEC', 'road', 34),
(221, '13-2014', '2014-01-30', 'Florida', 'Loss', 51, 62, 'SEC', 'home', 35),
(222, '13-2014', '2014-01-25', 'Ole Miss', 'Loss', 63, 82, 'SEC', 'road', 34),
(223, '13-2014', '2014-01-22', 'Auburn', 'Win', 82, 74, 'SEC', 'home', 35),
(224, '13-2014', '2014-01-18', 'Texas A&M', 'Win', 81, 72, 'SEC', 'home', 35),
(225, '13-2014', '2014-01-15', 'Alabama', 'Loss', 61, 80, 'SEC', 'road', 34),
(226, '13-2014', '2014-01-11', 'Ole Miss', 'Win', 76, 72, 'SEC', 'home', 31),
(227, '13-2014', '2014-01-08', 'Kentucky', 'Loss', 63, 85, 'SEC', 'road', 34),
(237, '14-2015', '2015-03-07', 'Missouri', 'Win', 52, 43, 'SEC', 'home', 30),
(238, '14-2015', '2015-03-04', 'Vanderbilt', 'Loss', 56, 66, 'SEC', 'road', 29),
(239, '14-2015', '2015-02-28', 'South Carolina', 'Loss', 68, 61, 'SEC', 'road', 29),
(240, '14-2015', '2015-02-25', 'Kentucky', 'Loss', 56, 74, 'SEC', 'home', 28),
(241, '14-2015', '2015-02-21', 'Arkansas', 'Loss', 61, 65, 'SEC', 'home', 30),
(242, '14-2015', '2015-02-19', 'Ole Miss', 'Loss', 65, 71, 'SEC', 'home', 27),
(243, '14-2015', '2015-02-14', 'Missouri', 'Win', 77, 74, 'SEC', 'road', 29),
(244, '14-2015', '2015-02-10', 'Alabama', 'Loss', 51, 55, 'SEC', 'home', 30),
(245, '14-2015', '2015-02-07', 'Arkansas', 'Loss', 41, 61, 'SEC', 'road', 29),
(246, '14-2015', '2015-02-03', 'Tennessee', 'Win', 71, 66, 'SEC', 'road', 29),
(247, '14-2015', '2015-01-31', 'LSU', 'Win', 73, 67, 'SEC', 'home', 30),
(248, '14-2015', '2015-01-28', 'Ole Miss', 'Loss', 73, 79, 'SEC', 'road', 29),
(249, '14-2015', '2015-01-24', 'Georgia', 'Loss', 66, 72, 'SEC', 'home', 27),
(250, '14-2015', '2015-01-21', 'Auburn', 'Win', 78, 71, 'SEC', 'road', 29),
(251, '14-2015', '2015-01-17', 'Vanderbilt', 'Win', 57, 54, 'SEC', 'home', 27),
(252, '14-2015', '2015-01-13', 'Texas A&M', 'Loss', 70, 74, 'SEC', 'road', 28),
(253, '14-2015', '2015-01-10', 'Florida', 'Loss', 47, 72, 'SEC', 'road', 29),
(254, '14-2015', '2015-01-07', 'Tennessee', 'Loss', 47, 61, 'SEC', 'home', 30);

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
  MODIFY `gameID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255;

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
