-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 08, 2020 at 07:24 PM
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
  `cImage` varchar(100) DEFAULT NULL,
  `cThumb` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `combination`
--

INSERT INTO `combination` (`comboID`, `helmetID`, `jerseyID`, `pantsID`, `cName`, `cImage`, `cThumb`) VALUES
(1, 2, 2, 9, '2019 gold/black/black', 'https://i.imgur.com/ElpUhMF.png','https://i.imgur.com/Tj5b45q.png'),
(2, 2, 2, 7, '2019 gold/black/gold', 'https://i.imgur.com/cdnhpkT.png','https://i.imgur.com/WdqQQMX.png'),
(3, 2, 2, 6, '2019 gold/black/green', 'https://i.imgur.com/OsFsstw.png','https://i.imgur.com/JykT3BH.png'),
(4, 2, 4, 7, '2019 gold/green/gold', 'https://i.imgur.com/GF3B5Mn.png','https://i.imgur.com/cQIaWkk.png'),
(5, 2, 4, 6, '2019 gold/green/green', 'https://i.imgur.com/CoFiEwZ.png','https://i.imgur.com/9b4mneg.png'),
(6, 2, 4, 5, '2019 gold/green/white', 'https://i.imgur.com/fAqDnlJ.png','https://i.imgur.com/1KX6nGm.png'),
(7, 2, 4, 8, '2019 gold/green/gray', 'https://i.imgur.com/yQz7z1P.png','https://i.imgur.com/lJOZorX.png'),
(8, 2, 5, 7, '2019 gold/white/gold', 'https://i.imgur.com/pcO9eD8.png','https://i.imgur.com/syd5fVW.png'),
(9, 2, 5, 5, '2019 gold/white/white', 'https://i.imgur.com/MsZOXNE.png','https://i.imgur.com/zS6mZyd.png'),
(10, 2, 5, 6, '2019 gold/white/green', 'https://i.imgur.com/WBcn2zX.png','https://i.imgur.com/xcjd0dL.png'),
(11, 2, 1, 7, '2019 gold/gold/gold', 'https://i.imgur.com/1BCgnCj.png','https://i.imgur.com/5SPCC77.png'),
(12, 2, 1, 6, '2019 gold/gold/green', 'https://i.imgur.com/gIJi927.png','https://i.imgur.com/pFaFz3d.png'),
(13, 2, 1, 9, '2019 gold/gold/black', 'https://i.imgur.com/UwEL6EQ.png','https://i.imgur.com/xbPJON6.png'),
(14, 2, 3, 9, '2019 gold/gray/black', 'https://i.imgur.com/5n9JtOH.png','https://i.imgur.com/4RVv3yJ.png'),
(15, 2, 3, 7, '2018 gold/gray/gold', 'https://i.imgur.com/l6RbZWK.png','https://i.imgur.com/AQbPFA5.png'),
(16, 2, 3, 6, '2017 gold/gray/green', 'https://i.imgur.com/aUXmZuD.png','https://i.imgur.com/taR2pTe.png'),
(17, 2, 3, 8, '2017 gold/gray/gray', 'https://i.imgur.com/dtsP2Sn.png','https://i.imgur.com/z2tuJ6t.png'),
(18, 2, 4, 7, '2015 gold/green/gold', 'https://i.imgur.com/GXcuZ5b.png','https://i.imgur.com/0ZwfSWu.png'),
(19, 2, 5, 7, '2015 gold/white/gold', 'https://i.imgur.com/oSeOdPQ.png','https://i.imgur.com/mZiW3hl.png'),
(20, 2, 6, 7, '2015 gold/gold/gold', 'https://i.imgur.com/oDVxacY.png','https://i.imgur.com/dzqjyty.png'),
(21, 2, 4, 6, '2014 gold/green/green', 'https://i.imgur.com/sswqlo9.png','https://i.imgur.com/1jEzmPi.png'),
(22, 2, 5, 6, '2014 gold/white/green', 'https://i.imgur.com/6IBRJ4T.png','https://i.imgur.com/vkx8OJL.png'),
(23, 2, 6, 6, '2014 gold/gold/green', 'https://i.imgur.com/ltL5NSY.png','https://i.imgur.com/6IzIO0P.png'),
(24, 2, 4, 4, '2013 gold/green/gold', 'https://i.imgur.com/YCESDII.png','https://i.imgur.com/Jke0u16.png'),
(25, 2, 4, 5, '2013 gold/green/white', 'https://i.imgur.com/fy0zgDW.png','https://i.imgur.com/Pqwptri.png'),
(26, 2, 6, 5, '2013 gold/gold/white', 'https://i.imgur.com/9KIGao8.png','https://i.imgur.com/6qipWwm.png'),
(27, 2, 6, 2, '2013 gold/gold/green', 'https://i.imgur.com/Bx4yOlo.png','https://i.imgur.com/vURK3sP.png'),
(28, 2, 5, 5, '2013 gold/white/white', 'https://i.imgur.com/RL776gP.png','https://i.imgur.com/UykAf4j.png'),
(29, 2, 7, 4, '2012 gold/green/gold', 'https://i.imgur.com/MVKBK7p.png','https://i.imgur.com/OAhmzzX.png'),
(30, 2, 7, 2, '2012 gold/green/green', 'https://i.imgur.com/c5kSiqD.png','https://i.imgur.com/gGIZSSo.png'),
(31, 2, 6, 4, '2012 gold/gold/gold', 'https://i.imgur.com/T4QWp53.png','https://i.imgur.com/dwpuWjy.png'),
(32, 2, 5, 4, '2012 gold/white/gold', 'https://i.imgur.com/3M8XOdW.png','https://i.imgur.com/sIKmCyv.png'),
(33, 2, 5, 2, '2012 gold/white/green', 'https://i.imgur.com/b5nDbay.png','https://i.imgur.com/Hs0iUrT.png'),
(34, 2, 5, 3, '2012 gold/white/white', 'https://i.imgur.com/S9UAYRn.png','https://i.imgur.com/l0vHzDa.png'),
(35, 3, 7, 4, '2011 gold/green/gold', 'https://i.imgur.com/l9kHCEr.png','https://i.imgur.com/kmfaPt1.png'),
(36, 3, 8, 3, '2011 gold/white/white', 'https://i.imgur.com/54uxjlF.png','https://i.imgur.com/YOivSFy.png'),
(37, 6, 12, 1, '1991 gold/green/gold', 'https://i.imgur.com/KPBLLWF.png','https://i.imgur.com/CIRnCWi.png'),
(38, 5, 12, 1, '1993 gold/green/gold', 'https://i.imgur.com/QzqIj2C.png','https://i.imgur.com/zZGm9hv.png'),
(39, 5, 13, 1, '1994 gold/white/gold', 'https://i.imgur.com/IcbV77W.png','https://i.imgur.com/pIrqQcv.png'),
(40, 5, 12, 1, '1995 gold/green/gold', 'https://i.imgur.com/ChmbPgk.png','https://i.imgur.com/eY0zWyx.png'),
(41, 5, 11, 1, '1998 gold/white/gold', 'https://i.imgur.com/bCps42r.png','https://i.imgur.com/bc7wqZ0.png'),
(42, 5, 10, 1, '2002 gold/gold/gold', 'https://i.imgur.com/NDLh5oH.png','https://i.imgur.com/R2NvY2z.png'),
(43, 4, 9, 2, '2007 gold/green/green', 'https://i.imgur.com/zNvLw9D.png','https://i.imgur.com/EGRTwGs.png');

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
