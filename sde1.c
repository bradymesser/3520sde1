#include "sde1.tab.c"
#include "lex.yy.c"
#include "yyerror.c"

int cheatCode = 0;
int main() {
  printf("\n>>>> CONTEXTUAL parsing of string <<<<<<");
  if (yyparse() == 0) {
    printf("\n***** congratulations; parse successful *****\n\n");
  } else {
    printf("\nSorry, Charlie, input string not in L(G)\n\n");
  }
  return 1;
}


// Put this in the flex file, useful for debugging
// YYSTYPE yylval;
//
// int main(void)
// {
//     int token;
//     while ((token = yylex()) != 0)
//         printf("Token: %d (%s)\n", token, yytext);
//     return 0;
// }

// . {
// yyerror(yytext);
// cheatCode = 1;
// }
