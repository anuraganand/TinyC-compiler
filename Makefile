a.out: lex.yy.o y.tab.o ass6_12CS30006_translator.o  
	g++ -m32 lex.yy.o y.tab.o ass6_12CS30006_translator.o -lfl
lex.yy.o: lex.yy.c y.tab.c
	g++ -m32 -c lex.yy.c
lex.yy.c: ass6_12CS30006.l
	flex ass6_12CS30006.l
y.tab.o: y.tab.c
	g++ -m32 -c y.tab.c
y.tab.c: ass6_12CS30006.y
	yacc -dtv ass6_12CS30006.y
ass6_12CS30006_translator.o: ass6_12CS30006_translator.cxx
	g++ -m32 -c ass6_12CS30006_translator.cxx

run1: a.out test_inputs/ass6_12CS30006_test1.c 
	./a.out < test_inputs/ass6_12CS30006_test1.c > test_outputs/ass6_12CS30006_1.s
	gcc test_outputs/ass6_12CS30006_1.s myl.c -o 1.out
	./1.out

run2: a.out test_inputs/ass6_12CS30006_test2.c
	./a.out < test_inputs/ass6_12CS30006_test2.c > test_outputs/ass6_12CS30006_2.s
	gcc test_outputs/ass6_12CS30006_2.s myl.c -o 2.out
	./2.out

run3: a.out test_inputs/ass6_12CS30006_test3.c
	./a.out < test_inputs/ass6_12CS30006_test3.c > test_outputs/ass6_12CS30006_3.s
	gcc test_outputs/ass6_12CS30006_3.s myl.c -o 3.out
	./3.out

run4: a.out test_inputs/ass6_12CS30006_test4.c
	./a.out < test_inputs/ass6_12CS30006_test4.c > test_outputs/ass6_12CS30006_4.s
	gcc test_outputs/ass6_12CS30006_4.s myl.c -o 4.out
	./4.out

run5: a.out test_inputs/ass6_12CS30006_test5.c
	./a.out < test_inputs/ass6_12CS30006_test5.c > test_outputs/ass6_12CS30006_5.s
	gcc test_outputs/ass6_12CS30006_5.s myl.c -o 5.out
	./5.out
	
clean:
	rm a.out ass6_12CS30006_translator.o lex.yy.o y.tab.o y.tab.c lex.yy.c y.tab.h 1.out 2.out 3.out 4.out 5.out
