# Découverte des LXC & LXD

## 1. Introduction
Le temps est venu de créer tes propres conteneurs LXD et ainsi mettre un peu de pratique sur la théorie.

## 2. Le projet
### 2.1. Scénario
Après ces dernières semaines assez éprouvantes dans ta Startup. Tu as décidé de poser quelques jours de vacances bien méritées.

Au retour de celles-ci, tu es le premier à ton poste, prêt à attaquer de nouveaux challenges.
Pour cela tu décides de faire preuve d'initiative et commence à regarder les tickets Jira en "ToDo".
Après une rapide analyse, tu t'aperçois que cette semaine sera assez tranquille. 

Mais avant de fermer Jira pour aller te chercher un thé en attendant l'équipe, tu décides de jeter un coup d'œil au Sprint des SysOps.
Et là, tu t'aperçois qu'ils ont beaucoup de tickets. 

Dans ta tête, tu te dis : "Ils sont toujours en manque d'effectif, on dirait !
Je vais envoyer un message slack à un des SysOps afin de voir si je peux les aider."

Avant même que tu aies le temps de mettre en veille ton PC, un message slack apparait disant ceci.
Salut, oui effectivement on est sous l'eau depuis que Liam est parti, justement j'en ai parlé avec ton Lead dev, 
et si tu veux bien, il est d'accord pour que tu fasses quelques tickets SysOps, afin de nous dépanner.
Dans ta tête tu te dis : "Mais dans quoi je me suis encore embarqué, misère !"
Sur ces belles pensées, pleines d'amertume, tu vas te préparer un petit thé.

Une quinzaine de minutes plus tard, au standup, ton tour de parler arrive, n'ayant rien à dire, 
ton lead dev, te demande si tu es d'accord pour donner un coup de main au SysOps 
sur un ticket concernant un POC de conteneurisation d'un microservice via LXC.
Tu dis oui sans grande conviction et commences à cogiter sur les anciens cours que tu as eues à ce sujet.

Une fois à ton bureau, tu prends connaissance du ticket.

### 2.2. La feuille de route
Le ticket qui t'a été confié aujourd'hui dit ceci :

Grâce au POC sur la virtualisation, tu nous as permis d'avoir un environnement en local très proche de celui de la production.
Cela nous a permis de repérer certaines de nos plus vieilles erreurs que l'on avait en production, superbe boulot !

Maintenant l'idée est de passer sur des conteneurs, par souci d'agilité et d'économie, 
car comme tu le sais, les VM consomment beaucoup de ressources et les devs et SysOps ont parfois du mal à lancer toute la stack applicative sur leur PC en local.

Maintenant que tu as le contexte, il est temps de faire un POC d'une application qui tourne dans un conteneur LXC.
On aurait pu directement passer à Docker, mais on a besoin de d'abord former les devs aux conteneurs. Et pour cela,
rien de mieux que LXC pour expliquer le fonctionnement global des conteneurs.

### 2.2.1. LXC conteneur - Niveau 1
Voici donc les étapes à respecter : 
1. Crées une VM Vagrant de type `ubuntu 18 LTS`, 
2. À l'intérieur de la VM, installe LCX et LXD.
3. Ensuite à l'intérieur du conteneur LXC, lance une application, je te laisse le soin de choisir l'application.
4. Expose le port où ton application tourne avec les commandes LXC au port de la VM vagrant.
5. Fais en sorte d'arriver à requêter cette application depuis ta machine. 


### 2.2.2. LXC conteneur - Niveau 2

Il est temps d'automatiser les étapes vues ci-dessus, 
à l'aide d'un Vagrantfile et d'un script shell.

#### 🚀 ALERTE BONNE ASTUCE
Ici tu vas devoir créer un script assez complexe et pour t'aider un peu, voici quelques conseils :
- penses toujours à découper ton script étape par étape. 
- penses à verifier chaque étape avant de passer à la prochaine.
- penses à suivre les conventions Shell et le plus possible tester automatiquement ton/tes scripts shell.


## 3. Rendu attendu
Un repo qui contient le Vagrantfile et un ou plusieurs scripts shell 
qui reprennent les étapes ci-dessus ainsi qu'un `README.md` 
qui explique comment on utilise ce repo.
