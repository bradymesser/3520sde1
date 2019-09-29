%{
#include <stdio.h>
#include <ctype.h>
#include <string.h>
int yylex (void);
int yyerror (char *s);
extern int cheatCode;
%}

%token A
%token B
%token C
%token D
%token E
%token Z
%% /* Grammar rules */

string: a b c d e {
// useful for debugging
//printf("a %d b %d c %d d %d e %d\n", $1,$2,$3,$4,$5);
if (($1 == $5) && ($3 == $4) && ($1 >0) && ($2 >0) && ($3 >0) && ($4 >0) && ($5 >0))
  return 0;
else
  return 1;
}
|
e d c b a {
// useful for debugging
//printf("e %d d %d c %d b %d a %d\n", $1,$2,$3,$4,$5);
if (($1 == (2 * $5)) && ($3 == (3 * $4)) && ($2 == 2) && ($1 >0) && ($2 >0) && ($3 >0) && ($4 >0) && ($5 >0))
  return 0;
else
  return 1;
}
|
a b c d e z {
return 1;
}
|
a b c d e a b c d e {
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

z: Z z {$$=$2+1;}
;
z: Z {$$=1;}
;
%%
