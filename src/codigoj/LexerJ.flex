package codigoj;
import static codigoj.TokensJ.*;
%%
%class LexerJ
%type TokensJ
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
( arguments  ) {lexeme=yytext(); return Arguments;}
( console  ) {lexeme=yytext(); return Console;}
( length ) {lexeme=yytext(); return Length;}
( "in" ) {lexeme=yytext(); return In;}
( main ) {lexeme=yytext(); return Main;}
( void ) {lexeme=yytext(); return Void;}
( System ) {lexeme=yytext(); return System;}
( return ) {lexeme=yytext(); return Return;}
( "." ) {lexeme=yytext(); return Punto;}
( import ) {lexeme=yytext(); return Import;}
( this) {lexeme=yytext(); return This;}
( out ) {lexeme=yytext(); return Out;}
( println ) {lexeme=yytext(); return Println;}
( new ) {lexeme=yytext(); return New;}
( if ) {lexeme=yytext(); return If;}
( else ) {lexeme=yytext(); return Else;}
( goto ) {lexeme=yytext(); return Goto;}
( const ) {lexeme=yytext(); return Const;}
( continue ) {lexeme=yytext(); return Continue;}
( case ) {lexeme=yytext(); return Case;}
( break ) {lexeme=yytext(); return Break;}
( do ) {lexeme=yytext(); return Do;}
( while) {lexeme=yytext(); return While;}
( for ) {lexeme=yytext(); return For;}
( rq)  {lexeme=yytext(); return Raiz;}
( ptn ) {lexeme=yytext(); return Potencia;}
( default ) {lexeme=yytext(); return Default;}
( private ) {lexeme=yytext(); return Private;}
( public ) {lexeme=yytext(); return Public;}
( static ) {lexeme=yytext(); return Static;}
( function) {lexeme=yytext(); return Function;}
( switch ) {lexeme=yytext(); return Switch;}
( class ) {lexeme=yytext(); return Class;}
( catch ) {lexeme=yytext(); return Catch;}
( finally ) {lexeme=yytext(); return Finally;}

( alert ) {lexeme=yytext(); return  Alert;}
( write ) {lexeme=yytext(); return Write;}
( document ) {lexeme=yytext(); return Document;}
( prompt ) {lexeme=yytext(); return Prompt;}
( concat ) {lexeme=yytext(); return Concat;}
( includes ) {lexeme=yytext(); return Includes;}
( "var" ) {lexeme=yytext(); return Var;}
( "let" ) {lexeme=yytext(); return Let;}
( "log" ) {lexeme=yytext(); return Log;}

( int ) {lexeme=yytext(); return Int;}
( string ) {lexeme=yytext(); return String;}
( float ) {lexeme=yytext(); return Float;}
( bool ) {lexeme=yytext(); return Bool;}
( short) {lexeme=yytext(); return Short;}
( long ) {lexeme=yytext(); return Long;}
( char )  {lexeme=yytext(); return Char;}
( double ) {lexeme=yytext(); return Double;}
( byte )  {lexeme=yytext(); return Byte;}

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

":" {lexeme=yytext(); return Dos_Puntos;}


{L}({L}|{D})* {lexeme=yytext(); return Identificador;}
("(-"{D}+")")|{D}+ {lexeme=yytext(); return Numero;}
{D}+"."{D}+ {lexeme=yytext(); return Real;}
{L}|{D}|{espacio} {lexeme=yytext(); return Texto;}
 . {return ERROR;}



