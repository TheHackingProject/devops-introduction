# Faciliter la construction d'une image avec Dockerfile.

## 1. Introduction
On a vu précédemment comment créer des conteneurs à partir d'une image Docker téléchargé depuis DockerHub.
Une fois le conteneur en route, on a vu qu'il était possible de modifier ce conteneur, créer une image à partir de ce conteneur et partagé cette nouvelle image.

Mais tout cela est très "manuel", sur la modification d'une image qui nécessite de rentrer dans le conteneur, faire ses modifications et ensuite committer.

Eh bien, cher dev, Docker à penser aussi à cela et pour nous faciliter la vie à nous fidèles utilisateurs, ils ont créés le **Dockerfile**. :boom:

**Un Dockerfile est tout simple un fichier text avec des instructions sur comment tu veux construire ton image.**

## 2. La ressource
### 2.1. Dockerfile, mais qu'est-ce donc ?

Merci de poser cette question très pertinent <emofi>.

Et pour ça rien de mieux que celui qui a été ou qui va être ton mentor à un moment ou un autre, j'ai nommé *Grafikart*. 

Vive Grafikart, [the real King in the north](https://www.youtube.com/watch?v=ff35SjsN7g0) !

[Voici son tutoriel sur le Dockerfile](https://grafikart.fr/tutoriels/dockerfile-636), qui comprend tous les éléments pour bien débuter avec les Dockerfile.

## 3. Points importants à retenir


## 4. Pour aller plus loin
Créer un Dockerfile, c'est bien, mais le créer en suivant les bonnes pratiques, c'est magique :smiley.
[Voici un résumé de ces bonnes pratiques](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/)