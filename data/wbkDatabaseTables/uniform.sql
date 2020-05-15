-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 14, 2020 at 07:38 AM
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
(15, 'pink', '2019 pink uniforms scott', 'https://i.imgur.com/IxkSwgj.png'),
(16, 'white', '2017 white uniforms vivians', 'https://i.imgur.com/A7n7fdg.png'),
(17, 'white', '2018 ncaa white uniforms vivians', 'https://i.imgur.com/QJiZtUS.png'),
(18, 'white', '2018 final four white uniforms vivians', 'https://i.imgur.com/23h7adC.png'),
(19, 'maroon', '2018 maroon uniforms william', 'https://i.imgur.com/HezkBRv.png'),
(20, 'black', '2017 black uniforms mccowan', 'https://i.imgur.com/xLesJvl.png'),
(21, 'white', '2018 white state uniforms johnson', 'https://i.imgur.com/veQRcE2.png'),
(22, 'gray', '2018 gray uniforms schaefer', 'https://i.imgur.com/1WZeE04.png'),
(23, 'pink', '2018 pink uniforms holmes', 'https://i.imgur.com/zud1pmm.png'),
(24, 'white', '2017 made in march white uniforms vivians', 'https://i.imgur.com/gBeuq79.png'),
(25, 'white', '2017 ncaa made in march white uniforms vivians', 'https://i.imgur.com/LZYZVOu.png'),
(26, 'maroon', '2017 ncaa made in march maroon uniforms william', 'https://i.imgur.com/ceXX316.png'),
(27, 'maroon', '2017 final four made in march maroon uniforms william', 'https://i.imgur.com/8Ywj4PU.png'),
(28, 'maroon', '2017 maroon uniforms william', 'https://i.imgur.com/ZHrp7ZI.png'),
(29, 'white', '2017 white state uniforms dillingham', 'https://i.imgur.com/NVSUD0C.png'),
(30, 'gray', '2017 gray uniforms richardson', 'https://i.imgur.com/MFiDPGt.png'),
(31, 'white', '2016 white pink uniforms okorie', 'https://i.imgur.com/4oUBolk.png'),
(32, 'white', '2015 white uniforms vivians', 'https://i.imgur.com/TnqXvvq.png'),
(33, 'white', '2015 ncaa white uniforms vivians', 'https://i.imgur.com/SonKmkf.png'),
(34, 'maroon', '2016 maroon uniforms william', 'https://i.imgur.com/V3BEqPi.png'),
(35, 'maroon', '2016 ncaa maroon uniforms william', 'https://i.imgur.com/PvKDNDF.png'),
(36, 'black', '2014 black uniforms dillingham', 'https://i.imgur.com/h418HVz.png'),
(37, 'maroon', '2015 maroon uniforms alwal', 'https://i.imgur.com/Rl2xAeN.png'),
(38, 'maroon', '2015 ncaa maroon uniforms alwal', 'https://i.imgur.com/9FE2RWR.png'),
(39, 'white', '2014 white uniforms alwal', 'https://i.imgur.com/ZBpMfF0.png'),
(40, 'maroon', '2014 maroon uniforms richardson', 'https://i.imgur.com/HlF0vdr.png'),
(41, 'pink', '2014 pink uniforms grant', 'https://i.imgur.com/s7jBy1k.png'),
(42, 'white', '2013 white uniforms alwal', 'https://i.imgur.com/pPpg5Fw.png'),
(43, 'maroon', '2013 maroon uniforms grant', 'https://i.imgur.com/3HSMkWB.png'),
(44, 'white', '2013 white pink uniforms williams', 'https://i.imgur.com/fE1QVgO.png'),
(45, 'maroon', '2012 maroon uniforms porter', 'https://i.imgur.com/TOarYUd.png'),
(46, 'maroon', '2011 maroon uniforms govero', 'https://i.imgur.com/bCzn5Lh.png'),
(47, 'white', '2010 white uniforms rack', 'https://i.imgur.com/Wr3G7tl.png'),
(48, 'white', '2010 ncaa white uniforms rack', 'https://i.imgur.com/bbRnUOy.png'),
(49, 'maroon', '2010 maroon uniforms mokango', 'https://i.imgur.com/eIjA2Ku.png'),
(50, 'maroon', '2010 ncaa maroon uniforms mokango', 'https://i.imgur.com/Q97PjIM.png'),
(51, 'white', '2009 white uniforms rack', 'https://i.imgur.com/e1V4uxV.png'),
(52, 'maroon', '2009 maroon uniforms lumanu', 'https://i.imgur.com/wL8nswo.png'),
(53, 'maroon', '2009 ncaa maroon uniforms lumanu', 'https://i.imgur.com/877gEfG.png'),
(54, 'maroon', '2008 maroon uniforms grimes', 'https://i.imgur.com/YCGKk3T.png'),
(55, 'white', '2007 white uniforms jackson', 'https://i.imgur.com/IBPpyPN.png'),
(56, 'maroon', '2007 maroon uniforms rack', 'https://i.imgur.com/uO7OFu8.png'),
(57, 'white', '2011 white uniforms', 'https://i.imgur.com/6bi5LZE.png'),
(58, 'black', '2012 black uniforms', 'https://i.imgur.com/fnjCJx1.png'),
(59, 'black', '2011 black uniforms', 'https://i.imgur.com/6SzDIkq.png'),
(60, 'maroon', '2006 maroon uniforms mckinney', 'https://i.imgur.com/UvnAJRD.png'),
(61, 'white', '2005 white uniforms burns', 'https://i.imgur.com/FUrgE1E.png'),
(62, 'maroon', '2005 maroon uniforms tan', 'https://i.imgur.com/vCXJ4bz.png'),
(63, 'white', '2004 white uniforms burns', 'https://i.imgur.com/j51fX81.png'),
(64, 'white', '2003 white uniforms thomas', 'https://i.imgur.com/Z8QIRrd.png'),
(65, 'maroon', '2003 maroon uniforms tan', 'https://i.imgur.com/gsadece.png'),
(66, 'maroon', '2002 maroon uniforms tan', 'https://i.imgur.com/6aPKCG9.png'),
(67, 'white', '2001 white uniforms thomas', 'https://i.imgur.com/bveLWDN.png'),
(68, 'white', '2000 white uniforms thomas', 'https://i.imgur.com/dBCzOdz.png'),
(69, 'maroon', '2000 maroon uniforms fambrough', 'https://i.imgur.com/hasFsh9.png'),
(70, 'maroon', '1999 maroon uniforms Perry', 'https://i.imgur.com/u1ZykDm.png'),
(71, 'white', '1998 white uniforms graham', 'https://i.imgur.com/UhQLC4A.png'),
(72, 'maroon', '1998 maroon uniforms thompson', 'https://i.imgur.com/BSk3sqA.png');

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
  MODIFY `uniformID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
