# Initiation à Docker

## 1. Introduction
Hier et la semaine dernière, tu as découvert l'histoire des conteneurs.
Aujourd'hui, place à la découverte des conteneurs Docker.

## 2. La ressource
Dans l'histoire des conteneurs, hier on s'est arrêté sur la participation de Google à la naissance de LXC en 2006.

En 2013, Google déclenche à nouveau les hostilités en confiant 
son logiciel `LMCTFY (Let Me Contain That For You)`, 
qui permet de mieux gérer les conteneurs Linux, 
à un project open source nommé Docker. 

Minute papillon ! Un projet nommé Docker ! Mais ce qu'est donc ce charabia ? Docker est le logiciel qui permet de créer des conteneurs, me dirais-tu.

Tout à fait, cher moussaillon, mais pas que ! 
À la base, Docker est né en 2008 en tant que projet open source et a été à l'origine de beaucoup de concepts nouveaux, parmi eux :
- une meilleure gestion des conteneurs via une interface en ligne de commande
- la gestion des applications dédiées à tourner dans ces conteneurs
- et la possibilité d'utiliser les conteneurs quelque soit l'environment (Linux, Windows, MAc, etc.)

Mais ce n'est qu'en 2013 que Docker a vraiment commencé à parler de lui. 
Aujourd'hui les conteneurs Docker ne sont plus réellement comme ceux de 2013, mais l'essentiel est toujours présent.

Maintenant place à l'action !
Au lieu de te parler théorie et architecture des conteneurs Docker, passons directement à la pratique.
C'est délibérer de ma part 😜 ! Car je sais qu'avec le cours d'hier,
tu es capable de comprendre la plupart des commandes et concepts que nous allons utiliser ci-dessous.


### 2.1. Démarrer son conteneur
#### 2.1.1. Installer Docker
Pour installer Docker rien de plus simple, il suffit de suivre [la documentation officielle](https://docs.docker.com/engine/install/ubuntu/)

#### 2.1.2. 🚀 ALERTE BONNE ASTUCE

Par défaut, la commande docker ne peut être exécutée que par l’utilisateur `root` 
ou par un utilisateur du groupe docker, qui est automatiquement créé lors de l’installation de Docker.
Si tu essayes de lancer la commande docker sans `sudo` ou sans être dans le groupe docker, 
Tu vas avoir une erreur de ce type :

```shell
docker: Cannot connect to the Docker daemon. Is the docker daemon running on this host?.
See 'docker run --help'.
```

Pour éviter de taper `sudo` avant chaque commande, tu dois ajouter ton `username` au groupe docker :

```shell
sudo usermod -aG docker ${USER}
```
Une fois la commande rentrée, tu dois soit :
- fermer ta session et ensuite te reconnecter. 
  Pour être sûr, je t'invite à redémarrer ton PC afin d'être vraiment certain 😀.
- ou lancer cette commande ```su - ${USER}```

Tu peux maintenant vérifier que ton utilisateur est bien ajouté au groupe docker en tapant `id -nG`,
tu devrais avoir un résultat de ce type :
```
gui sudo docker
```

Regardons maintenant de plus près, les commandes docker

#### 2.1.3. Les commandes docker

Voice la syntaxe des instructions que tu peux donner à docker : 

```shell
docker [option] [command] [arguments]
```

Pour voir une liste des options et commandes disponibles, lances `docker`.
À partir de la version docker 20.x.x, tu auras ce type de résultat :

```shell
Usage:  docker [OPTIONS] COMMAND

A self-sufficient runtime for containers

Options:
      --config string      Location of client config files (default "/home/gui/.docker")
  -c, --context string     Name of the context to use to connect to the daemon (overrides DOCKER_HOST env var and default context set with "docker context use")
  -D, --debug              Enable debug mode
  -H, --host list          Daemon socket(s) to connect to
  -l, --log-level string   Set the logging level ("debug"|"info"|"warn"|"error"|"fatal") (default "info")
      --tls                Use TLS; implied by --tlsverify
      --tlscacert string   Trust certs signed only by this CA (default "/home/gui/.docker/ca.pem")
      --tlscert string     Path to TLS certificate file (default "/home/gui/.docker/cert.pem")
      --tlskey string      Path to TLS key file (default "/home/gui/.docker/key.pem")
      --tlsverify          Use TLS and verify the remote
  -v, --version            Print version information and quit

Management Commands:
  app*        Docker App (Docker Inc., v0.9.1-beta3)
  builder     Manage builds
  buildx*     Docker Buildx (Docker Inc., v0.7.1-docker)
  config      Manage Docker configs
  container   Manage containers
  context     Manage contexts
  image       Manage images
  manifest    Manage Docker image manifests and manifest lists
  network     Manage networks
  node        Manage Swarm nodes
  plugin      Manage plugins
  scan*       Docker Scan (Docker Inc., v0.12.0)
  secret      Manage Docker secrets
  service     Manage services
  stack       Manage Docker stacks
  swarm       Manage Swarm
  system      Manage Docker
  trust       Manage trust on Docker images
  volume      Manage volumes

Commands:
  attach      Attach local standard input, output, and error streams to a running container
  build       Build an image from a Dockerfile
  commit      Create a new image from a container's changes
  cp          Copy files/folders between a container and the local filesystem
  create      Create a new container
  diff        Inspect changes to files or directories on a container's filesystem
  events      Get real time events from the server
  exec        Run a command in a running container
  export      Export a container's filesystem as a tar archive
  history     Show the history of an image
  images      List images
  import      Import the contents from a tarball to create a filesystem image
  info        Display system-wide information
  inspect     Return low-level information on Docker objects
  kill        Kill one or more running containers
  load        Load an image from a tar archive or STDIN
  login       Log in to a Docker registry
  logout      Log out from a Docker registry
  logs        Fetch the logs of a container
  pause       Pause all processes within one or more containers
  port        List port mappings or a specific mapping for the container
  ps          List containers
  pull        Pull an image or a repository from a registry
  push        Push an image or a repository to a registry
  rename      Rename a container
  restart     Restart one or more containers
  rm          Remove one or more containers
  rmi         Remove one or more images
  run         Run a command in a new container
  save        Save one or more images to a tar archive (streamed to STDOUT by default)
  search      Search the Docker Hub for images
  start       Start one or more stopped containers
  stats       Display a live stream of container(s) resource usage statistics
  stop        Stop one or more running containers
  tag         Create a tag TARGET_IMAGE that refers to SOURCE_IMAGE
  top         Display the running processes of a container
  unpause     Unpause all processes within one or more containers
  update      Update configuration of one or more containers
  version     Show the Docker version information
  wait        Block until one or more containers stop, then print their exit codes

Run 'docker COMMAND --help' for more information on a command.
```

Comme tu le vois, il y a pas mal de choses, mais ne t'inquiète pas, car pour ma part en 2 ans,
je n'ai jamais utilisé la plupart de ces options et commandes.
Pour ceux qui sont les plus importantes, tu les découvriras au fur et à mesure.

Concentrons-nous, maintenant sur certaines de ces commandes qui feront bientôt partie du reste de ta vie.

### 2.1.2. Utiliser une image docker
Les conteneurs Docker sont construits à partir d’images Docker. 
Par défaut, Docker tire ces images de [Docker Hub](https://hub.docker.com/), 
un registre Docker géré par Docker. 
Docker Hub a une version payante et gratuite, bien sûr la version gratuite est limitée. 
Cependant, la version gratuite est largement suffisante pour la plupart 
des applications et des distributions Linux dont tu auras besoin.

Pour vérifier si tu peux accéder et télécharger des images de Docker Hub, lances `docker run hello-world`
Le résultat te dira si Docker fonctionne correctement :

```shell
Unable to find image 'hello-world:latest' locally
latest: Pulling from library/hello-world
0e03bdcc26d7: Pull complete
Digest: sha256:6a65f928fb91fcfbc963f7aa6d57c8eeb426ad9a20c7ee045538ef34847f44f1
Status: Downloaded newer image for hello-world:latest

Hello from Docker!
This message shows that your installation appears to be working correctly.

```

Au début, Docker n’a pas pu trouver l’image `hello-world` localement, il a donc téléchargé l’image depuis Docker Hub, 
qui est le référentiel par défaut. Une fois l’image téléchargée, 
*Docker a créé un conteneur à partir de l’image et l’application dans le conteneur s’est exécutée, affichant le message `Hello from Docker ...`.

Tu peux rechercher des images disponibles sur Docker Hub en utilisant la commande `docker search`.
Par exemple, pour rechercher l’image mysql, lances ```docker search mysql```
Cette instruction va parcourir Docker Hub et afficher la liste de toutes les images dont le nom correspond à `mysql`. 
Dans ce cas, tu auras un résultat similaire à celui-ci :

```shell
NAME                             DESCRIPTION                                     STARS     OFFICIAL   AUTOMATED
mysql                            MySQL is a widely used, open-source relation…   12268     [OK]       
mariadb                          MariaDB Server is a high performing open sou…   4718      [OK]       
mysql/mysql-server               Optimized MySQL Server Docker images. Create…   910                  [OK]
percona                          Percona Server is a fork of the MySQL relati…   572       [OK]       
phpmyadmin                       phpMyAdmin - A web interface for MySQL and M…   471       [OK]       
mysql/mysql-cluster              Experimental MySQL Cluster Docker images. Cr…   93                   
centos/mysql-57-centos7          MySQL 5.7 SQL database server                   92                   
bitnami/mysql                    Bitnami MySQL Docker Image                      66                   [OK]
databack/mysql-backup            Back up mysql databases to... anywhere!         57                   
circleci/mysql                   MySQL is a widely used, open-source relation…   25                   
ubuntu/mysql                     MySQL open source fast, stable, multi-thread…   25                   
mysql/mysql-router               MySQL Router provides transparent routing be…   23                   
centos/mysql-56-centos7          MySQL 5.6 SQL database server                   22                   
google/mysql                     MySQL server for Google Compute Engine          20                   [OK]
vmware/harbor-db                 Mysql container for Harbor                      10                   
mysqlboy/mydumper                mydumper for mysql logcial backups              3                    
mysqlboy/docker-mydumper         docker-mydumper containerizes MySQL logical …   3                    
bitnami/mysqld-exporter                                                          2                    
ibmcom/mysql-s390x               Docker image for mysql-s390x                    1                    
mysql/mysql-operator             MySQL Operator for Kubernetes                   0                    
mysqlboy/elasticsearch                                                           0                    
mysqleatmydata/mysql-eatmydata                                                   0                    
ibmcom/tidb-ppc64le              TiDB is a distributed NewSQL database compat…   0                    
mirantis/mysql                                                                   0                    
cimg/mysql                                                                       0                    
```

Voici les informations à retenir : 
- la colonne STARS, indique la popularité du projet, plus le projet est populaire, moins il y a de risque que l'image soit remplie de bugs.
- dans la colonne OFFICIAL, "OK" indique une image construite et soutenue par l’entreprise à l’origine du projet. 
- dans la colonne AUTOMATED, "OK" indique que l'image est construit automatiquement et push sur Docker Hub via GitHub, Gitlab ou Bitbucket.


Une fois que tu as choisi ton image tu peux la télécharger avec `docker pull <image>`, par exemple : 

```shell
Using default tag: latest
latest: Pulling from library/mariadb
7c3b88808835: Pull complete 
cea07b32fcfa: Pull complete 
cf0da78414e6: Pull complete 
f4d4a282af8c: Pull complete 
8e5ebf090d50: Pull complete 
d8fb17be3731: Pull complete 
0c50e7152540: Pull complete 
59e743776c21: Pull complete 
bc1d9df5057a: Pull complete 
621fa3528f37: Pull complete 
a9d65fa0799f: Pull complete 
Digest: sha256:736606c3decd9b95dd8c1ee68c3e2b7e53af9e41135f6c833cd69a5eb268355e
Status: Downloaded newer image for mariadb:latest
docker.io/library/mariadb:latest
```

Une fois qu’une image a été téléchargée, tu peux lancer un conteneur en utilisant cette image avec la sous-commande `run`. 

Pour voir les listes des images qui ont été téléchargées, lances `docker images`,
la sortie ressemblera à ce qui suit :

```shell
REPOSITORY                                             TAG                     IMAGE ID       CREATED         SIZE
mariadb                                                latest                  f5dd1ac0b00e   7 days ago      414MB
php                                                    8.0.16-fpm-alpine3.15   7d044156d799   3 weeks ago     87.3MB
```



Voyons comment exécuter des conteneurs plus en détails.

### 2.1.3. Rentrer dans une image docker

Le conteneur `hello-world` que tu as exécuté plus haut,
est un exemple de conteneur qui fonctionne et qui quitte après avoir émis un message de test. 
Cependant, cher dev, les conteneurs peuvent être beaucoup plus utiles, car ils peuvent être interactifs. 
En fin de compte, ils ressemblent aux VMs, à la seule différence qu'ils utilisent moins de ressources (CPU, RAM).

Voyons cela en peu plus en détails avec une image docker de `ubuntu`.
Lances cette instruction `docker run -it ubuntu`, tu devrais avoir un résultat semblable à celui-ci :

```shell
Unable to find image 'ubuntu:latest' locally
latest: Pulling from library/ubuntu
4d32b49e2995: Pull complete 
Digest: sha256:b5f855f762421e352f89359ce833e7091da343c4ec63258941e0a7b45864cb3d
Status: Downloaded newer image for ubuntu:latest
root@290061f41a7c:/# 
```

Je te vois déjà à la fois surpris et fasciné par ces quelques lignes 😃.
Mais si tu analyses cette sortie en détails, tu peux en conclure que l'instruction `docker run -it ubuntu` :
- vérifie que l'image existe sur la machine et qu'elle la télécharge si besoin.
- ensuite lance un conteneur avec l'image téléchargée
- puis rentre dans ce conteneur
- et enfin, affiche en `mode intéractif`, le conteneur. 
  Ce mode est comme si tu étais en train d'interagir avec un PC via le terminal, tout simplement 🙂.


Tu peux maintenant exécuter n’importe quelle commande `bash` ou `sh` 
à l’intérieur du conteneur. 

---
⚠️ Petite précision, 
à ce stade et lorsque tu utilises le `mode intéractif`, surtout via des instructions docker, rentrées directement depuis ton terminal
tu opères à l’intérieur du conteneur automatiquement en tant qu’utilisateur root, d'où cette sortie :

```shell
root@290061f41a7c:/# 
```
Notes l’identifiant du conteneur dans l’invite de commande. 
Ici, il s’agit de `290061f41a7c`. Nous reviendrons sur les identifiants et leurs utilités plus tard.

Tu peux ensuite installer nodejs par exemple, 

```shell
apt-get update && apt-get install nodejs
```
Ensuite un petit ```node -v```, pour vérifier l'installation et la version/
Vous verrez le numéro de version affiché dans votre terminal :

---

Une fois que tu auras finis de t'amuser, tu pourras quitter le conteneur 
en tapant `exit` ou depuis le clavier avec `crtl + c`.

Maintenant que tu sais comment lancer des conteneurs à partir des images de Docker Hub, 
voyons comment gérer les images et conteneurs sur ta machine.

### 2.1.3. Gérer les conteneurs docker
Au fur à mesure de ton utilisation de Docker, 
tu vas commencer à avoir de nombreux conteneurs actifs (en cours d’exécution) et inactifs sur ta machine. 
Pour voir les conteneurs actifs, lances `docker ps`, tu vas avoir un résultat semblable à ceci :

```shell
CONTAINER ID   IMAGE                                           COMMAND                  CREATED          STATUS          PORTS                                                                                                           NAMES
5f8a2fb3cad0   eu.gcr.io/etsglobal-management/its:dev-master   "docker-php-entrypoi…"   19 seconds ago   Up 18 seconds   9000/tcp                                                                                                        docker_its_1
91d6e36460d3   eu.gcr.io/etsglobal-management/rabbitmq         "docker-entrypoint.s…"   20 seconds ago   Up 19 seconds   4369/tcp, 5671-5672/tcp, 15671/tcp, 15691-15692/tcp, 25672/tcp, 0.0.0.0:15672->15672/tcp, :::15672->15672/tcp   docker_rabbit_1
6c86b55ae5bb   mongo:4.2                                       "docker-entrypoint.s…"   20 seconds ago   Up 19 seconds   0.0.0.0:27017->27017/tcp, :::27017->27017/tcp                                                                   docker_mongo_1
0d6f9dc0d0a3   eu.gcr.io/etsglobal-management/nginx            "/docker-entrypoint.…"   20 seconds ago   Up 19 seconds   0.0.0.0:80->80/tcp, :::80->80/tcp, 443/tcp                                                                      docker_nginx_1
```


Tout à l'heure, tu as lancé deux conteneurs, 
un à partir de l’image `hello-world` et ubuntu. 
Les deux conteneurs ne sont plus actifs, mais ils existent toujours sur ta machine.

Pour voir tous les conteneurs, actifs et inactifs, 
lances l'instruction `docker ps` avec l'option `-a`,
comme ceci ```docker ps -a```, et le résultat devrait ressembler à ceci :

```shell
CONTAINER ID   IMAGE                                           COMMAND                  CREATED         STATUS                     PORTS                                                                                                           NAMES
5f8a2fb3cad0   eu.gcr.io/etsglobal-management/its:dev-master   "docker-php-entrypoi…"   6 minutes ago   Up 6 minutes               9000/tcp                                                                                                        docker_its_1
91d6e36460d3   eu.gcr.io/etsglobal-management/rabbitmq         "docker-entrypoint.s…"   6 minutes ago   Up 6 minutes               4369/tcp, 5671-5672/tcp, 15671/tcp, 15691-15692/tcp, 25672/tcp, 0.0.0.0:15672->15672/tcp, :::15672->15672/tcp   docker_rabbit_1
6c86b55ae5bb   mongo:4.2                                       "docker-entrypoint.s…"   6 minutes ago   Up 6 minutes               0.0.0.0:27017->27017/tcp, :::27017->27017/tcp                                                                   docker_mongo_1
0d6f9dc0d0a3   eu.gcr.io/etsglobal-management/nginx            "/docker-entrypoint.…"   6 minutes ago   Up 6 minutes               0.0.0.0:80->80/tcp, :::80->80/tcp, 443/tcp                                                                      docker_nginx_1
ce34fceb7d27   ubuntu                                          "bash"                   7 minutes ago   Exited (0) 7 minutes ago                                                                                                                   elastic_banach
82dbdf785d6a   hello-world                                     "/hello"                 6 seconds ago   Exited (0) 15 minutes ago                                                                                                                   jolly_aryabhata
```

Pour démarrer un conteneur arrêté, lances l'instruction `docker start`, suivi de l’ID du conteneur ou de son nom. 
Le conteneur ID est l'identifiant unique d'un conteneur, chaque conteneur créé se verra attribuer un ID unique par Docker.

Démarrons le conteneur basé sur Ubuntu à l'aide de son ID, `ce34fceb7d27` :

```docker start ce34fceb7d27```

Le conteneur démarre à nouveau, et tu peux avec `docker ps` voir son statut.

Pour arrêter un conteneur en cours d’exécution, utilise `docker stop`, suivi de l’ID ou du nom du conteneur. 
Cette fois, essayons d'utiliser le nom que Docker a attribué au conteneur, qui est `elastic_banach` :

```shell
docker stop elastic_banach
```

L'attribution des noms à chaque conteneur est fait aléatoirement par Docker, mais tu peux si tu le désires lui attribuer le nom que tu veux.
Je te laisse farfouiller dans la [documentation de Docker](https://docs.docker.com/engine/reference/run/) ou à l'aide de l'instruction `docker run --help`.

Pour supprimer un conteneur, lances `docker rm elastic_banach`.

:warning: malheureusement le résultat de cette instruction est plus que claire : 

```shell
Error response from daemon: You cannot remove a running container ce34fceb7d27ed2c5fd497fd51bf51c9f238af889b3b8c84736381de700a39eb. Stop the container before attempting removal or force remove
```

Ce qui veut dire que tu as l'obligation de d'abord stopper un conteneur avant de le supprimer.


## 3. Points importants à retenir
Avec Docker la vie est plus simple :).
Grâce à celui-ci, tu peux interagir avec DockerHUb, 
source absolue de toutes les images docker public.
Et enfin, tu peux avec Docker, manager le cycle de vie de tes conteneurs et images.


## 4. Pour aller plus loin
Pas besoin pour l'instant, nous allons avancer petit à petit dans la découverte de Docker.
