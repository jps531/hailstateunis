-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 07, 2020 at 08:57 PM
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
-- Table structure for table `uniform`
--

CREATE TABLE `uniform` (
  `uniformID` int(11) NOT NULL,
  `uColor` varchar(30) DEFAULT NULL,
  `uName` varchar(100) DEFAULT NULL,
  `uImage` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uniform`
--

INSERT INTO `uniform` (`uniformID`, `uColor`, `uName`, `uImage`) VALUES
(1, 'white', '2020 white uniforms danberry', 'https://i.imgur.com/0AhfR0F.png'),
(2, 'maroon', '2020 maroon uniforms jackson', 'https://i.imgur.com/NH4iUgA.png'),
(3, 'black', '2020 black uniforms carter', 'https://i.imgur.com/LQ6DclL.png'),
(4, 'white', '2020 white state uniforms matharu', 'https://i.imgur.com/kLBuBel.png'),
(5, 'pink', '2020 pink uniforms taylor', 'https://i.imgur.com/ckTj7si.png'),
(6, 'white', '2019 white uniforms mccowan', 'https://i.imgur.com/eNcnOeR.png'),
(7, 'white', '2019 ncaa white uniforms mccowan', 'https://i.imgur.com/Ti80FmY.png'),
(8, 'maroon', '2019 maroon uniforms howard', 'https://i.imgur.com/V7mMrsD.png'),
(9, 'black', '2019 black uniforms danberry', 'https://i.imgur.com/fIxi3I8.png'),
(10, 'gray', '2019 gray uniforms bibby', 'https://i.imgur.com/3DuAcDs.png'),
(11, 'white', '2019 white state uniforms holmes', 'https://i.imgur.com/4MH36WS.png'),
(12, 'white', '2019 ncaa white state uniforms holmes', 'https://i.imgur.com/tE8oSNT.png'),
(13, 'cream', '2019 harlem cream uniforms espinoza-hunter', 'https://i.imgur.com/9cqG1sM.png'),
(14, 'cream', '2019 ncaa harlem cream uniforms espinoza-hunter', 'https://i.imgur.com/Vwd1DoV.png'),
(15, 'pink', '2019 pink uniforms scott', 'https://i.imgur.com/IxkSwgj.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `uniform`
--
ALTER TABLE `uniform`
  ADD PRIMARY KEY (`uniformID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `uniform`
--
ALTER TABLE `uniform`
  MODIFY `uniformID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
