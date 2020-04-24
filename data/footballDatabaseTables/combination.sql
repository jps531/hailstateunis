-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 25, 2020 at 12:08 AM
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
-- Table structure for table `combination`
--

CREATE TABLE `combination` (
  `comboID` int(11) NOT NULL,
  `helmetID` int(11) NOT NULL,
  `jerseyID` int(11) NOT NULL,
  `pantsID` int(11) NOT NULL,
  `cName` varchar(100) DEFAULT NULL,
  `cImage` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `combination`
--

INSERT INTO `combination` (`comboID`, `helmetID`, `jerseyID`, `pantsID`, `cName`, `cImage`) VALUES
(0, 0, 0, 0, '2019 music city bowl all-white white/white/white', 'https://i.imgur.com/wqrm00g.png'),
(1, 1, 1, 1, '2019 egg bowl alternates monochrome maroon maroon/maroon/maroon', 'https://i.imgur.com/uzDK2Xp.png'),
(2, 2, 2, 2, '2019 tk martin alternates all-black mattemaroon/black/black', 'https://i.imgur.com/pc9o2VZ.png'),
(3, 0, 3, 3, '2018 white/white/gray', 'https://i.imgur.com/SGsJUBK.png'),
(4, 2, 4, 4, '2019 monochrome maroon mattemaroon/maroon/maroon', 'https://i.imgur.com/lBCsKm6.png'),
(5, 0, 3, 0, '2019 all-white white/white/white', 'https://i.imgur.com/RESRjTP.png'),
(6, 2, 3, 3, '2019 mattemaroon/white/gray', 'https://i.imgur.com/l6DAVyU.png'),
(7, 0, 4, 4, '2019 monochrome maroon white/maroon/maroon', 'https://i.imgur.com/nEDwyZW.png'),
(8, 2, 3, 4, '2019 mattemaroon/white/maroon', 'https://i.imgur.com/hfAiYIL.png'),
(9, 0, 4, 0, '2019 white/maroon/white', 'https://i.imgur.com/xta3mEY.png'),
(10, 3, 4, 3, '2019 mattemaroon/maroon/gray', 'https://i.imgur.com/ZuOPboK.png'),
(11, 3, 5, 0, '2019 outback bowl mattemaroon/white/white', 'https://i.imgur.com/1jj4KYZ.png'),
(12, 4, 6, 5, '2018 statesman alternates silver/gray/gray', 'https://i.imgur.com/jISabX7.png'),
(13, 0, 3, 0, '2018 all-white white/white/white', 'https://i.imgur.com/KJb12Ru.png'),
(14, 3, 4, 0, '2018 mattemaroon/maroon/white', 'https://i.imgur.com/BagUkx4.png'),
(15, 5, 4, 0, '2018 maroon/maroon/white', 'https://i.imgur.com/CXTjY4c.png'),
(16, 3, 4, 4, '2018 monochrome maroon mattemaroon/maroon/maroon', 'https://i.imgur.com/8V1wT8p.png'),
(17, 3, 4, 3, '2018 mattemaroon/maroon/gray', 'https://i.imgur.com/VCm5yRs.png'),
(18, 0, 4, 0, '2018 white/maroon/white', 'https://i.imgur.com/c0OiVZI.png'),
(19, 3, 3, 3, '2018 mattemaroon/white/gray', 'https://i.imgur.com/ROyKY3b.png'),
(20, 7, 4, 7, '2017 maroon/maroon/white', 'https://i.imgur.com/udkmwz1.png'),
(21, 7, 7, 7, '2017 taxslayer bowl maroon/maroon/white', 'https://i.imgur.com/ZhdNI9S.png'),
(22, 7, 4, 6, '2017 maroon/maroon/gray', 'https://i.imgur.com/PZnPtIU.png'),
(23, 7, 3, 7, '2017 maroon/white/white', 'https://i.imgur.com/6rj0psp.png'),
(24, 7, 3, 8, '2017 maroon/white/maroon', 'https://i.imgur.com/Px6qJC7.png'),
(25, 0, 3, 7, '2017 all-white white/white/white', 'https://i.imgur.com/8ys7Yoe.png'),
(26, 6, 14, 12, '2017 alternates silver/black/black', 'https://i.imgur.com/5qpdn1n.png'),
(27, 6, 13, 11, '2017 veterans day monochrome maroon alternates silver/maroon/maroon', 'https://i.imgur.com/S4txFp3.png'),
(28, 7, 8, 7, '2016 maroon/maroon/white', 'https://i.imgur.com/dg9OrhL.png'),
(29, 7, 8, 8, '2016 monochrome maroon maroon/maroon/maroon', 'https://i.imgur.com/ZbIrOuK.png'),
(30, 7, 10, 8, '2016 st. petersburg bowl monochrome maroon maroon/maroon/maroon', 'https://i.imgur.com/FrYPLQe.png'),
(31, 7, 8, 6, '2016 maroon/maroon/gray', 'https://i.imgur.com/SGYP1SR.png'),
(32, 6, 8, 6, '2016 silver/maroon/gray', 'https://i.imgur.com/0Axtuei.png'),
(33, 6, 15, 10, '2016 alternates silver/black/black', 'https://i.imgur.com/yaGLdyA.png'),
(34, 6, 16, 9, '2016 patriots alternates silver/white/maroon', 'https://i.imgur.com/3Kuz1jB.png'),
(35, 0, 3, 7, '2016 all-white white/white/white', 'https://i.imgur.com/NeZuFUR.png'),
(36, 7, 3, 8, '2016 maroon/white/maroon', 'https://i.imgur.com/RMtfeSg.png'),
(37, 7, 3, 7, '2016 maroon/white/white', 'https://i.imgur.com/3dCceTQ.png'),
(38, 6, 3, 7, '2016 silver/white/white', 'https://i.imgur.com/aRKJuVg.png'),
(39, 7, 8, 6, '2015 maroon/maroon/gray', 'https://i.imgur.com/Y3Yuqbl.png'),
(40, 0, 8, 14, '2015 white/maroon/white', 'https://i.imgur.com/BpeDmr8.png'),
(41, 9, 8, 14, '2015 maroon/maroon/white', 'https://i.imgur.com/ULyMuCk.png'),
(42, 7, 8, 13, '2015 monochrome maroon maroon/maroon/maroon', 'https://i.imgur.com/RVyZV2V.png'),
(43, 8, 14, 12, '2015 alternates mattemaroon/black/black', 'https://i.imgur.com/Vys7vRy.png'),
(44, 0, 11, 14, '2015 all-white white/white/white', 'https://i.imgur.com/1TgsBg6.png'),
(45, 8, 11, 6, '2015 mattemaroon/white/gray', 'https://i.imgur.com/fYpO7OW.png'),
(46, 8, 11, 14, '2015 mattemaroon/white/white', 'https://i.imgur.com/E4z05DF.png'),
(47, 9, 11, 14, '2015 maroon/white/white', 'https://i.imgur.com/NUm8k0p.png'),
(48, 8, 11, 13, '2015 mattemaroon/white/maroon', 'https://i.imgur.com/w3HKQ7C.png'),
(49, 7, 9, 6, '2015 belk bowl maroon/maroon/gray', 'https://i.imgur.com/ukmK1pr.png'),
(50, 15, 17, 15, '2014 dws 100 maroon/maroon/white', 'https://i.imgur.com/9f0d8c2.png'),
(51, 14, 12, 15, '2014 orange bowl mattemaroon/white/white', 'https://i.imgur.com/1pjjicr.png'),
(52, 16, 21, 19, '2014 mattemaroon/white/white', 'https://i.imgur.com/HZC2RXj.png'),
(53, 17, 22, 19, '2014 maroon/maroon/white', 'https://i.imgur.com/7WG8dyU.png'),
(54, 15, 22, 18, '2014 monochrome maroon maroon/maroon/maroon', 'https://i.imgur.com/VAUYJ7E.png'),
(55, 10, 23, 15, '2014 egg bowl alternates maroon/white/white', 'https://i.imgur.com/JZUqfrt.png'),
(56, 17, 22, 19, '2013 maroon/maroon/white', 'https://i.imgur.com/RPBketq.png'),
(57, 21, 22, 19, '2013 bulldog mattemaroon/maroon/white', 'https://i.imgur.com/Pd0bNjD.png'),
(58, 17, 22, 18, '2013 monochrome maroon maroon/maroon/maroon', 'https://i.imgur.com/D9bwz1W.png'),
(59, 17, 18, 18, '2013 liberty bowl monochrome maroon maroon/maroon/maroon', 'https://i.imgur.com/gIlCf5T.png'),
(60, 16, 21, 19, '2013 mattemaroon/white/white', 'https://i.imgur.com/L1xvBHx.png'),
(61, 17, 21, 19, '2013 maroon/white/white', 'https://i.imgur.com/PND1QAk.png'),
(62, 17, 21, 18, '2013 maroon/white/maroon', 'https://i.imgur.com/giw0Ay3.png'),
(63, 11, 24, 22, '2013 egg bowl alternates monochrome maroon gold/maroon/maroon', 'https://i.imgur.com/GyvLyJ2.png'),
(64, 17, 22, 19, '2012 nick bell maroon/maroon/white', 'https://i.imgur.com/YAopQsw.png'),
(65, 17, 22, 18, '2012 nick bell monochrome maroon maroon/maroon/maroon', 'https://i.imgur.com/9zlBfY0.png'),
(66, 17, 22, 21, '2012 nick bell maroon/maroon/gray', 'https://i.imgur.com/aUS9wuB.png'),
(67, 17, 21, 18, '2012 nick bell maroon/white/maroon', 'https://i.imgur.com/FCLcR54.png'),
(68, 16, 21, 19, '2012 nick bell mattemaroon/white/white', 'https://i.imgur.com/MQSYtl9.png'),
(69, 16, 21, 18, '2012 nick bell mattemaroon/white/maroon', 'https://i.imgur.com/FyRwczJ.png'),
(70, 22, 20, 20, '2012 nick bell all-white snow bowl alternates white/white/white', 'https://i.imgur.com/43C78dY.png'),
(71, 12, 25, 16, '2012 nick bell egg bowl alternates mattemaroon/white/white', 'https://i.imgur.com/aDuqVrq.png'),
(72, 14, 19, 21, '2013 nick bell gator bowl alternates mattemaroon/white/gray', 'https://i.imgur.com/6zCtvcc.png'),
(73, 14, 28, 25, '2011 nick bell music city bowl mattemaroon/white/white', 'https://i.imgur.com/ju2XIyi.png'),
(74, 13, 26, 17, '2011 nick bell egg bowl alternates monochrome maroon maroon/maroon/maroon', 'https://i.imgur.com/6FVDfq5.png'),
(75, 19, 29, 24, '2011 nick bell alternates maroon/black/maroon', 'https://i.imgur.com/3XgF9IO.png'),
(76, 19, 30, 24, '2011 nick bell maroon/white/maroon', 'https://i.imgur.com/rvttsWW.png'),
(77, 18, 30, 25, '2011 nick bell mattemaroon/white/white', 'https://i.imgur.com/m2Mr6ZQ.png'),
(78, 18, 31, 25, '2011 nick bell mattemaroon/maroon/white', 'https://i.imgur.com/qZ6M23Y.png'),
(79, 19, 31, 25, '2011 nick bell maroon/maroon/white', 'https://i.imgur.com/XIlu4UM.png'),
(80, 20, 27, 25, '2011 nick bell gator bowl maroon/white/white', 'https://i.imgur.com/EhUghBz.png'),
(81, 20, 30, 25, '2010 nick bell maroon/white/white', 'https://i.imgur.com/EZO2GkX.png'),
(82, 20, 30, 24, '2010 nick bell maroon/white/maroon', 'https://i.imgur.com/1pMPM6t.png'),
(83, 20, 30, 24, '2010 maroon/white/maroon', 'https://i.imgur.com/CuaWB3u.png'),
(84, 20, 31, 25, '2010 nick bell maroon/maroon/white', 'https://i.imgur.com/ybbRbIx.png'),
(85, 20, 31, 25, '2010 maroon/maroon/white', 'https://i.imgur.com/y3YocGs.png'),
(86, 20, 29, 23, '2010 alternates maroon/black/black', 'https://i.imgur.com/ai8trmM.png'),
(87, 20, 29, 25, '2009 alternates maroon/black/white', 'https://i.imgur.com/BHRhIBl.png'),
(88, 20, 30, 24, '2009 maroon/white/maroon', 'https://i.imgur.com/Q2thFEw.png'),
(89, 20, 30, 25, '2009 maroon/white/white', 'https://i.imgur.com/GUlD6fx.png'),
(90, 20, 31, 24, '2009 monochrome maroon maroon/maroon/maroon', 'https://i.imgur.com/EXKpSqY.png'),
(91, 20, 31, 25, '2009 maroon/maroon/white', 'https://i.imgur.com/VUdUYJu.png'),
(92, 24, 33, 27, '2008 all-white white/white/white', 'https://i.imgur.com/PqF10TV.png'),
(93, 23, 34, 26, '2008 bca monochrome maroon white/maroon/maroon', 'https://i.imgur.com/WB1rKpb.png'),
(94, 24, 34, 26, '2006 monochrome maroon white/maroon/maroon', 'https://i.imgur.com/07Wxq6D.png'),
(95, 24, 34, 27, '2006 white/maroon/white', 'https://i.imgur.com/4YQASTg.png'),
(96, 24, 33, 26, '2006 white/white/maroon', 'https://i.imgur.com/6vQBqHn.png'),
(97, 24, 32, 26, '2007 liberty bowl monochrome maroon white/maroon/maroon', 'https://i.imgur.com/0Ognch9.png'),
(98, 24, 33, 27, '2007 all-white white/white/white', 'https://i.imgur.com/MxQ6XXt.png'),
(99, 24, 33, 26, '2007 white/white/maroon', 'https://i.imgur.com/jUMyExl.png'),
(100, 24, 34, 26, '2007 monochrome maroon white/maroon/maroon', 'https://i.imgur.com/QgKUhcx.png'),
(101, 24, 34, 27, '2007 white/maroon/white', 'https://i.imgur.com/3R0Gat4.png'),
(102, 24, 33, 27, '2004 all-white white/white/white', 'https://i.imgur.com/38M9e0a.png'),
(103, 24, 34, 27, '2004 white/maroon/white', 'https://i.imgur.com/EBKKsBg.png'),
(104, 25, 39, 29, '2003 number white/maroon/white', 'https://i.imgur.com/9bjX8Nk.png'),
(105, 27, 39, 29, '2002 maroon/maroon/white', 'https://i.imgur.com/gdPV9KK.png'),
(106, 27, 39, 28, '2002 monochrome maroon maroon/maroon/maroon', 'https://i.imgur.com/KJsaxyd.png'),
(107, 27, 38, 28, '2002 maroon/white/maroon', 'https://i.imgur.com/k3aKHxy.png'),
(108, 27, 38, 29, '2003 maroon/white/white', 'https://i.imgur.com/NwfBEAQ.png'),
(109, 26, 38, 29, '2002 all-white white/white/white', 'https://i.imgur.com/H3z84cQ.png'),
(110, 26, 39, 29, '2001 white/maroon/white', 'https://i.imgur.com/07fyToU.png'),
(111, 26, 38, 29, '2001 all-white white/white/white', 'https://i.imgur.com/ZE2NXCU.png'),
(112, 27, 38, 28, '1998 maroon/white/maroon', 'https://i.imgur.com/VPKGhEQ.png'),
(113, 27, 39, 29, '1998 maroon/maroon/white', 'https://i.imgur.com/PV5bf2z.png'),
(114, 27, 38, 29, '1998 maroon/white/white', 'https://i.imgur.com/rQwqMZD.png'),
(115, 27, 37, 29, '1999 cotton bowl maroon/white/white', 'https://i.imgur.com/PW9ojNz.png'),
(116, 27, 36, 29, '1999 peach bowl maroon/maroon/white', 'https://i.imgur.com/g3TOXNN.png'),
(117, 26, 35, 29, '2000 snow bowl independence bowl white/white/white', 'https://i.imgur.com/InrZJAW.png'),
(118, 27, 39, 29, '1997 maroon/maroon/white', 'https://i.imgur.com/ciPdDSK.png'),
(119, 27, 38, 29, '1997 maroon/white/white', 'https://i.imgur.com/9MzsGJ3.png'),
(120, 27, 38, 28, '1997 maroon/white/maroon', 'https://i.imgur.com/iTFlNaw.png'),
(121, 27, 38, 30, '1996 maroon/white/maroon', 'https://i.imgur.com/Rsjjels.png'),
(122, 27, 38, 31, '1996 maroon/white/white', 'https://i.imgur.com/7CkVTpd.png'),
(123, 27, 39, 31, '1996 maroon/maroon/white', 'https://i.imgur.com/e6QN8U1.png'),
(124, 28, 40, 30, '1995 maroon/white/maroon', 'https://i.imgur.com/SR4dK9u.png'),
(125, 28, 40, 31, '1995 maroon/white/white', 'https://i.imgur.com/VfmRRgK.png'),
(126, 28, 41, 30, '1995 monochrome maroon maroon/maroon/maroon', 'https://i.imgur.com/S0zjFKz.png'),
(127, 28, 41, 31, '1995 maroon/maroon/white', 'https://i.imgur.com/8lIrgSQ.png'),
(128, 28, 42, 30, '1995 peach bowl maroon/white/maroon', 'https://i.imgur.com/McbbtdS.png'),
(129, 28, 44, 30, '1994 maroon/white/maroon', 'https://i.imgur.com/WbkV7ie.png'),
(130, 28, 44, 31, '1994 maroon/white/white', 'https://i.imgur.com/KzyNgva.png'),
(131, 28, 45, 31, '1994 maroon/maroon/white', 'https://i.imgur.com/hHBpX1P.png'),
(132, 28, 44, 31, '1993 maroon/white/white', 'https://i.imgur.com/qU2Wufs.png'),
(133, 28, 44, 30, '1993 maroon/white/maroon', 'https://i.imgur.com/ZfzIJaB.png'),
(134, 28, 45, 31, '1993 maroon/maroon/white', 'https://i.imgur.com/CxrB3lE.png'),
(135, 28, 42, 30, '1993 peach bowl maroon/white/maroon', 'https://i.imgur.com/RYTgQD8.png'),
(136, 28, 44, 31, '1992 maroon/white/white', 'https://i.imgur.com/K2i1K3l.png'),
(137, 28, 45, 31, '1992 maroon/maroon/white', 'https://i.imgur.com/NYUapWr.png'),
(138, 28, 44, 31, '1991 maroon/white/white', 'https://i.imgur.com/WHy8Mym.png'),
(139, 28, 45, 31, '1991 maroon/maroon/white', 'https://i.imgur.com/L9CkUc1.png'),
(140, 28, 43, 31, '1991 liberty bowl maroon/maroon/white', 'https://i.imgur.com/WgVsOwv.png'),
(141, 28, 46, 32, '1990 maroon/white/white', 'https://i.imgur.com/AJIlt07.png'),
(142, 28, 47, 32, '1990 maroon/maroon/white', 'https://i.imgur.com/8EtdPCa.png'),
(143, 28, 48, 32, '1989 maroon/white/white', 'https://i.imgur.com/AJIlt07.png'),
(144, 28, 49, 32, '1989 maroon/maroon/white', 'https://i.imgur.com/8EtdPCa.png'),
(145, 29, 50, 34, '1987 maroon/white/white', 'https://i.imgur.com/G1LKa1F.png'),
(146, 29, 50, 33, '1987 maroon/white/silver', 'https://i.imgur.com/w1N1V8N.png'),
(147, 29, 51, 34, '1987 maroon/maroon/white', 'https://i.imgur.com/UR5yjgT.png'),
(148, 29, 51, 33, '1987 maroon/maroon/silver', 'https://i.imgur.com/jBslazt.png'),
(149, 29, 50, 33, '1986 maroon/white/silver', 'https://i.imgur.com/U6X6SLZ.png'),
(150, 29, 51, 33, '1986 maroon/maroon/silver', 'https://i.imgur.com/K6LrGWh.png'),
(151, 30, 53, 17, '1985 monochrome maroon maroon/maroon/maroon', 'https://i.imgur.com/E97VeHk.png'),
(152, 30, 52, 17, '1984 maroon/white/maroon', 'https://i.imgur.com/R1n9vvG.png'),
(153, 30, 53, 16, '1984 maroon/maroon/white', 'https://i.imgur.com/HlEsa2z.png'),
(154, 30, 54, 34, '1983 maroon/white/white', 'https://i.imgur.com/1jGdYBH.png'),
(155, 30, 55, 34, '1983 maroon/maroon/white', 'https://i.imgur.com/5dBaxDm.png'),
(156, 30, 56, 34, '1982 maroon/white/white', 'https://i.imgur.com/1jGdYBH.png'),
(157, 30, 57, 34, '1982 maroon/maroon/white', 'https://i.imgur.com/5dBaxDm.png'),
(158, 30, 58, 34, '1981 maroon/white/white', 'https://i.imgur.com/1jGdYBH.png'),
(159, 30, 59, 34, '1981 maroon/maroon/white', 'https://i.imgur.com/5dBaxDm.png'),
(160, 30, 60, 34, '1981 hall of fame bowl maroon/maroon/white', 'https://i.imgur.com/5fl2u4P.png'),
(161, 30, 61, 34, '1980 maroon/white/white', 'https://i.imgur.com/1jGdYBH.png'),
(162, 30, 62, 34, '1980 maroon/maroon/white', 'https://i.imgur.com/5dBaxDm.png'),
(163, 31, 63, 34, '1974 sun bowl maroon/maroon/white', 'https://i.imgur.com/z77DU4C.png'),
(164, 32, 64, 34, '1963 liberty bowl maroon/maroon/white', 'https://i.imgur.com/qeYbLDs.png'),
(165, 33, 65, 35, '1941 orange bowl monochrome maroon maroon/maroon/maroon', 'https://i.imgur.com/uiNDsJ7.png'),
(166, 34, 66, 17, '1937 orange bowl monochrome maroon unknown/maroon/maroon', 'https://i.imgur.com/axxUvW2.png');

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
