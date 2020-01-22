############### PERSONA
CREATE PROCEDURE `temp-test`.persona_inserisci(IN CF_P CHAR(16), IN indirizzo VARCHAR(50), IN nome VARCHAR(30))
INSERT INTO `temp-test`.Persona VALUES(CF_P, indirizzo, nome, NULL, NULL);


CREATE PROCEDURE `temp-test`.persona_modifica(IN CF_P CHAR(16), IN indirizzo VARCHAR(50), IN nome VARCHAR(30))
UPDATE `temp-test`.Persona
SET Indirizzo_Persona = indirizzo,
	Nome_Persona = nome
WHERE CodFisc_Persona = CF_P;


CREATE PROCEDURE `temp-test`.persona_elimina(IN CF_P CHAR(16))
DELETE FROM `temp-test`.Persona 
WHERE CodFisc_Persona = CF_P;


############## CONTATTI PERSONA
CREATE PROCEDURE `temp-test`.persona_inserisci_contatti(IN CF_P CHAR(16), IN mail VARCHAR(30), IN cellulare VARCHAR(20), IN telefono VARCHAR(20))
INSERT INTO `temp-test`.Contatti
VALUES(CF_P, mail, cellulare, telefono);



CREATE PROCEDURE `temp-test`.persona_modifica_contatti(IN CF_P CHAR(16), IN mail VARCHAR(30), IN cellulare VARCHAR(20), IN telefono VARCHAR(20))
UPDATE `temp-test`.Contatti
SET Mail_Persona = mail,
	Cellulare_Persona = cellulare,
	Telefono_Persona = telefono
WHERE CodFisc_Persona_P = CF_P;

CREATE PROCEDURE `temp-test`.persona_elimina_contatti(IN CF_P CHAR(16))
DELETE FROM `temp-test`.Contatti 
WHERE CodFisc_Persona_P = CF_P;


############## EFFETTUA INGRESSO LIBERO
CREATE PROCEDURE `temp-test`.persona_effettua_ingresso_libero(IN CF_P CHAR(16), IN data_ingr DATE, IN nome_piscina VARCHAR(50))
UPDATE `temp-test`.Persona
SET Data_ingresso = data_ingr,
	Nome_Piscina_P = nome_piscina
WHERE CodFisc_Persona = CF_P;


############## PERSONA ISCRITTA CORSI
CREATE PROCEDURE `temp-test`.persona_inserisci_iscritta_corsi(IN CF_P CHAR(16), IN medico VARCHAR(30), IN data_cert DATE, IN data_nasc DATE)
	INSERT INTO `temp-test`.Iscritto_Corsi
	VALUES(CF_P, medico, data_cert, data_nasc);


CREATE PROCEDURE `temp-test`.persona_modifica_iscritta_corsi(IN CF_P CHAR(16), IN medico VARCHAR(30), IN data_cert DATE, IN data_nasc DATE)
	UPDATE `temp-test`.Iscritto_Corsi
	SET Medico = medico,
		Data_certificato = data_cert,
		Data_nascita = data_nasc
	WHERE CodFisc_Persona_IC = CF_P;

CREATE PROCEDURE `temp-test`.persona_elimina_iscritta_corsi(IN CF_P CHAR(16))
DELETE FROM `temp-test`.Iscritto_Corsi 
WHERE CodFisc_Persona_IC = CF_P;


############## PERSONA EFFETTUA ISCRIZIONE CORSO
CREATE PROCEDURE `temp-test`.persona_effettua_iscrizione_corso(IN CF_P CHAR(16), IN corso VARCHAR(30), IN piscina VARCHAR(50))
	INSERT INTO `temp-test`.Iscrizione
	VALUES(CF_P, corso, piscina);

CREATE PROCEDURE `temp-test`.persona_cancella_iscrizione_corso(IN CF_P CHAR(16), IN corso VARCHAR(30), IN piscina VARCHAR(50))
	DELETE FROM `temp-test`.Iscrizione 
	WHERE CodFisc_Persona_IC_IS = CF_P
		AND Nome_Corso_IS = corso
		AND Nome_Piscina_Corso_IS = piscina;


############## CORSO
CREATE PROCEDURE `temp-test`.corso_inserisci(IN nome CHAR(30), IN piscina VARCHAR(50), IN costo DECIMAL(5,2), IN massimo INT, IN minimo INT)
	INSERT INTO `temp-test`.Corso VALUES(nome, piscina, costo, massimo, minimo);


CREATE PROCEDURE `temp-test`.corso_modifica(IN nome CHAR(30), IN piscina VARCHAR(50), IN costo DECIMAL(5,2), IN massimo INT, IN minimo INT)
	UPDATE `temp-test`.Corso
	SET Costo = costo,
		Max = massimo,
		Min = minimo
	WHERE Nome_C = nome AND Nome_Piscina = piscina;


CREATE PROCEDURE `temp-test`.corso_elimina(IN nome CHAR(30), IN piscina VARCHAR(50))
	DELETE FROM `temp-test`.Corso 
	WHERE Nome_C = nome AND Nome_Piscina = piscina;







