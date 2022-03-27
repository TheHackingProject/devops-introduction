# Manage plusieurs images et conteneurs avec Docker-compose

## 1. Introduction
Comme tu l'as vu hier managé un Dockerfile ce n'est pas un problème, 
mais lorsque tu commences à vouloir manager plusieurs Dockerfile ça devient un peu compliqué.

Et pour pallier ça, Docker nous a trouvé une solution qui s'appelle `Docker-compose`.

`Docker-compose` est une syntaxe plus évoluée, que celui du Dockerfile,
qui va associer plusieurs conteneurs, avec pour chaque conteneur les paramètres que l'on a vu hier (volume, port exposer, etc.)
pour **composer** tout un système. 
Afin de manipuler plusieurs petits conteneurs plutôt qu'un seul grand "monolithique". 
Le lancement de tous les conteneurs se fera en une seule commande : `docker compose up`.

Assez de blabla et place à la pratique.

## 2. La ressource
### 2.1. Docker-compose les bases et delà

Tout d'abord tu dois, cher dev installé Docker-compose et pour cela [la documentation officielle](https://docs.docker.com/compose/install/) sera ta boussole.

Comme hier, je t'ai dégoté [un super tutoriel](https://openclassrooms.com/fr/courses/2035766-optimisez-votre-deploiement-en-creant-des-conteneurs-avec-docker/6211624-decouvrez-et-installez-docker-compose) sur Docker-compose.

Ce tutoriel est volontairement minimaliste car, je veux que découvrir la syntaxe de Docker-compose par tes propres moyens :wink:.

## 3. Points importants à retenir
Tout comme le code, le creation d'un fichier Docker-compose peut se faire de plusieurs manières différentes.
Dans le tutoriel, tu as découvert la syntaxe de base maintenant à toi d'explorer les vastes possibilités de Docker-compose.
Mais avant de partir à l'aventure, cher, dev, voici ce que tu dois retenir de ce cours :

- La syntaxe de Docker-compose est très pointilleux, n'hésite pas de temps en temps à lancer la commande `docker-compose config` pour vérifier.
- Certaines erreurs vont te rendre fou au début, mais pas de panique, c'est la force de Docker qui rentre en toi.
- Réfères toi le plus souvent possible à la documentation de Docker-compose, car elle est très complète.


## 4. Pour aller plus loin
Pas besoin pour l'instant.