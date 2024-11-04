## HW6

```bash
root@master-node:~/My_DevOps/02.Docker-compose/6# ls -la
total 16
drwxr-xr-x 3 root root 4096 Nov  4 07:58 .
drwxr-xr-x 5 root root 4096 Nov  4 07:58 ..
-rw-r--r-- 1 root root  166 Nov  4 07:58 docker-compose.yml
drwxr-xr-x 2 root root 4096 Nov  4 07:58 nginx-config
root@master-node:~/My_DevOps/02.Docker-compose/6# cat docker-compose.yml
version: '3'
services:
  nginx:
    image: nginx
    container_name: nginx-compose
    ports:
      - "8080:80"
    volumes:
      - ./nginx-config:/etc/nginx/conf.d
root@master-node:~/My_DevOps/02.Docker-compose/6# docker run --name nginx-container -d -p 8080:80 -v $(pwd)/nginx-config:/etc/nginx/conf.d nginx
c41d2475942ddc514fa17cdb06d6710bff1fdf85f550d2b62fe826ba80271bc3
docker: Error response from daemon: driver failed programming external connectivity on endpoint nginx-container (755e8a839a4c84e39d8fc94581759d843479ac8f5eadf89da1252d0a23d9b2d5): Bind for 0.0.0.0:8080 failed: port is already allocated.
root@master-node:~/My_DevOps/02.Docker-compose/6# docker ps
CONTAINER ID   IMAGE          COMMAND                  CREATED      STATUS      PORTS                                   NAMES
5182cab71a12   nginx:latest   "/docker-entrypoint.…"   3 days ago   Up 3 days   80/tcp                                  19docker_nginx_1
3d6ae82c9a69   nginx:latest   "/docker-entrypoint.…"   3 days ago   Up 3 days   80/tcp                                  19docker_nginx_3
17e2fa29da8a   nginx:latest   "/docker-entrypoint.…"   3 days ago   Up 3 days   80/tcp                                  19docker_nginx_2
4b445d386d76   httpd:latest   "httpd-foreground"       3 days ago   Up 3 days   0.0.0.0:8080->80/tcp, :::8080->80/tcp   19docker_httpd_1
root@master-node:~/My_DevOps/02.Docker-compose/6# docker stop $(docker ps -aq) && docker rm $(docker ps -aq)
c41d2475942d
5182cab71a12
3d6ae82c9a69
17e2fa29da8a
4b445d386d76
c41d2475942d
5182cab71a12
3d6ae82c9a69
17e2fa29da8a
4b445d386d76
root@master-node:~/My_DevOps/02.Docker-compose/6# docker ps
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
root@master-node:~/My_DevOps/02.Docker-compose/6# docker run --name nginx-container -d -p 8080:80 -v $(pwd)/nginx-config:/etc/nginx/conf.d nginx
7a73aeac608998e116c3e40d2244e29cb1f23efd52659d82c9b6c075f619884f
root@master-node:~/My_DevOps/02.Docker-compose/6# docker ps
CONTAINER ID   IMAGE     COMMAND                  CREATED         STATUS         PORTS                                   NAMES
7a73aeac6089   nginx     "/docker-entrypoint.…"   4 seconds ago   Up 3 seconds   0.0.0.0:8080->80/tcp, :::8080->80/tcp   nginx-container
root@master-node:~/My_DevOps/02.Docker-compose/6# docker-compose up -d
/usr/lib/python3/dist-packages/paramiko/transport.py:237: CryptographyDeprecationWarning: Blowfish has been deprecated and will be removed in a future release
  "class": algorithms.Blowfish,
Creating network "6_default" with the default driver
Creating nginx-compose ...
Creating nginx-compose ... error
ERROR: for nginx-compose  Cannot start service nginx: driver failed programming external connectivity on endpoint nginx-compose (5f913c0d64c3b22b10aa53377e0089642d1d7c316ded39d36c2fadfbab193044): Bind for 0.0.0.0:8080 failed: port is already allocated

ERROR: for nginx  Cannot start service nginx: driver failed programming external connectivity on endpoint nginx-compose (5f913c0d64c3b22b10aa53377e0089642d1d7c316ded39d36c2fadfbab193044): Bind for 0.0.0.0:8080 failed: port is already allocated
ERROR: Encountered errors while bringing up the project.
root@master-node:~/My_DevOps/02.Docker-compose/6# docker stop nginx-container
nginx-container
root@master-node:~/My_DevOps/02.Docker-compose/6# docker rm nginx-container
nginx-container
root@master-node:~/My_DevOps/02.Docker-compose/6# docker-compose up -d
/usr/lib/python3/dist-packages/paramiko/transport.py:237: CryptographyDeprecationWarning: Blowfish has been deprecated and will be removed in a future release
  "class": algorithms.Blowfish,
Starting nginx-compose ... done
root@master-node:~/My_DevOps/02.Docker-compose/6# docker ps
CONTAINER ID   IMAGE     COMMAND                  CREATED              STATUS         PORTS                                   NAMES
e95b26c623e0   nginx     "/docker-entrypoint.…"   About a minute ago   Up 4 seconds   0.0.0.0:8080->80/tcp, :::8080->80/tcp   nginx-compose
root@master-node:~/My_DevOps/02.Docker-compose/6# curl http://localhost:8080
Dockerroot@master-node:~/My_DevOps/02.Docker-compose/6# 
root@master-node:~/My_DevOps/02.Docker-compose/6# docker-compose down
/usr/lib/python3/dist-packages/paramiko/transport.py:237: CryptographyDeprecationWarning: Blowfish has been deprecated and will be removed in a future release
  "class": algorithms.Blowfish,
Stopping nginx-compose ... done
Removing nginx-compose ... done
Removing network 6_default
root@master-node:~/My_DevOps/02.Docker-compose/6#




```


###
