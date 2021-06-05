package codigoPLSQL;
import static codigoPLSQL.TokensP.*;
%%
%class LexerPLSQL
%type TokensP
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
( "NUMBER" ) {lexeme=yytext(); return Number;}
( CHAR ) {lexeme=yytext(); return Char;}
( VARCHAR2 ) {lexeme=yytext(); return Varchar2;}
( BOOLEAN ) {lexeme=yytext(); return Boolean;}
( DATE ) {lexeme=yytext(); retur Date;}
( "." ) {lexeme=yytext(); return Punto;}
( TYPE ) {lexeme=yytext(); return Type;}
( INDEX ) {lexeme=yytext(); return Index;}
( DECLARE ) {lexeme=yytext(); return Declare;}
( BY ) {lexeme=yytext(); return By;}
( BINARY ) {lexeme=yytext(); return Binary;}
( INTEGER ) {lexeme=yytext(); return Integer;}
( TABLE ) {lexeme=yytext(); return Table;}
( END ) {lexeme=yytext(); return End;}
( BEGIN ) {lexeme=yytext(); return Begin;}
( FIRST ) {lexeme=yytext(); return First;}
( LAST ) {lexeme=yytext(); return Last;}
( EXISTS ) {lexeme=yytext(); return Exists;}
( COUNT ) {lexeme=yytext(); return Count;}
( PRIOR ) {lexeme=yytext(); return Prior;}
( NEXT) {lexeme=yytext(); return Next;}
( TRIM)  {lexeme=yytext(); return Trim;}
( DELETE ) {lexeme=yytext(); return Delete;}
( IF ) {lexeme=yytext(); return If;}
( ELSE ) {lexeme=yytext(); return Else;}
( ELSIF) {lexeme=yytext(); return Elsif;}
( THEN ) {lexeme=yytext(); return Then;}
( GOTO ) {lexeme=yytext(); return Goto;}
( LOOP ) {lexeme=yytext(); return Loop;}
( WHILE ) {lexeme=yytext(); return While;}
( EXIT ) {lexeme=yytext(); return Exit;}
( SELECT ) {lexeme=yytext(); return Select;}

( WHEN ) {lexeme=yytext(); return  When; }
( OTHERS ) {lexeme=yytext(); return Others; }
( UPDATE ) {lexeme=yytext(); return Update;}
( FROM ) {lexeme=yytext(); return From;}
( DUAL ) {lexeme=yytext(); return Dual ;}
( INTO ) {lexeme=yytext(); return Into;}
( OPEN ) {lexeme=yytext(); return Open; }
( CLOSE ) {lexeme=yytext(); return Close;}
( TRIGGER ) {lexeme=yytext(); return Trigger;}
( CREATE ) {lexeme=yytext(); return Create;}
( ALTER ) {lexeme=yytext(); return Alter;}
( AS  ) {lexeme=yytext(); return As;}
( INSERT ) {lexeme=yytext(); return Insert; }
( FOR ) {lexeme=yytext(); return For;}
( EACH ) {lexeme=yytext(); return Each; }
( ROW ) {lexeme=yytext(); return Row;}
( BEFORE ) {lexeme=yytext(); return Before ;}
( FUNCTION ) {lexeme=yytext(); return Function; }
( return )  {lexeme=yytext(); return Return; }
( ASC ) {lexeme=yytext(); return Asc;}
( DESC ) {lexeme=yytext(); return Desc;}
( ORDER ) {lexeme=yytext(); return Order;}
( COMMIT ) {lexeme=yytext(); return Commit;}
( ROLLBACK) {lexeme=yytext(); return Rollback;}
( SAVEPOINT ) {lexeme=yytext(); return Savepoint;}
( VALUES ) {lexeme=yytext(); return Values;}
( "=" ) {lexeme=yytext(); return Op_Igual;}

( "+" ) {lexeme=yytext(); return Op_Suma;}

( "-" ) {lexeme=yytext(); return Op_Resta;}

( "*" ) {lexeme=yytext(); return Op_Multiplicacion;}

( "/" ) {lexeme=yytext(); return Op_Division;}

/* Operadores logicos */
( "AND" | "OR" | "NOT" ) {lexeme=yytext(); return Op_Logico;}

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

({L}|{D}|{espacio})* {lexeme=yytext(); return Texto;}

 . {return ERROR;}

