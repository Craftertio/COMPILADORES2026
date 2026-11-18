%{
#include <stdio.h>
int conteo[10] = {0};
%}
%%
[0-9]    { conteo[yytext[0] - '0']++; }
.|\n     { }
%%
int main() {
    yylex();
    printf("--- TABLA DE FRECUENCIAS ---\n");
    for(int i = 0; i < 10; i++) {
        printf("Digito %d: %d veces\n", i, conteo[i]);
    }
    return 0;
}
