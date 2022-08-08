# Dockeriser ses applications - Niveau 3

## 1. Introduction
Aujourd'hui, tu vas enfin créer un fichier Docker-compose digne d'être utilisé par les devs de Netflix. 😃

## 2. Le projet
### 2.1. Scénario

De retour dans ta super startup, ton dernier workshop était plus convaincant d'après les remarques que tu as eues juste après le workshop.
Et d'ailleurs la plupart des dev de ta team attendent la suite avec impatience.

Mais depuis quelques jours, c'est assez "speed" au bureau, car il y a 2 jours, vous avez subi une attaque [DDoS](https://cloudflare.com/fr-fr/learning/ddos/what-is-a-ddos-attack/), de ce fait,
le CTO, les lead dev et les SysOps sont débordés par la réparation des dégâts et enchaînement les réunions pour trouver la meilleure solution pour éviter ce type d'attaque l'avenir.
Et pour ne rien arranger le CEO, trouve que le service IT coûte vraiment cher par rapport 
aux nombres d'applications et outils nécessaires au fonctionnement de la startup.

C'est au cours d'une pause déjeuner où les lead devs vous ont rejoint que l'annonce est tombée.
Vous aller dans les prochaines semaines migrer vers le Cloud au lieu de continuer à maintenir des serveurs et à gérer tous les inconvénients liés à cela.

En attendant cette annonce faite par la lead dev, tu dis, mais quel type de "Cloud" on va utiliser ?

Je ne sais pas pour l'instant une étude là-dessus est en cours et dans quelques jours, une annonce officielle sera faite.
D'ici là, on continue à coder et à "push" et mettre en production sur nos serveurs actuels.

Merci pour l'info ! Dans ta tête tu te dis, mais j'aurais vraiment tous vécu dans cette startup, 
j'ai de la chance d'avoir été embauché ici.

Un peu plus tard dans la journée un collègue t'accoste. Dis-moi, j'ai essayé de créer un fichier docker-compose 
à l'aide du workshop de la dernière fois et j'ai bien réussis,
mais quand je fais des changements sur les applications je suis obligé de recréer les images à chaque fois, 
tu saurais comment éviter ça ? En plus tapper les commandes Docker-compose, c'est usant à la longue !

Tu réponds, ah mais, je n'y avais pas pensé à ça, je t'avoue que pour l'instant je ne sais pas comment faire, mais je vais me renseigner, 
je te dirais une fois que j'aurais trouvé comment faire, merci pour ta remarque !


### 2.2. Feuille de route
1. Tu vas reprendre le project d'hier et 
faire en sorte que le changement de code dans ton application ROR et React soit visible 
dans le conteneur associé sans avoir besoin de reconstruire les images et les relancer.


2. Ajouter un Makefile pour simplifier les commandes docker-compose
   
Ce Makefile aura pour objectif :
- de cloner à partir de github les deux applications via `make git-clone-all`
- de "pull" la branche master des deux applications via `make git-pull`
- de démarrer la stack en mode détacher via `make start`
- d'arrêter la stack via `make stop`
- d'arrêter et supprimer les conteneurs via `make kill`
- de supprimer les volumes créer par ta stack via `make rm-volumes`
- de lancer les migrations de ton application ROR via `make run-rails-migration`
- d'afficher les IPs de tous les conteneurs via `make display-ip`
- **de suivre** les logs d'un conteneur spécifique via `make flogs-<app-name>`
- de force la construction des applications via `make build-all`
- de force la construction d'une application spécifique via `make build-<app-name>`


3. Faire en sorte que le conteneur `mysql` démarre avant les autres conteneurs.


## 3. Rendu attendu
Un repo github qui contient, le fichier docker-compose et le Makefile qui va bien.
