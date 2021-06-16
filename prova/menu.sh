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
*) echo "Opção inválida\n "
echo $Menu
;;
esac