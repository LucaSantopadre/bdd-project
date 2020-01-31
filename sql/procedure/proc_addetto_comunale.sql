############### PISCINA
CREATE PROCEDURE `temp-test`.piscina_inserisci(IN nome CHAR(50), IN indirizzo VARCHAR(50), IN telefono VARCHAR(20), IN responsabile VARCHAR(30), IN tipo BOOLEAN,IN da_mese VARCHAR(10),IN a_mese VARCHAR(10))
	INSERT INTO `temp-test`.Piscina VALUES(nome, indirizzo, telefono, responsabile, tipo, da_mese, a_mese);


CREATE PROCEDURE `temp-test`.piscina_modifica(IN nome CHAR(50), IN indirizzo VARCHAR(50), IN telefono VARCHAR(20), IN responsabile VARCHAR(30), IN tipo BOOLEAN,IN da_mese VARCHAR(10),IN a_mese VARCHAR(10))
	UPDATE `temp-test`.Piscina
	SET Indirizzo_P = indirizzo,
		Telefono_P = telefono,
		Responsabile = responsabile,
		Tipo = tipo,
		Da = da_mese,
		a = a_mese
	WHERE Nome_P = nome;


CREATE PROCEDURE `temp-test`.piscina_elimina(IN nome CHAR(50))
	DELETE FROM `temp-test`.Piscina 
	WHERE Nome_P = nome ;



############### INSEGNANTE
CREATE PROCEDURE `temp-test`.insegnante_inserisci(IN CF_Ins CHAR(16), IN nome VARCHAR(50), IN telefono VARCHAR(20), IN cellulare VARCHAR(20))
	INSERT INTO `temp-test`.Insegnante VALUES(CF_Ins, nome, telefono, cellulare);

CREATE PROCEDURE `temp-test`.insegnante_modifica(IN CF_Ins CHAR(16), IN nome VARCHAR(50), IN telefono VARCHAR(20), IN cellulare VARCHAR(20))
	UPDATE `temp-test`.Insegnante
	SET Nome_I = nome,
		Telefono_I = telefono,
		Cellulare_I = cellulare
	WHERE CodFisc_I = CF_Ins;

CREATE PROCEDURE `temp-test`.insegnante_elimina(IN CF_Ins CHAR(16))
	DELETE FROM `temp-test`.Insegnante
	WHERE CodFisc_I = CF_Ins;


############### QUALIFICA
CREATE PROCEDURE `temp-test`.qualifica_inserisci(IN nome VARCHAR(30))
	INSERT INTO `temp-test`.Qualifica VALUES(nome);

CREATE PROCEDURE `temp-test`.qualifica_modifica(IN old_Nome_Q VARCHAR(30), IN new_Nome_Q VARCHAR(30))
	UPDATE `temp-test`.Qualifica
	SET Nome_Q = new_Nome_Q
		WHERE Nome_Q = old_Nome_Q;


CREATE PROCEDURE `temp-test`.qualifica_elimina(IN nome VARCHAR(30))
	DELETE FROM `temp-test`.Qualifica
		WHERE Nome_Q = nome;



############# INSEGNANTE HA QUALIFICA
CREATE PROCEDURE `temp-test`.insegnante_assegna_qualifica(IN CF_I CHAR(16), IN nome_qual VARCHAR(30))
	INSERT INTO `temp-test`.Insegnante_Ha_Qualifica
	VALUES(CF_I, nome_qual);

CREATE PROCEDURE `temp-test`.insegnante_cancella_qualifica(IN CF_I CHAR(16), IN nome_qual VARCHAR(30))
	DELETE FROM `temp-test`.Insegnante_Ha_Qualifica 
	WHERE CodFisc_Insegnante = CF_I
		AND Nome_Qualifica = nome_qual;


############# ROTAZIONE
CREATE PROCEDURE `temp-test`.rotazione_inserisci(IN inizio DATE,IN fine DATE,IN CF_I CHAR(16),IN piscina VARCHAR(50))
	INSERT INTO `temp-test`.Rotazione VALUES(inizio,fine,CF_I,piscina);


CREATE PROCEDURE `temp-test`.rotazione_modifica(IN old_inizio DATE,IN old_fine DATE,IN CF_I CHAR(16),IN piscina VARCHAR(50), IN new_inizio DATE,IN new_fine DATE)
	UPDATE `temp-test`.Rotazione
	SET Data_inizio = new_inizio,
		Data_fine = new_fine
		WHERE (Data_inizio,Data_fine,CodFiscale_Insegnante,Nome_Piscina_R) = (old_inizio,old_fine,CF_I,piscina);

CREATE PROCEDURE `temp-test`.rotazione_elimina(IN inizio DATE,IN fine DATE,IN CF_I CHAR(16),IN piscina VARCHAR(50))
	DELETE FROM `temp-test`.Rotazione 
	WHERE (Data_inizio,Data_fine,CodFiscale_Insegnante,Nome_Piscina_R) = (inizio,fine,CF_I,piscina);




