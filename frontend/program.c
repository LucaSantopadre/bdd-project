#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <mysql/mysql.h>
#include <unistd.h>
#define fflush(stdin) while ((getchar()) != '\n')
#define true 1
#define false 0

MYSQL *conn;
MYSQL *login;
char u[255];
char p[255];
char query[255];
char c;
int cmd1 = 0;
int cmd2 = 0;
int num_fields;
MYSQL_RES *result;
MYSQL_ROW row;
MYSQL_FIELD *field;
char CF_I[16];
char NOME_PISCINA_ADDETTO[50];



// ************************ UTILS ******************************

static void finish_with_error(MYSQL *con, char *err) {
	fprintf(stderr, "%s error: %s\n", err, mysql_error(con));
	mysql_close(con);
	exit(1);
}



void input_wait() {
	fflush(stdin);
	char c;
	printf("\nINFO: Premi invio per continuare: \n");
	while (c = getchar() != '\n'){}
}



MYSQL_RES* get_result_from_sql_query(char *query){
	printf("QUERY: %s \n",query);
	mysql_query (conn,query);
	result = mysql_store_result(conn);

	if (result == NULL){
		finish_with_error(conn, "errore");
	}

	MYSQL_RES *res;
	res = result;
	
	mysql_free_result(result);
	mysql_next_result(conn);
	input_wait();
	return res;
}




void print_sql_query(char *query){
	printf("QUERY: %s \n",query);
	mysql_query (conn,query);
	result = mysql_store_result(conn);

	if (result == NULL){
		finish_with_error(conn, "errore");
	}
	num_fields = mysql_num_fields(result);
	printf ("\n");
	while ((row = mysql_fetch_row(result))){
		for(int i = 0; i < num_fields; i++) {
			if (i == 0) {
				while(field = mysql_fetch_field(result)){ //include il nome della colonna nella stampa
					printf( "| %s ", field->name);
				}
				printf ("\n");
			}
			printf(" %s ", row[i] ? row[i] : "NULL");
		}
	}
	printf("\n");
	mysql_free_result(result);
	mysql_next_result(conn);
	input_wait();
}


void run_sql_query (char *query) {
	printf("QUERY: %s \n",query);
	if(mysql_query(conn,query)) {
		finish_with_error(conn, "Query");
	} else {
		printf ("INFO: Operazione completata.");
		input_wait();
	}
}

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



void persona_inserisci(){
	char CF_P[17],indirizzo[50],nome[30];
	printf ("\nCodice fiscale della persona: ");
	scanf ("%s",CF_P);
	fflush(stdin);
	printf ("\nIndirizzo: ");
	scanf ("%[^\n]",indirizzo);
	fflush(stdin);
	printf ("\nNome: ");
	scanf ("%[^\n]",nome);
	fflush(stdin);

	snprintf(query, 1000, "\ncall persona_inserisci('%s','%s','%s')", CF_P, indirizzo, nome);
	run_sql_query(query);

	
	printf("> Vuoi inserire i contatti (mail, cellulare, telefono)? s/n: ");
	char choice;
	scanf ("%c",&choice);
	fflush(stdin);
	if (choice == 's') {
		char mail[30],cellulare[20],telefono[20];

		printf ("\nMail: ");
		scanf ("%[^\n]",mail);
		fflush(stdin);
		printf ("\nCellulare: ");
		scanf ("%[^\n]",cellulare);
		fflush(stdin);
		printf ("\nTelefono: ");
		scanf ("%[^\n]",telefono);

		snprintf(query, 1000, "\ncall persona_inserisci_contatti('%s','%s','%s','%s')", 
						CF_P, mail, cellulare, telefono);
		run_sql_query(query);
	} 
}

void persona_modifica(){
	char CF_P[17],indirizzo[50],nome[30];
	printf ("\nCodice fiscale della persona da modificare: ");
	scanf ("%s",CF_P);
	fflush(stdin);

	printf ("\nNuovo indirizzo: ");
	scanf ("%[^\n]",indirizzo);
	fflush(stdin);
	printf ("\nNuovo nome: ");
	scanf ("%[^\n]",nome);
	fflush(stdin);
	
	snprintf(query, 1000, "\ncall persona_modifica('%s','%s','%s')", CF_P, indirizzo, nome);
	run_sql_query(query);

	printf("> Vuoi modificare i contatti (mail, cellulare, telefono)? s/n: ");
	char choice;
	scanf ("%c",&choice);
	fflush(stdin);
	if (choice == 's') {
		char mail[30],cellulare[20],telefono[20];

		printf ("\nMail: ");
		scanf ("%[^\n]",mail);
		fflush(stdin);
		printf ("\nCellulare: ");
		scanf ("%[^\n]",cellulare);
		fflush(stdin);
		printf ("\nTelefono: ");
		scanf ("%[^\n]",telefono);

		snprintf(query, 1000, "\ncall persona_modifica_contatti('%s','%s','%s','%s')", 
						CF_P, mail, cellulare, telefono);
		run_sql_query(query);
	} 
}

void persona_elimina(){
	//TODO ON DELETE CASCADE?
	char CF_P[17];
	printf ("\nCodice fiscale della persona da eliminare: ");
	scanf ("%s",CF_P);
	fflush(stdin);
	
	snprintf(query, 1000, "\ncall persona_elimina('%s')", CF_P);
	run_sql_query(query);
}

void persona_effettua_ingresso_libero(){
	char CF_P[17],data_ingresso[11],nome_piscina[50];

	printf ("\nCodice fiscale della persona: ");
	scanf ("%s",CF_P);
	fflush(stdin);

	printf ("\nData ingresso : ");
	scanf ("%[^\n]",data_ingresso);
	fflush(stdin);


	snprintf(query, 1000, "\ncall persona_effettua_ingresso_libero('%s','%s','%s')",
					 CF_P, data_ingresso, NOME_PISCINA_ADDETTO);
	run_sql_query(query);
}

void persona_inserisci_iscritta_corsi(){
	char CF_P[17],medico[30],data_certificato[11],data_nascita[11];

	printf ("\nCodice fiscale della persona: ");
	scanf ("%s",CF_P);
	fflush(stdin);

	printf ("\nMedico che ha redatto il certificato: ");
	scanf ("%[^\n]",medico);
	fflush(stdin);
	printf ("\nData certificato medico: ");
	scanf ("%[^\n]",data_certificato);
	fflush(stdin);
	printf ("\nData di nascita: ");
	scanf ("%[^\n]",data_nascita);


	snprintf(query, 1000, "\ncall persona_inserisci_iscritta_corsi('%s','%s','%s','%s')",
					 CF_P, medico, data_certificato, data_nascita);
	run_sql_query(query);

}

void persona_modifica_iscritta_corsi(){
	char CF_P[17],medico[30],data_certificato[11],data_nascita[11];

	printf ("\nCodice fiscale della persona iscritta ai corsi da modificare: ");
	scanf ("%s",CF_P);
	fflush(stdin);

	printf ("\nNuovo medico che ha redatto il certificato : ");
	scanf ("%[^\n]",medico);
	fflush(stdin);
	printf ("\nNuova data certificato medico: ");
	scanf ("%[^\n]",data_certificato);
	fflush(stdin);
	printf ("\nNuova data di nascita: ");
	scanf ("%[^\n]",data_nascita);


	snprintf(query, 1000, "\ncall persona_modifica_iscritta_corsi('%s','%s','%s','%s')",
					 CF_P, medico, data_certificato, data_nascita);
	run_sql_query(query);

}

void persona_elimina_iscritta_corsi(){
	//TODO ON DELETE CASCADE?
	char CF_P[17];
	printf ("\nCodice fiscale della persona iscritta ai corsi da eliminare:  ");
	scanf ("%s",CF_P);
	fflush(stdin);
	
	snprintf(query, 1000, "\ncall persona_elimina('%s')", CF_P);
	run_sql_query(query);
}

void persona_effettua_iscrizione_corso(){
	char CF_P[17],corso[30];

	printf ("\nCodice fiscale della persona: ");
	scanf ("%s",CF_P);
	fflush(stdin);

	printf ("\nCorso esistente presso %s: ",NOME_PISCINA_ADDETTO);
	scanf ("%[^\n]",corso);
	fflush(stdin);


	snprintf(query, 1000, "\ncall persona_effettua_iscrizione_corso('%s','%s','%s')",
					 CF_P, corso, NOME_PISCINA_ADDETTO);
	run_sql_query(query);
}

void persona_cancella_iscrizione_corso(){
	//TODO ON DELETE CASCADE?
	char CF_P[17],corso[30];
	printf ("\nCodice fiscale della persona cui si vuole cancellare l'iscrizione:  ");
	scanf ("%s",CF_P);
	fflush(stdin);

	printf ("\nCorso esistente per la quale si vuole cancellare l'iscrizione presso %s per la persona %s : ",NOME_PISCINA_ADDETTO, CF_P);
	scanf ("%[^\n]",corso);
	fflush(stdin);
	
	snprintf(query, 1000, "\ncall persona_cancella_iscrizione_corso('%s','%s','%s')", CF_P, corso, NOME_PISCINA_ADDETTO);
	run_sql_query(query);
}


void corso_inserisci(){
	char Nome_Corso[30];
	float costo;
	int massimo,minimo;

	printf ("\nNome del corso: ");
	scanf ("%s",Nome_Corso);
	fflush(stdin);

	printf ("\nCosto del corso: ");
	scanf ("%f",&costo);
	fflush(stdin);
	printf ("\nNumero massimo di partecipanti: ");
	scanf ("%i",&massimo);
	fflush(stdin);
	printf ("\nNumero minimo di partecipanti: ");
	scanf ("%i",&minimo);


	snprintf(query, 1000, "\ncall corso_inserisci('%s','%f','%i','%i')",
					 Nome_Corso, costo, massimo, minimo);
	run_sql_query(query);

}




int is_piscina_addetto_valid(char* piscina){
	MYSQL_RES* res;
	snprintf(query, 1000, "CALL is_piscina_addetto_valid('%s');",piscina);

	res = get_result_from_sql_query(query);
	row = mysql_fetch_row(res);
	// verifico dal return di della procedure EXIST
	// return 1: esiste la piscina
	printf("RETURN: %s\n",row[0]);
	if (strcmp(row[0], "1") == 0){ // se esiste la piscina...
		return 1;
	}
	return 0;
}


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
			printf("  5) Inserisci iscritto ai corsi presso %s\n",NOME_PISCINA_ADDETTO);
			printf("  6) Modifica iscritto ai corsi presso %s\n",NOME_PISCINA_ADDETTO);
			printf("  7) Elimina iscritto ai corsi presso %s\n\n",NOME_PISCINA_ADDETTO);

			printf("  8) Effettua iscrizione ad un corso presso %s\n",NOME_PISCINA_ADDETTO);
			printf("  9) Cancella iscrizione ad un corso presso %s\n\n",NOME_PISCINA_ADDETTO);

			printf("  10) Inserisci corso presso %s\n",NOME_PISCINA_ADDETTO);
			printf("  11) Modifica corso presso %s\n",NOME_PISCINA_ADDETTO);
			printf("  12) Elimina corso presso %s\n\n",NOME_PISCINA_ADDETTO);

			printf("  13) Inserisci lezione di un corso presso %s\n",NOME_PISCINA_ADDETTO);
			printf("  14) Modifica lezione di un corso presso %s\n",NOME_PISCINA_ADDETTO);
			printf("  15) Elimina lezione di un corso presso %s\n\n",NOME_PISCINA_ADDETTO);

			printf("  99) Termina\n\n");
			printf("> Inserisci un Comando: ");
			scanf ("%i",&cmd2);

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
					break;
				case 12:
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
	printf("ADDETTO COMUNALE\n");
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
		if (cmd1 == 1) {
			login_f();
		} else if (cmd1 == 99) {
			printf("\nINFO: Uscita...Bye\n");
			exit(0);
		}
	}
}



