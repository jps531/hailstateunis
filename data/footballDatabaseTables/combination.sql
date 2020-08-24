-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 24, 2020 at 12:40 AM
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
  `cImage` varchar(100) DEFAULT NULL,
  `cThumb` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `combination`
--

INSERT INTO `combination` (`comboID`, `helmetID`, `jerseyID`, `pantsID`, `cName`, `cImage`, `cThumb`) VALUES
(1, 1, 1, 1, '2019 egg bowl alternates monochrome maroon maroon/maroon/maroon', 'https://i.imgur.com/Hrs4nHM.png', 'https://i.imgur.com/On5dCEC.png'),
(2, 2, 2, 2, '2019 tk martin alternates all-black mattemaroon/black/black', 'https://i.imgur.com/FSi96zB.png', 'https://i.imgur.com/wXqa3Qr.png'),
(3, 35, 3, 3, '2018 white/white/gray', 'https://i.imgur.com/86g6h1Z.png', 'https://i.imgur.com/r3KqmRq.png'),
(4, 2, 4, 4, '2019 monochrome maroon mattemaroon/maroon/maroon', 'https://i.imgur.com/cs5g8zb.png', 'https://i.imgur.com/sbTbWKF.png'),
(5, 35, 3, 0, '2019 all-white white/white/white', 'https://i.imgur.com/GTGIxBs.png', 'https://i.imgur.com/7D7Gl8g.png'),
(6, 2, 3, 3, '2019 mattemaroon/white/gray', 'https://i.imgur.com/xLdGRcT.png', 'https://i.imgur.com/gm8gEei.png'),
(7, 35, 4, 4, '2019 monochrome maroon white/maroon/maroon', 'https://i.imgur.com/VTYKy41.png', 'https://i.imgur.com/U9SH7h5.png'),
(8, 2, 3, 4, '2019 mattemaroon/white/maroon', 'https://i.imgur.com/nUiyT8Z.png', 'https://i.imgur.com/KTjrnTc.png'),
(9, 35, 4, 0, '2019 white/maroon/white', 'https://i.imgur.com/Z2ax6OT.png', 'https://i.imgur.com/M5yaW4x.png'),
(10, 3, 4, 3, '2019 mattemaroon/maroon/gray', 'https://i.imgur.com/MHHELMZ.png', 'https://i.imgur.com/jTHhOwY.png'),
(11, 3, 5, 0, '2019 outback bowl mattemaroon/white/white', 'https://i.imgur.com/8Hep97T.png', 'https://i.imgur.com/QFxI3dy.png'),
(12, 4, 6, 5, '2018 statesman alternates silver/gray/gray', 'https://i.imgur.com/LHJz6MH.png', 'https://i.imgur.com/WqYtUd6.png'),
(13, 35, 3, 0, '2018 all-white white/white/white', 'https://i.imgur.com/bYksAu2.png', 'https://i.imgur.com/JwlyWJp.png'),
(14, 3, 4, 0, '2018 mattemaroon/maroon/white', 'https://i.imgur.com/GJu0dAY.png', 'https://i.imgur.com/OdOfqQu.png'),
(15, 5, 4, 0, '2018 maroon/maroon/white', 'https://i.imgur.com/7uyeB97.png', 'https://i.imgur.com/QgyuCsD.png'),
(16, 3, 4, 4, '2018 monochrome maroon mattemaroon/maroon/maroon', 'https://i.imgur.com/y20ODyE.png', 'https://i.imgur.com/jxoZlp1.png'),
(17, 3, 4, 3, '2018 mattemaroon/maroon/gray', 'https://i.imgur.com/YUdOP9Z.png', 'https://i.imgur.com/Y6PGeeR.png'),
(18, 35, 4, 0, '2018 white/maroon/white', 'https://i.imgur.com/7PXdOZo.png', 'https://i.imgur.com/SJwgRvC.png'),
(19, 3, 3, 3, '2018 mattemaroon/white/gray', 'https://i.imgur.com/JzjFgjJ.png', 'https://i.imgur.com/GHAAZ7I.png'),
(20, 7, 4, 7, '2017 maroon/maroon/white', 'https://i.imgur.com/pxGrGOQ.png', 'https://i.imgur.com/0uNcH8H.png'),
(21, 7, 7, 7, '2017 taxslayer bowl maroon/maroon/white', 'https://i.imgur.com/gO8CfoQ.png', 'https://i.imgur.com/yRtfBnq.png'),
(22, 7, 4, 6, '2017 maroon/maroon/gray', 'https://i.imgur.com/XajQk76.png', 'https://i.imgur.com/UI25JTJ.png'),
(23, 7, 3, 7, '2017 maroon/white/white', 'https://i.imgur.com/pEzYnCJ.png', 'https://i.imgur.com/enNdDF4.png'),
(24, 7, 3, 8, '2017 maroon/white/maroon', 'https://i.imgur.com/mvWIvJZ.png', 'https://i.imgur.com/f3bH4pu.png'),
(25, 35, 3, 7, '2017 all-white white/white/white', 'https://i.imgur.com/pbncRt2.png', 'https://i.imgur.com/FyTLVbv.png'),
(26, 6, 14, 12, '2017 alternates silver/black/black', 'https://i.imgur.com/c9Qvl4Q.png', 'https://i.imgur.com/fsKipKe.png'),
(27, 6, 13, 11, '2017 veterans day monochrome maroon alternates silver/maroon/maroon', 'https://i.imgur.com/DIlZXCe.png', 'https://i.imgur.com/qQFUEIe.png'),
(28, 7, 8, 7, '2016 maroon/maroon/white', 'https://i.imgur.com/EFTGBFE.png', 'https://i.imgur.com/rUAixxh.png'),
(29, 7, 8, 8, '2016 monochrome maroon maroon/maroon/maroon', 'https://i.imgur.com/n5iXgCN.png', 'https://i.imgur.com/wRS9hLX.png'),
(30, 7, 10, 8, '2016 st. petersburg bowl monochrome maroon maroon/maroon/maroon', 'https://i.imgur.com/BQ3dBQ4.png', 'https://i.imgur.com/m6RyQRp.png'),
(31, 7, 8, 6, '2016 maroon/maroon/gray', 'https://i.imgur.com/Z03wXHB.png', 'https://i.imgur.com/DCfRuEj.png'),
(32, 6, 8, 6, '2016 silver/maroon/gray', 'https://i.imgur.com/haoutdA.png', 'https://i.imgur.com/o8Ky5OT.png'),
(33, 6, 15, 10, '2016 alternates silver/black/black', 'https://i.imgur.com/WfO1Dkt.png', 'https://i.imgur.com/kUz5Djx.png'),
(34, 6, 16, 9, '2016 patriots alternates silver/white/maroon', 'https://i.imgur.com/mynuonf.png', 'https://i.imgur.com/b4LFoLA.png'),
(35, 35, 3, 7, '2016 all-white white/white/white', 'https://i.imgur.com/HihBqKi.png', 'https://i.imgur.com/Ej7lArR.png'),
(36, 7, 3, 8, '2016 maroon/white/maroon', 'https://i.imgur.com/nhS5cCY.png', 'https://i.imgur.com/aJGF09v.png'),
(37, 7, 3, 7, '2016 maroon/white/white', 'https://i.imgur.com/Gm1Lhg1.png', 'https://i.imgur.com/TQRrkDP.png'),
(38, 6, 3, 7, '2016 silver/white/white', 'https://i.imgur.com/xY1E5Dq.png', 'https://i.imgur.com/vXwtiCA.png'),
(39, 7, 8, 6, '2015 maroon/maroon/gray', 'https://i.imgur.com/YLCB8ot.png', 'https://i.imgur.com/KJ1bbwX.png'),
(40, 35, 8, 14, '2015 white/maroon/white', 'https://i.imgur.com/agQIZ38.png', 'https://i.imgur.com/yL6tfQU.png'),
(41, 9, 8, 14, '2015 maroon/maroon/white', 'https://i.imgur.com/SDvtrNh.png', 'https://i.imgur.com/2mPIEUG.png'),
(42, 7, 8, 13, '2015 monochrome maroon maroon/maroon/maroon', 'https://i.imgur.com/xfncjIn.png', 'https://i.imgur.com/lBSDm19.png'),
(43, 8, 14, 12, '2015 alternates mattemaroon/black/black', 'https://i.imgur.com/kTEaL6I.png', 'https://i.imgur.com/hDibrjH.png'),
(44, 35, 11, 14, '2015 all-white white/white/white', 'https://i.imgur.com/GYlWZpp.png', 'https://i.imgur.com/aIDQXCR.png'),
(45, 8, 11, 6, '2015 mattemaroon/white/gray', 'https://i.imgur.com/VYPzYNd.png', 'https://i.imgur.com/KTGfUrC.png'),
(46, 8, 11, 14, '2015 mattemaroon/white/white', 'https://i.imgur.com/G2RBPiO.png', 'https://i.imgur.com/O5Vj7HC.png'),
(47, 9, 11, 14, '2015 maroon/white/white', 'https://i.imgur.com/VJTKSd1.png', 'https://i.imgur.com/Pals4Rr.png'),
(48, 8, 11, 13, '2015 mattemaroon/white/maroon', 'https://i.imgur.com/xTpd7TB.png', 'https://i.imgur.com/wINtsgi.png'),
(49, 7, 9, 6, '2015 belk bowl maroon/maroon/gray', 'https://i.imgur.com/jlqXYmP.png', 'https://i.imgur.com/uUGKvoK.png'),
(50, 15, 17, 15, '2014 dws 100 maroon/maroon/white', 'https://i.imgur.com/mfS31Jt.png', 'https://i.imgur.com/BShhMAE.png'),
(51, 14, 12, 15, '2014 orange bowl mattemaroon/white/white', 'https://i.imgur.com/f6rIKuo.png', 'https://i.imgur.com/pAWPOwu.png'),
(52, 16, 21, 19, '2014 mattemaroon/white/white', 'https://i.imgur.com/k0gOc1z.png', 'https://i.imgur.com/f6YAP1g.png'),
(53, 17, 22, 19, '2014 maroon/maroon/white', 'https://i.imgur.com/QjcDkXt.png', 'https://i.imgur.com/6JVm1et.png'),
(54, 15, 22, 18, '2014 monochrome maroon maroon/maroon/maroon', 'https://i.imgur.com/csoH3YG.png', 'https://i.imgur.com/1OG7LGB.png'),
(55, 10, 23, 15, '2014 egg bowl alternates maroon/white/white', 'https://i.imgur.com/vJVHyPl.png', 'https://i.imgur.com/blFzuLT.png'),
(56, 17, 22, 19, '2013 maroon/maroon/white', 'https://i.imgur.com/oxApeDT.png', 'https://i.imgur.com/HGlXO20.png'),
(57, 21, 22, 19, '2013 bulldog mattemaroon/maroon/white', 'https://i.imgur.com/oRK8CzN.png', 'https://i.imgur.com/s8K6UNd.png'),
(58, 17, 22, 18, '2013 monochrome maroon maroon/maroon/maroon', 'https://i.imgur.com/sEUrGyz.png', 'https://i.imgur.com/EU0iUt3.png'),
(59, 17, 18, 18, '2013 liberty bowl monochrome maroon maroon/maroon/maroon', 'https://i.imgur.com/ldAwDPf.png', 'https://i.imgur.com/pKoGCPM.png'),
(60, 16, 21, 19, '2013 mattemaroon/white/white', 'https://i.imgur.com/vY9dTRC.png', 'https://i.imgur.com/gfKi2Vo.png'),
(61, 17, 21, 19, '2013 maroon/white/white', 'https://i.imgur.com/jWfyvxL.png', 'https://i.imgur.com/q779zFv.png'),
(62, 17, 21, 18, '2013 maroon/white/maroon', 'https://i.imgur.com/Xjb2ia5.png', 'https://i.imgur.com/3YimotA.png'),
(63, 11, 24, 22, '2013 egg bowl alternates monochrome maroon gold/maroon/maroon', 'https://i.imgur.com/OWERLnv.png', 'https://i.imgur.com/uLusrvz.png'),
(64, 17, 22, 19, '2012 nick bell maroon/maroon/white', 'https://i.imgur.com/Uf3nyD6.png', 'https://i.imgur.com/B7lWZrP.png'),
(65, 17, 22, 18, '2012 nick bell monochrome maroon maroon/maroon/maroon', 'https://i.imgur.com/3IfOnzS.png', 'https://i.imgur.com/yXt4Biq.png'),
(66, 17, 22, 21, '2012 nick bell maroon/maroon/gray', 'https://i.imgur.com/XCdCRTL.png', 'https://i.imgur.com/NuMAELV.png'),
(67, 17, 21, 18, '2012 nick bell maroon/white/maroon', 'https://i.imgur.com/SxWsLHM.png', 'https://i.imgur.com/9OF0DbL.png'),
(68, 16, 21, 19, '2012 nick bell mattemaroon/white/white', 'https://i.imgur.com/qmAXGij.png', 'https://i.imgur.com/wHWfkxv.png'),
(69, 16, 21, 18, '2012 nick bell mattemaroon/white/maroon', 'https://i.imgur.com/aYeVqBY.png', 'https://i.imgur.com/UM83xP3.png'),
(70, 22, 20, 20, '2012 nick bell all-white snow bowl alternates white/white/white', 'https://i.imgur.com/wz1FyxA.png', 'https://i.imgur.com/mYTYmzZ.png'),
(71, 12, 25, 16, '2012 nick bell egg bowl alternates mattemaroon/white/white', 'https://i.imgur.com/j1SZGHM.png', 'https://i.imgur.com/NDC5B47.png'),
(72, 14, 19, 21, '2013 nick bell gator bowl alternates mattemaroon/white/gray', 'https://i.imgur.com/xzTbaxd.png', 'https://i.imgur.com/yVMxvPK.png'),
(73, 14, 28, 25, '2011 nick bell music city bowl mattemaroon/white/white', 'https://i.imgur.com/6EpRSdT.png', 'https://i.imgur.com/yO2aTeD.png'),
(74, 13, 26, 17, '2011 nick bell egg bowl alternates monochrome maroon maroon/maroon/maroon', 'https://i.imgur.com/rIiYuAo.png', 'https://i.imgur.com/azVXIcz.png'),
(75, 19, 29, 24, '2011 nick bell alternates maroon/black/maroon', 'https://i.imgur.com/3okHoJJ.png', 'https://i.imgur.com/2ZcsIh1.png'),
(76, 19, 30, 24, '2011 nick bell maroon/white/maroon', 'https://i.imgur.com/kwBRg1a.png', 'https://i.imgur.com/T94xgYg.png'),
(77, 18, 30, 25, '2011 nick bell mattemaroon/white/white', 'https://i.imgur.com/T1gjrrj.png', 'https://i.imgur.com/NO3f0Yj.png'),
(78, 18, 31, 25, '2011 nick bell mattemaroon/maroon/white', 'https://i.imgur.com/syEnW0g.png', 'https://i.imgur.com/CvGwtpp.png'),
(79, 19, 31, 25, '2011 nick bell maroon/maroon/white', 'https://i.imgur.com/obaBAQc.png', 'https://i.imgur.com/JE2EMJi.png'),
(80, 20, 27, 25, '2011 nick bell gator bowl maroon/white/white', 'https://i.imgur.com/TbxdE1q.png', 'https://i.imgur.com/eG39y6X.png'),
(81, 20, 30, 25, '2010 nick bell maroon/white/white', 'https://i.imgur.com/JuX6W8H.png', 'https://i.imgur.com/2D3Bttt.png'),
(82, 20, 30, 24, '2010 nick bell maroon/white/maroon', 'https://i.imgur.com/QVmToNQ.png', 'https://i.imgur.com/12Lj1xW.png'),
(83, 20, 30, 24, '2010 maroon/white/maroon', 'https://i.imgur.com/lj6Me2g.png', 'https://i.imgur.com/FqphiuR.png'),
(84, 20, 31, 25, '2010 nick bell maroon/maroon/white', 'https://i.imgur.com/ohbsCs1.png', 'https://i.imgur.com/HTWUjcx.png'),
(85, 20, 31, 25, '2010 maroon/maroon/white', 'https://i.imgur.com/Aegk8ax.png', 'https://i.imgur.com/R1asuuj.png'),
(86, 20, 29, 23, '2010 alternates maroon/black/black', 'https://i.imgur.com/6CAoHUe.png', 'https://i.imgur.com/1PoTnY2.png'),
(87, 20, 29, 25, '2009 alternates maroon/black/white', 'https://i.imgur.com/WSSxq4B.png', 'https://i.imgur.com/6gQWXQt.png'),
(88, 20, 30, 24, '2009 maroon/white/maroon', 'https://i.imgur.com/8dC7DeZ.png', 'https://i.imgur.com/TxSRfyg.png'),
(89, 20, 30, 25, '2009 maroon/white/white', 'https://i.imgur.com/XaJgSAl.png', 'https://i.imgur.com/yg3hEBL.png'),
(90, 20, 31, 24, '2009 monochrome maroon maroon/maroon/maroon', 'https://i.imgur.com/zWzDF0P.png', 'https://i.imgur.com/gQ61eeC.png'),
(91, 20, 31, 25, '2009 maroon/maroon/white', 'https://i.imgur.com/mmKLqEn.png', 'https://i.imgur.com/w7tDtd5.png'),
(92, 24, 33, 27, '2008 all-white white/white/white', 'https://i.imgur.com/PqF10TV.png', NULL),
(93, 23, 34, 26, '2008 bca monochrome maroon white/maroon/maroon', 'https://i.imgur.com/WB1rKpb.png', NULL),
(94, 24, 34, 26, '2006 monochrome maroon white/maroon/maroon', 'https://i.imgur.com/07Wxq6D.png', NULL),
(95, 24, 34, 27, '2006 white/maroon/white', 'https://i.imgur.com/4YQASTg.png', NULL),
(96, 24, 33, 26, '2006 white/white/maroon', 'https://i.imgur.com/6vQBqHn.png', NULL),
(97, 24, 32, 26, '2007 liberty bowl monochrome maroon white/maroon/maroon', 'https://i.imgur.com/0Ognch9.png', NULL),
(98, 24, 33, 27, '2007 all-white white/white/white', 'https://i.imgur.com/MxQ6XXt.png', NULL),
(99, 24, 33, 26, '2007 white/white/maroon', 'https://i.imgur.com/jUMyExl.png', NULL),
(100, 24, 34, 26, '2007 monochrome maroon white/maroon/maroon', 'https://i.imgur.com/QgKUhcx.png', NULL),
(101, 24, 34, 27, '2007 white/maroon/white', 'https://i.imgur.com/3R0Gat4.png', NULL),
(102, 24, 33, 27, '2004 all-white white/white/white', 'https://i.imgur.com/38M9e0a.png', NULL),
(103, 24, 34, 27, '2004 white/maroon/white', 'https://i.imgur.com/EBKKsBg.png', NULL),
(104, 25, 39, 29, '2003 number white/maroon/white', 'https://i.imgur.com/9bjX8Nk.png', NULL),
(105, 27, 39, 29, '2002 maroon/maroon/white', 'https://i.imgur.com/gdPV9KK.png', NULL),
(106, 27, 39, 28, '2002 monochrome maroon maroon/maroon/maroon', 'https://i.imgur.com/KJsaxyd.png', NULL),
(107, 27, 38, 28, '2002 maroon/white/maroon', 'https://i.imgur.com/k3aKHxy.png', NULL),
(108, 27, 38, 29, '2003 maroon/white/white', 'https://i.imgur.com/NwfBEAQ.png', NULL),
(109, 26, 38, 29, '2002 all-white white/white/white', 'https://i.imgur.com/H3z84cQ.png', NULL),
(110, 26, 39, 29, '2001 white/maroon/white', 'https://i.imgur.com/07fyToU.png', NULL),
(111, 26, 38, 29, '2001 all-white white/white/white', 'https://i.imgur.com/ZE2NXCU.png', NULL),
(112, 27, 38, 28, '1998 maroon/white/maroon', 'https://i.imgur.com/VPKGhEQ.png', NULL),
(113, 27, 39, 29, '1998 maroon/maroon/white', 'https://i.imgur.com/PV5bf2z.png', NULL),
(114, 27, 38, 29, '1998 maroon/white/white', 'https://i.imgur.com/rQwqMZD.png', NULL),
(115, 27, 37, 29, '1999 cotton bowl maroon/white/white', 'https://i.imgur.com/PW9ojNz.png', NULL),
(116, 27, 36, 29, '1999 peach bowl maroon/maroon/white', 'https://i.imgur.com/g3TOXNN.png', NULL),
(117, 26, 35, 29, '2000 snow bowl independence bowl white/white/white', 'https://i.imgur.com/InrZJAW.png', NULL),
(118, 27, 39, 29, '1997 maroon/maroon/white', 'https://i.imgur.com/ciPdDSK.png', NULL),
(119, 27, 38, 29, '1997 maroon/white/white', 'https://i.imgur.com/9MzsGJ3.png', NULL),
(120, 27, 38, 28, '1997 maroon/white/maroon', 'https://i.imgur.com/iTFlNaw.png', NULL),
(121, 27, 38, 30, '1996 maroon/white/maroon', 'https://i.imgur.com/Rsjjels.png', NULL),
(122, 27, 38, 31, '1996 maroon/white/white', 'https://i.imgur.com/7CkVTpd.png', NULL),
(123, 27, 39, 31, '1996 maroon/maroon/white', 'https://i.imgur.com/e6QN8U1.png', NULL),
(124, 28, 40, 30, '1995 maroon/white/maroon', 'https://i.imgur.com/SR4dK9u.png', NULL),
(125, 28, 40, 31, '1995 maroon/white/white', 'https://i.imgur.com/VfmRRgK.png', NULL),
(126, 28, 41, 30, '1995 monochrome maroon maroon/maroon/maroon', 'https://i.imgur.com/S0zjFKz.png', NULL),
(127, 28, 41, 31, '1995 maroon/maroon/white', 'https://i.imgur.com/8lIrgSQ.png', NULL),
(128, 28, 42, 30, '1995 peach bowl maroon/white/maroon', 'https://i.imgur.com/McbbtdS.png', NULL),
(129, 28, 44, 30, '1994 maroon/white/maroon', 'https://i.imgur.com/WbkV7ie.png', NULL),
(130, 28, 44, 31, '1994 maroon/white/white', 'https://i.imgur.com/KzyNgva.png', NULL),
(131, 28, 45, 31, '1994 maroon/maroon/white', 'https://i.imgur.com/hHBpX1P.png', NULL),
(132, 28, 44, 31, '1993 maroon/white/white', 'https://i.imgur.com/qU2Wufs.png', NULL),
(133, 28, 44, 30, '1993 maroon/white/maroon', 'https://i.imgur.com/ZfzIJaB.png', NULL),
(134, 28, 45, 31, '1993 maroon/maroon/white', 'https://i.imgur.com/CxrB3lE.png', NULL),
(135, 28, 42, 30, '1993 peach bowl maroon/white/maroon', 'https://i.imgur.com/RYTgQD8.png', NULL),
(136, 28, 44, 31, '1992 maroon/white/white', 'https://i.imgur.com/K2i1K3l.png', NULL),
(137, 28, 45, 31, '1992 maroon/maroon/white', 'https://i.imgur.com/NYUapWr.png', NULL),
(138, 28, 44, 31, '1991 maroon/white/white', 'https://i.imgur.com/WHy8Mym.png', NULL),
(139, 28, 45, 31, '1991 maroon/maroon/white', 'https://i.imgur.com/L9CkUc1.png', NULL),
(140, 28, 43, 31, '1991 liberty bowl maroon/maroon/white', 'https://i.imgur.com/WgVsOwv.png', NULL),
(141, 28, 46, 32, '1990 maroon/white/white', 'https://i.imgur.com/AJIlt07.png', NULL),
(142, 28, 47, 32, '1990 maroon/maroon/white', 'https://i.imgur.com/8EtdPCa.png', NULL),
(143, 28, 48, 32, '1989 maroon/white/white', 'https://i.imgur.com/AJIlt07.png', NULL),
(144, 28, 49, 32, '1989 maroon/maroon/white', 'https://i.imgur.com/8EtdPCa.png', NULL),
(145, 29, 50, 34, '1987 maroon/white/white', 'https://i.imgur.com/G1LKa1F.png', NULL),
(146, 29, 50, 33, '1987 maroon/white/silver', 'https://i.imgur.com/w1N1V8N.png', NULL),
(147, 29, 51, 34, '1987 maroon/maroon/white', 'https://i.imgur.com/UR5yjgT.png', NULL),
(148, 29, 51, 33, '1987 maroon/maroon/silver', 'https://i.imgur.com/jBslazt.png', NULL),
(149, 29, 50, 33, '1986 maroon/white/silver', 'https://i.imgur.com/U6X6SLZ.png', NULL),
(150, 29, 51, 33, '1986 maroon/maroon/silver', 'https://i.imgur.com/K6LrGWh.png', NULL),
(151, 30, 53, 17, '1985 monochrome maroon maroon/maroon/maroon', 'https://i.imgur.com/E97VeHk.png', NULL),
(152, 30, 52, 17, '1984 maroon/white/maroon', 'https://i.imgur.com/R1n9vvG.png', NULL),
(153, 30, 53, 16, '1984 maroon/maroon/white', 'https://i.imgur.com/HlEsa2z.png', NULL),
(154, 30, 54, 34, '1983 maroon/white/white', 'https://i.imgur.com/1jGdYBH.png', NULL),
(155, 30, 55, 34, '1983 maroon/maroon/white', 'https://i.imgur.com/5dBaxDm.png', NULL),
(156, 30, 56, 34, '1982 maroon/white/white', 'https://i.imgur.com/1jGdYBH.png', NULL),
(157, 30, 57, 34, '1982 maroon/maroon/white', 'https://i.imgur.com/5dBaxDm.png', NULL),
(158, 30, 58, 34, '1981 maroon/white/white', 'https://i.imgur.com/1jGdYBH.png', NULL),
(159, 30, 59, 34, '1981 maroon/maroon/white', 'https://i.imgur.com/5dBaxDm.png', NULL),
(160, 30, 60, 34, '1981 hall of fame bowl maroon/maroon/white', 'https://i.imgur.com/5fl2u4P.png', NULL),
(161, 30, 61, 34, '1980 maroon/white/white', 'https://i.imgur.com/1jGdYBH.png', NULL),
(162, 30, 62, 34, '1980 maroon/maroon/white', 'https://i.imgur.com/5dBaxDm.png', NULL),
(163, 31, 63, 34, '1974 sun bowl maroon/maroon/white', 'https://i.imgur.com/z77DU4C.png', NULL),
(164, 32, 64, 34, '1963 liberty bowl maroon/maroon/white', 'https://i.imgur.com/qeYbLDs.png', NULL),
(165, 33, 65, 35, '1941 orange bowl monochrome maroon maroon/maroon/maroon', 'https://i.imgur.com/uiNDsJ7.png', NULL),
(166, 34, 66, 17, '1937 orange bowl monochrome maroon unknown/maroon/maroon', 'https://i.imgur.com/axxUvW2.png', NULL),
(167, 35, 0, 0, '2019 music city bowl all-white white/white/white', 'https://i.imgur.com/hNZcmhz.png', 'https://i.imgur.com/l4R2Mwh.png');

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
  MODIFY `comboID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

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
