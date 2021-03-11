test: clean main.o

#input1="1" usa lista gerada pelo gendeck
#"0" é só para o programa dos alunos no Visual.
#Atributo do main apenas

#input2="N" N:1,2,3 Número de colunas de cartas a 
#serem impressas. Atributo do main e do gendeck

	bash test.sh "1" "2"
	
main.o:
	gcc main.c -o main.o
	gcc gendeck.c -o gendeck.o

clean:
	rm -rf *.o *~ main *~ gendeck
