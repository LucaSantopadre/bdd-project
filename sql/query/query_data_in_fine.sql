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
	Insegnante.CodFisc_I = 'INS01' AND
	
	Rotazione.Data_inizio BETWEEN '2020-02-20' AND '2020-03-05'
		OR
	Rotazione.Data_fine BETWEEN '2020-02-20' AND '2020-03-05'
	
ORDER BY Rotazione.Data_inizio;