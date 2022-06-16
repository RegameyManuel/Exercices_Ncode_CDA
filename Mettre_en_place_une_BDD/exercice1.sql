DROP DATABASE IF EXISTS personne;

CREATE DATABASE personne;

USE personne;

CREATE TABLE personne(per_num INT AUTO_INCREMENT,per_nom VARCHAR(50),per_prenom VARCHAR(50),per_adresse VARCHAR(50),per_ville VARCHAR(50),PRIMARY KEY(per_num));

CREATE TABLE groupe(gro_num INT AUTO_INCREMENT,gro_libelle VARCHAR(50),PRIMARY KEY(gro_num));

CREATE TABLE appartient(per_num INT,gro_num INT,PRIMARY KEY(per_num,gro_num),FOREIGN KEY(per_num) REFERENCES personne(per_num),FOREIGN KEY(gro_num) REFERENCES groupe(gro_num));
