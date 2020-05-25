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

CREATE DATABASE baseballTableData;
use baseballTableData;

CREATE TABLE season (yr YEAR,
					 head_coach VARCHAR(30),
					 wins INTEGER,
					 losses INTEGER,
					 sec_wins INTEGER,
					 sec_losses INTEGER,
					 PRIMARY KEY (yr, head_coach));

CREATE TABLE hat (hatID INTEGER NOT NULL AUTO_INCREMENT,
				  hName VARCHAR(50),
				  hColor VARCHAR(30),
				  PRIMARY KEY (hatID));
					 
CREATE TABLE jersey (jerseyID INTEGER NOT NULL AUTO_INCREMENT,
					 jName VARCHAR(50),
				     jColor VARCHAR(30),
					 jType VARCHAR(30),
					 jAttribute VARCHAR(30),
					 PRIMARY KEY (jerseyID));

CREATE TABLE uniform (uniformID INTEGER NOT NULL AUTO_INCREMENT,
					  hatID INTEGER,
					  jerseyID INTEGER,
					  pantsColor VARCHAR(30),
					  uName VARCHAR(100),
					  uImage VARCHAR(100),
					  PRIMARY KEY (uniformID),
					  FOREIGN KEY (hatID) REFERENCES hat(hatID),
					  FOREIGN KEY (jerseyID) REFERENCES jersey(jerseyID));
						  
CREATE TABLE opponent (opponentName VARCHAR(30),
					   conference VARCHAR(30),
					   colorA VARCHAR(30),
					   colorB VARCHAR(30),
					   PRIMARY KEY (opponentName));				 
						
CREATE TABLE game (gameID INTEGER NOT NULL AUTO_INCREMENT,
				   yr YEAR,
				   gameday DATE,
				   opponentName VARCHAR(30),
				   result VARCHAR(10),
				   points_for INTEGER,
				   points_against INTEGER,
				   type VARCHAR(50),
				   location VARCHAR(30),
				   dh boolean not null default 0,
				   uniformID INTEGER,
				   article_title VARCHAR(100),
				   article_link VARCHAR(200),
				   PRIMARY KEY (gameID, uniformID),
				   FOREIGN KEY (yr) REFERENCES season(yr),
				   FOREIGN KEY (opponentName) REFERENCES opponent(opponentName),
				   FOREIGN KEY (uniformID) REFERENCES uniform(uniformID));