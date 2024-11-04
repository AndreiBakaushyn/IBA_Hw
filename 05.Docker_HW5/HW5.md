## HW5

```bash
root@master-node:~/My_DevOps/01.Docker/20.Docker# docker build -t docker_image_hw5 .
DEPRECATED: The legacy builder is deprecated and will be removed in a future release.
            Install the buildx component to build images with BuildKit:
            https://docs.docker.com/go/buildx/

Sending build context to Docker daemon  3.072kB
Step 1/5 : FROM alpine:latest
 ---> 91ef0af61f39
Step 2/5 : RUN apk update && apk add --no-cache curl
 ---> Running in c5448b7607e3
fetch https://dl-cdn.alpinelinux.org/alpine/v3.20/main/x86_64/APKINDEX.tar.gz
fetch https://dl-cdn.alpinelinux.org/alpine/v3.20/community/x86_64/APKINDEX.tar.gz
v3.20.3-251-g06adbb4ec1d [https://dl-cdn.alpinelinux.org/alpine/v3.20/main]
v3.20.3-248-g1d7b309371b [https://dl-cdn.alpinelinux.org/alpine/v3.20/community]
OK: 24165 distinct packages available
fetch https://dl-cdn.alpinelinux.org/alpine/v3.20/main/x86_64/APKINDEX.tar.gz
fetch https://dl-cdn.alpinelinux.org/alpine/v3.20/community/x86_64/APKINDEX.tar.gz
(1/10) Installing ca-certificates (20240705-r0)
(2/10) Installing brotli-libs (1.1.0-r2)
(3/10) Installing c-ares (1.33.1-r0)
(4/10) Installing libunistring (1.2-r0)
(5/10) Installing libidn2 (2.3.7-r0)
(6/10) Installing nghttp2-libs (1.62.1-r0)
(7/10) Installing libpsl (0.21.5-r1)
(8/10) Installing zstd-libs (1.5.6-r0)
(9/10) Installing libcurl (8.10.1-r0)
(10/10) Installing curl (8.10.1-r0)
Executing busybox-1.36.1-r29.trigger
Executing ca-certificates-20240705-r0.trigger
OK: 13 MiB in 24 packages
Removing intermediate container c5448b7607e3
 ---> 83d222fc25c2
Step 3/5 : COPY hello.sh /hello.sh
 ---> d60da671d2f6
Step 4/5 : RUN chmod +x /hello.sh
 ---> Running in c8ec35b73e9e
Removing intermediate container c8ec35b73e9e
 ---> 4debeff84a6c
Step 5/5 : CMD ["/hello.sh"]
 ---> Running in e64fb95796be
Removing intermediate container e64fb95796be
 ---> 30d1f2ca91b5
Successfully built 30d1f2ca91b5
Successfully tagged docker_image_hw5:latest
root@master-node:~/My_DevOps/01.Docker/20.Docker# ls -la
total 16
drwxr-xr-x  2 root root 4096 Nov  4 07:11 .
drwxr-xr-x 26 root root 4096 Nov  4 07:11 ..
-rw-r--r--  1 root root  126 Nov  4 07:11 Dockerfile
-rwxr-xr-x  1 root root   47 Nov  4 07:11 hello.sh
root@master-node:~/My_DevOps/01.Docker/20.Docker# docker images
REPOSITORY                    TAG       IMAGE ID       CREATED         SIZE
docker_image_hw5              latest    30d1f2ca91b5   8 seconds ago   15.5MB
nginx14                       latest    3c721accfbb2   3 weeks ago     192MB
drupal                        latest    6f095201e8ba   4 weeks ago     597MB
nginx                         latest    7f553e8bbc89   4 weeks ago     192MB
12docker-compose_service_02   latest    91e0efad3c90   4 weeks ago     11.6MB
12docker-compose_service_01   latest    91e0efad3c90   4 weeks ago     11.6MB
alpine                        latest    91ef0af61f39   8 weeks ago     7.8MB
httpd                         latest    1bcf11fa154f   3 months ago    148MB
mysql                         5.7       5107333e08a8   10 months ago   501MB
kubernetesui/dashboard        v2.7.0    07655ddf2eeb   2 years ago     246MB
root@master-node:~/My_DevOps/01.Docker/20.Docker# docker tag docker_image_hw5 skefil/docker_image_hw5
root@master-node:~/My_DevOps/01.Docker/20.Docker# ls -la
total 16
drwxr-xr-x  2 root root 4096 Nov  4 07:11 .
drwxr-xr-x 26 root root 4096 Nov  4 07:11 ..
-rw-r--r--  1 root root  126 Nov  4 07:11 Dockerfile
-rwxr-xr-x  1 root root   47 Nov  4 07:11 hello.sh
root@master-node:~/My_DevOps/01.Docker/20.Docker# docker push skefil/docker_image_hw5
Using default tag: latest
The push refers to repository [docker.io/skefil/docker_image_hw5]
a17a689938ee: Pushed
e73738593081: Pushed
63ca1fbb43ae: Mounted from library/nginx
latest: digest: sha256:1a7f71e4f38e2241c1f5df665582555dce4417c8b9e06571ce3060618694389e size: 1153
root@master-node:~/My_DevOps/01.Docker/20.Docker# cat Dockerfile
FROM alpine:latest
RUN apk update && apk add --no-cache curl
COPY hello.sh /hello.sh
RUN chmod +x /hello.sh
CMD ["/hello.sh"]
root@master-node:~/My_DevOps/01.Docker/20.Docker#
```
1) 
CMD задает команду, которая выполняется при запуске контейнера. 
Она может быть легко перезаписана, если при запуске контейнера указать другую команду. 
В Dockerfile CMD используется, если ENTRYPOINT не указан.
ENTRYPOINT задает неизменяемую команду, которую невозможно перезаписать при запуске контейнера.
2) 
CMD задает команду по умолчанию, которая может быть переопределена при запуске контейнера. 
ENTRYPOINT определяет неизменяемую команду, которая всегда будет выполняться. 
CMD обычно используется для указания параметров для ENTRYPOINT.


###
