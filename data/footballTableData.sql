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