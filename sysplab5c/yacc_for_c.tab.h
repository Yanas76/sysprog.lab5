
/* A Bison parser, made by GNU Bison 2.4.1.  */

/* Skeleton interface for Bison's Yacc-like parsers in C
   
      Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.
   
   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */


/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     INT = 258,
     FLOAT = 259,
     CHARACTER = 260,
     LES_OR_EQ = 261,
     GRE_OR_EQ = 262,
     EQ = 263,
     NOT_EQ = 264,
     GREATER = 265,
     LESS = 266,
     TRUE = 267,
     FALSE = 268,
     PRINTFF = 269,
     SCANFF = 270,
     RETURN = 271,
     FOR = 272,
     IF = 273,
     AND = 274,
     OR = 275,
     ADD = 276,
     SUB = 277,
     DIV = 278,
     MUL = 279,
     ADD_ONE = 280,
     SUB_ONE = 281,
     ELSE = 282,
     INCLUDE = 283,
     NUMBER = 284,
     FLOAT_NUMBER = 285,
     IDENTIFIER = 286,
     VOID = 287,
     STR = 288,
     DO = 289,
     WHILE = 290,
     OPEN_PAR = 291,
     CL_PAR = 292,
     OPEN_CUR_BR = 293,
     CL_CUR_BR = 294,
     SEMICOLON = 295,
     ASSIGN = 296,
     AMPERSAND = 297,
     COMMA = 298,
     MUL_AS = 299,
     SUB_AS = 300,
     ADD_AS = 301,
     DIV_AS = 302,
     MOD = 303,
     MOD_AS = 304,
     MAIN = 305
   };
#endif



#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;


