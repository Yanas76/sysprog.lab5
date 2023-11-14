%{
#include <stdio.h>
#include <string.h>

extern FILE* yyin;
extern int yylex();
extern int yyparse();

void yyerror(const char *str)
{
    fprintf(stderr, " error: %s\n", str);
}

int yywrap()
{
    return 1;
}

%}

%token INT FLOAT CHARACTER LES_OR_EQ GRE_OR_EQ EQ NOT_EQ GREATER LESS TRUE FALSE PRINTFF SCANFF
%token RETURN FOR IF AND OR ADD SUB DIV MUL ADD_ONE SUB_ONE ELSE INCLUDE
%token NUMBER FLOAT_NUMBER IDENTIFIER VOID STR DO WHILE
%token OPEN_PAR CL_PAR OPEN_CUR_BR CL_CUR_BR SEMICOLON ASSIGN AMPERSAND COMMA
%token MUL_AS SUB_AS ADD_AS DIV_AS MOD MOD_AS MAIN

%%

program: include INT MAIN OPEN_CUR_BR block return CL_CUR_BR
;

include: INCLUDE
| include include
;

datatype: FLOAT
| INT
| CHARACTER
| VOID
;

arithmeticop: ADD
| SUB
| MUL
| DIV
| MOD
;

arithmeticopassign: MUL_AS
| SUB_AS
| ADD_AS
| DIV_AS
| MOD_AS
;

relationalop: LES_OR_EQ
| GREATER
| LESS
| GRE_OR_EQ
| EQ
| NOT_EQ
;

value: NUMBER
| FLOAT_NUMBER
| CHARACTER
| IDENTIFIER
;

block: statement SEMICOLON
| definition SEMICOLON
| control_structure
| block block
| inout SEMICOLON
| /* empty */
;

statement: IDENTIFIER relationalop expression
| IDENTIFIER ADD_ONE
| IDENTIFIER SUB_ONE
| ADD_ONE IDENTIFIER
| SUB_ONE IDENTIFIER
;

inout: PRINTFF OPEN_PAR output CL_PAR
| SCANFF OPEN_PAR STR COMMA AMPERSAND IDENTIFIER CL_PAR
;

control_structure: while
| if_else
| for_loop
| do_while
;

for_loop:  FOR OPEN_PAR definition SEMICOLON condition SEMICOLON statement CL_PAR OPEN_CUR_BR block CL_CUR_BR
;

while: WHILE OPEN_PAR bool CL_PAR OPEN_CUR_BR block CL_CUR_BR
| WHILE OPEN_PAR condition CL_PAR OPEN_CUR_BR block CL_CUR_BR
;

do_while: DO OPEN_CUR_BR block CL_CUR_BR  WHILE OPEN_PAR bool CL_PAR
| DO OPEN_CUR_BR block CL_CUR_BR  WHILE OPEN_PAR condition CL_PAR
;

if_else: IF OPEN_PAR condition CL_PAR OPEN_CUR_BR block CL_CUR_BR else
| IF OPEN_PAR bool CL_PAR OPEN_CUR_BR block CL_CUR_BR else
;

else: ELSE OPEN_CUR_BR block CL_CUR_BR
|
;

output: STR
| IDENTIFIER
;

condition: value relationalop value
;

bool: TRUE
| FALSE
;

definition: datatype IDENTIFIER ASSIGN value
| IDENTIFIER ASSIGN expression
| datatype IDENTIFIER arithmeticopassign value
| IDENTIFIER arithmeticopassign expression
| datatype IDENTIFIER
;

expression: expression arithmeticop expression
| value
;

return: RETURN value SEMICOLON
;

%%

int main(int argc, char *argv[])
{
    if (argc != 2)
    {
        fprintf(stderr, "Usage: %s <input_file>\n", argv[0]);
        return 1;
    }

    FILE *input_file = fopen(argv[1], "r");
    if (!input_file)
    {
        fprintf(stderr, "Error opening file: %s\n", argv[1]);
        return 1;
    }

    yyin = input_file;
    yyparse();
    fclose(input_file);

    return 0;
}