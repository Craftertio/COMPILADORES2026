%{
#include <stdio.h>
%}
%%
"=="    { printf("OP_RELACIONAL: IGUAL\n"); }
"!="    { printf("OP_RELACIONAL: NO_IGUAL\n"); }
"<="    { printf("OP_RELACIONAL: MENOR_IGUAL\n"); }
">="    { printf("OP_RELACIONAL: MAYOR_IGUAL\n"); }
"<"     { printf("OP_RELACIONAL: MENOR\n"); }
">"     { printf("OP_RELACIONAL: MAYOR\n"); }
"+"     { printf("OP_ARITMETICO: SUMA\n"); }
"-"     { printf("OP_ARITMETICO: RESTA\n"); }
"*"     { printf("OP_ARITMETICO: MULTIPLICACION\n"); }
"/"     { printf("OP_ARITMETICO: DIVISION\n"); }
[ \t\n]+ ;
.       ;
%%
int main() { yylex(); return 0; }
