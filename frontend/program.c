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
char u[255];
char p[255];
char c;
int cmd1 = 0;
int cmd2 = 0;
int num_fields;
MYSQL_RES *result;
MYSQL_ROW row;
MYSQL_FIELD *field;
char CF_I[17];
char NOME_PISCINA_ADDETTO[50];
char query[255];



// ************************ INSEGNANTE ******************************

int is_CF_insegnante_valid(char* CodFisc_I){
	MYSQL_RES* res;
	snprintf(query, 1000, "CALL is_CF_insegnante_valid('%s');",CodFisc_I);

	res = get_result_from_sql_query(query);
	row = mysql_fetch_row(res);
	// verifico dal return di della procedure EXIST
	// return 1: esiste il codice fiscale insegnante
	// return 0: il codice fiscale non corrisponde ad un insegnante
	printf("RETURN: %s\n",row[0]);
	if (strcmp(row[0], "1") == 0){ // se esiste il codice fiscale...
		return 1;
	}
	return 0;
}



void insegnante_logged(){
	printf("\n######################################\n");
	printf("INFO: Accesso eseguito come insegnante.\n\n");
	printf("> Inserisci il tuo codice fiscale per continuare: ");
	scanf ("%s",CF_I);
	printf("\n");

	if(is_CF_insegnante_valid(CF_I)){
		printf("INFO: Accesso eseguito per l'insegnante %s\n",CF_I);

		while(true){
			printf("\n##################################################\n");
			printf(" Lista funzioni eseguibili dall'utente insegnante %s:\n",CF_I);
			printf("##################################################\n\n");
			printf("  1) Esegui report di lavoro settimanale (7  giorni dalla data inserita)\n");
			printf("  2) Esegui report di lavoro mensile     (31 giorni dalla data inserita)\n");
			printf("  99) Termina\n\n");
			printf("> Inserisci un Comando: ");
			scanf ("%i",&cmd2);

			char inizio[11];

			if(cmd2 == 1){
				printf("\n> Inserisci la data di inizio del report settimanale [AAAA-MM-GG]: ");
				scanf ("%s",inizio);
				snprintf(query, 1000, "call report_insegnante('%s','%d','%s');",inizio,7,CF_I);
				print_sql_query(query);

			}else if(cmd2 == 2){
				printf("\n> Inserisci la data di inizio del report mensile [AAAA-MM-GG]: ");
				scanf ("%s",inizio);
				snprintf(query, 1000, "call report_insegnante('%s','%d','%s');",inizio,31,CF_I);
				print_sql_query(query);

			}else if(cmd2 == 99){
				printf("\nINFO: Uscita...Bye\n");
				break;
			}

		}
	} else printf("ERROR: Codice fiscale non valido\n");
}



// ************************ ADDETTO SEGRETERIA ******************************

void addetto_segreteria_logged(){
	printf("\n######################################\n");
	printf("INFO: Accesso eseguito come addetto segreteria.\n\n");
	printf("> Inserisci il nome della piscina presso cui lavori: ");
	scanf ("%s",NOME_PISCINA_ADDETTO);
	printf("\n");

	if(is_piscina_addetto_valid(NOME_PISCINA_ADDETTO)){
		printf("INFO: Accesso eseguito per l'addetto alla segreteria, presso %s\n",NOME_PISCINA_ADDETTO);

		while(true){
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


				case 99:
					printf("\nINFO: Uscita...Bye\n");
					exit(0);
			}

		}
		
	}else printf("ERROR: Nome piscina non valido\n");
}



// ************************ ADDETTO COMUNALE ******************************

void addetto_comunale_logged(){
	printf("\n######################################\n");
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



			case 99:
				printf("\nINFO: Uscita...Bye\n");
				exit(0);
		}

	}
}


// ************************ LOGIN ******************************

void login_f () {
	printf("\n########### Login ###########\n\n");
	printf("> Inserisci l'username: ");
	scanf("%s",u);
	printf("> Inserisci la password: ");
	scanf("%s",p);
	printf("\n\n");

	conn = mysql_init (NULL);
	login = mysql_real_connect(conn, "localhost",u,p, "temp-test", 3306, NULL, 0);

	if (login == NULL) {
		fprintf(stderr, "%s\n", mysql_error(conn));
		mysql_close(conn);
		exit(1);
	} else {
		printf ("\nINFO: Connessione riuscita\n");

		if (strcmp(u, "insegnante") == 0) {
			insegnante_logged();

		} else if (strcmp(u, "addetto_segreteria") == 0) {
			addetto_segreteria_logged();

		} else if (strcmp(u, "addetto_comunale") == 0) {
			addetto_comunale_logged();
		}

	}

	mysql_close(conn);
	exit(0);
}



int main (int argc, char *argv[]) {
	while (1) {
		printf("################### Gestione piscine comunali di Roma ###################\n\n");
		printf("  1) Login\n");
		printf("  99) Termina\n\n");
		printf("> Inserisci un Comando: ");
		scanf ("%i",&cmd1);
		fflush(stdin);
		if (cmd1 == 1) {
			login_f();
		} else if (cmd1 == 99) {
			printf("\nINFO: Uscita...Bye\n");
			exit(0);
		} 
	}
}



