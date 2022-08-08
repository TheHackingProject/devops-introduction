# Docker-compose - Les volumes

## 1. Introduction
Ce cours a pour objectif d'aborder le problème des "données persistantes" dans les conteneurs,
mais aussi de comprendre pourquoi c'est devenu au fil du temps un problème.


## 2. La ressource
### 2.1. Le contexte
Jusqu'à maintenant tu t'es juste préoccupé de comprendre et gérer le cycle de vie des conteneurs.
Mais dans le projet d'hier, tu as commencé à aborder le sujet des "données persistantes".
Cette première expérience était une introduction aux concepts et type d'architecture que nous allons détailler aujourd'hui.

Les conteneurs ont été créer en tant que "immutable" et "ephemeral", cela sous-entends "inchangeable" et "temporaire".
Concrètement cela signifie que l'on peut facilement supprimer un conteneur et en créer un autre à partir de la même image.
**Ce qu'il faut comprendre ce que cette manière d'utiliser les conteneurs n'est pas un "défaut" mais tous simplement le but des conteneurs, ce type d'architecture est appelé "immutable infrastructure".**

Une infrastructure immuable, veut dire que lorsque l'on a lancé un conteneur, on ne doit plus y toucher. Pour changer sa configuration, mettre à jour des librairies, etc., il faudra supprimer et ensuite re-déployer le conteneur à nouveau.
Ce type d'architecture à des bénéfices :
- fiabilité
- cohérence sur ce qui se trouve dans le conteneur
- reproduire des erreurs ou des comportements à coup sûr.

Mais ces bénéfices nécessitent des compromis sur la manière de gérer les données, car comme nous l'avons vu, 
une fois le conteneur supprimer plus aucune donnée existent sauf si on "commit" les changements.
Mais "commit" à chaque modification serait impossible à manager à long terme et surtout en production 😢.

L'un des idées phares dans le monde des conteneurs dit ceci : le conteneur où se trouve une application/outil ne doit pas contenir des données de cette même application/outil.
Ce type d'idéal est appelé "separation of concerns" et Docker nous permet d'utiliser cette idéale à l'aide des `volumes` et des `bind mounts`.

Les `volumes`, permettent de créer un endroit spécial **à l'extérieur du `file system` du conteneur**, donc sur la machine où est lancé Docker (le host), où sauvegarder les données.
Cette "endroit" sera préservé si le conteneur est effacé et nous permettra également cette "endroit" à n'importe quel autre conteneur.

Les `bind mounts`, sont des fichiers/dossiers détenus par le host et partagés avec un conteneur.

**Que ce soit les `volumes` ou les `bind mounts` un conteneur à l'intérieur, voit ces éléments comme des fichiers/dossiers locaux.**

Bien, il est temps de passer à la pratique.

### 2.1. Les volumes et "bind mounts" avec Docker

Voici [un article](https://guillaume.fenollar.fr/blog/docker-volumes-mount-difference/#utiliser-un-bind-mount) qui résume bien la différence et les cas d'utilisation de ces deux types de volumes Docker.
 
### 2.1. Les volumes et "bind mounts" avec Docker-compose
Avec Docker uniquement, c'est bien, mais avec Docker-compose, c'est encore mieux 😄.

Et pour explorer ce sujet à l'aide d'une [video de Xavki](https://www.youtube.com/watch?v=hxVxmh3MlD8&list=PLn6POgpklwWqaC1pdx02SrrgOaL2ZL7G0&index=3) vaut mieux qu'un long discours. 😉

## 3. Points importants à retenir
Voici ce qu'il faut retenir : 
- La différence entre les stockages de type `volume` et `bind mounts`


- Les `volumes` et `bind mounts` doivent être supprimés manuellement, ils ne se suppriment pas en même temps que la fin de vie d'un conteneur.

  C'est une sécurité supplémentaire, car Docker estime que si on utilise les `volumes Docker` ce que l'on veut garder précieusement nos données.


- A ton avis, quelle(s) namespace(s) est l'œuvre lorsqu'il s'agit des volumes ? 😄

## 4. Pour aller plus loin
[La documentation de Docker](https://docs.docker.com/storage/) sur le stockage est excellent je vous invite lire cette partie en entier.
