test: clean main.o

#input1="1" usa lista gerada pelo gendeck
#"0" é só para o programa dos alunos no Visual.
#Atributo do main apenas

#input2="N" N:1,2,3 Número de colunas de cartas a 
#serem impressas. Atributo do main e do gendeck

#input3="p" imprime as cartas. Qualquer outra
#entrada imprime a posição das cartas no monte
#Atributo do gendeck apenas.

	bash test.sh "1" "2" "d"
	
main.o:
	gcc main.c -o main.o
	gcc gendeck.c -o gendeck.o

clean:
	rm -rf *.o *~ main *~ gendeck
