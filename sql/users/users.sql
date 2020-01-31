########### INSEGNANTE #############

CREATE USER 'insegnante'@'localhost' IDENTIFIED BY 'insegnante123';
GRANT EXECUTE ON PROCEDURE  `temp-test`.report_insegnante TO 'insegnante'@'localhost';
GRANT EXECUTE ON PROCEDURE  `temp-test`.is_CF_insegnante_valid TO 'insegnante'@'localhost';


#SHOW GRANTS FOR 'user_test'@'localhost';


########### ADDETTO SEGRETERIA #############
CREATE USER 'addetto_segreteria'@'localhost' IDENTIFIED BY 'asegreteria123';

GRANT EXECUTE ON PROCEDURE  `temp-test`.persona_inserisci TO 'addetto_segreteria'@'localhost';
GRANT EXECUTE ON PROCEDURE  `temp-test`.persona_modifica TO 'addetto_segreteria'@'localhost';
GRANT EXECUTE ON PROCEDURE  `temp-test`.persona_elimina TO 'addetto_segreteria'@'localhost';

GRANT EXECUTE ON PROCEDURE  `temp-test`.persona_inserisci_contatti TO 'addetto_segreteria'@'localhost';
GRANT EXECUTE ON PROCEDURE  `temp-test`.persona_modifica_contatti TO 'addetto_segreteria'@'localhost';
GRANT EXECUTE ON PROCEDURE  `temp-test`.persona_elimina_contatti TO 'addetto_segreteria'@'localhost';

GRANT EXECUTE ON PROCEDURE  `temp-test`.persona_effettua_ingresso_libero TO 'addetto_segreteria'@'localhost';

GRANT EXECUTE ON PROCEDURE  `temp-test`.persona_inserisci_iscritta_corsi TO 'addetto_segreteria'@'localhost';
GRANT EXECUTE ON PROCEDURE  `temp-test`.persona_modifica_iscritta_corsi TO 'addetto_segreteria'@'localhost';
GRANT EXECUTE ON PROCEDURE  `temp-test`.persona_elimina_iscritta_corsi TO 'addetto_segreteria'@'localhost';

GRANT EXECUTE ON PROCEDURE  `temp-test`.persona_effettua_iscrizione_corso TO 'addetto_segreteria'@'localhost';
GRANT EXECUTE ON PROCEDURE  `temp-test`.persona_cancella_iscrizione_corso TO 'addetto_segreteria'@'localhost';

GRANT EXECUTE ON PROCEDURE  `temp-test`.corso_inserisci TO 'addetto_segreteria'@'localhost';
GRANT EXECUTE ON PROCEDURE  `temp-test`.corso_modifica TO 'addetto_segreteria'@'localhost';
GRANT EXECUTE ON PROCEDURE  `temp-test`.corso_elimina TO 'addetto_segreteria'@'localhost';

GRANT EXECUTE ON PROCEDURE  `temp-test`.corso_inserisci_lezione TO 'addetto_segreteria'@'localhost';
GRANT EXECUTE ON PROCEDURE  `temp-test`.corso_modifica_lezione TO 'addetto_segreteria'@'localhost';
GRANT EXECUTE ON PROCEDURE  `temp-test`.corso_elimina_lezione TO 'addetto_segreteria'@'localhost';

########### ADDETTO COMUNALE #############

CREATE USER 'addetto_comunale'@'localhost' IDENTIFIED BY 'acomunale123';

GRANT EXECUTE ON PROCEDURE  `temp-test`.piscina_inserisci TO 'addetto_comunale'@'localhost';
GRANT EXECUTE ON PROCEDURE  `temp-test`.piscina_modifica TO 'addetto_comunale'@'localhost';
GRANT EXECUTE ON PROCEDURE  `temp-test`.piscina_elimina TO 'addetto_comunale'@'localhost';

GRANT EXECUTE ON PROCEDURE  `temp-test`.insegnante_inserisci TO 'addetto_comunale'@'localhost';
GRANT EXECUTE ON PROCEDURE  `temp-test`.insegnante_modifica TO 'addetto_comunale'@'localhost';
GRANT EXECUTE ON PROCEDURE  `temp-test`.insegnante_elimina TO 'addetto_comunale'@'localhost';

GRANT EXECUTE ON PROCEDURE  `temp-test`.qualifica_inserisci TO 'addetto_comunale'@'localhost';
GRANT EXECUTE ON PROCEDURE  `temp-test`.qualifica_modifica TO 'addetto_comunale'@'localhost';
GRANT EXECUTE ON PROCEDURE  `temp-test`.qualifica_elimina TO 'addetto_comunale'@'localhost';

GRANT EXECUTE ON PROCEDURE  `temp-test`.insegnante_assegna_qualifica TO 'addetto_comunale'@'localhost';
GRANT EXECUTE ON PROCEDURE  `temp-test`.insegnante_cancella_qualifica TO 'addetto_comunale'@'localhost';

GRANT EXECUTE ON PROCEDURE  `temp-test`.rotazione_inserisci TO 'addetto_comunale'@'localhost';
GRANT EXECUTE ON PROCEDURE  `temp-test`.rotazione_modifica TO 'addetto_comunale'@'localhost';
GRANT EXECUTE ON PROCEDURE  `temp-test`.rotazione_elimina TO 'addetto_comunale'@'localhost';




FLUSH PRIVILEGES;