#!/bin/bash

# programa - relacao.sh:
# Recebe dois números como parâmetro e 
# mostra a relação entre eles. 

# argument: $1
# argument: $2

echo "Running script: $0"

# check if the arguments are not numbers
if [ -n "$1" ] && [ "$1" -eq "$1" ] 2>/dev/null; then
else
  echo "not a number, $1"
fi

if [ -n "$2" ] && [ "$2" -eq "$2" ] 2>/dev/null; then
else
  echo "not a number, $2"
fi


echo "********************************"
if [ $1 -gt $2 ]
then
	echo $1 é maior que $2
fi

if [ $1 -lt $2 ]
then
	echo $1 é menor que $2
fi

if [ $1 -eq $2 ]
then
	echo $1 é menor que $2
fi
echo "********************************"

echo All done!