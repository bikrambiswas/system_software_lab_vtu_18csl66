#include<stdio.h>
#include<string.h>
char op[2],arg1[5],arg2[5],result[5];
void main()
{
FILE *fp1,*fp2;
fp1=fopen("input.txt","r");
fp2=fopen("output.txt","w");
for(;;)
{
fscanf(fp1,"%s%s%s%s",result,arg1,op,arg2);
if(feof(fp1))
break;
if(strcmp(op,"+")==0)
{
fprintf(fp2,"MOV R0,%s\n",arg1);
fprintf(fp2,"ADD R0,%s\n",arg2);
fprintf(fp2,"MOV %s,R0\n",result);
}
if(strcmp(op,"*")==0)
{
fprintf(fp2,"MOV R0,%s\n",arg1);
fprintf(fp2,"MUL R0,%s\n",arg2);
fprintf(fp2,"MOV %s,R0\n",result);
}
if(strcmp(op,"-")==0)
{
fprintf(fp2,"MOV R0,%s\n",arg1);
fprintf(fp2,"SUB R0,%s\n",arg2);
fprintf(fp2,"MOV %s,R0\n",result);
}
if(strcmp(op,"/")==0)
{
fprintf(fp2,"MOV R0,%s\n",arg1);
fprintf(fp2,"DIV R0,%s\n",arg2);
fprintf(fp2,"MOV %s,R0\n",result);
}
if(strcmp(op,"=")==0)
{
fprintf(fp2,"MOV R0,%s\n",arg1);
fprintf(fp2,"MOV %s,R0\n",result);
}
}
fclose(fp1);
fclose(fp2);
}
