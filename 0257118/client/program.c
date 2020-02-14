#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <mysql/mysql.h>
#include <unistd.h>

#include "defines.h"

#define fflush(stdin) while ((getchar()) != '\n')
#define true 1
#define false 0

MYSQL *conn;
MYSQL *login;

char c;
int cmd1 = 0;
int cmd2 = 0;
int num_fields;
MYSQL_RES *result;
MYSQL_ROW row;
MYSQL_FIELD *field;
char *CF_I;
char *NOME_PISCINA_ADDETTO;
char query[255];



// ************************ INSEGNANTE ******************************

void get_CF_insegnante_from_username(char* username){
	MYSQL_RES* res;
	snprintf(query, 1000, "CALL get_CF_insegnante_from_username('%s');",username);

	res = get_result_from_sql_query(query);
	row = mysql_fetch_row(res);

	if(row[0] != NULL){
		CF_I = row[0];
	} else {
		printf("ERROR: Attenzione codice fiscale insegnante non trovato!\n");
		exit(1);
	}
}

void insegnante_logged(char* username){

	while(true){
		get_CF_insegnante_from_username(username);
		printf("\n##################################################\n");
		printf(" Lista funzioni eseguibili dall'utente insegnante %s:\n",CF_I);
		printf("##################################################\n\n");
		printf("  1) Esegui report di lavoro settimanale (7  giorni dalla data inserita)\n");
		printf("  2) Esegui report di lavoro mensile     (31 giorni dalla data inserita)\n");
		printf("  3) Modifica la tua password\n\n");
		printf("  99) Termina\n\n");
		printf("> Inserisci un Comando: ");
		scanf ("%i",&cmd2);

		char inizio[11];

		if(cmd2 == 1){
			printf("\n> Inserisci la data di inizio del report settimanale [AAAA-MM-GG]: ");
			scanf ("%s",inizio);
			snprintf(query, 1000, "call report_insegnante('%s','%d','%s');",inizio, 7, CF_I);
			print_sql_query(query);

		}else if(cmd2 == 2){
			printf("\n> Inserisci la data di inizio del report mensile [AAAA-MM-GG]: ");
			scanf ("%s",inizio);
			snprintf(query, 1000, "call report_insegnante('%s','%d','%s');",inizio, 31, CF_I);
			print_sql_query(query);

		}else if(cmd2 == 3){
			utente_modifica_password(username);

		}else if(cmd2 == 99){
			printf("\nINFO: Uscita...Bye\n");
			break;
		}
	}

}



// ************************ ADDETTO SEGRETERIA ******************************
void get_piscina_addetto_segreteria(char* username){
	MYSQL_RES* res;
	snprintf(query, 1000, "CALL get_piscina_addetto_segreteria('%s');",username);

	res = get_result_from_sql_query(query);
	row = mysql_fetch_row(res);

	if(row[0] != NULL){
		NOME_PISCINA_ADDETTO = row[0];
	} else {
		printf("ERROR: Attenzione piscina non trovata per l'addetto alla segreteria!\n");
		exit(1);
	}
}

void addetto_segreteria_logged(char* username){

	while(true){
		get_piscina_addetto_segreteria(username);
		printf("\n#########################################################\n");
		printf(" Lista funzioni eseguibili dall'utente addetto segreteria :\n");
		printf("##########################################################\n\n");
		printf("  1) Inserisci persona\n");
		printf("  2) Modifica persona\n");
		printf("  3) Elimina persona\n\n");

		printf("  4) Effettua ingresso libero presso %s\n\n",NOME_PISCINA_ADDETTO);

		printf("  5) Inserisci certificato medico per corsi presso %s\n",NOME_PISCINA_ADDETTO);
		printf("  6) Modifica certificato medico per corsi presso %s\n",NOME_PISCINA_ADDETTO);
		printf("  7) Elimina certificato medico per corsi presso %s\n\n",NOME_PISCINA_ADDETTO);

		printf("  8) Effettua iscrizione ad un corso presso %s\n",NOME_PISCINA_ADDETTO);
		printf("  9) Cancella iscrizione ad un corso presso %s\n\n",NOME_PISCINA_ADDETTO);

		printf("  10) Inserisci corso presso %s\n",NOME_PISCINA_ADDETTO);
		printf("  11) Modifica corso presso %s\n",NOME_PISCINA_ADDETTO);
		printf("  12) Elimina corso presso %s\n\n",NOME_PISCINA_ADDETTO);

		printf("  13) Inserisci lezione di un corso presso %s\n",NOME_PISCINA_ADDETTO);
		printf("  14) Modifica orario lezione di un corso presso %s\n",NOME_PISCINA_ADDETTO);
		printf("  15) Elimina lezione di un corso presso %s\n\n",NOME_PISCINA_ADDETTO);
		
		printf("  16) Visualizza lista corsi presso %s\n",NOME_PISCINA_ADDETTO);
		printf("  17) Visualizza lista lezioni di un corso presso %s\n",NOME_PISCINA_ADDETTO);
		printf("  18) Visualizza lista persone iscritte ad un corso presso %s\n\n",NOME_PISCINA_ADDETTO);

		printf("  19) Modifica la tua password \n\n");

		
		printf("  99) Termina\n\n");
		printf("> Inserisci un Comando: ");
		scanf ("%i",&cmd2);
		fflush(stdin);

		switch(cmd2){
			case 1:
				persona_inserisci();
				break;
			case 2:
				persona_modifica();
				break;
			case 3:
				persona_elimina();
				break;
			case 4:
				persona_effettua_ingresso_libero();
				break;
			case 5:
				persona_inserisci_iscritta_corsi();
				break;
			case 6:
				persona_modifica_iscritta_corsi();
				break;
			case 7:
				persona_elimina_iscritta_corsi();
				break;
			case 8:
				persona_effettua_iscrizione_corso();
				break;
			case 9:
				persona_cancella_iscrizione_corso();
				break;
			case 10:
				corso_inserisci();
				break;
			case 11:
				corso_modifica();
				break;
			case 12:
				corso_elimina();
				break;
			case 13:
				corso_inserisci_lezione();
				break;
			case 14:
				corso_modifica_lezione();
				break;
			case 15:
				corso_elimina_lezione();
				break;
			case 16:
				corso_visualizza_lista_per_piscina();
				break;
			case 17:
				corso_visualizza_lista_lezioni();
				break;
			case 18:
				corso_visualizza_lista_iscritti();
				break;
			case 19:
				utente_modifica_password(username);
				break;


			case 99:
				printf("\nINFO: Uscita...Bye\n");
				exit(0);
		}

	}
}



// ************************ ADDETTO COMUNALE ******************************

void addetto_comunale_logged(char* username){
	printf("INFO: Accesso eseguito come addetto comunale.\n\n");

	while(true){
		printf("\n#########################################################\n");
		printf(" Lista funzioni eseguibili dall'utente addetto comunale :\n");
		printf("##########################################################\n\n");
		printf("  1) Inserisci piscina\n");
		printf("  2) Modifica piscina\n");
		printf("  3) Elimina piscina\n\n");

		printf("  4) Inserisci insegnante\n");
		printf("  5) Modifica insegnante\n");
		printf("  6) Elimina insegnante\n\n");

		printf("  7) Inserisci qualifica\n");
		printf("  8) Modifica qualifica\n");
		printf("  9) Elimina qualifica\n\n");

		printf("  10) Assegna qualifica ad un insegnante\n");
		printf("  11) Cancella qualifica ad un insegnante\n\n");

		printf("  12) Inserisci rotazione insegnante\n");
		printf("  13) Modifica rotazione insegnante\n");
		printf("  14) Elimina rotazione insegnante\n\n");

		printf("  15) Visualizza piscine\n");
		printf("  16) Visualizza insegnanti\n");
		printf("  17) Visualizza rotazioni presso una piscina\n");
		printf("  18) Visualizza rotazioni assegnate ad un insegnante\n\n");

		printf("  19) Modifica la tua password \n\n");



		printf("  99) Termina\n\n");
		printf("> Inserisci un Comando: ");
		scanf ("%i",&cmd2);
		fflush(stdin);

		switch(cmd2){
			case 1:
				piscina_inserisci();
				break;
			case 2:
				piscina_modifica();
				break;
			case 3:
				piscina_elimina();
				break;
			case 4:
				insegnante_inserisci();
				break;
			case 5:
				insegnante_modifica();
				break;
			case 6:
				insegnante_elimina();
				break;
			case 7:
				qualifica_inserisci();
				break;
			case 8:
				qualifica_modifica();
				break;
			case 9:
				qualifica_elimina();
				break;
			case 10:
				insegnante_assegna_qualifica();
				break;
			case 11:
				insegnante_cancella_qualifica();
				break;
			case 12:
				rotazione_inserisci();
				break;
			case 13:
				rotazione_modifica();
				break;
			case 14:
				rotazione_elimina();
				break;
			case 15:
				piscina_visualizza_lista();
				break;
			case 16:
				insegnante_visualizza_lista();
				break;
			case 17:
				rotazione_visualizza_lista_per_piscina();
				break;
			case 18:
				rotazione_visualizza_lista_per_insegnante();
				break;
			case 19:
				utente_modifica_password(username);
				break;


			case 99:
				printf("\nINFO: Uscita...Bye\n");
				exit(0);
		}

	}
}


// ************************ AMMINISTRATORE UTENTI ******************************

void amministratore_utenti_logged(){
	printf("INFO: Accesso eseguito come amministratore utenti.\n\n");

	while(true){
		printf("\n#########################################################\n");
		printf(" Lista funzioni eseguibili dall'utente amministratore utenti :\n");
		printf("##########################################################\n\n");
		printf("  1) Inserisci nuovo utente del sistema\n");
		printf("  2) Elimina utente\n");
		printf("  3) Visualizza lista utenti\n\n");

		printf("  99) Termina\n\n");
		printf("> Inserisci un Comando: ");
		scanf ("%i",&cmd2);
		fflush(stdin);

		switch(cmd2){
			case 1:
				utente_inserisci();
				break;
			case 2:
				utente_elimina();
				break;
			case 3:
				utenti_visualizza_lista();
				break;

			case 99:
				printf("\nINFO: Uscita...Bye\n");
				exit(0);
		}
	}
}








// ************************ LOGIN ******************************

void login_f () {
	char u[255];
	char p[255];

	printf("\n########### Login ###########\n\n");
	printf("Seleziona il tipo di accesso?\n");
	printf("  1) Accesso come insegnante\n");
	printf("  2) Accesso come addetto segreteria\n");
	printf("  3) Accesso come addetto comunale\n\n");
	printf("> ");
	scanf ("%i",&cmd2);
	fflush(stdin);

	printf("> Inserisci l'username: ");
	scanf("%s",u);
	printf("> Inserisci la password: ");
	scanf("%s",p);
	printf("\n\n");

	
	char* ruolo;
	char* password;

	switch(cmd2){
			case 1:
				ruolo = "insegnante";
				password = "insegnante123";				
				break;
			case 2:
				ruolo = "addetto_segreteria";
				password = "asegreteria123";
				break;
			case 3:
				ruolo = "addetto_comunale";
				password = "acomunale123";
				break;
	}	

	conn = mysql_init (NULL);
	login = mysql_real_connect(conn, "localhost",ruolo, password, "Piscine-Roma-DB", 3306, NULL, 0);

	if (login == NULL) {
		fprintf(stderr, "%s\n", mysql_error(conn));
		mysql_close(conn);
		exit(1);
	} else {

		if(is_user_valid(u,p,ruolo) == 1){
			switch(cmd2){
				case 1:
					insegnante_logged(u);
					break;
				case 2:
					addetto_segreteria_logged(u);
					break;
				case 3:
					addetto_comunale_logged(u);
					break;
			}

		} else{
			printf("ERROR: Nome utente o password errata per il ruolo selezionato.\n");
			mysql_close(conn);
		}
	}
}



int main (int argc, char *argv[]) {
	while (1) {
		printf("################### Gestione piscine comunali di Roma ###################\n\n");
		printf("  1) Login\n\n");
		printf("  2) Gestione utenti\n\n");
		printf("  99) Termina\n\n");
		printf("> Inserisci un Comando: ");
		scanf ("%i",&cmd1);
		fflush(stdin);
		if (cmd1 == 1) {
			login_f();
		} else if (cmd1 == 2) {
			char user[255];
			char passw[255];

			printf("> Inserisci l'username per l'amministratore utenti: ");
			scanf("%s",user);
			printf("> Inserisci la password: ");
			scanf("%s",passw);
			printf("\n\n");

			conn = mysql_init (NULL);
			login = mysql_real_connect(conn, "localhost",user,passw, "Piscine-Roma-DB", 3306, NULL, 0);

			if (login == NULL) {
				fprintf(stderr, "%s\n", mysql_error(conn));
				mysql_close(conn);
				exit(1);
			} else {
				amministratore_utenti_logged();
			}
			
		}else if (cmd1 == 99) {
			printf("\nINFO: Uscita...Bye\n");
			exit(0);
		} 
	}
}



