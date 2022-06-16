DROP DATABASE IF EXISTS hotel;

CREATE DATABASE hotel;

USE hotel;

CREATE TABLE station(station_num INT AUTO_INCREMENT,station_nom VARCHAR(50),PRIMARY KEY(station_num));

CREATE TABLE client
