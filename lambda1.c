/***********************************************************************/
/* Matthew Lowery                                                      */
/* CPSC 3520 - sde1                                                    */
/* lambda1.c - main c file to implement flex and bison lambda calculus */
/*                evaluation                                           */
/***********************************************************************/

#include "lambda1.tab.c"
#include "lex.yy.c"

int main () {
	int success;
	success = yyparse();
	// yyparse() returns 0 on success
	// 	if it prints anything else, print the error message
	if(success != 0) {
		printf("\n\nSorry, Charlie: Not everybody can be a lambda expression!\n\n");
	}
	return(1);
}
