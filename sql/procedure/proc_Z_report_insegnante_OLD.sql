CREATE PROCEDURE `temp-test`.report_insegnante(IN CF CHAR(16), IN data_da DATE, IN data_a DATE)
	SELECT
	Insegnante.CodFisc_I, 
	Rotazione.Data_inizio, 
	Rotazione.Data_fine, 
	Lezione.Giorno_sett, 
	Lezione.Ora_dalle, 
	Lezione.Ora_alle, 
	Lezione.Nome_Corso, 
	Lezione.Nome_Piscina_Corso, 
	Insegnante.Nome_I
FROM
	Insegnante
	INNER JOIN
	Rotazione
	ON 
		Insegnante.CodFisc_I = Rotazione.CodFiscale_Insegnante
	INNER JOIN
	Piscina
	ON 
		Rotazione.Nome_Piscina_R = Piscina.Nome_P
	INNER JOIN
	Corso
	ON 
		Piscina.Nome_P = Corso.Nome_Piscina
	INNER JOIN
	Lezione
	ON 
		Corso.Nome_C = Lezione.Nome_Corso AND
		Corso.Nome_Piscina = Lezione.Nome_Piscina_Corso
WHERE
	Insegnante.CodFisc_I = CF AND
	
	Rotazione.Data_inizio BETWEEN data_da AND data_a
		OR
	Rotazione.Data_fine BETWEEN data_da AND data_a
	
ORDER BY Rotazione.Data_inizio;