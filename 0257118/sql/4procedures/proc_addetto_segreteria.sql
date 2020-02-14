############### PERSONA
CREATE PROCEDURE `Piscine-Roma-DB`.persona_inserisci(IN CF_P CHAR(16), IN indirizzo VARCHAR(50), IN nome VARCHAR(30))
INSERT INTO `Piscine-Roma-DB`.Persona VALUES(CF_P, indirizzo, nome, NULL, NULL);


CREATE PROCEDURE `Piscine-Roma-DB`.persona_modifica(IN CF_P CHAR(16), IN indirizzo VARCHAR(50), IN nome VARCHAR(30))
UPDATE `Piscine-Roma-DB`.Persona
SET Indirizzo_Persona = indirizzo,
	Nome_Persona = nome
WHERE CodFisc_Persona = CF_P;


CREATE PROCEDURE `Piscine-Roma-DB`.persona_elimina(IN CF_P CHAR(16))
DELETE FROM `Piscine-Roma-DB`.Persona 
WHERE CodFisc_Persona = CF_P;


############## CONTATTI PERSONA
CREATE PROCEDURE `Piscine-Roma-DB`.persona_inserisci_contatti(IN CF_P CHAR(16), IN mail VARCHAR(50), IN cellulare VARCHAR(20), IN telefono VARCHAR(20))
INSERT INTO `Piscine-Roma-DB`.Contatti
VALUES(CF_P, mail, cellulare, telefono);



CREATE PROCEDURE `Piscine-Roma-DB`.persona_modifica_contatti(IN CF_P CHAR(16), IN mail VARCHAR(50), IN cellulare VARCHAR(20), IN telefono VARCHAR(20))
UPDATE `Piscine-Roma-DB`.Contatti
SET Mail_Persona = mail,
	Cellulare_Persona = cellulare,
	Telefono_Persona = telefono
WHERE CodFisc_Persona_P = CF_P;

CREATE PROCEDURE `Piscine-Roma-DB`.persona_elimina_contatti(IN CF_P CHAR(16))
DELETE FROM `Piscine-Roma-DB`.Contatti 
WHERE CodFisc_Persona_P = CF_P;


############## EFFETTUA INGRESSO LIBERO
CREATE PROCEDURE `Piscine-Roma-DB`.persona_effettua_ingresso_libero(IN CF_P CHAR(16), IN data_ingr DATE, IN nome_piscina VARCHAR(50))
UPDATE `Piscine-Roma-DB`.Persona
SET Data_ingresso = data_ingr,
	Nome_Piscina_P = nome_piscina
WHERE CodFisc_Persona = CF_P;


############## PERSONA ISCRITTA CORSI
CREATE PROCEDURE `Piscine-Roma-DB`.persona_inserisci_iscritta_corsi(IN CF_P CHAR(16), IN medico VARCHAR(30), IN data_cert DATE, IN data_nasc DATE)
	INSERT INTO `Piscine-Roma-DB`.Iscritto_Corsi
	VALUES(CF_P, medico, data_cert, data_nasc);


CREATE PROCEDURE `Piscine-Roma-DB`.persona_modifica_iscritta_corsi(IN CF_P CHAR(16), IN medico VARCHAR(30), IN data_cert DATE, IN data_nasc DATE)
	UPDATE `Piscine-Roma-DB`.Iscritto_Corsi
	SET Medico = medico,
		Data_certificato = data_cert,
		Data_nascita = data_nasc
	WHERE CodFisc_Persona_IC = CF_P;

CREATE PROCEDURE `Piscine-Roma-DB`.persona_elimina_iscritta_corsi(IN CF_P CHAR(16))
DELETE FROM `Piscine-Roma-DB`.Iscritto_Corsi 
WHERE CodFisc_Persona_IC = CF_P;


############## PERSONA EFFETTUA ISCRIZIONE CORSO
CREATE PROCEDURE `Piscine-Roma-DB`.persona_effettua_iscrizione_corso(IN CF_P CHAR(16), IN corso VARCHAR(30), IN piscina VARCHAR(50))
	INSERT INTO `Piscine-Roma-DB`.Iscrizione
	VALUES(CF_P, corso, piscina);

CREATE PROCEDURE `Piscine-Roma-DB`.persona_cancella_iscrizione_corso(IN CF_P CHAR(16), IN corso VARCHAR(30), IN piscina VARCHAR(50))
	DELETE FROM `Piscine-Roma-DB`.Iscrizione 
	WHERE CodFisc_Persona_IC_IS = CF_P
		AND Nome_Corso_IS = corso
		AND Nome_Piscina_Corso_IS = piscina;

CREATE PROCEDURE `Piscine-Roma-DB`.corso_visualizza_lista_iscritti(IN corso VARCHAR(30), IN piscina VARCHAR(50))
	SELECT *
	FROM `Piscine-Roma-DB`.Iscrizione
	WHERE Nome_Corso_IS = corso AND Nome_Piscina_Corso_IS = piscina;


############## CORSO
CREATE PROCEDURE `Piscine-Roma-DB`.corso_inserisci(IN nome CHAR(30), IN piscina VARCHAR(50), IN costo DECIMAL(5,2), IN massimo INT, IN minimo INT)
	INSERT INTO `Piscine-Roma-DB`.Corso VALUES(nome, piscina, costo, massimo, minimo);


CREATE PROCEDURE `Piscine-Roma-DB`.corso_modifica(IN nome CHAR(30), IN piscina VARCHAR(50), IN costo DECIMAL(5,2), IN massimo INT, IN minimo INT)
	UPDATE `Piscine-Roma-DB`.Corso
	SET Costo = costo,
		Max = massimo,
		Min = minimo
	WHERE Nome_C = nome AND Nome_Piscina = piscina;


CREATE PROCEDURE `Piscine-Roma-DB`.corso_elimina(IN nome CHAR(30), IN piscina VARCHAR(50))
	DELETE FROM `Piscine-Roma-DB`.Corso 
	WHERE Nome_C = nome AND Nome_Piscina = piscina;

CREATE PROCEDURE `Piscine-Roma-DB`.corso_visualizza_lista_per_piscina(IN piscina VARCHAR(50))
	SELECT *
	FROM `Piscine-Roma-DB`.Corso
	WHERE Nome_Piscina = piscina;


############# LEZIONE
CREATE PROCEDURE `Piscine-Roma-DB`.corso_inserisci_lezione(IN giorno INT, IN dalle TIME, IN alle TIME, IN corso VARCHAR(30), IN piscina VARCHAR(50))
	INSERT INTO `Piscine-Roma-DB`.Lezione VALUES(giorno, dalle, alle, corso, piscina);


CREATE PROCEDURE `Piscine-Roma-DB`.corso_modifica_lezione(IN giorno INT, IN old_dalle TIME, IN old_alle TIME, IN corso VARCHAR(30), IN piscina VARCHAR(50), IN new_dalle TIME, IN new_alle TIME)
	UPDATE `Piscine-Roma-DB`.Lezione
	SET Ora_dalle = new_dalle,
		Ora_alle = new_alle
	WHERE (Giorno_sett,Ora_dalle,Ora_alle,Nome_Corso,Nome_Piscina_Corso) = (giorno,old_dalle,ora_alle,corso,piscina);

CREATE PROCEDURE `Piscine-Roma-DB`.corso_elimina_lezione(IN giorno INT, IN dalle TIME, IN alle TIME, IN corso VARCHAR(30), IN piscina VARCHAR(50))
	DELETE FROM  `Piscine-Roma-DB`.Lezione
	WHERE (Giorno_sett,Ora_dalle,Ora_alle,Nome_Corso,Nome_Piscina_Corso) = (giorno,dalle,alle,corso,piscina);

CREATE PROCEDURE `Piscine-Roma-DB`.corso_visualizza_lista_lezioni(IN corso VARCHAR(30), IN piscina VARCHAR(50))
	SELECT *
	FROM `Piscine-Roma-DB`.Lezione
	WHERE (Nome_Corso,Nome_Piscina_Corso) = (corso,piscina);


############## Utenti
CREATE PROCEDURE `Piscine-Roma-DB`.`get_piscina_addetto_segreteria`(IN username_var VARCHAR(50))
SELECT u.piscina FROM `Piscine-Roma-DB`.Utenti u
				   WHERE u.username = username_var;

