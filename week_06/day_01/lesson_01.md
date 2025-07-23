# Découverte de Docker

## 1. Introduction
Docker est aujourd'hui l'outil incontournable pour créer des conteneurs. L'objectif de ce premier jour est de comprendre son intérêt et d'apprendre à lancer ses premiers conteneurs.

## 2. Historique et contexte
Né en 2013 chez dotCloud, Docker a popularisé les conteneurs en les rendant simples à utiliser pour tous.

## 3. La ressource
### 2.1. Pourquoi Docker ?
Avant Docker, déployer une application signifiait souvent configurer des serveurs manuellement. Avec la conteneurisation, tout l'environnement est décrit dans une image et se lance de la même manière partout.

### 2.2. Installer Docker
Rends-toi sur [docker.com](https://www.docker.com) et installe la version adaptée à ton système. Vérifie ensuite que la commande `docker` fonctionne dans ton terminal.

### 2.3. Lancer son premier conteneur
Essaye la commande suivante pour afficher un message :

```bash
docker run hello-world
```

Docker va télécharger l'image `hello-world` et exécuter un petit programme qui confirme que tout fonctionne.

### 2.4. Construire sa propre image
Crée un fichier `Dockerfile` minimal avec une instruction `FROM` puis `COPY` de ton code. Termine par un `CMD` lançant ton application. Exécute `docker build -t monapp .` pour générer l'image.

### 2.5. Docker Compose
Lorsque ton application nécessite plusieurs services (base de données, cache), définis-les dans un `docker-compose.yml`. La commande `docker compose up` lancera l'ensemble facilement.

## 4. Points importants à retenir
- Docker simplifie grandement la livraison d'applications.
- Une image se comporte toujours de la même façon quel que soit l'hôte.
- La commande `docker run` permet de démarrer un conteneur à partir d'une image.

## 5. Pour aller plus loin
Parcours la documentation officielle pour te familiariser avec les commandes de base `docker ps`, `docker stop`, `docker rm`.
Teste aussi [Play with Docker](https://labs.play-with-docker.com/) pour pratiquer rapidement sans rien installer sur ta machine.

