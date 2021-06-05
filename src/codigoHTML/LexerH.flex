package codigoHTML;
import static codigoHTML.TokensH.*;
%%
%class LexerHTML
%type TokensH
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
( address ) {lexeme=yytext(); return Address;}
( appelt ) {lexeme=yytext(); return Appelt;}
( area ) {lexeme=yytext(); return Area;}
( basefont ) {lexeme=yytext(); return Basefont;}
( big ) {lexeme=yytext(); return Big;}
( "." ) {lexeme=yytext(); return Punto;}
( blockquote ) {lexeme=yytext(); return Blockquote;}
( body ) {lexeme=yytext(); return Body;}
( br ) {lexeme=yytext(); return Br;}
( b ) {lexeme=yytext(); return B;}
( caption ) {lexeme=yytext(); return Caption;}
( center ) {lexeme=yytext(); return Center; }
( cite ) {lexeme=yytext(); return Cite;}
( code ) {lexeme=yytext(); return Code;}
( dd ) {lexeme=yytext(); return Dd;}
( dfn ) {lexeme=yytext(); return Dfn;}
( dir) {lexeme=yytext(); return Dir;}
( div ) {lexeme=yytext(); return Div;}
( dl ) {lexeme=yytext(); return Dl;}
( em ) {lexeme=yytext(); return Em; }
( font ) {lexeme=yytext(); return Font;}
( form )  {lexeme=yytext(); return Form;}
( h1 ) {lexeme=yytext(); return H1; }
( h2 ) {lexeme=yytext(); return H2; }
( h3 ) {lexeme=yytext(); return H3;}
( h4 ) {lexeme=yytext(); return H4;}
( h5 ) {lexeme=yytext(); return H5;}
( h6 ) {lexeme=yytext(); return H6;}
( head ) {lexeme=yytext(); return Head;}
( hr ) {lexeme=yytext(); return Hr;}
( html ) {lexeme=yytext(); return Html;}
( img ) {lexeme=yytext(); return Img;}
( imput ) {lexeme=yytext(); return  Input; }
( isindex ) {lexeme=yytext(); return Isindex; }
( i ) {lexeme=yytext(); return I;}
( kbd ) {lexeme=yytext(); return Kbd;}
( link ) {lexeme=yytext(); return Link ;}
( li ) {lexeme=yytext(); return Li;}
( map ) {lexeme=yytext(); return Map; }
( menu ) {lexeme=yytext(); return Menu;}
( meta) {lexeme=yytext(); return Meta;}
( ol ) {lexeme=yytext(); return Ol;}
( option ) {lexeme=yytext(); return Option;}
( param ) {lexeme=yytext(); return Param;}
( pre ) {lexeme=yytext(); return Pre; }
( p ) {lexeme=yytext(); return P;}
( samp ) {lexeme=yytext(); return Samp; }
( script  ) {lexeme=yytext(); return Script;}
( slect ) {lexeme=yytext(); return Select ;}
( small ) {lexeme=yytext(); return Small; }
( strike )  {lexeme=yytext(); return Strike; }
( strong ) {lexeme=yytext(); return Strong;}
( stype ) {lexeme=yytext(); return Stype;}
( sub ) {lexeme=yytext(); return Sub;}
( sup ) {lexeme=yytext(); return Sup;}
( table ) {lexeme=yytext(); return Table;}
( td ) {lexeme=yytext(); return Td;}
( textarea ) {lexeme=yytext(); return Textarea;}
( th ) {lexeme=yytext(); return Th; }
( title ) {lexeme=yytext(); return Title;}
( tr ) {lexeme=yytext(); return Tr; }
( tt ) {lexeme=yytext(); return Tt;}
( ul ) {lexeme=yytext(); return UL ;}
( u ) {lexeme=yytext(); return U; }
( var )  {lexeme=yytext(); return Var; }
( noscript ) {lexeme=yytext(); return Noscript; }
( base ) {lexeme=yytext(); return Base;}
( time ) {lexeme=yytext(); return Time; }
( data ) {lexeme=yytext(); return Data;}


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

