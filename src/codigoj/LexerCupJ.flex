package codigoj;
import java_cup.runtime.Symbol;


%%
%class LexerCupJ
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
  ( length ) {return new Symbol(sym.Length, yychar, yyline, yytext());}

 ( console ) {return new Symbol(sym.Console, yychar, yyline, yytext());}
( arguments ) {return new Symbol(sym.Arguments, yychar, yyline, yytext());}
( void ) {return new Symbol(sym.Void, yychar, yyline, yytext());}
( System ) {return new Symbol(sym.System, yychar, yyline, yytext());}
( return ) {return new Symbol(sym.Return, yychar, yyline, yytext());}
( "." ) {return new Symbol(sym.Punto, yychar, yyline, yytext());}
( import ) {return new Symbol(sym.Import, yychar, yyline, yytext());}
( this) {return new Symbol(sym.This, yychar, yyline, yytext());}
( alert ) {return new Symbol(sym.Alert, yychar, yyline, yytext());}
( write ) {return new Symbol(sym.Write, yychar, yyline, yytext());}
( document ) {return new Symbol(sym.Document, yychar, yyline, yytext());}
( prompt ) {return new Symbol(sym.Prompt, yychar, yyline, yytext());}
( concat ) {return new Symbol(sym.Concat, yychar, yyline, yytext());}
( includes ) {return new Symbol(sym.Includes, yychar, yyline, yytext());}
( "var" ) {return new Symbol(sym.Var, yychar, yyline, yytext());}
( "let" ) {return new Symbol(sym.Let, yychar, yyline, yytext());}
( "log" ) {return new Symbol(sym.Log, yychar, yyline, yytext());}
( new ) {return new Symbol(sym.New, yychar, yyline, yytext());}
( if ) {return new Symbol(sym.If, yychar, yyline, yytext());}
( else ) {return new Symbol(sym.Else, yychar, yyline, yytext());}
( goto ) {return new Symbol(sym.Goto, yychar, yyline, yytext());}
( const ) {return new Symbol(sym.Const, yychar, yyline, yytext());}
( continue ) {return new Symbol(sym.Continue, yychar, yyline, yytext());}
( case ) {return new Symbol(sym.Case, yychar, yyline, yytext());}
( break ) {return new Symbol(sym.Break, yychar, yyline, yytext());}
( do ) {return new Symbol(sym.Do, yychar, yyline, yytext());}
( while) {return new Symbol(sym.While, yychar, yyline, yytext());}
( for ) {return new Symbol(sym.For, yychar, yyline, yytext());}
( rq) {return new Symbol(sym.Raiz, yychar, yyline, yytext());}
( ptn ) {return new Symbol(sym.Potencia, yychar, yyline, yytext());}
( default ) {return new Symbol(sym.Default, yychar, yyline, yytext());}
( private ) {return new Symbol(sym.Private, yychar, yyline, yytext());}
( public ) {return new Symbol(sym.Public, yychar, yyline, yytext());}
( static ) {return new Symbol(sym.Static, yychar, yyline, yytext());}
( function ) {return new Symbol(sym.Function, yychar, yyline, yytext());}
( switch ) {return new Symbol(sym.Switch, yychar, yyline, yytext());}
( class ) {return new Symbol(sym.Class, yychar, yyline, yytext());}
( catch ) {return new Symbol(sym.Catch, yychar, yyline, yytext());}
( finally ) {return new Symbol(sym.Finally, yychar, yyline, yytext());}
( "in" ) {return new Symbol(sym.In, yychar, yyline, yytext());}

( "int" ) {return new Symbol(sym.Int, yychar, yyline, yytext());}
( "string" ) {return new Symbol(sym.String, yychar, yyline, yytext());}
( "float" ) {return new Symbol(sym.Float, yychar, yyline, yytext());}
( "bool" ) {return new Symbol(sym.Bool, yychar, yyline, yytext());}
( "long" ) {return new Symbol(sym.Long, yychar, yyline, yytext());}
( "char" )  {return new Symbol(sym.Char, yychar, yyline, yytext());}
( "double" ) {return new Symbol(sym.Double, yychar, yyline, yytext());}
( "byte" ) {return new Symbol(sym.Byte, yychar, yyline, yytext());}

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

( "]" ) {return new Symbol(sym.Corchete_Der, yychar, yyline, yytext());}
( ";" ) {return new Symbol(sym.P_Coma, yychar, yyline, yytext());}
( ":" ) {return new Symbol(sym.Dos_Puntos, yychar, yyline, yytext());}
{L}({L}|{D})* {return new Symbol(sym.Identificador, yychar, yyline, yytext());}

("(-"{D}+")")|{D}+ {return new Symbol(sym.Numero, yychar, yyline, yytext());}

{real} { return new Symbol(sym.Real, yycolumn,yyline,new String(yytext())); }


 . {return new Symbol(sym.ERROR, yychar, yyline, yytext());}
