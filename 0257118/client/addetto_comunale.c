#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "defines.h"

#define fflush(stdin) while ((getchar()) != '\n')



void piscina_inserisci(){
	char nome[50],indirizzo[30],telefono[20],responsabile[30],da[11],a[11];
	int tipo;

	printf ("\nNome della piscina: ");
	scanf ("%s",nome);
	fflush(stdin);
	printf ("\nIndirizzo della piscina : ");
	scanf ("%[^\n]",indirizzo);
	fflush(stdin);
	printf ("\nTelefono della piscina : ");
	scanf ("%[^\n]",telefono);
	fflush(stdin);
	printf ("\nResponsabile della piscina : ");
	scanf ("%[^\n]",responsabile);
	fflush(stdin);
	printf ("\nLa piscina ha la vasca all'aperto? 1=si,0=no: ");
	scanf ("%i",&tipo);
	fflush(stdin);

	if(tipo == 1){
		printf ("\nMese inizio disponibilità vasca all'aperto : ");
		scanf ("%[^\n]",da);
		fflush(stdin);

		printf ("\nMese fine disponibilità vasca all'aperto : ");
		scanf ("%[^\n]",a);
		fflush(stdin);

		snprintf(query, 1000, "call piscina_inserisci('%s','%s','%s','%s','%i','%s','%s')",
					 nome, indirizzo, telefono, responsabile, tipo, da, a);
		run_sql_query(query);

	} else if(tipo == 0){
		snprintf(query, 1000, "call piscina_inserisci('%s','%s','%s','%s','%i',NULL,NULL)",
					 nome, indirizzo, telefono, responsabile, tipo);
		run_sql_query(query);
	}
}


void piscina_modifica(){
	char nome[50],indirizzo[30],telefono[20],responsabile[30],da[11],a[11];
	int tipo;

	printf ("\nNome della piscina da modificare: ");
	scanf ("%[^\n]",nome);
	fflush(stdin);
	printf ("\nNuovo indirizzo della piscina : ");
	scanf ("%[^\n]",indirizzo);
	fflush(stdin);
	printf ("\nNuovo telefono della piscina : ");
	scanf ("%[^\n]",telefono);
	fflush(stdin);
	printf ("\nNuovo responsabile della piscina : ");
	scanf ("%[^\n]",responsabile);
	fflush(stdin);
	printf ("\nLa piscina ha la vasca all'aperto? 1=si,0=no: ");
	scanf ("%i",&tipo);
	fflush(stdin);

	if(tipo == 1){
		printf ("\nMese inizio disponibilità vasca all'aperto : ");
		scanf ("%[^\n]",da);
		fflush(stdin);

		printf ("\nMese fine disponibilità vasca all'aperto : ");
		scanf ("%[^\n]",a);
		fflush(stdin);

		snprintf(query, 1000, "call piscina_modifica('%s','%s','%s','%s','%i','%s','%s')",
					 nome, indirizzo, telefono, responsabile, tipo, da, a);
		run_sql_query(query);

	} else if(tipo == 0){
		snprintf(query, 1000, "call piscina_modifica('%s','%s','%s','%s','%i',NULL,NULL)",
					 nome, indirizzo, telefono, responsabile, tipo);
		run_sql_query(query);
	}
}

void piscina_elimina(){
	char nome[50];

	printf ("\nNome della piscina da eliminare: ");
	scanf ("%s",nome);
	fflush(stdin);
	
	snprintf(query, 1000, "call piscina_elimina('%s')",nome);
	run_sql_query(query);
}

void piscina_visualizza_lista(){	
	snprintf(query, 1000, "call piscina_visualizza_lista()");
	print_sql_query(query);
}


void insegnante_inserisci(){
	char CF_Ins[17],nome[30],telefono[20],cellulare[20];

	printf ("\nCodice fiscale dell'insegnante: ");
	scanf ("%s",CF_Ins);
	fflush(stdin);
	printf ("\nNome : ");
	scanf ("%[^\n]",nome);
	fflush(stdin);
	printf ("\nTelefono : ");
	scanf ("%[^\n]",telefono);
	fflush(stdin);
	printf ("\nCellulare : ");
	scanf ("%[^\n]",cellulare);
	fflush(stdin);

	snprintf(query, 1000, "call insegnante_inserisci('%s','%s','%s','%s')",CF_Ins,nome,telefono,cellulare);
	run_sql_query(query);
}

void insegnante_modifica(){
	char CF_Ins[17],nome[30],telefono[20],cellulare[20];

	printf ("\nCodice fiscale dell'insegnante da modificare: ");
	scanf ("%s",CF_Ins);
	fflush(stdin);
	printf ("\nNuovo nome : ");
	scanf ("%[^\n]",nome);
	fflush(stdin);
	printf ("\nNuovo telefono : ");
	scanf ("%[^\n]",telefono);
	fflush(stdin);
	printf ("\nNuovo cellulare : ");
	scanf ("%[^\n]",cellulare);
	fflush(stdin);

	snprintf(query, 1000, "call insegnante_modifica('%s','%s','%s','%s')",CF_Ins,nome,telefono,cellulare);
	run_sql_query(query);
}

void insegnante_elimina(){
	char CF_Ins[17];

	printf ("\nCodice fiscale dell'insegnante da eliminare: ");
	scanf ("%s",CF_Ins);
	fflush(stdin);

	snprintf(query, 1000, "call insegnante_elimina('%s')",CF_Ins);
	run_sql_query(query);
}

void insegnante_visualizza_lista(){	
	snprintf(query, 1000, "call insegnante_visualizza_lista()");
	print_sql_query(query);
}


void qualifica_inserisci(){
	char nome[30];

	printf ("\nNome della qualifica: ");
	scanf ("%[^\n]",nome);
	fflush(stdin);

	snprintf(query, 1000, "call qualifica_inserisci('%s')",nome);
	run_sql_query(query);
}

void qualifica_modifica(){
	char old_nome[30],new_nome[30];

	printf ("\nNome della qualifica da modificare: ");
	scanf ("%[^\n]",old_nome);
	fflush(stdin);
	printf ("\nNuovo nome della qualifica: ");
	scanf ("%[^\n]",new_nome);
	fflush(stdin);

	snprintf(query, 1000, "call qualifica_modifica('%s','%s')",old_nome,new_nome);
	run_sql_query(query);
}

void qualifica_elimina(){
	char nome[30];

	printf ("\nNome della qualifica da eliminare: ");
	scanf ("%[^\n]",nome);
	fflush(stdin);

	snprintf(query, 1000, "call qualifica_elimina('%s')",nome);
	run_sql_query(query);
}


void insegnante_assegna_qualifica(){
	char CodFisc_I[17],nome_qual[30];

	printf ("\nCodice fiscale dell'insegnante: ");
	scanf ("%s",CodFisc_I);
	fflush(stdin);

	printf ("\nNome della qualifica: ");
	scanf ("%[^\n]",nome_qual);
	fflush(stdin);

	snprintf(query, 1000, "call insegnante_assegna_qualifica('%s','%s')",CodFisc_I,nome_qual);
	run_sql_query(query);
}

void insegnante_cancella_qualifica(){
	char CodFisc_I[17],nome_qual[30];

	printf ("\nCodice fiscale dell'insegnante: ");
	scanf ("%s",CodFisc_I);
	fflush(stdin);

	printf ("\nNome della qualifica da cancellare: ");
	scanf ("%[^\n]",nome_qual);
	fflush(stdin);

	snprintf(query, 1000, "call insegnante_cancella_qualifica('%s','%s')",CodFisc_I,nome_qual);
	run_sql_query(query);
}

void rotazione_inserisci(){
	char CodFisc_I[17],piscina[50],inizio[11],fine[11];

	printf ("\nCodice fiscale dell'insegnante: ");
	scanf ("%s",CodFisc_I);
	fflush(stdin);
	printf ("\nNome della piscina : ");
	scanf ("%[^\n]",piscina);
	fflush(stdin);
	printf ("\nData inizio rotazione [AAAA-MM-GG]: ");
	scanf ("%s",inizio);
	fflush(stdin);
	printf ("\nData fine rotazione [AAAA-MM-GG]: ");
	scanf ("%s",fine);
	fflush(stdin);

	snprintf(query, 1000, "call rotazione_inserisci('%s','%s','%s','%s')",inizio,fine,CodFisc_I,piscina);
	run_sql_query(query);
}

void rotazione_modifica(){
	char CodFisc_I[17],piscina[50],old_inizio[11],old_fine[11],new_inizio[11],new_fine[11];

	printf ("\nCodice fiscale dell'insegnante: ");
	scanf ("%s",CodFisc_I);
	fflush(stdin);
	printf ("\nNome della piscina : ");
	scanf ("%[^\n]",piscina);
	fflush(stdin);
	printf ("\nData inizio rotazione da modificare [AAAA-MM-GG]: ");
	scanf ("%s",old_inizio);
	fflush(stdin);
	printf ("\nData fine rotazione da modificare [AAAA-MM-GG]: ");
	scanf ("%s",old_fine);
	fflush(stdin);
	printf ("\nNuova data inizio rotazione [AAAA-MM-GG]: ");
	scanf ("%s",new_inizio);
	fflush(stdin);
	printf ("\nNuova data fine rotazione [AAAA-MM-GG]: ");
	scanf ("%s",new_fine);
	fflush(stdin);

	snprintf(query, 1000, "call rotazione_modifica('%s','%s','%s','%s','%s','%s')",old_inizio,old_fine,CodFisc_I,piscina,new_inizio,new_fine);
	run_sql_query(query);
}

void rotazione_elimina(){
	char CodFisc_I[17],piscina[50],inizio[11],fine[11];

	printf ("\nCodice fiscale dell'insegnante: ");
	scanf ("%s",CodFisc_I);
	fflush(stdin);
	printf ("\nNome della piscina : ");
	scanf ("%[^\n]",piscina);
	fflush(stdin);
	printf ("\nData inizio rotazione da eliminare [AAAA-MM-GG]: ");
	scanf ("%s",inizio);
	fflush(stdin);
	printf ("\nData fine rotazione da eliminare [AAAA-MM-GG]: ");
	scanf ("%s",fine);
	fflush(stdin);

	snprintf(query, 1000, "call rotazione_elimina('%s','%s','%s','%s')",inizio,fine,CodFisc_I,piscina);
	run_sql_query(query);
}


void rotazione_visualizza_lista_per_piscina(){
	char piscina[50];

	printf ("\nNome della piscina : ");
	scanf ("%[^\n]",piscina);
	fflush(stdin);

	snprintf(query, 1000, "call rotazione_visualizza_lista_per_piscina('%s')",piscina);
	print_sql_query(query);
}

void rotazione_visualizza_lista_per_insegnante(){
	char CodFisc_I[17];

	printf ("\nCodice fiscale dell'insegnante: ");
	scanf ("%s",CodFisc_I);
	fflush(stdin);

	snprintf(query, 1000, "call rotazione_visualizza_lista_per_insegnante('%s')",CodFisc_I);
	print_sql_query(query);
}
