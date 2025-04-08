# Manage plusieurs images et conteneurs avec Docker-compose

## 1. Introduction
Comme tu l'as vu hier gérer un Dockerfile n'est pas un problème, 
mais lorsque tu commences à vouloir manager plusieurs Dockerfile ça devient un peu compliqué.

Pour pallier cela, Docker nous a trouvé une solution qui s'appelle le `Docker-compose`.

Un fichier`Docker-compose` a une syntaxe plus évoluée que le Dockerfile,
il va associer plusieurs conteneurs avec pour chaque conteneur les paramètres que l'on a vus hier (volume, port exposer, etc.)
pour **composer** tout un système. 
Afin de manipuler plusieurs petits conteneurs plutôt qu'un seul grand "monolithique". 
Le lancement de tous les conteneurs se fera en une seule commande : `docker compose up`.

Assez de blabla et place à la pratique.

## 2. La ressource
### 2.1. Docker-compose les bases et au-delà !

Tout d'abord tu dois cher dev, installé Docker-compose et pour cela [la documentation officielle](https://docs.docker.com/compose/install/) sera ta boussole.

Comme hier, je t'ai dégoté [un super tutoriel](https://openclassrooms.com/fr/courses/2035766-optimisez-votre-deploiement-en-creant-des-conteneurs-avec-docker/6211624-decouvrez-et-installez-docker-compose) sur Docker-compose.

Ce tutoriel est volontairement minimaliste, car je veux que tu découvres la syntaxe d'un fichier Docker-compose par tes propres moyens :wink:.

---
#### :warning: À garder en tête, 
Dans ce tutoriel, la commande utiliser est `docker-compose [OPTIONS] COMMANDS `.
Cependant, lorsque tu rentres la commande `docker-compose`, tu as ce résultat : 
```shell
➜  website git:(master) docker-compose
Usage:  docker compose [OPTIONS] COMMAND

Docker Compose

Options:
      --ansi string                Control when to print ANSI control characters ("never"|"always"|"auto") (default "auto")
      ...
```

Si tu fais bien attention tu verras écrit `Usage:   docker compose [OPTIONS] COMMAND`, sans le trait d'union entre `docker` et `compose`.

**C'est tout simplement parce que `docker compose` est la `v2` de `docker-compose`.**
Voici un [thread stack overflow](https://stackoverflow.com/questions/66514436/difference-between-docker-compose-and-docker-compose), si tu veux en savoir plus

---


## 3. Points importants à retenir
Tout comme le code, la création d'un fichier Docker-compose peut se faire de plusieurs manières différentes.
Dans le tutoriel tu as découvert la syntaxe de base, mais ils existent plusieurs façons de créer ton fichier Docker-compose en utilisant des syntaxes différentes.
Mais avant de partir à l'aventure, voici ce que tu dois retenir de ce cours :

- Certaines erreurs vont te rendre fou au début, mais pas de panique, c'est la force de Docker et de Docker-compose qui rentrent en toi.
- Réfère-toi le plus souvent possible à la documentation de Docker-compose, car elle est très complète.


---
#### 🚀 ALERTE BONNE ASTUCE
La syntaxe de Docker-compose est très pointilleux, 
n'hésite pas de temps en temps à lancer la commande `docker-compose config` 
pour vérifier que tu as syntaxe est correct. 

Hum cher moussaillon, je te sens perplexe !
De ce fait, pour que tu comprennes, voici un exemple d'une application en React.

Cette application ressemble à ceci : 
```shell
.
├── docker-compose.yml
├── Dockerfile
├── .env
├── .env.dist
├── .gitignore
...
├── package.json
├── public
│   ├── favicon.ico
│   ├── index.html
│   ├── manifest.json
│   └── robots.txt
├── README.md
├── src
...
├── tests
│   └── App.test.js
└── yarn.lock
```

Avec un fichier `docker-compose.yaml` qui ressemble à ceci : 
```yaml
version: '3.7'

services:
  wedding-website:
    container_name: website
    build:
      context: .
      dockerfile: Dockerfile
    command: ["sh", "-c", "yarn && yarn start"]
    volumes:
      - '.:/app'
    ports:
      - '3000:3000'
    env_file:
      - .env
```

Et des variables qui se trouvent dans le `.env` : 
```shell
website git:(master) cat .env                                                                                                          (gke_etsglobal-demo_europe-west1-b_demo-cluster/logging)
REACT_APP_CLIENT_EMAIL="test@email.com"
REACT_APP_PRIVATE_KEY="test.222" 
```

Maintenant si tu rentres la commande `docker-compose config` le dossier de ton application, voici le résultat que tu auras : 
```shell
➜  website git:(master) docker-compose convert                                                                                             (gke_etsglobal-demo_europe-west1-b_demo-cluster/logging)
name: wedding-website
services:
  wedding-website:
    build:
      context: /home/gui-pc/Desktop/Personal/website
      dockerfile: Dockerfile
    command:
    - sh
    - -c
    - yarn && yarn start
    container_name: website
    environment:
      REACT_APP_CLIENT_EMAIL: test@email.com
      REACT_APP_PRIVATE_KEY: test.222
    networks:
      default: null
    ports:
    - mode: ingress
      target: 3000
      published: "3000"
      protocol: tcp
    volumes:
    - type: bind
      source: /home/gui-pc/Desktop/Personal/website
      target: /app
      bind:
        create_host_path: true
networks:
  default:
    name: wedding-website_default
```

Si tu regardes attentivement, tu verras que cette commande a permis d'interpréter et afficher les variables qui se trouvent dans le `.env`.

Mais ce n'est pas tout ! Cette commande aussi de valider la syntaxe de ton fichier yaml.
Car si par example si dans le fichier yaml ci-dessus on s'était trompé sur une instruction, par exemple `conteneur_name` au lieu de `container_name`, 
la commande `docker compose convert` aurait retourné cette erreur : 

```shell
➜  website git:(master) docker compose convert
services.wedding-website Additional property conteneur_name is not allowed
```

---

## 4. Pour aller plus loin
Pas besoin pour l'instant.
