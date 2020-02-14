#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "defines.h"

#define fflush(stdin) while ((getchar()) != '\n')



int is_user_valid(char* username, char* password, char* ruolo){
	MYSQL_RES* res;
	snprintf(query, 1000, "CALL is_user_valid('%s','%s','%s');",username,password,ruolo);
	fflush(stdin);

	res = get_result_from_sql_query(query);
	row = mysql_fetch_row(res);

	printf("RETURN: %s\n",row[0]);
	if (strcmp(row[0], "1") == 0){ 
		return 1;
	}
	return 0;
}



void finish_with_error(MYSQL *con, char *err) {
	fprintf(stderr, "%s error: %s\n", err, mysql_error(con));
	mysql_close(con);
	exit(1);
}



void input_wait() {
	char c;
	printf("\nINFO: Premi invio per continuare: \n");
	while (c = getchar() != '\n'){}
}



MYSQL_RES* get_result_from_sql_query(char *query){
	printf("QUERY: %s ",query);
	mysql_query (conn,query);
	result = mysql_store_result(conn);

	if (result == NULL){
		finish_with_error(conn, "errore");
	}

	MYSQL_RES *res;
	res = result;
	
	mysql_free_result(result);
	mysql_next_result(conn);
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
	fflush(stdin);
	mysql_free_result(result);
	mysql_next_result(conn);
	input_wait();
}


void run_sql_query (char *query) {
	printf("QUERY: %s \n",query);
	if(mysql_query(conn,query)) {
		finish_with_error(conn, "Query");
	} else {
		
		input_wait();
	}
}


// -------------- MODIFICA PASSWORD UTENTE -----------------
void utente_modifica_password(char* username){
	char old_password[50],new_password[50];

	printf ("\nInserisci la tua VECCHIA password : ");
	scanf ("%s",old_password);
	fflush(stdin);
	printf ("\nInserisci la NUOVA password : ");
	scanf ("%s",new_password);
	fflush(stdin);


	snprintf(query, 1000, "call utente_modifica_password('%s','%s','%s')",
					 username, old_password, new_password );
	run_sql_query(query);
}
