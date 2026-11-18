/* Declaraciones */
%{
#include <stdio.h> // necesario para realizar "printf"
%}

/* Reglas */
%%
pare     { printf("Comando pare recibido\n"); }
inicio   { printf("Comando inicio ejecutado\n"); }
%%

/* Código (main) */
int main()
{
    yylex();
    return 0;
}
