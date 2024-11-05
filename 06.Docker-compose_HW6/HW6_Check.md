## HW6_Check

```bash
root@master-node:~/My_DevOps/02.Docker-compose/6# ls -la
total 16
drwxr-xr-x 3 root 4096 Nov  4 07:58 .
drwxr-xr-x 5 root 4096 Nov  4 07:58 ..
-rw-r--r-- 1 root  166 Nov  4 07:58 docker-compose.yml
drwxr-xr-x 2 root 4096 Nov  4 07:58 nginx-config
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
root@master-node:~/My_DevOps/02.Docker-compose/6/nginx-config# docker ps
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
root@master-node:~/My_DevOps/02.Docker-compose/6/nginx-config# docker-compose up -d
/usr/lib/python3/dist-packages/paramiko/transport.py:237: CryptographyDeprecationWarning: Blowfish has been deprecated and will be removed in a future release
  "class": algorithms.Blowfish,
Creating network "6_default" with the default driver
Creating nginx-compose ... done
root@master-node:~/My_DevOps/02.Docker-compose/6/nginx-config# docker ps
CONTAINER ID   IMAGE     COMMAND                  CREATED         STATUS         PORTS                                   NAMES
24ceb459e88c   nginx     "/docker-entrypoint.…"   6 seconds ago   Up 5 seconds   0.0.0.0:8080->80/tcp, :::8080->80/tcp   nginx-compose
root@master-node:~/My_DevOps/02.Docker-compose/6/nginx-config# curl http://localhost:8080
Dockerroot@master-node:~/My_DevOps/02.Docker-compose/6/nginx-config# docker exec nginx-compose ls -la /etc/nginx/conf.d
total 12
drwxr-xr-x 2 root root 4096 Nov  4 07:58 .
drwxr-xr-x 3 root root 4096 Oct  3 00:58 ..
-rw-r--r-- 1 root root  122 Nov  5 05:18 default.conf
root@master-node:~/My_DevOps/02.Docker-compose/6/nginx-config# docker exec nginx-compose cat /etc/nginx/conf.d/default.conf
server {
    listen 80;
    location / {
        return 200 'Docker';
        add_header Content-Type text/plain;
    }
}
root@master-node:~/My_DevOps/02.Docker-compose/6/nginx-config# docker logs nginx-compose
/docker-entrypoint.sh: /docker-entrypoint.d/ is not empty, will attempt to perform configuration
/docker-entrypoint.sh: Looking for shell scripts in /docker-entrypoint.d/
/docker-entrypoint.sh: Launching /docker-entrypoint.d/10-listen-on-ipv6-by-default.sh
10-listen-on-ipv6-by-default.sh: info: Getting the checksum of /etc/nginx/conf.d/default.conf
10-listen-on-ipv6-by-default.sh: info: /etc/nginx/conf.d/default.conf differs from the packaged version
/docker-entrypoint.sh: Sourcing /docker-entrypoint.d/15-local-resolvers.envsh
/docker-entrypoint.sh: Launching /docker-entrypoint.d/20-envsubst-on-templates.sh
/docker-entrypoint.sh: Launching /docker-entrypoint.d/30-tune-worker-processes.sh
/docker-entrypoint.sh: Configuration complete; ready for start up
2024/11/05 05:18:42 [notice] 1#1: using the "epoll" event method
2024/11/05 05:18:42 [notice] 1#1: nginx/1.27.2
2024/11/05 05:18:42 [notice] 1#1: built by gcc 12.2.0 (Debian 12.2.0-14)
2024/11/05 05:18:42 [notice] 1#1: OS: Linux 5.15.0-119-generic
2024/11/05 05:18:42 [notice] 1#1: getrlimit(RLIMIT_NOFILE): 1048576:1048576
2024/11/05 05:18:42 [notice] 1#1: start worker processes
2024/11/05 05:18:42 [notice] 1#1: start worker process 28
2024/11/05 05:18:42 [notice] 1#1: start worker process 29
192.168.176.1 - - [05/Nov/2024:05:18:56 +0000] "GET / HTTP/1.1" 200 6 "-" "curl/7.81.0" "-"
178.211.139.105 - - [05/Nov/2024:05:20:50 +0000] "GET / HTTP/1.1" 200 6 "-" "Linux Gnu (cow)" "-"


```


###
