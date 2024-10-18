## HW2

```bash
root@master-node:~/My_DevOps/09.IBA_HW/HW2# cat check_error.sh
#!/bin/bash
if [[ -z "$1" ]]; then
    echo "Please provide the filename as an argument."
    exit 1
fi
filename="$1"
if [[ -f "$filename" ]]; then

    if grep -q "error" "$filename"; then

        echo "Error found in $filename, deleting the file."
        rm "$filename"
    else
        echo "No error found in $filename."
    fi
else
    echo "File $filename does not exist."
fi
root@master-node:~/My_DevOps/09.IBA_HW/HW2#
root@master-node:~/My_DevOps/09.IBA_HW/HW2# bash -x ./check_error.sh file.txt
+ [[ -z file.txt ]]
+ filename=file.txt
+ [[ -f file.txt ]]
+ grep -q error file.txt
+ echo 'Error found in file.txt, deleting the file.'
Error found in file.txt, deleting the file.
+ rm file.txt

root@master-node:~/My_DevOps/09.IBA_HW/HW2# cat create_user.sh
#!/bin/bash

read -p "Enter the username to create: " username

if id "$username" &>/dev/null; then
    echo "User $username already exists."
else
    sudo adduser "$username"
    echo "User $username created and added to sudo group."
    sudo usermod -aG sudo "$username"
fi
root@master-node:~/My_DevOps/09.IBA_HW/HW2# ^C
root@master-node:~/My_DevOps/09.IBA_HW/HW2# bash -x create_user.sh
+ read -p 'Enter the username to create: ' username
Enter the username to create: bakaushyn
+ id bakaushyn
+ sudo adduser bakaushyn
Adding user `bakaushyn' ...
Adding new group `bakaushyn' (1000) ...
Adding new user `bakaushyn' (1000) with group `bakaushyn' ...
Creating home directory `/home/bakaushyn' ...
Copying files from `/etc/skel' ...
New password:
Retype new password:
passwd: password updated successfully
Changing the user information for bakaushyn
Enter the new value, or press ENTER for the default
        Full Name []: 1
        Room Number []: 1
        Work Phone []: 1
        Home Phone []: 1
        Other []: 1
Is the information correct? [Y/n] Y
+ echo 'User bakaushyn created and added to sudo group.'
User bakaushyn created and added to sudo group.
+ sudo usermod -aG sudo bakaushyn
root@master-node:~/My_DevOps/09.IBA_HW/HW2#
root@master-node:~/My_DevOps/09.IBA_HW/HW2# cat /usr/local/bin/bakaushyn_service.sh
#!/bin/bash
while true; do
    echo "Bakaushyn service is running!" >> /var/log/bakaushyn_service.log
    sleep 60
done
root@master-node:~/My_DevOps/09.IBA_HW/HW2# cat /usr/local/bin/bakaushyn_service.sh
#!/bin/bash
while true; do
    echo "Bakaushyn service is running!" >> /var/log/bakaushyn_service.log
    sleep 60
done
root@master-node:~/My_DevOps/09.IBA_HW/HW2# cat /etc/systemd/system/bakaushyn_service.service
[Unit]
Description=Bakaushyn Custom Service
After=network.target

[Service]
ExecStart=/usr/local/bin/bakaushyn_service.sh
Restart=always

[Install]
WantedBy=multi-user.target

root@master-node:~/My_DevOps/09.IBA_HW/HW2# sudo systemctl daemon-reload
root@master-node:~/My_DevOps/09.IBA_HW/HW2# sudo systemctl start bakaushyn_service
root@master-node:~/My_DevOps/09.IBA_HW/HW2# sudo systemctl status bakaushyn_service
● bakaushyn_service.service - Bakaushyn Custom Service
     Loaded: loaded (/etc/systemd/system/bakaushyn_service.service; disabled; vendor preset: enabled)
     Active: active (running) since Fri 2024-10-18 05:32:29 UTC; 4s ago
   Main PID: 1425668 (bakaushyn_servi)
      Tasks: 2 (limit: 4557)
     Memory: 580.0K
        CPU: 3ms
     CGroup: /system.slice/bakaushyn_service.service
             ├─1425668 /bin/bash /usr/local/bin/bakaushyn_service.sh
             └─1425669 sleep 60

Oct 18 05:32:29 master-node systemd[1]: Started Bakaushyn Custom Service.
root@master-node:~/My_DevOps/09.IBA_HW/HW2# sudo systemctl enable bakaushyn_service
Created symlink /etc/systemd/system/multi-user.target.wants/bakaushyn_service.service → /etc/systemd/system/bakaushyn_service.service.
root@master-node:~/My_DevOps/09.IBA_HW/HW2# sudo systemctl enable bakaushyn_service
root@master-node:~/My_DevOps/09.IBA_HW/HW2# sudo systemctl status bakaushyn_service
● bakaushyn_service.service - Bakaushyn Custom Service
     Loaded: loaded (/etc/systemd/system/bakaushyn_service.service; enabled; vendor preset: enabled)
     Active: active (running) since Fri 2024-10-18 05:32:29 UTC; 1min 36s ago
   Main PID: 1425668 (bakaushyn_servi)
      Tasks: 2 (limit: 4557)
     Memory: 588.0K
        CPU: 4ms
     CGroup: /system.slice/bakaushyn_service.service
             ├─1425668 /bin/bash /usr/local/bin/bakaushyn_service.sh
             └─1426478 sleep 60

Oct 18 05:32:29 master-node systemd[1]: Started Bakaushyn Custom Service.
root@master-node:~/My_DevOps/09.IBA_HW/HW2# tail -f /var/log/bakaushyn_service.log
Bakaushyn service is running!
Bakaushyn service is running!
Bakaushyn service is running!
Bakaushyn service is running!
Bakaushyn service is running!
Bakaushyn service is running!
^C
root@master-node:~/My_DevOps/09.IBA_HW/HW2#

   ```
