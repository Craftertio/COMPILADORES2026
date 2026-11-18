%{
#include <stdio.h>
%}
%%
"=="    { printf("OP_RELACIONAL: EQUAL\n"); }
"!="    { printf("OP_RELACIONAL: NOT_EQUAL\n"); }
"<="    { printf("OP_RELACIONAL: LESS_EQUAL\n"); }
">="    { printf("OP_RELACIONAL: GREATER_EQUAL\n"); }
"<"     { printf("OP_RELACIONAL: LESS\n"); }
">"     { printf("OP_RELACIONAL: GREATER\n"); }
"+"     { printf("OP_ARITMETICO: SUMA\n"); }
"-"     { printf("OP_ARITMETICO: RESTA\n"); }
"*"     { printf("OP_ARITMETICO: MULTIPLICACION\n"); }
"/"     { printf("OP_ARITMETICO: DIVISION\n"); }
[ \t\n]+ ;
.       ;
%%
int main() { yylex(); return 0; }
