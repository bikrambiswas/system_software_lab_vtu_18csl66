%{
#include<stdio.h>
int s_count=0;
int m_count=0;
%}
%%
"/"[^"/"]*"*/" m_count++;
"//".* s_count++;
%%
int main(int argc, char*argv[])
{
FILE *f1, *f2;
if(argc>1)
{
f1=fopen(argv[1], "r"); //open first file for reading
if(!f1)
{
printf("file error");
exit(1);
}
yyin=f1;
f2=fopen(argv[2], "w");
if(!f2)
{
printf("file error\n");
exit(1);
}
yyout=f2;
yylex();
printf("number of single line comment lines %d\n", s_count);
printf("number of multi line comment lines %d\n", m_count);
}
else
printf("expecting arguments");
return 0;
}






