/***********************************************************************/
/* Matthew Lowery                                                      */
/* CPSC 3520 - sde1                                                    */
/* lambda1.y - bison parser input file for lambda calculus             */
/***********************************************************************/

/** definitions **/

%{
#include <stdio.h>
#include <ctype.h>
#include "yyerror1.c"
int yylex(void);
%}

%token LAMBDA
%token NUMBER
%token VARIABLE
%token FUNCTION
%token LPARENS
%token RPARENS
%token PERIOD

%%

/** rules **/

validexpression: 	combination { 
				printf("\n\nParse for syntactically correct lambda-calculus");
				printf(" expression was successful: \n\n");
				printf("  The overall expression is a combination\n\n"); 
			} | 
			constant { 
				printf("\n\nParse for syntactically correct lambda-calculus");
				printf(" expression was successful: \n\n");
				printf("  The overall expression is a constant\n\n"); 
			} | 
			VARIABLE { 
				printf("\n\nParse for syntactically correct lambda-calculus");
				printf(" expression was successful: \n\n");
				printf("  The overall expression is a variable\n\n"); 
			} | 
			abstraction { 
				printf("\n\nParse for syntactically correct lambda-calculus");
				printf(" expression was successful: \n\n");
				printf("  The overall expression is an abstraction\n\n"); 
			}
;

expression: combination | constant | VARIABLE | abstraction
;

combination: LPARENS expression expression RPARENS
;

constant: FUNCTION | NUMBER
;

abstraction: LPARENS LAMBDA VARIABLE PERIOD expression RPARENS
;

%%
