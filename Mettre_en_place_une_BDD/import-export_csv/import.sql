LOAD DATA LOCAL INFILE 'produit.csv'
INTO TABLE produit
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
 (codart, libart, unimes, stkale, stkphy, qteann);
