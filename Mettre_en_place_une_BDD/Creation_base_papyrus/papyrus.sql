DROP DATABASE IF EXISTS papyrus;

CREATE DATABASE papyrus;

USE papyrus;

CREATE TABLE produit(codart CHAR(4) NOT NULL,libart VARCHAR(30) NOT NULL,stkale INT NOT NULL,stkphy INT NOT NULL,qteann INT NOT NULL,unimes CHAR(5) NOT NULL,PRIMARY KEY(codart));

CREATE TABLE fournis(numfou TINYINT AUTO_INCREMENT,nomfou VARCHAR(50),ruefou VARCHAR(50),posfou CHAR(5),vilfou VARCHAR(30),confou VARCHAR(15),satisf TINYINT,PRIMARY KEY(numfou));

CREATE TABLE entcom(numcom INT AUTO_INCREMENT,obscom VARCHAR(50),datcom DATE NOT NULL DEFAULT CURDATE(),numfou TINYINT REFERENCES fournis(numfou),PRIMARY KEY(numcom));

CREATE TABLE ligcom(numlig INT AUTO_INCREMENT,numcom INT,codart CHAR(4) NOT NULL,qtecde INT NOT NULL,priuni DECIMAL(9,2) NOT NULL,qteliv INT,derliv DATE NOT NULL,PRIMARY KEY(numlig,numcom),FOREIGN KEY(numcom) REFERENCES entcom(numcom));

CREATE TABLE vente(codart CHAR(4),numfou TINYINT,delliv SMALLINT NOT NULL,qte1 INT NOT NULL,prix1 DECIMAL(9,2) NOT NULL,qte2 INT,prix2 DECIMAL(9,2),qte3 INT,prix3 DECIMAL(9,2),PRIMARY KEY(codart,numfou),FOREIGN KEY(codart) REFERENCES produit(codart),FOREIGN KEY(numfou) REFERENCES fournis(numfou));
