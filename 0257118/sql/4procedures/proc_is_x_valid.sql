CREATE PROCEDURE `Piscine-Roma-DB`.`is_user_valid`(IN username_var VARCHAR(50), IN passw_var VARCHAR(50), IN ruolo_var VARCHAR(50))
SELECT EXISTS( 	SELECT * 
				FROM `Piscine-Roma-DB`.Utenti u
			   	WHERE u.username = username_var
			   	AND u.passw = MD5(passw_var)  
			   	AND u.ruolo = ruolo_var )  as is_user_valid ;