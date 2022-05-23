# Stocker des données efficacement

## 1. Introduction
Aujourd'hui, tu vas te mettre dans la peau d'un consultant, afin de proposer le meilleur service stockage selon le besoin du client.
Et ensuite tu vas implémenter cette solution.

## 2. Le projet
### 2.1. Scénario

De retour dans ta super startup, il est 8 H 30, tu es assis devant de ton PC 
en train de consulter le tableau de bord Jira tout en dégustant ton thé à la menthe.

Soudain, le bureau de l'open space s'ouvre, et sans même te retourner,
tu sais directement que c'est Jerome, à cause de ses chaussures qui grince lorsque 
son pied frotte le carrelage.
Toujours sans te retourner, tu dis : "Bonjour Jerome, ça va comme tu veux ?".
Arrivé à ta hauteur, il te répond : "Impeccable et toi, tu as vu l'invitation à la réunion marketing de cette après-midi ?"
Après une rapide vérification sur ton agenda gmail professionnelle où tu ne vas jamais d'habitude,
tu lui réponds en souriant : "Ah merci de me prévenir ! J'oublie à chaque fois regarder ce satané agenda, tu sais sur quoi la réunion sera ?".

Après un temps de réflexion, il te répond : "C'est surement lié au nouveau projet de reporting 
qu'ils en train de lancer, mais je peux me tromper, on verra bien cet après-midi."
Convaincu de sa réponse, il agrippe son PC sous le bras et se dirige vers 
le bureau du CTO, pour le topo quotidien concernant la migration AWS.

En début d'après-midi, à 15 H 15 précisément, toi, Jerome, un lead dev et le CTO, êtes dans une salle avec 6 membres du service marketing.
Le responsable marketing après avoir remercié tout le monde d'avoir pu se libérer pour participer à la réunion,
salue tout le monde et annonce le but de cette réunion dans ces termes :
"Depuis quelque mois notre entreprise se porte bien, on a de plus en plus de visiteurs sur notre site internet. 
Site internet, qui d'ailleurs, commence à être de plus en plus stable, merci à l'équipe IT."
Après une courte pause, il poursuit :
"De ce fait, pour anticiper les besoins clients et mettre en place des stratégies marketing efficientes,
on a besoin d'avoir des informations précises sur ce que les clients font sur notre site.
J'entends par là quels produits est le plus vendu ? Quel est le panier moyen ?
Combien de fois les clients achètent nos produits par mois, par trimestre ect ?
Ou encore quel est l'age moyen des utilisateurs ?"

Une fois sa phrase terminée, il se lève prendre un verre d'eau, bois quelques gorgées et poursuis : 
"Je suis conscient que cela ne se ferra pas en un jour ou deux, 
néanmoins on a besoin d'un début de solution le plus rapidement possible."

À l'évocation d'une solution la plus rapide possible, d'un coin de l'œil, 
tu as apercu ton CTO bougé sur siège prêt. Avec le temps, tu as appris que c'étais chez lui un signe d'agacements et même temps
la préparation d'une riposte de sa part.  
Tu te cales dans ton siège confortablement et attends
la suite d'une joute verbale entre responsables qui s'annoncent intéressantes.
Comme tu t'y attendais le CTO prends la parole : "Qu'est-ce que tu entends par le plus rapidement possible histoire que l'on est un autre d'idée ?"
Le responsable marketing répond :"Franchement à la vitesse où les choses évolue côté client, 
je ne te cache pas qu'une solution pour hier ça aurait été parfait !"

Dans ta tête, tu jubiles, voilà enfin la joute commence avec pour trophée, une deadline pour avoir une solution opérationnelle.
La deadline la plus courte pour le responsable marketing et la deadline la plus longue pour le CTO.

Après une courte pause le CTO répond : "Hum je vois, je suis conscient que 
nous devons nous adapter au besoin client et ceux presque instantané, 
loin de moi l'idée ralentir notre belle progression en termes de chiffre d'affaires.
Mais côté IT, ce n'est pas si simple, nous devons réfléchir à la meilleure solution 
pour vous offrir une solution facilement exploitable par votre service, un genre d'interface par exemple, 
tout en essayant de trouver la meilleure manière d'implémenter cette interface 
dans notre infrastructure actuelle en créant le moyen de friction possible."

Après une courte pause pour laisser à la team marketing, comprendre le sens ses propos le CTO ajoute : 
"Comme vous le savez, nous sommes en plein migration de notre infrastructure, 
et ce n'est pas une tache facile. Comme tu le sais également, 
c'est la priorité pour le service IT actuellement. Ce qui veut dire que l'on n'a pas 
du tout le temps pour nous occuper d'un nouveau projet, pour le moment."

Après cette tirade, tu comprends que la réunion va être longue et houleuse.

Et effectivement la réunion a pris plus de temps que prévu, tout le long, les deux parties 
ont avancé maintes et maints arguments pour gagner le trophée, mais comme toujours,
c'est à force de concession que les deux parties se sont enfin mis d'accord sur le périmètre et la deadline du projet.

Le lendemain matin, Jerome t'informes que le CTO à créer un ticket pour toi 
suite à la réunion, pendant que lui continue la migration vers AWS.

### 2.2. Feuille de route

#### 2.2.1. Le besoin client

Le client a besoin d'un outil de reporting,
L'outil en lui-même sera une application de type interface, cette application sera créer en interne, tu n'as pas à t'en occuper.

Depuis cette interface le service marking a besoin :
- d'afficher les données client en quasi-temps réels (panier moyen, age, localisation,etc.).
- exporter et importer une grande quantité de PDF, celles-ci doivent également être consultables et exportables 
  par les clients depuis l'application principale.

Pour information le client possède déjà une DB mysql hébergé sur des serveurs `on-premise`, 
mais rien n'empêche le client d'avoir une autre DB, si c'est nécessaire 😉.

Enfin, le client a également besoin que la/les solutions qui seront mises en place 
nécessitent le moins d'entretiens (maintenance, gestion de l'espace disque, etc.) possibles.
Cependant, le client veut que tu trouves une/des solutions qui sont défendables en termes de prix 🙂.

#### 2.2.2. Phase choisir la meilleure solution
D'après le besoin client ci-dessus, tu dois choisir le ou les solutions 
de stockages sur AWS qui te paraissent être les meilleures 
et comment tu comptes implementer la/les solutions.

En guise de rapport, je veux un fichier markdown qui comprennent :
- un benchmark des solutions AWS possibles
- les avantages et les inconvénients de chaque solution.
- ainsi que la manière dont tu comptes implementer cette/ces solutions dans l'infrastructure actuelle composée :
  - d'une application ROR (back et front), celle-ci se trouve sur AWS dans une architecture de type "auto-scaler" (ALB + ASG + instance groups)
  - une DB mysql sur un serveur `on-premise` (VM Vagrant 🙂).
  - et un bucket S3 déjà existant pour sauvegarder principalement les fichiers clients (images, PDF, etc.)

---
##### 🚀 BON À SAVOIR
Les devs senior, lead devs et devops sont souvent amenés à présenter devant 
la team et/ou d'autres services des solutions ou idées d'amélioration.  
Il est donc important que tu exerces à synthétiser/formaliser/vulgariser des sujets 
techniques afin de transmettre les bonnes informations sur lesquelles
des choix, parfois couteuses, et à long/court terme peuvent être prises.
---

#### 2.2.3. Implémenter la solution
Place maintenant à implementation de la solution, en suivant ces instructions.

1. construire l'infrastructure déjà existante chez le client :
  - une application ROR (back et front), celle-ci se trouve sur AWS dans une architecture de type "auto-scaler" (ALB + ASG + instance groups)
  - une DB mysql sur un serveur `on-premise` (VM Vagrant 🙂).
  - et un bucket S3 déjà existant pour sauvegarder principalement les fichiers clients (images, PDF, etc.)
  
  L'application ROR doit être capable de communiquer avec la DB mysql et le bucket S3.
  
  Bien sûr, cette infrastructure doit être créée à l'aide de scripts shell et AWS CLI 😉.


2. Implémenter la/les solutions de stockage qui répondent au besoin du client.

  PS. Si ton choix se porte sur le service RDS. Étant donne que ce service est assez cher, 
  je t'invite, sur un fichier markdown à dire comment tu comptais l'utiliser,
  pour répondre au besoin (quelles options, type d'instance, type de stockage, etc, tu aurais choisis)

---
##### 🚀 ALERTE BONNE ASTUCE
Comme toujours pense à :
- appliquer les bonnes pratiques concernant le Shell script
- utiliser un Makefile pour te faciliter la vie
- mettre en place un firewall en béton avec les `Security Groups`.
- appliquer le principe AWS de `least privilege` sur les `roles` des ressources AWS qui communiquent entre eux.
---


## 3. Rendu attendu
Libre à toi d'organiser le repo comme tu le souhaites 🙂,
néanmoins ce repo doit contenir :
- l'étude sur les solutions possibles pour répondre au besoin client.
- la présentation de la solution que tu vas implementer.
- les scripts/Vagrantfile/Makefile, qui ont permis de créer ton infrastructure et d'implémenter la/les solutions.
- si tu as choisi le service RDS, une présentation exacte sur la manière dont tu l'aurais utilisé.