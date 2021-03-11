echo "Running tests..."
echo

#output=$(./main.o 15 36 18 44 222 0 -1 -33 44 120 31 -12 -2)
#output=$(echo $input | ./main.o)
#"input" entre aspas toma uma única string. Sem aspas considera varias strings separadas por espaço"
input1=$1
input2=$2

# 2o atributo do gendeck "p" imprime as cartas.
# "d" imprime os dados ou a posição das cartas no monte

expected_output=$(./gendeck.o "$input2" "p")
input3=$(./gendeck.o "$input2" "d")

output=$(./main.o "$input1" "$input2" "$input3")


if [ $? -eq 0 ] ; then
  echo "Pass: Program exited zero"
else
  echo "Fail: Program did not exit zero"
  exit 1
fi

if [ "$output" == "$expected_output" ] ; then
  echo "Pass: Output is correct"
else
  echo "Expected '$expected_output' but got: '$output'"
  exit 1
fi

echo
echo "All tests passed."

exit 0
