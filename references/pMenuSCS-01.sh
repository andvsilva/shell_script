#!/bin/bash
function menu(){
    echo -ne "\n\tMenu\n\n";
    echo -ne "\n\t1) Mostrar num. elem. de um diretorio";
    echo -ne "\n\t2) Faz copia de arqruivo";
    echo -ne "\n\t3) Mostrar maqs ativas rede";
    echo -ne "\n\t4) Total de nomes de usuarios";
    echo -ne "\n\t5) Sair\n\n";
    echo -ne "\n\tDigite opcao: ";
}
function elemDir(){
    echo  -ne "\tDigite um diretorio: "; read DIR
    if [ ! -d $DIR ]
    then
        echo -ne "\n\tDiretorio $DIR invalido\n"; read; return
    fi
    C=0
    for X in $( ls $DIR )
    do
        C=$(( C + 1 ))
    done 
    echo -ne "\n\tNum. elementos em $DIR : $C ";read
}
function copia(){
    echo  -ne "\tDigite um arq para copiar "; read ARQ1
    if [ ! -f $ARQ1 ]
    then
        echo -ne "\n\tArq $ARQ1 nao encontrado\n"; read; return
    fi
    echo  -ne "\tDigite o cam absoluto da copia "; read ARQ2
    cp $ARQ1 $ARQ2
    if [ $? -eq 0 ]
    then
        echo -ne "\n\tCopiou $ARQ1 para $ARQ2 "; read
    else
        echo -ne "\n\tNao copiou $ARQ1 para $ARQ2 "; read
    fi
}
function rede(){
    echo -ne "\tDigite a rede: "; read REDE
    echo -ne "\tDigite o host inicial: "; read HOST1
    echo -ne "\tDigite o host final  : "; read HOST2
    while [ $HOST1 -le $HOST2 ]
    do
        ping  -c 1 $REDE.$HOST1 > /dev/null 
        if [ $? -eq 0 ]
        then
            echo -ne "\tMaq.$HOST1 - OK\n";
        else
            echo -ne "\tMaq.$HOST1 - NAO OK\n";
        fi
        HOST1=$(( HOST1 + 1 )) 
    done
    echo -ne "\n\tEsse foi o resultado da rede. ";read
}
function numUsu(){
    echo -ne "\tDigite nome de usuario cadastrado: "; read NOME 
    QTD=$(cat /etc/passwd |grep $NOME |wc -l)
    echo -ne "\tNum. usuarios $NOME: $QTD "; read  
}
OP=0
while [ $OP -ne 5 ]
do
     menu; read OP
     case $OP in
         1)elemDir;;
         2)copia;;
         3)rede;;
         4)numUsu;;
         5);;
         *) echo -ne "\n\tOpcao $OP invalida\n"; read
     esac    
done


