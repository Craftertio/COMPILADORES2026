%{
#include <stdio.h>
int mayus = 0, minus = 0, digitos = 0, espacios = 0;
%}
%%
[A-Z]    { mayus++; }
[a-z]    { minus++; }
[0-9]    { digitos++; }
[ \t\n]  { espacios++; }
.        { }
%%
int main() {
    yylex();
    printf("Mayusculas: %d\n", mayus);
    printf("Minusculas: %d\n", minus);
    printf("Digitos: %d\n", digitos);
    printf("Espacios/Saltos: %d\n", espacios);
    return 0;
}
