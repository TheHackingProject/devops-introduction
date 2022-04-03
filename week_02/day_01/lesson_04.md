# Découverte de LXC & LXD

## 1. Introduction
Maintenant tu as une bonne base théorique, il est temps de passer à la pratique et de créer ton premier conteneur Linux 💥

Comme tu viens de le voir, un conteneur est un ensemble d'éléments plus au moins complexe, voir très complexe, 
et à la sortie de ces 6 semaines on n'attend pas de toi que tu maitrises sur le bout des doigts les conteneurs.
Par contre il est important de connaitre le contexte général, et également de savoir comment les conteneurs ont évolué au fil des années.

Raison pour laquelle, nous allons aujourd'hui nous concentrer sur LXC & LXD qui sont des technologies rarement utilisées en production.

Ah bon, mais pourquoi on perd notre temps sur LXC & LXD ?

Cher dev, ta question est légitime, et je répondrai par ceci,
comprendre cette technologie va t'apporter une connaissance plus approfondie 
sur le fonctionnement des conteneurs Linux, car Docker qui est aujourd'hui la référence en matière de conteneur, n'est qu'une surcouche de LXC & LXD.
Et crois moi, que lors de tes futurs entretiens et tes débuts sur Docker en milieu professionnel, cette connaissance fera clairement la différence.


## 2. La ressource
### 2.1. Créer un conteneur Linux 
#### 2.1.1. Installer LXC et LXD

Avant même l'installation, laisse-moi juste rapidement évoquer la différence entre LXC & LXD :

- LXC : c'est un logiciel de virtualization, qui est différent d'un hyperviseur, car LXC opère au niveau du kernel Linux, comme on l'a vu précédemment.


- LXD : c'est une API REST qui permet d'interagir plus facilement avec LXC. LXD apporte également des améliorations supplémentaires liées à la gestion des conteneurs créée par LXC.


Bien, maintenant que c'est plus claire, il est temps de passer à l'installation de ces deux éléments, dans une VM créée à l'aide de Vagrant.

Je reformule, nous allons lancer un logiciel de virtualization du kernel Linux à l'intérieur d'une VM créée par un hyperviseur de type 2 😑 😲 😫 😤 🤯. 
Mais comment diable est-ce possible ?

Je te laisse trouver la réponse par tes propres moyens. 😄

Après avoir lancé une VM de type `ubuntu/bionic64` à l'aide de Vagrant et "SSH" à l'intérieur, je t'invite à suivre cet excellent [tutoriel](https://www.youtube.com/watch?v=CWmkSj_B-wo) qui va t'apprendre les commandes de base.

Au fil du tutoriel, essaye mentalement de faire la liaison 
entre les commandes/configurations que tu vas voir et les différents 
namespaces que tu as jusqu'ici découverts. 
Cela te permettra d'avoir une compréhension plus globale du fonctionnement des conteneurs.

Le tutoriel devient à la fin un peu complexe et tu n'as pas besoin pour l'instant 
de t'aventurer dans les eaux trop profondes, de ce fait, tu pourras t'arrêter à 41 min et 5 secondes.


## 3. Points importants à retenir
LXC & LXD sont les parents des conteneurs de manière générale.
Raison pour laquelle connaitre LXC est un excellent point de départ dans la découverte des conteneurs et l'écosystème.
Malgrès cela LXC a au fil du temps perdu de sa superbe pour plusieurs raisons que l'on évoquera demain. 
C'est pour cela qu'avoir une connaissance de LXC, non pas au niveau des commandes, 
mais de son fonctionnement général est le moyen le plus sûr d'attaquer Docker avec des bases solides. 


## 4. Pour aller plus loin
Il existe de nombreux articles/tutorials avancés sur LXC et LXD, que tu trouveras facilement, 
cependant le moyen le plus simple pour avoir une meilleure compréhension, c'est de commenccer par la documentation officielle de [LXC & LXD](https://linuxcontainers.org/)
