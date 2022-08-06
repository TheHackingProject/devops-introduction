# Faciliter la construction d'une image avec Dockerfile.

## 1. Introduction
On a vu précédemment comment créer un conteneur à partir d'une image Docker téléchargé depuis DockerHub.
Une fois ce conteneur en route, on a vu qu'il était possible de le modifier, créer une image à partir de ce conteneur et partagé cette nouvelle image.

Mais tout cela est très "manuel", par exemple la modification d'une image qui nécessite de rentrer dans le conteneur, faire ses modifications et ensuite "committer".

Eh bien, cher dev, Docker à penser aussi à cela et pour nous faciliter la vie, à nous fidèles utilisateurs, ils ont créés le **Dockerfile**. :boom:

**Un Dockerfile est tout simple un fichier texte avec des instructions sur la manière dont tu veux construire ton image.**

## 2. La ressource
### 2.1. Dockerfile, mais qu'est-ce donc ?

Merci de poser cette question très pertinent 😉.

Et pour te répondre, rien de mieux que celui qui a été ou qui va être ton mentor à un moment ou un autre, j'ai nommé *Grafikart*. 

Vive Grafikart, [the real King in the north](https://www.youtube.com/watch?v=ff35SjsN7g0) !

[Voici son tutoriel sur le Dockerfile](https://grafikart.fr/tutoriels/dockerfile-636), il comprend tous les éléments pour bien débuter avec les Dockerfile.
Il est possible qu'à la fin du tutoriel, tu n'es pas tout compris, mais ce n'est pas grave, 
car nous reviendrons sur certains éléments comme les volumes dans les prochains cours.

## 3. Points importants à retenir
Voici les points important à retenir : 

- les instructions de base que tu as vu dans le tutoriel.
- la différence entre l'instruction `ADD` et `COPY`. 
  Je te laisse chercher la différence par tes propres moyens 😜.
- la différence entre l'instruction `ENTRYPOINT` et `CMD`. 
  Tu peux trouver la différence très facilement, je te fais confiance.
- gardes bien en tête la notion de "layer" qui a été évoqué dans le tutoriel. 
  Ce sujet revient assez souvent dans les entretiens technique, de ce fait,
  pour être bien à l'aise quand la question fatidique va tomber, voici un [article](https://blog.engineering.publicissapient.fr/2020/03/26/autour-des-conteneurs-docker-build-et-ses-layers-docker-en-tient-une-couche/) qui va t'en apprendre plus.

## 4. Pour aller plus loin
Créer un Dockerfile, c'est bien, mais le créer en suivant les bonnes pratiques, c'est magique ! 😍
[Voici un résumé de ces bonnes pratiques](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/)
