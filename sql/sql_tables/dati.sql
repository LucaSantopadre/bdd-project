INSERT INTO `temp-test`.`Piscina` VALUES ('Ciampino','via aeroporto','06-111','lotito',0,NULL,NULL),('Olimpico roma','via olimpica','06-333','inzaghi',0,NULL,NULL);

INSERT INTO `temp-test`.`Corso` VALUES ('dorso','Ciampino',50.00,10,1),('dorso','Olimpico roma',25.00,5,2),('pallanuoto','Ciampino',200.00,12,10),('sub','Ciampino',100.00,10,1),('sub','Olimpico roma',100.00,10,1);

INSERT INTO `temp-test`.`Lezione` VALUES (2,'10:00:00','11:00:00','dorso','Ciampino'),(2,'14:00:00','15:00:00','dorso','Ciampino'),(3,'09:30:00','10:30:00','sub','Ciampino'),(2,'08:00:00','10:00:00','sub','Olimpico roma');


INSERT INTO `temp-test`.`Insegnante` VALUES ('INS01','Insegnante 01',NULL,NULL),('INS02','Insegnante 02',NULL,NULL);

INSERT INTO `temp-test`.`Qualifica` VALUES ('dorso'),('pallanuoto'),('sub');

INSERT INTO `temp-test`.`Insegnante_Ha_Qualifica` VALUES ('INS01','pallanuoto'),('INS01','sub');


INSERT INTO `temp-test`.`Rotazione` VALUES ('2020-01-01','2020-01-31','INS01','Ciampino'),('2020-02-01','2020-02-28','INS01','Ciampino'),('2020-03-01','2020-03-31','INS01','Olimpico roma');

