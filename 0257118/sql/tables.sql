######## CREAO DATABASE ##########
CREATE DATABASE `Piscine-Roma-DB` CHARACTER SET utf8 COLLATE utf8_general_ci;

####### SETTO NOMI DELLE DATE IN ITALIANO ########
SET GLOBAL lc_time_names = 'it_CH';

####### PISCINA ########
CREATE TABLE `Piscine-Roma-DB`.`Piscina` (
  `Nome_P` VARCHAR(50) NOT NULL,
  `Indirizzo_P` VARCHAR(50) NOT NULL,
  `Telefono_P` VARCHAR(50) NOT NULL,
  `Responsabile` VARCHAR(30) NOT NULL,
  `Tipo` BOOLEAN NOT NULL COMMENT 'Tipo = Con vasca all\'aperto ? true : false',
  `Da` VARCHAR(10) NULL,
  `a` VARCHAR(10) NULL,
  PRIMARY KEY (`Nome_P`));

####### CORSO #########
CREATE TABLE `Piscine-Roma-DB`.`Corso` (
  `Nome_C` VARCHAR(30) NOT NULL,
  `Nome_Piscina` VARCHAR(50) NOT NULL,
  `Costo` DECIMAL(5,2) NOT NULL,
  `Max` INT NOT NULL,
  `Min` INT NOT NULL,
  PRIMARY KEY (`Nome_C`, `Nome_Piscina`));

####### LEZIONE #######
CREATE TABLE `Piscine-Roma-DB`.`Lezione` (
  `Giorno_sett` INT NOT NULL COMMENT 'Range [1, ... ,7]',
  `Ora_dalle` TIME NOT NULL,
  `Ora_alle` TIME NOT NULL,
  `Nome_Corso` VARCHAR(30) NOT NULL,
  `Nome_Piscina_Corso` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`Giorno_sett`, `Ora_dalle`, `Ora_alle`, `Nome_Corso`, `Nome_Piscina_Corso`));

######I INSEGNANTE #########
CREATE TABLE `Piscine-Roma-DB`.`Insegnante` (
  `CodFisc_I` CHAR(16) NOT NULL,
  `Nome_I` VARCHAR(30) NOT NULL,
  `Telefono_I` VARCHAR(20) NULL,
  `Cellulare_I` VARCHAR(20) NULL,
  `Username_ins` VARCHAR(50)  NULL,
  PRIMARY KEY (`CodFisc_I`));

###### INSEGNANTE HA QUALIFICA #######
CREATE TABLE `Piscine-Roma-DB`.`Insegnante_Ha_Qualifica` (
  `CodFisc_Insegnante` CHAR(16) NOT NULL,
  `Nome_Qualifica` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`CodFisc_Insegnante`, `Nome_Qualifica`));

####### QUALIFICA #########
CREATE TABLE `Piscine-Roma-DB`.`Qualifica` (
  `Nome_Q` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`Nome_Q`));

######## ROTAZIONE ########
CREATE TABLE `Piscine-Roma-DB`.`Rotazione` (
  `Data_inizio` DATE NOT NULL,
  `Data_fine` DATE NOT NULL,
  `CodFiscale_Insegnante` CHAR(16) NOT NULL,
  `Nome_Piscina_R` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`Data_inizio`, `Data_fine`, `CodFiscale_Insegnante`, `Nome_Piscina_R`));

###### PERSONA #######
CREATE TABLE `Piscine-Roma-DB`.`Persona` (
  `CodFisc_Persona` CHAR(16) NOT NULL,
  `Indirizzo_Persona` VARCHAR(50) NOT NULL,
  `Nome_Persona` VARCHAR(30) NOT NULL,
  `Data_ingresso` DATE NULL,
  `Nome_Piscina_P` VARCHAR(50) NULL,
  PRIMARY KEY (`CodFisc_Persona`));

###### CONTATTI ######
CREATE TABLE `Piscine-Roma-DB`.`Contatti` (
  `Codfisc_Persona_P` CHAR(16) NOT NULL,
  `Mail_Persona` VARCHAR(50) NULL,
  `Cellulare_Persona` VARCHAR(20) NULL,
  `Telefono_Persona` VARCHAR(20) NULL,
  PRIMARY KEY (`Codfisc_Persona_P`));

###### ISCRITTO_CORSI ########
CREATE TABLE `Piscine-Roma-DB`.`Iscritto_Corsi` (
  `CodFisc_Persona_IC` CHAR(16) NOT NULL,
  `Medico` VARCHAR(30) NOT NULL,
  `Data_certificato` DATE NOT NULL,
  `Data_nascita` DATE NOT NULL,
  PRIMARY KEY (`CodFisc_Persona_IC`));

####### ISCRIZIONE ########
CREATE TABLE `Piscine-Roma-DB`.`Iscrizione` (
  `CodFisc_Persona_IC_IS` CHAR(16) NOT NULL,
  `Nome_Corso_IS` VARCHAR(30) NOT NULL,
  `Nome_Piscina_Corso_IS` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`CodFisc_Persona_IC_IS`, `Nome_Corso_IS`, `Nome_Piscina_Corso_IS`));

####### UTENTI ########
CREATE TABLE `Piscine-Roma-DB`.`Utenti` (
  `username` VARCHAR(50) NOT NULL,
  `passw` CHAR(32) NOT NULL,
  `ruolo` ENUM('insegnante', 'addetto_segreteria', 'addetto_comunale') NOT NULL,
  `piscina` VARCHAR(50)  NULL,
  PRIMARY KEY (`username`));


################## FOREIGN KEYS ########################
ALTER TABLE `Piscine-Roma-DB`.Corso ADD CONSTRAINT Corso_FK FOREIGN KEY (Nome_Piscina) REFERENCES `Piscine-Roma-DB`.Piscina(Nome_P)
ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `Piscine-Roma-DB`.Lezione ADD CONSTRAINT Lezione_FK FOREIGN KEY (Nome_Corso,Nome_Piscina_Corso) REFERENCES `Piscine-Roma-DB`.Corso(Nome_C,Nome_Piscina) 
ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `Piscine-Roma-DB`.Rotazione ADD CONSTRAINT Rotazione_FK FOREIGN KEY (Nome_Piscina_R) REFERENCES `Piscine-Roma-DB`.Piscina(Nome_P)
ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `Piscine-Roma-DB`.Rotazione ADD CONSTRAINT Rotazione_FK_1 FOREIGN KEY (CodFiscale_Insegnante) REFERENCES `Piscine-Roma-DB`.Insegnante(CodFisc_I)
ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `Piscine-Roma-DB`.Insegnante_Ha_Qualifica ADD CONSTRAINT Insegnante_Ha_Qualifica_FK FOREIGN KEY (CodFisc_Insegnante) REFERENCES `Piscine-Roma-DB`.Insegnante(CodFisc_I)
ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `Piscine-Roma-DB`.Insegnante_Ha_Qualifica ADD CONSTRAINT Insegnante_Ha_Qualifica_FK_1 FOREIGN KEY (Nome_Qualifica) REFERENCES `Piscine-Roma-DB`.Qualifica(Nome_Q)
ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `Piscine-Roma-DB`.Persona ADD CONSTRAINT Persona_FK FOREIGN KEY (Nome_Piscina_P) REFERENCES `Piscine-Roma-DB`.Piscina(Nome_P)
ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `Piscine-Roma-DB`.Contatti ADD CONSTRAINT Contatti_FK FOREIGN KEY (Codfisc_Persona_P) REFERENCES `Piscine-Roma-DB`.Persona(CodFisc_Persona)
ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `Piscine-Roma-DB`.Iscritto_Corsi ADD CONSTRAINT Iscritto_Corsi_FK FOREIGN KEY (CodFisc_Persona_IC) REFERENCES `Piscine-Roma-DB`.Persona(CodFisc_Persona)
ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `Piscine-Roma-DB`.Iscrizione ADD CONSTRAINT Iscrizione_FK FOREIGN KEY (CodFisc_Persona_IC_IS) REFERENCES `Piscine-Roma-DB`.Iscritto_Corsi(CodFisc_Persona_IC)
ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `Piscine-Roma-DB`.Iscrizione ADD CONSTRAINT Iscrizione_FK_1 FOREIGN KEY (Nome_Corso_IS,Nome_Piscina_Corso_IS) REFERENCES `Piscine-Roma-DB`.Corso(Nome_C,Nome_Piscina)
ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `Piscine-Roma-DB`.Insegnante ADD CONSTRAINT Insegnante_FK FOREIGN KEY (Username_ins) REFERENCES `Piscine-Roma-DB`.Utenti(username)
ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `Piscine-Roma-DB`.Utenti ADD CONSTRAINT Utenti_FK FOREIGN KEY (piscina) REFERENCES `Piscine-Roma-DB`.Piscina(Nome_P)
ON DELETE CASCADE ON UPDATE CASCADE;


