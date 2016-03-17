%{
	#include <math.h>
	#include <stdlib.h>
	#include <stddef.h>
	#include <alloca.h>
	#include <ctype.h>
	#define YYSTYPE int
	
%}
%token

%%

%%

#include <stdio.h>
#include <ctype.h>
char *progname;
int yylval;

main(argc, argv)
char *argv[];
{
	printf("Enter expression:");
	//progname = argv[0];
	return yyparse();
}

yyerror( s ) 
char *s;
{
	fprintf( stderr, "%s:%s\n", progname, s );
}
