# Découverte de LXC & LXD

## 1. Introduction
Maintenant tu as une bonne base théorique, il est temps de passer à la pratique et de créer ton premier conteneur Linux !

Comme tu viens de le voir un conteneur est un ensemble d'éléments plus au moins complexe voir très complexe, 
et à la sortie de ces 6 semaines on n'attend pas de toi que tu maitrises tout sur les conteneur
par contre il est important de connaitre le contexte général et également de savoir comment les conteneurs ont évolué au fil des années.

Raison pour laquelle nous allons aujourd'hui nous concentrer sur LXC & LXD qui sont des technos rarement utilisées en production.

Oui, mais pourquoi on perd notre temps sur LXC & LXD ?

Ta question est légitime, et je répondrais par ceci,
comprendre cette technologie va t'apporter une connaissance plus approfondie 
sur fonctionnement des conteneurs Linux, car Docker qui est aujourd'hui la référence en matière de conteneur n'est qu'une surcouche de LXC & LXD.
Et crois que lors de tes futurs entretien et tes débuts sur Docker en milieu professionnelle, tu feras clairement la différence.


## 2. Créer un conteneur Linux 
## 2.1. Installer LXC et LXD

Avent même l'installation laisse-moi juste rapidement évoquer la différence entre LXC & LXD :

- LXC : c'est un logiciel de virtualization qui est différent d'un hyperviseur, car LXC opère au niveau du kernel Linux, comme on l'a vu dans précédemment.


- LXD : c'est API REST qui permet d'interagir plus facilement avec LXC. LXD apporte également des améliorations supplémentaires liées à la gestion des conteneurs créer par LXC.


Bien maintenant que c'est plus claire il est temps d'installer ces deux ensemble.
Et nous allons installer ces éléments dans une VM créer à l'aide de Vagrant.

Je reformule nous allons lancer un logiciel de virtualization du kernel Linux à l'intérieur d'une VM de type hyperviseur de type 2 :). 
Mais comment diable est-ce possible :), je te laisse trouver la réponse par tes propres moyens.

Après avoir lancé une VM de type `ubuntu/bionic64` à l'aide de Vagrant et "SSH" à l'intérieur.
Je t'invite à suivre cet excellent [tutoriel](https://www.youtube.com/watch?v=CWmkSj_B-wo) qui va t'apprendre les commandes de base.
Ce tutoriel devient à la fin un peu complexe et tu n'as pas besoin pour l'instant 
de t'aventurer dans les eaux trop profondes, de ce fait, tu pourras t'arrêter à 41 min et 5 secondes.

Encore une chose, au fil du tuto, essaye mentalement de faire la liaison 
entre les commandes/configurations que tu vas voir et les différents 
namespaces que tu as jusqu'ici découvert. 
Cela te permettra d'avoir une comprehension plus globale du fonctionnement des conteneurs.


## 3. Points importants à retenir
LXC & LXD sont les parents des conteneurs de manière générale.
Raison pour laquelle connaitre LXC est un excellent point de départs dans la découverte des conteneurs et son écosystème.
Malgré cela LXC à fil de temps perdu de sa superbe pour plusieurs raisons que l'on évoquera demain, 
c'est pr cela qu'avoir une connaissance de LXC non pas au niveau des commandes, 
mais son fonctionnement général est le moyen le plus sûr d'attaquer Docker avec des bases solides. 


## 4. Pour aller plus loin
Il existe de nombreux articles/tutorials avancée sur LXC et LXD, que tu trouveras facilement, 
cependant le moyen le plus simple pour avoir une meilleure compréhension, c'est de commenccer par la documentation officiel de [LXC & LXD](https://linuxcontainers.org/)