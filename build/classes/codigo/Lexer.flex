package codigo;
import static codigo.Tokens.*;
%%
%class Lexer
%type Tokens
L=[a-zA-Z_]+
D=[0-9]+
espacio=[ ,\t,\r,\n]+
%{
    public String lexeme;
%}
%%
Blastoise |
Beedrill |
Butterfree |
Choyster |
Chansey |
Charmander |
Clefairy |
Drowzee |
Electrode |
Exeggcutor | 
Farfetch |
Fearow |
Pikachu |
Ivysaur |
Raichu |
Lickitung |
Mew |
Nidorino |
Psyduck |
Rattata |
Snorlax |
Seel |
Lapras |
Eevee |
Vulpix |
Weezing |
Dratini |

while {lexeme=yytext(); return Reservadas;}
{espacio} {/*Ignore*/}
"//".* {/*Ignore*/}
"=" {return Igual;}
"+" {return Suma;}
"-" {return Resta;}
"*" {return Multiplicacion;}
"/" {return Division;}
"%" {return Division_Entera;}
{L}({L}|{D})* {lexeme=yytext(); return Identificador;}
("(-"{D}+")")|{D}+ {lexeme=yytext(); return Numero;}
 . {return ERROR;}
