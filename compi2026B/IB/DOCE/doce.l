%{
#include <stdio.h>
#include <stdlib.h>
%}
%%
0[xX][0-9a-fA-F]+ {
    long dec = strtol(yytext, NULL, 16);
    printf("Hexadecimal: %s -> Decimal: %ld\n", yytext, dec);
}
[ \t\n]+ ;
.        ;
%%
int main() { yylex(); return 0; }

