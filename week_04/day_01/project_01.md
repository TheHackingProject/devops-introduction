# Créer une infrastructure de production

## 1. Introduction
Une fois embauché dans une entreprise, il y a de forte chance qu'à ton arrivée, l'infrastructure soit déjà en place. 
À ce moment-là, ton rôle sera d'auditer cette infrastructure et proposer des axes d'améliorations.
Et pour faire des remarques pertinentes et montrer ton savoir-faire, tu dois avoir de la pratique sur le sujet.
Et pour avoir de la pratique rien de mieux que de créer une infrastructure digne d'une licorne en pleine croissance.


## 2. Le projet
### 2.1. Feuille de route
#### 2.1.1. Créer le VPC et les subnets
Voici les étapes à suivre, à l'aide exclusivement de script(s) shell et d'AWS CLI.

1. Crées un VPC avec un `CIDR block` équivalent à 192.168.0.0/16

2. Crées 2 subnets, un privé et un autre public, je te laisse le choix de choix du `CIDR block`, 
   mais avant de le choisir tu dois prendre en compte que **chaque subnet devra contenir 510 IPs, pas une IP de plus ni une de moins.** 😜


#### 2.1.2. Démarrer les instances
Voici les étapes à suivre, à l'aide exclusivement de script(s) shell et d'AWS CLI :

1. Dans le subnet public, lances ton application ROR préféré et ton application React dans deux instances EC2 différents.
   Bien sûr n'oublies pas d'attacher les bons `Security Groups` à ces instances pour que seul le port où démarre les applications soient accessibles.

2. Dans le subnet privé, lances une DBB (mysql ou mongo) sur une instance EC2. 

3. Vérifies que la DBB soit accessible depuis les instances qui se trouvent dans le subnet public.


4. La BDD doit pour atteindre internet et non l'inverse, de sorte que toi ou ta team puissent mettre à jour la DBB ou les packages de l'instance qui l'héberge.

---
#### 🚀 ALERTE BONNE ASTUCE
- Pense à suivre les conventions Shell que tu as apprises lors de la premiere semaine du parcours**
- N'hésite pas à créer plusieurs petits scripts shell si tu en ressens le besoin.
- N'hésite pas tout au long de ton/tes scripts shell à informer l'utilisateur via le terminal où il en est dans la création de l'infrastructure.
- Pense à vérifier régulièrement que les services que tu crées au fur à mesure sont `up` et prêt à recevoir du traffic.

---

## 3. Rendu attendu
Un repo github qui contient :
- l'ensemble des scripts shell nécessaire à la création de cette infrastructure,
- un Makefile pour lancer sa création l'aide d'une seule commande,
- et un README explicatif.
