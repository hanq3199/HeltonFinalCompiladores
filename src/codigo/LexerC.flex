package codigo;
import static codigo.TokensC.*;
%%
%class Lexer
%type TokensC
L=[a-zA-Z_]+
D=[0-9]+
espacio=[ ,\t,\r]+
%{
    public String lexeme;
%}
%%

/* Espacios en blanco */
{espacio} {/*Ignore*/}

/* Comentarios */
( "//"(.)* ) {/*Ignore*/}

( "\n" ) {return Linea;}
( "\"" ) {lexeme=yytext(); return Comillas;}
( main ) {lexeme=yytext(); return Main;}
( void ) {lexeme=yytext(); return Void;}
( cin) {lexeme=yytext(); return Cin;}
( cout ) {lexeme=yytext(); return Cout;}
( if ) {lexeme=yytext(); return If;}
( else ) {lexeme=yytext(); return Else;}
( getch ) {lexeme=yytext(); return Getch;}
( goto ) {lexeme=yytext(); return Goto;}
( menu ) {lexeme=yytext(); return Menu;}
( const ) {lexeme=yytext(); return Const;}
( continue ) {lexeme=yytext(); return Continue;}
( case ) {lexeme=yytext(); return Case;}
( break ) {lexeme=yytext(); return Break;}
( do ) {lexeme=yytext(); return Do;}
( while) {lexeme=yytext(); return While;}
( for ) {lexeme=yytext(); return For;}
( rq)  {lexeme=yytext(); return Raiz;}
( ptn ) {lexeme=yytext(); return Potencia;}
( delete ) {lexeme=yytext(); return Delete;}
( private ) {lexeme=yytext(); return Private;}
( public ) {lexeme=yytext(); return Public;}
( static ) {lexeme=yytext(); return Static;}
( struct) {lexeme=yytext(); return Struct;}
( switch ) {lexeme=yytext(); return Switch;}
( class ) {lexeme=yytext(); return Class;}

( int ) {lexeme=yytext(); return Int;}
( string ) {lexeme=yytext(); return String;}
( float ) {lexeme=yytext(); return Float;}
( bool ) {lexeme=yytext(); return Bool;}
( short) {lexeme=yytext(); return Short;}
( long ) {lexeme=yytext(); return Long;}
( char )  {lexeme=yytext(); return Char;}
( double ) {lexeme=yytext(); return Double;}

( "=" ) {lexeme=yytext(); return Op_Igual;}

( "+" ) {lexeme=yytext(); return Op_Suma;}

( "-" ) {lexeme=yytext(); return Op_Resta;}

( "*" ) {lexeme=yytext(); return Op_Multiplicacion;}

( "/" ) {lexeme=yytext(); return Op_Division;}

/* Operadores logicos */
( "&&" | "||" | "!" | "&" | "|" ) {lexeme=yytext(); return Op_Logico;}

/*Operadores Relacionales */
( ">" | "<" | "==" | "!=" | ">=" | "<=" | "<<" | ">>" ) {lexeme = yytext(); return Op_Relacional;}

/* Operadores Atribucion */
( "+=" | "-="  | "*=" | "/=" | "%=" ) {lexeme = yytext(); return Op_Atribucion;}

/* Operadores Incremento y decremento */
( "++" | "--" ) {lexeme = yytext(); return Op_Incremento;}

/*Operadores Booleanos*/
(true | false)      {lexeme = yytext(); return Op_Booleano;}

"(" {lexeme=yytext(); return Parentesis_Izq;}
")" {lexeme=yytext(); return Parentesis_Der;}

( "{" ) {lexeme=yytext(); return Llave_Izq;}
( "}" ) {lexeme=yytext(); return Llave_Der;}

( "[" ) {lexeme = yytext(); return Corchete_Izq;}
( "]" ) {lexeme = yytext(); return Corchete_Der;}

";" {lexeme=yytext(); return P_Coma;}

{L}({L}|{D})* {lexeme=yytext(); return Identificador;}
("(-"{D}+")")|{D}+ {lexeme=yytext(); return Numero;}
{D}+"."{D}+ {lexeme=yytext(); return Real;}



 . {return ERROR;}
