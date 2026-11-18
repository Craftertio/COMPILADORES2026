%{
#include <stdio.h>
#include <stdlib.h>
%}
%%
[0-1]+ {
    long dec = strtol(yytext, NULL, 2);
    printf("Binario: %s es Decimal: %ld\n", yytext, dec);
}
[ \t\n]+ ;
.        ;
%%
int main() { yylex(); return 0; }
