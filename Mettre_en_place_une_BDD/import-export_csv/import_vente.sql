LOAD DATA LOCAL INFILE 'vente.csv'
INTO TABLE vente
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
 (numfou,codart,delliv,qte1,prix1,qte2,prix2,qte3,prix3);

