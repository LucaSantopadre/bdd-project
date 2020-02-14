########### AMMINISTRATORE UTENTI ###########
CREATE USER 'amministratore_utenti'@'localhost' IDENTIFIED BY 'autenti123';
GRANT EXECUTE ON PROCEDURE  `Piscine-Roma-DB`.utente_inserisci_insegnante_addetto_comunale TO 'amministratore_utenti'@'localhost';
GRANT EXECUTE ON PROCEDURE  `Piscine-Roma-DB`.utente_inserisci_addetto_segreteria TO 'amministratore_utenti'@'localhost';
GRANT EXECUTE ON PROCEDURE  `Piscine-Roma-DB`.utente_elimina TO 'amministratore_utenti'@'localhost';
GRANT EXECUTE ON PROCEDURE  `Piscine-Roma-DB`.insegnante_assegna_username TO 'amministratore_utenti'@'localhost';
GRANT EXECUTE ON PROCEDURE  `Piscine-Roma-DB`.utenti_visualizza_lista TO 'amministratore_utenti'@'localhost';


########### INSEGNANTE #############
CREATE USER 'insegnante'@'localhost' IDENTIFIED BY 'insegnante123';
GRANT EXECUTE ON PROCEDURE  `Piscine-Roma-DB`.is_user_valid TO 'insegnante'@'localhost';
GRANT EXECUTE ON PROCEDURE  `Piscine-Roma-DB`.report_insegnante TO 'insegnante'@'localhost';
GRANT EXECUTE ON PROCEDURE  `Piscine-Roma-DB`.get_CF_insegnante_from_username TO 'insegnante'@'localhost';
GRANT EXECUTE ON PROCEDURE  `Piscine-Roma-DB`.utente_modifica_password TO 'insegnante'@'localhost';


########### ADDETTO SEGRETERIA #############
CREATE USER 'addetto_segreteria'@'localhost' IDENTIFIED BY 'asegreteria123';
GRANT EXECUTE ON PROCEDURE  `Piscine-Roma-DB`.is_user_valid TO 'addetto_segreteria'@'localhost';

GRANT EXECUTE ON PROCEDURE  `Piscine-Roma-DB`.persona_inserisci TO 'addetto_segreteria'@'localhost';
GRANT EXECUTE ON PROCEDURE  `Piscine-Roma-DB`.persona_modifica TO 'addetto_segreteria'@'localhost';
GRANT EXECUTE ON PROCEDURE  `Piscine-Roma-DB`.persona_elimina TO 'addetto_segreteria'@'localhost';

GRANT EXECUTE ON PROCEDURE  `Piscine-Roma-DB`.persona_inserisci_contatti TO 'addetto_segreteria'@'localhost';
GRANT EXECUTE ON PROCEDURE  `Piscine-Roma-DB`.persona_modifica_contatti TO 'addetto_segreteria'@'localhost';
GRANT EXECUTE ON PROCEDURE  `Piscine-Roma-DB`.persona_elimina_contatti TO 'addetto_segreteria'@'localhost';

GRANT EXECUTE ON PROCEDURE  `Piscine-Roma-DB`.persona_effettua_ingresso_libero TO 'addetto_segreteria'@'localhost';

GRANT EXECUTE ON PROCEDURE  `Piscine-Roma-DB`.persona_inserisci_iscritta_corsi TO 'addetto_segreteria'@'localhost';
GRANT EXECUTE ON PROCEDURE  `Piscine-Roma-DB`.persona_modifica_iscritta_corsi TO 'addetto_segreteria'@'localhost';
GRANT EXECUTE ON PROCEDURE  `Piscine-Roma-DB`.persona_elimina_iscritta_corsi TO 'addetto_segreteria'@'localhost';

GRANT EXECUTE ON PROCEDURE  `Piscine-Roma-DB`.persona_effettua_iscrizione_corso TO 'addetto_segreteria'@'localhost';
GRANT EXECUTE ON PROCEDURE  `Piscine-Roma-DB`.persona_cancella_iscrizione_corso TO 'addetto_segreteria'@'localhost';
GRANT EXECUTE ON PROCEDURE  `Piscine-Roma-DB`.corso_visualizza_lista_iscritti TO 'addetto_segreteria'@'localhost';


GRANT EXECUTE ON PROCEDURE  `Piscine-Roma-DB`.corso_inserisci TO 'addetto_segreteria'@'localhost';
GRANT EXECUTE ON PROCEDURE  `Piscine-Roma-DB`.corso_modifica TO 'addetto_segreteria'@'localhost';
GRANT EXECUTE ON PROCEDURE  `Piscine-Roma-DB`.corso_elimina TO 'addetto_segreteria'@'localhost';
GRANT EXECUTE ON PROCEDURE  `Piscine-Roma-DB`.corso_visualizza_lista_per_piscina TO 'addetto_segreteria'@'localhost';


GRANT EXECUTE ON PROCEDURE  `Piscine-Roma-DB`.corso_inserisci_lezione TO 'addetto_segreteria'@'localhost';
GRANT EXECUTE ON PROCEDURE  `Piscine-Roma-DB`.corso_modifica_lezione TO 'addetto_segreteria'@'localhost';
GRANT EXECUTE ON PROCEDURE  `Piscine-Roma-DB`.corso_elimina_lezione TO 'addetto_segreteria'@'localhost';
GRANT EXECUTE ON PROCEDURE  `Piscine-Roma-DB`.corso_visualizza_lista_lezioni TO 'addetto_segreteria'@'localhost';

GRANT EXECUTE ON PROCEDURE  `Piscine-Roma-DB`.get_piscina_addetto_segreteria TO 'addetto_segreteria'@'localhost';
GRANT EXECUTE ON PROCEDURE  `Piscine-Roma-DB`.utente_modifica_password TO 'addetto_segreteria'@'localhost';



########### ADDETTO COMUNALE #############
CREATE USER 'addetto_comunale'@'localhost' IDENTIFIED BY 'acomunale123';
GRANT EXECUTE ON PROCEDURE  `Piscine-Roma-DB`.is_user_valid TO 'addetto_comunale'@'localhost';

GRANT EXECUTE ON PROCEDURE  `Piscine-Roma-DB`.piscina_inserisci TO 'addetto_comunale'@'localhost';
GRANT EXECUTE ON PROCEDURE  `Piscine-Roma-DB`.piscina_modifica TO 'addetto_comunale'@'localhost';
GRANT EXECUTE ON PROCEDURE  `Piscine-Roma-DB`.piscina_elimina TO 'addetto_comunale'@'localhost';
GRANT EXECUTE ON PROCEDURE  `Piscine-Roma-DB`.piscina_visualizza_lista TO 'addetto_comunale'@'localhost';


GRANT EXECUTE ON PROCEDURE  `Piscine-Roma-DB`.insegnante_inserisci TO 'addetto_comunale'@'localhost';
GRANT EXECUTE ON PROCEDURE  `Piscine-Roma-DB`.insegnante_modifica TO 'addetto_comunale'@'localhost';
GRANT EXECUTE ON PROCEDURE  `Piscine-Roma-DB`.insegnante_elimina TO 'addetto_comunale'@'localhost';
GRANT EXECUTE ON PROCEDURE  `Piscine-Roma-DB`.insegnante_visualizza_lista TO 'addetto_comunale'@'localhost';


GRANT EXECUTE ON PROCEDURE  `Piscine-Roma-DB`.qualifica_inserisci TO 'addetto_comunale'@'localhost';
GRANT EXECUTE ON PROCEDURE  `Piscine-Roma-DB`.qualifica_modifica TO 'addetto_comunale'@'localhost';
GRANT EXECUTE ON PROCEDURE  `Piscine-Roma-DB`.qualifica_elimina TO 'addetto_comunale'@'localhost';

GRANT EXECUTE ON PROCEDURE  `Piscine-Roma-DB`.insegnante_assegna_qualifica TO 'addetto_comunale'@'localhost';
GRANT EXECUTE ON PROCEDURE  `Piscine-Roma-DB`.insegnante_cancella_qualifica TO 'addetto_comunale'@'localhost';

GRANT EXECUTE ON PROCEDURE  `Piscine-Roma-DB`.rotazione_inserisci TO 'addetto_comunale'@'localhost';
GRANT EXECUTE ON PROCEDURE  `Piscine-Roma-DB`.rotazione_modifica TO 'addetto_comunale'@'localhost';
GRANT EXECUTE ON PROCEDURE  `Piscine-Roma-DB`.rotazione_elimina TO 'addetto_comunale'@'localhost';
GRANT EXECUTE ON PROCEDURE  `Piscine-Roma-DB`.rotazione_visualizza_lista_per_piscina TO 'addetto_comunale'@'localhost';
GRANT EXECUTE ON PROCEDURE  `Piscine-Roma-DB`.rotazione_visualizza_lista_per_insegnante TO 'addetto_comunale'@'localhost';

GRANT EXECUTE ON PROCEDURE  `Piscine-Roma-DB`.utente_modifica_password TO 'addetto_comunale'@'localhost';


FLUSH PRIVILEGES;