package codigoP;
import java_cup.runtime.Symbol;


%%
%class LexerCupPascal
%public
%cupsym sym
%cup

%unicode
%line
%char
%column
L=[a-zA-Z_]+
D=[0-9]+
espacio=[ ,\t,\r,\n]+
real= {D}+"."{D}+
%{
    private Symbol symbol(int type, Object value){
        return new Symbol(type, yyline, yycolumn, value);
    }
    private Symbol symbol(int type){
        return new Symbol(type, yyline, yycolumn);
    }
%}
%%


/* Espacios en blanco */
{espacio} {/*Ignore*/}

/* Comentarios */
( "//"(.)* ) {/*Ignore*/}




( "\"" ) {return new Symbol(sym.Comillas, yychar, yyline, yytext());}

( absolute ) {return new Symbol(sym.Absolute, yychar, yyline, yytext());}

( asm ) {return new Symbol(sym.Asm, yychar, yyline, yytext());}
( circle ) {return new Symbol(sym.Circle, yychar, yyline, yytext());}
( destructor ) {return new Symbol(sym.Destructor, yychar, yyline, yytext());}
( downto ) {return new Symbol(sym.Downto, yychar, yyline, yytext());}
( "." ) {return new Symbol(sym.Punto, yychar, yyline, yytext());}
( external  ) {return new Symbol(sym.External, yychar, yyline, yytext());}
( forward ) {return new Symbol(sym.Forward, yychar, yyline, yytext());}
( if ) {return new Symbol(sym.If, yychar, yyline, yytext());}
( inline ) {return new Symbol(sym.Inline, yychar, yyline, yytext());}
( label ) {return new Symbol(sym.Label, yychar, yyline, yytext());}
( or ) {return new Symbol(sym.Or, yychar, yyline, yytext());}
( not ) {return new Symbol(sym.Not, yychar, yyline, yytext());}
( procedure ) {return new Symbol(sym.Procudere, yychar, yyline, yytext());}
( record ) {return new Symbol(sym.Record, yychar, yyline, yytext());}
( set ) {return new Symbol(sym.Set, yychar, yyline, yytext());}
( string ) {return new Symbol(sym.String, yychar, yyline, yytext());}
( type ) {return new Symbol(sym.Type, yychar, yyline, yytext());}
( uses ) {return new Symbol(sym.Uses, yychar, yyline, yytext());}
( while ) {return new Symbol(sym.While, yychar, yyline, yytext());}
( and ) {return new Symbol(sym.And, yychar, yyline, yytext());}
( begin )  {return new Symbol(sym.Begin, yychar, yyline, yytext());}
( const  ) {return new Symbol(sym.Const, yychar, yyline, yytext());}
( div ) {return new Symbol(sym.Div, yychar, yyline, yytext());}
( else ) {return new Symbol(sym.Else, yychar, yyline, yytext());}
( file ) {return new Symbol(sym.File, yychar, yyline, yytext());}
( function ) {return new Symbol(sym.Function, yychar, yyline, yytext());}
( implemetation ) {return new Symbol(sym.Implementation, yychar, yyline, yytext());}
( interface) {return new Symbol(sym.Interface, yychar, yyline, yytext());}
( mod ) {return new Symbol(sym.Mod, yychar, yyline, yytext());}
( object ) {return new Symbol(sym.Object, yychar, yyline, yytext());}
( packed ) {return new Symbol(sym.Packed, yychar, yyline, yytext());}
( program ) {return new Symbol(sym.Program, yychar, yyline, yytext());}
( rectangle ) {return new Symbol(sym.Rectangle, yychar, yyline, yytext());}
( shl ) {return new Symbol(sym.Shl, yychar, yyline, yytext());}
( then ) {return new Symbol(sym.Then, yychar, yyline, yytext());}
( unit ) {return new Symbol(sym.Unit, yychar, yyline, yytext());}
( var ) {return new Symbol(sym.Var, yychar, yyline, yytext());}
( with ) {return new Symbol(sym.With, yychar, yyline, yytext());}
( array ) {return new Symbol(sym.Array, yychar, yyline, yytext());}
( case) {return new Symbol(sym.Case, yychar, yyline, yytext());}
( constructor ) {return new Symbol(sym.Constructor, yychar, yyline, yytext());}
( do ) {return new Symbol(sym.Do, yychar, yyline, yytext());}
( end ) {return new Symbol(sym.End, yychar, yyline, yytext());}
( for ) {return new Symbol(sym.For, yychar, yyline, yytext());}
( goto ) {return new Symbol(sym.Goto, yychar, yyline, yytext());}
( in ) {return new Symbol(sym.Comillas, In, yyline, yytext());}
( interrupt  ) {return new Symbol(sym.Interrupt, yychar, yyline, yytext());}
( nil ) {return new Symbol(sym.Nil, yychar, yyline, yytext());}
( of ) {return new Symbol(sym.Of, yychar, yyline, yytext());}
( private )  {return new Symbol(sym.Private, yychar, yyline, yytext());}
( random ) {return new Symbol(sym.Random, yychar, yyline, yytext());}
( repeat ) {return new Symbol(sym.Repeat, yychar, yyline, yytext());}
( shr ) {return new Symbol(sym.Shr, yychar, yyline, yytext());}
( to ) {return new Symbol(sym.To, yychar, yyline, yytext());}
( until ) {return new Symbol(sym.Until, yychar, yyline, yytext());}
( virtual ) {return new Symbol(sym.Virtual, yychar, yyline, yytext());}
( xor ) {return new Symbol(sym.Xor, yychar, yyline, yytext());}

( "=" ) {return new Symbol(sym.Op_Igual, yychar, yyline, yytext());}

( "+" ) {return new Symbol(sym.Op_Suma, yychar, yyline, yytext());}

( "-" ) {return new Symbol(sym.Op_Resta, yychar, yyline, yytext());}

( "*" ) {return new Symbol(sym.Op_Multiplicacion, yychar, yyline, yytext());}

( "/" ) {return new Symbol(sym.Op_Division, yychar, yyline, yytext());}

( "&&" | "||" | "!" | "&" | "|" ) {return new Symbol(sym.Op_Logico, yychar, yyline, yytext());}

( ">" | "<" | "==" | "!=" | ">=" | "<=" | "<<" | ">>" ) {return new Symbol(sym.Op_Relacional, yychar, yyline, yytext());}

( "+=" | "-="  | "*=" | "/=" | "%=" ) {return new Symbol(sym.Op_Atribucion, yychar, yyline, yytext());}

( "++" | "--" ) {return new Symbol(sym.Op_Incremento, yychar, yyline, yytext());}

(true | false)  {return new Symbol(sym.Op_Booleano, yychar, yyline, yytext());}

( "(" ) {return new Symbol(sym.Parentesis_Izq, yychar, yyline, yytext());}

( ")" ) {return new Symbol(sym.Parentesis_Der, yychar, yyline, yytext());}

( "{" ) {return new Symbol(sym.Llave_Izq, yychar, yyline, yytext());}

( "}" ) {return new Symbol(sym.Llave_Der, yychar, yyline, yytext());}

( "[" ) {return new Symbol(sym.Corchete_Izq, yychar, yyline, yytext());}

( write ) {return new Symbol(sym.Write, yychar, yyline, yytext());}
( readLn ) {return new Symbol(sym.ReadLn, yychar, yyline, yytext());}
( "]" ) {return new Symbol(sym.Corchete_Der, yychar, yyline, yytext());}
( ";" ) {return new Symbol(sym.P_Coma, yychar, yyline, yytext());}
( ":" ) {return new Symbol(sym.Dos_Puntos, yychar, yyline, yytext());}
{L}({L}|{D})* {return new Symbol(sym.Identificador, yychar, yyline, yytext());}

("(-"{D}+")")|{D}+ {return new Symbol(sym.Numero, yychar, yyline, yytext());}

{real} { return new Symbol(sym.Real, yycolumn,yyline,new String(yytext())); }


 . {return new Symbol(sym.ERROR, yychar, yyline, yytext());}


