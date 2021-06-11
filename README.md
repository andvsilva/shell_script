### Exercícios - Bash Script 

### [Exercício 1 - relacao.sh](exercicios/relacao.sh)
```Bash
$ chmod +x relacao.sh or just use `source` relacao.sh
$ ./relacao.sh 3 5
3 é menor que 5
$./relacao.sh 5 3
5 é maior que 3
$ ./relacao.sh 5 5
5 é igual a 5
```

### [Exercício 2 - zerador.sh](exercicios/zerador.sh)
```Bash
$ chmod +x zerador.sh or just use `source` zerador.sh
$ ./zerador.sh 5                 
5 4 3 2 1 0
$ source zerador.sh 10                 
10 9 8 7 6 5 4 3 2 1 0
```

### [Exercício 3 - substring.sh](exercicios/substring.sh)
```Bash
$ chmod +x substring.sh or just use `source` substring.sh
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

$ chmod +x juntatudo.sh or just use `source` juntatudo.sh
$ source juntatudo.sh a b c d e f verde azul                         
abcdefverdeazul
```

### [Exercício 5 - ....](exercicios/)
```Bash
...
```

### [Exercício 6 - shells.sh](exercicios/shells.sh)
```Bash
$ chmod +x shells.sh or just use `source` shells.sh
$ ./shells.sh
/bin/bash
/bin/sync
/sbin/nologin
/usr/bin/zsh
```