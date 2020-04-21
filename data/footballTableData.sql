-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2020 at 9:00 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE footballTableData;
use footballTableData;

CREATE TABLE season (yr YEAR,
					 head_coach VARCHAR(30),
					 wins INTEGER,
					 losses INTEGER,
					 sec_wins INTEGER,
					 sec_losses INTEGER,
					 PRIMARY KEY (yr));

CREATE TABLE pants (pantsID INTEGER,
				    pColor VARCHAR(30),
					pName VARCHAR(50),
					pImage VARCHAR(100),
					PRIMARY KEY (pantsID));
					 
CREATE TABLE jersey (jerseyID INTEGER,
				     jColor VARCHAR(30),
					 jName VARCHAR(50),
					 jImage VARCHAR(100),
					 PRIMARY KEY (jerseyID));
					 
CREATE TABLE helmet (helmetID INTEGER,
				     hColor VARCHAR(30),
					 hName VARCHAR(50),
					 hImage VARCHAR(100),
					 PRIMARY KEY (helmetID));
					 
CREATE TABLE combination (comboID INTEGER,
						  helmetID INTEGER,
						  jerseyID INTEGER,
						  pantsID INTEGER,
						  cName VARCHAR(100),
						  cImage VARCHAR(100),
						  PRIMARY KEY (comboID, helmetID, jerseyID, pantsID),
						  FOREIGN KEY (helmetID) REFERENCES helmet(helmetID),
						  FOREIGN KEY (jerseyID) REFERENCES jersey(jerseyID),
						  FOREIGN KEY (pantsID) REFERENCES pants(pantsID));
						  
CREATE TABLE opponent (opponentName VARCHAR(30),
					   conference VARCHAR(30),
					   colorA VARCHAR(30),
					   colorB VARCHAR(30),
					   PRIMARY KEY (opponentName));				 
						
CREATE TABLE game (gameID INTEGER,
				   yr YEAR,
				   gameday DATE,
				   opponentName VARCHAR(30),
				   result VARCHAR(10),
				   points_for INTEGER,
				   points_against INTEGER,
				   location VARCHAR(30),
				   comboID INTEGER,
				   away_helmet VARCHAR(100),
				   home_helmet VARCHAR(100),
				   article_title VARCHAR(100),
				   article_link VARCHAR(200),
				   PRIMARY KEY (gameID, comboID),
				   FOREIGN KEY (yr) REFERENCES season(yr),
				   FOREIGN KEY (opponentName) REFERENCES opponent(opponentName),
				   FOREIGN KEY (comboID) REFERENCES combination(comboID));
				   
INSERT INTO season VALUES (2019, "Joe Moorhead", 6, 7, 3, 5),
                          (2018, "Joe Moorhead", 8, 5, 4, 4);
                          
INSERT INTO pants VALUES (0, "white", "2018 white pants", "https://i.imgur.com/dkJhhDM.png"),
                         (1, "maroon", "2019 egg bowl maroon pants", "https://i.imgur.com/T6jyMsS.png"),
                         (2, "black", "2019 black pants", "https://i.imgur.com/cr4poRg.png"),
                         (3, "gray", "2018 gray pants", "https://i.imgur.com/0JP9hTZ.png"),
						 (4, "maroon", "2018 maroon pants", "https://i.imgur.com/lDKdXnQ.png");
                         
INSERT INTO jersey VALUES (0, "white", "2018 white jerseys (2019 music city bowl)", "https://i.imgur.com/ES8nEBZ.png"),
                          (1, "maroon", "2019 egg bowl maroon jerseys", "https://i.imgur.com/koCSDsu.png"),
                          (2, "black", "2019 black jerseys", "https://i.imgur.com/cr4poRg.png"),
                          (3, "white", "2018 white jerseys", "https://i.imgur.com/krxdYFC.png"),
						  (4, "maroon", "2018 maroon jerseys", "https://i.imgur.com/CFzyVOJ.png");
                           
INSERT INTO helmet VALUES (0, "white", "2015 white helmets", "https://i.imgur.com/QtfoPxR.png"),
                          (1, "maroon", "2019 egg bowl shiny maroon helmets", "https://i.imgur.com/ZTaHA2V.png"),
                          (2, "matte maroon", "2019 matte maroon helmets", "https://i.imgur.com/MArQmOA.png");

INSERT INTO combination VALUES (0, 0, 0, 0, "2019 music city bowl all-white white/white/white", "https://i.imgur.com/wqrm00g.png"),
							   (1, 1, 1, 1, "2019 egg bowl gold-accented alternates monochrome maroon maroon/maroon/maroon", "https://i.imgur.com/uzDK2Xp.png"),
							   (2, 2, 2, 2, "2019 tk martin alternate all-black mattemaroon/black/black", "https://i.imgur.com/pc9o2VZ.png"),
							   (3, 0, 3, 3, "2018 white/white/gray", "https://i.imgur.com/SGsJUBK.png")
							   (4, 2, 4, 4, "2019 monochrome maroon mattemaroon/maroon/maroon", "https://i.imgur.com/lBCsKm6.png");
							   
INSERT INTO opponent VALUES ("Louisville", "ACC", "#ca0e33", "white"),
							("Ole Miss", "SEC West", "#0e2143", "#d2233a"),
							("Abilene Christian", "FCS", "#42216e", "white"),
							("Alabama", "SEC West", "#91002a", "white");
                          
INSERT INTO game VALUES (0,
						2019,
						"2019-12-30",
						"Louisville",
						"Loss",
						28,
						38,
						"bowl",
						0,
						"https://i.imgur.com/vfNgKFa.png",
						"https://i.imgur.com/EIvD24X.png",
						"Bulldogs Lose Music City Bowl in All-White",
						"https://www.hailstateunis.com/2019-football-season/bulldogs-lose-music-city-bowl-in-all-white"),
						(1,
						2019,
						"2019-11-28",
						"Ole Miss",
						"Win",
						21,
						20,
						"home",
						1,
						"https://i.imgur.com/nd7Wt3F.png",
						"https://i.imgur.com/pesYlPp.png",
						"Mississippi State Brings Back the Gold, Beats Ole Miss to Keep the Egg",
						"https://www.hailstateunis.com/2019-football-season/mississippi-state-brings-back-the-gold-beats-ole-miss-to-keep-the-egg"),
						(2,
						2019,
						"2019-11-23",
						"Abilene Christian",
						"Win",
						45,
						7,
						"home",
						2,
						"https://i.imgur.com/EkdNwaH.png",
						"https://i.imgur.com/OpZFWyU.png",
						"Bulldogs Win Big on Homecoming in All-Black",
						"https://www.hailstateunis.com/2019-football-season/bulldogs-win-big-on-homecoming-in-all-black"),
						(3,
						2018,
						"2018-11-22",
						"Ole Miss",
						"Win",
						35,
						3,
						"road",
						3,
						"https://i.imgur.com/vfNgKFa.png",
						"https://i.imgur.com/asImcGN.png",
						"Bulldogs Steamroll Ole Miss, Win Back the Egg in White Helmets and Gray Pants",
						"https://www.hailstateunis.com/2018-football-season/bulldogs-steamroll-ole-miss-win-back-the-egg-in-white-helmets-and-gray-pants"),
						(4,
						2019,
						"2019-11-16",
						"Alabama",
						"Loss",
						7,
						38,
						"road",
						4,
						"https://i.imgur.com/XPXvwhq.png",
						"https://i.imgur.com/OpZFWyU.png",
						"State Falls to Alabama in All-Maroon",
						"https://www.hailstateunis.com/2019-football-season/state-falls-to-alabama-in-all-maroon");