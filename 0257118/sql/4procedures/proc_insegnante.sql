CREATE PROCEDURE `Piscine-Roma-DB`.`get_CF_insegnante_from_username`(IN username_var VARCHAR(50))
SELECT CodFisc_I FROM `Piscine-Roma-DB`.Insegnante i
				   WHERE i.Username_ins = username_var;
				   

DELIMITER $$

CREATE PROCEDURE `Piscine-Roma-DB`.`report_insegnante`(startDate DATE, giorni INT, CF_I CHAR(16))
BEGIN
	### INIZIALLIZZO DATI
    DECLARE counter INT DEFAULT 1;
    DECLARE data_var DATE DEFAULT startDate;
	#DECLARE giorni INT DEFAULT (SELECT DATEDIFF(endDate,startDate)) + 1;
	
	### CREO TABELLA TEMPORANEA CALENDARIO
	DROP TABLE IF EXISTS calendario;
	CREATE TEMPORARY TABLE calendario(
    	data_calendario DATE,
    	PRIMARY KEY(data_calendario)
	);
 
 	### INSERISCO IN CALENDARIO,DATE TRA IL RANGE [startDate,endDate]
    WHILE counter <= giorni DO
        INSERT INTO calendario(data_calendario) VALUES(data_var);
        SET counter = counter + 1;
        SET data_var = DATE_ADD(data_var,INTERVAL 1 day);
    END WHILE;
		
	### GENERA REPORT
	SELECT data_calendario as 'data',DAYNAME(data_calendario) as 'giorno',
			DAY(data_calendario) as 'giorno_n',
			MONTHNAME(data_calendario) as 'mese',
			YEAR(data_calendario) as 'anno',
			Ora_dalle as 'dalle',Ora_alle as 'alle',
			Nome_P as 'piscina',
			Indirizzo_P as 'indirizzo',
			Nome_C as 'corso'
	FROM calendario,
	
	Insegnante	
	INNER JOIN Rotazione ON 
	Insegnante.CodFisc_I = Rotazione.CodFiscale_Insegnante
	
	INNER JOIN Piscina ON 
	Rotazione.Nome_Piscina_R = Piscina.Nome_P
	
	INNER JOIN Corso ON 
	Piscina.Nome_P = Corso.Nome_Piscina
	
	INNER JOIN Lezione ON 
	Corso.Nome_C = Lezione.Nome_Corso AND
	Corso.Nome_Piscina = Lezione.Nome_Piscina_Corso

	
	WHERE 
		DAYOFWEEK(calendario.data_calendario) = Lezione.Giorno_sett
		AND
		Insegnante.CodFisc_I=CF_I
		AND
		data_calendario BETWEEN Rotazione.Data_inizio AND Rotazione.Data_fine
	ORDER BY data_calendario
	;
	
	#### ELIMINA TABELLA TEMPORANEA CALENDARIO
	DROP TABLE calendario;
END

$$ DELIMITER;