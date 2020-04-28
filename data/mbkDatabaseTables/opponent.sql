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
('Abilene Christian', 'Southland', '#42216e', 'white'),
('Air Force', 'Mountian West', '#094b9a', '#aca9a7'),
('Alabama', 'SEC', '#91002a', 'white'),
('Alabama A&M', 'SWAC', '#6f000c', 'white'),
('Alabama State', 'SWAC', 'black', '#f49d00'),
('Alcorn State', 'SWAC', '#b79e6a', '#491e6a'),
('Arizona State', 'Pac 12', '#4f0e26', '#ffc523'),
('Arkansas', 'SEC', '#992231', 'white'),
('Arkansas State', 'Sun Belt', 'black', '#d02030'),
('Auburn', 'SEC', '#092647', '#e85e33'),
('Austin Peay', 'Ohio Valley', '#bb032b', 'white'),
('Baylor', 'Big 12', '#003926', '#ffab09'),
('Boise State', 'Mountian West', '#003d8f', '#f3552e'),
('Bowling Green', 'MAC', '#4f2c1d', '#fe5000'),
('BYU', 'West Coast', '#002255', 'white'),
('Cal St. Fullerton', 'Big West', '#072348', '#f08031'),
('Central Arkansas', 'Southland', '#552784', 'white'),
('Charleston Southern', 'Big South', '#012650', '#a8996e'),
('Cincinnati', 'American', 'black', '#e51937'),
('Clayton State', 'D-II', '#004a92', '#ff5c00'),
('Clemson', 'ACC', '#e12c08', 'white'),
('Coastal Carolina', 'Sun Belt', '#008185', 'white'),
('Colorado State', 'Mountian West', '#0e2e1d', '#a58749'),
('Dayton', 'Atlantic 10', '#ef0027', 'white'),
('Duquesne', 'Atlantic 10', '#06193b', '#c42c47'),
('E Washington', 'Big Sky', '#d40028', 'black'),
('East Tennessee St.', 'Southern', '#04193d', '#fcb620'),
('FIU', 'Conference USA', '#02244a', '#cea73b'),
('FL Gulf Coast', 'Atlantic Sun', '#004587', '#01794b'),
('Florida', 'SEC', '#273991', '#ea2600'),
('Florida A&M', 'Mid-Eastern', '#f77b00', '#00823e'),
('Florida Atlantic', 'Conference USA', '#1e3160', '#c12037'),
('Florida State', 'ACC', '#d2b885', '#79233a'),
('Gardner-Webb', 'Big South', '#bb112e', 'white'),
('Georgetown', 'Big East', '#cbc1b0', '#011d3f'),
('Georgia', 'SEC', '#bf0514', 'white'),
('Georgia State', 'Sun Belt', '#17459b', 'white'),
('Georgia Tech', 'ACC', '#b5a269', '#012441'),
('Green Bay', 'Horizon', '#0c5741', 'white'),
('Hartford', 'America East', '#d0001b', 'white'),
('Houston', 'American', '#ca1528', 'white'),
('Illinois', 'Big Ten', '#e0311b', '#0b1a39'),
('Iowa', 'Big Ten', 'black', '#ffcc00'),
('Jackson State', 'SWAC', '#002147', 'white'),
('Jacksonville', 'Atlantic Sun', '#014c41', 'white'),
('Jacksonville State', 'Ohio Valley', '#ce2323', 'white'),
('Kansas', 'Big 12', '#0554ba', '#d8091b'),
('Kansas City', 'WAC', '#004f81', '#ffcc00'),
('Kansas State', 'Big 12', '#b2b1b1', '#5e3788'),
('Kennesaw St.', 'Atlantic Sun', '#ffc000', 'black'),
('Kent State', 'MAC', '#052344', '#e9ab21'),
('Kentucky', 'SEC', '#00419c', 'white'),
('Lehigh', 'Patriot League', '#c2aa75', '#663400'),
('Liberty', 'Atlantic Sun', '#002244', '#d2001c'),
('Litte Rock', 'Sun Belt', '#601428', 'white'),
('Long Beach St.', 'Big West', 'black', '#eaab1f'),
('Louisiana', 'Sun Belt', '#a60d1d', 'white'),
('Louisiana Tech', 'Conference USA', '#cb333b', '#003087'),
('Louisville', 'ACC', '#ca0e33', 'white'),
('Loyola Chicago', 'Missouri Valley', '#571d1f', '#fdb814'),
('LSU', 'SEC', '#f4ac3d', '#2c1359'),
('Maine', 'America East', '#032a53', '#3098d4'),
('Marquette', 'Big East', '#003476', '#ffc800'),
('McNeese St.', 'Southland', '#07569e', '#fcd209'),
('Memphis', 'American', '#144bbf', 'white'),
('Miami FL', 'ACC', '#005030', '#f05a00'),
('Miami OH', 'MAC', '#b6191d', 'white'),
('Michigan', 'Big Ten', '#0c2345', '#f2c101'),
('Middle Tennessee', 'Conference USA', '#a8a8a8', '#1666d3'),
('Missouri', 'SEC', 'black', '#ec8504'),
('Missouri State', 'Missouri Valley', '#48121b', 'white'),
('Morehead State', 'Ohio Valley', '#005cb1', '#ffd500'),
('MS Valley State', 'SWAC', '#0c3e28', '#cb2a37'),
('Murray State', 'Ohio Valley', '#043163', '#fcb724'),
('N Colorado', 'Big Sky', '#072b55', '#ffb300'),
('Navy', 'American', '#021743', '#a28b39'),
('NC Central', 'Mid-Eastern', '#a5002a', '#9fa1a4'),
('NC State', 'ACC', '#b51231', 'white'),
('Nebraska', 'Big Ten', '#e41c38', 'white'),
('New Mexico St.', 'WAC', '#710820', 'white'),
('New Orleans', 'Southland', '#192857', '#2772b3'),
('Norfolk State', 'Mid-Eastern', '#044631', '#f8a607'),
('North Carolina', 'ACC', '#6ba1cc', '#0b1b39'),
('North Dakota St.', 'Summit League', '#005841', '#ffc700'),
('North Florida', 'Atlantic Sun', '#031b49', 'white'),
('North Georgia', 'D-II', '#002c8c', '#ffc700'),
('Northwestern', 'Big Ten', '#431f81', 'white'),
('Northwestern State', 'Southland', '#f2682a', '#492f91'),
('Oklahoma', 'Big 12', '#841626', 'white'),
('Oklahoma State', 'Big 12', 'black', '#ff6c00'),
('Ole Miss', 'SEC', '#0e2143', '#d2233a'),
('Oregon', 'Pac 12', '#173d35', '#ffe115'),
('Oregon State', 'Pac 12', '#db4405', 'black'),
('Penn State', 'Big Ten', '#032759', 'white'),
('Prairie View', 'SWAC', '#4f2784', '#ffc323'),
('Providence', 'Big East', 'black', '#9a9a97'),
('Radford', 'Big South', '#C02428', 'white'),
('Rice', 'Conference USA', '#061838', 'white'),
('Saint Louis', 'Atlantic 10', '#004c99', 'white'),
('Saint Mary\'s', 'West Coast', '#06315b', '#d80024'),
('Sam Houston St.', 'Soutland', '#ff6813', 'white'),
('Samford', 'Southern', '#0c2341', '#c00c31'),
('SC Upstate', 'Big South', '#005a3b', 'white'),
('SE Louisiana', 'Southland', '#1a704d', '#deb02e'),
('South Alabama', 'Sun Belt', '#13182e', '#b8143f'),
('South Carolina', 'SEC', '#6f1028', 'white'),
('South Florida', 'American', '#005740', '#c0ac6e'),
('Southern', 'SWAC', '#44b0e6', '#ffc700'),
('Southern Miss', 'Conference USA', 'black', '#ffc209'),
('Stephen F. Austin', 'Southland', '#362170', 'white'),
('Syracuse', 'ACC', '#e64e1d', '#162e57'),
('TCU', 'Big 12', '#502e84', 'white'),
('Tennessee', 'SEC', '#e9863d', 'white'),
('Texas', 'Big 12', '#b55c22', 'white'),
('Texas A&M', 'SEC', '#370d0e', 'white'),
('Texas Southern', 'SWAC', '#888a8c', '#650527'),
('Texas Tech', 'Big 12', 'black', '#ba0711'),
('Troy', 'Sun Belt', '#9e0531', '#b3b5b8'),
('Tulane', 'American', '#006647', 'white'),
('UAB', 'Conference USA', '#ba9c60', '#034f35'),
('UCF', 'American', '#be9446', 'black'),
('UL Monroe', 'Sun Belt', '#7b1627', '#f9b82d'),
('UM East. Shore', 'Mid-Eastern', '#86212f', '#898c8e'),
('UMass', 'Atlantic 10', '#6f0d14', 'white'),
('UNLV', 'Mountian West', '#c8c8c8', '#e30026'),
('UT Martin', 'Ohio Valley', '#002649', '#f8521c'),
('Utah State', 'Mountian West', '#001e37', '#9d968d'),
('UTEP', 'Conference USA', '#e95a0f', '#002d62'),
('UTSA', 'Conference USA', '#002a61', '#ff6d00'),
('Vanderbilt', 'SEC', '#a8996e', 'black'),
('Villanova', 'Big East', '#192857', '#0baae1'),
('W Carolina', 'Southern', '#6b18a5', '#d5aa71'),
('Wake Forest', 'ACC', 'black', '#bba16a'),
('West Virginia', 'Big 12', '#002855', '#eaaa00'),
('Wofford', 'Southern', '#886e4c', 'black'),
('Wright State', 'Horizon', '#1e4f39', '#dfa037');

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
