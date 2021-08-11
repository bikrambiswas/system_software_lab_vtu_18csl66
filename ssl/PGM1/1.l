%{
#include<stdio.h>
int v=0,op=0,id=0,flag=0;
%}
%%
[a-zA-Z]+[0-9A-Za-z]* {id++;printf("\n identifier:");ECHO;}
[\+\-\*\/\=] {op++;printf("\n operator:");ECHO;}
"(" {v++;}
")" {v--;}
";" {flag=1;}
.|\n {;}
%%
int main()
{
printf("enter the expression");
yylex();
if((op+1) ==id && v==0 &&flag==0)
{
printf("\nexpression is valid\n");
printf("Number of identifiers:%d\n",id);
printf("Number of operators:%d\n",op);
}
else
printf("\n expression is invalid\n");
}
