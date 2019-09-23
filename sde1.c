#include "sde1.tab.c"
#include "lex.yy.c"
#include "yyerror.c"

int main() {
  printf("\n>>>> CONTEXTUAL parsing of string <<<<<<");
  if (yyparse() == 0) {
    printf("\n***** congratulations; parse successful *****\n\n");
  } else {
    printf("\nSorry, Charlie, input string not in L(G)\n\n");
  }
  return 1;
}
