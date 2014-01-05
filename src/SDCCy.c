/* A Bison parser, made by GNU Bison 2.5.  */

/* Bison implementation for Yacc-like parsers in C
   
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

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output.  */
#define YYBISON 1

/* Bison version.  */
#define YYBISON_VERSION "2.5"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1

/* Using locations.  */
#define YYLSP_NEEDED 0



/* Copy the first part of user declarations.  */

/* Line 268 of yacc.c  */
#line 24 "SDCC.y"

#include <stdio.h>
#include <stdarg.h>
#include <string.h>
#include "SDCCglobl.h"
#include "SDCCsymt.h"
#include "SDCChasht.h"
#include "SDCCval.h"
#include "SDCCmem.h"
#include "SDCCast.h"
#include "port.h"
#include "newalloc.h"
#include "SDCCerr.h"
#include "SDCCutil.h"
#include "SDCCbtree.h"
#include "SDCCopt.h"

extern int yyerror (char *);
extern FILE     *yyin;
int NestLevel = 0;      /* current NestLevel       */
int stackPtr  = 1;      /* stack pointer           */
int xstackPtr = 0;      /* xstack pointer          */
int reentrant = 0;
int blockNo   = 0;      /* sequential block number  */
int currBlockno=0;
int inCritical= 0;
int seqPointNo= 1;      /* sequence point number */
int ignoreTypedefType=0;
extern int yylex();
int yyparse(void);
extern int noLineno;
char lbuff[1024];       /* local buffer */

/* break & continue stacks */
STACK_DCL(continueStack  ,symbol *,MAX_NEST_LEVEL)
STACK_DCL(breakStack  ,symbol *,MAX_NEST_LEVEL)
STACK_DCL(forStack  ,symbol *,MAX_NEST_LEVEL)
STACK_DCL(swStk   ,ast   *,MAX_NEST_LEVEL)
STACK_DCL(blockNum,int,MAX_NEST_LEVEL*3)

value *cenum = NULL;        /* current enumeration  type chain*/
bool uselessDecl = TRUE;

#define YYDEBUG 1



/* Line 268 of yacc.c  */
#line 119 "SDCCy.c"

/* Enabling traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif

/* Enabling verbose error messages.  */
#ifdef YYERROR_VERBOSE
# undef YYERROR_VERBOSE
# define YYERROR_VERBOSE 1
#else
# define YYERROR_VERBOSE 0
#endif

/* Enabling the token table.  */
#ifndef YYTOKEN_TABLE
# define YYTOKEN_TABLE 0
#endif


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

/* Line 293 of yacc.c  */
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



/* Line 293 of yacc.c  */
#line 430 "SDCCy.c"
} YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif


/* Copy the second part of user declarations.  */


/* Line 343 of yacc.c  */
#line 442 "SDCCy.c"

#ifdef short
# undef short
#endif

#ifdef YYTYPE_UINT8
typedef YYTYPE_UINT8 yytype_uint8;
#else
typedef unsigned char yytype_uint8;
#endif

#ifdef YYTYPE_INT8
typedef YYTYPE_INT8 yytype_int8;
#elif (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
typedef signed char yytype_int8;
#else
typedef short int yytype_int8;
#endif

#ifdef YYTYPE_UINT16
typedef YYTYPE_UINT16 yytype_uint16;
#else
typedef unsigned short int yytype_uint16;
#endif

#ifdef YYTYPE_INT16
typedef YYTYPE_INT16 yytype_int16;
#else
typedef short int yytype_int16;
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif ! defined YYSIZE_T && (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned int
# endif
#endif

#define YYSIZE_MAXIMUM ((YYSIZE_T) -1)

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(msgid) dgettext ("bison-runtime", msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(msgid) msgid
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YYUSE(e) ((void) (e))
#else
# define YYUSE(e) /* empty */
#endif

/* Identity function, used to suppress warnings about constant conditions.  */
#ifndef lint
# define YYID(n) (n)
#else
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static int
YYID (int yyi)
#else
static int
YYID (yyi)
    int yyi;
#endif
{
  return yyi;
}
#endif

#if ! defined yyoverflow || YYERROR_VERBOSE

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS && (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's `empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (YYID (0))
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
	     && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS && (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS && (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* ! defined yyoverflow || YYERROR_VERBOSE */


#if (! defined yyoverflow \
     && (! defined __cplusplus \
	 || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yytype_int16 yyss_alloc;
  YYSTYPE yyvs_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (sizeof (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (sizeof (yytype_int16) + sizeof (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)				\
    do									\
      {									\
	YYSIZE_T yynewbytes;						\
	YYCOPY (&yyptr->Stack_alloc, Stack, yysize);			\
	Stack = &yyptr->Stack_alloc;					\
	yynewbytes = yystacksize * sizeof (*Stack) + YYSTACK_GAP_MAXIMUM; \
	yyptr += yynewbytes / sizeof (*yyptr);				\
      }									\
    while (YYID (0))

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from FROM to TO.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(To, From, Count) \
      __builtin_memcpy (To, From, (Count) * sizeof (*(From)))
#  else
#   define YYCOPY(To, From, Count)		\
      do					\
	{					\
	  YYSIZE_T yyi;				\
	  for (yyi = 0; yyi < (Count); yyi++)	\
	    (To)[yyi] = (From)[yyi];		\
	}					\
      while (YYID (0))
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  114
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   1794

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  155
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  118
/* YYNRULES -- Number of rules.  */
#define YYNRULES  316
/* YYNRULES -- Number of states.  */
#define YYNSTATES  490

/* YYTRANSLATE(YYLEX) -- Bison symbol number corresponding to YYLEX.  */
#define YYUNDEFTOK  2
#define YYMAXUTOK   385

#define YYTRANSLATE(YYX)						\
  ((unsigned int) (YYX) <= YYMAXUTOK ? yytranslate[YYX] : YYUNDEFTOK)

/* YYTRANSLATE[YYLEX] -- Bison symbol number corresponding to YYLEX.  */
static const yytype_uint8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,   142,     2,     2,     2,   144,   137,     2,
     134,   135,   138,   139,   136,   140,   131,   143,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,   150,   152,
     145,   151,   146,   149,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,   132,     2,   133,   147,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,   153,   148,   154,   141,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37,    38,    39,    40,    41,    42,    43,    44,
      45,    46,    47,    48,    49,    50,    51,    52,    53,    54,
      55,    56,    57,    58,    59,    60,    61,    62,    63,    64,
      65,    66,    67,    68,    69,    70,    71,    72,    73,    74,
      75,    76,    77,    78,    79,    80,    81,    82,    83,    84,
      85,    86,    87,    88,    89,    90,    91,    92,    93,    94,
      95,    96,    97,    98,    99,   100,   101,   102,   103,   104,
     105,   106,   107,   108,   109,   110,   111,   112,   113,   114,
     115,   116,   117,   118,   119,   120,   121,   122,   123,   124,
     125,   126,   127,   128,   129,   130
};

#if YYDEBUG
/* YYPRHS[YYN] -- Index of the first RHS symbol of rule number YYN in
   YYRHS.  */
static const yytype_uint16 yyprhs[] =
{
       0,     0,     3,     4,     6,     8,    11,    13,    15,    17,
      18,    22,    23,    28,    30,    33,    36,    38,    40,    42,
      44,    46,    48,    50,    52,    54,    56,    58,    60,    63,
      65,    66,    71,    76,    78,    80,    82,    86,    88,    90,
      95,    99,   104,   105,   110,   111,   116,   119,   122,   124,
     128,   130,   133,   136,   139,   142,   147,   152,   155,   162,
     164,   166,   168,   170,   172,   174,   176,   181,   183,   187,
     191,   195,   197,   201,   205,   207,   211,   215,   217,   221,
     225,   229,   233,   235,   239,   243,   245,   249,   251,   255,
     257,   261,   263,   264,   269,   271,   272,   277,   279,   280,
     287,   289,   293,   295,   297,   299,   301,   303,   305,   307,
     309,   311,   313,   315,   317,   318,   323,   325,   328,   332,
     335,   337,   339,   342,   344,   347,   349,   352,   354,   357,
     359,   363,   365,   369,   370,   372,   375,   377,   380,   384,
     387,   389,   391,   393,   395,   397,   399,   401,   406,   411,
     413,   416,   418,   420,   422,   424,   426,   428,   430,   432,
     434,   436,   438,   440,   442,   444,   446,   448,   450,   452,
     454,   456,   458,   461,   463,   465,   467,   469,   471,   473,
     475,   478,   480,   482,   483,   490,   493,   495,   497,   499,
     500,   502,   504,   507,   511,   513,   517,   519,   522,   526,
     527,   532,   538,   541,   543,   546,   550,   553,   556,   557,
     559,   562,   564,   566,   568,   571,   573,   576,   578,   582,
     586,   591,   595,   596,   602,   607,   609,   612,   615,   619,
     621,   623,   625,   628,   630,   634,   636,   640,   642,   646,
     649,   651,   653,   656,   658,   660,   663,   667,   670,   674,
     678,   683,   686,   690,   694,   695,   701,   703,   707,   712,
     715,   720,   727,   729,   731,   733,   735,   737,   739,   741,
     743,   745,   748,   751,   754,   757,   761,   762,   766,   768,
     770,   773,   777,   781,   786,   789,   791,   794,   796,   799,
     801,   804,   807,   808,   809,   817,   818,   825,   827,   829,
     831,   832,   839,   847,   857,   858,   860,   864,   867,   870,
     873,   877,   879,   885,   888,   893,   899
};

/* YYRHS -- A `-1'-separated list of the rules' RHS.  */
static const yytype_int16 yyrhs[] =
{
     156,     0,    -1,    -1,   157,    -1,   158,    -1,   157,   158,
      -1,   159,    -1,   195,    -1,   271,    -1,    -1,   226,   160,
     164,    -1,    -1,   196,   226,   161,   164,    -1,   163,    -1,
     163,   162,    -1,    48,   194,    -1,    47,    -1,    54,    -1,
      90,    -1,    91,    -1,    92,    -1,    55,    -1,    57,    -1,
      58,    -1,    56,    -1,   207,    -1,   128,    -1,   254,    -1,
     255,   254,    -1,   272,    -1,    -1,   165,   131,   166,   272,
      -1,   165,   132,   192,   133,    -1,   272,    -1,     6,    -1,
     168,    -1,   134,   192,   135,    -1,    93,    -1,   167,    -1,
     169,   132,   192,   133,    -1,   169,   134,   135,    -1,   169,
     134,   172,   135,    -1,    -1,   169,   131,   170,   272,    -1,
      -1,   169,    11,   171,   272,    -1,   169,    12,    -1,   169,
      13,    -1,   190,    -1,   190,   136,   172,    -1,   169,    -1,
      12,   173,    -1,    13,   173,    -1,   174,   175,    -1,     7,
     173,    -1,     7,   134,   239,   135,    -1,     8,   134,   239,
     135,    -1,     9,   173,    -1,    10,   134,   239,   136,   165,
     135,    -1,   137,    -1,   138,    -1,   139,    -1,   140,    -1,
     141,    -1,   142,    -1,   173,    -1,   134,   239,   135,   175,
      -1,   175,    -1,   176,   138,   175,    -1,   176,   143,   175,
      -1,   176,   144,   175,    -1,   176,    -1,   177,   139,   176,
      -1,   177,   140,   176,    -1,   177,    -1,   178,    14,   177,
      -1,   178,    15,   177,    -1,   178,    -1,   179,   145,   178,
      -1,   179,   146,   178,    -1,   179,    16,   178,    -1,   179,
      17,   178,    -1,   179,    -1,   180,    18,   179,    -1,   180,
      19,   179,    -1,   180,    -1,   181,   137,   180,    -1,   181,
      -1,   182,   147,   181,    -1,   182,    -1,   183,   148,   182,
      -1,   183,    -1,    -1,   184,    20,   185,   183,    -1,   184,
      -1,    -1,   186,    21,   187,   184,    -1,   186,    -1,    -1,
     186,   149,   189,   186,   150,   188,    -1,   188,    -1,   175,
     191,   190,    -1,   151,    -1,    22,    -1,    23,    -1,    24,
      -1,    25,    -1,    26,    -1,    27,    -1,    28,    -1,    29,
      -1,    30,    -1,    31,    -1,   190,    -1,    -1,   192,   136,
     193,   190,    -1,   188,    -1,   196,   152,    -1,   196,   198,
     152,    -1,   245,   152,    -1,   197,    -1,   204,    -1,   204,
     197,    -1,   208,    -1,   208,   197,    -1,   205,    -1,   205,
     197,    -1,   206,    -1,   206,   197,    -1,   199,    -1,   198,
     136,   199,    -1,   224,    -1,   224,   151,   243,    -1,    -1,
     201,    -1,   202,   151,    -1,   203,    -1,   202,   203,    -1,
     132,   194,   133,    -1,   131,   272,    -1,    32,    -1,    33,
      -1,    34,    -1,    35,    -1,    36,    -1,   125,    -1,   126,
      -1,   129,   134,   239,   135,    -1,   129,   134,   194,   135,
      -1,    39,    -1,    39,   194,    -1,    59,    -1,    60,    -1,
      61,    -1,    62,    -1,    63,    -1,    64,    -1,    65,    -1,
      71,    -1,    69,    -1,    70,    -1,   127,    -1,     5,    -1,
      66,    -1,    68,    -1,    49,    -1,    37,    -1,    38,    -1,
      50,    -1,    51,    -1,    52,    -1,    72,    -1,    45,   194,
      -1,   211,    -1,   220,    -1,     4,    -1,   209,    -1,    46,
      -1,   210,    -1,    40,    -1,    40,    56,    -1,    41,    -1,
      42,    -1,    -1,   213,   214,   212,   153,   216,   154,    -1,
     213,   215,    -1,    73,    -1,    74,    -1,   215,    -1,    -1,
     272,    -1,   217,    -1,   216,   217,    -1,   233,   218,   152,
      -1,   219,    -1,   218,   136,   219,    -1,   224,    -1,   150,
     194,    -1,   224,   150,   194,    -1,    -1,    75,   153,   221,
     154,    -1,    75,   272,   153,   221,   154,    -1,    75,   272,
      -1,   222,    -1,   221,   136,    -1,   221,   136,   222,    -1,
     272,   223,    -1,   151,   194,    -1,    -1,   225,    -1,   231,
     225,    -1,   227,    -1,   228,    -1,   227,    -1,   231,   227,
      -1,   229,    -1,   229,   162,    -1,   272,    -1,   134,   224,
     135,    -1,   225,   132,   133,    -1,   225,   132,   194,   133,
      -1,   228,   134,   135,    -1,    -1,   228,   134,   230,   236,
     135,    -1,   228,   134,   235,   135,    -1,   232,    -1,   232,
     233,    -1,   232,   231,    -1,   232,   233,   231,    -1,   138,
      -1,   234,    -1,   208,    -1,   234,   208,    -1,   272,    -1,
     235,   136,   272,    -1,   237,    -1,   237,   136,    53,    -1,
     238,    -1,   237,   136,   238,    -1,   196,   224,    -1,   239,
      -1,   196,    -1,   196,   240,    -1,   231,    -1,   241,    -1,
     231,   241,    -1,   134,   240,   135,    -1,   132,   133,    -1,
     132,   194,   133,    -1,   241,   132,   133,    -1,   241,   132,
     194,   133,    -1,   134,   135,    -1,   134,   236,   135,    -1,
     241,   134,   135,    -1,    -1,   241,   134,   242,   236,   135,
      -1,   190,    -1,   153,   244,   154,    -1,   153,   244,   136,
     154,    -1,   200,   243,    -1,   244,   136,   200,   243,    -1,
      44,   134,   194,   136,    93,   135,    -1,   249,    -1,   254,
      -1,   257,    -1,   259,    -1,   265,    -1,   268,    -1,   248,
      -1,   270,    -1,    54,    -1,   247,   246,    -1,   250,   246,
      -1,   250,   154,    -1,   272,   150,    -1,    78,   194,   150,
      -1,    -1,    79,   251,   150,    -1,   153,    -1,   154,    -1,
     252,   253,    -1,   252,   256,   253,    -1,   252,   255,   253,
      -1,   252,   255,   256,   253,    -1,     1,   152,    -1,   195,
      -1,   255,   195,    -1,   246,    -1,   256,   246,    -1,   152,
      -1,   192,   152,    -1,    81,   246,    -1,    -1,    -1,    80,
     134,   192,   135,   260,   246,   258,    -1,    -1,    82,   134,
     192,   135,   261,   246,    -1,    83,    -1,    84,    -1,    85,
      -1,    -1,   262,   134,   192,   135,   266,   246,    -1,   263,
     246,    83,   134,   192,   135,   152,    -1,   264,   134,   267,
     152,   267,   152,   267,   135,   246,    -1,    -1,   192,    -1,
      86,   272,   152,    -1,    87,   152,    -1,    88,   152,    -1,
      89,   152,    -1,    89,   192,   152,    -1,    93,    -1,   130,
     134,   269,   135,   152,    -1,    94,   152,    -1,    43,   272,
     272,   152,    -1,    43,   272,    69,   272,   152,    -1,     3,
      -1
};

/* YYRLINE[YYN] -- source line where rule number YYN was defined.  */
static const yytype_uint16 yyrline[] =
{
       0,   144,   144,   147,   151,   152,   156,   160,   181,   186,
     185,   195,   194,   207,   208,   212,   216,   219,   222,   225,
     228,   231,   237,   240,   243,   249,   255,   261,   262,   270,
     271,   271,   278,   285,   286,   287,   288,   292,   296,   297,
     298,   300,   304,   304,   311,   311,   318,   320,   325,   326,
     330,   331,   332,   333,   334,   335,   336,   337,   338,   342,
     343,   344,   345,   346,   347,   351,   352,   356,   357,   358,
     359,   363,   364,   365,   369,   370,   371,   375,   376,   377,
     378,   379,   383,   384,   385,   389,   390,   394,   395,   399,
     400,   404,   405,   405,   410,   411,   411,   416,   417,   417,
     425,   426,   471,   472,   473,   474,   475,   476,   477,   478,
     479,   480,   481,   485,   486,   486,   490,   494,   518,   533,
     539,   542,   543,   548,   549,   554,   555,   560,   561,   569,
     570,   574,   575,   579,   580,   584,   588,   589,   593,   615,
     619,   623,   627,   631,   635,   642,   646,   653,   659,   674,
     675,   688,   693,   698,   703,   708,   713,   718,   723,   728,
     732,   736,   740,   744,   749,   754,   758,   762,   766,   770,
     774,   778,   786,   793,   798,   804,   813,   817,   825,   829,
     837,   848,   859,   872,   871,   964,   993,   994,   998,   999,
    1010,  1029,  1030,  1043,  1068,  1069,  1077,  1078,  1093,  1111,
    1115,  1120,  1141,  1157,  1158,  1159,  1167,  1187,  1200,  1214,
    1215,  1223,  1224,  1228,  1229,  1237,  1238,  1270,  1271,  1272,
    1281,  1313,  1318,  1317,  1351,  1361,  1362,  1375,  1381,  1421,
    1428,  1431,  1433,  1441,  1442,  1450,  1451,  1455,  1456,  1464,
    1479,  1489,  1497,  1523,  1524,  1525,  1532,  1533,  1538,  1544,
    1550,  1558,  1559,  1560,  1573,  1572,  1602,  1603,  1604,  1608,
    1609,  1618,  1629,  1630,  1631,  1632,  1633,  1634,  1635,  1636,
    1640,  1649,  1658,  1659,  1671,  1673,  1680,  1680,  1690,  1701,
    1709,  1710,  1711,  1716,  1723,  1727,  1740,  1766,  1767,  1771,
    1772,  1776,  1777,  1782,  1782,  1790,  1790,  1815,  1829,  1844,
    1863,  1863,  1872,  1882,  1907,  1908,  1912,  1917,  1930,  1940,
    1949,  1961,  1965,  1975,  1988,  1999,  2017
};
#endif

#if YYDEBUG || YYERROR_VERBOSE || YYTOKEN_TABLE
/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "$end", "error", "$undefined", "IDENTIFIER", "TYPE_NAME",
  "ADDRSPACE_NAME", "CONSTANT", "SIZEOF", "ALIGNOF", "TYPEOF", "OFFSETOF",
  "PTR_OP", "INC_OP", "DEC_OP", "LEFT_OP", "RIGHT_OP", "LE_OP", "GE_OP",
  "EQ_OP", "NE_OP", "AND_OP", "OR_OP", "MUL_ASSIGN", "DIV_ASSIGN",
  "MOD_ASSIGN", "ADD_ASSIGN", "SUB_ASSIGN", "LEFT_ASSIGN", "RIGHT_ASSIGN",
  "AND_ASSIGN", "XOR_ASSIGN", "OR_ASSIGN", "TYPEDEF", "EXTERN", "STATIC",
  "AUTO", "REGISTER", "CODE", "EEPROM", "INTERRUPT", "SFR", "SFR16",
  "SFR32", "ADDRESSMOD", "STATIC_ASSERT", "AT", "SBIT", "REENTRANT",
  "USING", "XDATA", "DATA", "IDATA", "PDATA", "VAR_ARGS", "CRITICAL",
  "NONBANKED", "BANKED", "SHADOWREGS", "SD_WPARAM", "SD_BOOL", "SD_CHAR",
  "SD_SHORT", "SD_INT", "SD_LONG", "SIGNED", "UNSIGNED", "SD_FLOAT",
  "DOUBLE", "FIXED16X16", "SD_CONST", "VOLATILE", "SD_VOID", "BIT",
  "STRUCT", "UNION", "ENUM", "RANGE", "SD_FAR", "CASE", "DEFAULT", "IF",
  "ELSE", "SWITCH", "WHILE", "DO", "FOR", "GOTO", "CONTINUE", "BREAK",
  "RETURN", "NAKED", "JAVANATIVE", "OVERLAY", "STRING_LITERAL",
  "INLINEASM", "IFX", "ADDRESS_OF", "GET_VALUE_AT_ADDRESS", "SPIL",
  "UNSPIL", "GETHBIT", "GETABIT", "GETBYTE", "GETWORD", "BITWISEAND",
  "UNARYMINUS", "IPUSH", "IPOP", "PCALL", "ENDFUNCTION", "JUMPTABLE",
  "RRC", "RLC", "CAST", "CALL", "PARAM", "NULLOP", "BLOCK", "LABEL",
  "RECEIVE", "SEND", "ARRAYINIT", "DUMMY_READ_VOLATILE", "ENDCRITICAL",
  "SWAP", "INLINE", "NORETURN", "RESTRICT", "SMALLC", "ALIGNAS", "ASM",
  "'.'", "'['", "']'", "'('", "')'", "','", "'&'", "'*'", "'+'", "'-'",
  "'~'", "'!'", "'/'", "'%'", "'<'", "'>'", "'^'", "'|'", "'?'", "':'",
  "'='", "';'", "'{'", "'}'", "$accept", "file", "program",
  "external_definition", "function_definition", "$@1", "$@2",
  "function_attribute", "function_attributes", "function_body",
  "offsetof_member_designator", "$@3", "primary_expr",
  "string_literal_val", "postfix_expr", "$@4", "$@5", "argument_expr_list",
  "unary_expr", "unary_operator", "cast_expr", "multiplicative_expr",
  "additive_expr", "shift_expr", "relational_expr", "equality_expr",
  "and_expr", "exclusive_or_expr", "inclusive_or_expr", "logical_and_expr",
  "$@6", "logical_or_expr", "$@7", "conditional_expr", "$@8",
  "assignment_expr", "assignment_operator", "expr", "$@9", "constant_expr",
  "declaration", "declaration_specifiers", "declaration_specifiers_",
  "init_declarator_list", "init_declarator", "designation_opt",
  "designation", "designator_list", "designator",
  "storage_class_specifier", "function_specifier", "alignment_specifier",
  "Interrupt_storage", "type_specifier", "sfr_reg_bit", "sfr_attributes",
  "struct_or_union_specifier", "$@10", "struct_or_union", "opt_stag",
  "stag", "struct_declaration_list", "struct_declaration",
  "struct_declarator_list", "struct_declarator", "enum_specifier",
  "enumerator_list", "enumerator", "opt_assign_expr", "declarator",
  "declarator3", "function_declarator", "declarator2_function_attributes",
  "declarator2", "function_declarator2", "$@11", "pointer",
  "unqualified_pointer", "type_specifier_list", "type_specifier_list_",
  "identifier_list", "parameter_type_list", "parameter_list",
  "parameter_declaration", "type_name", "abstract_declarator",
  "abstract_declarator2", "$@12", "initializer", "initializer_list",
  "static_assert_declaration", "statement", "critical",
  "critical_statement", "labeled_statement", "label", "@13", "start_block",
  "end_block", "compound_statement", "declaration_list", "statement_list",
  "expression_statement", "else_statement", "selection_statement", "$@14",
  "@15", "while", "do", "for", "iteration_statement", "$@16", "expr_opt",
  "jump_statement", "asm_string_literal", "asm_statement", "addressmod",
  "identifier", 0
};
#endif

# ifdef YYPRINT
/* YYTOKNUM[YYLEX-NUM] -- Internal token number corresponding to
   token YYLEX-NUM.  */
static const yytype_uint16 yytoknum[] =
{
       0,   256,   257,   258,   259,   260,   261,   262,   263,   264,
     265,   266,   267,   268,   269,   270,   271,   272,   273,   274,
     275,   276,   277,   278,   279,   280,   281,   282,   283,   284,
     285,   286,   287,   288,   289,   290,   291,   292,   293,   294,
     295,   296,   297,   298,   299,   300,   301,   302,   303,   304,
     305,   306,   307,   308,   309,   310,   311,   312,   313,   314,
     315,   316,   317,   318,   319,   320,   321,   322,   323,   324,
     325,   326,   327,   328,   329,   330,   331,   332,   333,   334,
     335,   336,   337,   338,   339,   340,   341,   342,   343,   344,
     345,   346,   347,   348,   349,   350,   351,   352,   353,   354,
     355,   356,   357,   358,   359,   360,   361,   362,   363,   364,
     365,   366,   367,   368,   369,   370,   371,   372,   373,   374,
     375,   376,   377,   378,   379,   380,   381,   382,   383,   384,
     385,    46,    91,    93,    40,    41,    44,    38,    42,    43,
      45,   126,    33,    47,    37,    60,    62,    94,   124,    63,
      58,    61,    59,   123,   125
};
# endif

/* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
static const yytype_uint16 yyr1[] =
{
       0,   155,   156,   156,   157,   157,   158,   158,   158,   160,
     159,   161,   159,   162,   162,   163,   163,   163,   163,   163,
     163,   163,   163,   163,   163,   163,   163,   164,   164,   165,
     166,   165,   165,   167,   167,   167,   167,   168,   169,   169,
     169,   169,   170,   169,   171,   169,   169,   169,   172,   172,
     173,   173,   173,   173,   173,   173,   173,   173,   173,   174,
     174,   174,   174,   174,   174,   175,   175,   176,   176,   176,
     176,   177,   177,   177,   178,   178,   178,   179,   179,   179,
     179,   179,   180,   180,   180,   181,   181,   182,   182,   183,
     183,   184,   185,   184,   186,   187,   186,   188,   189,   188,
     190,   190,   191,   191,   191,   191,   191,   191,   191,   191,
     191,   191,   191,   192,   193,   192,   194,   195,   195,   195,
     196,   197,   197,   197,   197,   197,   197,   197,   197,   198,
     198,   199,   199,   200,   200,   201,   202,   202,   203,   203,
     204,   204,   204,   204,   204,   205,   205,   206,   206,   207,
     207,   208,   208,   208,   208,   208,   208,   208,   208,   208,
     208,   208,   208,   208,   208,   208,   208,   208,   208,   208,
     208,   208,   208,   208,   208,   208,   208,   209,   209,   210,
     210,   210,   210,   212,   211,   211,   213,   213,   214,   214,
     215,   216,   216,   217,   218,   218,   219,   219,   219,   219,
     220,   220,   220,   221,   221,   221,   222,   223,   223,   224,
     224,   225,   225,   226,   226,   227,   227,   228,   228,   228,
     228,   229,   230,   229,   229,   231,   231,   231,   231,   232,
     233,   234,   234,   235,   235,   236,   236,   237,   237,   238,
     238,   239,   239,   240,   240,   240,   241,   241,   241,   241,
     241,   241,   241,   241,   242,   241,   243,   243,   243,   244,
     244,   245,   246,   246,   246,   246,   246,   246,   246,   246,
     247,   248,   249,   249,   250,   250,   251,   250,   252,   253,
     254,   254,   254,   254,   254,   255,   255,   256,   256,   257,
     257,   258,   258,   260,   259,   261,   259,   262,   263,   264,
     266,   265,   265,   265,   267,   267,   268,   268,   268,   268,
     268,   269,   270,   270,   271,   271,   272
};

/* YYR2[YYN] -- Number of symbols composing right hand side of rule YYN.  */
static const yytype_uint8 yyr2[] =
{
       0,     2,     0,     1,     1,     2,     1,     1,     1,     0,
       3,     0,     4,     1,     2,     2,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     2,     1,
       0,     4,     4,     1,     1,     1,     3,     1,     1,     4,
       3,     4,     0,     4,     0,     4,     2,     2,     1,     3,
       1,     2,     2,     2,     2,     4,     4,     2,     6,     1,
       1,     1,     1,     1,     1,     1,     4,     1,     3,     3,
       3,     1,     3,     3,     1,     3,     3,     1,     3,     3,
       3,     3,     1,     3,     3,     1,     3,     1,     3,     1,
       3,     1,     0,     4,     1,     0,     4,     1,     0,     6,
       1,     3,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     0,     4,     1,     2,     3,     2,
       1,     1,     2,     1,     2,     1,     2,     1,     2,     1,
       3,     1,     3,     0,     1,     2,     1,     2,     3,     2,
       1,     1,     1,     1,     1,     1,     1,     4,     4,     1,
       2,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     2,     1,     1,     1,     1,     1,     1,     1,
       2,     1,     1,     0,     6,     2,     1,     1,     1,     0,
       1,     1,     2,     3,     1,     3,     1,     2,     3,     0,
       4,     5,     2,     1,     2,     3,     2,     2,     0,     1,
       2,     1,     1,     1,     2,     1,     2,     1,     3,     3,
       4,     3,     0,     5,     4,     1,     2,     2,     3,     1,
       1,     1,     2,     1,     3,     1,     3,     1,     3,     2,
       1,     1,     2,     1,     1,     2,     3,     2,     3,     3,
       4,     2,     3,     3,     0,     5,     1,     3,     4,     2,
       4,     6,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     2,     2,     2,     2,     3,     0,     3,     1,     1,
       2,     3,     3,     4,     2,     1,     2,     1,     2,     1,
       2,     2,     0,     0,     7,     0,     6,     1,     1,     1,
       0,     6,     7,     9,     0,     1,     3,     2,     2,     2,
       3,     1,     5,     2,     4,     5,     1
};

/* YYDEFACT[STATE-NAME] -- Default reduction number in state STATE-NUM.
   Performed when YYTABLE doesn't specify something else to do.  Zero
   means the default is an error.  */
static const yytype_uint16 yydefact[] =
{
       2,   316,   175,   162,   140,   141,   142,   143,   144,   166,
     167,   179,   181,   182,     0,     0,     0,   177,   165,   168,
     169,   170,   151,   152,   153,   154,   155,   156,   157,   163,
     164,   159,   160,   158,   171,   186,   187,     0,   145,   146,
     161,     0,     0,   229,     0,     3,     4,     6,     7,     0,
     120,   121,   125,   127,   123,   176,   178,   173,   189,   174,
       0,     9,   213,   212,   215,     0,   225,     0,     8,   217,
     180,     0,     0,    34,     0,     0,     0,     0,     0,     0,
      37,     0,    59,    60,    61,    62,    63,    64,    38,    35,
      50,    65,     0,    67,    71,    74,    77,    82,    85,    87,
      89,    91,    94,    97,   116,   172,    33,     0,   202,     0,
       0,   209,   211,     0,     1,     5,   117,     0,   129,   131,
      11,     0,   122,   126,   128,   124,   183,   185,   190,     0,
       0,   222,   149,    16,     0,    17,    21,    24,    22,    23,
      18,    19,    20,    26,   216,    13,    25,   214,   231,   227,
     226,   230,   119,     0,     0,     0,     0,    54,     0,     0,
      57,     0,    51,    52,    67,   100,   113,     0,   241,     0,
      44,    46,    47,    42,     0,     0,    53,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,    92,    95,    98,     0,   203,   208,     0,
       0,     0,   218,   210,     0,   118,     0,     0,     0,   219,
       0,     0,   278,    10,   285,     0,     0,    27,     0,   221,
       0,     0,   233,   150,    15,    14,   228,   232,     0,   314,
       0,     0,     0,     0,   103,   104,   105,   106,   107,   108,
     109,   110,   111,   112,   102,     0,    36,   114,     0,     0,
     243,   242,   244,     0,     0,     0,     0,    40,     0,    48,
      68,    69,    70,    72,    73,    75,    76,    80,    81,    78,
      79,    83,    84,    86,    88,    90,     0,     0,     0,   204,
     200,     0,   206,     0,   148,   147,   130,   133,   256,   132,
      12,     0,   220,   284,   270,     0,   276,     0,     0,   297,
     298,   299,     0,     0,     0,     0,     0,     0,   289,   279,
       0,   287,     0,   268,   262,     0,   280,   263,     0,     0,
     264,   265,     0,     0,     0,   266,   267,   269,    33,   286,
      28,   241,     0,   235,   237,   240,   224,     0,   315,     0,
      55,    56,     0,   101,     0,   247,     0,   251,     0,     0,
     245,     0,   254,    66,    45,    43,    39,    41,     0,    93,
      96,     0,   205,   207,   201,     0,     0,     0,   134,     0,
     136,     0,     0,   191,   199,     0,     0,     0,     0,     0,
     307,   308,   309,     0,   313,     0,   290,   271,   273,   272,
     282,     0,   288,   281,     0,     0,   304,   274,     0,   239,
     243,   223,     0,   234,   261,     0,    29,   115,   248,   252,
     246,   249,     0,   253,     0,    49,     0,   139,     0,   259,
     135,   137,   133,   257,   184,   192,     0,     0,   194,   196,
     275,   277,     0,     0,   306,   310,   311,     0,   283,     0,
       0,   305,     0,   236,   238,    30,     0,    58,   250,     0,
      99,   138,   258,     0,   197,   199,   193,     0,   293,   295,
       0,   300,     0,   304,     0,     0,   255,   260,   195,   198,
       0,     0,   312,     0,     0,     0,    31,    32,   292,   296,
     301,     0,   304,     0,   294,   302,     0,   291,     0,   303
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int16 yydefgoto[] =
{
      -1,    44,    45,    46,    47,   130,   207,   144,   145,   213,
     405,   464,    88,    89,    90,   255,   254,   258,    91,    92,
     164,    94,    95,    96,    97,    98,    99,   100,   101,   102,
     276,   103,   277,   165,   278,   166,   245,   310,   344,   105,
     214,   168,    50,   117,   118,   367,   368,   369,   370,    51,
      52,    53,   146,    54,    55,    56,    57,   208,    58,   126,
     127,   372,   373,   427,   428,    59,   196,   197,   282,   119,
     111,    61,   112,    63,    64,   220,   113,    66,   374,   151,
     221,   348,   333,   334,   335,   251,   252,   414,   289,   371,
      67,   311,   312,   313,   314,   315,   376,   216,   316,   317,
     218,   319,   320,   484,   321,   470,   471,   322,   323,   324,
     325,   473,   442,   326,   437,   327,    68,   106
};

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
#define YYPACT_NINF -414
static const yytype_int16 yypact[] =
{
    1252,  -414,  -414,  -414,  -414,  -414,  -414,  -414,  -414,  -414,
    -414,   -20,  -414,  -414,    44,   -83,  1099,  -414,  -414,  -414,
    -414,  -414,  -414,  -414,  -414,  -414,  -414,  -414,  -414,  -414,
    -414,  -414,  -414,  -414,  -414,  -414,  -414,     1,  -414,  -414,
    -414,   -50,    52,  -414,    72,  1252,  -414,  -414,  -414,    51,
    -414,  1628,  1628,  1628,  1628,  -414,  -414,  -414,    44,  -414,
     -41,  -414,   -76,   -19,   369,    13,  1507,   -56,  -414,  -414,
    -414,    24,  1099,  -414,  1110,    -9,  1141,    25,  1141,  1141,
    -414,  1000,  -414,  -414,  -414,  -414,  -414,  -414,  -414,  -414,
      97,  -414,  1099,  -414,  -104,   -38,   173,    63,   187,    -5,
     -35,   -13,   158,     8,  -414,  -414,  -414,    44,   -11,  1000,
      46,   -41,  -414,    13,  -414,  -414,  -414,   -55,  -414,    69,
    -414,    13,  -414,  -414,  -414,  -414,  -414,    42,  -414,   887,
     719,     6,  1099,  -414,  1099,  -414,  -414,  -414,  -414,  -414,
    -414,  -414,  -414,  -414,  -414,   369,  -414,   -76,  -414,  -414,
      94,  1667,  -414,    44,    58,    98,  1000,  -414,  1628,  1099,
    -414,  1628,  -414,  -414,   221,  -414,  -414,   101,    18,   104,
    -414,  -414,  -414,  -414,  1099,   340,  -414,  1099,  1099,  1099,
    1099,  1099,  1099,  1099,  1099,  1099,  1099,  1099,  1099,  1099,
    1099,  1099,  1099,  -414,  -414,  -414,  -113,  -414,    90,    44,
     118,   125,  -414,   -41,    52,  -414,   372,   719,   128,  -414,
     145,   138,  -414,  -414,  -414,    51,   486,  -414,   719,  -414,
    1628,   122,  -414,  -414,  -414,  -414,  -414,  -414,   144,  -414,
     208,   168,   169,   174,  -414,  -414,  -414,  -414,  -414,  -414,
    -414,  -414,  -414,  -414,  -414,  1099,  -414,  -414,  1073,  1408,
      79,  -414,    92,  1099,    44,    44,   -98,  -414,   170,   177,
    -414,  -414,  -414,  -104,  -104,   -38,   -38,   173,   173,   173,
     173,    63,    63,   187,    -5,   -35,  1099,  1099,  1099,    44,
    -414,  1099,  -414,   -66,  -414,  -414,  -414,   133,  -414,  -414,
    -414,  1667,  -414,  -414,  -414,  1099,  -414,   175,   180,  -414,
    -414,  -414,    44,   164,   165,   847,   176,   186,  -414,  -414,
     -25,  -414,   795,  -414,  -414,   575,  -414,  -414,   486,   596,
    -414,  -414,   188,   795,   193,  -414,  -414,  -414,   171,  -414,
    -414,    17,   194,   196,  -414,  -414,  -414,    44,  -414,   195,
    -414,  -414,    44,  -414,  1099,  -414,   200,  -414,   203,   204,
      92,  1088,   206,  -414,  -414,  -414,  -414,  -414,  1099,   -13,
     158,    -4,  -414,  -414,  -414,    44,  1099,   372,  -414,   -88,
    -414,   -62,   904,  -414,    10,   185,   205,  1099,  1099,   192,
    -414,  -414,  -414,    60,  -414,   261,  -414,  -414,  -414,  -414,
    -414,   596,  -414,  -414,  1099,   273,  1099,  -414,  1359,  -414,
      59,  -414,  1556,  -414,  -414,    -2,  -414,  -414,  -414,  -414,
    -414,  -414,   224,  -414,  1628,  -414,  1099,  -414,   226,  -414,
    -414,  -414,  -101,  -414,  -414,  -414,  1099,    66,  -414,   211,
    -414,  -414,   141,   148,  -414,  -414,  -414,   228,  -414,   150,
     232,   231,   216,  -414,  -414,  -414,  1099,  -414,  -414,   234,
    -414,  -414,  -414,   372,  -414,    10,  -414,  1099,  -414,  -414,
     218,  -414,  1099,  1099,    44,   -72,  -414,  -414,  -414,  -414,
     795,   795,  -414,   795,   152,   219,  -414,  -414,   292,  -414,
    -414,   235,  1099,   795,  -414,  -414,   248,  -414,   795,  -414
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -414,  -414,  -414,   341,  -414,  -414,  -414,   243,  -414,   182,
    -414,  -414,  -414,  -414,  -414,  -414,  -414,    32,   143,  -414,
     -15,   114,   115,    83,   111,   207,   213,   202,   119,   129,
    -414,   121,  -414,    -6,  -414,  -160,  -414,   -70,  -414,    11,
      22,     7,   220,  -414,   198,   -26,  -414,  -414,    38,  -414,
    -414,  -414,  -414,   -61,  -414,  -414,  -414,  -414,  -414,  -414,
    -414,  -414,    41,  -414,   -37,  -414,   215,   140,  -414,   -40,
       3,   373,    73,  -414,  -414,  -414,    33,  -414,   362,  -414,
    -414,  -214,  -414,    27,   -22,  -237,  -242,  -414,  -348,  -414,
    -414,  -291,  -414,  -414,  -414,  -414,  -414,  -414,  -293,  -112,
     214,   116,  -414,  -414,  -414,  -414,  -414,  -414,  -414,  -414,
    -414,  -414,  -413,  -414,  -414,  -414,  -414,     0
};

/* YYTABLE[YYPACT[STATE-NUM]].  What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule which
   number is the opposite.  If YYTABLE_NINF, syntax error.  */
#define YYTABLE_NINF -212
static const yytype_int16 yytable[] =
{
      69,    93,   110,    60,     1,   148,   332,    49,   350,     1,
     104,   167,   349,     1,    71,   259,     1,   194,   217,   419,
       1,   387,    48,   279,   389,   390,   393,     1,   392,   194,
     365,   366,   395,    65,   177,   356,    70,   108,   247,   178,
     179,   280,    69,   365,   366,    69,   288,     1,    60,    69,
     475,    72,    49,   452,     1,     1,  -211,    93,   128,   169,
    -211,   477,     1,   420,   247,    69,   104,    48,    60,   486,
     279,   154,   114,    62,   422,  -211,  -211,   176,    65,   184,
     185,   204,   121,   155,   109,   343,   167,   201,   364,   167,
     227,   129,   423,   153,    93,   217,   152,   205,   438,   149,
     392,   180,   181,   104,   256,   467,   330,   198,   170,   171,
     172,   247,   191,    69,    93,   131,   203,    93,    62,    93,
     200,    69,    62,   104,   203,   158,   104,   386,   104,   445,
     446,   222,   190,   447,   231,   192,   232,   215,   147,   233,
     210,   219,   199,   223,    42,   224,   416,    42,    43,   248,
     248,   398,   249,   228,   107,    43,    43,   195,   350,   161,
     426,   349,   260,   261,   262,    93,    93,    93,    93,    93,
      93,    93,    93,    93,    93,    93,    93,    93,   193,   478,
     479,   202,   480,   226,   407,    42,    42,   182,   183,    43,
      43,   248,   487,   398,   147,  -188,   247,   489,   259,   198,
     449,   250,   455,   116,    69,   188,   189,   288,   186,   187,
     229,   248,   435,   249,   215,    69,   328,   157,   456,   160,
     206,   162,   163,   215,   351,   215,   352,   331,   173,   174,
     148,   175,    43,    93,   230,   383,   246,   247,   353,   253,
     329,   281,   104,   234,   235,   236,   237,   238,   239,   240,
     241,   242,   243,   284,   354,   355,   331,   336,   337,   346,
     285,    93,    93,    93,   365,   366,    93,   267,   268,   269,
     270,   122,   123,   124,   125,   104,   458,   247,   292,   198,
      93,   291,   250,   459,   247,   461,   247,   481,   247,   104,
     293,   399,   363,   288,   263,   264,   338,   265,   266,   271,
     272,   339,   379,   340,   341,   357,   375,   432,   433,   377,
     342,   148,   328,   358,   378,   328,   380,   381,   328,   328,
     385,   397,   394,   328,   439,   215,   441,   396,   384,   401,
     404,    69,   402,   408,   429,   430,    93,   403,   409,   410,
     329,   413,   406,     1,   434,   104,    73,    74,    75,    76,
      77,    93,    78,    79,   436,   431,   440,   448,   110,   451,
     104,   457,   412,   460,   400,   417,   462,   247,   463,   466,
     472,   482,   244,   483,    69,     1,   465,   418,    73,    74,
      75,    76,    77,   488,    78,    79,   115,   485,   225,   290,
     415,   328,   474,   441,   275,   359,   453,   273,    69,   361,
      69,    93,   286,   203,   274,   331,   360,   421,   132,   331,
     450,    93,   441,   425,   283,   429,   133,   134,   468,   362,
     104,   331,   120,   135,   136,   137,   138,   139,   150,   444,
     318,   400,     0,    80,   391,     0,     0,   454,     0,     0,
       0,     0,    93,     0,     0,     0,     0,     0,     0,     0,
       0,   104,     0,     0,     0,    69,     0,     0,     0,   140,
     141,   142,     0,     0,   476,    80,     0,     0,   469,     0,
     328,   328,     0,   328,    81,   257,     0,    82,    83,    84,
      85,    86,    87,   328,     0,     0,     0,   211,   328,     1,
       2,     3,    73,    74,    75,    76,    77,   143,    78,    79,
       0,     0,     0,     0,     0,     0,    81,     0,     0,    82,
      83,    84,    85,    86,    87,     0,     0,     0,     4,     5,
       6,     7,     8,     9,    10,   287,    11,    12,    13,     0,
      15,    16,    17,     0,     0,    18,    19,    20,    21,     0,
     294,     0,     0,     0,     0,    22,    23,    24,    25,    26,
      27,    28,    29,     0,    30,    31,    32,    33,    34,    35,
      36,    37,     0,     0,   295,   296,   297,     0,   298,   299,
     300,   301,   302,   303,   304,   305,   211,     0,     1,    80,
     306,    73,    74,    75,    76,    77,     0,    78,    79,     0,
       0,     0,     0,     0,     0,     0,     0,   211,     0,     1,
       0,     0,    73,    74,    75,    76,    77,     0,    78,    79,
       0,    38,    39,    40,     0,    41,   307,     0,     0,     0,
      81,     0,     0,    82,    83,    84,    85,    86,    87,   294,
       0,     0,     0,     0,     0,     0,     0,     0,   308,   212,
     309,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     294,     0,     0,   295,   296,   297,     0,   298,   299,   300,
     301,   302,   303,   304,   305,     0,     0,     0,    80,   306,
       0,     0,     0,     0,   295,   296,   297,     0,   298,   299,
     300,   301,   302,   303,   304,   305,     0,     0,     0,    80,
     306,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,   307,     0,     0,     0,    81,
       0,     0,    82,    83,    84,    85,    86,    87,     0,     0,
     211,     0,     0,     2,     3,     0,   307,   308,   212,   388,
      81,     0,     0,    82,    83,    84,    85,    86,    87,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   308,   212,
     309,     4,     5,     6,     7,     8,     9,    10,     0,    11,
      12,    13,     0,    15,    16,    17,     0,     0,    18,    19,
      20,    21,     0,     0,     0,     0,     0,     0,    22,    23,
      24,    25,    26,    27,    28,    29,     0,    30,    31,    32,
      33,    34,    35,    36,    37,     0,   211,     0,     1,     0,
       0,    73,    74,    75,    76,    77,     0,    78,    79,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,    38,    39,    40,     0,    41,   294,
       1,     0,     0,    73,    74,    75,    76,    77,     0,    78,
      79,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,   212,   295,   296,   297,     0,   298,   299,   300,
     301,   302,   303,   304,   305,     0,     0,     0,    80,   306,
       1,     0,     0,    73,    74,    75,    76,    77,     0,    78,
      79,     0,     0,     0,     0,     0,     0,     0,     2,     3,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,   307,     0,     0,     0,    81,
       0,     0,    82,    83,    84,    85,    86,    87,     0,     0,
      80,     9,    10,     0,    11,    12,    13,   308,   212,    16,
      17,     0,     0,    18,    19,    20,    21,     0,     0,     0,
       0,     0,     0,    22,    23,    24,    25,    26,    27,    28,
      29,     0,    30,    31,    32,    33,    34,    35,    36,    37,
      80,    81,     0,     0,    82,    83,    84,    85,    86,    87,
       0,     0,     0,     0,     0,     0,     0,     0,     0,   382,
       0,     0,     0,     1,     2,     3,    73,    74,    75,    76,
      77,     0,    78,    79,     0,     0,     0,     0,     0,     0,
     209,    81,     0,     0,    82,    83,    84,    85,    86,    87,
       0,    40,     4,     5,     6,     7,     8,     9,    10,     0,
      11,    12,    13,     0,     0,    16,    17,     0,     0,    18,
      19,    20,    21,     0,     0,     0,     0,     0,   424,    22,
      23,    24,    25,    26,    27,    28,    29,     0,    30,    31,
      32,    33,    34,    35,    36,    37,     1,     0,     0,    73,
      74,    75,    76,    77,     0,    78,    79,     0,     0,     0,
       0,     1,     0,    80,    73,    74,    75,    76,    77,     0,
      78,    79,     1,     0,     0,    73,    74,    75,    76,    77,
       0,    78,    79,     1,     0,     0,    73,    74,    75,    76,
      77,     0,    78,    79,     0,    38,    39,    40,     0,    41,
       0,     0,     0,     0,    81,     0,     0,    82,    83,    84,
      85,    86,    87,     0,     1,     0,     0,    73,    74,    75,
      76,    77,     0,    78,    79,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,    80,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,    80,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,    80,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,    80,     0,     0,   345,    81,     0,     0,
      82,    83,    84,    85,    86,    87,     0,     0,     0,     0,
       0,   411,    81,     0,     0,    82,    83,    84,    85,    86,
      87,     0,     0,    81,    80,     0,    82,    83,    84,    85,
      86,    87,     0,     0,   156,     0,     0,    82,    83,    84,
      85,    86,    87,     0,     0,     1,     2,     3,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,   159,     0,     0,    82,    83,
      84,    85,    86,    87,     4,     5,     6,     7,     8,     9,
      10,     0,    11,    12,    13,    14,    15,    16,    17,     0,
       0,    18,    19,    20,    21,     0,     0,     0,     0,     0,
       0,    22,    23,    24,    25,    26,    27,    28,    29,     0,
      30,    31,    32,    33,    34,    35,    36,    37,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     1,     2,     3,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,    38,    39,    40,
       0,    41,     0,     0,     0,     0,    42,     0,     0,     0,
      43,     4,     5,     6,     7,     8,     9,    10,     0,    11,
      12,    13,     0,     0,    16,    17,     0,     0,    18,    19,
      20,    21,     2,     3,     0,     0,     0,     0,    22,    23,
      24,    25,    26,    27,    28,    29,     0,    30,    31,    32,
      33,    34,    35,    36,    37,     0,     0,     0,     0,     0,
       4,     5,     6,     7,     8,     9,    10,     0,    11,    12,
      13,     0,     0,    16,    17,     0,     0,    18,    19,    20,
      21,     0,     0,     0,     0,     0,     0,    22,    23,    24,
      25,    26,    27,    28,    29,     0,    30,    31,    32,    33,
      34,    35,    36,    37,    38,    39,    40,     0,    41,     0,
       0,   248,     0,   398,   347,     0,     0,    43,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     2,     3,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,    38,    39,    40,     0,    41,     0,     0,
     248,     0,   249,   347,     9,    10,    43,    11,    12,    13,
       0,     0,    16,    17,     0,     0,    18,    19,    20,    21,
       2,     3,     0,     0,     0,     0,    22,    23,    24,    25,
      26,    27,    28,    29,     0,    30,    31,    32,    33,    34,
      35,    36,    37,     0,     0,     0,     0,     0,     4,     5,
       6,     7,     8,     9,    10,     0,    11,    12,    13,     0,
       0,    16,    17,     0,     0,    18,    19,    20,    21,   443,
       0,     0,     0,     0,     0,    22,    23,    24,    25,    26,
      27,    28,    29,     0,    30,    31,    32,    33,    34,    35,
      36,    37,     2,     3,    40,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,    43,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       4,     5,     6,     7,     8,     9,    10,     0,    11,    12,
      13,     2,     3,    16,    17,     0,     0,    18,    19,    20,
      21,    38,    39,    40,     0,    41,     0,    22,    23,    24,
      25,    26,    27,    28,    29,     0,    30,    31,    32,    33,
      34,    35,    36,    37,     9,    10,     0,    11,    12,    13,
       0,     0,    16,    17,     0,     0,    18,    19,    20,    21,
       0,     0,     0,     0,     0,     0,    22,    23,    24,    25,
      26,    27,    28,    29,     0,    30,    31,    32,    33,    34,
      35,    36,    37,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,    38,    39,    40,     0,    41,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,    40
};

#define yypact_value_is_default(yystate) \
  ((yystate) == (-414))

#define yytable_value_is_error(yytable_value) \
  YYID (0)

static const yytype_int16 yycheck[] =
{
       0,    16,    42,     0,     3,    66,   220,     0,   250,     3,
      16,    81,   249,     3,    14,   175,     3,    21,   130,   367,
       3,   312,     0,   136,   315,   318,   319,     3,   319,    21,
     131,   132,   323,     0,   138,   133,    56,    37,   136,   143,
     144,   154,    42,   131,   132,    45,   206,     3,    45,    49,
     463,   134,    45,   154,     3,     3,   132,    72,    58,    81,
     136,   133,     3,   151,   136,    65,    72,    45,    65,   482,
     136,    71,     0,     0,   136,   151,   152,    92,    45,    16,
      17,   136,    49,    72,   134,   245,   156,   109,   154,   159,
     151,   132,   154,    69,   109,   207,   152,   152,   391,    66,
     391,   139,   140,   109,   174,   453,   218,   107,    11,    12,
      13,   136,   147,   113,   129,   134,   113,   132,    45,   134,
     109,   121,    49,   129,   121,   134,   132,   152,   134,   131,
     132,   131,   137,   135,   156,   148,   158,   130,    65,   161,
     129,   135,   153,   132,   134,   134,   150,   134,   138,   132,
     132,   134,   134,   153,   153,   138,   138,   149,   400,   134,
     150,   398,   177,   178,   179,   180,   181,   182,   183,   184,
     185,   186,   187,   188,   189,   190,   191,   192,    20,   470,
     471,   135,   473,   150,   344,   134,   134,    14,    15,   138,
     138,   132,   483,   134,   121,   153,   136,   488,   358,   199,
     414,   168,   136,   152,   204,    18,    19,   367,   145,   146,
     152,   132,   152,   134,   207,   215,   216,    74,   152,    76,
     151,    78,    79,   216,   132,   218,   134,   220,   131,   132,
     291,   134,   138,   248,   136,   305,   135,   136,   253,   135,
     218,   151,   248,    22,    23,    24,    25,    26,    27,    28,
      29,    30,    31,   135,   254,   255,   249,   135,   136,   248,
     135,   276,   277,   278,   131,   132,   281,   184,   185,   186,
     187,    51,    52,    53,    54,   281,   135,   136,   133,   279,
     295,   153,   249,   135,   136,   135,   136,   135,   136,   295,
     152,   331,   281,   453,   180,   181,   152,   182,   183,   188,
     189,    93,   302,   135,   135,   135,   295,   377,   378,   134,
     136,   372,   312,   136,   134,   315,   152,   152,   318,   319,
     134,   150,   134,   323,   394,   318,   396,   134,   152,   135,
     135,   331,   136,   133,   374,   150,   351,   337,   135,   135,
     318,   135,   342,     3,   152,   351,     6,     7,     8,     9,
      10,   366,    12,    13,    93,   150,    83,   133,   398,   133,
     366,   150,   351,   135,   331,   365,   134,   136,   152,   135,
     152,   152,   151,    81,   374,     3,   446,   366,     6,     7,
       8,     9,    10,   135,    12,    13,    45,   152,   145,   207,
     358,   391,   462,   463,   192,   276,   422,   190,   398,   278,
     400,   416,   204,   400,   191,   398,   277,   369,    39,   402,
     416,   426,   482,   372,   199,   455,    47,    48,   455,   279,
     426,   414,    49,    54,    55,    56,    57,    58,    66,   402,
     216,   398,    -1,    93,   318,    -1,    -1,   426,    -1,    -1,
      -1,    -1,   457,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,   457,    -1,    -1,    -1,   455,    -1,    -1,    -1,    90,
      91,    92,    -1,    -1,   464,    93,    -1,    -1,   457,    -1,
     470,   471,    -1,   473,   134,   135,    -1,   137,   138,   139,
     140,   141,   142,   483,    -1,    -1,    -1,     1,   488,     3,
       4,     5,     6,     7,     8,     9,    10,   128,    12,    13,
      -1,    -1,    -1,    -1,    -1,    -1,   134,    -1,    -1,   137,
     138,   139,   140,   141,   142,    -1,    -1,    -1,    32,    33,
      34,    35,    36,    37,    38,   153,    40,    41,    42,    -1,
      44,    45,    46,    -1,    -1,    49,    50,    51,    52,    -1,
      54,    -1,    -1,    -1,    -1,    59,    60,    61,    62,    63,
      64,    65,    66,    -1,    68,    69,    70,    71,    72,    73,
      74,    75,    -1,    -1,    78,    79,    80,    -1,    82,    83,
      84,    85,    86,    87,    88,    89,     1,    -1,     3,    93,
      94,     6,     7,     8,     9,    10,    -1,    12,    13,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,     1,    -1,     3,
      -1,    -1,     6,     7,     8,     9,    10,    -1,    12,    13,
      -1,   125,   126,   127,    -1,   129,   130,    -1,    -1,    -1,
     134,    -1,    -1,   137,   138,   139,   140,   141,   142,    54,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   152,   153,
     154,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      54,    -1,    -1,    78,    79,    80,    -1,    82,    83,    84,
      85,    86,    87,    88,    89,    -1,    -1,    -1,    93,    94,
      -1,    -1,    -1,    -1,    78,    79,    80,    -1,    82,    83,
      84,    85,    86,    87,    88,    89,    -1,    -1,    -1,    93,
      94,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,   130,    -1,    -1,    -1,   134,
      -1,    -1,   137,   138,   139,   140,   141,   142,    -1,    -1,
       1,    -1,    -1,     4,     5,    -1,   130,   152,   153,   154,
     134,    -1,    -1,   137,   138,   139,   140,   141,   142,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   152,   153,
     154,    32,    33,    34,    35,    36,    37,    38,    -1,    40,
      41,    42,    -1,    44,    45,    46,    -1,    -1,    49,    50,
      51,    52,    -1,    -1,    -1,    -1,    -1,    -1,    59,    60,
      61,    62,    63,    64,    65,    66,    -1,    68,    69,    70,
      71,    72,    73,    74,    75,    -1,     1,    -1,     3,    -1,
      -1,     6,     7,     8,     9,    10,    -1,    12,    13,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,   125,   126,   127,    -1,   129,    54,
       3,    -1,    -1,     6,     7,     8,     9,    10,    -1,    12,
      13,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,   153,    78,    79,    80,    -1,    82,    83,    84,
      85,    86,    87,    88,    89,    -1,    -1,    -1,    93,    94,
       3,    -1,    -1,     6,     7,     8,     9,    10,    -1,    12,
      13,    -1,    -1,    -1,    -1,    -1,    -1,    -1,     4,     5,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,   130,    -1,    -1,    -1,   134,
      -1,    -1,   137,   138,   139,   140,   141,   142,    -1,    -1,
      93,    37,    38,    -1,    40,    41,    42,   152,   153,    45,
      46,    -1,    -1,    49,    50,    51,    52,    -1,    -1,    -1,
      -1,    -1,    -1,    59,    60,    61,    62,    63,    64,    65,
      66,    -1,    68,    69,    70,    71,    72,    73,    74,    75,
      93,   134,    -1,    -1,   137,   138,   139,   140,   141,   142,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   152,
      -1,    -1,    -1,     3,     4,     5,     6,     7,     8,     9,
      10,    -1,    12,    13,    -1,    -1,    -1,    -1,    -1,    -1,
     133,   134,    -1,    -1,   137,   138,   139,   140,   141,   142,
      -1,   127,    32,    33,    34,    35,    36,    37,    38,    -1,
      40,    41,    42,    -1,    -1,    45,    46,    -1,    -1,    49,
      50,    51,    52,    -1,    -1,    -1,    -1,    -1,   154,    59,
      60,    61,    62,    63,    64,    65,    66,    -1,    68,    69,
      70,    71,    72,    73,    74,    75,     3,    -1,    -1,     6,
       7,     8,     9,    10,    -1,    12,    13,    -1,    -1,    -1,
      -1,     3,    -1,    93,     6,     7,     8,     9,    10,    -1,
      12,    13,     3,    -1,    -1,     6,     7,     8,     9,    10,
      -1,    12,    13,     3,    -1,    -1,     6,     7,     8,     9,
      10,    -1,    12,    13,    -1,   125,   126,   127,    -1,   129,
      -1,    -1,    -1,    -1,   134,    -1,    -1,   137,   138,   139,
     140,   141,   142,    -1,     3,    -1,    -1,     6,     7,     8,
       9,    10,    -1,    12,    13,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    93,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    93,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    93,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    93,    -1,    -1,   133,   134,    -1,    -1,
     137,   138,   139,   140,   141,   142,    -1,    -1,    -1,    -1,
      -1,   133,   134,    -1,    -1,   137,   138,   139,   140,   141,
     142,    -1,    -1,   134,    93,    -1,   137,   138,   139,   140,
     141,   142,    -1,    -1,   134,    -1,    -1,   137,   138,   139,
     140,   141,   142,    -1,    -1,     3,     4,     5,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,   134,    -1,    -1,   137,   138,
     139,   140,   141,   142,    32,    33,    34,    35,    36,    37,
      38,    -1,    40,    41,    42,    43,    44,    45,    46,    -1,
      -1,    49,    50,    51,    52,    -1,    -1,    -1,    -1,    -1,
      -1,    59,    60,    61,    62,    63,    64,    65,    66,    -1,
      68,    69,    70,    71,    72,    73,    74,    75,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,     3,     4,     5,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,   125,   126,   127,
      -1,   129,    -1,    -1,    -1,    -1,   134,    -1,    -1,    -1,
     138,    32,    33,    34,    35,    36,    37,    38,    -1,    40,
      41,    42,    -1,    -1,    45,    46,    -1,    -1,    49,    50,
      51,    52,     4,     5,    -1,    -1,    -1,    -1,    59,    60,
      61,    62,    63,    64,    65,    66,    -1,    68,    69,    70,
      71,    72,    73,    74,    75,    -1,    -1,    -1,    -1,    -1,
      32,    33,    34,    35,    36,    37,    38,    -1,    40,    41,
      42,    -1,    -1,    45,    46,    -1,    -1,    49,    50,    51,
      52,    -1,    -1,    -1,    -1,    -1,    -1,    59,    60,    61,
      62,    63,    64,    65,    66,    -1,    68,    69,    70,    71,
      72,    73,    74,    75,   125,   126,   127,    -1,   129,    -1,
      -1,   132,    -1,   134,   135,    -1,    -1,   138,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,     4,     5,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,   125,   126,   127,    -1,   129,    -1,    -1,
     132,    -1,   134,   135,    37,    38,   138,    40,    41,    42,
      -1,    -1,    45,    46,    -1,    -1,    49,    50,    51,    52,
       4,     5,    -1,    -1,    -1,    -1,    59,    60,    61,    62,
      63,    64,    65,    66,    -1,    68,    69,    70,    71,    72,
      73,    74,    75,    -1,    -1,    -1,    -1,    -1,    32,    33,
      34,    35,    36,    37,    38,    -1,    40,    41,    42,    -1,
      -1,    45,    46,    -1,    -1,    49,    50,    51,    52,    53,
      -1,    -1,    -1,    -1,    -1,    59,    60,    61,    62,    63,
      64,    65,    66,    -1,    68,    69,    70,    71,    72,    73,
      74,    75,     4,     5,   127,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,   138,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      32,    33,    34,    35,    36,    37,    38,    -1,    40,    41,
      42,     4,     5,    45,    46,    -1,    -1,    49,    50,    51,
      52,   125,   126,   127,    -1,   129,    -1,    59,    60,    61,
      62,    63,    64,    65,    66,    -1,    68,    69,    70,    71,
      72,    73,    74,    75,    37,    38,    -1,    40,    41,    42,
      -1,    -1,    45,    46,    -1,    -1,    49,    50,    51,    52,
      -1,    -1,    -1,    -1,    -1,    -1,    59,    60,    61,    62,
      63,    64,    65,    66,    -1,    68,    69,    70,    71,    72,
      73,    74,    75,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,   125,   126,   127,    -1,   129,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,   127
};

/* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
   symbol of state STATE-NUM.  */
static const yytype_uint16 yystos[] =
{
       0,     3,     4,     5,    32,    33,    34,    35,    36,    37,
      38,    40,    41,    42,    43,    44,    45,    46,    49,    50,
      51,    52,    59,    60,    61,    62,    63,    64,    65,    66,
      68,    69,    70,    71,    72,    73,    74,    75,   125,   126,
     127,   129,   134,   138,   156,   157,   158,   159,   195,   196,
     197,   204,   205,   206,   208,   209,   210,   211,   213,   220,
     225,   226,   227,   228,   229,   231,   232,   245,   271,   272,
      56,   272,   134,     6,     7,     8,     9,    10,    12,    13,
      93,   134,   137,   138,   139,   140,   141,   142,   167,   168,
     169,   173,   174,   175,   176,   177,   178,   179,   180,   181,
     182,   183,   184,   186,   188,   194,   272,   153,   272,   134,
     224,   225,   227,   231,     0,   158,   152,   198,   199,   224,
     226,   231,   197,   197,   197,   197,   214,   215,   272,   132,
     160,   134,    39,    47,    48,    54,    55,    56,    57,    58,
      90,    91,    92,   128,   162,   163,   207,   227,   208,   231,
     233,   234,   152,    69,   272,   194,   134,   173,   134,   134,
     173,   134,   173,   173,   175,   188,   190,   192,   196,   239,
      11,    12,    13,   131,   132,   134,   175,   138,   143,   144,
     139,   140,    14,    15,    16,    17,   145,   146,    18,    19,
     137,   147,   148,    20,    21,   149,   221,   222,   272,   153,
     194,   239,   135,   225,   136,   152,   151,   161,   212,   133,
     194,     1,   153,   164,   195,   196,   252,   254,   255,   135,
     230,   235,   272,   194,   194,   162,   231,   208,   272,   152,
     136,   239,   239,   239,    22,    23,    24,    25,    26,    27,
      28,    29,    30,    31,   151,   191,   135,   136,   132,   134,
     231,   240,   241,   135,   171,   170,   192,   135,   172,   190,
     175,   175,   175,   176,   176,   177,   177,   178,   178,   178,
     178,   179,   179,   180,   181,   182,   185,   187,   189,   136,
     154,   151,   223,   221,   135,   135,   199,   153,   190,   243,
     164,   153,   133,   152,    54,    78,    79,    80,    82,    83,
      84,    85,    86,    87,    88,    89,    94,   130,   152,   154,
     192,   246,   247,   248,   249,   250,   253,   254,   255,   256,
     257,   259,   262,   263,   264,   265,   268,   270,   272,   195,
     254,   196,   236,   237,   238,   239,   135,   136,   152,    93,
     135,   135,   136,   190,   193,   133,   194,   135,   236,   240,
     241,   132,   134,   175,   272,   272,   133,   135,   136,   183,
     184,   186,   222,   194,   154,   131,   132,   200,   201,   202,
     203,   244,   216,   217,   233,   194,   251,   134,   134,   272,
     152,   152,   152,   192,   152,   134,   152,   246,   154,   246,
     253,   256,   246,   253,   134,   246,   134,   150,   134,   224,
     231,   135,   136,   272,   135,   165,   272,   190,   133,   135,
     135,   133,   194,   135,   242,   172,   150,   272,   194,   243,
     151,   203,   136,   154,   154,   217,   150,   218,   219,   224,
     150,   150,   192,   192,   152,   152,    93,   269,   253,   192,
      83,   192,   267,    53,   238,   131,   132,   135,   133,   236,
     188,   133,   154,   200,   194,   136,   152,   150,   135,   135,
     135,   135,   134,   152,   166,   192,   135,   243,   219,   194,
     260,   261,   152,   266,   192,   267,   272,   133,   246,   246,
     246,   135,   152,    81,   258,   152,   267,   246,   135,   246
};

#define yyerrok		(yyerrstatus = 0)
#define yyclearin	(yychar = YYEMPTY)
#define YYEMPTY		(-2)
#define YYEOF		0

#define YYACCEPT	goto yyacceptlab
#define YYABORT		goto yyabortlab
#define YYERROR		goto yyerrorlab


/* Like YYERROR except do call yyerror.  This remains here temporarily
   to ease the transition to the new meaning of YYERROR, for GCC.
   Once GCC version 2 has supplanted version 1, this can go.  However,
   YYFAIL appears to be in use.  Nevertheless, it is formally deprecated
   in Bison 2.4.2's NEWS entry, where a plan to phase it out is
   discussed.  */

#define YYFAIL		goto yyerrlab
#if defined YYFAIL
  /* This is here to suppress warnings from the GCC cpp's
     -Wunused-macros.  Normally we don't worry about that warning, but
     some users do, and we want to make it easy for users to remove
     YYFAIL uses, which will produce warnings from Bison 2.5.  */
#endif

#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)					\
do								\
  if (yychar == YYEMPTY && yylen == 1)				\
    {								\
      yychar = (Token);						\
      yylval = (Value);						\
      YYPOPSTACK (1);						\
      goto yybackup;						\
    }								\
  else								\
    {								\
      yyerror (YY_("syntax error: cannot back up")); \
      YYERROR;							\
    }								\
while (YYID (0))


#define YYTERROR	1
#define YYERRCODE	256


/* YYLLOC_DEFAULT -- Set CURRENT to span from RHS[1] to RHS[N].
   If N is 0, then set CURRENT to the empty location which ends
   the previous symbol: RHS[0] (always defined).  */

#define YYRHSLOC(Rhs, K) ((Rhs)[K])
#ifndef YYLLOC_DEFAULT
# define YYLLOC_DEFAULT(Current, Rhs, N)				\
    do									\
      if (YYID (N))                                                    \
	{								\
	  (Current).first_line   = YYRHSLOC (Rhs, 1).first_line;	\
	  (Current).first_column = YYRHSLOC (Rhs, 1).first_column;	\
	  (Current).last_line    = YYRHSLOC (Rhs, N).last_line;		\
	  (Current).last_column  = YYRHSLOC (Rhs, N).last_column;	\
	}								\
      else								\
	{								\
	  (Current).first_line   = (Current).last_line   =		\
	    YYRHSLOC (Rhs, 0).last_line;				\
	  (Current).first_column = (Current).last_column =		\
	    YYRHSLOC (Rhs, 0).last_column;				\
	}								\
    while (YYID (0))
#endif


/* This macro is provided for backward compatibility. */

#ifndef YY_LOCATION_PRINT
# define YY_LOCATION_PRINT(File, Loc) ((void) 0)
#endif


/* YYLEX -- calling `yylex' with the right arguments.  */

#ifdef YYLEX_PARAM
# define YYLEX yylex (YYLEX_PARAM)
#else
# define YYLEX yylex ()
#endif

/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)			\
do {						\
  if (yydebug)					\
    YYFPRINTF Args;				\
} while (YYID (0))

# define YY_SYMBOL_PRINT(Title, Type, Value, Location)			  \
do {									  \
  if (yydebug)								  \
    {									  \
      YYFPRINTF (stderr, "%s ", Title);					  \
      yy_symbol_print (stderr,						  \
		  Type, Value); \
      YYFPRINTF (stderr, "\n");						  \
    }									  \
} while (YYID (0))


/*--------------------------------.
| Print this symbol on YYOUTPUT.  |
`--------------------------------*/

/*ARGSUSED*/
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yy_symbol_value_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
#else
static void
yy_symbol_value_print (yyoutput, yytype, yyvaluep)
    FILE *yyoutput;
    int yytype;
    YYSTYPE const * const yyvaluep;
#endif
{
  if (!yyvaluep)
    return;
# ifdef YYPRINT
  if (yytype < YYNTOKENS)
    YYPRINT (yyoutput, yytoknum[yytype], *yyvaluep);
# else
  YYUSE (yyoutput);
# endif
  switch (yytype)
    {
      default:
	break;
    }
}


/*--------------------------------.
| Print this symbol on YYOUTPUT.  |
`--------------------------------*/

#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yy_symbol_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
#else
static void
yy_symbol_print (yyoutput, yytype, yyvaluep)
    FILE *yyoutput;
    int yytype;
    YYSTYPE const * const yyvaluep;
#endif
{
  if (yytype < YYNTOKENS)
    YYFPRINTF (yyoutput, "token %s (", yytname[yytype]);
  else
    YYFPRINTF (yyoutput, "nterm %s (", yytname[yytype]);

  yy_symbol_value_print (yyoutput, yytype, yyvaluep);
  YYFPRINTF (yyoutput, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yy_stack_print (yytype_int16 *yybottom, yytype_int16 *yytop)
#else
static void
yy_stack_print (yybottom, yytop)
    yytype_int16 *yybottom;
    yytype_int16 *yytop;
#endif
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)				\
do {								\
  if (yydebug)							\
    yy_stack_print ((Bottom), (Top));				\
} while (YYID (0))


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yy_reduce_print (YYSTYPE *yyvsp, int yyrule)
#else
static void
yy_reduce_print (yyvsp, yyrule)
    YYSTYPE *yyvsp;
    int yyrule;
#endif
{
  int yynrhs = yyr2[yyrule];
  int yyi;
  unsigned long int yylno = yyrline[yyrule];
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %lu):\n",
	     yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr, yyrhs[yyprhs[yyrule] + yyi],
		       &(yyvsp[(yyi + 1) - (yynrhs)])
		       		       );
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)		\
do {					\
  if (yydebug)				\
    yy_reduce_print (yyvsp, Rule); \
} while (YYID (0))

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args)
# define YY_SYMBOL_PRINT(Title, Type, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef	YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif


#if YYERROR_VERBOSE

# ifndef yystrlen
#  if defined __GLIBC__ && defined _STRING_H
#   define yystrlen strlen
#  else
/* Return the length of YYSTR.  */
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static YYSIZE_T
yystrlen (const char *yystr)
#else
static YYSIZE_T
yystrlen (yystr)
    const char *yystr;
#endif
{
  YYSIZE_T yylen;
  for (yylen = 0; yystr[yylen]; yylen++)
    continue;
  return yylen;
}
#  endif
# endif

# ifndef yystpcpy
#  if defined __GLIBC__ && defined _STRING_H && defined _GNU_SOURCE
#   define yystpcpy stpcpy
#  else
/* Copy YYSRC to YYDEST, returning the address of the terminating '\0' in
   YYDEST.  */
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static char *
yystpcpy (char *yydest, const char *yysrc)
#else
static char *
yystpcpy (yydest, yysrc)
    char *yydest;
    const char *yysrc;
#endif
{
  char *yyd = yydest;
  const char *yys = yysrc;

  while ((*yyd++ = *yys++) != '\0')
    continue;

  return yyd - 1;
}
#  endif
# endif

# ifndef yytnamerr
/* Copy to YYRES the contents of YYSTR after stripping away unnecessary
   quotes and backslashes, so that it's suitable for yyerror.  The
   heuristic is that double-quoting is unnecessary unless the string
   contains an apostrophe, a comma, or backslash (other than
   backslash-backslash).  YYSTR is taken from yytname.  If YYRES is
   null, do not copy; instead, return the length of what the result
   would have been.  */
static YYSIZE_T
yytnamerr (char *yyres, const char *yystr)
{
  if (*yystr == '"')
    {
      YYSIZE_T yyn = 0;
      char const *yyp = yystr;

      for (;;)
	switch (*++yyp)
	  {
	  case '\'':
	  case ',':
	    goto do_not_strip_quotes;

	  case '\\':
	    if (*++yyp != '\\')
	      goto do_not_strip_quotes;
	    /* Fall through.  */
	  default:
	    if (yyres)
	      yyres[yyn] = *yyp;
	    yyn++;
	    break;

	  case '"':
	    if (yyres)
	      yyres[yyn] = '\0';
	    return yyn;
	  }
    do_not_strip_quotes: ;
    }

  if (! yyres)
    return yystrlen (yystr);

  return yystpcpy (yyres, yystr) - yyres;
}
# endif

/* Copy into *YYMSG, which is of size *YYMSG_ALLOC, an error message
   about the unexpected token YYTOKEN for the state stack whose top is
   YYSSP.

   Return 0 if *YYMSG was successfully written.  Return 1 if *YYMSG is
   not large enough to hold the message.  In that case, also set
   *YYMSG_ALLOC to the required number of bytes.  Return 2 if the
   required number of bytes is too large to store.  */
static int
yysyntax_error (YYSIZE_T *yymsg_alloc, char **yymsg,
                yytype_int16 *yyssp, int yytoken)
{
  YYSIZE_T yysize0 = yytnamerr (0, yytname[yytoken]);
  YYSIZE_T yysize = yysize0;
  YYSIZE_T yysize1;
  enum { YYERROR_VERBOSE_ARGS_MAXIMUM = 5 };
  /* Internationalized format string. */
  const char *yyformat = 0;
  /* Arguments of yyformat. */
  char const *yyarg[YYERROR_VERBOSE_ARGS_MAXIMUM];
  /* Number of reported tokens (one for the "unexpected", one per
     "expected"). */
  int yycount = 0;

  /* There are many possibilities here to consider:
     - Assume YYFAIL is not used.  It's too flawed to consider.  See
       <http://lists.gnu.org/archive/html/bison-patches/2009-12/msg00024.html>
       for details.  YYERROR is fine as it does not invoke this
       function.
     - If this state is a consistent state with a default action, then
       the only way this function was invoked is if the default action
       is an error action.  In that case, don't check for expected
       tokens because there are none.
     - The only way there can be no lookahead present (in yychar) is if
       this state is a consistent state with a default action.  Thus,
       detecting the absence of a lookahead is sufficient to determine
       that there is no unexpected or expected token to report.  In that
       case, just report a simple "syntax error".
     - Don't assume there isn't a lookahead just because this state is a
       consistent state with a default action.  There might have been a
       previous inconsistent state, consistent state with a non-default
       action, or user semantic action that manipulated yychar.
     - Of course, the expected token list depends on states to have
       correct lookahead information, and it depends on the parser not
       to perform extra reductions after fetching a lookahead from the
       scanner and before detecting a syntax error.  Thus, state merging
       (from LALR or IELR) and default reductions corrupt the expected
       token list.  However, the list is correct for canonical LR with
       one exception: it will still contain any token that will not be
       accepted due to an error action in a later state.
  */
  if (yytoken != YYEMPTY)
    {
      int yyn = yypact[*yyssp];
      yyarg[yycount++] = yytname[yytoken];
      if (!yypact_value_is_default (yyn))
        {
          /* Start YYX at -YYN if negative to avoid negative indexes in
             YYCHECK.  In other words, skip the first -YYN actions for
             this state because they are default actions.  */
          int yyxbegin = yyn < 0 ? -yyn : 0;
          /* Stay within bounds of both yycheck and yytname.  */
          int yychecklim = YYLAST - yyn + 1;
          int yyxend = yychecklim < YYNTOKENS ? yychecklim : YYNTOKENS;
          int yyx;

          for (yyx = yyxbegin; yyx < yyxend; ++yyx)
            if (yycheck[yyx + yyn] == yyx && yyx != YYTERROR
                && !yytable_value_is_error (yytable[yyx + yyn]))
              {
                if (yycount == YYERROR_VERBOSE_ARGS_MAXIMUM)
                  {
                    yycount = 1;
                    yysize = yysize0;
                    break;
                  }
                yyarg[yycount++] = yytname[yyx];
                yysize1 = yysize + yytnamerr (0, yytname[yyx]);
                if (! (yysize <= yysize1
                       && yysize1 <= YYSTACK_ALLOC_MAXIMUM))
                  return 2;
                yysize = yysize1;
              }
        }
    }

  switch (yycount)
    {
# define YYCASE_(N, S)                      \
      case N:                               \
        yyformat = S;                       \
      break
      YYCASE_(0, YY_("syntax error"));
      YYCASE_(1, YY_("syntax error, unexpected %s"));
      YYCASE_(2, YY_("syntax error, unexpected %s, expecting %s"));
      YYCASE_(3, YY_("syntax error, unexpected %s, expecting %s or %s"));
      YYCASE_(4, YY_("syntax error, unexpected %s, expecting %s or %s or %s"));
      YYCASE_(5, YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s"));
# undef YYCASE_
    }

  yysize1 = yysize + yystrlen (yyformat);
  if (! (yysize <= yysize1 && yysize1 <= YYSTACK_ALLOC_MAXIMUM))
    return 2;
  yysize = yysize1;

  if (*yymsg_alloc < yysize)
    {
      *yymsg_alloc = 2 * yysize;
      if (! (yysize <= *yymsg_alloc
             && *yymsg_alloc <= YYSTACK_ALLOC_MAXIMUM))
        *yymsg_alloc = YYSTACK_ALLOC_MAXIMUM;
      return 1;
    }

  /* Avoid sprintf, as that infringes on the user's name space.
     Don't have undefined behavior even if the translation
     produced a string with the wrong number of "%s"s.  */
  {
    char *yyp = *yymsg;
    int yyi = 0;
    while ((*yyp = *yyformat) != '\0')
      if (*yyp == '%' && yyformat[1] == 's' && yyi < yycount)
        {
          yyp += yytnamerr (yyp, yyarg[yyi++]);
          yyformat += 2;
        }
      else
        {
          yyp++;
          yyformat++;
        }
  }
  return 0;
}
#endif /* YYERROR_VERBOSE */

/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

/*ARGSUSED*/
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yydestruct (const char *yymsg, int yytype, YYSTYPE *yyvaluep)
#else
static void
yydestruct (yymsg, yytype, yyvaluep)
    const char *yymsg;
    int yytype;
    YYSTYPE *yyvaluep;
#endif
{
  YYUSE (yyvaluep);

  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yytype, yyvaluep, yylocationp);

  switch (yytype)
    {

      default:
	break;
    }
}


/* Prevent warnings from -Wmissing-prototypes.  */
#ifdef YYPARSE_PARAM
#if defined __STDC__ || defined __cplusplus
int yyparse (void *YYPARSE_PARAM);
#else
int yyparse ();
#endif
#else /* ! YYPARSE_PARAM */
#if defined __STDC__ || defined __cplusplus
int yyparse (void);
#else
int yyparse ();
#endif
#endif /* ! YYPARSE_PARAM */


/* The lookahead symbol.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;

/* Number of syntax errors so far.  */
int yynerrs;


/*----------.
| yyparse.  |
`----------*/

#ifdef YYPARSE_PARAM
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
int
yyparse (void *YYPARSE_PARAM)
#else
int
yyparse (YYPARSE_PARAM)
    void *YYPARSE_PARAM;
#endif
#else /* ! YYPARSE_PARAM */
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
int
yyparse (void)
#else
int
yyparse ()

#endif
#endif
{
    int yystate;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus;

    /* The stacks and their tools:
       `yyss': related to states.
       `yyvs': related to semantic values.

       Refer to the stacks thru separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* The state stack.  */
    yytype_int16 yyssa[YYINITDEPTH];
    yytype_int16 *yyss;
    yytype_int16 *yyssp;

    /* The semantic value stack.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs;
    YYSTYPE *yyvsp;

    YYSIZE_T yystacksize;

  int yyn;
  int yyresult;
  /* Lookahead token as an internal (translated) token number.  */
  int yytoken;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;

#if YYERROR_VERBOSE
  /* Buffer for error messages, and its allocated size.  */
  char yymsgbuf[128];
  char *yymsg = yymsgbuf;
  YYSIZE_T yymsg_alloc = sizeof yymsgbuf;
#endif

#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  yytoken = 0;
  yyss = yyssa;
  yyvs = yyvsa;
  yystacksize = YYINITDEPTH;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yystate = 0;
  yyerrstatus = 0;
  yynerrs = 0;
  yychar = YYEMPTY; /* Cause a token to be read.  */

  /* Initialize stack pointers.
     Waste one element of value and location stack
     so that they stay on the same level as the state stack.
     The wasted elements are never initialized.  */
  yyssp = yyss;
  yyvsp = yyvs;

  goto yysetstate;

/*------------------------------------------------------------.
| yynewstate -- Push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
 yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;

 yysetstate:
  *yyssp = yystate;

  if (yyss + yystacksize - 1 <= yyssp)
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYSIZE_T yysize = yyssp - yyss + 1;

#ifdef yyoverflow
      {
	/* Give user a chance to reallocate the stack.  Use copies of
	   these so that the &'s don't force the real ones into
	   memory.  */
	YYSTYPE *yyvs1 = yyvs;
	yytype_int16 *yyss1 = yyss;

	/* Each stack pointer address is followed by the size of the
	   data in use in that stack, in bytes.  This used to be a
	   conditional around just the two extra args, but that might
	   be undefined if yyoverflow is a macro.  */
	yyoverflow (YY_("memory exhausted"),
		    &yyss1, yysize * sizeof (*yyssp),
		    &yyvs1, yysize * sizeof (*yyvsp),
		    &yystacksize);

	yyss = yyss1;
	yyvs = yyvs1;
      }
#else /* no yyoverflow */
# ifndef YYSTACK_RELOCATE
      goto yyexhaustedlab;
# else
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
	goto yyexhaustedlab;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
	yystacksize = YYMAXDEPTH;

      {
	yytype_int16 *yyss1 = yyss;
	union yyalloc *yyptr =
	  (union yyalloc *) YYSTACK_ALLOC (YYSTACK_BYTES (yystacksize));
	if (! yyptr)
	  goto yyexhaustedlab;
	YYSTACK_RELOCATE (yyss_alloc, yyss);
	YYSTACK_RELOCATE (yyvs_alloc, yyvs);
#  undef YYSTACK_RELOCATE
	if (yyss1 != yyssa)
	  YYSTACK_FREE (yyss1);
      }
# endif
#endif /* no yyoverflow */

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;

      YYDPRINTF ((stderr, "Stack size increased to %lu\n",
		  (unsigned long int) yystacksize));

      if (yyss + yystacksize - 1 <= yyssp)
	YYABORT;
    }

  YYDPRINTF ((stderr, "Entering state %d\n", yystate));

  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;

/*-----------.
| yybackup.  |
`-----------*/
yybackup:

  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either YYEMPTY or YYEOF or a valid lookahead symbol.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token: "));
      yychar = YYLEX;
    }

  if (yychar <= YYEOF)
    {
      yychar = yytoken = YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);

  /* Discard the shifted token.  */
  yychar = YYEMPTY;

  yystate = yyn;
  *++yyvsp = yylval;

  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- Do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     `$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
        case 2:

/* Line 1806 of yacc.c  */
#line 144 "SDCC.y"
    {
          werror(W_EMPTY_SOURCE_FILE);
        }
    break;

  case 6:

/* Line 1806 of yacc.c  */
#line 157 "SDCC.y"
    {
          // blockNo = 0;
        }
    break;

  case 7:

/* Line 1806 of yacc.c  */
#line 161 "SDCC.y"
    {
          ignoreTypedefType = 0;
          if ((yyvsp[(1) - (1)].sym) && (yyvsp[(1) - (1)].sym)->type && IS_FUNC((yyvsp[(1) - (1)].sym)->type))
            {
              /* The only legal storage classes for
               * a function prototype (declaration)
               * are extern and static. extern is the
               * default. Thus, if this function isn't
               * explicitly marked static, mark it
               * extern.
               */
              if ((yyvsp[(1) - (1)].sym)->etype && IS_SPEC((yyvsp[(1) - (1)].sym)->etype) && !SPEC_STAT((yyvsp[(1) - (1)].sym)->etype))
                {
                  SPEC_EXTR((yyvsp[(1) - (1)].sym)->etype) = 1;
                }
            }
          addSymChain (&(yyvsp[(1) - (1)].sym));
          allocVariables ((yyvsp[(1) - (1)].sym));
          cleanUpLevel (SymbolTab, 1);
        }
    break;

  case 9:

/* Line 1806 of yacc.c  */
#line 186 "SDCC.y"
    {   /* function type not specified */
             /* assume it to be 'int'       */
             addDecl((yyvsp[(1) - (1)].sym),0,newIntLink());
             (yyvsp[(1) - (1)].sym) = createFunctionDecl((yyvsp[(1) - (1)].sym));
         }
    break;

  case 10:

/* Line 1806 of yacc.c  */
#line 191 "SDCC.y"
    {
                                   (yyval.asts) = createFunction((yyvsp[(1) - (3)].sym),(yyvsp[(3) - (3)].asts));
                               }
    break;

  case 11:

/* Line 1806 of yacc.c  */
#line 195 "SDCC.y"
    {
              pointerTypes((yyvsp[(2) - (2)].sym)->type,copyLinkChain((yyvsp[(1) - (2)].lnk)));
              addDecl((yyvsp[(2) - (2)].sym),0,(yyvsp[(1) - (2)].lnk));
              (yyvsp[(2) - (2)].sym) = createFunctionDecl((yyvsp[(2) - (2)].sym));
         }
    break;

  case 12:

/* Line 1806 of yacc.c  */
#line 201 "SDCC.y"
    {
                                    (yyval.asts) = createFunction((yyvsp[(2) - (4)].sym),(yyvsp[(4) - (4)].asts));
                                }
    break;

  case 14:

/* Line 1806 of yacc.c  */
#line 208 "SDCC.y"
    { (yyval.lnk) = mergeSpec((yyvsp[(1) - (2)].lnk),(yyvsp[(2) - (2)].lnk),"function_attribute"); }
    break;

  case 15:

/* Line 1806 of yacc.c  */
#line 212 "SDCC.y"
    {
                        (yyval.lnk) = newLink(SPECIFIER);
                        FUNC_REGBANK((yyval.lnk)) = (int) ulFromVal(constExprValue((yyvsp[(2) - (2)].asts),TRUE));
                     }
    break;

  case 16:

/* Line 1806 of yacc.c  */
#line 216 "SDCC.y"
    {  (yyval.lnk) = newLink (SPECIFIER);
                        FUNC_ISREENT((yyval.lnk))=1;
                     }
    break;

  case 17:

/* Line 1806 of yacc.c  */
#line 219 "SDCC.y"
    {  (yyval.lnk) = newLink (SPECIFIER);
                        FUNC_ISCRITICAL((yyval.lnk)) = 1;
                     }
    break;

  case 18:

/* Line 1806 of yacc.c  */
#line 222 "SDCC.y"
    {  (yyval.lnk) = newLink (SPECIFIER);
                        FUNC_ISNAKED((yyval.lnk))=1;
                     }
    break;

  case 19:

/* Line 1806 of yacc.c  */
#line 225 "SDCC.y"
    {  (yyval.lnk) = newLink (SPECIFIER);
                        FUNC_ISJAVANATIVE((yyval.lnk))=1;
                     }
    break;

  case 20:

/* Line 1806 of yacc.c  */
#line 228 "SDCC.y"
    {  (yyval.lnk) = newLink (SPECIFIER);
                        FUNC_ISOVERLAY((yyval.lnk))=1;
                     }
    break;

  case 21:

/* Line 1806 of yacc.c  */
#line 231 "SDCC.y"
    {(yyval.lnk) = newLink (SPECIFIER);
                        FUNC_NONBANKED((yyval.lnk)) = 1;
                        if (FUNC_BANKED((yyval.lnk))) {
                            werror(W_BANKED_WITH_NONBANKED);
                        }
                     }
    break;

  case 22:

/* Line 1806 of yacc.c  */
#line 237 "SDCC.y"
    {(yyval.lnk) = newLink (SPECIFIER);
                        FUNC_ISSHADOWREGS((yyval.lnk)) = 1;
                     }
    break;

  case 23:

/* Line 1806 of yacc.c  */
#line 240 "SDCC.y"
    {(yyval.lnk) = newLink (SPECIFIER);
                        FUNC_ISWPARAM((yyval.lnk)) = 1;
                     }
    break;

  case 24:

/* Line 1806 of yacc.c  */
#line 243 "SDCC.y"
    {(yyval.lnk) = newLink (SPECIFIER);
                        FUNC_BANKED((yyval.lnk)) = 1;
                        if (FUNC_NONBANKED((yyval.lnk))) {
                            werror(W_BANKED_WITH_NONBANKED);
                        }
                     }
    break;

  case 25:

/* Line 1806 of yacc.c  */
#line 250 "SDCC.y"
    {
                        (yyval.lnk) = newLink (SPECIFIER);
                        FUNC_INTNO((yyval.lnk)) = (yyvsp[(1) - (1)].yyint);
                        FUNC_ISISR((yyval.lnk)) = 1;
                     }
    break;

  case 26:

/* Line 1806 of yacc.c  */
#line 255 "SDCC.y"
    {  (yyval.lnk) = newLink (SPECIFIER);
                        FUNC_ISSMALLC((yyval.lnk))=1;
                     }
    break;

  case 28:

/* Line 1806 of yacc.c  */
#line 263 "SDCC.y"
    {
                       werror (E_OLD_STYLE, ((yyvsp[(1) - (2)].sym) ? (yyvsp[(1) - (2)].sym)->name: ""));
                       exit (1);
                     }
    break;

  case 29:

/* Line 1806 of yacc.c  */
#line 270 "SDCC.y"
    { (yyval.asts) = newAst_VALUE (symbolVal ((yyvsp[(1) - (1)].sym))); }
    break;

  case 30:

/* Line 1806 of yacc.c  */
#line 271 "SDCC.y"
    { ignoreTypedefType = 1; }
    break;

  case 31:

/* Line 1806 of yacc.c  */
#line 272 "SDCC.y"
    {
                       ignoreTypedefType = 0;
                       (yyvsp[(4) - (4)].sym) = newSymbol ((yyvsp[(4) - (4)].sym)->name, NestLevel);
                       (yyvsp[(4) - (4)].sym)->implicit = 1;
                       (yyval.asts) = newNode ('.', (yyvsp[(1) - (4)].asts), newAst_VALUE (symbolVal ((yyvsp[(4) - (4)].sym))));
                     }
    break;

  case 32:

/* Line 1806 of yacc.c  */
#line 279 "SDCC.y"
    {
                       (yyval.asts) = newNode ('[', (yyvsp[(1) - (4)].asts), (yyvsp[(3) - (4)].asts));
                     }
    break;

  case 33:

/* Line 1806 of yacc.c  */
#line 285 "SDCC.y"
    { (yyval.asts) = newAst_VALUE (symbolVal ((yyvsp[(1) - (1)].sym))); }
    break;

  case 34:

/* Line 1806 of yacc.c  */
#line 286 "SDCC.y"
    { (yyval.asts) = newAst_VALUE ((yyvsp[(1) - (1)].val)); }
    break;

  case 36:

/* Line 1806 of yacc.c  */
#line 288 "SDCC.y"
    { (yyval.asts) = (yyvsp[(2) - (3)].asts); }
    break;

  case 37:

/* Line 1806 of yacc.c  */
#line 292 "SDCC.y"
    { (yyval.asts) = newAst_VALUE (strVal ((yyvsp[(1) - (1)].yystr))); }
    break;

  case 39:

/* Line 1806 of yacc.c  */
#line 297 "SDCC.y"
    { (yyval.asts) = newNode  ('[', (yyvsp[(1) - (4)].asts), (yyvsp[(3) - (4)].asts)); }
    break;

  case 40:

/* Line 1806 of yacc.c  */
#line 298 "SDCC.y"
    { (yyval.asts) = newNode  (CALL,(yyvsp[(1) - (3)].asts),NULL);
                                          (yyval.asts)->left->funcName = 1;}
    break;

  case 41:

/* Line 1806 of yacc.c  */
#line 301 "SDCC.y"
    {
            (yyval.asts) = newNode  (CALL,(yyvsp[(1) - (4)].asts),(yyvsp[(3) - (4)].asts)); (yyval.asts)->left->funcName = 1;
          }
    break;

  case 42:

/* Line 1806 of yacc.c  */
#line 304 "SDCC.y"
    { ignoreTypedefType = 1; }
    break;

  case 43:

/* Line 1806 of yacc.c  */
#line 305 "SDCC.y"
    {
                        ignoreTypedefType = 0;
                        (yyvsp[(4) - (4)].sym) = newSymbol((yyvsp[(4) - (4)].sym)->name,NestLevel);
                        (yyvsp[(4) - (4)].sym)->implicit = 1;
                        (yyval.asts) = newNode(PTR_OP,newNode('&',(yyvsp[(1) - (4)].asts),NULL),newAst_VALUE(symbolVal((yyvsp[(4) - (4)].sym))));
                      }
    break;

  case 44:

/* Line 1806 of yacc.c  */
#line 311 "SDCC.y"
    { ignoreTypedefType = 1; }
    break;

  case 45:

/* Line 1806 of yacc.c  */
#line 312 "SDCC.y"
    {
                        ignoreTypedefType = 0;
                        (yyvsp[(4) - (4)].sym) = newSymbol((yyvsp[(4) - (4)].sym)->name,NestLevel);
                        (yyvsp[(4) - (4)].sym)->implicit = 1;
                        (yyval.asts) = newNode(PTR_OP,(yyvsp[(1) - (4)].asts),newAst_VALUE(symbolVal((yyvsp[(4) - (4)].sym))));
                      }
    break;

  case 46:

/* Line 1806 of yacc.c  */
#line 319 "SDCC.y"
    { (yyval.asts) = newNode(INC_OP,(yyvsp[(1) - (2)].asts),NULL);}
    break;

  case 47:

/* Line 1806 of yacc.c  */
#line 321 "SDCC.y"
    { (yyval.asts) = newNode(DEC_OP,(yyvsp[(1) - (2)].asts),NULL); }
    break;

  case 49:

/* Line 1806 of yacc.c  */
#line 326 "SDCC.y"
    { (yyval.asts) = newNode(PARAM,(yyvsp[(1) - (3)].asts),(yyvsp[(3) - (3)].asts)); }
    break;

  case 51:

/* Line 1806 of yacc.c  */
#line 331 "SDCC.y"
    { (yyval.asts) = newNode (INC_OP, NULL, (yyvsp[(2) - (2)].asts)); }
    break;

  case 52:

/* Line 1806 of yacc.c  */
#line 332 "SDCC.y"
    { (yyval.asts) = newNode (DEC_OP, NULL, (yyvsp[(2) - (2)].asts)); }
    break;

  case 53:

/* Line 1806 of yacc.c  */
#line 333 "SDCC.y"
    { (yyval.asts) = newNode ((yyvsp[(1) - (2)].yyint), (yyvsp[(2) - (2)].asts), NULL); }
    break;

  case 54:

/* Line 1806 of yacc.c  */
#line 334 "SDCC.y"
    { (yyval.asts) = newNode (SIZEOF, NULL, (yyvsp[(2) - (2)].asts)); }
    break;

  case 55:

/* Line 1806 of yacc.c  */
#line 335 "SDCC.y"
    { (yyval.asts) = newAst_VALUE (sizeofOp ((yyvsp[(3) - (4)].lnk))); }
    break;

  case 56:

/* Line 1806 of yacc.c  */
#line 336 "SDCC.y"
    { (yyval.asts) = newAst_VALUE (alignofOp ((yyvsp[(3) - (4)].lnk))); }
    break;

  case 57:

/* Line 1806 of yacc.c  */
#line 337 "SDCC.y"
    { (yyval.asts) = newNode (TYPEOF, NULL, (yyvsp[(2) - (2)].asts)); }
    break;

  case 58:

/* Line 1806 of yacc.c  */
#line 338 "SDCC.y"
    { (yyval.asts) = offsetofOp((yyvsp[(3) - (6)].lnk), (yyvsp[(5) - (6)].asts)); }
    break;

  case 59:

/* Line 1806 of yacc.c  */
#line 342 "SDCC.y"
    { (yyval.yyint) = '&';}
    break;

  case 60:

/* Line 1806 of yacc.c  */
#line 343 "SDCC.y"
    { (yyval.yyint) = '*';}
    break;

  case 61:

/* Line 1806 of yacc.c  */
#line 344 "SDCC.y"
    { (yyval.yyint) = '+';}
    break;

  case 62:

/* Line 1806 of yacc.c  */
#line 345 "SDCC.y"
    { (yyval.yyint) = '-';}
    break;

  case 63:

/* Line 1806 of yacc.c  */
#line 346 "SDCC.y"
    { (yyval.yyint) = '~';}
    break;

  case 64:

/* Line 1806 of yacc.c  */
#line 347 "SDCC.y"
    { (yyval.yyint) = '!';}
    break;

  case 66:

/* Line 1806 of yacc.c  */
#line 352 "SDCC.y"
    { (yyval.asts) = newNode(CAST,newAst_LINK((yyvsp[(2) - (4)].lnk)),(yyvsp[(4) - (4)].asts)); }
    break;

  case 68:

/* Line 1806 of yacc.c  */
#line 357 "SDCC.y"
    { (yyval.asts) = newNode('*',(yyvsp[(1) - (3)].asts),(yyvsp[(3) - (3)].asts));}
    break;

  case 69:

/* Line 1806 of yacc.c  */
#line 358 "SDCC.y"
    { (yyval.asts) = newNode('/',(yyvsp[(1) - (3)].asts),(yyvsp[(3) - (3)].asts));}
    break;

  case 70:

/* Line 1806 of yacc.c  */
#line 359 "SDCC.y"
    { (yyval.asts) = newNode('%',(yyvsp[(1) - (3)].asts),(yyvsp[(3) - (3)].asts));}
    break;

  case 72:

/* Line 1806 of yacc.c  */
#line 364 "SDCC.y"
    { (yyval.asts)=newNode('+',(yyvsp[(1) - (3)].asts),(yyvsp[(3) - (3)].asts));}
    break;

  case 73:

/* Line 1806 of yacc.c  */
#line 365 "SDCC.y"
    { (yyval.asts)=newNode('-',(yyvsp[(1) - (3)].asts),(yyvsp[(3) - (3)].asts));}
    break;

  case 75:

/* Line 1806 of yacc.c  */
#line 370 "SDCC.y"
    { (yyval.asts) = newNode(LEFT_OP,(yyvsp[(1) - (3)].asts),(yyvsp[(3) - (3)].asts)); }
    break;

  case 76:

/* Line 1806 of yacc.c  */
#line 371 "SDCC.y"
    { (yyval.asts) = newNode(RIGHT_OP,(yyvsp[(1) - (3)].asts),(yyvsp[(3) - (3)].asts)); }
    break;

  case 78:

/* Line 1806 of yacc.c  */
#line 376 "SDCC.y"
    { (yyval.asts) = newNode('<',  (yyvsp[(1) - (3)].asts),(yyvsp[(3) - (3)].asts));}
    break;

  case 79:

/* Line 1806 of yacc.c  */
#line 377 "SDCC.y"
    { (yyval.asts) = newNode('>',  (yyvsp[(1) - (3)].asts),(yyvsp[(3) - (3)].asts));}
    break;

  case 80:

/* Line 1806 of yacc.c  */
#line 378 "SDCC.y"
    { (yyval.asts) = newNode(LE_OP,(yyvsp[(1) - (3)].asts),(yyvsp[(3) - (3)].asts));}
    break;

  case 81:

/* Line 1806 of yacc.c  */
#line 379 "SDCC.y"
    { (yyval.asts) = newNode(GE_OP,(yyvsp[(1) - (3)].asts),(yyvsp[(3) - (3)].asts));}
    break;

  case 83:

/* Line 1806 of yacc.c  */
#line 384 "SDCC.y"
    { (yyval.asts) = newNode(EQ_OP,(yyvsp[(1) - (3)].asts),(yyvsp[(3) - (3)].asts));}
    break;

  case 84:

/* Line 1806 of yacc.c  */
#line 385 "SDCC.y"
    { (yyval.asts) = newNode(NE_OP,(yyvsp[(1) - (3)].asts),(yyvsp[(3) - (3)].asts));}
    break;

  case 86:

/* Line 1806 of yacc.c  */
#line 390 "SDCC.y"
    { (yyval.asts) = newNode('&',(yyvsp[(1) - (3)].asts),(yyvsp[(3) - (3)].asts));}
    break;

  case 88:

/* Line 1806 of yacc.c  */
#line 395 "SDCC.y"
    { (yyval.asts) = newNode('^',(yyvsp[(1) - (3)].asts),(yyvsp[(3) - (3)].asts));}
    break;

  case 90:

/* Line 1806 of yacc.c  */
#line 400 "SDCC.y"
    { (yyval.asts) = newNode('|',(yyvsp[(1) - (3)].asts),(yyvsp[(3) - (3)].asts));}
    break;

  case 92:

/* Line 1806 of yacc.c  */
#line 405 "SDCC.y"
    { seqPointNo++;}
    break;

  case 93:

/* Line 1806 of yacc.c  */
#line 406 "SDCC.y"
    { (yyval.asts) = newNode(AND_OP,(yyvsp[(1) - (4)].asts),(yyvsp[(4) - (4)].asts));}
    break;

  case 95:

/* Line 1806 of yacc.c  */
#line 411 "SDCC.y"
    { seqPointNo++;}
    break;

  case 96:

/* Line 1806 of yacc.c  */
#line 412 "SDCC.y"
    { (yyval.asts) = newNode(OR_OP,(yyvsp[(1) - (4)].asts),(yyvsp[(4) - (4)].asts)); }
    break;

  case 98:

/* Line 1806 of yacc.c  */
#line 417 "SDCC.y"
    { seqPointNo++;}
    break;

  case 99:

/* Line 1806 of yacc.c  */
#line 418 "SDCC.y"
    {
                        (yyval.asts) = newNode(':',(yyvsp[(4) - (6)].asts),(yyvsp[(6) - (6)].asts));
                        (yyval.asts) = newNode('?',(yyvsp[(1) - (6)].asts),(yyval.asts));
                     }
    break;

  case 101:

/* Line 1806 of yacc.c  */
#line 427 "SDCC.y"
    {

                             switch ((yyvsp[(2) - (3)].yyint)) {
                             case '=':
                                     (yyval.asts) = newNode((yyvsp[(2) - (3)].yyint),(yyvsp[(1) - (3)].asts),(yyvsp[(3) - (3)].asts));
                                     break;
                             case MUL_ASSIGN:
                                     (yyval.asts) = createRMW((yyvsp[(1) - (3)].asts), '*', (yyvsp[(3) - (3)].asts));
                                     break;
                             case DIV_ASSIGN:
                                     (yyval.asts) = createRMW((yyvsp[(1) - (3)].asts), '/', (yyvsp[(3) - (3)].asts));
                                     break;
                             case MOD_ASSIGN:
                                     (yyval.asts) = createRMW((yyvsp[(1) - (3)].asts), '%', (yyvsp[(3) - (3)].asts));
                                     break;
                             case ADD_ASSIGN:
                                     (yyval.asts) = createRMW((yyvsp[(1) - (3)].asts), '+', (yyvsp[(3) - (3)].asts));
                                     break;
                             case SUB_ASSIGN:
                                     (yyval.asts) = createRMW((yyvsp[(1) - (3)].asts), '-', (yyvsp[(3) - (3)].asts));
                                     break;
                             case LEFT_ASSIGN:
                                     (yyval.asts) = createRMW((yyvsp[(1) - (3)].asts), LEFT_OP, (yyvsp[(3) - (3)].asts));
                                     break;
                             case RIGHT_ASSIGN:
                                     (yyval.asts) = createRMW((yyvsp[(1) - (3)].asts), RIGHT_OP, (yyvsp[(3) - (3)].asts));
                                     break;
                             case AND_ASSIGN:
                                     (yyval.asts) = createRMW((yyvsp[(1) - (3)].asts), '&', (yyvsp[(3) - (3)].asts));
                                     break;
                             case XOR_ASSIGN:
                                     (yyval.asts) = createRMW((yyvsp[(1) - (3)].asts), '^', (yyvsp[(3) - (3)].asts));
                                     break;
                             case OR_ASSIGN:
                                     (yyval.asts) = createRMW((yyvsp[(1) - (3)].asts), '|', (yyvsp[(3) - (3)].asts));
                                     break;
                             default :
                                     (yyval.asts) = NULL;
                             }

                     }
    break;

  case 102:

/* Line 1806 of yacc.c  */
#line 471 "SDCC.y"
    { (yyval.yyint) = '=';}
    break;

  case 114:

/* Line 1806 of yacc.c  */
#line 486 "SDCC.y"
    { seqPointNo++;}
    break;

  case 115:

/* Line 1806 of yacc.c  */
#line 486 "SDCC.y"
    { (yyval.asts) = newNode(',',(yyvsp[(1) - (4)].asts),(yyvsp[(4) - (4)].asts));}
    break;

  case 117:

/* Line 1806 of yacc.c  */
#line 495 "SDCC.y"
    {
         /* Special case: if incomplete struct/union declared without name, */
         /* make sure an incomplete type for it exists in the current scope */
         if (IS_STRUCT((yyvsp[(1) - (2)].lnk)))
           {
             structdef *sdef = SPEC_STRUCT((yyvsp[(1) - (2)].lnk));
             structdef *osdef;
             osdef = findSymWithBlock (StructTab, sdef->tagsym, currBlockno);
             if (osdef && osdef->block != currBlockno)
               {
                 sdef = newStruct(osdef->tagsym->name);
                 sdef->level = NestLevel;
                 sdef->block = currBlockno;
                 sdef->tagsym = newSymbol (osdef->tagsym->name, NestLevel);
                 addSym (StructTab, sdef, sdef->tag, sdef->level, currBlockno, 0);
                 uselessDecl = FALSE;
               }
           }
         if (uselessDecl)
           werror(W_USELESS_DECL);
         uselessDecl = TRUE;
         (yyval.sym) = NULL;
      }
    break;

  case 118:

/* Line 1806 of yacc.c  */
#line 519 "SDCC.y"
    {
         /* add the specifier list to the id */
         symbol *sym , *sym1;

         for (sym1 = sym = reverseSyms((yyvsp[(2) - (3)].sym));sym != NULL;sym = sym->next) {
             sym_link *lnk = copyLinkChain((yyvsp[(1) - (3)].lnk));
             /* do the pointer stuff */
             pointerTypes(sym->type,lnk);
             addDecl (sym,0,lnk);
         }

         uselessDecl = TRUE;
         (yyval.sym) = sym1;
      }
    break;

  case 119:

/* Line 1806 of yacc.c  */
#line 534 "SDCC.y"
    {
         (yyval.sym) = NULL;
      }
    break;

  case 120:

/* Line 1806 of yacc.c  */
#line 539 "SDCC.y"
    { (yyval.lnk) = finalizeSpec((yyvsp[(1) - (1)].lnk)); }
    break;

  case 121:

/* Line 1806 of yacc.c  */
#line 542 "SDCC.y"
    { (yyval.lnk) = (yyvsp[(1) - (1)].lnk); }
    break;

  case 122:

/* Line 1806 of yacc.c  */
#line 543 "SDCC.y"
    {
     /* if the decl $2 is not a specifier */
     /* find the spec and replace it      */
     (yyval.lnk) = mergeDeclSpec((yyvsp[(1) - (2)].lnk), (yyvsp[(2) - (2)].lnk), "storage_class_specifier declaration_specifiers - skipped");
   }
    break;

  case 123:

/* Line 1806 of yacc.c  */
#line 548 "SDCC.y"
    { (yyval.lnk) = (yyvsp[(1) - (1)].lnk); }
    break;

  case 124:

/* Line 1806 of yacc.c  */
#line 549 "SDCC.y"
    {
     /* if the decl $2 is not a specifier */
     /* find the spec and replace it      */
     (yyval.lnk) = mergeDeclSpec((yyvsp[(1) - (2)].lnk), (yyvsp[(2) - (2)].lnk), "type_specifier declaration_specifiers - skipped");
   }
    break;

  case 125:

/* Line 1806 of yacc.c  */
#line 554 "SDCC.y"
    { (yyval.lnk) = (yyvsp[(1) - (1)].lnk); }
    break;

  case 126:

/* Line 1806 of yacc.c  */
#line 555 "SDCC.y"
    {
     /* if the decl $2 is not a specifier */
     /* find the spec and replace it      */
     (yyval.lnk) = mergeDeclSpec((yyvsp[(1) - (2)].lnk), (yyvsp[(2) - (2)].lnk), "function_specifier declaration_specifiers - skipped");
   }
    break;

  case 127:

/* Line 1806 of yacc.c  */
#line 560 "SDCC.y"
    { (yyval.lnk) = (yyvsp[(1) - (1)].lnk); }
    break;

  case 128:

/* Line 1806 of yacc.c  */
#line 561 "SDCC.y"
    {
     /* if the decl $2 is not a specifier */
     /* find the spec and replace it      */
     (yyval.lnk) = mergeDeclSpec((yyvsp[(1) - (2)].lnk), (yyvsp[(2) - (2)].lnk), "alignment_specifier declaration_specifiers - skipped");
   }
    break;

  case 130:

/* Line 1806 of yacc.c  */
#line 570 "SDCC.y"
    { (yyvsp[(3) - (3)].sym)->next = (yyvsp[(1) - (3)].sym); (yyval.sym) = (yyvsp[(3) - (3)].sym);}
    break;

  case 131:

/* Line 1806 of yacc.c  */
#line 574 "SDCC.y"
    { (yyvsp[(1) - (1)].sym)->ival = NULL; }
    break;

  case 132:

/* Line 1806 of yacc.c  */
#line 575 "SDCC.y"
    { (yyvsp[(1) - (3)].sym)->ival = (yyvsp[(3) - (3)].ilist); seqPointNo++; }
    break;

  case 133:

/* Line 1806 of yacc.c  */
#line 579 "SDCC.y"
    { (yyval.dsgn) = NULL; }
    break;

  case 135:

/* Line 1806 of yacc.c  */
#line 584 "SDCC.y"
    { (yyval.dsgn) = revDesignation((yyvsp[(1) - (2)].dsgn)); }
    break;

  case 137:

/* Line 1806 of yacc.c  */
#line 589 "SDCC.y"
    { (yyvsp[(2) - (2)].dsgn)->next = (yyvsp[(1) - (2)].dsgn); (yyval.dsgn) = (yyvsp[(2) - (2)].dsgn); }
    break;

  case 138:

/* Line 1806 of yacc.c  */
#line 594 "SDCC.y"
    {
            value *tval;
            int elemno;

            tval = constExprValue((yyvsp[(2) - (3)].asts), TRUE);
            /* if it is not a constant then Error  */
            if (!tval || (SPEC_SCLS(tval->etype) != S_LITERAL))
              {
                werror (E_CONST_EXPECTED);
                elemno = 0; /* arbitrary fixup */
              }
            else
              {
                if ((elemno = (int) ulFromVal(tval)) < 0)
                  {
                    werror (E_BAD_DESIGNATOR);
                    elemno = 0; /* arbitrary fixup */
                  }
              }
            (yyval.dsgn) = newDesignation(DESIGNATOR_ARRAY, &elemno);
         }
    break;

  case 139:

/* Line 1806 of yacc.c  */
#line 615 "SDCC.y"
    { (yyval.dsgn) = newDesignation(DESIGNATOR_STRUCT,(yyvsp[(2) - (2)].sym)); }
    break;

  case 140:

/* Line 1806 of yacc.c  */
#line 619 "SDCC.y"
    {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_TYPEDEF((yyval.lnk)) = 1;
               }
    break;

  case 141:

/* Line 1806 of yacc.c  */
#line 623 "SDCC.y"
    {
                  (yyval.lnk) = newLink(SPECIFIER);
                  SPEC_EXTR((yyval.lnk)) = 1;
               }
    break;

  case 142:

/* Line 1806 of yacc.c  */
#line 627 "SDCC.y"
    {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_STAT((yyval.lnk)) = 1;
               }
    break;

  case 143:

/* Line 1806 of yacc.c  */
#line 631 "SDCC.y"
    {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_SCLS((yyval.lnk)) = S_AUTO;
               }
    break;

  case 144:

/* Line 1806 of yacc.c  */
#line 635 "SDCC.y"
    {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_SCLS((yyval.lnk)) = S_REGISTER;
               }
    break;

  case 145:

/* Line 1806 of yacc.c  */
#line 642 "SDCC.y"
    {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_INLINE((yyval.lnk)) = 1;
               }
    break;

  case 146:

/* Line 1806 of yacc.c  */
#line 646 "SDCC.y"
    {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_NORETURN((yyval.lnk)) = 1;
               }
    break;

  case 147:

/* Line 1806 of yacc.c  */
#line 654 "SDCC.y"
    {
                 checkTypeSanity ((yyvsp[(3) - (4)].lnk), "(_Alignas)");
                 (yyval.lnk) = newLink (SPECIFIER);
                 SPEC_ALIGNAS((yyval.lnk)) = 1;
              }
    break;

  case 148:

/* Line 1806 of yacc.c  */
#line 660 "SDCC.y"
    {
                 value *val = constExprValue ((yyvsp[(3) - (4)].asts), TRUE);
                 (yyval.lnk) = newLink (SPECIFIER);
                 SPEC_ALIGNAS((yyval.lnk)) = 0;
                 if (!val)
                   werror (E_CONST_EXPECTED);
                 else if (ulFromVal (val) == 0 || isPowerOf2 (ulFromVal (val)) && ulFromVal (val) <= port->mem.maxextalign)
                   SPEC_ALIGNAS((yyval.lnk)) = ulFromVal(val);
                 else
                   werror (E_ALIGNAS, ulFromVal(val));
              }
    break;

  case 149:

/* Line 1806 of yacc.c  */
#line 674 "SDCC.y"
    { (yyval.yyint) = INTNO_UNSPEC; }
    break;

  case 150:

/* Line 1806 of yacc.c  */
#line 676 "SDCC.y"
    { int intno = (int) ulFromVal(constExprValue((yyvsp[(2) - (2)].asts),TRUE));
          if ((intno >= 0) && (intno <= INTNO_MAX))
            (yyval.yyint) = intno;
          else
            {
              werror(E_INT_BAD_INTNO, intno);
              (yyval.yyint) = INTNO_UNSPEC;
            }
        }
    break;

  case 151:

/* Line 1806 of yacc.c  */
#line 688 "SDCC.y"
    {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_NOUN((yyval.lnk)) = V_BOOL;
                  ignoreTypedefType = 1;
               }
    break;

  case 152:

/* Line 1806 of yacc.c  */
#line 693 "SDCC.y"
    {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_NOUN((yyval.lnk)) = V_CHAR;
                  ignoreTypedefType = 1;
               }
    break;

  case 153:

/* Line 1806 of yacc.c  */
#line 698 "SDCC.y"
    {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_SHORT((yyval.lnk)) = 1;
                  ignoreTypedefType = 1;
               }
    break;

  case 154:

/* Line 1806 of yacc.c  */
#line 703 "SDCC.y"
    {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_NOUN((yyval.lnk)) = V_INT;
                  ignoreTypedefType = 1;
               }
    break;

  case 155:

/* Line 1806 of yacc.c  */
#line 708 "SDCC.y"
    {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_LONG((yyval.lnk)) = 1;
                  ignoreTypedefType = 1;
               }
    break;

  case 156:

/* Line 1806 of yacc.c  */
#line 713 "SDCC.y"
    {
                  (yyval.lnk)=newLink(SPECIFIER);
                  (yyval.lnk)->select.s.b_signed = 1;
                  ignoreTypedefType = 1;
               }
    break;

  case 157:

/* Line 1806 of yacc.c  */
#line 718 "SDCC.y"
    {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_USIGN((yyval.lnk)) = 1;
                  ignoreTypedefType = 1;
               }
    break;

  case 158:

/* Line 1806 of yacc.c  */
#line 723 "SDCC.y"
    {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_NOUN((yyval.lnk)) = V_VOID;
                  ignoreTypedefType = 1;
               }
    break;

  case 159:

/* Line 1806 of yacc.c  */
#line 728 "SDCC.y"
    {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_CONST((yyval.lnk)) = 1;
               }
    break;

  case 160:

/* Line 1806 of yacc.c  */
#line 732 "SDCC.y"
    {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_VOLATILE((yyval.lnk)) = 1;
               }
    break;

  case 161:

/* Line 1806 of yacc.c  */
#line 736 "SDCC.y"
    {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_RESTRICT((yyval.lnk)) = 1;
               }
    break;

  case 162:

/* Line 1806 of yacc.c  */
#line 740 "SDCC.y"
    {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_ADDRSPACE((yyval.lnk)) = findSym (AddrspaceTab, 0, (yyvsp[(1) - (1)].yychar));
               }
    break;

  case 163:

/* Line 1806 of yacc.c  */
#line 744 "SDCC.y"
    {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_NOUN((yyval.lnk)) = V_FLOAT;
                  ignoreTypedefType = 1;
               }
    break;

  case 164:

/* Line 1806 of yacc.c  */
#line 749 "SDCC.y"
    {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_NOUN((yyval.lnk)) = V_FIXED16X16;
                  ignoreTypedefType = 1;
               }
    break;

  case 165:

/* Line 1806 of yacc.c  */
#line 754 "SDCC.y"
    {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_SCLS((yyval.lnk)) = S_XDATA;
               }
    break;

  case 166:

/* Line 1806 of yacc.c  */
#line 758 "SDCC.y"
    {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_SCLS((yyval.lnk)) = S_CODE;
               }
    break;

  case 167:

/* Line 1806 of yacc.c  */
#line 762 "SDCC.y"
    {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_SCLS((yyval.lnk)) = S_EEPROM;
               }
    break;

  case 168:

/* Line 1806 of yacc.c  */
#line 766 "SDCC.y"
    {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_SCLS((yyval.lnk)) = S_DATA;
               }
    break;

  case 169:

/* Line 1806 of yacc.c  */
#line 770 "SDCC.y"
    {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_SCLS((yyval.lnk)) = S_IDATA;
               }
    break;

  case 170:

/* Line 1806 of yacc.c  */
#line 774 "SDCC.y"
    {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_SCLS((yyval.lnk)) = S_PDATA;
               }
    break;

  case 171:

/* Line 1806 of yacc.c  */
#line 778 "SDCC.y"
    {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_NOUN((yyval.lnk)) = V_BIT;
                  SPEC_SCLS((yyval.lnk)) = S_BIT;
                  SPEC_BLEN((yyval.lnk)) = 1;
                  SPEC_BSTR((yyval.lnk)) = 0;
                  ignoreTypedefType = 1;
               }
    break;

  case 172:

/* Line 1806 of yacc.c  */
#line 786 "SDCC.y"
    {
                  (yyval.lnk)=newLink(SPECIFIER);
                  /* add this to the storage class specifier  */
                  SPEC_ABSA((yyval.lnk)) = 1;   /* set the absolute addr flag */
                  /* now get the abs addr from value */
                  SPEC_ADDR((yyval.lnk)) = (unsigned int) ulFromVal(constExprValue((yyvsp[(2) - (2)].asts),TRUE));
               }
    break;

  case 173:

/* Line 1806 of yacc.c  */
#line 793 "SDCC.y"
    {
                                   uselessDecl = FALSE;
                                   (yyval.lnk) = (yyvsp[(1) - (1)].lnk);
                                   ignoreTypedefType = 1;
                                }
    break;

  case 174:

/* Line 1806 of yacc.c  */
#line 798 "SDCC.y"
    {
                           cenum = NULL;
                           uselessDecl = FALSE;
                           ignoreTypedefType = 1;
                           (yyval.lnk) = (yyvsp[(1) - (1)].lnk);
                        }
    break;

  case 175:

/* Line 1806 of yacc.c  */
#line 805 "SDCC.y"
    {
            symbol *sym;
            sym_link *p;
            sym = findSym(TypedefTab,NULL,(yyvsp[(1) - (1)].yychar));
            (yyval.lnk) = p = copyLinkChain(sym ? sym->type : NULL);
            SPEC_TYPEDEF(getSpec(p)) = 0;
            ignoreTypedefType = 1;
         }
    break;

  case 177:

/* Line 1806 of yacc.c  */
#line 817 "SDCC.y"
    {
               (yyval.lnk) = newLink(SPECIFIER);
               SPEC_NOUN((yyval.lnk)) = V_SBIT;
               SPEC_SCLS((yyval.lnk)) = S_SBIT;
               SPEC_BLEN((yyval.lnk)) = 1;
               SPEC_BSTR((yyval.lnk)) = 0;
               ignoreTypedefType = 1;
            }
    break;

  case 179:

/* Line 1806 of yacc.c  */
#line 829 "SDCC.y"
    {
               (yyval.lnk) = newLink(SPECIFIER);
               FUNC_REGBANK((yyval.lnk)) = 0;
               SPEC_NOUN((yyval.lnk))    = V_CHAR;
               SPEC_SCLS((yyval.lnk))    = S_SFR;
               SPEC_USIGN((yyval.lnk))   = 1;
               ignoreTypedefType = 1;
            }
    break;

  case 180:

/* Line 1806 of yacc.c  */
#line 837 "SDCC.y"
    {
               (yyval.lnk) = newLink(SPECIFIER);
               FUNC_REGBANK((yyval.lnk)) = 1;
               SPEC_NOUN((yyval.lnk))    = V_CHAR;
               SPEC_SCLS((yyval.lnk))    = S_SFR;
               SPEC_USIGN((yyval.lnk))   = 1;
               ignoreTypedefType = 1;
            }
    break;

  case 181:

/* Line 1806 of yacc.c  */
#line 848 "SDCC.y"
    {
               (yyval.lnk) = newLink(SPECIFIER);
               FUNC_REGBANK((yyval.lnk)) = 0;
               SPEC_NOUN((yyval.lnk))    = V_INT;
               SPEC_SCLS((yyval.lnk))    = S_SFR;
               SPEC_USIGN((yyval.lnk))   = 1;
               ignoreTypedefType = 1;
            }
    break;

  case 182:

/* Line 1806 of yacc.c  */
#line 859 "SDCC.y"
    {
               (yyval.lnk) = newLink(SPECIFIER);
               FUNC_REGBANK((yyval.lnk)) = 0;
               SPEC_NOUN((yyval.lnk))    = V_INT;
               SPEC_SCLS((yyval.lnk))    = S_SFR;
               SPEC_LONG((yyval.lnk))    = 1;
               SPEC_USIGN((yyval.lnk))   = 1;
               ignoreTypedefType = 1;
            }
    break;

  case 183:

/* Line 1806 of yacc.c  */
#line 872 "SDCC.y"
    {
          structdef *sdef;

          if (! (yyvsp[(2) - (2)].sdef)->tagsym)
            {
              /* no tag given, so new struct def for current scope */
              addSym (StructTab, (yyvsp[(2) - (2)].sdef), (yyvsp[(2) - (2)].sdef)->tag, (yyvsp[(2) - (2)].sdef)->level, currBlockno, 0);
            }
          else
            {
              sdef = findSymWithBlock (StructTab, (yyvsp[(2) - (2)].sdef)->tagsym, currBlockno);
              if (sdef)
                {
                  /* Error if a complete type already defined in this scope */
                  if (sdef->block == currBlockno)
                    {
                      if (sdef->fields)
                        {
                          werror(E_STRUCT_REDEF, (yyvsp[(2) - (2)].sdef)->tag);
                          werrorfl(sdef->tagsym->fileDef, sdef->tagsym->lineDef, E_PREVIOUS_DEF);
                        }
                      else
                        {
                          (yyvsp[(2) - (2)].sdef) = sdef; /* We are completing an incomplete type */
                        }
                    }
                  else
                    {
                      /* There is an existing struct def in an outer scope. */
                      /* Create new struct def for current scope */
                      addSym (StructTab, (yyvsp[(2) - (2)].sdef), (yyvsp[(2) - (2)].sdef)->tag, (yyvsp[(2) - (2)].sdef)->level, currBlockno, 0);
                    }
                }
              else
               {
                 /* There is no existing struct def at all. */
                 /* Create new struct def for current scope */
                 addSym (StructTab, (yyvsp[(2) - (2)].sdef), (yyvsp[(2) - (2)].sdef)->tag, (yyvsp[(2) - (2)].sdef)->level, currBlockno, 0);
               }
            }

          if (!(yyvsp[(2) - (2)].sdef)->type)
            {
              (yyvsp[(2) - (2)].sdef)->type = (yyvsp[(1) - (2)].yyint);
            }
          else
            {
              if ((yyvsp[(2) - (2)].sdef)->type != (yyvsp[(1) - (2)].yyint))
                  werror(E_BAD_TAG, (yyvsp[(2) - (2)].sdef)->tag, (yyvsp[(1) - (2)].yyint)==STRUCT ? "struct" : "union");
            }
        }
    break;

  case 184:

/* Line 1806 of yacc.c  */
#line 924 "SDCC.y"
    {
          structdef *sdef;
          symbol *sym, *dsym;

          // check for errors in structure members
          for (sym=(yyvsp[(5) - (6)].sym); sym; sym=sym->next)
            {
              if (IS_ABSOLUTE(sym->etype))
                {
                  werrorfl(sym->fileDef, sym->lineDef, E_NOT_ALLOWED, "'at'");
                  SPEC_ABSA(sym->etype) = 0;
                }
              if (IS_SPEC(sym->etype) && SPEC_SCLS(sym->etype))
                {
                  werrorfl(sym->fileDef, sym->lineDef, E_NOT_ALLOWED, "storage class");
                  printTypeChainRaw (sym->type, NULL);
                  SPEC_SCLS(sym->etype) = 0;
                }
              for (dsym=sym->next; dsym; dsym=dsym->next)
                {
                  if (*dsym->name && strcmp(sym->name, dsym->name)==0)
                    {
                      werrorfl(sym->fileDef, sym->lineDef, E_DUPLICATE_MEMBER,
                               (yyvsp[(1) - (6)].yyint)==STRUCT ? "struct" : "union", sym->name);
                      werrorfl(dsym->fileDef, dsym->lineDef, E_PREVIOUS_DEF);
                    }
                }
            }

          /* Create a structdef   */
          sdef = (yyvsp[(2) - (6)].sdef);
          sdef->fields = reverseSyms((yyvsp[(5) - (6)].sym));        /* link the fields */
          sdef->size = compStructSize((yyvsp[(1) - (6)].yyint), sdef); /* update size of  */
          promoteAnonStructs ((yyvsp[(1) - (6)].yyint), sdef);

          /* Create the specifier */
          (yyval.lnk) = newLink (SPECIFIER);
          SPEC_NOUN((yyval.lnk)) = V_STRUCT;
          SPEC_STRUCT((yyval.lnk))= sdef;
        }
    break;

  case 185:

/* Line 1806 of yacc.c  */
#line 965 "SDCC.y"
    {
          structdef *sdef;

          sdef = findSymWithBlock (StructTab, (yyvsp[(2) - (2)].sdef)->tagsym, currBlockno);
          if (sdef)
            (yyvsp[(2) - (2)].sdef) = sdef;
          else
            {
              /* new struct def for current scope */
              addSym (StructTab, (yyvsp[(2) - (2)].sdef), (yyvsp[(2) - (2)].sdef)->tag, (yyvsp[(2) - (2)].sdef)->level, currBlockno, 0);
            }
          (yyval.lnk) = newLink(SPECIFIER);
          SPEC_NOUN((yyval.lnk)) = V_STRUCT;
          SPEC_STRUCT((yyval.lnk)) = (yyvsp[(2) - (2)].sdef);

          if (!(yyvsp[(2) - (2)].sdef)->type)
            {
              (yyvsp[(2) - (2)].sdef)->type = (yyvsp[(1) - (2)].yyint);
            }
          else
            {
              if ((yyvsp[(2) - (2)].sdef)->type != (yyvsp[(1) - (2)].yyint))
                  werror(E_BAD_TAG, (yyvsp[(2) - (2)].sdef)->tag, (yyvsp[(1) - (2)].yyint)==STRUCT ? "struct" : "union");
            }
        }
    break;

  case 186:

/* Line 1806 of yacc.c  */
#line 993 "SDCC.y"
    { (yyval.yyint) = STRUCT; ignoreTypedefType = 1; }
    break;

  case 187:

/* Line 1806 of yacc.c  */
#line 994 "SDCC.y"
    { (yyval.yyint) = UNION; ignoreTypedefType = 1; }
    break;

  case 189:

/* Line 1806 of yacc.c  */
#line 999 "SDCC.y"
    {  /* synthesize a name add to structtable */
          ignoreTypedefType = 0;
          (yyval.sdef) = newStruct(genSymName(NestLevel));
          (yyval.sdef)->level = NestLevel;
          (yyval.sdef)->block = currBlockno;
          (yyval.sdef)->tagsym = NULL;
          //addSym (StructTab, $$, $$->tag, $$->level, currBlockno, 0);
        }
    break;

  case 190:

/* Line 1806 of yacc.c  */
#line 1011 "SDCC.y"
    {  /* add name to structure table */
          ignoreTypedefType = 0;
          (yyval.sdef) = newStruct((yyvsp[(1) - (1)].sym)->name);
          (yyval.sdef)->level = NestLevel;
          (yyval.sdef)->block = currBlockno;
          (yyval.sdef)->tagsym = (yyvsp[(1) - (1)].sym);
          //$$ = findSymWithBlock (StructTab, $1, currBlockno);
          //if (! $$ )
          //  {
          //    $$ = newStruct($1->name);
          //    $$->level = NestLevel;
          //    $$->tagsym = $1;
          //    //addSym (StructTab, $$, $$->tag, $$->level, currBlockno, 0);
          //  }
        }
    break;

  case 192:

/* Line 1806 of yacc.c  */
#line 1031 "SDCC.y"
    {
          symbol *sym = (yyvsp[(2) - (2)].sym);

          /* go to the end of the chain */
          while (sym->next) sym = sym->next;
          sym->next = (yyvsp[(1) - (2)].sym);

           (yyval.sym) = (yyvsp[(2) - (2)].sym);
        }
    break;

  case 193:

/* Line 1806 of yacc.c  */
#line 1044 "SDCC.y"
    {
          /* add this type to all the symbols */
          symbol *sym;
          for ( sym = (yyvsp[(2) - (3)].sym); sym != NULL; sym = sym->next )
            {
              sym_link *btype = copyLinkChain((yyvsp[(1) - (3)].lnk));

              pointerTypes(sym->type, btype);
              if (!sym->type)
                {
                  sym->type = btype;
                  sym->etype = getSpec(sym->type);
                }
              else
                  addDecl (sym, 0, btype);
              /* make sure the type is complete and sane */
              checkTypeSanity(sym->etype, sym->name);
            }
          ignoreTypedefType = 0;
          (yyval.sym) = (yyvsp[(2) - (3)].sym);
        }
    break;

  case 195:

/* Line 1806 of yacc.c  */
#line 1070 "SDCC.y"
    {
          (yyvsp[(3) - (3)].sym)->next  = (yyvsp[(1) - (3)].sym);
          (yyval.sym) = (yyvsp[(3) - (3)].sym);
        }
    break;

  case 197:

/* Line 1806 of yacc.c  */
#line 1079 "SDCC.y"
    {
          unsigned int bitsize;
          (yyval.sym) = newSymbol (genSymName(NestLevel), NestLevel);
          bitsize = (unsigned int) ulFromVal(constExprValue((yyvsp[(2) - (2)].asts), TRUE));
          if (bitsize > (port->s.int_size * 8))
            {
              bitsize = port->s.int_size * 8;
              werror(E_BITFLD_SIZE, bitsize);
            }
          if (!bitsize)
              bitsize = BITVAR_PAD;
          (yyval.sym)->bitVar = bitsize;
          (yyval.sym)->bitUnnamed = 1;
        }
    break;

  case 198:

/* Line 1806 of yacc.c  */
#line 1094 "SDCC.y"
    {
          unsigned int bitsize;
          bitsize = (unsigned int) ulFromVal(constExprValue((yyvsp[(3) - (3)].asts), TRUE));
          if (bitsize > (port->s.int_size * 8))
            {
              bitsize = port->s.int_size * 8;
              werror(E_BITFLD_SIZE, bitsize);
            }
          if (!bitsize)
            {
              (yyval.sym) = newSymbol (genSymName(NestLevel), NestLevel);
              (yyval.sym)->bitVar = BITVAR_PAD;
              werror(W_BITFLD_NAMED);
            }
          else
              (yyvsp[(1) - (3)].sym)->bitVar = bitsize;
        }
    break;

  case 199:

/* Line 1806 of yacc.c  */
#line 1111 "SDCC.y"
    { (yyval.sym) = newSymbol ("", NestLevel); }
    break;

  case 200:

/* Line 1806 of yacc.c  */
#line 1116 "SDCC.y"
    {
          (yyval.lnk) = newEnumType ((yyvsp[(3) - (4)].sym));
          SPEC_SCLS(getSpec((yyval.lnk))) = 0;
        }
    break;

  case 201:

/* Line 1806 of yacc.c  */
#line 1121 "SDCC.y"
    {
          symbol *csym;
          sym_link *enumtype;

          csym = findSymWithLevel(enumTab, (yyvsp[(2) - (5)].sym));
          if ((csym && csym->level == (yyvsp[(2) - (5)].sym)->level))
            {
              werrorfl((yyvsp[(2) - (5)].sym)->fileDef, (yyvsp[(2) - (5)].sym)->lineDef, E_DUPLICATE_TYPEDEF, csym->name);
              werrorfl(csym->fileDef, csym->lineDef, E_PREVIOUS_DEF);
            }

          enumtype = newEnumType ((yyvsp[(4) - (5)].sym));
          SPEC_SCLS(getSpec(enumtype)) = 0;
          (yyvsp[(2) - (5)].sym)->type = enumtype;

          /* add this to the enumerator table */
          if (!csym)
              addSym (enumTab, (yyvsp[(2) - (5)].sym), (yyvsp[(2) - (5)].sym)->name, (yyvsp[(2) - (5)].sym)->level, (yyvsp[(2) - (5)].sym)->block, 0);
          (yyval.lnk) = copyLinkChain(enumtype);
        }
    break;

  case 202:

/* Line 1806 of yacc.c  */
#line 1142 "SDCC.y"
    {
          symbol *csym;

          /* check the enumerator table */
          if ((csym = findSymWithLevel(enumTab, (yyvsp[(2) - (2)].sym))))
              (yyval.lnk) = copyLinkChain(csym->type);
          else
            {
              (yyval.lnk) = newLink(SPECIFIER);
              SPEC_NOUN((yyval.lnk)) = V_INT;
            }
        }
    break;

  case 205:

/* Line 1806 of yacc.c  */
#line 1160 "SDCC.y"
    {
          (yyvsp[(3) - (3)].sym)->next = (yyvsp[(1) - (3)].sym);
          (yyval.sym) = (yyvsp[(3) - (3)].sym);
        }
    break;

  case 206:

/* Line 1806 of yacc.c  */
#line 1168 "SDCC.y"
    {
          symbol *sym;

          // check if the symbol at the same level already exists
          if ((sym = findSymWithLevel (SymbolTab, (yyvsp[(1) - (2)].sym))) && sym->level == (yyvsp[(1) - (2)].sym)->level)
            {
              werrorfl ((yyvsp[(1) - (2)].sym)->fileDef, (yyvsp[(1) - (2)].sym)->lineDef, E_DUPLICATE_MEMBER, "enum", (yyvsp[(1) - (2)].sym)->name);
              werrorfl (sym->fileDef, sym->lineDef, E_PREVIOUS_DEF);
            }
          (yyvsp[(1) - (2)].sym)->type = copyLinkChain ((yyvsp[(2) - (2)].val)->type);
          (yyvsp[(1) - (2)].sym)->etype = getSpec ((yyvsp[(1) - (2)].sym)->type);
          SPEC_ENUM ((yyvsp[(1) - (2)].sym)->etype) = 1;
          (yyval.sym) = (yyvsp[(1) - (2)].sym);
          // do this now, so we can use it for the next enums in the list
          addSymChain (&(yyvsp[(1) - (2)].sym));
        }
    break;

  case 207:

/* Line 1806 of yacc.c  */
#line 1188 "SDCC.y"
    {
          value *val;

          val = constExprValue((yyvsp[(2) - (2)].asts), TRUE);
          if (!IS_INT(val->type) && !IS_CHAR(val->type) && !IS_BOOL(val->type))
            {
              werror(E_ENUM_NON_INTEGER);
              SNPRINTF(lbuff, sizeof(lbuff), "%d", (int) ulFromVal(val));
              val = constVal(lbuff);
            }
          (yyval.val) = cenum = val;
        }
    break;

  case 208:

/* Line 1806 of yacc.c  */
#line 1200 "SDCC.y"
    {
          if (cenum)
            {
              SNPRINTF(lbuff, sizeof(lbuff), "%d", (int) ulFromVal(cenum)+1);
              (yyval.val) = cenum = constVal(lbuff);
            }
          else
            {
              (yyval.val) = cenum = constCharVal(0);
            }
        }
    break;

  case 209:

/* Line 1806 of yacc.c  */
#line 1214 "SDCC.y"
    { (yyval.sym) = (yyvsp[(1) - (1)].sym); }
    break;

  case 210:

/* Line 1806 of yacc.c  */
#line 1216 "SDCC.y"
    {
             addDecl ((yyvsp[(2) - (2)].sym),0,reverseLink((yyvsp[(1) - (2)].lnk)));
             (yyval.sym) = (yyvsp[(2) - (2)].sym);
         }
    break;

  case 211:

/* Line 1806 of yacc.c  */
#line 1223 "SDCC.y"
    { (yyval.sym) = (yyvsp[(1) - (1)].sym); }
    break;

  case 212:

/* Line 1806 of yacc.c  */
#line 1224 "SDCC.y"
    { (yyval.sym) = (yyvsp[(1) - (1)].sym); }
    break;

  case 213:

/* Line 1806 of yacc.c  */
#line 1228 "SDCC.y"
    { (yyval.sym) = (yyvsp[(1) - (1)].sym); }
    break;

  case 214:

/* Line 1806 of yacc.c  */
#line 1230 "SDCC.y"
    {
             addDecl ((yyvsp[(2) - (2)].sym),0,reverseLink((yyvsp[(1) - (2)].lnk)));
             (yyval.sym) = (yyvsp[(2) - (2)].sym);
         }
    break;

  case 215:

/* Line 1806 of yacc.c  */
#line 1237 "SDCC.y"
    { (yyval.sym) = (yyvsp[(1) - (1)].sym); }
    break;

  case 216:

/* Line 1806 of yacc.c  */
#line 1238 "SDCC.y"
    {
           // copy the functionAttributes (not the args and hasVargs !!)
           struct value *args;
           unsigned hasVargs;
           sym_link *funcType=(yyvsp[(1) - (2)].sym)->type;

           while (funcType && !IS_FUNC(funcType))
             funcType = funcType->next;

           if (!funcType)
             werror (E_FUNC_ATTR);
           else
             {
               args=FUNC_ARGS(funcType);
               hasVargs=FUNC_HASVARARGS(funcType);

               memcpy (&funcType->funcAttrs, &(yyvsp[(2) - (2)].lnk)->funcAttrs,
                   sizeof((yyvsp[(2) - (2)].lnk)->funcAttrs));

               FUNC_ARGS(funcType)=args;
               FUNC_HASVARARGS(funcType)=hasVargs;

               // just to be sure
               memset (&(yyvsp[(2) - (2)].lnk)->funcAttrs, 0,
                   sizeof((yyvsp[(2) - (2)].lnk)->funcAttrs));

               addDecl ((yyvsp[(1) - (2)].sym),0,(yyvsp[(2) - (2)].lnk));
             }
   }
    break;

  case 218:

/* Line 1806 of yacc.c  */
#line 1271 "SDCC.y"
    { (yyval.sym) = (yyvsp[(2) - (3)].sym); }
    break;

  case 219:

/* Line 1806 of yacc.c  */
#line 1273 "SDCC.y"
    {
            sym_link   *p;

            p = newLink (DECLARATOR);
            DCL_TYPE(p) = ARRAY;
            DCL_ELEM(p) = 0;
            addDecl((yyvsp[(1) - (3)].sym),0,p);
         }
    break;

  case 220:

/* Line 1806 of yacc.c  */
#line 1282 "SDCC.y"
    {
            sym_link *p;
            value *tval;
            int size;

            tval = constExprValue((yyvsp[(3) - (4)].asts), TRUE);
            /* if it is not a constant then Error  */
            p = newLink (DECLARATOR);
            DCL_TYPE(p) = ARRAY;

            if (!tval || (SPEC_SCLS(tval->etype) != S_LITERAL))
              {
                werror(E_CONST_EXPECTED);
                /* Assume a single item array to limit the cascade */
                /* of additional errors. */
                size = 1;
              }
            else
              {
                if ((size = (int) ulFromVal(tval)) < 0)
                  {
                    werror(E_NEGATIVE_ARRAY_SIZE, (yyvsp[(1) - (4)].sym)->name);
                    size = 1;
                  }
              }
            DCL_ELEM(p) = size;
            addDecl((yyvsp[(1) - (4)].sym), 0, p);
         }
    break;

  case 221:

/* Line 1806 of yacc.c  */
#line 1314 "SDCC.y"
    {
          addDecl ((yyvsp[(1) - (3)].sym), FUNCTION, NULL);
        }
    break;

  case 222:

/* Line 1806 of yacc.c  */
#line 1318 "SDCC.y"
    {
          NestLevel++;
          STACK_PUSH(blockNum, currBlockno);
          btree_add_child(currBlockno, ++blockNo);
          currBlockno = blockNo;
          seqPointNo++; /* not a true sequence point, but helps resolve scope */
        }
    break;

  case 223:

/* Line 1806 of yacc.c  */
#line 1326 "SDCC.y"
    {
          sym_link *funcType;

          addDecl ((yyvsp[(1) - (5)].sym), FUNCTION, NULL);

          funcType = (yyvsp[(1) - (5)].sym)->type;
          while (funcType && !IS_FUNC(funcType))
              funcType = funcType->next;

          assert (funcType);

          FUNC_HASVARARGS(funcType) = IS_VARG((yyvsp[(4) - (5)].val));
          FUNC_ARGS(funcType) = reverseVal((yyvsp[(4) - (5)].val));

          /* nest level was incremented to take care of the parms  */
          NestLevel--;
          currBlockno = STACK_POP(blockNum);
          seqPointNo++; /* not a true sequence point, but helps resolve scope */

          // if this was a pointer (to a function)
          if (!IS_FUNC((yyvsp[(1) - (5)].sym)->type))
              cleanUpLevel(SymbolTab, NestLevel + 1);

          (yyval.sym) = (yyvsp[(1) - (5)].sym);
        }
    break;

  case 224:

/* Line 1806 of yacc.c  */
#line 1352 "SDCC.y"
    {
          werror(E_OLD_STYLE,(yyvsp[(1) - (4)].sym)->name);
          /* assume it returns an int */
          (yyvsp[(1) - (4)].sym)->type = (yyvsp[(1) - (4)].sym)->etype = newIntLink();
          (yyval.sym) = (yyvsp[(1) - (4)].sym);
        }
    break;

  case 225:

/* Line 1806 of yacc.c  */
#line 1361 "SDCC.y"
    { (yyval.lnk) = (yyvsp[(1) - (1)].lnk);}
    break;

  case 226:

/* Line 1806 of yacc.c  */
#line 1363 "SDCC.y"
    {
             (yyval.lnk) = (yyvsp[(1) - (2)].lnk);
             if (IS_SPEC((yyvsp[(2) - (2)].lnk))) {
                 DCL_TSPEC((yyvsp[(1) - (2)].lnk)) = (yyvsp[(2) - (2)].lnk);
                 DCL_PTR_CONST((yyvsp[(1) - (2)].lnk)) = SPEC_CONST((yyvsp[(2) - (2)].lnk));
                 DCL_PTR_VOLATILE((yyvsp[(1) - (2)].lnk)) = SPEC_VOLATILE((yyvsp[(2) - (2)].lnk));
                 DCL_PTR_RESTRICT((yyvsp[(1) - (2)].lnk)) = SPEC_RESTRICT((yyvsp[(2) - (2)].lnk));
                 DCL_PTR_ADDRSPACE((yyvsp[(1) - (2)].lnk)) = SPEC_ADDRSPACE((yyvsp[(2) - (2)].lnk));
             }
             else
                 werror (W_PTR_TYPE_INVALID);
         }
    break;

  case 227:

/* Line 1806 of yacc.c  */
#line 1376 "SDCC.y"
    {
             (yyval.lnk) = (yyvsp[(1) - (2)].lnk);
             (yyval.lnk)->next = (yyvsp[(2) - (2)].lnk);
             DCL_TYPE((yyvsp[(2) - (2)].lnk))=port->unqualified_pointer;
         }
    break;

  case 228:

/* Line 1806 of yacc.c  */
#line 1382 "SDCC.y"
    {
             (yyval.lnk) = (yyvsp[(1) - (3)].lnk);
             if (IS_SPEC((yyvsp[(2) - (3)].lnk)) && DCL_TYPE((yyvsp[(3) - (3)].lnk)) == UPOINTER) {
                 DCL_PTR_CONST((yyvsp[(1) - (3)].lnk)) = SPEC_CONST((yyvsp[(2) - (3)].lnk));
                 DCL_PTR_VOLATILE((yyvsp[(1) - (3)].lnk)) = SPEC_VOLATILE((yyvsp[(2) - (3)].lnk));
                 DCL_PTR_RESTRICT((yyvsp[(1) - (3)].lnk)) = SPEC_RESTRICT((yyvsp[(2) - (3)].lnk));
                 DCL_PTR_ADDRSPACE((yyvsp[(1) - (3)].lnk)) = SPEC_ADDRSPACE((yyvsp[(2) - (3)].lnk));
                 switch (SPEC_SCLS((yyvsp[(2) - (3)].lnk))) {
                 case S_XDATA:
                     DCL_TYPE((yyvsp[(3) - (3)].lnk)) = FPOINTER;
                     break;
                 case S_IDATA:
                     DCL_TYPE((yyvsp[(3) - (3)].lnk)) = IPOINTER;
                     break;
                 case S_PDATA:
                     DCL_TYPE((yyvsp[(3) - (3)].lnk)) = PPOINTER;
                     break;
                 case S_DATA:
                     DCL_TYPE((yyvsp[(3) - (3)].lnk)) = POINTER;
                     break;
                 case S_CODE:
                     DCL_TYPE((yyvsp[(3) - (3)].lnk)) = CPOINTER;
                     break;
                 case S_EEPROM:
                     DCL_TYPE((yyvsp[(3) - (3)].lnk)) = EEPPOINTER;
                     break;
                 default:
                   // this could be just "constant"
                   // werror(W_PTR_TYPE_INVALID);
                     ;
                 }
             }
             else
                 werror (W_PTR_TYPE_INVALID);
             (yyval.lnk)->next = (yyvsp[(3) - (3)].lnk);
         }
    break;

  case 229:

/* Line 1806 of yacc.c  */
#line 1422 "SDCC.y"
    {
        (yyval.lnk) = newLink(DECLARATOR);
        DCL_TYPE((yyval.lnk))=UPOINTER;
      }
    break;

  case 230:

/* Line 1806 of yacc.c  */
#line 1428 "SDCC.y"
    { (yyval.lnk) = finalizeSpec((yyvsp[(1) - (1)].lnk)); }
    break;

  case 232:

/* Line 1806 of yacc.c  */
#line 1433 "SDCC.y"
    {
     /* if the decl $2 is not a specifier */
     /* find the spec and replace it      */
     (yyval.lnk) = mergeDeclSpec((yyvsp[(1) - (2)].lnk), (yyvsp[(2) - (2)].lnk), "type_specifier_list type_specifier skipped");
   }
    break;

  case 234:

/* Line 1806 of yacc.c  */
#line 1443 "SDCC.y"
    {
           (yyvsp[(3) - (3)].sym)->next = (yyvsp[(1) - (3)].sym);
           (yyval.sym) = (yyvsp[(3) - (3)].sym);
         }
    break;

  case 236:

/* Line 1806 of yacc.c  */
#line 1451 "SDCC.y"
    { (yyvsp[(1) - (3)].val)->vArgs = 1;}
    break;

  case 238:

/* Line 1806 of yacc.c  */
#line 1457 "SDCC.y"
    {
            (yyvsp[(3) - (3)].val)->next = (yyvsp[(1) - (3)].val);
            (yyval.val) = (yyvsp[(3) - (3)].val);
         }
    break;

  case 239:

/* Line 1806 of yacc.c  */
#line 1465 "SDCC.y"
    {
          symbol *loop;

          if (IS_SPEC ((yyvsp[(1) - (2)].lnk)) && !IS_VALID_PARAMETER_STORAGE_CLASS_SPEC ((yyvsp[(1) - (2)].lnk)))
            {
              werror (E_STORAGE_CLASS_FOR_PARAMETER, (yyvsp[(2) - (2)].sym)->name);
            }
          pointerTypes ((yyvsp[(2) - (2)].sym)->type, (yyvsp[(1) - (2)].lnk));
          addDecl ((yyvsp[(2) - (2)].sym), 0, (yyvsp[(1) - (2)].lnk));
          for (loop = (yyvsp[(2) - (2)].sym); loop; loop->_isparm = 1, loop = loop->next)
            ;
          (yyval.val) = symbolVal ((yyvsp[(2) - (2)].sym));
          ignoreTypedefType = 0;
        }
    break;

  case 240:

/* Line 1806 of yacc.c  */
#line 1480 "SDCC.y"
    {
          (yyval.val) = newValue ();
          (yyval.val)->type = (yyvsp[(1) - (1)].lnk);
          (yyval.val)->etype = getSpec ((yyval.val)->type);
          ignoreTypedefType = 0;
         }
    break;

  case 241:

/* Line 1806 of yacc.c  */
#line 1490 "SDCC.y"
    {
          if (IS_SPEC ((yyvsp[(1) - (1)].lnk)) && !IS_VALID_PARAMETER_STORAGE_CLASS_SPEC ((yyvsp[(1) - (1)].lnk)))
            {
              werror (E_STORAGE_CLASS_FOR_PARAMETER, "type name");
            }
          (yyval.lnk) = (yyvsp[(1) - (1)].lnk); ignoreTypedefType = 0;
        }
    break;

  case 242:

/* Line 1806 of yacc.c  */
#line 1498 "SDCC.y"
    {
          /* go to the end of the list */
          sym_link *p;

          if (IS_SPEC ((yyvsp[(1) - (2)].lnk)) && !IS_VALID_PARAMETER_STORAGE_CLASS_SPEC ((yyvsp[(1) - (2)].lnk)))
            {
              werror (E_STORAGE_CLASS_FOR_PARAMETER, "type name");
            }
          pointerTypes ((yyvsp[(2) - (2)].lnk),(yyvsp[(1) - (2)].lnk));
          for (p = (yyvsp[(2) - (2)].lnk); p && p->next; p = p->next)
            ;
          if (!p)
            {
              werror(E_SYNTAX_ERROR, yytext);
            }
          else
            {
              p->next = (yyvsp[(1) - (2)].lnk);
            }
          (yyval.lnk) = (yyvsp[(2) - (2)].lnk);
          ignoreTypedefType = 0;
        }
    break;

  case 243:

/* Line 1806 of yacc.c  */
#line 1523 "SDCC.y"
    { (yyval.lnk) = reverseLink((yyvsp[(1) - (1)].lnk)); }
    break;

  case 245:

/* Line 1806 of yacc.c  */
#line 1525 "SDCC.y"
    { (yyvsp[(1) - (2)].lnk) = reverseLink((yyvsp[(1) - (2)].lnk)); (yyvsp[(1) - (2)].lnk)->next = (yyvsp[(2) - (2)].lnk); (yyval.lnk) = (yyvsp[(1) - (2)].lnk);
          if (IS_PTR((yyvsp[(1) - (2)].lnk)) && IS_FUNC((yyvsp[(2) - (2)].lnk)))
            DCL_TYPE((yyvsp[(1) - (2)].lnk)) = CPOINTER;
        }
    break;

  case 246:

/* Line 1806 of yacc.c  */
#line 1532 "SDCC.y"
    { (yyval.lnk) = (yyvsp[(2) - (3)].lnk); }
    break;

  case 247:

/* Line 1806 of yacc.c  */
#line 1533 "SDCC.y"
    {
                                       (yyval.lnk) = newLink (DECLARATOR);
                                       DCL_TYPE((yyval.lnk)) = ARRAY;
                                       DCL_ELEM((yyval.lnk)) = 0;
                                    }
    break;

  case 248:

/* Line 1806 of yacc.c  */
#line 1538 "SDCC.y"
    {
                                       value *val;
                                       (yyval.lnk) = newLink (DECLARATOR);
                                       DCL_TYPE((yyval.lnk)) = ARRAY;
                                       DCL_ELEM((yyval.lnk)) = (int) ulFromVal(val = constExprValue((yyvsp[(2) - (3)].asts),TRUE));
                                    }
    break;

  case 249:

/* Line 1806 of yacc.c  */
#line 1544 "SDCC.y"
    {
                                       (yyval.lnk) = newLink (DECLARATOR);
                                       DCL_TYPE((yyval.lnk)) = ARRAY;
                                       DCL_ELEM((yyval.lnk)) = 0;
                                       (yyval.lnk)->next = (yyvsp[(1) - (3)].lnk);
                                    }
    break;

  case 250:

/* Line 1806 of yacc.c  */
#line 1551 "SDCC.y"
    {
                                       value *val;
                                       (yyval.lnk) = newLink (DECLARATOR);
                                       DCL_TYPE((yyval.lnk)) = ARRAY;
                                       DCL_ELEM((yyval.lnk)) = (int) ulFromVal(val = constExprValue((yyvsp[(3) - (4)].asts),TRUE));
                                       (yyval.lnk)->next = (yyvsp[(1) - (4)].lnk);
                                    }
    break;

  case 251:

/* Line 1806 of yacc.c  */
#line 1558 "SDCC.y"
    { (yyval.lnk) = NULL;}
    break;

  case 252:

/* Line 1806 of yacc.c  */
#line 1559 "SDCC.y"
    { (yyval.lnk) = NULL;}
    break;

  case 253:

/* Line 1806 of yacc.c  */
#line 1560 "SDCC.y"
    {
     // $1 must be a pointer to a function
     sym_link *p=newLink(DECLARATOR);
     DCL_TYPE(p) = FUNCTION;
     if (!(yyvsp[(1) - (3)].lnk)) {
       // ((void (code *) ()) 0) ()
       (yyvsp[(1) - (3)].lnk)=newLink(DECLARATOR);
       DCL_TYPE((yyvsp[(1) - (3)].lnk))=CPOINTER;
       (yyval.lnk) = (yyvsp[(1) - (3)].lnk);
     }
     (yyvsp[(1) - (3)].lnk)->next=p;
   }
    break;

  case 254:

/* Line 1806 of yacc.c  */
#line 1573 "SDCC.y"
    {
          NestLevel++;
          STACK_PUSH(blockNum, currBlockno);
          btree_add_child(currBlockno, ++blockNo);
          currBlockno = blockNo;
        }
    break;

  case 255:

/* Line 1806 of yacc.c  */
#line 1580 "SDCC.y"
    {
          sym_link *p = newLink(DECLARATOR);
          DCL_TYPE(p) = FUNCTION;

          FUNC_HASVARARGS(p) = IS_VARG((yyvsp[(4) - (5)].val));
          FUNC_ARGS(p) = reverseVal((yyvsp[(4) - (5)].val));

          /* nest level was incremented to take care of the parms  */
          NestLevel--;
          currBlockno = STACK_POP(blockNum);
          if (!(yyvsp[(1) - (5)].lnk))
            {
              /* ((void (code *) (void)) 0) () */
              (yyvsp[(1) - (5)].lnk) = newLink(DECLARATOR);
              DCL_TYPE((yyvsp[(1) - (5)].lnk)) = CPOINTER;
              (yyval.lnk) = (yyvsp[(1) - (5)].lnk);
            }
          (yyvsp[(1) - (5)].lnk)->next = p;
        }
    break;

  case 256:

/* Line 1806 of yacc.c  */
#line 1602 "SDCC.y"
    { (yyval.ilist) = newiList(INIT_NODE,(yyvsp[(1) - (1)].asts)); }
    break;

  case 257:

/* Line 1806 of yacc.c  */
#line 1603 "SDCC.y"
    { (yyval.ilist) = newiList(INIT_DEEP,revinit((yyvsp[(2) - (3)].ilist))); }
    break;

  case 258:

/* Line 1806 of yacc.c  */
#line 1604 "SDCC.y"
    { (yyval.ilist) = newiList(INIT_DEEP,revinit((yyvsp[(2) - (4)].ilist))); }
    break;

  case 259:

/* Line 1806 of yacc.c  */
#line 1608 "SDCC.y"
    { (yyvsp[(2) - (2)].ilist)->designation = (yyvsp[(1) - (2)].dsgn); (yyval.ilist) = (yyvsp[(2) - (2)].ilist); }
    break;

  case 260:

/* Line 1806 of yacc.c  */
#line 1610 "SDCC.y"
    {
                                       (yyvsp[(4) - (4)].ilist)->designation = (yyvsp[(3) - (4)].dsgn);
                                       (yyvsp[(4) - (4)].ilist)->next = (yyvsp[(1) - (4)].ilist);
                                       (yyval.ilist) = (yyvsp[(4) - (4)].ilist);
                                    }
    break;

  case 261:

/* Line 1806 of yacc.c  */
#line 1619 "SDCC.y"
    {
                                       value *val = constExprValue ((yyvsp[(3) - (6)].asts), TRUE);
                                       if (!val)
                                         werror (E_CONST_EXPECTED);
                                       else if (!ulFromVal(val))
                                         werror (W_STATIC_ASSERTION, (yyvsp[(5) - (6)].yystr));
                                    }
    break;

  case 270:

/* Line 1806 of yacc.c  */
#line 1640 "SDCC.y"
    {
                   inCritical++;
                   STACK_PUSH(continueStack,NULL);
                   STACK_PUSH(breakStack,NULL);
                   (yyval.sym) = NULL;
                }
    break;

  case 271:

/* Line 1806 of yacc.c  */
#line 1649 "SDCC.y"
    {
                   STACK_POP(breakStack);
                   STACK_POP(continueStack);
                   inCritical--;
                   (yyval.asts) = newNode(CRITICAL,(yyvsp[(2) - (2)].asts),NULL);
                }
    break;

  case 272:

/* Line 1806 of yacc.c  */
#line 1658 "SDCC.y"
    { (yyval.asts) = (yyvsp[(1) - (2)].asts); (yyvsp[(1) - (2)].asts)->right = (yyvsp[(2) - (2)].asts); }
    break;

  case 273:

/* Line 1806 of yacc.c  */
#line 1660 "SDCC.y"
    { /* Support a label without a statement at the end of a */
       /* compound statement as a SDCC extension. Include the */
       /* closing brace as part of the rule to avoid an */
       /* unacceptably large number of shift/reduce conflicts */
       /* and then reinsert it to be parsed a second time. */
       (yyval.asts) = (yyvsp[(1) - (2)].asts);
       yychar = '}';
     }
    break;

  case 274:

/* Line 1806 of yacc.c  */
#line 1671 "SDCC.y"
    {  (yyval.asts) = createLabel((yyvsp[(1) - (2)].sym),NULL);
                                          (yyvsp[(1) - (2)].sym)->isitmp = 0;  }
    break;

  case 275:

/* Line 1806 of yacc.c  */
#line 1674 "SDCC.y"
    {
       if (STACK_EMPTY(swStk))
         (yyval.asts) = createCase(NULL,(yyvsp[(2) - (3)].asts),NULL);
       else
         (yyval.asts) = createCase(STACK_PEEK(swStk),(yyvsp[(2) - (3)].asts),NULL);
     }
    break;

  case 276:

/* Line 1806 of yacc.c  */
#line 1680 "SDCC.y"
    { (yyval.asts) = newNode(DEFAULT,NULL,NULL); }
    break;

  case 277:

/* Line 1806 of yacc.c  */
#line 1681 "SDCC.y"
    {
       if (STACK_EMPTY(swStk))
         (yyval.asts) = createDefault(NULL,(yyvsp[(2) - (3)].asts),NULL);
       else
         (yyval.asts) = createDefault(STACK_PEEK(swStk),(yyvsp[(2) - (3)].asts),NULL);
     }
    break;

  case 278:

/* Line 1806 of yacc.c  */
#line 1691 "SDCC.y"
    {
          NestLevel++;
          STACK_PUSH(blockNum, currBlockno);
          btree_add_child(currBlockno, ++blockNo);
          currBlockno = blockNo;
          ignoreTypedefType = 0;
        }
    break;

  case 279:

/* Line 1806 of yacc.c  */
#line 1702 "SDCC.y"
    {
          NestLevel--;
          currBlockno = STACK_POP(blockNum);
        }
    break;

  case 280:

/* Line 1806 of yacc.c  */
#line 1709 "SDCC.y"
    { (yyval.asts) = createBlock(NULL, NULL); }
    break;

  case 281:

/* Line 1806 of yacc.c  */
#line 1710 "SDCC.y"
    { (yyval.asts) = createBlock(NULL, (yyvsp[(2) - (3)].asts)); }
    break;

  case 282:

/* Line 1806 of yacc.c  */
#line 1712 "SDCC.y"
    {
       (yyval.asts) = createBlock((yyvsp[(2) - (3)].sym), NULL); 
       cleanUpLevel(StructTab, NestLevel + 1);
     }
    break;

  case 283:

/* Line 1806 of yacc.c  */
#line 1719 "SDCC.y"
    {
       (yyval.asts) = createBlock((yyvsp[(2) - (4)].sym), (yyvsp[(3) - (4)].asts)); 
       cleanUpLevel(StructTab, NestLevel + 1);
     }
    break;

  case 284:

/* Line 1806 of yacc.c  */
#line 1723 "SDCC.y"
    { (yyval.asts) = NULL; }
    break;

  case 285:

/* Line 1806 of yacc.c  */
#line 1728 "SDCC.y"
    {
       /* if this is typedef declare it immediately */
       if ( (yyvsp[(1) - (1)].sym) && IS_TYPEDEF((yyvsp[(1) - (1)].sym)->etype)) {
         allocVariables ((yyvsp[(1) - (1)].sym));
         (yyval.sym) = NULL;
       }
       else
         (yyval.sym) = (yyvsp[(1) - (1)].sym);
       ignoreTypedefType = 0;
       addSymChain(&(yyvsp[(1) - (1)].sym));
     }
    break;

  case 286:

/* Line 1806 of yacc.c  */
#line 1741 "SDCC.y"
    {
       symbol   *sym;

       /* if this is a typedef */
       if ((yyvsp[(2) - (2)].sym) && IS_TYPEDEF((yyvsp[(2) - (2)].sym)->etype)) {
         allocVariables ((yyvsp[(2) - (2)].sym));
         (yyval.sym) = (yyvsp[(1) - (2)].sym);
       }
       else {
         /* get to the end of the previous decl */
         if ( (yyvsp[(1) - (2)].sym) ) {
           (yyval.sym) = sym = (yyvsp[(1) - (2)].sym);
           while (sym->next)
             sym = sym->next;
           sym->next = (yyvsp[(2) - (2)].sym);
         }
         else
           (yyval.sym) = (yyvsp[(2) - (2)].sym);
       }
       ignoreTypedefType = 0;
       addSymChain(&(yyvsp[(2) - (2)].sym));
     }
    break;

  case 288:

/* Line 1806 of yacc.c  */
#line 1767 "SDCC.y"
    {  (yyval.asts) = newNode(NULLOP,(yyvsp[(1) - (2)].asts),(yyvsp[(2) - (2)].asts));}
    break;

  case 289:

/* Line 1806 of yacc.c  */
#line 1771 "SDCC.y"
    { (yyval.asts) = NULL;}
    break;

  case 290:

/* Line 1806 of yacc.c  */
#line 1772 "SDCC.y"
    { (yyval.asts) = (yyvsp[(1) - (2)].asts); seqPointNo++;}
    break;

  case 291:

/* Line 1806 of yacc.c  */
#line 1776 "SDCC.y"
    { (yyval.asts) = (yyvsp[(2) - (2)].asts); }
    break;

  case 292:

/* Line 1806 of yacc.c  */
#line 1777 "SDCC.y"
    { (yyval.asts) = NULL; }
    break;

  case 293:

/* Line 1806 of yacc.c  */
#line 1782 "SDCC.y"
    { seqPointNo++;}
    break;

  case 294:

/* Line 1806 of yacc.c  */
#line 1783 "SDCC.y"
    {
                              noLineno++;
                              (yyval.asts) = createIf ((yyvsp[(3) - (7)].asts), (yyvsp[(6) - (7)].asts), (yyvsp[(7) - (7)].asts) );
                              (yyval.asts)->lineno = (yyvsp[(3) - (7)].asts)->lineno;
                              (yyval.asts)->filename = (yyvsp[(3) - (7)].asts)->filename;
                              noLineno--;
                           }
    break;

  case 295:

/* Line 1806 of yacc.c  */
#line 1790 "SDCC.y"
    {
                              ast *ex;
                              static   int swLabel = 0;

                              seqPointNo++;
                              /* create a node for expression  */
                              ex = newNode(SWITCH,(yyvsp[(3) - (4)].asts),NULL);
                              STACK_PUSH(swStk,ex);   /* save it in the stack */
                              ex->values.switchVals.swNum = swLabel;

                              /* now create the label */
                              SNPRINTF(lbuff, sizeof(lbuff),
                                       "_swBrk_%d",swLabel++);
                              (yyval.sym)  =  newSymbol(lbuff,NestLevel);
                              /* put label in the break stack  */
                              STACK_PUSH(breakStack,(yyval.sym));
                           }
    break;

  case 296:

/* Line 1806 of yacc.c  */
#line 1807 "SDCC.y"
    {
                              /* get back the switch form the stack  */
                              (yyval.asts) = STACK_POP(swStk);
                              (yyval.asts)->right = newNode (NULLOP,(yyvsp[(6) - (6)].asts),createLabel((yyvsp[(5) - (6)].sym),NULL));
                              STACK_POP(breakStack);
                           }
    break;

  case 297:

/* Line 1806 of yacc.c  */
#line 1815 "SDCC.y"
    {  /* create and push the continue , break & body labels */
                  static int Lblnum = 0;
                  /* continue */
                  SNPRINTF (lbuff, sizeof(lbuff), "_whilecontinue_%d",Lblnum);
                  STACK_PUSH(continueStack,newSymbol(lbuff,NestLevel));
                  /* break */
                  SNPRINTF (lbuff, sizeof(lbuff), "_whilebreak_%d",Lblnum);
                  STACK_PUSH(breakStack,newSymbol(lbuff,NestLevel));
                  /* body */
                  SNPRINTF (lbuff, sizeof(lbuff), "_whilebody_%d",Lblnum++);
                  (yyval.sym) = newSymbol(lbuff,NestLevel);
               }
    break;

  case 298:

/* Line 1806 of yacc.c  */
#line 1829 "SDCC.y"
    {  /* create and push the continue , break & body Labels */
           static int Lblnum = 0;

           /* continue */
           SNPRINTF(lbuff, sizeof(lbuff), "_docontinue_%d",Lblnum);
           STACK_PUSH(continueStack,newSymbol(lbuff,NestLevel));
           /* break */
           SNPRINTF(lbuff, sizeof(lbuff), "_dobreak_%d",Lblnum);
           STACK_PUSH(breakStack,newSymbol(lbuff,NestLevel));
           /* do body */
           SNPRINTF(lbuff, sizeof(lbuff), "_dobody_%d",Lblnum++);
           (yyval.sym) = newSymbol (lbuff,NestLevel);
        }
    break;

  case 299:

/* Line 1806 of yacc.c  */
#line 1844 "SDCC.y"
    { /* create & push continue, break & body labels */
            static int Lblnum = 0;

            /* continue */
            SNPRINTF(lbuff, sizeof(lbuff), "_forcontinue_%d",Lblnum);
            STACK_PUSH(continueStack,newSymbol(lbuff,NestLevel));
            /* break    */
            SNPRINTF(lbuff, sizeof(lbuff), "_forbreak_%d",Lblnum);
            STACK_PUSH(breakStack,newSymbol(lbuff,NestLevel));
            /* body */
            SNPRINTF(lbuff, sizeof(lbuff), "_forbody_%d",Lblnum);
            (yyval.sym) = newSymbol(lbuff,NestLevel);
            /* condition */
            SNPRINTF(lbuff, sizeof(lbuff), "_forcond_%d",Lblnum++);
            STACK_PUSH(forStack,newSymbol(lbuff,NestLevel));
          }
    break;

  case 300:

/* Line 1806 of yacc.c  */
#line 1863 "SDCC.y"
    { seqPointNo++;}
    break;

  case 301:

/* Line 1806 of yacc.c  */
#line 1864 "SDCC.y"
    {
                           noLineno++;
                           (yyval.asts) = createWhile ( (yyvsp[(1) - (6)].sym), STACK_POP(continueStack),
                                              STACK_POP(breakStack), (yyvsp[(3) - (6)].asts), (yyvsp[(6) - (6)].asts) );
                           (yyval.asts)->lineno = (yyvsp[(1) - (6)].sym)->lineDef;
                           (yyval.asts)->filename = (yyvsp[(1) - (6)].sym)->fileDef;
                           noLineno--;
                         }
    break;

  case 302:

/* Line 1806 of yacc.c  */
#line 1873 "SDCC.y"
    {
                          seqPointNo++;
                          noLineno++;
                          (yyval.asts) = createDo ( (yyvsp[(1) - (7)].sym) , STACK_POP(continueStack),
                                          STACK_POP(breakStack), (yyvsp[(5) - (7)].asts), (yyvsp[(2) - (7)].asts));
                          (yyval.asts)->lineno = (yyvsp[(1) - (7)].sym)->lineDef;
                          (yyval.asts)->filename = (yyvsp[(1) - (7)].sym)->fileDef;
                          noLineno--;
                        }
    break;

  case 303:

/* Line 1806 of yacc.c  */
#line 1883 "SDCC.y"
    {
                          noLineno++;

                          (yyval.asts) = newNode(FOR,(yyvsp[(9) - (9)].asts),NULL);
                          AST_FOR((yyval.asts),trueLabel) = (yyvsp[(1) - (9)].sym);
                          AST_FOR((yyval.asts),continueLabel) =  STACK_POP(continueStack);
                          AST_FOR((yyval.asts),falseLabel) = STACK_POP(breakStack);
                          AST_FOR((yyval.asts),condLabel)  = STACK_POP(forStack);
                          AST_FOR((yyval.asts),initExpr)   = (yyvsp[(3) - (9)].asts);
                          AST_FOR((yyval.asts),condExpr)   = (yyvsp[(5) - (9)].asts);
                          AST_FOR((yyval.asts),loopExpr)   = (yyvsp[(7) - (9)].asts);
                          
                          /* This continue label is not at the correct location, */
                          /* but we need to create it now for proper binding. The */
                          /* code that handles the FOR node will move it to the */
                          /* proper location inside the for loop. */
                          if (AST_FOR((yyval.asts),continueLabel)->isref)
                            (yyval.asts)->right = createLabel(AST_FOR((yyval.asts),continueLabel),NULL);
                          (yyval.asts) = newNode(NULLOP,(yyval.asts),createLabel(AST_FOR((yyval.asts),falseLabel),NULL));
                          noLineno--;
                        }
    break;

  case 304:

/* Line 1806 of yacc.c  */
#line 1907 "SDCC.y"
    { (yyval.asts) = NULL; seqPointNo++; }
    break;

  case 305:

/* Line 1806 of yacc.c  */
#line 1908 "SDCC.y"
    { (yyval.asts) = (yyvsp[(1) - (1)].asts); seqPointNo++; }
    break;

  case 306:

/* Line 1806 of yacc.c  */
#line 1912 "SDCC.y"
    {
                              (yyvsp[(2) - (3)].sym)->islbl = 1;
                              (yyval.asts) = newAst_VALUE(symbolVal((yyvsp[(2) - (3)].sym)));
                              (yyval.asts) = newNode(GOTO,(yyval.asts),NULL);
                           }
    break;

  case 307:

/* Line 1806 of yacc.c  */
#line 1917 "SDCC.y"
    {
       /* make sure continue is in context */
       if (STACK_EMPTY(continueStack) || STACK_PEEK(continueStack) == NULL) {
           werror(E_BREAK_CONTEXT);
           (yyval.asts) = NULL;
       }
       else {
           (yyval.asts) = newAst_VALUE(symbolVal(STACK_PEEK(continueStack)));
           (yyval.asts) = newNode(GOTO,(yyval.asts),NULL);
           /* mark the continue label as referenced */
           STACK_PEEK(continueStack)->isref = 1;
       }
   }
    break;

  case 308:

/* Line 1806 of yacc.c  */
#line 1930 "SDCC.y"
    {
       if (STACK_EMPTY(breakStack) || STACK_PEEK(breakStack) == NULL) {
           werror(E_BREAK_CONTEXT);
           (yyval.asts) = NULL;
       } else {
           (yyval.asts) = newAst_VALUE(symbolVal(STACK_PEEK(breakStack)));
           (yyval.asts) = newNode(GOTO,(yyval.asts),NULL);
           STACK_PEEK(breakStack)->isref = 1;
       }
   }
    break;

  case 309:

/* Line 1806 of yacc.c  */
#line 1940 "SDCC.y"
    {
       seqPointNo++;
       if (inCritical) {
           werror(E_INVALID_CRITICAL);
           (yyval.asts) = NULL;
       } else {
           (yyval.asts) = newNode(RETURN,NULL,NULL);
       }
   }
    break;

  case 310:

/* Line 1806 of yacc.c  */
#line 1949 "SDCC.y"
    {
       seqPointNo++;
       if (inCritical) {
           werror(E_INVALID_CRITICAL);
           (yyval.asts) = NULL;
       } else {
           (yyval.asts) = newNode(RETURN,NULL,(yyvsp[(2) - (3)].asts));
       }
   }
    break;

  case 312:

/* Line 1806 of yacc.c  */
#line 1966 "SDCC.y"
    {
        ast *ex;

        seqPointNo++;
        ex = newNode(INLINEASM, NULL, NULL);
        ex->values.inlineasm = copyStr ((yyvsp[(3) - (5)].yystr), NULL);
        seqPointNo++;
        (yyval.asts) = ex;
     }
    break;

  case 313:

/* Line 1806 of yacc.c  */
#line 1976 "SDCC.y"
    {
        ast *ex;

        seqPointNo++;
        ex = newNode(INLINEASM, NULL, NULL);
        ex->values.inlineasm = strdup((yyvsp[(1) - (2)].yystr));
        seqPointNo++;
        (yyval.asts) = ex;
      }
    break;

  case 314:

/* Line 1806 of yacc.c  */
#line 1988 "SDCC.y"
    {
     symbol *sym;
     if ((sym = findSymWithLevel (AddrspaceTab, (yyvsp[(3) - (4)].sym))) && sym->level == (yyvsp[(3) - (4)].sym)->level)
       werrorfl (sym->fileDef, sym->lineDef, E_PREVIOUS_DEF);
     if (!findSymWithLevel (SymbolTab, (yyvsp[(2) - (4)].sym)))
       werror (E_ID_UNDEF, (yyvsp[(2) - (4)].sym)->name);
     addSym (AddrspaceTab, (yyvsp[(3) - (4)].sym), (yyvsp[(3) - (4)].sym)->name, (yyvsp[(3) - (4)].sym)->level, (yyvsp[(3) - (4)].sym)->block, 0);
     sym = findSymWithLevel (AddrspaceTab, (yyvsp[(3) - (4)].sym));
     sym->addressmod[0] = findSymWithLevel (SymbolTab, (yyvsp[(2) - (4)].sym));
     sym->addressmod[1] = 0;
   }
    break;

  case 315:

/* Line 1806 of yacc.c  */
#line 1999 "SDCC.y"
    {
     symbol *sym;
     sym_link *type;
     if ((sym = findSymWithLevel (AddrspaceTab, (yyvsp[(4) - (5)].sym))) && sym->level == (yyvsp[(4) - (5)].sym)->level)
       werrorfl (sym->fileDef, sym->lineDef, E_PREVIOUS_DEF);
     if (!findSymWithLevel (SymbolTab, (yyvsp[(2) - (5)].sym)))
       werror (E_ID_UNDEF, (yyvsp[(2) - (5)].sym)->name);
     addSym (AddrspaceTab, (yyvsp[(4) - (5)].sym), (yyvsp[(4) - (5)].sym)->name, (yyvsp[(4) - (5)].sym)->level, (yyvsp[(4) - (5)].sym)->block, 0);
     sym = findSymWithLevel (AddrspaceTab, (yyvsp[(4) - (5)].sym));
     sym->addressmod[0] = findSymWithLevel (SymbolTab, (yyvsp[(2) - (5)].sym));
     sym->addressmod[1] = 0;
     type = newLink (SPECIFIER);
     SPEC_CONST(type) = 1;
     sym->type = sym->etype = type;
   }
    break;

  case 316:

/* Line 1806 of yacc.c  */
#line 2017 "SDCC.y"
    { (yyval.sym) = newSymbol ((yyvsp[(1) - (1)].yychar), NestLevel); }
    break;



/* Line 1806 of yacc.c  */
#line 5427 "SDCCy.c"
      default: break;
    }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  YY_SYMBOL_PRINT ("-> $$ =", yyr1[yyn], &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);

  *++yyvsp = yyval;

  /* Now `shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */

  yyn = yyr1[yyn];

  yystate = yypgoto[yyn - YYNTOKENS] + *yyssp;
  if (0 <= yystate && yystate <= YYLAST && yycheck[yystate] == *yyssp)
    yystate = yytable[yystate];
  else
    yystate = yydefgoto[yyn - YYNTOKENS];

  goto yynewstate;


/*------------------------------------.
| yyerrlab -- here on detecting error |
`------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYEMPTY : YYTRANSLATE (yychar);

  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
#if ! YYERROR_VERBOSE
      yyerror (YY_("syntax error"));
#else
# define YYSYNTAX_ERROR yysyntax_error (&yymsg_alloc, &yymsg, \
                                        yyssp, yytoken)
      {
        char const *yymsgp = YY_("syntax error");
        int yysyntax_error_status;
        yysyntax_error_status = YYSYNTAX_ERROR;
        if (yysyntax_error_status == 0)
          yymsgp = yymsg;
        else if (yysyntax_error_status == 1)
          {
            if (yymsg != yymsgbuf)
              YYSTACK_FREE (yymsg);
            yymsg = (char *) YYSTACK_ALLOC (yymsg_alloc);
            if (!yymsg)
              {
                yymsg = yymsgbuf;
                yymsg_alloc = sizeof yymsgbuf;
                yysyntax_error_status = 2;
              }
            else
              {
                yysyntax_error_status = YYSYNTAX_ERROR;
                yymsgp = yymsg;
              }
          }
        yyerror (yymsgp);
        if (yysyntax_error_status == 2)
          goto yyexhaustedlab;
      }
# undef YYSYNTAX_ERROR
#endif
    }



  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
	 error, discard it.  */

      if (yychar <= YYEOF)
	{
	  /* Return failure if at end of input.  */
	  if (yychar == YYEOF)
	    YYABORT;
	}
      else
	{
	  yydestruct ("Error: discarding",
		      yytoken, &yylval);
	  yychar = YYEMPTY;
	}
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:

  /* Pacify compilers like GCC when the user code never invokes
     YYERROR and the label yyerrorlab therefore never appears in user
     code.  */
  if (/*CONSTCOND*/ 0)
     goto yyerrorlab;

  /* Do not reclaim the symbols of the rule which action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;	/* Each real token shifted decrements this.  */

  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
	{
	  yyn += YYTERROR;
	  if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYTERROR)
	    {
	      yyn = yytable[yyn];
	      if (0 < yyn)
		break;
	    }
	}

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
	YYABORT;


      yydestruct ("Error: popping",
		  yystos[yystate], yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  *++yyvsp = yylval;


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", yystos[yyn], yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturn;

/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturn;

#if !defined(yyoverflow) || YYERROR_VERBOSE
/*-------------------------------------------------.
| yyexhaustedlab -- memory exhaustion comes here.  |
`-------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  /* Fall through.  */
#endif

yyreturn:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval);
    }
  /* Do not reclaim the symbols of the rule which action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
		  yystos[*yyssp], yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif
#if YYERROR_VERBOSE
  if (yymsg != yymsgbuf)
    YYSTACK_FREE (yymsg);
#endif
  /* Make sure YYID is used.  */
  return YYID (yyresult);
}



/* Line 2067 of yacc.c  */
#line 2019 "SDCC.y"


