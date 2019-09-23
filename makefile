default:
	./buildit sde1

clean:
	rm lex.yy.c
	rm sde1.output
	rm sde1.tab.c
	rm sde1.tab.h
	rm sde1

run:
	./sde1 <abcd
	./sde1 <abcde
	./sde1 <aabcde
	./sde1 <edcab
	./sde1 <eeddcbbba
	./sde1 <eeddcccba
