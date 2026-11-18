%{
#include <stdlib.h>
#include <stdio.h>
%}

%%
(\+|\-)?[0-9]+(\.[0-9]+)?((E|e)(\+|\-)?[0-9]+)?    { printf("NUMERO REAL / EXPONENCIAL: %s\n", yytext); }
[0-9]+                                            { printf("NUMERO ENTERO: %s\n", yytext); }
[a-zA-Z][a-zA-Z0-9]*                              { printf("IDENTIFICADOR: %s\n", yytext); }
[ \t\n]+                                          ; /* Ignorar espacios y saltos de linea */
.                                                 { printf("CARACTER NO RECONOCIDO: %s\n", yytext); }
%%

int main()
{
    yylex();
    return 0;
}
