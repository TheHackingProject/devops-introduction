# Architecture de Docker
C'est bien beau de savoir utiliser Docker, mais comment le logiciel Docker est fait concrètement.
C'est la question à laquelle on va essayer d'apporter une réponse.

## 1. Introduction
La documentation de Docker offre une très bonne [introduction de l'architecture Docker](https://docs.docker.com/get-started/overview/#docker-architecture), 
je te laisse analyser cela tranquillement.

C'est bon t'as finis ? Cool

Mais avant de passer au prochain cours,
laisse-moi, cher dev, t'en apprendre davantage sur l'architecture Docker.

## 2. La ressource
### 2.1. Vue d'ensemble
Le logiciel Docker est ce que l'on appelle un logiciel `Client-server architecture`,
ce qui veut dire que dans ce logiciel se trouve deux sous-logiciels le `Docker Daemon`
et le `client`. Dans cette architecture le `client` communique avec plusieurs `deamons`lancé par `Docker daemon`.

PS. Avant de continuer et pour être sûre que l'on est tous sur la même longueur d'onde,
voici la différence entre [un daemon, un process et un service](https://help.interfaceware.com/v6/differences-between-processes-daemons-and-services)

En réalité, quand tu rentres des commandes Docker voilà ce qui se passe :
1. Le `client`via une API REST qui transmet ta commande au `Docker daemon`. 
2. Le `Docker daemon` s'occupe de tout le reste, c'est-à-dire, télécharger les image, créer et lancer les conteneurs, pousser les images, etc. 

Juste pour re-situer les informations que tu as vues dans la documentation de Docker le `dockerd` est le `Docker Daemon` et `docker` est le `client`.
Et enfin le `docker registries` est l'endroit où les images sont stockés, par défaut `Docker daemon` est configuré pour interagir avec DockerHub, 
mais tu peux très bien configurer un `registry` privé. 
Mais passons, c'est juste des termes de l'écosystème Docker dont on se passera pour le moment 🙂.

Bien, allons voir un peu plus en détails comment le logiciel Docker est fait.


### 2.2. Docker "under the hood"
Docker est écrit en [Go](https://go.dev/) un langage tres répandu dans l'écosystème des conteneurs, 
ce langage permet à Docker d'être assez modulable. 
Ce qui veut que lors de l'installation de Docker, 
il installe par défaut les composants les plus importants qui sont :
- le `client` 
- `Docker daemon`
- `containerd` : Gérer par `Docker daemon`, il est responsable de la gestion du cycle de vie des conteneurs (creation, suppression, etc.)
- et le`runc` : Gérer par `Docker daemon`, il lance les conteneurs selon des spécifications précise décidé par une organisation appelée `Open Container Initiative (OCI)` 

C'est en réalité l'association de ces 4 composants qui permettent la création d'un conteneur.

Voici un schéma pour illustrer tous ça.
![Docker OCI](https://i.imgur.com/sVGevuD.png)


## 3. Points importants à retenir
En résumé, tu dois garder en tête que Docker est ensemble de composants qui ont chacun un rôle bien précis.
Le "front" aussi appelé `client` envoie les commandes au "back" `docker daemon` via une API REST. 
Ensuite `docker daemon` communique à son tour avec `containerd` et `runc` pour créer un conteneur.

## 4. Pour aller plus loin
Ce cours n'est qu'un petit avant gout du monde extraordinaire des conteneurs Docker 😍.
Et vous aurez j'en suis sûr l'occasion au cours votre carrière d'en apprendre davantage sur les composants que l'on vient de voir.
Mais avant cela, si tu souhaites en savoir un peu plus voici 
un [article](https://www.grottedubarbu.fr/container-runtimes-c-est-quoi/) va littéralement t'assoiffer d'en apprendre plus sur Docker. :smiley:
