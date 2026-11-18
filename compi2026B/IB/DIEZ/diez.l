%{
#include <stdio.h>
%}
%%
[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,} { 
    printf("TOKEN: CORREO_VAL, Lexema: %s\n", yytext); 
}
[ \t\n]+ ;
.        ;
%%
int main() { yylex(); return 0; }
