### Exercícios - Bash Script 

### [Exercício 1 - relacao.sh](exercicios/relacao.sh)
```Bash
$ chmod +x relacao.sh or just use `source`
$ ./relacao.sh 3 5
3 é menor que 5
$./relacao.sh 5 3
5 é maior que 3
$ ./relacao.sh 5 5
5 é igual a 5
```

### [Exercício 2 - zerador.sh](exercicios/zerador.sh)
```Bash
$ chmod +x zerador.sh or just use `source`
$ ./zerador.sh 5                 
5 4 3 2 1 0
$ source zerador.sh 10                 
10 9 8 7 6 5 4 3 2 1 0
```

### [Exercício 3 - substring.sh](exercicios/substring.sh)
```Bash
$ chmod +x substring.sh or just use `source`
$ ./substring.sh ana banana
ana está contida em banana
$ ./substring.sh banana maria
$ ./substring.sh banana
$ ./substring.sh
```

### [Exercício 4 - juntatudo.sh](exercicios/juntatudo.sh)
```Bash
$ man tr
tr - translate or delete characters ...

$ source juntatudo.sh a b c d e f verde azul                         
abcdefverdeazul
```