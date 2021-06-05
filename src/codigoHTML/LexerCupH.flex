package codigoHTML;
import java_cup.runtime.Symbol;


%%
%class LexerCupH
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

( address ) {return new Symbol(sym.Address, yychar, yyline, yytext());}
( appelt ) {return new Symbol(sym.Appelt, yychar, yyline, yytext());}
( area ) {return new Symbol(sym.Area, yychar, yyline, yytext());}
( basefont ) {return new Symbol(sym.Basefront, yychar, yyline, yytext());}
( big ) {return new Symbol(sym.Big, yychar, yyline, yytext());}
( "." ) {return new Symbol(sym.Punto, yychar, yyline, yytext());}

( blockquote ) {return new Symbol(sym.Blockquote, yychar, yyline, yytext());}
( body ) {return new Symbol(sym.Body, yychar, yyline, yytext());}
( br ) {return new Symbol(sym.Br, yychar, yyline, yytext());}
( b ) {return new Symbol(sym.B, yychar, yyline, yytext());}
( caption ) {return new Symbol(sym.Caption, yychar, yyline, yytext());}
( center ) {return new Symbol(sym.Center, yychar, yyline, yytext());}
( cite ) {return new Symbol(sym.Cite, yychar, yyline, yytext());}
( code ) {return new Symbol(sym.Code, yychar, yyline, yytext());}
( dd ) {return new Symbol(sym.Dd, yychar, yyline, yytext());}
( dfn ) {return new Symbol(sym.Dfn, yychar, yyline, yytext());}
( dir) {return new Symbol(sym.Dir yychar, yyline, yytext());}
( div ) {return new Symbol(sym.Div, yychar, yyline, yytext());}
( dl ) {return new Symbol(sym.Dl, yychar, yyline, yytext());}
( em ) {return new Symbol(sym.Em, yychar, yyline, yytext());}
( font ) {return new Symbol(sym.Font, yychar, yyline, yytext());}
( form )  {return new Symbol(sym.Form, yychar, yyline, yytext());}
( h1 ) {return new Symbol(sym.H1, yychar, yyline, yytext());}
( h2 ) {return new Symbol(sym.H2, yychar, yyline, yytext());}
( h3 ) {return new Symbol(sym.H3, yychar, yyline, yytext());}
( h4 ) {return new Symbol(sym.H4, yychar, yyline, yytext());}
( h5 ) {return new Symbol(sym.H5, yychar, yyline, yytext());}
( h6 ) {return new Symbol(sym.H6, yychar, yyline, yytext());}
( head ) {return new Symbol(sym.Head, yychar, yyline, yytext());}
( hr ) {return new Symbol(sym.Hr, yychar, yyline, yytext());}
( html ) {return new Symbol(sym.Html, yychar, yyline, yytext());}
( img ) {return new Symbol(sym.Img, yychar, yyline, yytext());}
( imput ) {return new Symbol(sym.Input, yychar, yyline, yytext());}
( isindex ) {return new Symbol(sym.Isindex, yychar, yyline, yytext());}
( i ) {return new Symbol(sym.I, yychar, yyline, yytext());}
( kbd ) {return new Symbol(sym.Kbd, yychar, yyline, yytext());}
( link ) {return new Symbol(sym.Link, yychar, yyline, yytext());}
( li ) {return new Symbol(sym.Li, yychar, yyline, yytext());}
( map ) {return new Symbol(sym.Map, yychar, yyline, yytext());}
( menu ) {return new Symbol(sym.Menu, yychar, yyline, yytext());}
( meta) {return new Symbol(sym.Meta, yychar, yyline, yytext());}
( ol ) {return new Symbol(sym.Ol, yychar, yyline, yytext());}
( option ) {return new Symbol(sym.Option, yychar, yyline, yytext());}
( param ) {return new Symbol(sym.Param, yychar, yyline, yytext());}
( pre ) {return new Symbol(sym.Pre, yychar, yyline, yytext());}
( p ) {return new Symbol(sym.P, yychar, yyline, yytext());}
( samp ) {return new Symbol(sym.Samp, yychar, yyline, yytext());}
( script ) {return new Symbol(sym.Script, yychar, yyline, yytext());}
( slect ) {return new Symbol(sym.Slect, yychar, yyline, yytext());}
( small ) {return new Symbol(sym.Small, yychar, yyline, yytext());}
( strike )  {return new Symbol(sym.Strike, yychar, yyline, yytext());}
( strong ) {return new Symbol(sym.Strong, yychar, yyline, yytext());}
( stype ) {return new Symbol(sym.Stype, yychar, yyline, yytext());}
( sub ) {return new Symbol(sym.Sub, yychar, yyline, yytext());}
( sup ) {return new Symbol(sym.sup, yychar, yyline, yytext());}
( table ) {return new Symbol(sym.Table, yychar, yyline, yytext());}
( td ) {return new Symbol(sym.Td, yychar, yyline, yytext());}
( textarea ) {return new Symbol(sym.Textarea, yychar, yyline, yytext());}
( th ) {return new Symbol(sym.Th, yychar, yyline, yytext());}
( title ) {return new Symbol(sym.Title, yychar, yyline, yytext());}
( tr ) {return new Symbol(sym.Tr, yychar, yyline, yytext());}
( tt ) {return new Symbol(sym.Tt, yychar, yyline, yytext());}
( ul ) {return new Symbol(sym.Ul, yychar, yyline, yytext());}
( u ) {return new Symbol(sym.U, yychar, yyline, yytext());}
( var )  {return new Symbol(sym.Var, yychar, yyline, yytext());}
( noscript ) {return new Symbol(sym.Noscript, yychar, yyline, yytext());}
( base ) {return new Symbol(sym.Base, yychar, yyline, yytext());}
( time ) {return new Symbol(sym.Time, yychar, yyline, yytext());}
( data ) {return new Symbol(sym.Data, yychar, yyline, yytext());}


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

 . {return new Symbol(sym.ERROR, yychar, yyline, yytext());}



