## Pattern scanning and processing language - ```awk```

### How to use ?

```Bash
# Terminal
# for more info use man command, e.g. man awk

$ ps
  PID TTY          TIME CMD
11895 pts/0    00:00:00 zsh
11964 pts/0    00:00:00 ps

$ ps | awk '{print $1}'
PID
11895
12141
12142

$ ps | awk '{print $2}'
TTY
pts/0
pts/0
pts/0

root:x:0:0:root:/root:/bin/bash
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
sys:x:3:3:sys:/dev:/usr/sbin/nologin
sync:x:4:65534:sync:/bin:/bin/sync
...

$ awk -F ":" '{print $1}' /etc/passwd
root
daemon
bin
sys
sync
games
man
lp
mail
news
uucp

$ awk -F ":" '{print $1 $6 $7}' /etc/passwd
root/root/bin/bash
daemon/usr/sbin/usr/sbin/nologin
bin/bin/usr/sbin/nologin
sys/dev/usr/sbin/nologin
sync/bin/bin/sync
games/usr/games/usr/sbin/nologin
man/var/cache/man/usr/sbin/nologin
lp/var/spool/lpd/usr/sbin/nologin
mail/var/mail/usr/sbin/nologin
news/var/spool/news/usr/sbin/nologi
...

$ awk -F ":" '{print $1"\t"$6"\t"$7}' /etc/passwd
root	/root	/bin/bash
daemon	/usr/sbin	/usr/sbin/nologin
bin	/bin	/usr/sbin/nologin
sys	/dev	/usr/sbin/nologin
sync	/bin	/bin/sync

$ awk 'BEGIN{FS=":"; OFS="-"} {print $1, $6, $7}' /etc/passwd
root-/root-/bin/bash
daemon-/usr/sbin-/usr/sbin/nologin
bin-/bin-/usr/sbin/nologin
sys-/dev-/usr/sbin/nologin
sync-/bin-/bin/sync

$ cat /etc/shells
# /etc/shells: valid login shells
/bin/sh
/bin/dash
/usr/bin/dash
/bin/bash
/usr/bin/bash
/bin/rbash
/usr/bin/rbash
/bin/zsh
/usr/bin/zsh
/usr/bin/tmux

$ awk -F "/" '/^\// {print $NF}' /etc/shells
sh
dash
dash
bash
bash
rbash
rbash
zsh
zsh
tmux

$ awk -F "/" '/^\// {print $NF}' /etc/shells | uniq
sh
dash
bash
rbash
zsh
tmux

$ awk -F "/" '/^\// {print $NF}' /etc/shells | uniq | sort
bash
dash
rbash
sh
tmux
zsh

$ df
Filesystem     1K-blocks      Used Available Use% Mounted on
udev             4010444         0   4010444   0% /dev
tmpfs             808104      1836    806268   1% /run
/dev/sda6      500635912 108050008 367085284  23% /
tmpfs            4040516    196376   3844140   5% /dev/shm
tmpfs               5120         4      5116   1% /run/lock
tmpfs            4040516         0   4040516   0% /sys/fs/cgroup
...

$ df | awk '/\dev\/loop/ {print $1"\t"$2"\t"$3}'
/dev/loop11	134784	134784
/dev/loop1	100736	100736
/dev/loop2	84992	84992
...

$ df | awk '/\dev\/loop/ {print $1"\t"$2 + $3}' 
/dev/loop11	269568
/dev/loop1	201472
/dev/loop2	169984
/dev/loop5	126464
...

$ awk 'length($0) > 7' /etc/shells
# /etc/shells: valid login shells
/bin/dash
/usr/bin/dash
/bin/bash
/usr/bin/bash
/bin/rbash
/usr/bin/rbash
/bin/zsh
/usr/bin/zsh
/usr/bin/tmux

$ ps -ef
UID        PID  PPID  C STIME TTY          TIME CMD
root         1     0  0 17:09 ?        00:00:07 /sbin/init splash
root         2     0  0 17:09 ?        00:00:00 [kthreadd]
root         4     2  0 17:09 ?        00:00:00 [kworker/0:0H]
root         6     2  0 17:09 ?        00:00:00 [mm_percpu_wq]
root         7     2  0 17:09 ?        00:00:00 [ksoftirqd/0]
root         8     2  0 17:09 ?        00:00:05 [rcu_sched]

$ ps -ef | awk '{ if($NF == "/usr/bin/zsh") print $0}'
username 12742 12704  0 22:22 pts/0    00:00:03 /usr/bin/zsh

$ awk 'BEGIN { for(i=1; i<=10; i++) print "The square root of", i, "is", i*i;}'
The square root of 1 is 1
The square root of 2 is 4
The square root of 3 is 9
The square root of 4 is 16
The square root of 5 is 25
The square root of 6 is 36
The square root of 7 is 49
The square root of 8 is 64
The square root of 9 is 81
The square root of 10 is 100

$ cat numbered.txt
1  Xmonad
2  Qtile
3  Awesome
4  Openbox
5  Spectrwn
6  Dwm

$ awk '{print substr($0, 4)}' numbered.txt                                5ms 
Xmonad
Qtile
Awesome
Openbox
Spectrwn
Dwm

$ awk 'match($0, /o/) {print $0 " has \"o\" character at " RSTART}' numbered.txt     5ms 
1  Xmonad has "o" character at 6
3  Awesome has "o" character at 8
4  Openbox has "o" character at 9

$ df | awk 'NR==7, NR==11 {print NR, $0}'
7 tmpfs            4040516         0   4040516   0% /sys/fs/cgroup
8 /dev/loop11       134784    134784         0 100% /snap/docker/796
9 /dev/loop1        100736    100736         0 100% /snap/core/10823
10 /dev/loop2         84992     84992         0 100% /snap/scrcpy/276
11 /dev/loop5         63232     63232         0 100% /snap/core20/975
(base) 

$ df | awk 'NR==7, NR==11 {print $0}'
tmpfs            4040516         0   4040516   0% /sys/fs/cgroup
/dev/loop11       134784    134784         0 100% /snap/docker/796
/dev/loop1        100736    100736         0 100% /snap/core/10823
/dev/loop2         84992     84992         0 100% /snap/scrcpy/276
/dev/loop5         63232     63232         0 100% /snap/core20/975

$ awk 'END {print NR}' /etc/shells                                                   5ms 
11

```
