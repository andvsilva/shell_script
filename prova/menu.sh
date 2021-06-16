#!/bin/bash

# Menu 

# 1) Mostrar total de valores.
# 2) Mostrar elementos de um diretório.
# 3) Mostra as máquinas que estão ativas numa rede.
# 4) Solicita o nome de um grupo e mostra o numero de cadastros com esse nome.
# 5) Sair do Sistema.

# 6) Opção Invalida e voltar a exibir o menu.

# String with the Menu
Menu="Menu: \n
1) Mostrar total de valores.\n
2) Mostrar elementos de um diretório.\n
3) Mostra as máquinas que estão ativas numa rede.\n
4) Solicita o nome de um grupo e mostra o numero de cadastros com esse nome.\n
5) Sair do Sistema.\n"

echo $Menu

echo -n "Digite uma opção do Menu acima: "
read Option

# switch

# variables:
    # counter 
    icount=1

    # Maior valores
    aMaior=0 
    bMaior=0

case $Option in

# First Option
1)  echo -n "Digitar dois valores inteiros positivos distintos: A B\n"
    echo "Digite A:"
    read A
    echo "Digite B:"
    read B

    aMaior=$A 
    bMaior=$B

    while [[ $A -gt 0 && $B -gt 0 ]]
    do
        echo -n "Digitar dois valores inteiros positivos distintos: A B\n"
        echo "Digite A:"
        read A
        echo "Digite B:"
        read B

        # check
        if (( $A > $aMaior && $B > $bMaior ))
        then
            aMaior=$A
            bMaior=$B
        fi

        icount=$((icount+1))
    done
    echo "Número de valores digitados entre as variáveis A e B: $icount"
    echo "O maior valor digitado para A: $aMaior e B: $bMaior"

    ;;

# Second Option
2) echo "Digitar o caminho absoluto para o diretório existente:"

   iElementsDir=0
   read pathDirectory

   #ls $pathDirectory | wc -l

   #ls > list_names.txt

   while read line; 
   do
        inString="$line" # get each file name in the folder: directory
        nCaracters=${#inString}
        echo "............$nCaracters"


        # get last element string
        word="${words: -1}"
        #echo $word

        if [ $nCaracters -gt 5 ]; then
            if [[ "$word" == 'r' ]]; then
                echo "$words"
                iElementsDir=$((iElementsDir+1))
            fi
        fi

   done < list_names.txt
   ;;

3) echo ""

   ;;

4) echo " Digite nome de usuario cadastro: "
   read NAME 
   Quantidade=$(cat /etc/group | grep $NAME |wc -l)
   echo -ne " Número usuarios $NAME: $Quantidade" read

   ;;

*) echo "Opção inválida\n "
echo $Menu
;;
esac