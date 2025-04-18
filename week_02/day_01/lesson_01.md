# La découverte de Docker

## 1. Introduction
Tout comme la première semaine, nous allons commencer par répondre à quelques questions.
Docker, qu'est-ce que c'est ? Quelle est son origine ? Et pourquoi l'utilise-t-on de nos jours ?

## 2. La ressource
### 2.1. Historique et contexte
#### 2.1.1. L'origine des conteneurs

La semaine dernière, tu as découvert l'histoire de la virtualisation et 
appris que cette technologie est née du besoin de partager un ordinateur/serveur avec plusieurs utilisateurs afin de rentabiliser et améliorer le travail d'un groupe de personnes.
Nous avons terminé notre histoire par l'invention du  `Cgroups (control groups)` par Google en 2006. Cette technologie
révolutionna la manière de gérer les `process` et `groupe de process`, mais avant de continuer revenons un peu en arrière.

En vérité la technologie des conteneurs est apparue en 2000 sous le nom de `FreeBSD Jails`. 
À cette époque il permettait de partitionner un système [FreeBSD](https://www.techno-science.net/definition/7667.html) en plusieurs sous-systèmes ou `jails` . 

`jails`, mais qu'est-ce que c'est ? 🤔

Mais si, rappelle-toi, on en a parlé la semaine dernière, quand on a évoqué l'histoire de la virtualisation.

C'est donc à partir du système `jails`, qu'en 2001, Jacques Gélinas a créé le [projet VServer](https://fr.wikipedia.org/wiki/Linux_Virtual_Server). 
Je vous épargne les détails, mais en quelques mots, ce projet a permis d'améliorer le système d'isolation des environnements sous Linux. Et en 2006 Google a développé le `cgroups`, qui par la suite, a été intégré au kernel Linux.

L'intégration du `cgroups` a donné naissance à `LXC`, un système de virtualization au niveau du kernel linux. À la différence de Virtualbox qui est un hyperviseur.


Ce schéma va te permettre de mieux comprendre la différence :

![Virtualization type 2 vs LXC](https://i.imgur.com/vEpe4BO.png)

Maintenant que tu en sais un peu plus sur l'histoire des conteneurs, l'heure est venue d'aller voir ce qui se cache derrière les conteneurs.


Mais avant d'aborder ce sujet, afin que ce soit clair pour toi, analysons la différence entre la virtualisation et les conteneurs.


#### 2.1.2. Quelle est la différence entre les conteneurs et la virtualisation ?
Ce n'est pas tout à fait la même chose, comme je te l'ai dit la semaine dernière les conteneurs sont une forme de virtualisation. 
Cependant, laisse-moi être encore plus précis :

- la virtualisation permet à plusieurs OS de s'exécuter simultanément sur une seule et même machine/serveur.


- alors que les conteneurs, partagent le même noyau d'exploitation et isolent les processus de chaque application des autres applications et du reste du système.
  
  *Voir le schéma du dessus.*



Cela signifie que, la virtualisation utilise un hyperviseur pour simuler les éléments nécessaires à l'installation d'un OS, 
ce qui permet d'exécuter plusieurs OS en parallèle. 

La virtualisation est plus lourde que le système des conteneurs, car lorsque ta machine possède des ressources limitées, 
avoir des applications légères et qui puissent être déployées en plusieurs fois, est capitale. 
Ainsi, les conteneurs Linux s'exécutent en natif sur un OS qu'ils partagent entre eux.
Ce qui permet aux applications/services de rester légers et de s'exécuter rapidement et en parallèle.


#### 2.1.3. Les conteneurs
Dans le prochain cours, tu vas découvrir les différents composants d'un conteneur.
Cette partie, bien que théorique va te permettre de mieux comprendre le fonctionnement global des conteneurs.
Avec ces connaissances, tu auras un sérieux avantage face à ceux qui utilisent les conteneurs sans savoir ce qui se passe vraiment sous le capot, 
ce qui te permettra de te debugger plus facilement. :blush:


## 3. Points importants à retenir
Rappelle-toi la différence entre LXC et la virtualisation. 
Nous avons en grande ligne abordée la différence entre ces deux technologies, mais tu peux de ton côté faire des recherches supplémentaires.
Il existe de nombreux articles sur ces sujets.

Je te conseille vivement de bien assimiler ce cours, car ces sujets sont souvent abordés dans les entretiens. 😉

## 4. Pour aller plus loin
Pas besoin pour le moment.
