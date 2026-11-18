%{
#include <stdio.h>
%}
%%
[0-9]+                 { printf("Valido (ENTERO): %s\n", yytext); }
[a-zA-Z_][a-zA-Z0-9_]* { printf("Valido (IDENTIFICADOR): %s\n", yytext); }
","                    { printf("Separador (COMA)\n"); }
[ \t\n]+               ;
.                      { printf("ERROR LEXICO: '%s'\n", yytext); }
%%
int main() { yylex(); return 0; }

