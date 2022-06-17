DROP DATABASE IF EXISTS hotel;

CREATE DATABASE hotel;

USE hotel;

CREATE TABLE station(station_num INT AUTO_INCREMENT,station_nom VARCHAR(50),PRIMARY KEY(station_num));

CREATE TABLE client(client_num INT AUTO_INCREMENT,client_nom VARCHAR(50),client_prenom VARCHAR(50),client_adresse VARCHAR(50),PRIMARY KEY(client_num));

CREATE TABLE hotel(hotel_num INT AUTO_INCREMENT,hotel_nom VARCHAR(50),hotel_categorie INT,hotel_capacite INT,hotel_adresse VARCHAR(50),station_num INT,PRIMARY KEY(hotel_num),FOREIGN KEY(station_num) REFERENCES station(station_num));

CREATE TABLE chambre(chambre_num INT AUTO_INCREMENT,chambre_type INT,chambre_capacite INT,chambre_confort INT,chambre_exposition VARCHAR(10),hotel_num INT, PRIMARY KEY(chambre_num), FOREIGN KEY(hotel_num) REFERENCES hotel(hotel_num));

CREATE TABLE reservation(chambre_num INT,client_num INT,reservation_date DATE,reservation_debut DATE,reservation_fin DATE,reservation_arrhes FLOAT,reservation_prix FLOAT,PRIMARY KEY(chambre_num,client_num),FOREIGN KEY(chambre_num) REFERENCES chambre(chambre_num),FOREIGN KEY(client_num) REFERENCES client(client_num));
