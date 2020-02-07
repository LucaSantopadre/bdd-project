#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "defines.h"

#define fflush(stdin) while ((getchar()) != '\n')



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

	snprintf(query, 1000, "call persona_inserisci('%s','%s','%s')", CF_P, indirizzo, nome);
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
		fflush(stdin);

		snprintf(query, 1000, "call persona_inserisci_contatti('%s','%s','%s','%s')", 
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
	
	snprintf(query, 1000, "call persona_modifica('%s','%s','%s')", CF_P, indirizzo, nome);
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
		fflush(stdin);

		snprintf(query, 1000, "call persona_modifica_contatti('%s','%s','%s','%s')", 
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
	
	snprintf(query, 1000, "call persona_elimina('%s')", CF_P);
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


	snprintf(query, 1000, "call persona_effettua_ingresso_libero('%s','%s','%s')",
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
	fflush(stdin);


	snprintf(query, 1000, "call persona_inserisci_iscritta_corsi('%s','%s','%s','%s')",
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
	fflush(stdin);


	snprintf(query, 1000, "call persona_modifica_iscritta_corsi('%s','%s','%s','%s')",
					 CF_P, medico, data_certificato, data_nascita);
	run_sql_query(query);

}

void persona_elimina_iscritta_corsi(){
	//TODO ON DELETE CASCADE?
	char CF_P[17];
	printf ("\nCodice fiscale della persona iscritta ai corsi da eliminare:  ");
	scanf ("%s",CF_P);
	fflush(stdin);
	
	snprintf(query, 1000, "call persona_elimina('%s')", CF_P);
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


	snprintf(query, 1000, "call persona_effettua_iscrizione_corso('%s','%s','%s')",
					 CF_P, corso, NOME_PISCINA_ADDETTO);
	run_sql_query(query);
}

void persona_cancella_iscrizione_corso(){
	char CF_P[17],corso[30];
	printf ("\nCodice fiscale della persona cui si vuole cancellare l'iscrizione:  ");
	scanf ("%s",CF_P);
	fflush(stdin);

	printf ("\nCorso esistente per la quale si vuole cancellare l'iscrizione presso %s per la persona %s : ",NOME_PISCINA_ADDETTO, CF_P);
	scanf ("%[^\n]",corso);
	fflush(stdin);
	
	snprintf(query, 1000, "call persona_cancella_iscrizione_corso('%s','%s','%s')", CF_P, corso, NOME_PISCINA_ADDETTO);
	run_sql_query(query);
}

void corso_visualizza_lista_iscritti(){
	char corso[30];

	printf ("\nCorso esistente presso %s  : ",NOME_PISCINA_ADDETTO);
	scanf ("%[^\n]",corso);
	fflush(stdin);
	
	snprintf(query, 1000, "call corso_visualizza_lista_iscritti('%s','%s')", corso, NOME_PISCINA_ADDETTO);
	print_sql_query(query);
}


void corso_inserisci(){
	char Nome_Corso[30];
	float costo;
	int massimo,minimo;

	printf ("\nNome del corso: ");
	scanf ("%[^\n]",Nome_Corso);
	fflush(stdin);

	printf ("\nCosto del corso: ");
	scanf ("%f",&costo);
	fflush(stdin);
	printf ("\nNumero massimo di partecipanti: ");
	scanf ("%i",&massimo);
	fflush(stdin);
	printf ("\nNumero minimo di partecipanti: ");
	scanf ("%i",&minimo);
	fflush(stdin);


	snprintf(query, 1000, "call corso_inserisci('%s','%s','%f','%i','%i')",
					 Nome_Corso, NOME_PISCINA_ADDETTO, costo, massimo, minimo);
	run_sql_query(query);
}

void corso_modifica(){
	char Nome_Corso[30];
	float costo;
	int massimo,minimo;

	printf ("\nNome del corso da modificare presso %s: ",NOME_PISCINA_ADDETTO);
	scanf ("%[^\n]",Nome_Corso);
	fflush(stdin);

	printf ("\nNuovo costo del corso: ");
	scanf ("%f",&costo);
	fflush(stdin);
	printf ("\nNuovo numero massimo di partecipanti: ");
	scanf ("%i",&massimo);
	fflush(stdin);
	printf ("\nNuovo numero minimo di partecipanti: ");
	scanf ("%i",&minimo);
	fflush(stdin);


	snprintf(query, 1000, "call corso_modifica('%s',%s','%f','%i','%i')",
					 Nome_Corso, NOME_PISCINA_ADDETTO, costo, massimo, minimo);
	run_sql_query(query);
}

void corso_elimina(){
	char Nome_Corso[30];

	printf ("\nNome del corso da eliminare presso %s: ",NOME_PISCINA_ADDETTO);
	scanf ("%[^\n]",Nome_Corso);
	fflush(stdin);


	snprintf(query, 1000, "call corso_elimina('%s',%s')",
					 Nome_Corso, NOME_PISCINA_ADDETTO );
	run_sql_query(query);
}

void corso_visualizza_lista_per_piscina(){

	snprintf(query, 1000, "call corso_visualizza_lista_per_piscina('%s')",
					  NOME_PISCINA_ADDETTO );
	print_sql_query(query);
}


void corso_inserisci_lezione(){
	char Nome_Corso[30],dalle[9],alle[9];
	int giorno;

	printf ("\nNome del corso esistente presso %s: ",NOME_PISCINA_ADDETTO);
	scanf ("%[^\n]",Nome_Corso);
	fflush(stdin);

	printf ("\nGiorno della settimana [1-7] (1:Domenica, 2:Lunedi, 3:Martedi, 4:Mercoledi, 5:Giovedi, 6:Venerdi, 7:Sabato) ");
	scanf ("%i",&giorno);
	fflush(stdin);
	printf ("\nOrario di inizio [HH:MM] : ");
	scanf ("%[^\n]",dalle);
	fflush(stdin);
	printf ("\nOrario di fine [HH:MM] : ");
	scanf ("%[^\n]",alle);
	fflush(stdin);


	snprintf(query, 1000, "call corso_inserisci_lezione('%i','%s','%s','%s','%s')",
					 giorno, dalle, alle, Nome_Corso, NOME_PISCINA_ADDETTO);
	run_sql_query(query);
}

void corso_modifica_lezione(){
	char Nome_Corso[30],old_dalle[9],old_alle[9],new_dalle[9],new_alle[9];
	int giorno;

	printf ("\nNome del corso presso %s da modificare: ",NOME_PISCINA_ADDETTO);
	scanf ("%[^\n]",Nome_Corso);
	fflush(stdin);

	printf ("\nGiorno della settimana da modificare [1-7] (1:Domenica, 2:Lunedi, 3:Martedi, 4:Mercoledi, 5:Giovedi, 6:Venerdi, 7:Sabato) ");
	scanf ("%i",&giorno);
	fflush(stdin);
	printf ("\nOrario di inizio da modificare[HH:MM] : ");
	scanf ("%[^\n]",old_dalle);
	fflush(stdin);
	printf ("\nOrario di fine da modificare[HH:MM] : ");
	scanf ("%[^\n]",old_alle);
	fflush(stdin);
	printf ("\nNuovo orario di inizio[HH:MM] : ");
	scanf ("%[^\n]",new_dalle);
	fflush(stdin);
	printf ("\nNuovo orario di fine[HH:MM] : ");
	scanf ("%[^\n]",new_alle);
	fflush(stdin);


	snprintf(query, 1000, "call corso_modifica_lezione('%i','%s','%s','%s','%s','%s','%s')",
					 giorno, old_dalle, old_alle, Nome_Corso, NOME_PISCINA_ADDETTO, new_dalle, new_alle);
	run_sql_query(query);
}


void corso_elimina_lezione(){
	char Nome_Corso[30],dalle[9],alle[9];
	int giorno;

	printf ("\nNome del corso esistente da eliminare presso %s: ",NOME_PISCINA_ADDETTO);
	scanf ("%[^\n]",Nome_Corso);
	fflush(stdin);

	printf ("\nGiorno della settimana del corso da eliminare [1-7] (1:Domenica, 2:Lunedi, 3:Martedi, 4:Mercoledi, 5:Giovedi, 6:Venerdi, 7:Sabato) ");
	scanf ("%i",&giorno);
	fflush(stdin);
	printf ("\nOrario di inizio del corso da eliminare [HH:MM] : ");
	scanf ("%[^\n]",dalle);
	fflush(stdin);
	printf ("\nOrario di fine del corso da eliminare [HH:MM] : ");
	scanf ("%[^\n]",alle);
	fflush(stdin);


	snprintf(query, 1000, "call corso_elimina_lezione('%i','%s','%s','%s','%s')",
					 giorno, dalle, alle, Nome_Corso, NOME_PISCINA_ADDETTO);
	run_sql_query(query);
}

void corso_visualizza_lista_lezioni(){
	char Nome_Corso[30];

	printf ("\nNome del corso esistente presso %s: ",NOME_PISCINA_ADDETTO);
	scanf ("%[^\n]",Nome_Corso);
	fflush(stdin);

	snprintf(query, 1000, "call corso_visualizza_lista_lezioni('%s','%s')",
					  Nome_Corso,NOME_PISCINA_ADDETTO );
	print_sql_query(query);
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