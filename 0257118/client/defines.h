#include <mysql/mysql.h>



extern MYSQL *conn;
extern MYSQL *login;
extern char c;
extern int cmd1;
extern int cmd2;
extern int num_fields;
extern MYSQL_RES *result;
extern MYSQL_ROW row;
extern MYSQL_FIELD *field;
extern char *NOME_PISCINA_ADDETTO;
extern char query[255];


// UTILITY
extern int is_user_valid(char* username, char* password, char* ruolo);
extern void finish_with_error();
extern void input_wait();
extern MYSQL_RES* get_result_from_sql_query(char *query);
extern void print_sql_query(char *query);
extern void run_sql_query (char *query);
extern void utente_modifica_password(char* username);

// AMMINISTRATORE UTENTI
extern void utente_inserisci();
extern void utente_elimina();
extern void utenti_visualizza_lista();

// ADDETTO SEGRETERIA
extern void persona_inserisci();
extern void persona_modifica();
extern void persona_elimina();
extern void persona_effettua_ingresso_libero();
extern void persona_inserisci_iscritta_corsi();
extern void persona_modifica_iscritta_corsi();
extern void persona_elimina_iscritta_corsi();
extern void persona_effettua_iscrizione_corso();
extern void persona_cancella_iscrizione_corso();
extern void corso_inserisci();
extern void corso_modifica();
extern void corso_elimina();
extern void corso_inserisci_lezione();
extern void corso_modifica_lezione();
extern void corso_elimina_lezione();
extern void corso_visualizza_lista_per_piscina();
extern void corso_visualizza_lista_lezioni();
extern void corso_visualizza_lista_iscritti();

// ADDETTO COMUNALE
extern void piscina_inserisci();
extern void piscina_modifica();
extern void piscina_elimina();
extern void insegnante_inserisci();
extern void insegnante_modifica();
extern void insegnante_elimina();
extern void qualifica_inserisci();
extern void qualifica_modifica();
extern void qualifica_elimina();
extern void insegnante_assegna_qualifica();
extern void insegnante_cancella_qualifica();
extern void rotazione_inserisci();
extern void rotazione_modifica();
extern void rotazione_elimina();
extern void piscina_visualizza_lista();
extern void insegnante_visualizza_lista();
extern void rotazione_visualizza_lista_per_piscina();
extern void rotazione_visualizza_lista_per_insegnante();




