-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 15, 2020 at 11:09 PM
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
('Alabama', 'SEC', '#91002a', 'white'),
('Alcorn State', 'FCS', '#b79e6a', '#491e6a'),
('Appalachian St.', 'Sun Belt', 'black', '#ffd600'),
('Arkansas', 'SEC', '#992231', 'white'),
('Arkansas State', 'Sun Belt', 'black', '#d02030'),
('Auburn', 'SEC', '#092647', '#e85e33'),
('Austin Peay', 'FCS', '#bb032b', 'white'),
('Boise State', 'Mountian West', '#003d8f', '#f3552e'),
('California', 'Pac 12', '#0f1d41', '#fec524'),
('Charlotte', 'Conference USA', '#00573a', 'white'),
('Cincinnati', 'American', 'black', '#e51937'),
('East Carolina', 'American', '#4a2d7e', '#f7c44b'),
('FIU', 'Conference USA', '#02244a', '#cea73b'),
('Florida', 'SEC', '#273991', '#ea2600'),
('Florida Atlantic', 'Conference USA', '#1e3160', '#c12037'),
('Florida State', 'ACC', '#d2b885', '#79233a'),
('Houston', 'American', '#ca1528', 'white'),
('Jackson State', 'FCS', '#002147', 'white'),
('Kansas', 'Big 12', '#0554ba', '#d8091b'),
('Kentucky', 'SEC', '#00419c', 'white'),
('Louisiana', 'Sun Belt', '#a60d1d', 'white'),
('Louisiana Tech', 'Conference USA', '#cb333b', '#003087'),
('Louisville', 'ACC', '#ca0e33', 'white'),
('LSU', 'SEC', '#f4ac3d', '#2c1359'),
('Marshall', 'Conference USA', '#419756', 'white'),
('McNeese St.', 'FCS', '#07569e', '#fcd209'),
('Memphis', 'American', '#144bbf', 'white'),
('Middle Tennessee', 'Conference USA', '#a8a8a8', '#1666d3'),
('Mississippi State', 'SEC', '#3b0811', 'white'),
('Navy', 'American', '#021743', '#a28b39'),
('NC State', 'ACC', '#b51231', 'white'),
('Nebraska', 'Big Ten', '#e41c38', 'white'),
('Nevada', 'Mountain West', '#a8adb4', '#011e41'),
('North Texas', 'Conference USA', '#079446', 'white'),
('Ohio', 'MAC', '#0e5d4b', 'white'),
('Old Dominion', 'Conference USA', '#003a69', '#b0b6bb'),
('Prairie View', 'FCS', '#4f2784', '#ffc323'),
('Rice', 'Conference USA', '#061838', 'white'),
('Savannah St.', 'D-II', '#011e96', '#ff5a02'),
('SE Louisiana', 'FCS', '#1a704d', '#deb02e'),
('SMU', 'American', '#005dab', '#cc0035'),
('South Alabama', 'Sun Belt', '#13182e', '#b8143f'),
('South Carolina', 'SEC', '#6f1028', 'white'),
('South Florida', 'American', '#005740', '#c0ac6e'),
('Southern', 'FCS', '#44b0e6', '#ffc700'),
('TCU', 'Big 12', '#502e84', 'white'),
('Tennessee', 'SEC', '#e9863d', 'white'),
('Texas State', 'Sun Belt', '#ac9156', '#571c1f'),
('Troy', 'Sun Belt', '#9e0531', '#b3b5b8'),
('Tulane', 'American', '#006647', 'white'),
('Tulsa', 'American', '#003382', '#fe0000'),
('UAB', 'Conference USA', '#ba9c60', '#034f35'),
('UCF', 'American', '#be9446', 'black'),
('UL Monroe', 'Sun Belt', '#7b1627', '#f9b82d'),
('UT Martin', 'FCS', '#002649', '#f8521c'),
('Utah', 'Pac 12', '#c32034', 'white'),
('UTEP', 'Conference USA', '#e95a0f', '#002d62'),
('UTSA', 'Conference USA', '#002a61', '#ff6d00'),
('Virginia', 'ACC', '#f14d24', '#091f40'),
('Virginia Tech', 'ACC', '#43020e', '#ff6600'),
('Washington', 'Pac 12', '#3c2e81', '#e9bc77'),
('Western Kentucky', 'Conference USA', '#b01e24', 'white');

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
