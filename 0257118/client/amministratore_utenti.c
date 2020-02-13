#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "defines.h"

#define fflush(stdin) while ((getchar()) != '\n')



void utente_inserisci(){

	char username[50],password[50],ruolo[50],piscina[50];
	printf ("\nUsername: ");
	scanf ("%s",username);
	fflush(stdin);
	printf ("\nPassword: ");
	scanf ("%s",password);
	fflush(stdin);
	printf ("\nRuolo (possibili: insegnante, addetto_segreteria, addetto_comunale) : ");
	scanf ("%s",ruolo);
	fflush(stdin);

	if (strcmp(ruolo,"addetto_segreteria") == 0)  {
		printf ("\nNome della piscina di appartenenza: ");
		scanf ("%s",piscina);
		fflush(stdin);

		snprintf(query, 1000, "call utente_inserisci_addetto_segreteria('%s','%s','%s','%s')", 
						username, password, ruolo, piscina);
		run_sql_query(query);

	} else if(strcmp(ruolo,"insegnante") == 0){
		char CodFisc_Ins[17];
		printf ("\nInserisci il codice fiscale dell'insegnante già registrato dall'addetto comunale: ");
		scanf ("%s",CodFisc_Ins);
		fflush(stdin);

		
		snprintf(query, 1000, "call utente_inserisci_insegnante_addetto_comunale('%s','%s','%s')", 
						username, password, ruolo);
		run_sql_query(query);
		snprintf(query, 1000, "call insegnante_assegna_username('%s','%s')", 
						username, CodFisc_Ins);
		run_sql_query(query);

	}else {
		snprintf(query, 1000, "call utente_inserisci_insegnante_addetto_comunale('%s','%s','%s')", 
						username, password, ruolo);
		run_sql_query(query);
	}
}



void utente_elimina(){
	char username[50];
	printf ("\nUsername: ");
	scanf ("%s",username);
	fflush(stdin);
	
	snprintf(query, 1000, "call utente_elimina('%s')", username);
	run_sql_query(query);
}












