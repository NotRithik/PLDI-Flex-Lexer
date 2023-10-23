all: clean lexer test-all

lexer: lex.yy.c 10_A2.c
	gcc lex.yy.c 10_A2.c -o lexer -ll

lex.yy.c: 10_A2.l
	flex 10_A2.l

clean:
	rm -rf lex.yy.c lexer

test-all:
	./lexer < test.nc
	echo "Running next test\n\n\n"
	./lexer < test1.nc
	echo "Running next test\n\n\n"
	./lexer < test2.nc
	echo "Running next test\n\n\n"
	./lexer < test3.nc
	echo "Running next test\n\n\n"
	./lexer < test4.nc
	echo "Running next test\n\n\n"
	./lexer < test5.nc
	echo "Running next test\n\n\n"
	./lexer < test6.nc
	echo "Running next test\n\n\n"
	./lexer < test7.nc
	echo "Running next test\n\n\n"
	./lexer < test8.nc
	echo "Running next test\n\n\n"
	./lexer < test9.nc
	echo "Running next test\n\n\n"
	./lexer < test10.nc