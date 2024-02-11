package code;
import static code.Tokens.*;
%%
%class Lexico
%type Tokens
L=[a-zA-z_]+
D=[0-9]+
espacio=[ ,\t\r,\n]+
%{
    public String lexema;
%}
%%
int |
if |
else |
while |
for |
switch |
foreach |
string |
float |
char {lexema=yytext(); return Reserve;}
{espacio} {/*ignore*/}
"//".* {/*ignore*/}
"=" {return Igual;}
"+" {return Suma;}
"-" {return Resta;}
"*" {return Multiplicacion;}
"/" {return Division;}
{L} ({L} | {D})* {lexema=yytext(); return Identificador;}
("(-"{D}+")")|{D}+ {lexema=yytext(); return Numero;}
 . {return ERROR;}
