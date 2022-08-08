# Sécuriser ses serveurs AWS.

## 1. Introduction
Tout comme hier, tu vas lancer tes deux applications préférées (ROR et React) ainsi qu'une base de donnée de ton choix hébergé sur une instance EC2.
De plus, tu vas devoir faire communiquer ton infrastructure en réseau privé et ajouter des pare-feu 
au niveau des instances EC2.

## 2. Le projet
### 2.1. Scénario
De retour dans ta super Startup, la prise initiative dont tu as fait preuve il y a quelques jours et la manière dont tu t'es débrouillé sur le ticket que le CTO t'as assigné, a impressionné plus d'une personne.

Depuis quelques jours ton CTO veut recruter un Cloud Ingénieur et/ou un DevOps pour aider le service IT à migrer vers AWS, 
mais pour l'instant aucun profil ne correspond au besoin. De ce fait, en attendant le bon candidat, le CTO t'as assigné un nouveau ticket.
Il souhaite tester une mimi-infrastructure en réseau privé avec un seul point d'entré pour les utilisateurs.

### 2.2. Feuille de route
#### 2.2.1. Créer et lancer ton infrastructure sur des instances EC2
1. Lances chaque partie de ton infrastructure sur des instances dédiées :
- ton application ROR préféré (l'API)
- ton application React (le front)
- ta base de donnée (mysql ou mongo au choix)

2. Vérifier que les trois instances arrive à interagir correctement.

#### 2.2.2. Permettre l'interaction uniquement en réseau privé
1. Supprimes l'accès public sur les instances où se trouvent ton application ROR et ta BDD.

2. Vérifies que ton application React accède toujours aux instances où se trouvent l'API et la BDD.
 
#### 2.2.2. Assigner des pare-feu sur chaque instance
Appliques ces règles de pare-feu :

1. L'instance où se trouve ton application React doit être accessible par tout le monde uniquement sur le port où l'application React démarre. Les autres ports de cette instance doivent être inaccessible.
2. L'instance où se trouve ton application ROR doit être accessible uniquement par l'instance qui héberge ton application React, 
   et que sur le port où démarre ton application ROR. Les autres ports de cette instance doivent être inaccessible.
3. L'instance où se trouve la DBB doit être accessible uniquement par l'instance où se trouve ton application ROR,
   et que sur le port où démarre ta DBB. Les autres ports de cette instance doivent être inaccessible.

#### 2.2.2. Rendre ton instance résiliant au redémarrage
Idéalement ton front en React devrait se trouver derrière un DNS et avec nom de domaine, mais malheureusement ce n'est pas le cas dans ce contexte.
De ce fait, pour éviter que lors d'un redémarrage accidentel ou non de ton instance
où reside ton application React, AWS change l'IP de celle-ci (ce qui rendrait tes utilisateurs ultra mécontent 😏), ajoutes une IP fixe sur cette instance.


## 3. Rendu attendu
Un repo github qui contient la video des trois instances EC2, ainsi que les `SG` de chaque instance

Dans cette video, je veux voir :
- les trois instances qui tournent
- les IP privée, public et fixe (Elastic IP) de chaque instance s'il y en a besoin 😃.
- les règles qui trouvent dans les `SG` attacher à chaque instance. 
