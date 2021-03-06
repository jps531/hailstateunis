-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 25, 2020 at 12:06 AM
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
-- Table structure for table `opponent`
--

CREATE TABLE `opponent` (
  `opponentName` varchar(30) NOT NULL,
  `conference` varchar(30) DEFAULT NULL,
  `colorA` varchar(30) DEFAULT NULL,
  `colorB` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `opponent`
--

INSERT INTO `opponent` (`opponentName`, `conference`, `colorA`, `colorB`) VALUES
('Abilene Christian', 'FCS', '#42216e', 'white'),
('Air Force', 'Mountian West', '#094b9a', '#aca9a7'),
('Alabama', 'SEC West', '#91002a', 'white'),
('Alcorn State', 'FCS', '#b79e6a', '#491e6a'),
('Arkansas', 'SEC West', '#992231', 'white'),
('Arkansas State', 'Sun Belt', 'black', '#d02030'),
('Auburn', 'SEC West', '#092647', '#e85e33'),
('Baylor', 'Big 12', '#003926', '#ffab09'),
('Bowling Green', 'MAC', '#4f2c1d', '#fe5000'),
('BYU', 'Independent', '#002255', 'white'),
('Cal St. Fullerton', 'FCS', '#072348', '#f08031'),
('Charleston Southern', 'FCS', '#012650', '#a8996e'),
('Clemson', 'ACC', '#e12c08', 'white'),
('Colorado State', 'Mountian West', '#0e2e1d', '#a58749'),
('Duquesne', 'FCS', '#06193b', '#c42c47'),
('East Tennessee St.', 'FCS', '#04193d', '#fcb620'),
('Florida', 'SEC East', '#273991', '#ea2600'),
('Gardner-Webb', 'FCS', '#bb112e', 'white'),
('Georgetown', 'FCS', '#cbc1b0', '#011d3f'),
('Georgia', 'SEC East', '#bf0514', 'white'),
('Georgia Tech', 'ACC', '#b5a269', '#012441'),
('Houston', 'American', '#ca1528', 'white'),
('Illinois', 'Big Ten', '#e0311b', '#0b1a39'),
('Iowa', 'Big Ten', 'black', '#ffcc00'),
('Jackson State', 'FCS', '#002147', 'white'),
('Jacksonville State', 'FCS', '#ce2323', 'white'),
('Kansas', 'Big 12', '#0554ba', '#d8091b'),
('Kansas State', 'Big 12', '#b2b1b1', '#5e3788'),
('Kentucky', 'SEC East', '#00419c', 'white'),
('Louisiana', 'Sun Belt', '#a60d1d', 'white'),
('Louisiana Tech', 'Conference USA', '#cb333b', '#003087'),
('Louisville', 'ACC', '#ca0e33', 'white'),
('LSU', 'SEC West', '#f4ac3d', '#2c1359'),
('Maine', 'FCS', '#032a53', '#3098d4'),
('Memphis', 'American', '#144bbf', 'white'),
('Miami FL', 'ACC', '#005030', '#f05a00'),
('Miami OH', 'MAC', '#b6191d', 'white'),
('Michigan', 'Big Ten', '#0c2345', '#f2c101'),
('Middle Tennessee', 'Conference USA', '#a8a8a8', '#1666d3'),
('Missouri', 'SEC East', 'black', '#ec8504'),
('Murray State', 'FCS', '#043163', '#fcb724'),
('Navy', 'American', '#021743', '#a28b39'),
('NC State', 'ACC', '#b51231', 'white'),
('Nebraska', 'Big Ten', '#e41c38', 'white'),
('North Carolina', 'ACC', '#6ba1cc', '#0b1b39'),
('Northwestern', 'Big Ten', '#431f81', 'white'),
('Northwestern State', 'FCS', '#f2682a', '#492f91'),
('Oklahoma State', 'Big 12', 'black', '#ff6c00'),
('Ole Miss', 'SEC West', '#0e2143', '#d2233a'),
('Oregon', 'Pac 12', '#173d35', '#ffe115'),
('Rice', 'Conference USA', '#061838', 'white'),
('Samford', 'FCS', '#0c2341', '#c00c31'),
('SE Louisiana', 'FCS', '#1a704d', '#deb02e'),
('South Alabama', 'Sun Belt', '#13182e', '#b8143f'),
('South Carolina', 'SEC East', '#6f1028', 'white'),
('Southern Miss', 'Conference USA', 'black', '#ffc209'),
('Stephen F. Austin', 'FCS', '#362170', 'white'),
('Syracuse', 'ACC', '#e64e1d', '#162e57'),
('Tennessee', 'SEC East', '#e9863d', 'white'),
('Texas', 'Big 12', '#b55c22', 'white'),
('Texas A&M', 'SEC West', '#370d0e', 'white'),
('Troy', 'Sun Belt', '#9e0531', '#b3b5b8'),
('Tulane', 'American', '#006647', 'white'),
('UAB', 'Conference USA', '#ba9c60', '#034f35'),
('UCF', 'American', '#be9446', 'black'),
('UL Monroe', 'Sun Belt', '#7b1627', '#f9b82d'),
('UMass', 'Independent', '#6f0d14', 'white'),
('UT Martin', 'FCS', '#002649', '#f8521c'),
('Vanderbilt', 'SEC East', '#a8996e', 'black'),
('Wake Forest', 'ACC', 'black', '#bba16a'),
('West Virginia', 'Big 12', '#002855', '#eaaa00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `opponent`
--
ALTER TABLE `opponent`
  ADD PRIMARY KEY (`opponentName`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
