DROP DATABASE IF EXISTS eval;

CREATE DATABASE eval character set utf8mb4 collate utf8mb4_general_ci;

USE eval;

CREATE TABLE Client(cli_num INT NOT NULL PRIMARY KEY,cli_nom VARCHAR(50),cli_adresse VARCHAR(50),cli_tel VARCHAR(30));

CREATE TABLE Produit(pro_num INT NOT NULL PRIMARY KEY,pro_libelle VARCHAR(50),pro_description VARCHAR(50));

CREATE TABLE Commande(com_num INT NOT NULL PRIMARY KEY,cli_num INT,com_date DATE,com_obs VARCHAR(50), FOREIGN KEY (cli_num) REFERENCES Client(cli_num));

CREATE TABLE est_compose(com_num INT, pro_num INT, est_qte INT, PRIMARY KEY(com_num,pro_num), FOREIGN KEY (com_num) REFERENCES Commande(com_num), FOREIGN KEY (pro_num) REFERENCES Produit(pro_num));

CREATE INDEX cli_nom_index
ON Client ( cli_nom  );
