#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "defines.h"

#define fflush(stdin) while ((getchar()) != '\n')



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
		
		input_wait();
	}
}