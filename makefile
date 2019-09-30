default:
	./buildit sde1

clean:
	rm lex.yy.c
	rm sde1.output
	rm sde1.tab.c
	rm sde1.tab.h
	rm sde1

run:
	-./sde1 <abcd
	-./sde1 <abcde
	-./sde1 <aabcde
	-./sde1 <edcab
	-./sde1 <eeddcbbba
	-./sde1 <eeddcccba
	-./sde1 <abcdeabcde
	-./sde1 <abcde_sp_abcde
	-./sde1 <abcdeabcdf
	-./sde1 <abcdef
	-./sde1 <abcdea
	-./sde1 <abcdf
	-./sde1 <abc_sp_de
	-./sde1 <abcdeabcdf
	-./sde1 <eeeeddccccccbbaa
	-./sde1 <eeeeddcccccbbaa

test:
	-./sde1 <edcba
	-./sde1 <abcde_abcde
	-./sde1 <eeeeddccccccbbaaeeeeddccccccbbaa
	-./sde1 <aabcccdddee
	-./sde1 <abcdeeeeddccccccbbaa
	-./sde1 <fabcde
	-./sde1 <abcdee
	-./sde1 <acde
	-./sde1 <eeeeeeddcccbaaa
	-./sde1 <eddcccbae
