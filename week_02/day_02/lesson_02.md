# Les différentes couches des images Docker.

## 1. Introduction
Les conteneurs peuvent être transformés en images que vous pouvez utiliser pour construire de nouveaux conteneurs. 
Voyons comment cela fonctionne.

## 2. La ressource
### 2.1 Créer une image custom
Lorsque tu démarres une image Docker, tu peux manager son cycle de vie, à savoir :
- créer, 
- modifier 
- supprimer 

Tu peux également gérer les fichiers, paquets et autre comme avec une machine virtuelle. 
Les modifications que tu vas apporter ne s’appliquent qu’à ce conteneur. 
Avec tes modifications, tu pourras le démarrer et l’arrêter sans perte de données, 
mais une fois que tu l’auras détruit, les modifications seront perdues pour de bon.

La prochaine questions chere dev, c'est comment éviter de perdre nos modifications une fois que le conteneur est supprimé ? 

Voyons cela étape par étape.

Par example, disons que tu viens d'installer Node.js dans le conteneur qui a pour image de base `ubuntu:18.04`.
À partir du moment où tu as installé Node.js le conteneur est devenu différent de celui de base.
Mais toi ce que tu veux, c'est de pouvoir re-utiliser ce conteneur modifié comme nouvelle image de base pour d'autres besoins. 
Pour ce faire tu utilises cette syntaxe : 

```shell
docker commit -m "<commit message>" -a "<author name>" <container_id> <repository/new_image_name>
```

- L'option -m est destiné au message qui synthétise que tu as sur l'image, exactement comme les commit Git.
- L'option -a est utilisé pour spécifier l’auteur. 
- Le `container_id` est celui que tu as vu dans le premier cours lorsque tu tapes `docker ps -a`. 
- Le `repository/new_image_name` à ton compte Docker Hub, de ce fait je t'invite dès maintenant [à créer ton compte DockerHub](https://hub.docker.com/signup).
  `repository`, fait référence au [docker_id](https://docs.docker.com/docker-id/) et `new_image_name` au nom que tu souhaites donner à ta nouvelle image.

Par exemple, pour l’utilisateur `themindset`, avec l’ID de conteneur ce34fceb7d27, l'instruction serait :

```shell
docker commit -m "added Node.js" -a "themindset" ce34fceb7d27 themindset/ubuntu-nodejs
```
Une fois l'instruction taper, la nouvelle image est enregistrée localement sur ta machine. 
Tu peux la retrouver avec un `docker images` des familles.


:warning: À garder en tête, la nouvelle image `ubuntu-nodejs` dérivée de l’image `ubuntu` qui pour tag `18.04` est différent, car elle plus lourde à cause des paquets nécessaires à l'installation de Node.js ont été ajoutée. 

Tu sais maintenant créer des images custom, 
il est temps maintenant de la pousser sur DockerHub afin que tout le monde s'extasie devant elle 
et créent leurs conteneurs à partir de celle-ci.

### 2.2. Pousser des images Docker sur DockerHub

Pour pousser votre image, tu dois d'abord te connecter à DockerHub.

```shell
docker login -u <docker-hub-username>
```
Tu vas ensuite être invité à rentrer ton mot de passe DockerHub et si ton mot de passe est bueno, l’authentification devrait réussir avec un résultat semblable à ceci : 
```shell
➜  ~ docker login                                                                                                                                 
Login with your Docker ID to push and pull images from Docker Hub. If you don't have a Docker ID, head over to https://hub.docker.com to create one.
Username: themindset
Password: 
WARNING! Your password will be stored unencrypted in /home/gui/.docker/config.json.
Configure a credential helper to remove this warning. See
https://docs.docker.com/engine/reference/commandline/login/#credentials-store

Login Succeeded
```

:warning: Si votre nom d’utilisateur sur DockerHub est différent 
du nom d’utilisateur local que tu as utilisé pour créer l’image, 
Tu vas devoir tagger ton image avec votre nom d’utilisateur de ton compte DockerHub, example :

```shell
docker tag themindset/ubuntu-nodejs <docker-hub-username/ubuntu-nodejs>
```

Ensuite, pousses l'image avec cette instruction `docker push <docker-hub-username/ubuntu-nodejs>`, par example :

```shell
➜  ~ docker push themindset/ubuntu-nodejs                                                                                                         (gke_etsglobal-demo_europe-west1-b_demo-cluster/default)
Using default tag: latest
The push refers to repository [docker.io/themindset/ubuntu-nodejs]
2c939e339c2e: Pushed 
867d0767a47c: Mounted from library/ubuntu 
latest: digest: sha256:ec4a7795f60d7c9ff1bcc33df2991f080a65ce93d79d152193858b42ded15a3d size: 741
```


Sur DockerHub tu peux retrouver ton image sur le tableau de bord de ton compte, comme l’image ci-dessous.

![Docker image pushed on DockerHub](https://i.imgur.com/0fiUhRt.png)


## 3. Points importants à retenir
Avec Docker tu peux facilement créer des images custom, une fois satisfait de ta nouvelle image tu peux la pousser sur un registre officiel 
où se trouve la plupart des images Docker.
Et cela en créant un compte et en te connectant dessus depuis ton terminal.

## 4. Pour aller plus loin
Pas besoin pour le moment.
