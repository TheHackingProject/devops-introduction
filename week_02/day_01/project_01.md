# Découverte des LXC & LXD

## 1. Introduction
Le temps est venu de créer tes propres conteneurs LXD et ainsi mettre un peu de pratique sur la théorie.

## 2. Le projet
### 2.1. Scénario
Après ces dernières semaines assez éprouvantes dans ta Startup. Tu as décidé de poser quelques jours de vacances bien mériter.

Au retour de celles-ci, tu es le premier à ton poste, prêt à attaquer de nouveaux challenges.
Pour cela tu décides de faire preuves d'initiative et commence à regarder les tickets Jira en "ToDo".
Après une rapide analyse, tu t'aperçois que cette semaine sera assez tranquille. 

Mais avant de fermer Jira pour allez te chercher un thé en attendant l'équipe, tu décides de jeter un coup d'œil au Sprint des SysOps.
Et là, tu t'aperçois qu'ils ont beaucoup de tickets. 

Dans ta tête, tu te dis, ah ils sont toujours en manque d'effectif, je suppose.
Je vais envoyer un message slack à un des SysOps histoire de voir si je peux les aider.

Avant même que tu es le temps de mettre en veille ton PC, un message slack apparait disant ceci,
Salut, oui effectivement on est sous l'eau depuis que Liam est parti, justement j'en ai parlé avec ton Lead dev, 
et si tu veux bien, il est d'accord pour que tu fasses quelques tickets SysOps, histoire de nous dépanner.
Dans ta tête tu te dis, mais dans quoi je me suis encore embarqué, misère !
Sur ces belles pensées, plein d'amertume, tu vas te préparer un petit thé.

Une quinzaine de minutes plus tard, au standup, ton tour de parler arrive, n'ayant rien à dire, ton lead dev, te demander si t'es d'accord pour donner un coup de main au SysOps sur un ticket concernant un POC de conteneurisation d'un microservice via LXC.
Tu dis oui sans grande conviction, commence à cogiter sur les anciens cours que tu as eu à ce sujet.

Une fois à ton bureau, tu prends connaissance du ticket.

### 2.2. La feuille de route
Le ticket qui tu as été confié aujourd'hui dis ceci.

Grâce au POC sur la virtualisation, tu nous as permis d'avoir un environnement en local très proche de celui production.
Cela nous a permis de repérer certains de nos plus vieilles erreurs que l'on avait en production, super boulot.

Maintenant l'idée est de passer sur des conteneurs, par souci d'agilité et d'économie, 
car comme tu le sais, les VM consomme beaucoup plus et les devs et SysOps ont des fois du mal à lancer toutes la stack applicatifs sur nos PC en local.

Maintenant que tu as le contexte, il est temps de faire un POC d'une application qui tourne dans un conteneur LXC,
on aurait pu directement passer à Docker, mais nous avons besoin de d'abord former les devs aux conteneurs et pour cela,
rien de mieux que LXC pour expliquer le fonctionnement global des conteneurs.

### 2.2.1 LXC conteneur - Niveau 1
Voici donc les étapes à respecter : 
1. Crées une VM Vagrant de type `ubuntu 18 LTS`, 
2. A l'intérieur de la VM, installes LCX et LXD.
3. Ensuite à l'intérieur du conteneur LXC, lance une application, je le laisse le soin de choisir l'application.
4. Expose le port  où ton application tourne avec les commandes LXC à la VM vagrant.
5. Faits en sorte d'arriver à requêter cette application depuis ta machine. 


### 2.2.2 LXC conteneur - Niveau 2

Il est temps d'automatiser les étapes du ci-dessus, à l'aide d'un Vagrantfile et d'un script shell.

#### 🚀 ALERTE BONNE ASTUCE
Ici tu vas devoir créer un script assez complexe et pour t'aider un peu voici quelques conseil :
- penses toujours à découper ton script étape par étape. 
- penses à verifier chaque étape avant de passer à la prochaine.
- penses à suivre les conventions Shell et le plus possible tester automatiquement ton/tes scripts shell.


## 3. Rendu attendu
Un repo qui contient le Vagrantfile et un ou plusieurs scripts shell qui prends les étapes ci-dessus ainsi qu'un `README.md` qui explique comment on utilise ce repo.
