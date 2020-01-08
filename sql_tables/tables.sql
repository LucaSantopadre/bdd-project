CREATE TABLE `prog-bdd-test`.`insegnante` (
  `CodFisc_I` VARCHAR(16) NOT NULL,
  `Nome_I` VARCHAR(45) NOT NULL,
  `Telefono_I` VARCHAR(20) NOT NULL,
  `Cellulare_I` VARCHAR(20) NULL,
  PRIMARY KEY (`CodFisc_I`));


CREATE TABLE `prog-bdd-test`.`rotazione` (
  `Data_inizio` DATE NOT NULL,
  `Data_fine` DATE NOT NULL,
  PRIMARY KEY (`Data_inizio`, `Data_fine`));


CREATE TABLE `prog-bdd-test`.`piscina`  (
  `Nome_P` varchar(45) NOT NULL,
  `Indirizzo_P` varchar(60) NOT NULL,
  `Telefono_P` varchar(20) NOT NULL,
  `Responsabile` varchar(45) NOT NULL,
  PRIMARY KEY (`Nome_P`)
)




ALTER TABLE `prog-bdd-test`.rotazione ADD Pis_Nome_P varchar(45) NULL;
ALTER TABLE `prog-bdd-test`.rotazione ADD CONSTRAINT rotazione_FK_1 FOREIGN KEY (Pis_Nome_P) REFERENCES `prog-bdd-test`.piscina(Nome_P);




-------------------------------------------

CREATE TABLE `prog-bdd-test`.`corso` (
  `Nome_C` VARCHAR(45) NOT NULL,
  `Max` INT NOT NULL,
  `Min` INT NOT NULL,
  `Costo` FLOAT NOT NULL,
  PRIMARY KEY (`Nome_C`));


 ALTER TABLE `prog-bdd-test`.corso ADD Pis_Nome_P varchar(45) NULL;
ALTER TABLE `prog-bdd-test`.corso ADD CONSTRAINT corso_FK FOREIGN KEY (Pis_Nome_P) REFERENCES `prog-bdd-test`.piscina(Nome_P);





CREATE TABLE `prog-bdd-test`.`lezione` (
  `Giorno` INT NOT NULL,
  `Ora` TIME NOT NULL,
  PRIMARY KEY (`Giorno`, `Ora`));

---------------------------------------------------------------

### chiave primaria su ROTAZIONE
ALTER TABLE `prog-bdd-test`.`rotazione` 
DROP FOREIGN KEY `rotazione_FK`;
ALTER TABLE `prog-bdd-test`.`rotazione` 
CHANGE COLUMN `Ins_CodFisc_I` `Ins_CodFisc_I` VARCHAR(16) NOT NULL ,
DROP PRIMARY KEY,
ADD PRIMARY KEY (`Data_inizio`, `Data_fine`, `Ins_CodFisc_I`);
;
ALTER TABLE `prog-bdd-test`.`rotazione` 
ADD CONSTRAINT `rotazione_FK`
  FOREIGN KEY (`Ins_CodFisc_I`)
  REFERENCES `prog-bdd-test`.`insegnante` (`CodFisc_I`);








ALTER TABLE `prog-bdd-test`.`rotazione` 
DROP FOREIGN KEY `rotazione_FK_1`;
ALTER TABLE `prog-bdd-test`.`rotazione` 
CHANGE COLUMN `Pis_Nome_P` `Pis_Nome_P` VARCHAR(45) NOT NULL ,
DROP PRIMARY KEY,
ADD PRIMARY KEY (`Data_inizio`, `Data_fine`, `Ins_CodFisc_I`, `Pis_Nome_P`);
;
ALTER TABLE `prog-bdd-test`.`rotazione` 
ADD CONSTRAINT `rotazione_FK_1`
  FOREIGN KEY (`Pis_Nome_P`)
  REFERENCES `prog-bdd-test`.`piscina` (`Nome_P`);


-----------------------------------------

### chiave primaria su CORSO
ALTER TABLE `prog-bdd-test`.`corso` 
DROP FOREIGN KEY `corso_FK`;
ALTER TABLE `prog-bdd-test`.`corso` 
CHANGE COLUMN `Pis_Nome_P` `Pis_Nome_P` VARCHAR(45) NOT NULL ,
DROP PRIMARY KEY,
ADD PRIMARY KEY (`Nome_C`, `Pis_Nome_P`);
;
ALTER TABLE `prog-bdd-test`.`corso` 
ADD CONSTRAINT `corso_FK`
  FOREIGN KEY (`Pis_Nome_P`)
  REFERENCES `prog-bdd-test`.`piscina` (`Nome_P`);




--------------------------------------------

### LEZIONE - chiavi primarie + chiavi esterne
ALTER TABLE `prog-bdd-test`.`lezione` 
ADD COLUMN `Cor_Nome_C` VARCHAR(45) NOT NULL AFTER `Ora`,
ADD COLUMN `Cor_Nome_P` VARCHAR(45) NOT NULL AFTER `Cor_Nome_C`,
DROP PRIMARY KEY,
ADD PRIMARY KEY (`Giorno`, `Ora`, `Cor_Nome_C`, `Cor_Nome_P`),
ADD INDEX `fk_lezione_1_idx` (`Cor_Nome_C` ASC, `Cor_Nome_P` ASC);
;
ALTER TABLE `prog-bdd-test`.`lezione` 
ADD CONSTRAINT `fk_lezione_1`
  FOREIGN KEY (`Cor_Nome_C` , `Cor_Nome_P`)
  REFERENCES `prog-bdd-test`.`corso` (`Nome_C` , `Pis_Nome_P`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;



  ALTER TABLE `prog-bdd-test`.`lezione` 
ADD COLUMN `Ora_alle` TIME NOT NULL AFTER `Ora_dalle`,
CHANGE COLUMN `Ora` `Ora_dalle` TIME NOT NULL ,
DROP PRIMARY KEY,
ADD PRIMARY KEY (`Giorno`, `Ora_dalle`, `Ora_alle`, `Cor_Nome_C`, `Cor_Nome_P`);
;
