DROP DATABASE IF EXISTS test_ville;

CREATE DATABASE test_ville;

USE test_ville;

CREATE TABLE villes(ville_id INT AUTO_INCREMENT,ville VARCHAR(50),postal CHAR(5),taille TINYINT, CONSTRAINT code_postal_valide CHECK(postal RLIKE '^[0-9]{5}'),CONSTRAINT taille_ville CHECK(taille >0 AND taille <11),PRIMARY KEY(ville_id));
