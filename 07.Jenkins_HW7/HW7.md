## HW7


```bash
pipeline {
    agent any
    stages {
        stage('Setup Environment') {
            steps {
                script {
                    sh '''
                    sudo apt update
                    sudo apt install -y docker.io docker-compose
                    '''
                }
            }
        }
        stage('Configure ELK Stack') {
            steps {
                script {
                    writeFile file: 'docker-compose.yml', text: '''
                    version: '2.2'
                    services:
                      elasticsearch:
                        image: elasticsearch:8.16.0
                        container_name: elasticsearch
                        environment:
                          - discovery.type=single-node
                          - "ES_JAVA_OPTS=-Xms1g -Xmx1g"
                        ports:
                          - "9200:9200"
                          - "9300:9300"
                      logstash:
                        image: logstash:8.16.0
                        container_name: logstash
                        ports:
                          - "5000:5000"
                      kibana:
                        image: kibana:8.16.0
                        container_name: kibana
                        ports:
                          - "5601:5601"
                    '''
                }
            }
        }
        stage('Deploy ELK Stack') {
            steps {
                script {
                    sh '''
                    docker-compose up -d
                    '''
                }
            }
        }
    }
}

```

```bash
Console Output
Download
Copy
View as plain text
Started by user Andrei 
[Pipeline] Start of Pipeline
[Pipeline] node
Running on Jenkins in /var/lib/jenkins/workspace/ELK_Stack_Pipeline
[Pipeline] {
[Pipeline] stage
[Pipeline] { (Setup Environment)
[Pipeline] script
[Pipeline] {
[Pipeline] sh
+ sudo apt update
WARNING: apt does not have a stable CLI interface. Use with caution in scripts.

Hit:1 http://by.archive.ubuntu.com/ubuntu noble InRelease
Hit:2 http://by.archive.ubuntu.com/ubuntu noble-updates InRelease
Hit:3 http://by.archive.ubuntu.com/ubuntu noble-backports InRelease
Get:4 http://security.ubuntu.com/ubuntu noble-security InRelease [126 kB]
Hit:5 https://dl.google.com/linux/chrome/deb stable InRelease
Ign:6 https://pkg.jenkins.io/debian-stable binary/ InRelease
Hit:7 https://pkg.jenkins.io/debian-stable binary/ Release
Get:8 http://security.ubuntu.com/ubuntu noble-security/main amd64 Components [7,140 B]
Get:9 http://security.ubuntu.com/ubuntu noble-security/restricted amd64 Components [212 B]
Get:10 http://security.ubuntu.com/ubuntu noble-security/universe amd64 Components [51.9 kB]
Get:11 http://security.ubuntu.com/ubuntu noble-security/multiverse amd64 Components [212 B]
Fetched 186 kB in 2s (110 kB/s)
Reading package lists...
Building dependency tree...
Reading state information...
9 packages can be upgraded. Run 'apt list --upgradable' to see them.
+ sudo apt install -y docker.io docker-compose

WARNING: apt does not have a stable CLI interface. Use with caution in scripts.

Reading package lists...
Building dependency tree...
Reading state information...
docker.io is already the newest version (24.0.7-0ubuntu4.1).
docker-compose is already the newest version (1.29.2-6ubuntu1).
0 upgraded, 0 newly installed, 0 to remove and 9 not upgraded.
[Pipeline] }
[Pipeline] // script
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Configure ELK Stack)
[Pipeline] script
[Pipeline] {
[Pipeline] writeFile
[Pipeline] }
[Pipeline] // script
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Deploy ELK Stack)
[Pipeline] script
[Pipeline] {
[Pipeline] sh
+ docker-compose up -d
Creating elasticsearch ... 
Creating kibana        ... 
Creating logstash      ... 
Creating elasticsearch ... done
Creating logstash      ... done
Creating kibana        ... done
[Pipeline] }
[Pipeline] // script
[Pipeline] }
[Pipeline] // stage
[Pipeline] }
[Pipeline] // node
[Pipeline] End of Pipeline
Finished: SUCCESS

```

```bash
root@ivcpaladin:/home/ivcpaladin# docker pull kibana:8.16.0
8.16.0: Pulling from library/kibana
d9802f032d67: Already exists
48575f852d90: Pull complete
6ebce24fd422: Pull complete
3e984c44cd17: Pull complete
2a3efcd37b29: Pull complete
22f20863855b: Pull complete
4f4fb700ef54: Pull complete
7cadda25850b: Pull complete
9e07617db9fd: Pull complete
33109392f44d: Pull complete
4c9a3d430efa: Pull complete
79bf2b2396d9: Pull complete
bc909314cbee: Pull complete
Digest: sha256:7d8518300bdb8792ddd4cbab3324efa828164d864b6d6178cee85c843ef198a5
Status: Downloaded newer image for kibana:8.16.0
docker.io/library/kibana:8.16.0
root@ivcpaladin:/home/ivcpaladin# df -h
Filesystem                         Size  Used Avail Use% Mounted on
tmpfs                              387M  1.6M  386M   1% /run
/dev/mapper/ubuntu--vg-ubuntu--lv   18G   11G  7.0G  60% /
tmpfs                              1.9G   20M  1.9G   2% /dev/shm
tmpfs                              5.0M     0  5.0M   0% /run/lock
/dev/sda2                          1.8G  182M  1.5G  12% /boot
tmpfs                              387M   20K  387M   1% /run/user/1000
root@ivcpaladin:/home/ivcpaladin# sudo rm -rf /var/lib/jenkins/jobs/
root@ivcpaladin:/home/ivcpaladin# docker images
REPOSITORY      TAG       IMAGE ID       CREATED      SIZE
kibana          8.16.0    295afe009429   6 days ago   1.16GB
elasticsearch   8.16.0    77e5d3165074   6 days ago   1.3GB
logstash        8.16.0    a77c64e898c8   6 days ago   881MB
root@ivcpaladin:/home/ivcpaladin# docker ps
CONTAINER ID   IMAGE                  COMMAND                  CREATED         STATUS         PORTS                                                                                  NAMES
b4f54ac4dba2   kibana:8.16.0          "/bin/tini -- /usr/l…"   3 minutes ago   Up 3 minutes   0.0.0.0:5601->5601/tcp, :::5601->5601/tcp                                              kibana
3895da2799c5   elasticsearch:8.16.0   "/bin/tini -- /usr/l…"   3 minutes ago   Up 3 minutes   0.0.0.0:9200->9200/tcp, :::9200->9200/tcp, 0.0.0.0:9300->9300/tcp, :::9300->9300/tcp   elasticsearch
af03fc1e0370   logstash:8.16.0        "/usr/local/bin/dock…"   3 minutes ago   Up 3 minutes   5044/tcp, 0.0.0.0:5000->5000/tcp, :::5000->5000/tcp, 9600/tcp                          logstash
root@ivcpaladin:/home/ivcpaladin# netstat -tuln | grep 5000
tcp        0      0 0.0.0.0:5000            0.0.0.0:*               LISTEN
tcp6       0      0 :::5000                 :::*                    LISTEN
root@ivcpaladin:/home/ivcpaladin#


```





###
