# Docker-compose - Les volumes

## 1. Introduction
Ce cours a pour objectif d'aborder le problème des "données persistantes" dans les conteneurs,
mais aussi de comprendre pourquoi c'est devenu un problème à la base


## 2. La ressource
### 2.1. Le contexte
Jusqu'à maintenant tu t'es juste préoccuper de comprendre et avoir tous les éléments nécessaires pour lancer des conteneurs.
Mais au cours du projet d'hier, tu as commencé à aborder le sujet des "données persistantes".
Cette première expérience était une introduction aux concepts et type d'architecture que nous allons détailler aujourd'hui.

Les conteneurs ont été créer en tant que "immutable" et "ephemeral", cela sous-entends inchangeable et temporaire.
De manière pratique cela signifie que l'on peut facilement supprimer un conteneur et en créer un autre à partir de la même image.
**Ce qu'il faut comprendre ce que cette manière d'utiliser les conteneurs n'est pas un "défaut" mais tous simplement le but des conteneurs, ce type d'architecture est appelé "immutable infrastructure"**

Une infrastructure immuable, c'est lorsqu'on ne peut changer le conteneur une fois celui-ci lancé. Pour changer sa configuration, mettre à jour des librairies, etc., il faudra re-déployer le conteneur à nouveau.
Ce modèle vient des bénéfices :
- fiabilité
- cohérence sur ce qui se trouve dans le conteneur
- reproduire des erreurs ou des comportements à coup sûr.

Mais aussi des compromis sur la manière de gérer les données, car comme nous l'avons vu, 
une fois le conteneur supprimer plus aucune donnée existent sauf si on "commit" les changements.
Mais "commit" à chaque modification serait impossible à gérer à long terme et surtout en production.

Alors qu'idéalement le conteneur ou se trouve une application ou un outil ne devraient pas contenir les données.
Ce type d'idéal est appelé "separation of concerns" et Docker nous permets d'utiliser cette idéale à l'aide des `volumes` et des `bind mounts`.

Les `volumes`, permettent de réer un endroit spécial à l'extérieur du `file system `du conteneur où sauvegarder les données.
Cette "endroit" sera préservé si le conteneur est effacé et nous permettra également d'attacher n'importe quel autre conteneur.

Les `bind mounts`, sont des fichiers partagés ou monté par le host dans un conteneur

**Que ce soit les `volumes` ou les `bind mounts` un conteneur, à l'intérieur, vois ces éléments comme des fichiers locaux.**

Bien, il est temps de passer à la pratique

### 2.1. Les volumes et "bind mounts" avec Docker

Voici [un article](https://guillaume.fenollar.fr/blog/docker-volumes-mount-difference/#utiliser-un-bind-mount) qui résume bien la différence et les cas d'utilisation de ces deux types de volumes en les instructions Docker.
 
### 2.1. Les volumes et "bind mounts" avec Docker-compose
Avec Docker uniquement, c'est bien, mais avec Docker-compose, c'est encore mieux :).

Et pour explorer cette partie, [une video de Xavki](https://www.youtube.com/watch?v=hxVxmh3MlD8&list=PLn6POgpklwWqaC1pdx02SrrgOaL2ZL7G0&index=3) vaut mieux qu'un long discours. :wink:

## 3. Points importants à retenir
Voici ce qu'il faut retenir : 
- La différence entre les stockages de type `volume` et `bind mounts`


- Les `volumes` et `bind mounts` doivent être supprimés manuellement, ils ne se suppriment pas en même temps que le conteneur.

  C'est une sécurité supplémentaire, car Docker estime que si on utilise les `volumes Docker` ce que l'on veut garder précieusement nos données.


- A ton avis quelle(e) namespace(s) est l'œuvre lorsqu'il s'agit des volumes ? :smiley:

## 4. Pour aller plus loin
[La documentation de Docker](https://docs.docker.com/storage/) sur le stockage est excellent je vous invite lire cette partie en entier.