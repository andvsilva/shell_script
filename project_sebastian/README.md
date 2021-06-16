# Tarefa 11

Um script é um arquivo de texto simples (sem controles de tipo de letra, etc.) em que cada linha
Ele contém uma instrução executável e para a qual (o arquivo) recebeu permissões de execução.
Crie um script chamado Backup Photos.sh que faz o backup de todo o diretório de fotos
(incluindo subdiretórios) do usuário zavas em um pendrive montado em / media / backups.
Você não deve deletar o conteúdo existente no pendrive, mas você deve sobrescrevê-lo com os arquivos
os mais recentes e copie os inexistentes.
Se o parâmetro z for adicionado na linha de comando (executando ./Picture Backup.sh z), o diretório deve
backup compactado com gzip (nesse caso, não há problema de sobrescrever um backup anterior)


```bash
/repo/shell_script/project_sebastian on  master!
$ source Photos.sh 
Disk /dev/sda: 931,53 GiB, 1000204886016 bytes, 1953525168 sectors
Disk /dev/sdb: 3,76 GiB, 4022337024 bytes, 7856127 sectors
Usage: for example sdb, type >>> b:
Type the disk:
b
Create a folder backup at /media/ ...
Create a mount point...
mkfs.fat 4.1 (2017-01-24)
attribute "partition" not found
Mount the USB Drive...
Copy folder into pendrive
All done


#############

/media/backup/pictures ⌚ 14:23:45
$ tree                  
.
├── dogs
│   ├── download (5).jpeg
│   ├── download.jpeg
│   ├── images (1).jpeg
│   ├── images (2).jpeg
│   ├── images (3).jpeg
│   ├── images (4).jpeg
│   ├── images (5).jpeg
│   ├── images (6).jpeg
│   └── images.jpeg
├── download (1).jpeg
├── download (2).jpeg
├── download (3).jpeg
├── download (4).jpeg
├── download.jpeg
├── images (1).jpeg
├── images (2).jpeg
├── images (3).jpeg
├── images (4).jpeg
├── images (5).jpeg
├── images (6).jpeg
├── images (7).jpeg
├── images (8).jpeg
└── images.jpeg

1 directory, 23 files

```

# Tarefa / Projeto final para o S.O.Linux opcional

## 1) 

Um equipamento de processamento de dados baseado em plataforma Linux (opcional, embora
recomenda Ubuntu) que chamaremos de servidor, cuja função será armazenar arquivos que
vêm de dispositivos conectados à mesma rede local (clientes).
Os clientes poderão trabalhar com os sistemas operacionais MSWindows ou Linux de forma intercambiável.
Será considerado uma vantagem o facto de aceitarem clientes com o S.O. macOS, iOS ou Android.
Avalie a possibilidade de usar um único computador de placa, como o Raspberry Pi, é
extremamente útil para levar para a aula e para os alunos fazerem o download de suas tarefas nele,
especialmente em lugares onde a disponibilidade da Internet não é boa.


## 2) 

Um relatório que detalha as etapas seguidas para alcançar o que foi solicitado no ponto 1 com o
detalhes suficientes para que na próxima vez que você tenha que executá-lo, você não precise consultar
nenhuma outra fonte além do relatório mencionado.
- O relatório deve incluir referências às fontes consultadas.
- O sistema descrito no ponto 1 será testado utilizando a rede disponível e deve permitir um
usuário armazena e apaga arquivos em um diretório compartilhado remotamente (dentro do
rede local).
- Será testado com clientes Linux e MSWindows.
- O relatório solicitado deve expressar sua adesão a uma licença CC (Creative Commons) para o
efeitos de poder ser livremente distribuído e uma cópia digital deve permanecer para referência no
instituto e eventualmente publicado. A cópia impressa não é solicitada.
- O trabalho em pequenos grupos de até 2 pessoas é aceitável, mas apenas para fins de
compartilhar as dificuldades do processo. Os produtos (pontos 1 e 2) a serem apresentados devem ser
Individual. Em particular, no caso do relatório, deve-se notar claramente que não é um
escrita comum, embora obviamente o processo que você descreve possa ser o mesmo.


```bash

### REPO

$ tree         
.
├── Photos.sh
├── pictures
│   ├── dogs
│   │   ├── download (5).jpeg
│   │   ├── download.jpeg
│   │   ├── images (1).jpeg
│   │   ├── images (2).jpeg
│   │   ├── images (3).jpeg
│   │   ├── images (4).jpeg
│   │   ├── images (5).jpeg
│   │   ├── images (6).jpeg
│   │   └── images.jpeg
│   ├── download (1).jpeg
│   ├── download (2).jpeg
│   ├── download (3).jpeg
│   ├── download (4).jpeg
│   ├── download.jpeg
│   ├── images (1).jpeg
│   ├── images (2).jpeg
│   ├── images (3).jpeg
│   ├── images (4).jpeg
│   ├── images (5).jpeg
│   ├── images (6).jpeg
│   ├── images (7).jpeg
│   ├── images (8).jpeg
│   └── images.jpeg
├── Proyecto+final.pdf
├── README.md
└── Tarea_11.pdf

2 directories, 27 files
```