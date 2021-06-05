package codigoP;
import static codigoP.TokensPascal.*;
%%
%class LexerPascal
%type TokensPascal
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
( absolute ) {lexeme=yytext(); return Adsolute;}
( asm ) {lexeme=yytext(); return Asm;}
( circle ) {lexeme=yytext(); return Circle;}
( destructor ) {lexeme=yytext(); return Destructor;}
( downto ) {lexeme=yytext(); retur Downto;}
( "." ) {lexeme=yytext(); return Punto;}
( external  ) {lexeme=yytext(); return External;}
( forward ) {lexeme=yytext(); return Forward;}
( if ) {lexeme=yytext(); return If;}
( inline ) {lexeme=yytext(); return Inline;}
( label ) {lexeme=yytext(); return Label;}
( or ) {lexeme=yytext(); return Or; }
( not ) {lexeme=yytext(); return Not;}
( procedure ) {lexeme=yytext(); return Procedure;}
( record ) {lexeme=yytext(); return Record;}
( set ) {lexeme=yytext(); return Set;}
( string ) {lexeme=yytext(); return String ;}
( type ) {lexeme=yytext(); return Type;}
( uses ) {lexeme=yytext(); return Uses;}
( while ) {lexeme=yytext(); return While; }
( and ) {lexeme=yytext(); return And;}
( begin )  {lexeme=yytext(); return Begin;}
( const  ) {lexeme=yytext(); return Const; }
( div ) {lexeme=yytext(); return Div; }
( else ) {lexeme=yytext(); return Else;}
( file ) {lexeme=yytext(); return File;}
( function ) {lexeme=yytext(); return Function;}
( implemetation ) {lexeme=yytext(); return Implemetation;}
( interface) {lexeme=yytext(); return Interface;}
( mod ) {lexeme=yytext(); return Mod;}
( object ) {lexeme=yytext(); return Object;}
( packed ) {lexeme=yytext(); return Packed;}
( program ) {lexeme=yytext(); return  Program; }
( rectangle ) {lexeme=yytext(); return Rectangle; }
( shl ) {lexeme=yytext(); return Shl;}
( then ) {lexeme=yytext(); return Then;}
( unit ) {lexeme=yytext(); return Unit ;}
( var ) {lexeme=yytext(); return Var;}
( with ) {lexeme=yytext(); return With; }
( array ) {lexeme=yytext(); return Array;}
( case) {lexeme=yytext(); return Case;}
( constructor ) {lexeme=yytext(); return Constructor;}
( do ) {lexeme=yytext(); return Do;}
( end ) {lexeme=yytext(); return End;}
( for ) {lexeme=yytext(); return For; }
( goto ) {lexeme=yytext(); return Goto;}
( in ) {lexeme=yytext(); return In; }
( interrupt  ) {lexeme=yytext(); return Interrupt;}
( nil ) {lexeme=yytext(); return Nil ;}
( of ) {lexeme=yytext(); return Of; }
( private )  {lexeme=yytext(); return Private; }
( random ) {lexeme=yytext(); return Random ;}
( repeat ) {lexeme=yytext(); return Repeat;}
( shr ) {lexeme=yytext(); return Shr;}
( to ) {lexeme=yytext(); return To;}
( until ) {lexeme=yytext(); return Until;}
( virtual ) {lexeme=yytext(); return Virtual;}
( xor ) {lexeme=yytext(); return Xor;}


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
( write ) {lexeme = yytext(); return Write;}
( readLn ) {lexeme = yytext(); return ReadLn;}
";" {lexeme=yytext(); return P_Coma;}

":" {lexeme=yytext(); return Dos_Puntos;}


{L}({L}|{D})* {lexeme=yytext(); return Identificador;}
("(-"{D}+")")|{D}+ {lexeme=yytext(); return Numero;}
{D}+"."{D}+ {lexeme=yytext(); return Real;}

 . {return ERROR;}
