-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 01, 2020 at 06:44 AM
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
('Bassfield', 'Defunct', '#b89451', 'black'),
('Bay Springs', '5-2A', '#ffae00', '#002f88'),
('Bay St. Louis', '4A', '#feb904', '#3a4bb3'),
('Bogue Chitto', '7-2A', '#082e5d', 'white'),
('Booneville', '3A', '#053c8f', '#ffba00'),
('Bruce', '2A North', '#004a9e', '#ffc000'),
('Calhoun City', '2A North', 'black', '#fc3d01'),
('Clarkdale', '3A', '#3e040d', 'white'),
('Collins', '8-2A', '#0f8552', 'white'),
('Columbia', '3A', '#044fa6', '#feb904'),
('East Marion', '8-2A', '#0f1a43', '#b90808'),
('Enterprise Clarke', '5-2A', 'black', 'white'),
('Eupora', '2A North', '#52131e', 'white'),
('Greene County', '4A', '#172147', '#a4a7a5'),
('Hazlehurst', '3A', '#330a12', 'white'),
('Heidelberg', '5-2A', '#0069b3', '#f8aa0f'),
('Jackson Prep', 'MAIS', '#bb1b2e', 'white'),
('Jeff Davis Co.', '3A', '#1149b0', '#a19d9b'),
('Leake County', '1A', '#d44200', 'white'),
('Loyd Star', '7-2A', '#d51c39', 'white'),
('Lumberton', '1A', 'black', '#bc092f'),
('Madison St. Joe', '2A North', '#082e5d', '#f1c500'),
('Mize', '5-2A', '#002a8c', '#ffae00'),
('MRA', 'MAIS', '#12225c', '#ad152b'),
('North Forrest', '8-2A', '#004491', '#c20d0d'),
('Northeast Jones', '4A', 'black', '#e9af10'),
('Northside', '2A North', '#053c8f', '#ff6600'),
('Okolona', '1A', '#400815', 'white'),
('Perry Central', '8-2A', '#990033', '#ffd000'),
('Philadelphia', '6-2A', '#b80014', 'white'),
('Pisgah', '2A North', '#0b3d2a', 'white'),
('Prentiss', 'Defunct', '#bc1024', 'white'),
('Puckett', '5-2A', '#3e040d', '#aaa9a9'),
('Quitman', '4A', '#feb904', '#1d3cb1'),
('Raleigh', '3A', '#390613', 'white'),
('Richton', '1A', '#3a0f13', 'white'),
('Scott Central', '6-2A', '#0c468d', '#ea0101'),
('Seminary', '3A', '#b91c25', 'white'),
('Union', '6-2A', 'black', '#ffba00'),
('West Bolivar', '1A', '#0c2341', '#c80909'),
('Winona', '3A', '#ad1220', '#aaa9a9');

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
