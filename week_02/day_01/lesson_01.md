# La découverte de Docker

## 1. Introduction
Tous comme la première semaine, nous allons d'abord commencer par répondre à quelques questions.
Docker, qu'est-ce que c'est ? Quelle est son origine ? Et pourquoi l'utilise-t-on de nos jours ?.

## 2. Historique et contexte
### 2.1. L'origines des conteneurs
La semaine dernière, tu as découvert l'histoire de la virtualisation et 
expliqué que cette technologie est né du besoin de partager un ordinateur/serveur avec plusieurs utilisateurs afin de rentabiliser et améliorer le travail d'un groupe de personnes.
Nous avons terminé notre histoire par l'invention de Google en 2006, le `Cgroups (control groups)`, 
qui révolutionna la manière de gérer les `process` et `groupe de process`, mais avant de continuer remontons en arrière pour mieux revenir.

En vérité la technologie des conteneurs est apparue en 2000 sous le nom de `FreeBSD Jails`. 
À cette époque il permettait de partitionner un système [FreeBSD](https://www.techno-science.net/definition/7667.html) en plusieurs sous-systèmes ou `jails` . 

`jails`, mais qu'est-ce que c'est ? Mais si rappelles toi on en parler la semaine dernière, quand on a évoqué l'histoire de la virtualisation.

C'est donc à partir du système `jails`, qu'en en 2001, Jacques Gélinas a créé le [projet VServer](https://fr.wikipedia.org/wiki/Linux_Virtual_Server). 
Je vous épargne les détailles, mais en quelques mots, ce projet à permis d'améliorer le système d'environnement isolé Linux. Et en 2006, Google a développé le `cgroups`, qui par la suite, a été intégré au kernel Linux.
L'intégration du `cgroups` dans le kernel Linux a permis la naissance de `LXC`.

Le système LXC permet la virtualization au niveau du Linux kernel. À la différence de Virtualbox qui est un hyperviseur.
Ce schéma va te permettre de mieux comprendre la différence :

*TODO: schéma comparatif LXC vs hyperviseur type 2*


En 2013, Google déclenche à nouveau les hostilités en rendant le projet `LMCTFY (Let Me Contain That For You)` open source, ce projet est un logiciel Linux qui permet de gérer des conteneurs.
Cette au cours de cette même année que Google decides de donner ce projet à Docker.

Docker est né en 2008 en tant que projet open source qui travaillait sur beaucoup de concepts nouveaux, parmi eux :
- une meilleure gestion des conteneurs via une interface en ligne de commande
- la gestion des applications dédiées à tourner dans ces conteneurs
- et la possibilité d'utiliser les conteneurs peu importe l'environment (Linux, Windows, MAc, etc.)


Maintenant que tu as toute l'histoire, et apr conséquent une veu globale, 
nous allons rentrer dans les détails et analyser les différents composants qui constitue, aujourd'hui, un conteneur Docker.

Mais avant d'aborder ces sujets, afin que soit claire pour toi, analysons la différence entre la virtualisation et les conteneurs.

### 2.2. Quelle est la différence avec la virtualisation

Ce n'est pas tout à fait la même chose. Comme je l'ai dit la semaine dernière les conteneurs sont une forme de virtualisation. 
Cependant, laisse-moi être encore plus précis :

- la virtualisation permet à plus OS de s'exécuter simultanément sur une seule machine/serveur.


- alors que les conteneurs, partagent le même noyau d'exploitation et isolent les processus de chaque application des autres applications et du reste du système.

*TODO : schéma comparatif hyperviseur vs conteneurs* > https://www.linkedin.com/pulse/docker-vs-lxc-virtual-machines-phucsi-nguyen


Cela signifie que, la virtualisation utilise un hyperviseur pour simuler les éléments nécessaire à l'installation d'un OS, 
ce qui permet d'exécuter plusieurs OS en parallèle. 

La virtualisation est plus lourde que les conteneurs, car lorsque ta machine possède des ressources limitées, 
avoir des applications légères et qui puissent être déployées en plusieurs fois est capitale. 
Ainsi, les conteneurs Linux s'exécutent en natif sur leur l'OS, qu'ils partagent entre eux.
Ce qui permet aux applications/services de rester légers et de s'exécuter rapidement en parallèle.


## 3. Points importants à retenir
Rappelles toi la différence entre LXC, la virtualisation et les conteneurs Docker. 
Nous avons en grande ligne aborde la différence entre ces trois technologies, mais tu peux de ton côté faire des recherches supplémentaires.
Ils existent de nombreux articles sur ces sujets.

Je te conseille vivement de bien assimiler ce cours car, ces sujets sont souvent discutés dans les entretiens

## 4. Pour aller plus loin
Pas besoin pour le moment