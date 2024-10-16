## HW1

```bash
root@master-node:~/IBA_Hw# du -ah / | sort -rh | head -n 7 > top_directories.txt
du: cannot access '/proc/3402625/task/3402625/fd/3': No such file or directory
du: cannot access '/proc/3402625/task/3402625/fdinfo/3': No such file or directory
du: cannot access '/proc/3402625/fd/4': No such file or directory
du: cannot access '/proc/3402625/fdinfo/4': No such file or directory
root@master-node:~/IBA_Hw# ls -la
total 12
drwxr-xr-x  2 root root 4096 Oct 16 05:21 .
drwx------ 21 root root 4096 Oct 16 05:20 ..
-rw-r--r--  1 root root  131 Oct 16 05:21 top_directories.txt
root@master-node:~/IBA_Hw# cat top_directories.txt
26G     /
9.9G    /var
6.7G    /usr
5.4G    /var/log
4.3G    /var/lib
4.0G    /var/log/journal/d5f7d1da2afc322aaacc992c45295507
4.0G    /var/log/journal
root@master-node:~/IBA_Hw# sudo adduser newuser
Adding user `newuser' ...
Adding new group `newuser' (1000) ...
Adding new user `newuser' (1000) with group `newuser' ...
Creating home directory `/home/newuser' ...
Copying files from `/etc/skel' ...
New password:
Retype new password:
passwd: password updated successfully
Changing the user information for newuser
Enter the new value, or press ENTER for the default
        Full Name []:
        Room Number []:
        Work Phone []:
        Home Phone []:
        Other []:
Is the information correct? [Y/n] Y
root@master-node:~/IBA_Hw# sudo usermod -aG sudo newuser
root@master-node:~/IBA_Hw# cat /etc/passwd
root:x:0:0:root:/root:/bin/bash
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
sys:x:3:3:sys:/dev:/usr/sbin/nologin
sync:x:4:65534:sync:/bin:/bin/sync
games:x:5:60:games:/usr/games:/usr/sbin/nologin
man:x:6:12:man:/var/cache/man:/usr/sbin/nologin
lp:x:7:7:lp:/var/spool/lpd:/usr/sbin/nologin
mail:x:8:8:mail:/var/mail:/usr/sbin/nologin
news:x:9:9:news:/var/spool/news:/usr/sbin/nologin
uucp:x:10:10:uucp:/var/spool/uucp:/usr/sbin/nologin
proxy:x:13:13:proxy:/bin:/usr/sbin/nologin
www-data:x:33:33:www-data:/var/www:/usr/sbin/nologin
backup:x:34:34:backup:/var/backups:/usr/sbin/nologin
list:x:38:38:Mailing List Manager:/var/list:/usr/sbin/nologin
irc:x:39:39:ircd:/run/ircd:/usr/sbin/nologin
gnats:x:41:41:Gnats Bug-Reporting System (admin):/var/lib/gnats:/usr/sbin/nologin
nobody:x:65534:65534:nobody:/nonexistent:/usr/sbin/nologin
_apt:x:100:65534::/nonexistent:/usr/sbin/nologin
systemd-network:x:101:102:systemd Network Management,,,:/run/systemd:/usr/sbin/nologin
systemd-resolve:x:102:103:systemd Resolver,,,:/run/systemd:/usr/sbin/nologin
messagebus:x:103:104::/nonexistent:/usr/sbin/nologin
systemd-timesync:x:104:105:systemd Time Synchronization,,,:/run/systemd:/usr/sbin/nologin
pollinate:x:105:1::/var/cache/pollinate:/bin/false
sshd:x:106:65534::/run/sshd:/usr/sbin/nologin
syslog:x:107:113::/home/syslog:/usr/sbin/nologin
uuidd:x:108:114::/run/uuidd:/usr/sbin/nologin
tcpdump:x:109:115::/nonexistent:/usr/sbin/nologin
tss:x:110:116:TPM software stack,,,:/var/lib/tpm:/bin/false
landscape:x:111:117::/var/lib/landscape:/usr/sbin/nologin
usbmux:x:112:46:usbmux daemon,,,:/var/lib/usbmux:/usr/sbin/nologin
lxd:x:999:100::/var/snap/lxd/common/lxd:/bin/false
fwupd-refresh:x:113:118:fwupd-refresh user,,,:/run/systemd:/usr/sbin/nologin
dnsmasq:x:114:65534:dnsmasq,,,:/var/lib/misc:/usr/sbin/nologin
kube:x:998:999:Kubernetes user:/home/kube:/sbin/nologin
etcd:x:997:998:Etcd user:/home/etcd:/sbin/nologin
nm-openvpn:x:115:121:NetworkManager OpenVPN,,,:/var/lib/openvpn/chroot:/usr/sbin/nologin
_rpc:x:116:65534::/run/rpcbind:/usr/sbin/nologin
statd:x:117:65534::/var/lib/nfs:/usr/sbin/nologin
mysql:x:118:122:MySQL Server,,,:/nonexistent:/bin/false
newuser:x:1000:1000:,,,:/home/newuser:/bin/bash
root@master-node:~/IBA_Hw#



   ```
