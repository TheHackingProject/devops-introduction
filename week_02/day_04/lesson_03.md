# Docker-compose - Le réseau

## 1. Introduction

**Le réseau est plutôt complexe à comprendre !**

Et c'est normal, Docker a mis des années à le mettre en place et à couvrir la plupart des cas d'utilisation
afin que nous, les utilisateurs, puissent adhérer au produit.

Pour ne rien te cacher, il est normal de mettre quelques années avant de comprendre tous les composants et la manière dont marche le réseau Docker.
Mais pas de panique, mon seul but est encore une fois de te faire découvrir les bases et pour que tu puisses voler de tes propres ailes. 😃


## 2. La ressource
### 2.1. L'architecture réseau de Docker

L'implémentation du réseau Docker se base sur l'architecture CNM (Container Networking Model). 
Docker considère le `CNM` comme un modèle, une philosophie, et pas quelque chose de figé,
car il est possible d'implémenter cette architecture de plusieurs manières différente.

Ici nous allons uniquement nous concentrer sur son fonctionnement global, et pour ça, on va partir d'une representation assez répandue de cette philosophie.

![Docker CNM](https://i.imgur.com/uHSXmqv.png)

Ci-dessus, tu as un schéma qui illustre assez bien le `CNM` et comme tu le vois, il y a beaucoup de choses dessus, essayons donc comprendre chaque élément un par un :

- Sandbox : c'est une **unité de réseau isolé** qui contient tous les composants nécessaires associés à un seul conteneur. 
  En d'autres mots, c'est une representation miniature des composants réseaux qui se trouvent sur ta machine.

  Et devines comment Docker arrive à faire ça ? Eh bien en utilisant le namespace réseau de Linux bien sûr ! 😃


- Endpoint : **Un `Endpoint` vit dans la `Sandbox` et a pour role de connecter le conteneur au `Network`**.
  
  Sans `Endpoint` la communication entre les conteneurs serait impossible.

  Autre point, comme on le voit le schéma, ci-dessus, **un conteneur peut avoir plusieurs `Endpoint` mais exactement un `Endpoint` pour chaque `Network`**.


- Network : C'est tout simplement une collection de `Endpoint` relié entre eux.


- Docker Engine : Tu connais déjà ce composant. 😉
  
  C'est le maître à bord, il contrôle l'interaction de tous les composants que soit le `CNM`, la gestion des conteneurs, etc.
  
  
- Network Driver : En charge de gérer l'implémentation globale du `CNM`.


- IPAM (IP Address Management) Driver : Permet l'allocation du sous-réseau et des IPs, pour les composants `Endpoint` et `Network`.


- Underlying Network Infrastructure : Fait reference aux différents éléments de ta machine qui permettent la création de tous les autres composants.

Maintenant que tu as cette vue d'ensemble, attardons-nous un peu sur les différents `Network driver` et leurs utilités.

### 2.2. Network Driver

Hier on a dit que Docker de manière générale avait une architecture modulaire, ce qui permet à l'utilisateur de supprimer ou ajouter des composants selon le besoin.

Justement, il se trouve que le composant `Network` de Docker est un example parfait de cette architecture. Dans le sens où tu as la possibilité avec Docker de choisir le type de composant `Network` que tu souhaites. Chaque composant `Network` est implémenté par le `Network Driver` correspodant.
Nous n'allons pas explorer tous les `Network Driver`, parce qu'il y en a beaucoup, notamment ceux crées et maintenu par la communauté Docker.

Nous allons ici nous concentrer sur les cinq `Network Driver` qui viennent à avec Docker : 

- Host
- BRidge
- Overlay
- MACVLAN
- None

T'expliquer la spécificité de chaque `Driver` et son utilité, prendrait un parcours entier et ne serait pas très intéressant pour toi à l'heure actuelle. 
C'est pour cela qu'avec cette [video](https://www.youtube.com/watch?v=5grbXvV_DSk&t=697s), tu vas avoir un rapide apercu de ces `Network Driver`, ce qui sera entièrement suffisant pour que tu aies des bases solides.

Maintenant que tu possèdes toutes les connaissances nécessaires, place à la pratique. 😄


### 2.2. Le réseau avec Docker

Je t'invite à suivre et à reproduire les examples que Xavki va te montrer dans cette [video](https://www.youtube.com/watch?v=YcAWluYkVXc).

### 2.3. Le réseau avec Docker-compose

Encore une [video](https://www.youtube.com/watch?v=hxVxmh3MlD8) de Xavki pour te montrer comment jouer avec le réseau Docker à travers Docker-compose.
N'hésite pas à reproduire les examples que tu vas voir, ça va grandement t'aider à solidifier les connaissances que tu viens d'acquérir.

## 3. Points importants à retenir
Voici les points importants à retenir :

- Les concepts derrière le `CNM`


- Le rôle des principaux composants du `CNM`


- Pas besoin de retenir le role de chaque `Network Driver` excepté pour les deux principaux, à savoir le `Bridge Network` utilisé dans 90% des cas en locale 
  et le `Overlay Network` qui sert à lancé Docker sur plusieurs machines en même temps.

## 4. Pour aller plus loin
Tu l'as compris le réseau Docker est très vaste, très complexe et très challengeantes, je ne sais pas toi, mais le trio "vaste, complexe et challenges" me fait sauter de joie. 😃
  
Enfin bref, pour aller plus loin, le meilleur point de départ est la [documentation officielle de Docker sur le réseau](https://docs.docker.com/network/)
