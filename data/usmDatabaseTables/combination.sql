-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 16, 2020 at 09:04 PM
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
(1, 1, 1, 1, '2020 2015/blackB/black black/black/black', 'https://i.imgur.com/vJwyJKz.png', 'https://i.imgur.com/tPXRu8v.png'),
(2, 2, 2, 2, '2020 black/heathergray/heathergray', 'https://i.imgur.com/z2Wzq73.png', 'https://i.imgur.com/yDuo5EX.png'),
(3, 3, 3, 3, '2020 2003/blackA/goldB black/black/gold', 'https://i.imgur.com/ctbFtDr.png', 'https://i.imgur.com/LHmbU3F.png'),
(4, 3, 4, 4, '2020 2003/white/white black/white/white', 'https://i.imgur.com/d1FmyET.png', 'https://i.imgur.com/p6VLa9C.png'),
(5, 5, 5, 3, '2019 1980/gold/goldB black/gold/gold', 'https://i.imgur.com/IErFRyw.png', 'https://i.imgur.com/3VpnrZY.png'),
(6, 5, 4, 5, '2019 1980/white/goldA black/white/gold', 'https://i.imgur.com/EmBK22u.png', 'https://i.imgur.com/JAIRyTr.png'),
(7, 3, 4, 1, '2019 2003/white/black black/white/black', 'https://i.imgur.com/olakqL9.png', 'https://i.imgur.com/JNU7pNf.png'),
(8, 1, 1, 5, '2019 2015/blackB/goldA black/black/gold', 'https://i.imgur.com/cHoId9U.png', 'https://i.imgur.com/myADzXT.png'),
(9, 1, 1, 1, '2019 2015/blackB/black black/black/black', 'https://i.imgur.com/9IUDI0w.png', 'https://i.imgur.com/yML63wj.png'),
(10, 1, 4, 1, '2019 2015/white/black black/white/black', 'https://i.imgur.com/gMbrHqd.png', 'https://i.imgur.com/DHcVBXq.png'),
(11, 3, 4, 5, '2019 2003/white/goldA black/white/gold', 'https://i.imgur.com/Bvf51Sl.png', 'https://i.imgur.com/iaRBrhP.png'),
(12, 4, 1, 1, '2019 america/blackB/black black/black/black', 'https://i.imgur.com/DHg24d4.png', 'https://i.imgur.com/jmx2kQj.png'),
(13, 4, 4, 5, '2019 america/white/goldA black/white/gold', 'https://i.imgur.com/M9rM0Ct.png', 'https://i.imgur.com/4d1onrV.png'),
(14, 2, 2, 2, '2019 black/heathergray/heathergray', 'https://i.imgur.com/VmKUVt8.png', 'https://i.imgur.com/DUc1r6G.png'),
(15, 1, 4, 5, '2019 2015/white/goldA black/white/gold', 'https://i.imgur.com/6P4byoo.png', 'https://i.imgur.com/vAIsEfK.png'),
(16, 4, 6, 1, '2019 armed forces bowl america/white/black black/white/black', 'https://i.imgur.com/sxQTeGk.png', 'https://i.imgur.com/QMyoq3f.png'),
(17, 7, 1, 5, '2018 1980/blackB/goldA black/black/gold', 'https://i.imgur.com/oI2rDsf.png', 'https://i.imgur.com/yqHundd.png'),
(18, 3, 1, 5, '2018 2003/blackB/goldA black/black/gold', 'https://i.imgur.com/Q6vpUST.png', 'https://i.imgur.com/Nc58QoW.png'),
(19, 3, 4, 1, '2018 2003/white/black black/white/black', 'https://i.imgur.com/m9uCdKX.png', 'https://i.imgur.com/p4I1DQ4.png'),
(20, 3, 4, 6, '2018 2003/white/white black/white/white', 'https://i.imgur.com/LHZPAnW.png', 'https://i.imgur.com/4e0JrWp.png'),
(21, 1, 1, 1, '2018 2015/blackB/black black/black/black', 'https://i.imgur.com/uAp0Yh2.png', 'https://i.imgur.com/95XGJR3.png'),
(22, 1, 4, 5, '2018 2015/white/goldA black/white/gold', 'https://i.imgur.com/yz5TS9s.png', 'https://i.imgur.com/2a8l6CA.png'),
(23, 6, 4, 5, '2018 15S/white/goldA black/white/gold', 'https://i.imgur.com/7KVa1A2.png', 'https://i.imgur.com/8QqZByD.png'),
(24, 4, 1, 5, '2018 america/blackB/goldA black/black/gold', 'https://i.imgur.com/qLyLQ6V.png', 'https://i.imgur.com/F0Dz8un.png'),
(25, 8, 3, 1, '2018 NE/blackA/black black/black/black', 'https://i.imgur.com/4bYq2NF.png', 'https://i.imgur.com/gsiWrko.png'),
(26, 7, 13, 1, '2017 1980/black/black black/black/black', 'https://i.imgur.com/szt3exd.png', 'https://i.imgur.com/M5uKMJB.png'),
(27, 9, 10, 7, '2017 1997/black/oldgold black/black/oldgold', 'https://i.imgur.com/io3XLmA.png', 'https://i.imgur.com/3K90C7n.png'),
(28, 3, 7, 1, '2017 independence bowl 2003/gold/black black/gold/black', 'https://i.imgur.com/FCj1ynC.png', 'https://i.imgur.com/0crbmzl.png'),
(29, 3, 12, 5, '2017 2003/white/gold black/white/gold', 'https://i.imgur.com/8Mbb2dF.png', 'https://i.imgur.com/dj8b1zk.png'),
(30, 13, 12, 4, '2017 03S/white/white black/white/white', 'https://i.imgur.com/Hh6L4nE.png', 'https://i.imgur.com/z1dMm6h.png'),
(31, 1, 13, 5, '2017 2015/black/gold black/black/gold', 'https://i.imgur.com/QCbIaCJ.png', 'https://i.imgur.com/ubsGrOL.png'),
(32, 1, 12, 5, '2017 2015/white/gold black/white/gold', 'https://i.imgur.com/1gFIKyd.png', 'https://i.imgur.com/XjczgTg.png'),
(33, 1, 12, 4, '2017 2015/white/white black/white/white', 'https://i.imgur.com/T4rGsJ4.png', 'https://i.imgur.com/d88u4Nc.png'),
(34, 12, 13, 1, '2017 blackout/black/black black/black/black', 'https://i.imgur.com/mQfnZW3.png', 'https://i.imgur.com/ZVpBIP8.png'),
(35, 11, 13, 1, '2017 eagle/black/black black/black/black', 'https://i.imgur.com/2JmYAuy.png', 'https://i.imgur.com/c4c7dOS.png'),
(36, 11, 11, 5, '2017 eagle/gold/gold black/gold/gold', 'https://i.imgur.com/z8insjv.png', 'https://i.imgur.com/Xo4Bniv.png'),
(37, 11, 12, 1, '2017 eagle/white/black black/white/black', 'https://i.imgur.com/Xc5fqsn.png', 'https://i.imgur.com/2oO5aGh.png'),
(38, 10, 12, 1, '2017 EN/white/black black/white/black', 'https://i.imgur.com/X4D5Zr0.png', 'https://i.imgur.com/kjm5h0X.png'),
(39, 14, 14, 4, '2016 03S/white/white matteblack/white/white', 'https://i.imgur.com/0UZyIme.png', 'https://i.imgur.com/fGhKuhB.png'),
(40, 1, 14, 4, '2016 2015/white/white black/white/white', 'https://i.imgur.com/xtqRJer.png', 'https://i.imgur.com/hMGLbiZ.png'),
(41, 1, 8, 1, '2016 new orleans bowl 2015/white/black black/white/black', 'https://i.imgur.com/SqdVqbW.png', 'https://i.imgur.com/h7RMLda.png'),
(42, 1, 14, 1, '2016 2015/white/black black/white/black', 'https://i.imgur.com/vZevG5X.png', 'https://i.imgur.com/zqBSkgh.png'),
(43, 1, 15, 1, '2016 2015/black/black black/black/black', 'https://i.imgur.com/lsrrUL6.png', 'https://i.imgur.com/NA4T0PN.png'),
(44, 1, 15, 1, '2015 heart of dallas bowl 2015/black/black black/black/black', 'https://i.imgur.com/QXH7qWY.png', 'https://i.imgur.com/FRKFslx.png'),
(45, 1, 14, 1, '2015 2015/white/black black/white/black', 'https://i.imgur.com/5sonab4.png', 'https://i.imgur.com/AEJBU9W.png'),
(46, 1, 15, 1, '2015 2015/black/black black/black/black', 'https://i.imgur.com/ho5G8vM.png', 'https://i.imgur.com/TYBz5W9.png'),
(47, 3, 16, 9, '2014 black/gold/black', 'https://i.imgur.com/X8pQYvB.png', 'https://i.imgur.com/ZSCqMiI.png'),
(48, 3, 17, 8, '2014 black/white/white', 'https://i.imgur.com/zvBYcne.png', 'https://i.imgur.com/0Qx0QKe.png'),
(49, 3, 18, 9, '2014 black/black/black', 'https://i.imgur.com/NB8q5g6.png', 'https://i.imgur.com/PECOsNj.png'),
(50, 3, 19, 9, '2014 44 black/black/black', 'https://i.imgur.com/uh0gfPd.png', 'https://i.imgur.com/lDjXLFA.png'),
(51, 15, 21, 8, '2013 gold/white/white', 'https://i.imgur.com/CJy7HjN.png', 'https://i.imgur.com/XZh1mDn.png'),
(52, 3, 20, 9, '2013 black/gold/black', 'https://i.imgur.com/iXDvIlk.png', 'https://i.imgur.com/0yI01bb.png'),
(53, 3, 21, 8, '2013 black/white/white', 'https://i.imgur.com/Hw8ED5C.png', 'https://i.imgur.com/Bmy4xXT.png'),
(54, 3, 21, 9, '2013 black/white/black', 'https://i.imgur.com/YrmdLqg.png', 'https://i.imgur.com/PWRIw6b.png'),
(55, 3, 22, 8, '2013 black/black/white', 'https://i.imgur.com/UELTKh8.png', 'https://i.imgur.com/tzFpb7f.png'),
(56, 3, 22, 9, '2013 black/black/black', 'https://i.imgur.com/bw7XVVi.png', 'https://i.imgur.com/Ziqk1Du.png'),
(57, 17, 28, 13, '2012 america/black/black black/black/black', 'https://i.imgur.com/lqoToHa.png', 'https://i.imgur.com/YSpOrgG.png'),
(58, 16, 26, 10, '2012 throwbacks gold/white/gold', 'https://i.imgur.com/B6zhLdT.png', 'https://i.imgur.com/STLcYGH.png'),
(59, 16, 27, 11, '2012 gold/white/white', 'https://i.imgur.com/Iayl50V.png', 'https://i.imgur.com/4CJYTNw.png'),
(60, 16, 27, 13, '2012 gold/white/black', 'https://i.imgur.com/6IkwRgv.png', 'https://i.imgur.com/NNHolMT.png'),
(61, 3, 27, 13, '2012 black/white/black', 'https://i.imgur.com/Xua3nNn.png', 'https://i.imgur.com/RUR9MUQ.png'),
(62, 3, 28, 13, '2012 black/black/black', 'https://i.imgur.com/cgt6hVO.png', 'https://i.imgur.com/14D4G2c.png'),
(63, 3, 28, 11, '2012 black/black/white', 'https://i.imgur.com/D3013ey.png', 'https://i.imgur.com/ZEZUEFH.png'),
(64, 18, 30, 12, '2011 a/black/gold matteblack/black/gold', 'https://i.imgur.com/OKwytUn.png', 'https://i.imgur.com/cMITVHF.png'),
(65, 18, 30, 11, '2011 a/black/white matteblack/black/white', 'https://i.imgur.com/gQYH9dX.png', 'https://i.imgur.com/0qMxfkP.png'),
(66, 18, 29, 11, '2011 a/white/white matteblack/white/white', 'https://i.imgur.com/avSXSTM.png', 'https://i.imgur.com/0qnS58Z.png'),
(67, 19, 30, 13, '2011 b/black/black matteblack/black/black', 'https://i.imgur.com/poEMUzx.png', 'https://i.imgur.com/phL1A1U.png'),
(68, 19, 29, 13, '2011 b/white/black matteblack/white/black', 'https://i.imgur.com/QMyoRt4.png', 'https://i.imgur.com/yTIqZoG.png'),
(69, 20, 30, 13, '2011 c/black/black matteblack/black/black', 'https://i.imgur.com/fpiIDOM.png', 'https://i.imgur.com/TfsbYRo.png'),
(70, 20, 29, 13, '2011 c/white/black matteblack/white/black', 'https://i.imgur.com/RHzEB9l.png', 'https://i.imgur.com/WJfX5EE.png'),
(71, 21, 30, 13, '2011 d/black/black matteblack/black/black', 'https://i.imgur.com/AiiPZJA.png', 'https://i.imgur.com/EV23IB8.png'),
(72, 21, 29, 13, '2011 d/white/black matteblack/white/black', 'https://i.imgur.com/Cc7Wh66.png', 'https://i.imgur.com/qFHalRl.png'),
(73, 22, 29, 13, '2011 e/white/black matteblack/white/black', 'https://i.imgur.com/l6wh3ON.png', 'https://i.imgur.com/iJgqPpy.png'),
(74, 23, 23, 13, '2011 hawaii bowl f/black/black matteblack/black/black', 'https://i.imgur.com/LNmdsck.png', 'https://i.imgur.com/RJd39eJ.png'),
(75, 3, 30, 13, '2010 black/black/black', 'https://i.imgur.com/Kppz9MJ.png', 'https://i.imgur.com/iXvp6to.png'),
(76, 3, 30, 12, '2010 black/black/gold', 'https://i.imgur.com/J3iQxVx.png', 'https://i.imgur.com/JzyH2bP.png'),
(77, 3, 29, 13, '2010 black/white/black', 'https://i.imgur.com/aJYGYzn.png', 'https://i.imgur.com/QsczZw1.png'),
(78, 3, 24, 12, '2010 beef o bradys bowl black/white/gold', 'https://i.imgur.com/CL2RFLr.png', 'https://i.imgur.com/fn5bCaT.png'),
(79, 3, 29, 12, '2010 black/white/gold', 'https://i.imgur.com/0Z1In4S.png', 'https://i.imgur.com/tAtj35T.png'),
(80, 3, 29, 11, '2010 black/white/white', 'https://i.imgur.com/yJmxz8I.png', 'https://i.imgur.com/z8eSt5A.png'),
(81, 3, 33, 13, '2009 black/black/black', 'https://i.imgur.com/JYzmJai.png', 'https://i.imgur.com/pMarWvE.png'),
(82, 3, 33, 11, '2009 black/black/white', 'https://i.imgur.com/51MfoV6.png', 'https://i.imgur.com/jq78r9b.png'),
(83, 3, 31, 13, '2009 black/gold/black', 'https://i.imgur.com/hriveuU.png', 'https://i.imgur.com/d2xuDBD.png'),
(84, 3, 31, 11, '2009 black/gold/white', 'https://i.imgur.com/Mv1esTp.png', 'https://i.imgur.com/lNIqSYR.png'),
(85, 3, 25, 13, '2009 new orleans bowl black/white/black', 'https://i.imgur.com/E3Lhjqk.png', 'https://i.imgur.com/h466u9Z.png'),
(86, 3, 32, 13, '2009 black/white/black', 'https://i.imgur.com/fRz6BnW.png', 'https://i.imgur.com/qpAlr0u.png'),
(87, 3, 32, 12, '2009 black/white/gold', 'https://i.imgur.com/vpNXqoc.png', 'https://i.imgur.com/evc6Cjc.png'),
(88, 3, 32, 11, '2009 black/white/white', 'https://i.imgur.com/Pq9jpAm.png', 'https://i.imgur.com/nL13qsF.png'),
(89, 3, 41, 16, '2008 black/black/black', 'https://i.imgur.com/L8JaJE0.png', 'https://i.imgur.com/4yPmeoL.png'),
(90, 3, 41, 15, '2008 black/black/gold', 'https://i.imgur.com/ArWrPi7.png', 'https://i.imgur.com/sMVBJf5.png'),
(91, 3, 39, 16, '2008 black/gold/black', 'https://i.imgur.com/MCZ96wQ.png', 'https://i.imgur.com/17GcMiN.png'),
(92, 3, 34, 15, '2008 new orleans bowl black/gold/gold', 'https://i.imgur.com/A4EzWAN.png', 'https://i.imgur.com/q75kakb.png'),
(93, 3, 39, 15, '2008 black/gold/gold', 'https://i.imgur.com/3MDVPYx.png', 'https://i.imgur.com/L2gHxqG.png'),
(94, 3, 40, 16, '2008 black/white/black', 'https://i.imgur.com/kqxA6RX.png', 'https://i.imgur.com/BDK2cRL.png'),
(95, 3, 40, 14, '2008 black/white/white', 'https://i.imgur.com/o24wNsY.png', 'https://i.imgur.com/LcAhKIH.png'),
(96, 3, 41, 16, '2006 black/black/black', 'https://i.imgur.com/fw5bwQ2.png', 'https://i.imgur.com/8Uw24MU.png'),
(97, 3, 36, 15, '2006 gmac bowl black/black/gold', 'https://i.imgur.com/WdLAiqp.png', 'https://i.imgur.com/jEBn4fq.png'),
(98, 3, 41, 15, '2006 black/black/gold', 'https://i.imgur.com/Zs5XNOs.png', 'https://i.imgur.com/IgKqxy7.png'),
(99, 3, 40, 16, '2006 black/white/black', 'https://i.imgur.com/cTQ7puQ.png', 'https://i.imgur.com/ZsMwZsJ.png'),
(100, 3, 40, 15, '2006 black/white/gold', 'https://i.imgur.com/cDaYtlm.png', 'https://i.imgur.com/OcV70Oc.png'),
(101, 3, 35, 14, '2007 papa johns bowl black/white/white', 'https://i.imgur.com/0vUOY8z.png', 'https://i.imgur.com/TwqUmZx.png'),
(102, 3, 40, 14, '2006 black/white/white', 'https://i.imgur.com/3BN2i1o.png', 'https://i.imgur.com/iogrW7p.png'),
(103, 3, 43, 16, '2003 black/black/black', 'https://i.imgur.com/sxQfZN6.png', 'https://i.imgur.com/5CDleuT.png'),
(104, 3, 43, 15, '2003 black/black/gold', 'https://i.imgur.com/QHQqdmQ.png', 'https://i.imgur.com/lLQw7lX.png'),
(105, 3, 38, 16, '2003 liberty bowl black/white/black', 'https://i.imgur.com/8Je22Hj.png', 'https://i.imgur.com/da7UC7c.png'),
(106, 3, 42, 16, '2003 black/white/black', 'https://i.imgur.com/sltDKUT.png', 'https://i.imgur.com/1YYKYRw.png'),
(107, 3, 37, 15, '2004 new orleans bowl black/white/gold', 'https://i.imgur.com/xRsv1Uj.png', 'https://i.imgur.com/nqL063I.png'),
(108, 3, 42, 15, '2003 black/white/gold', 'https://i.imgur.com/ZEddahM.png', 'https://i.imgur.com/Q5XrdH8.png');

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
  MODIFY `comboID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

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
