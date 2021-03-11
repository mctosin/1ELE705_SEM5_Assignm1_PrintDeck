test: clean main.o
	bash test.sh "1" "2" "d"
	
main.o:
	gcc main.c -o main.o
	gcc gendeck.c -o gendeck.o

clean:
	rm -rf *.o *~ main *~ gendeck
