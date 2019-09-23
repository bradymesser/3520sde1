%{
#include <stdio.h>
#include <ctype.h>
#include <string.h>
int yylex (void);
int yyerror (char *s);
%}

%token A
%token B
%token C
%token D
%token E
%token LPARENS
%token RPARENS

%% /* Grammar rules */
string: a b c d e {
if (($1 == $5) && ($3 == $4))
  return 0;
else
  return 1;
}
;
a: A a {$$=$2+1;}
;
a: A {$$=1;}
;

b: B b {$$=$2+1;}
;
b: B {$$=1;}
;

c: C c {$$=$2+1;}
;
c: C {$$=1;}
;

d: D d {$$=$2+1;}
;
d: D {$$=1;}
;

e: E e {$$=$2+1;}
;
e: E {$$=1;}
;
%%
