%{
#include <stdio.h>
%}
%%
"if"      { printf("TOKEN: PALABRA_RESERVADA, Lexema: %s\n", yytext); }
"else"    { printf("TOKEN: PALABRA_RESERVADA, Lexema: %s\n", yytext); }
"while"   { printf("TOKEN: PALABRA_RESERVADA, Lexema: %s\n", yytext); }
"int"     { printf("TOKEN: PALABRA_RESERVADA, Lexema: %s\n", yytext); }
[a-zA-Z_][a-zA-Z0-9_]* { printf("TOKEN: IDENTIFICADOR, Lexema: %s\n", yytext); }
[0-9]+                 { printf("TOKEN: ENTERO, Lexema: %s\n", yytext); }
[ \t\n]+               ;
.                      { printf("TOKEN: DESCONOCIDO, Lexema: %s\n", yytext); }
%%
int main() { yylex(); return 0; }
