%{
int yyerror();
int yyparse();
int yylex();
#include<stdio.h>
#include<stdlib.h>
%}
%token A B NL
%%
input: S NL {printf("Successful Grammar\n");exit(0);}
S: A S|B;
%%
int main()
{
printf("Enter a string\n");
yyparse();
}
int yyerror()
{
printf("Error\n");
exit(0);
}
