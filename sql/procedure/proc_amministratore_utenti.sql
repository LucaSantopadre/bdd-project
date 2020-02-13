############### AMMINISTRATORE UTENTI
CREATE PROCEDURE `Piscine-Roma-DB`.utente_modifica_password(IN user_var VARCHAR(50), IN old_password_var VARCHAR(50),IN new_password_var VARCHAR(50) )
	UPDATE `Piscine-Roma-DB`.Utenti
	SET passw = MD5(new_password_var)
		WHERE username = user_var AND passw = MD5(old_password_var);

CREATE PROCEDURE `Piscine-Roma-DB`.utente_inserisci_insegnante_addetto_comunale(IN user_var VARCHAR(50), IN password_var VARCHAR(50), IN ruolo_var VARCHAR(50))
	INSERT INTO `Piscine-Roma-DB`.Utenti VALUES(user_var, MD5(password_var), ruolo_var, NULL );

CREATE PROCEDURE `Piscine-Roma-DB`.utente_inserisci_addetto_segreteria(IN user_var VARCHAR(50), IN password_var VARCHAR(50), IN ruolo_var VARCHAR(50), IN piscina_var VARCHAR(50))
	INSERT INTO `Piscine-Roma-DB`.Utenti VALUES(user_var, MD5(password_var), ruolo_var, piscina_var );


CREATE PROCEDURE `Piscine-Roma-DB`.utente_elimina(IN user_var VARCHAR(50))
	DELETE FROM `Piscine-Roma-DB`.Utenti
		WHERE username = user_var;


CREATE PROCEDURE `Piscine-Roma-DB`.insegnante_assegna_username(IN user_var VARCHAR(50), IN CF_I CHAR(16) )
	UPDATE `Piscine-Roma-DB`.Insegnante
	SET Username_ins = user_var
		WHERE CodFisc_I = CF_I ;


