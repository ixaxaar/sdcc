/* A Bison parser, made by GNU Bison 2.5.  */

/* Bison interface for Yacc-like parsers in C
   
      Copyright (C) 1984, 1989-1990, 2000-2011 Free Software Foundation, Inc.
   
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
     IDENTIFIER = 258,
     TYPE_NAME = 259,
     ADDRSPACE_NAME = 260,
     CONSTANT = 261,
     SIZEOF = 262,
     ALIGNOF = 263,
     TYPEOF = 264,
     OFFSETOF = 265,
     PTR_OP = 266,
     INC_OP = 267,
     DEC_OP = 268,
     LEFT_OP = 269,
     RIGHT_OP = 270,
     LE_OP = 271,
     GE_OP = 272,
     EQ_OP = 273,
     NE_OP = 274,
     AND_OP = 275,
     OR_OP = 276,
     MUL_ASSIGN = 277,
     DIV_ASSIGN = 278,
     MOD_ASSIGN = 279,
     ADD_ASSIGN = 280,
     SUB_ASSIGN = 281,
     LEFT_ASSIGN = 282,
     RIGHT_ASSIGN = 283,
     AND_ASSIGN = 284,
     XOR_ASSIGN = 285,
     OR_ASSIGN = 286,
     TYPEDEF = 287,
     EXTERN = 288,
     STATIC = 289,
     AUTO = 290,
     REGISTER = 291,
     CODE = 292,
     EEPROM = 293,
     INTERRUPT = 294,
     SFR = 295,
     SFR16 = 296,
     SFR32 = 297,
     ADDRESSMOD = 298,
     STATIC_ASSERT = 299,
     AT = 300,
     SBIT = 301,
     REENTRANT = 302,
     USING = 303,
     XDATA = 304,
     DATA = 305,
     IDATA = 306,
     PDATA = 307,
     VAR_ARGS = 308,
     CRITICAL = 309,
     NONBANKED = 310,
     BANKED = 311,
     SHADOWREGS = 312,
     SD_WPARAM = 313,
     SD_BOOL = 314,
     SD_CHAR = 315,
     SD_SHORT = 316,
     SD_INT = 317,
     SD_LONG = 318,
     SIGNED = 319,
     UNSIGNED = 320,
     SD_FLOAT = 321,
     DOUBLE = 322,
     FIXED16X16 = 323,
     SD_CONST = 324,
     VOLATILE = 325,
     SD_VOID = 326,
     BIT = 327,
     STRUCT = 328,
     UNION = 329,
     ENUM = 330,
     RANGE = 331,
     SD_FAR = 332,
     CASE = 333,
     DEFAULT = 334,
     IF = 335,
     ELSE = 336,
     SWITCH = 337,
     WHILE = 338,
     DO = 339,
     FOR = 340,
     GOTO = 341,
     CONTINUE = 342,
     BREAK = 343,
     RETURN = 344,
     NAKED = 345,
     JAVANATIVE = 346,
     OVERLAY = 347,
     STRING_LITERAL = 348,
     INLINEASM = 349,
     IFX = 350,
     ADDRESS_OF = 351,
     GET_VALUE_AT_ADDRESS = 352,
     SPIL = 353,
     UNSPIL = 354,
     GETHBIT = 355,
     GETABIT = 356,
     GETBYTE = 357,
     GETWORD = 358,
     BITWISEAND = 359,
     UNARYMINUS = 360,
     IPUSH = 361,
     IPOP = 362,
     PCALL = 363,
     ENDFUNCTION = 364,
     JUMPTABLE = 365,
     RRC = 366,
     RLC = 367,
     CAST = 368,
     CALL = 369,
     PARAM = 370,
     NULLOP = 371,
     BLOCK = 372,
     LABEL = 373,
     RECEIVE = 374,
     SEND = 375,
     ARRAYINIT = 376,
     DUMMY_READ_VOLATILE = 377,
     ENDCRITICAL = 378,
     SWAP = 379,
     INLINE = 380,
     NORETURN = 381,
     RESTRICT = 382,
     SMALLC = 383,
     ALIGNAS = 384,
     ASM = 385
   };
#endif
/* Tokens.  */
#define IDENTIFIER 258
#define TYPE_NAME 259
#define ADDRSPACE_NAME 260
#define CONSTANT 261
#define SIZEOF 262
#define ALIGNOF 263
#define TYPEOF 264
#define OFFSETOF 265
#define PTR_OP 266
#define INC_OP 267
#define DEC_OP 268
#define LEFT_OP 269
#define RIGHT_OP 270
#define LE_OP 271
#define GE_OP 272
#define EQ_OP 273
#define NE_OP 274
#define AND_OP 275
#define OR_OP 276
#define MUL_ASSIGN 277
#define DIV_ASSIGN 278
#define MOD_ASSIGN 279
#define ADD_ASSIGN 280
#define SUB_ASSIGN 281
#define LEFT_ASSIGN 282
#define RIGHT_ASSIGN 283
#define AND_ASSIGN 284
#define XOR_ASSIGN 285
#define OR_ASSIGN 286
#define TYPEDEF 287
#define EXTERN 288
#define STATIC 289
#define AUTO 290
#define REGISTER 291
#define CODE 292
#define EEPROM 293
#define INTERRUPT 294
#define SFR 295
#define SFR16 296
#define SFR32 297
#define ADDRESSMOD 298
#define STATIC_ASSERT 299
#define AT 300
#define SBIT 301
#define REENTRANT 302
#define USING 303
#define XDATA 304
#define DATA 305
#define IDATA 306
#define PDATA 307
#define VAR_ARGS 308
#define CRITICAL 309
#define NONBANKED 310
#define BANKED 311
#define SHADOWREGS 312
#define SD_WPARAM 313
#define SD_BOOL 314
#define SD_CHAR 315
#define SD_SHORT 316
#define SD_INT 317
#define SD_LONG 318
#define SIGNED 319
#define UNSIGNED 320
#define SD_FLOAT 321
#define DOUBLE 322
#define FIXED16X16 323
#define SD_CONST 324
#define VOLATILE 325
#define SD_VOID 326
#define BIT 327
#define STRUCT 328
#define UNION 329
#define ENUM 330
#define RANGE 331
#define SD_FAR 332
#define CASE 333
#define DEFAULT 334
#define IF 335
#define ELSE 336
#define SWITCH 337
#define WHILE 338
#define DO 339
#define FOR 340
#define GOTO 341
#define CONTINUE 342
#define BREAK 343
#define RETURN 344
#define NAKED 345
#define JAVANATIVE 346
#define OVERLAY 347
#define STRING_LITERAL 348
#define INLINEASM 349
#define IFX 350
#define ADDRESS_OF 351
#define GET_VALUE_AT_ADDRESS 352
#define SPIL 353
#define UNSPIL 354
#define GETHBIT 355
#define GETABIT 356
#define GETBYTE 357
#define GETWORD 358
#define BITWISEAND 359
#define UNARYMINUS 360
#define IPUSH 361
#define IPOP 362
#define PCALL 363
#define ENDFUNCTION 364
#define JUMPTABLE 365
#define RRC 366
#define RLC 367
#define CAST 368
#define CALL 369
#define PARAM 370
#define NULLOP 371
#define BLOCK 372
#define LABEL 373
#define RECEIVE 374
#define SEND 375
#define ARRAYINIT 376
#define DUMMY_READ_VOLATILE 377
#define ENDCRITICAL 378
#define SWAP 379
#define INLINE 380
#define NORETURN 381
#define RESTRICT 382
#define SMALLC 383
#define ALIGNAS 384
#define ASM 385




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
{

/* Line 2068 of yacc.c  */
#line 72 "SDCC.y"

    symbol     *sym;        /* symbol table pointer                   */
    structdef  *sdef;       /* structure definition                   */
    char       yychar[SDCC_NAME_MAX+1];
    sym_link   *lnk;        /* declarator  or specifier               */
    int        yyint;       /* integer value returned                 */
    value      *val;        /* for integer constant                   */
    initList   *ilist;      /* initial list                           */
    designation*dsgn;       /* designator                             */
    const char *yystr;      /* pointer to dynamicaly allocated string */
    ast        *asts;       /* expression tree                        */



/* Line 2068 of yacc.c  */
#line 325 "SDCCy.h"
} YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;


