%{
#include <stdio.h>
#include "yacc_for_c.tab.h"
%}

%%

"("                                 { return OPEN_PAR; }
")"                                 { return CL_PAR; }
"{"                                 { return OPEN_CUR_BR; }
"}"                                 { return CL_CUR_BR; }
";"                                 { return SEMICOLON; }
"="                                 { return ASSIGN; }
"&"                                 { return AMPERSAND; }
","                                 { return COMMA; }
"int"                               { return INT; }
"main()"                               { return MAIN; }
"float"                             { return FLOAT; }
"char"                              { return CHARACTER; }
"<="                                { return GRE_OR_EQ; }
">="                                { return LES_OR_EQ; }
"=="                                { return EQ; }
"!="                                { return NOT_EQ; }
">"                                  { return GREATER; }
"<"                                  { return LESS; }
"true"                              { return TRUE; }
"false"                             { return FALSE; }
"printf"                            { return PRINTFF; }
"scanf"                             { return SCANFF; }
"return"                            { return RETURN; }
"for"                              { return FOR; }
"if"                              { return IF; }
"do"                                { return DO; }
"while"                             { return WHILE; }
"&&"                              { return AND; }
"||"                              { return OR; }
"+"                                 { return ADD; }
"-"                                 { return SUB; }
"/"                                 { return DIV; }
"*"                                 { return MUL; }
"%"                                 { return MOD; }
"++"                                { return ADD_ONE; }
"--"                                { return SUB_ONE; }
"*="                                { return MUL_AS; }
"-="                                { return SUB_AS; }
"+="                                { return ADD_AS; }
"/="                                { return DIV_AS; }
"%="                                { return MOD_AS; }
"else"                              { return ELSE; }
"#include"[ ]*<.+\.h>              { return INCLUDE; }
"void"                              { return VOID; }
\"[^\"]+\"                          { return STR; }
[-+]?[0-9]+(\.[0-9]+)?              { return NUMBER; }
[_a-zA-Z][_a-zA-Z0-9]*             { return IDENTIFIER; }
\/\/.*
\/\*(.*\n)*.*\*\/
[ \t\n]

%%


