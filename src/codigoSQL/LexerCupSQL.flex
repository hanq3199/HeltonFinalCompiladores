package codigoSQL;
import java_cup.runtime.Symbol;


%%
%class LexerCupSQL
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
( ADD ) {return new Symbol(sym.Add, yychar, yyline, yytext());}
(AFTER) {return new Symbol(sym.After, yychar, yyline, yytext());}
( ANY ) {return new Symbol(sym.Any, yychar, yyline, yytext());}
(ARRAYLEN) {return new Symbol(sym.Arraylen, yychar, yyline, yytext());}
(ARRAY) {return new Symbol(sym.Array, yychar, yyline, yytext());}
(CLUSTER) {return new Symbol(sym.Cluster, yychar, yyline, yytext());}
( COLUMN ) {return new Symbol(sym.Colum, yychar, yyline, yytext());}
(CONSTAINS) {return new Symbol(sym.Contains, yychar, yyline, yytext());}
(CONVERT) {return new Symbol(sym.Convert, yychar, yyline, yytext());}
(DAY) {return new Symbol(sym.Day, yychar, yyline, yytext());}
(DEFAULT) {return new Symbol(sym.Default, yychar, yyline, yytext());}
(OBJECT ) {return new Symbol(sym.Object, yychar, yyline, yytext());}
(FULL) {return new Symbol(sym.Full, yychar, yyline, yytext());}
(NAME) {return new Symbol(sym.Name, yychar, yyline, yytext());}
(NCHAR) {return new Symbol(sym.Nchar, yychar, yyline, yytext());}
(NEW) {return new Symbol(sym.New, yychar, yyline, yytext());}
(NUMERIC ) {return new Symbol(sym.Numeric, yychar, yyline, yytext());}
(PRIMARY) {return new Symbol(sym.Primary, yychar, yyline, yytext());}
(RESULT) {return new Symbol(sym.Result, yychar, yyline, yytext());}
(SCHEMA) {return new Symbol(sym.Schema, yychar, yyline, yytext());}
(VIEW) {return new Symbol(sym.View, yychar, yyline, yytext());}

( "NUMBER" ) {return new Symbol(sym.Number, yychar, yyline, yytext());}
( CHAR ) {return new Symbol(sym.Char, yychar, yyline, yytext());}
( VARCHAR2 ) {return new Symbol(sym.Varchar2, yychar, yyline, yytext());}
( BOOLEAN ) {return new Symbol(sym.Boolean, yychar, yyline, yytext());}
( DATE ) {return new Symbol(sym.Date, yychar, yyline, yytext());}
( "." ) {return new Symbol(sym.Punto, yychar, yyline, yytext());}
( TYPE ) {return new Symbol(sym.Type, yychar, yyline, yytext());}
( INDEX ) {return new Symbol(sym.Index, yychar, yyline, yytext());}
( DECLARE ) {return new Symbol(sym.Declare, yychar, yyline, yytext());}
( BY ) {return new Symbol(sym.By, yychar, yyline, yytext());}
( BINARY ) {return new Symbol(sym.Binary, yychar, yyline, yytext());}
( INTEGER ) {return new Symbol(sym.Integer, yychar, yyline, yytext());}
( TABLE ) {return new Symbol(sym.Table, yychar, yyline, yytext());}
( END ) {return new Symbol(sym.End, yychar, yyline, yytext());}
( BEGIN ) {return new Symbol(sym.Begin, yychar, yyline, yytext());}
( FIRST ) {return new Symbol(sym.First, yychar, yyline, yytext());}
( LAST ) {return new Symbol(sym.Last, yychar, yyline, yytext());}
( EXISTS ) {return new Symbol(sym.Exists, yychar, yyline, yytext());}
( COUNT ) {return new Symbol(sym.Count, yychar, yyline, yytext());}
( PRIOR ) {return new Symbol(sym.Prior, yychar, yyline, yytext());}
( NEXT) {return new Symbol(sym.Next, yychar, yyline, yytext());}
( TRIM)  {return new Symbol(sym.Trim, yychar, yyline, yytext());}
( DELETE ) {return new Symbol(sym.Delete, yychar, yyline, yytext());}
( IF ) {return new Symbol(sym.If, yychar, yyline, yytext());}
( ELSE ) {return new Symbol(sym.Else, yychar, yyline, yytext());}
( ELSIF) {return new Symbol(sym.Elsif, yychar, yyline, yytext());}
( THEN ) {return new Symbol(sym.Then, yychar, yyline, yytext());}
( GOTO ) {return new Symbol(sym.Goto, yychar, yyline, yytext());}
( LOOP ) {return new Symbol(sym.Loop, yychar, yyline, yytext());}
( WHILE ) {return new Symbol(sym.While, yychar, yyline, yytext());}
( EXIT ) {return new Symbol(sym.Exit, yychar, yyline, yytext());}
( SELECT ) {return new Symbol(sym.Select, yychar, yyline, yytext());}

( WHEN ) {return new Symbol(sym.When, yychar, yyline, yytext());}
( OTHERS ) {return new Symbol(sym.Others, yychar, yyline, yytext());}
( UPDATE ) {return new Symbol(sym.Update, yychar, yyline, yytext());}
( FROM ) {return new Symbol(sym.From, yychar, yyline, yytext());}
( DUAL ) {return new Symbol(sym.Dual, yychar, yyline, yytext());}
( INTO ) {return new Symbol(sym.Into, yychar, yyline, yytext());}
( OPEN ) {return new Symbol(sym.Open, yychar, yyline, yytext());}
( CLOSE ) {return new Symbol(sym.Close, yychar, yyline, yytext());}
( TRIGGER ) {return new Symbol(sym.Trigger, yychar, yyline, yytext());}
( CREATE ) {return new Symbol(sym.Create, yychar, yyline, yytext());}
( ALTER ) {return new Symbol(sym.Alter, yychar, yyline, yytext());}
( AS  ) {return new Symbol(sym.As, yychar, yyline, yytext());}
( INSERT ) {return new Symbol(sym.Insert, yychar, yyline, yytext());}
( FOR ) {return new Symbol(sym.For, yychar, yyline, yytext());}
( EACH ) {return new Symbol(sym.Each, yychar, yyline, yytext());}
( ROW ) {return new Symbol(sym.Row, yychar, yyline, yytext());}
( BEFORE ) {return new Symbol(sym.Before, yychar, yyline, yytext());}
( FUNCTION ) {return new Symbol(sym.Function, yychar, yyline, yytext());}
( return ) {return new Symbol(sym.Return, yychar, yyline, yytext());}
( ASC ) {return new Symbol(sym.Asc, yychar, yyline, yytext());}
( DESC ) {return new Symbol(sym.Desc, yychar, yyline, yytext());}
( ORDER ) {return new Symbol(sym.Order, yychar, yyline, yytext());}
( COMMIT ) {return new Symbol(sym.Commit, yychar, yyline, yytext());}
( ROLLBACK) {return new Symbol(sym.Rollback, yychar, yyline, yytext());}
( SAVEPOINT ) {return new Symbol(sym.Savepoint, yychar, yyline, yytext());}
( VALUES ) {return new Symbol(sym.Values, yychar, yyline, yytext());}


( "=" ) {return new Symbol(sym.Op_Igual, yychar, yyline, yytext());}

( "+" ) {return new Symbol(sym.Op_Suma, yychar, yyline, yytext());}

( "-" ) {return new Symbol(sym.Op_Resta, yychar, yyline, yytext());}

( "*" ) {return new Symbol(sym.Op_Multiplicacion, yychar, yyline, yytext());}

( "/" ) {return new Symbol(sym.Op_Division, yychar, yyline, yytext());}

( "AND" | "OR" | "NOT" ) {return new Symbol(sym.Op_Logico, yychar, yyline, yytext());}

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

({L}|{D}|{espacio})* { return new Symbol(sym.Texto, yycolumn,yyline,new String(yytext())); }
 . {return new Symbol(sym.ERROR, yychar, yyline, yytext());}


