%{
#include<stdio.h>
#include "y.tab.h"
extern yylval;
%}
%%
[ \t] ; //Do nothing
[+|-|*|/|=|<|>] {printf("%s is an operator \n",  yytext); return OP;}
[0-9]+ {yylval=atoi(yytext); printf("%d is a number",yylval); return DIGIT;}
int|char|bool|float|void|for|do|while|if|else|return|void|printf|main {printf("%s is a keyword",yytext); return  KEY;}
[a-zA-Z0-9]+ {printf("%s is an identifier\n",yytext); return ID;}
. ;
%%
