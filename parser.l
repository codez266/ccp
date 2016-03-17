%{
	#include "y.tab.h"
	#include <stdlib.h>
	#include <stdio.h>
	extern YYSTYPE yylval;
%}
D			[0-9.]
%%
"auto"|"register"|"static"|"extern"|"typedef"	{return storage-class;}
"void"|"short"|"int"|"long"|"char"|"float"|"double"|"signed"|"unsigned"	{return type-specifier}
"const"|"volatile"	{return type-qualifier}
"struct"|"union"	{return STRUCT-OR-UNION}
"*"	{return yytext[0];}
"if"	{return yytext[0];}
"else"	{return yytext[0];}
"switch"	{return yytext[0];}
"while"	{return yytext[0];}
"do"	{return yytext[0];}
"for"	{return yytext[0];}
"goto"	{return yytext[0];}
"continue"	{return yytext[0];}
"break"	{return yytext[0];}
"return"	{return yytext[0];}
"="|"*="|"/="|"%="|"+="|"-="|"<<="|">>="|"&="|"^="|"|="	{return yytext[0];}
"?"|"||"|"&&"|"|"|"&"|"^"	{return yytext[0];}
"=="|"!="	{return yytext[0];}
"<"|">"|"<="|">="	{return yytext[0];}
"<<"|">>"	{return yytext[0];}
"+"|"-"	{return yytext[0];}
"*"|"/"|"%"	{return yytext[0];}
"++"|"--"	{return yytext[0];}
"sizeof"	{return yytext[0];}
"("|")"|"["|"]"		{return yytext[0];}


[\n]	{return EOLN;}
[ \t]	;
.		;
%%
