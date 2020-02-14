############### PISCINA
CREATE PROCEDURE `Piscine-Roma-DB`.piscina_inserisci(IN nome CHAR(50), IN indirizzo VARCHAR(50), IN telefono VARCHAR(20), IN responsabile VARCHAR(30), IN tipo BOOLEAN,IN da_mese VARCHAR(10),IN a_mese VARCHAR(10))
	INSERT INTO `Piscine-Roma-DB`.Piscina VALUES(nome, indirizzo, telefono, responsabile, tipo, da_mese, a_mese);


CREATE PROCEDURE `Piscine-Roma-DB`.piscina_modifica(IN nome CHAR(50), IN indirizzo VARCHAR(50), IN telefono VARCHAR(20), IN responsabile VARCHAR(30), IN tipo BOOLEAN,IN da_mese VARCHAR(10),IN a_mese VARCHAR(10))
	UPDATE `Piscine-Roma-DB`.Piscina
	SET Indirizzo_P = indirizzo,
		Telefono_P = telefono,
		Responsabile = responsabile,
		Tipo = tipo,
		Da = da_mese,
		a = a_mese
	WHERE Nome_P = nome;


CREATE PROCEDURE `Piscine-Roma-DB`.piscina_elimina(IN nome CHAR(50))
	DELETE FROM `Piscine-Roma-DB`.Piscina 
	WHERE Nome_P = nome ;

CREATE PROCEDURE `Piscine-Roma-DB`.piscina_visualizza_lista()
	SELECT *
	FROM `Piscine-Roma-DB`.Piscina ;


############### INSEGNANTE
CREATE PROCEDURE `Piscine-Roma-DB`.insegnante_inserisci(IN CF_Ins CHAR(16), IN nome VARCHAR(50), IN telefono VARCHAR(20), IN cellulare VARCHAR(20))
	INSERT INTO `Piscine-Roma-DB`.Insegnante VALUES(CF_Ins, nome, telefono, cellulare,NULL);

CREATE PROCEDURE `Piscine-Roma-DB`.insegnante_modifica(IN CF_Ins CHAR(16), IN nome VARCHAR(50), IN telefono VARCHAR(20), IN cellulare VARCHAR(20))
	UPDATE `Piscine-Roma-DB`.Insegnante
	SET Nome_I = nome,
		Telefono_I = telefono,
		Cellulare_I = cellulare
	WHERE CodFisc_I = CF_Ins;

CREATE PROCEDURE `Piscine-Roma-DB`.insegnante_elimina(IN CF_Ins CHAR(16))
	DELETE FROM `Piscine-Roma-DB`.Insegnante
	WHERE CodFisc_I = CF_Ins;

CREATE PROCEDURE `Piscine-Roma-DB`.insegnante_visualizza_lista()
	SELECT *
	FROM `Piscine-Roma-DB`.Insegnante ;


############### QUALIFICA
CREATE PROCEDURE `Piscine-Roma-DB`.qualifica_inserisci(IN nome VARCHAR(30))
	INSERT INTO `Piscine-Roma-DB`.Qualifica VALUES(nome);

CREATE PROCEDURE `Piscine-Roma-DB`.qualifica_modifica(IN old_Nome_Q VARCHAR(30), IN new_Nome_Q VARCHAR(30))
	UPDATE `Piscine-Roma-DB`.Qualifica
	SET Nome_Q = new_Nome_Q
		WHERE Nome_Q = old_Nome_Q;


CREATE PROCEDURE `Piscine-Roma-DB`.qualifica_elimina(IN nome VARCHAR(30))
	DELETE FROM `Piscine-Roma-DB`.Qualifica
		WHERE Nome_Q = nome;



############# INSEGNANTE HA QUALIFICA
CREATE PROCEDURE `Piscine-Roma-DB`.insegnante_assegna_qualifica(IN CF_I CHAR(16), IN nome_qual VARCHAR(30))
	INSERT INTO `Piscine-Roma-DB`.Insegnante_Ha_Qualifica
	VALUES(CF_I, nome_qual);

CREATE PROCEDURE `Piscine-Roma-DB`.insegnante_cancella_qualifica(IN CF_I CHAR(16), IN nome_qual VARCHAR(30))
	DELETE FROM `Piscine-Roma-DB`.Insegnante_Ha_Qualifica 
	WHERE CodFisc_Insegnante = CF_I
		AND Nome_Qualifica = nome_qual;


############# ROTAZIONE
CREATE PROCEDURE `Piscine-Roma-DB`.rotazione_inserisci(IN inizio DATE,IN fine DATE,IN CF_I CHAR(16),IN piscina VARCHAR(50))
	INSERT INTO `Piscine-Roma-DB`.Rotazione VALUES(inizio,fine,CF_I,piscina);


CREATE PROCEDURE `Piscine-Roma-DB`.rotazione_modifica(IN old_inizio DATE,IN old_fine DATE,IN CF_I CHAR(16),IN piscina VARCHAR(50), IN new_inizio DATE,IN new_fine DATE)
	UPDATE `Piscine-Roma-DB`.Rotazione
	SET Data_inizio = new_inizio,
		Data_fine = new_fine
		WHERE (Data_inizio,Data_fine,CodFiscale_Insegnante,Nome_Piscina_R) = (old_inizio,old_fine,CF_I,piscina);

CREATE PROCEDURE `Piscine-Roma-DB`.rotazione_elimina(IN inizio DATE,IN fine DATE,IN CF_I CHAR(16),IN piscina VARCHAR(50))
	DELETE FROM `Piscine-Roma-DB`.Rotazione 
	WHERE (Data_inizio,Data_fine,CodFiscale_Insegnante,Nome_Piscina_R) = (inizio,fine,CF_I,piscina);

CREATE PROCEDURE `Piscine-Roma-DB`.rotazione_visualizza_lista_per_piscina(IN piscina CHAR(50))
	SELECT *
	FROM `Piscine-Roma-DB`.Rotazione
	WHERE  Nome_Piscina_R = piscina;

CREATE PROCEDURE `Piscine-Roma-DB`.rotazione_visualizza_lista_per_insegnante(IN CF_I CHAR(16))
	SELECT *
	FROM `Piscine-Roma-DB`.Rotazione 
	WHERE CodFiscale_Insegnante = CF_I;

