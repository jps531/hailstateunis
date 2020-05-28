-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 28, 2020 at 08:00 AM
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
-- Database: `baseballTableData`
--

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `gameID` int(11) NOT NULL,
  `yr` year(4) DEFAULT NULL,
  `gameday` date DEFAULT NULL,
  `opponentName` varchar(30) DEFAULT NULL,
  `result` varchar(10) DEFAULT NULL,
  `points_for` int(11) DEFAULT NULL,
  `points_against` int(11) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL,
  `dh` tinyint(1) NOT NULL DEFAULT 0,
  `uniformID` int(11) NOT NULL,
  `article_title` varchar(100) DEFAULT NULL,
  `article_link` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`gameID`, `yr`, `gameday`, `opponentName`, `result`, `points_for`, `points_against`, `type`, `location`, `dh`, `uniformID`, `article_title`, `article_link`) VALUES
(1, 2020, '2020-03-11', 'Texas Tech', 'Win', 3, 2, 'Midweek', 'neutral', 0, 6, 'Mississippi State Sweeps Texas Tech in Two-Game Midweek Series in Biloxi', 'https://www.hailstateunis.com/2020-baseball-season/mississippi-state-sweeps-texas-tech-in-two-game-midweek-series-in-biloxi'),
(2, 2020, '2020-03-10', 'Texas Tech', 'Win', 6, 3, 'Midweek', 'neutral', 0, 4, 'Mississippi State Sweeps Texas Tech in Two-Game Midweek Series in Biloxi', 'https://www.hailstateunis.com/2020-baseball-season/mississippi-state-sweeps-texas-tech-in-two-game-midweek-series-in-biloxi'),
(3, 2020, '2020-03-08', 'Quinnipiac', 'Win', 8, 4, 'Non-Conference Game 3', 'home', 0, 7, 'Mississippi State Sweeps Quinnipiac', 'https://www.hailstateunis.com/2020-baseball-season/mississippi-state-sweeps-quinnipiac'),
(4, 2020, '2020-03-07', 'Quinnipiac', 'Win', 5, 4, 'Non-Conference Game 2', 'home', 0, 5, 'Mississippi State Sweeps Quinnipiac', 'https://www.hailstateunis.com/2020-baseball-season/mississippi-state-sweeps-quinnipiac'),
(5, 2020, '2020-03-06', 'Quinnipiac', 'Win', 5, 1, 'Non-Conference Game 1', 'home', 0, 2, 'Mississippi State Sweeps Quinnipiac', 'https://www.hailstateunis.com/2020-baseball-season/mississippi-state-sweeps-quinnipiac'),
(6, 2020, '2020-03-01', 'Long Beach St.', 'Loss', 2, 6, 'Non-Conference Game 3', 'road', 0, 3, 'Bulldogs Debut New Road Gray Uniforms at Long Beach', 'https://www.hailstateunis.com/2020-baseball-season/bulldogs-debut-new-road-gray-jerseys-at-long-beach'),
(7, 2020, '2020-02-29', 'Long Beach St.', 'Win', 9, 0, 'Non-Conference Game 2', 'road', 0, 1, 'Bulldogs Debut New Road Gray Uniforms at Long Beach', 'https://www.hailstateunis.com/2020-baseball-season/bulldogs-debut-new-road-gray-jerseys-at-long-beach'),
(8, 2020, '2020-02-28', 'Long Beach St.', 'Loss', 0, 4, 'Non-Conference Game 1', 'road', 0, 2, 'Bulldogs Debut New Road Gray Uniforms at Long Beach', 'https://www.hailstateunis.com/2020-baseball-season/bulldogs-debut-new-road-gray-jerseys-at-long-beach'),
(9, 2020, '2020-02-26', 'Alcorn State', 'Win', 8, 4, 'Midweek', 'Home', 0, 6, 'Bulldogs Debut New Road Gray Uniforms at Long Beach', 'https://www.hailstateunis.com/2020-baseball-season/bulldogs-debut-new-road-gray-jerseys-at-long-beach'),
(10, 2020, '2020-02-25', 'Texas Southern', 'Loss', 4, 8, 'Midweek', 'home', 0, 4, 'Bulldogs Debut New Road Gray Uniforms at Long Beach', 'https://www.hailstateunis.com/2020-baseball-season/bulldogs-debut-new-road-gray-jerseys-at-long-beach'),
(11, 2020, '2020-02-23', 'Oregon State', 'Loss', 2, 7, 'Non-Conference Game 3', 'home', 0, 7, 'Mississippi State Wins High-Profile Series with Oregon State', 'https://www.hailstateunis.com/2020-baseball-season/mississippi-state-wins-high-profile-series-with-oregon-state'),
(12, 2020, '2020-02-22', 'Oregon State', 'Win', 7, 4, 'Non-Conference Game 2', 'home', 0, 5, 'Mississippi State Wins High-Profile Series with Oregon State', 'https://www.hailstateunis.com/2020-baseball-season/mississippi-state-wins-high-profile-series-with-oregon-state'),
(13, 2020, '2020-02-21', 'Oregon State', 'Win', 6, 2, 'Non-Conference Game 1', 'home', 0, 2, 'Mississippi State Wins High-Profile Series with Oregon State', 'https://www.hailstateunis.com/2020-baseball-season/mississippi-state-wins-high-profile-series-with-oregon-state'),
(14, 2020, '2020-02-16', 'Wright State', 'Win', 5, 1, 'Non-Conference Game 3', 'home', 0, 7, 'Bulldogs Open 2020 Season With Sweep of Wright State', 'https://www.hailstateunis.com/2020-baseball-season/bulldogs-open-2020-season-with-sweep-of-wright-state'),
(15, 2020, '2020-02-15', 'Wright State', 'Win', 6, 2, 'Non-Conference Game 2', 'home', 0, 5, 'Bulldogs Open 2020 Season With Sweep of Wright State', 'https://www.hailstateunis.com/2020-baseball-season/bulldogs-open-2020-season-with-sweep-of-wright-state'),
(16, 2020, '2020-02-14', 'Wright State', 'Win', 9, 6, 'Non-Conference Game 1', 'home', 0, 2, 'Bulldogs Open 2020 Season With Sweep of Wright State', 'https://www.hailstateunis.com/2020-baseball-season/bulldogs-open-2020-season-with-sweep-of-wright-state'),
(17, 2019, '2019-06-20', 'Louisville', 'Loss', 3, 4, 'CWS Elimination Game', 'ncaaCWS', 0, 17, '2019 College World Series: Bulldogs Walk-Off Auburn in #Nickelblacks, Wear Maroon and White 85 Looks', 'https://www.hailstateunis.com/2019-baseball/2019-college-world-series'),
(18, 2019, '2019-06-19', 'Vanderbilt', 'Loss', 3, 6, 'CWS Winners Bracket Game', 'ncaaCWS', 0, 16, '2019 College World Series: Bulldogs Walk-Off Auburn in #Nickelblacks, Wear Maroon and White 85 Looks', 'https://www.hailstateunis.com/2019-baseball/2019-college-world-series'),
(19, 2019, '2019-06-16', 'Auburn', 'Win', 5, 4, 'CWS Opening Game', 'ncaaCWS', 0, 15, '2019 College World Series: Bulldogs Walk-Off Auburn in #Nickelblacks, Wear Maroon and White 85 Looks', 'https://www.hailstateunis.com/2019-baseball/2019-college-world-series'),
(20, 2019, '2019-06-09', 'Stanford', 'Win', 8, 1, 'Starkville Super Regional Game 2', 'ncaaStarkvilleSuper', 0, 14, 'Mississippi State Sweeps Stanford, Advances to Omaha for Second Consecutive Season', 'https://www.hailstateunis.com/2019-baseball/mississippi-state-sweeps-stanford-advances-to-omaha-for-second-consecutive-season'),
(21, 2019, '2019-06-08', 'Stanford', 'Win', 6, 2, 'Starkville Super Regional Game 1', 'ncaaStarkvilleSuper', 0, 18, 'Mississippi State Sweeps Stanford, Advances to Omaha for Second Consecutive Season', 'https://www.hailstateunis.com/2019-baseball/mississippi-state-sweeps-stanford-advances-to-omaha-for-second-consecutive-season'),
(22, 2019, '2019-06-02', 'Miami FL', 'Win', 5, 2, 'Starkville Regional Championship Game', 'ncaaStarkvilleRegional', 0, 13, 'Mississippi State Sweeps Through 2019 Starkville Regional', 'https://www.hailstateunis.com/2019-baseball/mississippi-state-sweeps-through-2019-starkville-regional'),
(23, 2019, '2019-06-01', 'Central Michigan', 'Win', 7, 2, 'Starkville Regional Winners Bracket Game', 'ncaaStarkvilleRegional', 0, 12, 'Mississippi State Sweeps Through 2019 Starkville Regional', 'https://www.hailstateunis.com/2019-baseball/mississippi-state-sweeps-through-2019-starkville-regional'),
(24, 2019, '2019-05-31', 'Southern', 'Win', 11, 6, 'Starkville Regional Opening Game', 'ncaaStarkvilleRegional', 0, 11, 'Mississippi State Sweeps Through 2019 Starkville Regional', 'https://www.hailstateunis.com/2019-baseball/mississippi-state-sweeps-through-2019-starkville-regional'),
(25, 2019, '2019-05-24', 'LSU', 'Loss', 2, 12, 'SECT Elimination Game', 'secT', 0, 10, '2019 SEC Tournament: Bulldogs Win 17-Inning Marathon over LSU', 'https://www.hailstateunis.com/2019-baseball/2019-sec-tournament-bulldogs-win-17-inning-marathon-over-lsu'),
(26, 2019, '2019-05-23', 'Vanderbilt', 'Loss', 0, 1, 'SECT Winners Bracket Game', 'secT', 0, 9, '2019 SEC Tournament: Bulldogs Win 17-Inning Marathon over LSU', 'https://www.hailstateunis.com/2019-baseball/2019-sec-tournament-bulldogs-win-17-inning-marathon-over-lsu'),
(27, 2019, '2019-05-22', 'LSU', 'Win', 6, 5, 'SECT Bracket Game 1', 'secT', 0, 8, '2019 SEC Tournament: Bulldogs Win 17-Inning Marathon over LSU', 'https://www.hailstateunis.com/2019-baseball/2019-sec-tournament-bulldogs-win-17-inning-marathon-over-lsu'),
(28, 2019, '2019-05-18', 'South Carolina', 'Loss', 8, 10, 'SEC Game 3', 'home', 0, 20, 'Mississippi State Wins South Carolina Series, Share of SEC West Title', 'https://www.hailstateunis.com/2019-baseball/mississippi-state-wins-south-carolina-series-share-of-sec-west-title'),
(29, 2019, '2019-05-17', 'South Carolina', 'Win', 11, 2, 'SEC Game 2', 'home', 0, 21, 'Mississippi State Wins South Carolina Series, Share of SEC West Title', 'https://www.hailstateunis.com/2019-baseball/mississippi-state-wins-south-carolina-series-share-of-sec-west-title'),
(30, 2019, '2019-05-16', 'South Carolina', 'Win', 24, 7, 'SEC Game 1', 'home', 0, 18, 'Mississippi State Wins South Carolina Series, Share of SEC West Title', 'https://www.hailstateunis.com/2019-baseball/mississippi-state-wins-south-carolina-series-share-of-sec-west-title'),
(31, 2019, '2019-05-14', 'Louisiana Tech', 'Win', 7, 3, 'Midweek', 'home', 0, 20, 'Mississippi State Wins South Carolina Series, Share of SEC West Title', 'https://www.hailstateunis.com/2019-baseball/mississippi-state-wins-south-carolina-series-share-of-sec-west-title'),
(32, 2019, '2019-05-12', 'Ole Miss', 'Win', 11, 5, 'SEC Game 3', 'road', 0, 25, 'Mississippi State SWEEPS Ole Miss in Oxford', 'https://www.hailstateunis.com/2019-baseball/mississippi-state-sweeps-ole-miss-in-oxford'),
(33, 2019, '2019-05-11', 'Ole Miss', 'Win', 8, 5, 'SEC Game 2', 'road', 0, 24, 'Mississippi State SWEEPS Ole Miss in Oxford', 'https://www.hailstateunis.com/2019-baseball/mississippi-state-sweeps-ole-miss-in-oxford'),
(34, 2019, '2019-05-10', 'Ole Miss', 'Win', 2, 0, 'SEC Game 1', 'road', 0, 19, 'Mississippi State SWEEPS Ole Miss in Oxford', 'https://www.hailstateunis.com/2019-baseball/mississippi-state-sweeps-ole-miss-in-oxford'),
(35, 2019, '2019-05-08', 'Memphis', 'Win', 10, 9, 'Midweek', 'home', 0, 20, 'Mississippi State SWEEPS Ole Miss in Oxford', 'https://www.hailstateunis.com/2019-baseball/mississippi-state-sweeps-ole-miss-in-oxford'),
(36, 2019, '2019-05-03', 'Texas A&M', 'Win', 4, 0, 'SEC Game 1', 'road', 0, 19, 'Bulldogs Win Series in College Station', 'https://www.hailstateunis.com/2019-baseball/bulldogs-win-series-in-college-station'),
(37, 2019, '2019-05-04', 'Texas A&M', 'Loss', 0, 1, 'SEC Game 2', 'road', 1, 23, 'Bulldogs Win Series in College Station', 'https://www.hailstateunis.com/2019-baseball/bulldogs-win-series-in-college-station'),
(38, 2019, '2019-05-04', 'Texas A&M', 'Win', 4, 3, 'SEC Game 3', 'road', 2, 23, 'Bulldogs Win Series in College Station', 'https://www.hailstateunis.com/2019-baseball/bulldogs-win-series-in-college-station'),
(40, 2019, '2019-04-28', 'Georgia', 'Win', 6, 5, 'SEC Game 3', 'home', 0, 25, 'Mississippi State Sweeps top-5 Georgia', 'https://www.hailstateunis.com/2019-baseball/mississippi-state-sweeps-top-5-georgia'),
(41, 2019, '2019-04-27', 'Georgia', 'Win', 9, 3, 'SEC Game 2', 'home', 0, 21, 'Mississippi State Sweeps top-5 Georgia', 'https://www.hailstateunis.com/2019-baseball/mississippi-state-sweeps-top-5-georgia'),
(42, 2019, '2019-04-26', 'Georgia', 'Win', 19, 3, 'SEC Game 1', 'home', 0, 18, 'Mississippi State Sweeps top-5 Georgia', 'https://www.hailstateunis.com/2019-baseball/mississippi-state-sweeps-top-5-georgia'),
(43, 2019, '2019-04-23', 'Ole Miss', 'Win', 8, 1, 'Midweek', 'neutral', 0, 23, 'Mississippi State Sweeps top-5 Georgia', 'https://www.hailstateunis.com/2019-baseball/mississippi-state-sweeps-top-5-georgia'),
(44, 2019, '2019-04-20', 'Arkansas', 'Loss', 2, 10, 'SEC Game 3', 'road', 0, 24, 'Razorbacks Sweep Bulldogs in Fayetteville', 'https://www.hailstateunis.com/2019-baseball/razorbacks-sweep-bulldogs-in-fayetteville'),
(45, 2019, '2019-04-19', 'Arkansas', 'Loss', 5, 12, 'SEC Game 2', 'road', 0, 23, 'Razorbacks Sweep Bulldogs in Fayetteville', 'https://www.hailstateunis.com/2019-baseball/razorbacks-sweep-bulldogs-in-fayetteville'),
(46, 2019, '2019-04-18', 'Arkansas', 'Loss', 3, 5, 'SEC Game 1', 'road', 0, 19, 'Razorbacks Sweep Bulldogs in Fayetteville', 'https://www.hailstateunis.com/2019-baseball/razorbacks-sweep-bulldogs-in-fayetteville'),
(47, 2019, '2019-04-16', 'Texas Southern', 'Win', 5, 1, 'Midweek', 'home', 0, 20, 'Razorbacks Sweep Bulldogs in Fayetteville', 'https://www.hailstateunis.com/2019-baseball/razorbacks-sweep-bulldogs-in-fayetteville'),
(48, 2019, '2019-04-14', 'Alabama', 'Win', 13, 3, 'SEC Game 3', 'home', 0, 25, 'Mississippi State Sweeps Alabama on Super Bulldog Weekend', 'https://www.hailstateunis.com/2019-baseball/mississippi-state-sweeps-alabama-on-super-bulldog-weekend'),
(49, 2019, '2019-04-13', 'Alabama', 'Win', 9, 1, 'SEC Game 2', 'home', 0, 21, 'Mississippi State Sweeps Alabama on Super Bulldog Weekend', 'https://www.hailstateunis.com/2019-baseball/mississippi-state-sweeps-alabama-on-super-bulldog-weekend'),
(50, 2019, '2019-04-12', 'Alabama', 'Win', 6, 0, 'SEC Game 1', 'home', 0, 18, 'Mississippi State Sweeps Alabama on Super Bulldog Weekend', 'https://www.hailstateunis.com/2019-baseball/mississippi-state-sweeps-alabama-on-super-bulldog-weekend'),
(51, 2019, '2019-04-10', 'South Alabama', 'Win', 7, 5, 'Midweek', 'home', 0, 20, 'Mississippi State Sweeps Alabama on Super Bulldog Weekend', 'https://www.hailstateunis.com/2019-baseball/mississippi-state-sweeps-alabama-on-super-bulldog-weekend'),
(52, 2019, '2019-04-07', 'Tennessee', 'Win', 7, 5, 'SEC Game 3', 'road', 0, 25, 'Bulldogs Bounce Back with Series Win at Tennessee', 'https://www.hailstateunis.com/2019-baseball/bulldogs-bounce-back-with-series-win-at-tennessee'),
(53, 2019, '2019-04-06', 'Tennessee', 'Loss', 1, 2, 'SEC Game 2', 'road', 0, 23, 'Bulldogs Bounce Back with Series Win at Tennessee', 'https://www.hailstateunis.com/2019-baseball/bulldogs-bounce-back-with-series-win-at-tennessee'),
(54, 2019, '2019-04-05', 'Tennessee', 'Win', 6, 3, 'SEC Game 1', 'road', 0, 19, 'Bulldogs Bounce Back with Series Win at Tennessee', 'https://www.hailstateunis.com/2019-baseball/bulldogs-bounce-back-with-series-win-at-tennessee'),
(55, 2019, '2019-04-03', 'UL Monroe', 'Win', 21, 8, 'Midweek', 'home', 0, 20, 'Bulldogs Bounce Back with Series Win at Tennessee', 'https://www.hailstateunis.com/2019-baseball/bulldogs-bounce-back-with-series-win-at-tennessee'),
(56, 2019, '2019-03-30', 'LSU', 'Loss', 2, 11, 'SEC Game 3', 'home', 0, 22, 'Bulldogs Win One but Drop Series to LSU', 'https://www.hailstateunis.com/2019-baseball/bulldogs-win-one-but-drop-series-to-lsu'),
(57, 2019, '2019-03-29', 'LSU', 'Loss', 5, 10, 'SEC Game 2', 'home', 0, 21, 'Bulldogs Win One but Drop Series to LSU', 'https://www.hailstateunis.com/2019-baseball/bulldogs-win-one-but-drop-series-to-lsu'),
(58, 2019, '2019-03-28', 'LSU', 'Win', 6, 5, 'SEC Game 1', 'home', 0, 18, 'Bulldogs Win One but Drop Series to LSU', 'https://www.hailstateunis.com/2019-baseball/bulldogs-win-one-but-drop-series-to-lsu'),
(59, 2019, '2019-03-26', 'MS Valley State', 'Win', 18, 5, 'Midweek', 'home', 0, 20, 'Bulldogs Win One but Drop Series to LSU', 'https://www.hailstateunis.com/2019-baseball/bulldogs-win-one-but-drop-series-to-lsu'),
(60, 2019, '2019-03-24', 'Auburn', 'Win', 20, 15, 'SEC Game 3', 'home', 0, 25, 'Mississippi State Wins Crazy Top-15 Series With Auburn', 'https://www.hailstateunis.com/2019-baseball/mississippi-state-wins-crazy-top-15-series-with-auburn'),
(61, 2019, '2019-03-23', 'Auburn', 'Win', 15, 2, 'SEC Game 2', 'home', 0, 21, 'Mississippi State Wins Crazy Top-15 Series With Auburn', 'https://www.hailstateunis.com/2019-baseball/mississippi-state-wins-crazy-top-15-series-with-auburn'),
(62, 2019, '2019-03-22', 'Auburn', 'Loss', 5, 6, 'SEC Game 1', 'home', 0, 18, 'Mississippi State Wins Crazy Top-15 Series With Auburn', 'https://www.hailstateunis.com/2019-baseball/mississippi-state-wins-crazy-top-15-series-with-auburn'),
(63, 2019, '2019-03-20', 'Samford', 'Win', 6, 4, 'Midweek', 'road', 0, 24, 'Mississippi State Wins Crazy Top-15 Series With Auburn', 'https://www.hailstateunis.com/2019-baseball/mississippi-state-wins-crazy-top-15-series-with-auburn'),
(64, 2019, '2019-03-19', 'Little Rock', 'Win', 15, 4, 'Midweek', 'home', 0, 20, 'Mississippi State Wins Crazy Top-15 Series With Auburn', 'https://www.hailstateunis.com/2019-baseball/mississippi-state-wins-crazy-top-15-series-with-auburn'),
(65, 2019, '2019-03-16', 'Florida', 'Win', 10, 5, 'SEC Game 2', 'road', 1, 23, 'Gray Pants Return as Mississippi State Opens SEC Play with Series Win at Florida', 'https://www.hailstateunis.com/2019-baseball/gray-pants-return-as-mississippi-state-opens-sec-play-with-series-win-at-florida'),
(66, 2019, '2019-03-16', 'Florida', 'Loss', 2, 4, 'SEC Game 3', 'road', 2, 23, 'Gray Pants Return as Mississippi State Opens SEC Play with Series Win at Florida', 'https://www.hailstateunis.com/2019-baseball/gray-pants-return-as-mississippi-state-opens-sec-play-with-series-win-at-florida'),
(67, 2019, '2019-03-15', 'Florida', 'Win', 6, 5, 'SEC Game 1', 'road', 0, 19, 'Gray Pants Return as Mississippi State Opens SEC Play with Series Win at Florida', 'https://www.hailstateunis.com/2019-baseball/gray-pants-return-as-mississippi-state-opens-sec-play-with-series-win-at-florida'),
(68, 2019, '2019-03-13', 'Grambling', 'Win', 18, 1, 'Midweek', 'home', 0, 22, 'Gray Pants Return as Mississippi State Opens SEC Play with Series Win at Florida', 'https://www.hailstateunis.com/2019-baseball/gray-pants-return-as-mississippi-state-opens-sec-play-with-series-win-at-florida'),
(69, 2019, '2019-03-10', 'Maine', 'Win', 9, 8, 'Non-Conference Game 3', 'home', 0, 25, 'Baseball Wears Teal Jerseys to Honor Alex Wilcox, Goes 5-0 in Final Week Before SEC Play', 'https://www.hailstateunis.com/2019-baseball/baseball-wears-teal-jerseys-to-honor-alex-wilcox-goes-5-0-in-final-week-before-sec-play'),
(70, 2019, '2019-03-08', 'Maine', 'Win', 9, 2, 'Non-Conference Game 1', 'home', 1, 18, 'Baseball Wears Teal Jerseys to Honor Alex Wilcox, Goes 5-0 in Final Week Before SEC Play', 'https://www.hailstateunis.com/2019-baseball/baseball-wears-teal-jerseys-to-honor-alex-wilcox-goes-5-0-in-final-week-before-sec-play'),
(71, 2019, '2019-03-08', 'Maine', 'Win', 5, 1, 'Non-Conference Game 2', 'home', 2, 18, 'Baseball Wears Teal Jerseys to Honor Alex Wilcox, Goes 5-0 in Final Week Before SEC Play', 'https://www.hailstateunis.com/2019-baseball/baseball-wears-teal-jerseys-to-honor-alex-wilcox-goes-5-0-in-final-week-before-sec-play'),
(72, 2019, '2019-03-06', 'Pine Bluff', 'Win', 14, 1, 'Midweek', 'home', 0, 26, 'Baseball Wears Teal Jerseys to Honor Alex Wilcox, Goes 5-0 in Final Week Before SEC Play', 'https://www.hailstateunis.com/2019-baseball/baseball-wears-teal-jerseys-to-honor-alex-wilcox-goes-5-0-in-final-week-before-sec-play'),
(73, 2019, '2019-03-05', 'East Carolina', 'Win', 4, 1, 'Midweek', 'home', 0, 22, 'Baseball Wears Teal Jerseys to Honor Alex Wilcox, Goes 5-0 in Final Week Before SEC Play', 'https://www.hailstateunis.com/2019-baseball/baseball-wears-teal-jerseys-to-honor-alex-wilcox-goes-5-0-in-final-week-before-sec-play'),
(74, 2019, '2019-03-02', 'Texas Tech', 'Win', 4, 2, 'Non-Conference Game 2', 'neutral', 0, 23, 'Perfect Week Includes 2-0 Weekend in Frisco, Four Wins Total in Four Different Uniforms', 'https://www.hailstateunis.com/2019-baseball/perfect-week-includes-2-0-weekend-in-frisco-four-wins-total-in-four-different-uniforms'),
(75, 2019, '2019-03-01', 'Sam Houston St.', 'Win', 5, 4, 'Non-Conference Game 1', 'neutral', 0, 18, 'Perfect Week Includes 2-0 Weekend in Frisco, Four Wins Total in Four Different Uniforms', 'https://www.hailstateunis.com/2019-baseball/perfect-week-includes-2-0-weekend-in-frisco-four-wins-total-in-four-different-uniforms'),
(76, 2019, '2019-02-27', 'SE Louisiana', 'Win', 12, 0, 'Midweek', 'home', 0, 22, 'Perfect Week Includes 2-0 Weekend in Frisco, Four Wins Total in Four Different Uniforms', 'https://www.hailstateunis.com/2019-baseball/perfect-week-includes-2-0-weekend-in-frisco-four-wins-total-in-four-different-uniforms'),
(77, 2019, '2019-02-26', 'Jackson State', 'Win', 17, 4, 'Midweek', 'home', 0, 20, 'Perfect Week Includes 2-0 Weekend in Frisco, Four Wins Total in Four Different Uniforms', 'https://www.hailstateunis.com/2019-baseball/perfect-week-includes-2-0-weekend-in-frisco-four-wins-total-in-four-different-uniforms'),
(78, 2019, '2019-02-24', 'Southern Miss', 'Win', 4, 3, 'Non-Conference Game 3', 'home', 0, 25, 'Mississippi State Wins Series over Southern Miss in Walk-off Fashion', 'https://www.hailstateunis.com/2019-baseball/mississippi-state-wins-series-over-southern-miss-in-walk-off-fashion'),
(79, 2019, '2019-02-23', 'Southern Miss', 'Win', 8, 1, 'Non-Conference Game 2', 'home', 0, 21, 'Mississippi State Wins Series over Southern Miss in Walk-off Fashion', 'https://www.hailstateunis.com/2019-baseball/mississippi-state-wins-series-over-southern-miss-in-walk-off-fashion'),
(80, 2019, '2019-02-22', 'Southern Miss', 'Loss', 0, 1, 'Non-Conference Game 1', 'home', 0, 18, 'Mississippi State Wins Series over Southern Miss in Walk-off Fashion', 'https://www.hailstateunis.com/2019-baseball/mississippi-state-wins-series-over-southern-miss-in-walk-off-fashion'),
(81, 2019, '2019-02-20', 'UAB', 'Win', 3, 2, 'Midweek', 'home', 0, 22, 'Mississippi State Wins Series over Southern Miss in Walk-off Fashion', 'https://www.hailstateunis.com/2019-baseball/mississippi-state-wins-series-over-southern-miss-in-walk-off-fashion'),
(82, 2019, '2019-02-16', 'Youngstown St.', 'Win', 14, 2, 'Non-Conference Game 2', 'home', 1, 21, 'Mississippi State Opens Completed Dudy Noble with Sweep of Youngstown State', 'https://www.hailstateunis.com/2019-baseball/mississippi-state-opens-completed-dudy-noble-with-sweep-of-youngstown-state'),
(83, 2019, '2019-02-16', 'Youngstown St.', 'Win', 8, 0, 'Non-Conference Game 3', 'home', 2, 21, 'Mississippi State Opens Completed Dudy Noble with Sweep of Youngstown State', 'https://www.hailstateunis.com/2019-baseball/mississippi-state-opens-completed-dudy-noble-with-sweep-of-youngstown-state'),
(84, 2019, '2019-02-15', 'Youngstown St.', 'Win', 14, 3, 'Non-Conference Game 1', 'home', 0, 18, 'Mississippi State Opens Completed Dudy Noble with Sweep of Youngstown State', 'https://www.hailstateunis.com/2019-baseball/mississippi-state-opens-completed-dudy-noble-with-sweep-of-youngstown-state'),
(85, 2018, '2018-06-16', 'Washington', 'Win', 1, 0, 'CWS Opening Game', 'ncaaCWS', 0, 32, '2018 College World Series: Mississippi State\'s Incredible Run Results in Third Place Finish', 'https://www.hailstateunis.com/2018-baseball-season/2018-college-world-series-mississippi-states-incredible-run-results-in-third-place-finish'),
(86, 2018, '2018-06-19', 'North Carolina', 'Win', 12, 2, 'CWS Winners Bracket Game', 'ncaaCWS', 0, 33, '2018 College World Series: Mississippi State\'s Incredible Run Results in Third Place Finish', 'https://www.hailstateunis.com/2018-baseball-season/2018-college-world-series-mississippi-states-incredible-run-results-in-third-place-finish'),
(87, 2018, '2018-06-22', 'Oregon State', 'Loss', 2, 12, 'CWS Bracket Championship Game', 'ncaaCWS', 0, 34, '2018 College World Series: Mississippi State\'s Incredible Run Results in Third Place Finish', 'https://www.hailstateunis.com/2018-baseball-season/2018-college-world-series-mississippi-states-incredible-run-results-in-third-place-finish'),
(88, 2018, '2018-06-23', 'Oregon State', 'Loss', 2, 5, 'CWS Bracket Championship Game 7', 'ncaaCWS', 0, 35, '2018 College World Series: Mississippi State\'s Incredible Run Results in Third Place Finish', 'https://www.hailstateunis.com/2018-baseball-season/2018-college-world-series-mississippi-states-incredible-run-results-in-third-place-finish'),
(93, 2018, '2018-06-10', 'Vanderbilt', 'Win', 10, 6, 'Nashville Super Regional Game 3', 'ncaaNashvilleSuper', 0, 28, 'Mississippi State Wins Super Regional at Vanderbilt', 'https://www.hailstateunis.com/2018-baseball-season/mississippi-state-wins-super-regional-at-vanderbilt'),
(94, 2018, '2018-06-09', 'Vanderbilt', 'Loss', 3, 4, 'Nashville Super Regional Game 2', 'ncaaNashvilleSuper', 0, 31, 'Mississippi State Wins Super Regional at Vanderbilt', 'https://www.hailstateunis.com/2018-baseball-season/mississippi-state-wins-super-regional-at-vanderbilt'),
(95, 2018, '2018-06-08', 'Vanderbilt', 'Win', 10, 8, 'Nashville Super Regional Game 1', 'ncaaNashvilleSuper', 0, 30, 'Mississippi State Wins Super Regional at Vanderbilt', 'https://www.hailstateunis.com/2018-baseball-season/mississippi-state-wins-super-regional-at-vanderbilt'),
(96, 2018, '2018-06-04', 'Oklahoma', 'Win', 8, 1, 'Tallahassee Regional Championship Game 7', 'ncaaTallahasseeRegional', 0, 29, 'Mississippi State wins 2018 Tallahassee Regional', 'https://www.hailstateunis.com/2018-baseball-season/mississippi-state-wins-2018-tallahassee-regional'),
(97, 2018, '2018-06-03', 'Samford', 'Win', 9, 8, 'Tallahassee Regional Elimination Game', 'ncaaTallahasseeRegional', 1, 23, 'Mississippi State wins 2018 Tallahassee Regional', 'https://www.hailstateunis.com/2018-baseball-season/mississippi-state-wins-2018-tallahassee-regional'),
(98, 2018, '2018-06-03', 'Oklahoma', 'Win', 13, 5, 'Tallahassee Regional Championship Game', 'ncaaTallahasseeRegional', 2, 28, 'Mississippi State wins 2018 Tallahassee Regional', 'https://www.hailstateunis.com/2018-baseball-season/mississippi-state-wins-2018-tallahassee-regional'),
(99, 2018, '2018-06-02', 'Florida State', 'Win', 3, 2, 'Tallahassee Regional Elimination Game', 'ncaaTallahasseeRegional', 0, 40, 'Mississippi State wins 2018 Tallahassee Regional', 'https://www.hailstateunis.com/2018-baseball-season/mississippi-state-wins-2018-tallahassee-regional'),
(100, 2018, '2018-06-01', 'Oklahoma', 'Loss', 10, 20, 'Tallahassee Regional Opening Game', 'ncaaTallahasseeRegional', 0, 27, 'Mississippi State wins 2018 Tallahassee Regional', 'https://www.hailstateunis.com/2018-baseball-season/mississippi-state-wins-2018-tallahassee-regional'),
(101, 2018, '2018-05-22', 'LSU', 'Loss', 5, 8, 'SECT Play-In Game', 'secT', 0, 37, 'State Drops 2018 SEC Tournament Opener to LSU', 'https://www.hailstateunis.com/2018-baseball-season/state-drops-2018-sec-tournament-opener-to-lsu'),
(102, 2018, '2018-05-19', 'Florida', 'Win', 13, 6, 'SEC Game 3', 'home', 0, 43, 'Mississippi State Sweeps #1 Florida', 'https://www.hailstateunis.com/2018-baseball-season/mississippi-state-sweeps-1-florida'),
(103, 2018, '2018-05-18', 'Florida', 'Win', 12, 4, 'SEC Game 2', 'home', 0, 36, 'Mississippi State Sweeps #1 Florida', 'https://www.hailstateunis.com/2018-baseball-season/mississippi-state-sweeps-1-florida'),
(104, 2018, '2018-05-17', 'Florida', 'Win', 6, 3, 'SEC Game 1', 'home', 0, 40, 'Mississippi State Sweeps #1 Florida', 'https://www.hailstateunis.com/2018-baseball-season/mississippi-state-sweeps-1-florida'),
(105, 2018, '2018-05-13', 'Kentucky', 'Win', 18, 8, 'SEC Game 3', 'road', 0, 43, 'State Beats Troy, Salvages One at Kentucky', 'https://www.hailstateunis.com/2018-baseball-season/may-13th-2018'),
(106, 2018, '2018-05-12', 'Kentucky', 'Loss', 1, 4, 'SEC Game 2', 'road', 0, 41, 'State Beats Troy, Salvages One at Kentucky', 'https://www.hailstateunis.com/2018-baseball-season/may-13th-2018'),
(107, 2018, '2018-05-11', 'Kentucky', 'Loss', 6, 9, 'SEC Game 1', 'road', 0, 36, 'State Beats Troy, Salvages One at Kentucky', 'https://www.hailstateunis.com/2018-baseball-season/may-13th-2018'),
(108, 2018, '2018-05-09', 'Troy', 'Win', 9, 8, 'Midweek', 'neutral', 0, 39, 'State Beats Troy, Salvages One at Kentucky', 'https://www.hailstateunis.com/2018-baseball-season/may-13th-2018'),
(109, 2018, '2018-05-06', 'Alabama', 'Win', 6, 4, 'SEC Game 3', 'road', 0, 43, 'Bulldogs Win Series at Alabama', 'https://www.hailstateunis.com/2018-baseball-season/bulldogs-win-series-at-alabama'),
(110, 2018, '2018-05-05', 'Alabama', 'Loss', 3, 4, 'SEC Game 2', 'road', 0, 41, 'Bulldogs Win Series at Alabama', 'https://www.hailstateunis.com/2018-baseball-season/bulldogs-win-series-at-alabama'),
(111, 2018, '2018-05-04', 'Alabama', 'Win', 14, 12, 'SEC Game 1', 'road', 0, 36, 'Bulldogs Win Series at Alabama', 'https://www.hailstateunis.com/2018-baseball-season/bulldogs-win-series-at-alabama'),
(112, 2018, '2018-04-29', 'Texas A&M', 'Loss', 4, 7, 'SEC Game 3', 'home', 0, 43, 'State Wins Governor\'s Cup, Wins One Against A&M', 'https://www.hailstateunis.com/2018-baseball-season/state-wins-governors-cup-wins-one-against-am'),
(113, 2018, '2018-04-28', 'Texas A&M', 'Win', 11, 6, 'SEC Game 2', 'home', 0, 40, 'State Wins Governor\'s Cup, Wins One Against A&M', 'https://www.hailstateunis.com/2018-baseball-season/state-wins-governors-cup-wins-one-against-am'),
(114, 2018, '2018-04-27', 'Texas A&M', 'Loss', 3, 6, 'SEC Game 1', 'home', 0, 36, 'State Wins Governor\'s Cup, Wins One Against A&M', 'https://www.hailstateunis.com/2018-baseball-season/state-wins-governors-cup-wins-one-against-am'),
(115, 2018, '2018-04-24', 'Ole Miss', 'Win', 7, 6, 'Midweek', 'neutral', 0, 39, 'State Wins Governor\'s Cup, Wins One Against A&M', 'https://www.hailstateunis.com/2018-baseball-season/state-wins-governors-cup-wins-one-against-am'),
(116, 2018, '2018-04-21', 'Arkansas', 'Win', 5, 3, 'SEC Game 2', 'home', 1, 40, 'Mississippi State Sweeps #3 Arkansas on SBW18', 'https://www.hailstateunis.com/2018-baseball-season/mississippi-state-sweeps-3-arkansas-on-sbw18'),
(117, 2018, '2018-04-21', 'Arkansas', 'Win', 7, 5, 'SEC Game 3', 'home', 2, 43, 'Mississippi State Sweeps #3 Arkansas on SBW18', 'https://www.hailstateunis.com/2018-baseball-season/mississippi-state-sweeps-3-arkansas-on-sbw18'),
(118, 2018, '2018-04-20', 'Arkansas', 'Win', 6, 5, 'SEC Game 1', 'home', 0, 36, 'Mississippi State Sweeps #3 Arkansas on SBW18', 'https://www.hailstateunis.com/2018-baseball-season/mississippi-state-sweeps-3-arkansas-on-sbw18'),
(119, 2018, '2018-04-18', 'Memphis', 'Loss', 1, 6, 'Midweek', 'road', 0, 41, 'Mississippi State Sweeps #3 Arkansas on SBW18', 'https://www.hailstateunis.com/2018-baseball-season/mississippi-state-sweeps-3-arkansas-on-sbw18'),
(120, 2018, '2018-04-15', 'Auburn', 'Loss', 5, 7, 'SEC Game 3', 'road', 0, 43, 'State Picks Up Two Wins in Gray Pins, Blows Lead in Black', 'https://www.hailstateunis.com/2018-baseball-season/state-picks-up-two-wins-in-gray-pins-blows-lead-in-black'),
(121, 2018, '2018-04-14', 'Auburn', 'Win', 7, 2, 'SEC Game 2', 'road', 0, 41, 'State Picks Up Two Wins in Gray Pins, Blows Lead in Black', 'https://www.hailstateunis.com/2018-baseball-season/state-picks-up-two-wins-in-gray-pins-blows-lead-in-black'),
(122, 2018, '2018-04-13', 'Auburn', 'Loss', 1, 2, 'SEC Game 1', 'road', 0, 36, 'State Picks Up Two Wins in Gray Pins, Blows Lead in Black', 'https://www.hailstateunis.com/2018-baseball-season/state-picks-up-two-wins-in-gray-pins-blows-lead-in-black'),
(123, 2018, '2018-04-11', 'Alabama State', 'Win', 15, 4, 'Midweek', 'neutral', 0, 41, 'State Picks Up Two Wins in Gray Pins, Blows Lead in Black', 'https://www.hailstateunis.com/2018-baseball-season/state-picks-up-two-wins-in-gray-pins-blows-lead-in-black'),
(124, 2018, '2018-04-08', 'Ole Miss', 'Win', 7, 5, 'SEC Game 3', 'home', 0, 43, 'Bulldogs Win Series Over #3 Ole Miss', 'https://www.hailstateunis.com/2018-baseball-season/bulldogs-win-series-over-3-ole-miss'),
(125, 2018, '2018-04-07', 'Ole Miss', 'Win', 13, 3, 'SEC Game 1', 'home', 1, 36, 'Bulldogs Win Series Over #3 Ole Miss', 'https://www.hailstateunis.com/2018-baseball-season/bulldogs-win-series-over-3-ole-miss'),
(126, 2018, '2018-04-07', 'Ole Miss', 'Loss', 1, 6, 'SEC Game 2', 'home', 2, 39, 'Bulldogs Win Series Over #3 Ole Miss', 'https://www.hailstateunis.com/2018-baseball-season/bulldogs-win-series-over-3-ole-miss'),
(127, 2018, '2018-04-04', 'Southern', 'Win', 5, 0, 'Midweek', 'home', 0, 38, 'Bulldogs Win Series Over #3 Ole Miss', 'https://www.hailstateunis.com/2018-baseball-season/bulldogs-win-series-over-3-ole-miss'),
(128, 2018, '2018-03-31', 'LSU', 'Loss', 0, 4, 'SEC Game 3', 'road', 0, 41, 'Bulldogs Take One at LSU in the Maroon 85s', 'https://www.hailstateunis.com/2018-baseball-season/bulldogs-take-one-at-lsu-in-the-maroon-85s'),
(129, 2018, '2018-03-30', 'LSU', 'Win', 4, 1, 'SEC Game 2', 'road', 0, 36, 'Bulldogs Take One at LSU in the Maroon 85s', 'https://www.hailstateunis.com/2018-baseball-season/bulldogs-take-one-at-lsu-in-the-maroon-85s'),
(130, 2018, '2018-03-29', 'LSU', 'Loss', 1, 10, 'SEC Game 1', 'road', 0, 37, 'Bulldogs Take One at LSU in the Maroon 85s', 'https://www.hailstateunis.com/2018-baseball-season/bulldogs-take-one-at-lsu-in-the-maroon-85s'),
(131, 2018, '2018-03-27', 'Nicholls State', 'Loss', 4, 7, 'Midweek', 'road', 0, 41, 'Bulldogs Take One at LSU in the Maroon 85s', 'https://www.hailstateunis.com/2018-baseball-season/bulldogs-take-one-at-lsu-in-the-maroon-85s'),
(132, 2018, '2018-03-25', 'Missouri', 'Loss', 4, 5, 'SEC Game 3', 'road', 0, 37, 'Bulldogs Debut Two New Combinations in Second Week of SEC Play', 'https://www.hailstateunis.com/2018-baseball-season/bulldogs-debut-two-new-combinations-in-second-week-of-sec-play'),
(133, 2018, '2018-03-24', 'Missouri', 'Win', 3, 1, 'SEC Game 2', 'road', 0, 41, 'Bulldogs Debut Two New Combinations in Second Week of SEC Play', 'https://www.hailstateunis.com/2018-baseball-season/bulldogs-debut-two-new-combinations-in-second-week-of-sec-play'),
(134, 2018, '2018-03-23', 'Missouri', 'Loss', 1, 4, 'SEC Game 1', 'road', 0, 36, 'Bulldogs Debut Two New Combinations in Second Week of SEC Play', 'https://www.hailstateunis.com/2018-baseball-season/bulldogs-debut-two-new-combinations-in-second-week-of-sec-play'),
(135, 2018, '2018-03-21', 'Texas Southern', 'Win', 11, 6, 'Midweek', 'home', 0, 40, 'Bulldogs Debut Two New Combinations in Second Week of SEC Play', 'https://www.hailstateunis.com/2018-baseball-season/bulldogs-debut-two-new-combinations-in-second-week-of-sec-play'),
(136, 2018, '2018-03-20', 'Alcorn State', 'Win', 17, 1, 'Midweek', 'home', 0, 38, 'Bulldogs Debut Two New Combinations in Second Week of SEC Play', 'https://www.hailstateunis.com/2018-baseball-season/bulldogs-debut-two-new-combinations-in-second-week-of-sec-play'),
(137, 2018, '2018-03-18', 'Vanderbilt', 'Loss', 3, 4, 'SEC Game 3', 'home', 0, 39, 'Bulldogs Stick to Classic Looks in SEC Opening Weekend', 'https://www.hailstateunis.com/2018-baseball-season/bulldogs-stick-to-classic-looks-in-sec-opening-weekend'),
(138, 2018, '2018-03-17', 'Vanderbilt', 'Loss', 1, 10, 'SEC Game 2', 'home', 0, 40, 'Bulldogs Stick to Classic Looks in SEC Opening Weekend', 'https://www.hailstateunis.com/2018-baseball-season/bulldogs-stick-to-classic-looks-in-sec-opening-weekend'),
(139, 2018, '2018-03-16', 'Vanderbilt', 'Loss', 0, 5, 'SEC Game 1', 'home', 0, 36, 'Bulldogs Stick to Classic Looks in SEC Opening Weekend', 'https://www.hailstateunis.com/2018-baseball-season/bulldogs-stick-to-classic-looks-in-sec-opening-weekend'),
(140, 2018, '2018-03-14', 'SE Louisiana', 'Loss', 5, 11, 'Midweek', 'neutral', 0, 40, 'Bulldogs Stick to Classic Looks in SEC Opening Weekend', 'https://www.hailstateunis.com/2018-baseball-season/bulldogs-stick-to-classic-looks-in-sec-opening-weekend'),
(141, 2018, '2018-03-11', 'Utah Valley', 'Win', 5, 3, 'Non-Conference Game 3', 'home', 0, 40, 'Mississippi State opens up New Dude with 4-Win Week', 'https://www.hailstateunis.com/2018-baseball-season/mississippi-state-opens-up-new-dude-with-4-win-week'),
(142, 2018, '2018-03-09', 'Utah Valley', 'Loss', 1, 2, 'Non-Conference Game 1', 'home', 1, 36, 'Mississippi State opens up New Dude with 4-Win Week', 'https://www.hailstateunis.com/2018-baseball-season/mississippi-state-opens-up-new-dude-with-4-win-week'),
(143, 2018, '2018-03-09', 'Utah Valley', 'Win', 4, 2, 'Non-Conference Game 2', 'home', 2, 39, 'Mississippi State opens up New Dude with 4-Win Week', 'https://www.hailstateunis.com/2018-baseball-season/mississippi-state-opens-up-new-dude-with-4-win-week'),
(144, 2018, '2018-03-07', 'New Mexico St.', 'Win', 6, 0, 'Midweek', 'home', 0, 43, 'Mississippi State opens up New Dude with 4-Win Week', 'https://www.hailstateunis.com/2018-baseball-season/mississippi-state-opens-up-new-dude-with-4-win-week'),
(145, 2018, '2018-03-06', 'New Mexico St.', 'Win', 9, 1, 'Midweek', 'home', 0, 40, 'Mississippi State opens up New Dude with 4-Win Week', 'https://www.hailstateunis.com/2018-baseball-season/mississippi-state-opens-up-new-dude-with-4-win-week'),
(147, 2018, '2018-03-04', 'Sam Houston St.', 'Win', 4, 1, 'Non-Conference Game 3', 'neutral', 0, 41, 'Mississippi State Sweeps Shriners College Classic', 'https://www.hailstateunis.com/2018-baseball-season/mississippi-state-sweeps-shriners-college-classic'),
(148, 2018, '2018-03-03', 'Houston', 'Win', 3, 2, 'Non-Conference Game 2', 'neutral', 0, 39, 'Mississippi State Sweeps Shriners College Classic', 'https://www.hailstateunis.com/2018-baseball-season/mississippi-state-sweeps-shriners-college-classic'),
(149, 2018, '2018-03-02', 'Louisiana', 'Win', 3, 1, 'Non-Conference Game 1', 'neutral', 0, 36, 'Mississippi State Sweeps Shriners College Classic', 'https://www.hailstateunis.com/2018-baseball-season/mississippi-state-sweeps-shriners-college-classic'),
(150, 2018, '2018-02-28', 'McNeese St.', 'Loss', 3, 6, 'Midweek', 'road', 0, 41, 'Mississippi State Sweeps Shriners College Classic', 'https://www.hailstateunis.com/2018-baseball-season/mississippi-state-sweeps-shriners-college-classic'),
(151, 2018, '2018-02-26', 'UTRGV', 'CNLD', 4, 0, 'Midweek', 'road', 0, 41, 'Mississippi State Sweeps Shriners College Classic', 'https://www.hailstateunis.com/2018-baseball-season/mississippi-state-sweeps-shriners-college-classic'),
(152, 2018, '2018-02-25', 'TAMU CC', 'Loss', 3, 6, 'Non-Conference Game 3', 'road', 0, 42, 'First Week of Road Trip sees Season Debut of Gray Pins, Black 85s', 'https://www.hailstateunis.com/2018-baseball-season/first-week-of-road-trip-sees-season-debut-of-gray-pins-black-85s'),
(153, 2018, '2018-02-24', 'Nicholls State', 'Win', 14, 4, 'Non-Conference Game 2', 'neutral', 0, 39, 'First Week of Road Trip sees Season Debut of Gray Pins, Black 85s', 'https://www.hailstateunis.com/2018-baseball-season/first-week-of-road-trip-sees-season-debut-of-gray-pins-black-85s'),
(154, 2018, '2018-02-23', 'UCSB', 'Win', 7, 4, 'Non-Conference Game 1', 'neutral', 0, 36, 'First Week of Road Trip sees Season Debut of Gray Pins, Black 85s', 'https://www.hailstateunis.com/2018-baseball-season/first-week-of-road-trip-sees-season-debut-of-gray-pins-black-85s'),
(155, 2018, '2018-02-21', 'Jackson State', 'Win', 12, 1, 'Midweek', 'road', 0, 41, 'First Week of Road Trip sees Season Debut of Gray Pins, Black 85s', 'https://www.hailstateunis.com/2018-baseball-season/first-week-of-road-trip-sees-season-debut-of-gray-pins-black-85s'),
(156, 2018, '2018-02-18', 'Southern Miss', 'Loss', 2, 5, 'Non-Conference Game 3', 'road', 0, 39, 'New 85-Style Jerseys Make Debut in Opening Weekend Series at Southern Miss', 'https://www.hailstateunis.com/2018-baseball-season/new-85-style-jerseys-make-debut-in-opening-weekend-series-at-southern-miss'),
(157, 2018, '2018-02-17', 'Southern Miss', 'Loss', 4, 7, 'Non-Conference Game 2', 'road', 0, 36, 'New 85-Style Jerseys Make Debut in Opening Weekend Series at Southern Miss', 'https://www.hailstateunis.com/2018-baseball-season/new-85-style-jerseys-make-debut-in-opening-weekend-series-at-southern-miss'),
(158, 2018, '2018-02-16', 'Southern Miss', 'Loss', 0, 11, 'Non-Conference Game 1', 'road', 0, 36, 'New 85-Style Jerseys Make Debut in Opening Weekend Series at Southern Miss', 'https://www.hailstateunis.com/2018-baseball-season/new-85-style-jerseys-make-debut-in-opening-weekend-series-at-southern-miss'),
(159, 2017, '2017-06-11', 'LSU', 'Loss', 4, 14, 'Baton Rouge Super Regional Game 2', 'ncaaBatonRougeSuper', 0, 51, '2017 Season Ends At Baton Rouge Super Regional', 'https://www.hailstateunis.com/2017-baseball-season/2017-season-ends-at-baton-rouge-super-regional'),
(160, 2017, '2017-06-10', 'LSU', 'Loss', 3, 4, 'Baton Rouge Super Regional Game 1', 'ncaaBatonRougeSuper', 0, 50, '2017 Season Ends At Baton Rouge Super Regional', 'https://www.hailstateunis.com/2017-baseball-season/2017-season-ends-at-baton-rouge-super-regional'),
(161, 2017, '2017-06-05', 'Southern Miss', 'Win', 8, 1, 'Hattiesburg Regional Championship Game', 'ncaaHattiesburgRegional', 1, 48, 'Bulldogs Win Four Games in Two Days to Win Hattiesburg Regional', 'https://www.hailstateunis.com/2017-baseball-season/bulldogs-win-four-games-in-two-days-to-win-hattiesburg-regional'),
(162, 2017, '2017-06-05', 'Southern Miss', 'Win', 8, 6, 'Hattiesburg Regional Championship Game 7', 'ncaaHattiesburgRegional', 2, 49, 'Bulldogs Win Four Games in Two Days to Win Hattiesburg Regional', 'https://www.hailstateunis.com/2017-baseball-season/bulldogs-win-four-games-in-two-days-to-win-hattiesburg-regional'),
(163, 2017, '2017-06-04', 'Illinois-Chicago', 'Win', 5, 4, 'Hattiesburg Regional Elimination Game', 'ncaaHattiesburgRegional', 1, 45, 'Bulldogs Win Four Games in Two Days to Win Hattiesburg Regional', 'https://www.hailstateunis.com/2017-baseball-season/bulldogs-win-four-games-in-two-days-to-win-hattiesburg-regional'),
(164, 2017, '2017-06-04', 'South Alabama', 'Win', 7, 3, 'Hattiesburg Regional Elimination Game', 'ncaaHattiesburgRegional', 2, 47, 'Bulldogs Win Four Games in Two Days to Win Hattiesburg Regional', 'https://www.hailstateunis.com/2017-baseball-season/bulldogs-win-four-games-in-two-days-to-win-hattiesburg-regional'),
(165, 2017, '2017-06-02', 'South Alabama', 'Loss', 3, 6, 'Hattiesburg Regional Opening Game', 'ncaaHattiesburgRegional', 0, 52, 'Bulldogs Win Four Games in Two Days to Win Hattiesburg Regional', 'https://www.hailstateunis.com/2017-baseball-season/bulldogs-win-four-games-in-two-days-to-win-hattiesburg-regional'),
(166, 2017, '2017-05-26', 'Florida', 'Loss', 3, 12, 'SECT Winners Bracket Game', 'secT', 1, 46, '2017 SEC Baseball Tournament', 'https://www.hailstateunis.com/2017-baseball-season/2017-sec-baseball-tournament'),
(167, 2017, '2017-05-26', 'Arkansas', 'Loss', 2, 9, 'SECT Elimination Game', 'secT', 2, 52, '2017 SEC Baseball Tournament', 'https://www.hailstateunis.com/2017-baseball-season/2017-sec-baseball-tournament'),
(168, 2017, '2017-05-25', 'Arkansas', 'Win', 4, 3, 'SECT Bracket Game 1', 'secT', 0, 44, '2017 SEC Baseball Tournament', 'https://www.hailstateunis.com/2017-baseball-season/2017-sec-baseball-tournament'),
(169, 2017, '2017-05-24', 'Georgia', 'Win', 3, 0, 'SECT Play-In Game', 'secT', 0, 45, '2017 SEC Baseball Tournament', 'https://www.hailstateunis.com/2017-baseball-season/2017-sec-baseball-tournament'),
(170, 2017, '2017-05-20', 'LSU', 'Loss', 7, 11, 'SEC Game 3', 'home', 0, 55, 'Final Series in the Old Dudy Noble Field', 'https://www.hailstateunis.com/2017-baseball-season/final-series-in-the-old-dudy-noble-field'),
(171, 2017, '2017-05-19', 'LSU', 'Loss', 5, 11, 'SEC Game 2', 'home', 0, 52, 'Final Series in the Old Dudy Noble Field', 'https://www.hailstateunis.com/2017-baseball-season/final-series-in-the-old-dudy-noble-field'),
(172, 2017, '2017-05-18', 'LSU', 'Loss', 1, 3, 'SEC Game 1', 'home', 0, 52, 'Final Series in the Old Dudy Noble Field', 'https://www.hailstateunis.com/2017-baseball-season/final-series-in-the-old-dudy-noble-field'),
(173, 2017, '2017-05-16', 'Troy', 'Win', 10, 8, 'Midweek', 'home', 0, 56, 'Final Series in the Old Dudy Noble Field', 'https://www.hailstateunis.com/2017-baseball-season/final-series-in-the-old-dudy-noble-field'),
(174, 2017, '2017-05-14', 'Georgia', 'Loss', 1, 4, 'SEC Game 3', 'road', 0, 52, 'Series Loss in Athens', 'https://www.hailstateunis.com/2017-baseball-season/series-loss-in-athens'),
(175, 2017, '2017-05-13', 'Georgia', 'Loss', 1, 4, 'SEC Game 2', 'road', 0, 57, 'Series Loss in Athens', 'https://www.hailstateunis.com/2017-baseball-season/series-loss-in-athens'),
(176, 2017, '2017-05-12', 'Georgia', 'Win', 9, 3, 'SEC Game 1', 'road', 0, 52, 'Series Loss in Athens', 'https://www.hailstateunis.com/2017-baseball-season/series-loss-in-athens'),
(1669, 2017, '2017-05-06', 'Texas A&M', 'Win', 4, 3, 'SEC Game 3', 'road', 0, 57, 'Series Win over Texas A&M in College Station', 'https://www.hailstateunis.com/2017-baseball-season/series-win-over-texas-am-in-college-station'),
(1670, 2017, '2017-05-05', 'Texas A&M', 'Win', 5, 1, 'SEC Game 2', 'road', 0, 52, 'Series Win over Texas A&M in College Station', 'https://www.hailstateunis.com/2017-baseball-season/series-win-over-texas-am-in-college-station'),
(1671, 2017, '2017-05-04', 'Texas A&M', 'Loss', 2, 9, 'SEC Game 1', 'road', 0, 52, 'Series Win over Texas A&M in College Station', 'https://www.hailstateunis.com/2017-baseball-season/series-win-over-texas-am-in-college-station'),
(1672, 2017, '2017-04-29', 'Auburn', 'Loss', 3, 5, 'SEC Game 3', 'home', 2, 52, 'Governor\'s Cup Win; Series Loss to Auburn', 'https://www.hailstateunis.com/2017-baseball-season/governors-cup-and-top-10-matchup-with-auburn'),
(1673, 2017, '2017-04-29', 'Auburn', 'Loss', 8, 17, 'SEC Game 2', 'home', 1, 56, 'Governor\'s Cup Win; Series Loss to Auburn', 'https://www.hailstateunis.com/2017-baseball-season/governors-cup-and-top-10-matchup-with-auburn'),
(1674, 2017, '2017-04-28', 'Auburn', 'Win', 5, 2, 'SEC Game 1', 'home', 0, 52, 'Governor\'s Cup Win; Series Loss to Auburn', 'https://www.hailstateunis.com/2017-baseball-season/governors-cup-and-top-10-matchup-with-auburn'),
(1675, 2017, '2017-04-25', 'Ole Miss', 'Win', 4, 2, 'Midweek', 'neutral', 0, 52, 'Governor\'s Cup Win; Series Loss to Auburn', 'https://www.hailstateunis.com/2017-baseball-season/governors-cup-and-top-10-matchup-with-auburn'),
(1676, 2017, '2017-04-21', 'Alabama', 'Win', 13, 12, 'SEC Game 3', 'home', 2, 53, 'Sweep of Alabama Completed Early Saturday Morning', 'https://www.hailstateunis.com/2017-baseball-season/weekend-series-vs-alabama'),
(1677, 2017, '2017-04-21', 'Alabama', 'Win', 4, 3, 'SEC Game 2', 'home', 1, 52, 'Sweep of Alabama Completed Early Saturday Morning', 'https://www.hailstateunis.com/2017-baseball-season/weekend-series-vs-alabama'),
(1678, 2017, '2017-04-20', 'Alabama', 'Win', 6, 5, 'SEC Game 1', 'home', 0, 52, 'Sweep of Alabama Completed Early Saturday Morning', 'https://www.hailstateunis.com/2017-baseball-season/weekend-series-vs-alabama'),
(1679, 2017, '2017-04-18', 'South Alabama', 'Loss', 2, 5, 'Midweek', 'road', 0, 57, 'Sweep of Alabama Completed Early Saturday Morning', 'https://www.hailstateunis.com/2017-baseball-season/weekend-series-vs-alabama'),
(1680, 2017, '2017-04-16', 'South Carolina', 'Loss', 1, 6, 'SEC Game 3', 'road', 0, 57, 'Easter Weekend 2017: Series Win at South Carolina', 'https://www.hailstateunis.com/2017-baseball-season/easter-weekend-2017'),
(1681, 2017, '2017-04-15', 'South Carolina', 'Win', 5, 4, 'SEC Game 2', 'road', 0, 52, 'Easter Weekend 2017: Series Win at South Carolina', 'https://www.hailstateunis.com/2017-baseball-season/easter-weekend-2017'),
(1682, 2017, '2017-04-14', 'South Carolina', 'Win', 7, 4, 'SEC Game 1', 'road', 0, 52, 'Easter Weekend 2017: Series Win at South Carolina', 'https://www.hailstateunis.com/2017-baseball-season/easter-weekend-2017'),
(1683, 2017, '2017-04-11', 'MS Valley State', 'Win', 5, 0, 'Midweek', 'home', 0, 53, 'Easter Weekend 2017: Series Win at South Carolina', 'https://www.hailstateunis.com/2017-baseball-season/easter-weekend-2017'),
(1684, 2017, '2017-04-09', 'Kentucky', 'Win', 10, 6, 'SEC Game 3', 'home', 0, 55, 'Super Bulldog Weekend 2017: Series Win over Kentucky', 'https://www.hailstateunis.com/2017-baseball-season/super-bulldog-weekend-2017'),
(1685, 2017, '2017-04-08', 'Kentucky', 'Win', 10, 6, 'SEC Game 2', 'home', 0, 56, 'Super Bulldog Weekend 2017: Series Win over Kentucky', 'https://www.hailstateunis.com/2017-baseball-season/super-bulldog-weekend-2017'),
(1686, 2017, '2017-04-07', 'Kentucky', 'Loss', 2, 5, 'SEC Game 1', 'home', 0, 52, 'Super Bulldog Weekend 2017: Series Win over Kentucky', 'https://www.hailstateunis.com/2017-baseball-season/super-bulldog-weekend-2017'),
(1687, 2017, '2017-04-05', 'FIU', 'Win', 9, 7, 'Midweek', 'home', 0, 52, 'Super Bulldog Weekend 2017: Series Win over Kentucky', 'https://www.hailstateunis.com/2017-baseball-season/super-bulldog-weekend-2017'),
(1688, 2017, '2017-04-04', 'FIU', 'Loss', 3, 8, 'Midweek', 'home', 0, 56, 'Super Bulldog Weekend 2017: Series Win over Kentucky', 'https://www.hailstateunis.com/2017-baseball-season/super-bulldog-weekend-2017'),
(1689, 2017, '2017-04-01', 'Ole Miss', 'Win', 2, 1, 'SEC Game 3', 'home', 0, 52, 'A Win at Memphis and a SWEEP at Ole Miss', 'https://www.hailstateunis.com/2017-baseball-season/on-the-road-at-memphis-and-ole-miss'),
(1690, 2017, '2017-03-31', 'Ole Miss', 'Win', 5, 3, 'SEC Game 2', 'home', 0, 52, 'A Win at Memphis and a SWEEP at Ole Miss', 'https://www.hailstateunis.com/2017-baseball-season/on-the-road-at-memphis-and-ole-miss'),
(1691, 2017, '2017-03-30', 'Ole Miss', 'Win', 4, 3, 'SEC Game 1', 'home', 0, 57, 'A Win at Memphis and a SWEEP at Ole Miss', 'https://www.hailstateunis.com/2017-baseball-season/on-the-road-at-memphis-and-ole-miss'),
(1692, 2017, '2017-03-28', 'Memphis', 'Win', 8, 3, 'Midweek', 'road', 0, 52, 'A Win at Memphis and a SWEEP at Ole Miss', 'https://www.hailstateunis.com/2017-baseball-season/on-the-road-at-memphis-and-ole-miss'),
(1693, 2017, '2017-03-26', 'Tennessee', 'Win', 7, 4, 'SEC Game 3', 'home', 0, 55, 'Series Sweep of Tennessee', 'https://www.hailstateunis.com/2017-baseball-season/home-sec-opener'),
(1694, 2017, '2017-03-25', 'Tennessee', 'Win', 14, 4, 'SEC Game 2', 'home', 0, 56, 'Series Sweep of Tennessee', 'https://www.hailstateunis.com/2017-baseball-season/home-sec-opener'),
(1695, 2017, '2017-03-24', 'Tennessee', 'Win', 5, 4, 'SEC Game 1', 'home', 0, 52, 'Series Sweep of Tennessee', 'https://www.hailstateunis.com/2017-baseball-season/home-sec-opener'),
(1696, 2017, '2017-03-21', 'Southern Miss', 'Loss', 5, 7, 'Midweek', 'neutral', 0, 53, 'Series Sweep of Tennessee', 'https://www.hailstateunis.com/2017-baseball-season/home-sec-opener'),
(1697, 2017, '2017-03-19', 'Arkansas', 'Loss', 1, 6, 'SEC Game 3', 'road', 0, 57, 'SEC Opening Weekend', 'https://www.hailstateunis.com/2017-baseball-season/first-weekend-of-sec-play'),
(1698, 2017, '2017-03-18', 'Arkansas', 'Loss', 4, 5, 'SEC Game 2', 'road', 0, 57, 'SEC Opening Weekend', 'https://www.hailstateunis.com/2017-baseball-season/first-weekend-of-sec-play'),
(1699, 2017, '2017-03-17', 'Arkansas', 'Loss', 1, 3, 'SEC Game 1', 'road', 0, 54, 'SEC Opening Weekend', 'https://www.hailstateunis.com/2017-baseball-season/first-weekend-of-sec-play'),
(1700, 2017, '2017-03-14', 'Pine Bluff', 'Win', 11, 8, 'Midweek', 'home', 0, 53, 'SEC Opening Weekend', 'https://www.hailstateunis.com/2017-baseball-season/first-weekend-of-sec-play'),
(1701, 2017, '2017-03-13', 'Columbia', 'Win', 11, 8, 'Non-Conference Game 4', 'home', 0, 55, 'Final Weekend of Non-Conference Play', 'https://www.hailstateunis.com/2017-baseball-season/final-weekend-of-non-conference-play');
INSERT INTO `game` (`gameID`, `yr`, `gameday`, `opponentName`, `result`, `points_for`, `points_against`, `type`, `location`, `dh`, `uniformID`, `article_title`, `article_link`) VALUES
(1702, 2017, '2017-03-12', 'South Alabama', 'Win', 8, 6, 'Non-Conference Game 3', 'home', 2, 53, 'Final Weekend of Non-Conference Play', 'https://www.hailstateunis.com/2017-baseball-season/final-weekend-of-non-conference-play'),
(1703, 2017, '2017-03-12', 'Columbia', 'Win', 5, 4, 'Non-Conference Game 2', 'home', 1, 56, 'Final Weekend of Non-Conference Play', 'https://www.hailstateunis.com/2017-baseball-season/final-weekend-of-non-conference-play'),
(1704, 2017, '2017-03-10', 'South Alabama', 'Win', 2, 0, 'Non-Conference Game 1', 'home', 0, 52, 'Final Weekend of Non-Conference Play', 'https://www.hailstateunis.com/2017-baseball-season/final-weekend-of-non-conference-play'),
(1705, 2017, '2017-03-07', 'Louisiana Tech', 'Loss', 2, 3, 'Midweek', 'home', 0, 52, 'Final Weekend of Non-Conference Play', 'https://www.hailstateunis.com/2017-baseball-season/final-weekend-of-non-conference-play'),
(1706, 2017, '2017-03-05', 'Oregon', 'Loss', 5, 6, 'Non-Conference Game 3', 'road', 0, 57, 'Gray Pinstripes Make Season Debut in Series at Oregon', 'https://www.hailstateunis.com/2017-baseball-season/weekend-series-at-oregon'),
(1707, 2017, '2017-03-04', 'Oregon', 'Win', 5, 4, 'Non-Conference Game 2', 'road', 0, 57, 'Gray Pinstripes Make Season Debut in Series at Oregon', 'https://www.hailstateunis.com/2017-baseball-season/weekend-series-at-oregon'),
(1708, 2017, '2017-03-03', 'Oregon', 'Loss', 0, 1, 'Non-Conference Game 1', 'road', 0, 54, 'Gray Pinstripes Make Season Debut in Series at Oregon', 'https://www.hailstateunis.com/2017-baseball-season/weekend-series-at-oregon'),
(1709, 2017, '2017-02-26', 'Marist', 'Loss', 8, 9, 'Non-Conference Game 4', 'home', 0, 55, 'Week Two 2017: Still Undefeated in Pinstripes', 'https://www.hailstateunis.com/2017-baseball-season/week-two-2017'),
(1710, 2017, '2017-02-25', 'Indiana State', 'Win', 9, 1, 'Non-Conference Game 3', 'home', 2, 53, 'Week Two 2017: Still Undefeated in Pinstripes', 'https://www.hailstateunis.com/2017-baseball-season/week-two-2017'),
(1711, 2017, '2017-02-25', 'Marist', 'Win', 12, 4, 'Non-Conference Game 2', 'home', 1, 56, 'Week Two 2017: Still Undefeated in Pinstripes', 'https://www.hailstateunis.com/2017-baseball-season/week-two-2017'),
(1712, 2017, '2017-02-24', 'Indiana State', 'Win', 11, 6, 'Non-Conference Game 1', 'home', 0, 52, 'Week Two 2017: Still Undefeated in Pinstripes', 'https://www.hailstateunis.com/2017-baseball-season/week-two-2017'),
(1713, 2017, '2017-02-21', 'Morehead State', 'Loss', 8, 13, 'Midweek', 'home', 0, 52, 'Week Two 2017: Still Undefeated in Pinstripes', 'https://www.hailstateunis.com/2017-baseball-season/week-two-2017'),
(1714, 2017, '2017-02-19', 'Texas Tech', 'Win', 8, 5, 'Non-Conference Game 4', 'home', 2, 56, 'Opening Weekend 2017', 'https://www.hailstateunis.com/2017-baseball-season/opening-weekend-2017'),
(1715, 2017, '2017-02-19', 'Western Illinois', 'Win', 10, 9, 'Non-Conference Game 3', 'home', 1, 53, 'Opening Weekend 2017', 'https://www.hailstateunis.com/2017-baseball-season/opening-weekend-2017'),
(1716, 2017, '2017-02-18', 'Western Illinois', 'Win', 8, 2, 'Non-Conference Game 2', 'home', 0, 56, 'Opening Weekend 2017', 'https://www.hailstateunis.com/2017-baseball-season/opening-weekend-2017'),
(1717, 2017, '2017-02-17', 'Texas Tech', 'Loss', 2, 5, 'Non-Conference Game 1', 'home', 0, 52, 'Opening Weekend 2017', 'https://www.hailstateunis.com/2017-baseball-season/opening-weekend-2017');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`gameID`,`uniformID`),
  ADD KEY `yr` (`yr`),
  ADD KEY `opponentName` (`opponentName`),
  ADD KEY `uniformID` (`uniformID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `game`
--
ALTER TABLE `game`
  MODIFY `gameID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1718;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `game`
--
ALTER TABLE `game`
  ADD CONSTRAINT `game_ibfk_1` FOREIGN KEY (`yr`) REFERENCES `season` (`yr`),
  ADD CONSTRAINT `game_ibfk_2` FOREIGN KEY (`opponentName`) REFERENCES `opponent` (`opponentName`),
  ADD CONSTRAINT `game_ibfk_3` FOREIGN KEY (`uniformID`) REFERENCES `uniform` (`uniformID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
