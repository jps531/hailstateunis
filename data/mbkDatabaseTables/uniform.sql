-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 29, 2020 at 04:42 AM
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
(1, 'white', '2020 white uniforms perry', 'https://i.imgur.com/VJlmiXu.png'),
(2, 'maroon', '2020 maroon uniforms carter', 'https://i.imgur.com/NE3Bj1B.png'),
(3, 'black', '2020 black uniforms woodard', 'https://i.imgur.com/ow5lT04.png'),
(4, 'gray', '2020 gray uniforms n weatherspoon', 'https://i.imgur.com/XbB69Zw.png'),
(5, 'gray', '2020 gray uniforms molinar', 'https://i.imgur.com/uk3YgEC.png'),
(6, 'cream', '2020 cream uniforms ado', 'https://i.imgur.com/KarpxuU.png'),
(7, 'white', '2019 ncaa white uniforms q weatherspoon', 'https://i.imgur.com/UsIc8Id.png'),
(8, 'white', '2019 white uniforms q weatherspoon', 'https://i.imgur.com/w98YTR2.png'),
(9, 'maroon', '2019 maroon uniforms peters', 'https://i.imgur.com/fRnhOQJ.png'),
(10, 'gray', '2018 gray uniforms holman', 'https://i.imgur.com/w69Z6TP.png'),
(11, 'black', '2019 black uniforms ado', 'https://i.imgur.com/ejaopq0.png'),
(12, 'cream', '2019 harlem cream uniforms perry', 'https://i.imgur.com/ps2sE5j.png'),
(13, 'cream', '2019 cream uniforms carter', 'https://i.imgur.com/rLyripX.png'),
(14, 'white', '2018 script white uniforms stapleton', 'https://i.imgur.com/pFF1I0W.png'),
(15, 'cream', '2017 iced out cream uniforms carter', 'https://i.imgur.com/GWOTDKm.png'),
(16, 'cream', '2018 cream uniforms n weatherspoon', 'https://i.imgur.com/ykViwob.png'),
(17, 'white', '2018 white uniforms q weatherspoon', 'https://i.imgur.com/UuS6pZc.png'),
(18, 'maroon', '2017 maroon uniforms peters', 'https://i.imgur.com/xHcjeFG.png'),
(19, 'black', '2018 black uniforms ado', 'https://i.imgur.com/mLOhOS8.png'),
(20, 'maroon', '2017 made in march maroon uniforms holman', 'https://i.imgur.com/1D729eD.png'),
(21, 'white', '2017 made in march white uniforms stapleton', 'https://i.imgur.com/fl5AJup.png'),
(22, 'cream', '2016 cream uniforms ready', 'https://i.imgur.com/AcOPO5w.png'),
(23, 'white', '2017 white uniforms q weatherspoon', 'https://i.imgur.com/jtWdAGr.png'),
(24, 'black', '2017 black uniforms kegler', 'https://i.imgur.com/oPNM9VF.png'),
(25, 'maroon', '2016 made in march maroon uniforms q weatherspoon', 'https://i.imgur.com/ayUCFdZ.png'),
(26, 'black', '2016 black uniforms newman', 'https://i.imgur.com/KOnC3DW.png'),
(27, 'cream', '2015 cream uniforms johnson', 'https://i.imgur.com/ZCx9Bds.png'),
(28, 'black', '2015 black uniforms thomas', 'https://i.imgur.com/nt1Qkm4.png'),
(29, 'maroon', '2015 maroon uniforms ware', 'https://i.imgur.com/97gQvN2.png'),
(30, 'white', '2015 white uniforms sword', 'https://i.imgur.com/Ws5iZSP.png'),
(31, 'gray', '2014 gray uniforms johnson', 'https://i.imgur.com/Mt2t3CE.png'),
(32, 'gray', '2013 gray uniforms steele', 'https://i.imgur.com/slMJ5b4.png'),
(33, 'black', '2013 black uniforms thomas', 'https://i.imgur.com/Hmn00HJ.png'),
(34, 'maroon', '2013 maroon uniforms ware', 'https://i.imgur.com/ioGusfo.png'),
(35, 'white', '2013 white uniforms sword', 'https://i.imgur.com/7PcQbMY.png'),
(36, 'black', '2012 black uniforms sidney', 'https://i.imgur.com/cLUbFcT.png'),
(37, 'gray', '2012 gray uniforms hood', 'https://i.imgur.com/ja02ZAL.png'),
(38, 'maroon', '2012 maroon uniforms moultrie', 'https://i.imgur.com/YVipwqi.png'),
(39, 'white', '2012 white uniforms bost', 'https://i.imgur.com/I3tsDJQ.png'),
(40, 'black', '2011 black uniforms augustus', 'https://i.imgur.com/2B5gKzw.png'),
(41, 'maroon', '2011 maroon uniforms johnson', 'https://i.imgur.com/98BeFkz.png'),
(42, 'white', '2011 white uniforms bost', 'https://i.imgur.com/Vvdssiy.png'),
(43, 'black', '2010 black uniforms johnson', 'https://i.imgur.com/Iu0gsyg.png'),
(44, 'maroon', '2010 maroon uniforms bost', 'https://i.imgur.com/RK8aWBB.png'),
(45, 'white', '2010 white uniforms varnado', 'https://i.imgur.com/sleeamq.png'),
(46, 'maroon', '2009 ncaa maroon uniforms stewart', 'https://i.imgur.com/MUfEBNJ.png'),
(47, 'maroon', '2009 maroon uniforms stewart', 'https://i.imgur.com/5HFjuCW.png'),
(48, 'white', '2009 white uniforms varnado', 'blob:https://imgur.com/21501e8d-1244-487b-aa43-7cf8ea3df41a'),
(49, 'maroon', '2008 ncaa maroon uniforms gordon', 'https://i.imgur.com/WrVn5Kk.png'),
(50, 'maroon', '2008 maroon uniforms gordon', 'https://i.imgur.com/7VXLYIU.png'),
(51, 'white', '2008 ncaa white uniforms rhodes', 'https://i.imgur.com/7VoDc0Z.png'),
(52, 'white', '2008 white uniforms rhodes', 'https://i.imgur.com/o4IgtWt.png'),
(53, 'white', '2006 throwback white uniforms', 'https://i.imgur.com/IpiDKdh.png'),
(54, 'maroon', '2006 maroon uniforms gordon', 'https://i.imgur.com/iL2IAZ7.png'),
(55, 'white', '2006 white uniforms rhodes', 'https://i.imgur.com/zjK2bFc.png'),
(56, 'maroon', '2007 maroon uniforms gordon', 'https://i.imgur.com/zKQ0tBB.png'),
(57, 'white', '2007 white uniforms rhodes', 'https://i.imgur.com/OadXsX0.png'),
(58, 'maroon', '2003 maroon uniforms bowers', 'https://i.imgur.com/YGc3rKo.png'),
(59, 'white', '2003 white uniforms austin', 'https://i.imgur.com/kx3rn59.png'),
(60, 'maroon', '2004 maroon uniforms bowers', 'https://i.imgur.com/2Hg651K.png'),
(61, 'white', '2004 white uniforms roberts', 'https://i.imgur.com/uON0KBu.png'),
(62, 'maroon', '2005 maroon uniforms power', 'https://i.imgur.com/EHluobp.png'),
(63, 'white', '2005 white uniforms roberts', 'https://i.imgur.com/NJnYaYJ.png'),
(64, 'maroon', '2000 maroon uniforms hamilton', 'https://i.imgur.com/79O72Gc.png'),
(65, 'white', '2000 white uniforms jackson', 'https://i.imgur.com/TUIuhJC.png'),
(66, 'maroon', '2001 maroon uniforms patterson', 'https://i.imgur.com/MoXduem.png'),
(67, 'white', '2001 white uniforms jackson', 'https://i.imgur.com/lBAjGyO.png'),
(68, 'maroon', '2002 maroon uniforms patterson', 'https://i.imgur.com/gZOtHvY.png'),
(69, 'white', '2002 white uniforms austin', 'https://i.imgur.com/Yie3Cj5.png'),
(70, 'maroon', '1997 maroon uniforms webster', 'https://i.imgur.com/1uu83xs.png'),
(71, 'white', '1997 white uniforms hyche', 'https://i.imgur.com/qPJxzBI.png'),
(72, 'maroon', '1998 maroon uniforms webster', 'https://i.imgur.com/E42DCDC.png'),
(73, 'white', '1998 white uniforms washington', 'https://i.imgur.com/bA4s4nL.png'),
(74, 'maroon', '1999 maroon uniforms hamilton', 'https://i.imgur.com/Y0Hxu5a.png'),
(75, 'white', '1999 white uniforms washington', 'https://i.imgur.com/vW8sWoc.png'),
(76, 'maroon', '1994 maroon uniforms dampier', 'https://i.imgur.com/9MZ24KH.png'),
(77, 'maroon', '1995 maroon uniforms dampier', 'https://i.imgur.com/oZAfb0D.png'),
(78, 'white', '1995 maroon uniforms wilson', 'https://i.imgur.com/ewZzfuy.png'),
(79, 'maroon', '1996 maroon uniforms jones', 'https://i.imgur.com/rdh3yhu.png'),
(80, 'white', '1996 white uniforms wilson', 'https://i.imgur.com/bOpLdFa.png'),
(81, 'maroon', '1963 maroon uniforms', 'https://i.imgur.com/DemEJhK.png'),
(82, 'white', '1979 white uniforms', 'https://i.imgur.com/7zfkmOk.png'),
(83, 'maroon', '1990 maroon uniforms', 'https://i.imgur.com/9Kk5KuW.png'),
(84, 'white', '1990 white uniforms', 'https://i.imgur.com/agAK6Eb.png'),
(85, 'white', '1991 white uniforms', 'https://i.imgur.com/zATgPXX.png');

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
  MODIFY `uniformID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
