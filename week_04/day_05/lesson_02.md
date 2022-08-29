# Stocker ses données sur AWS RDS

## 1. Introduction
Jusqu'à maintenant lorsque tu as eu besoin de créer une architecture avec une DB, 
tu hébergeais cette DB sur une instance EC2.
Cependant, cela impliquent des coûts supplémentaires en termes de maintenance 
(MAJ de la BD, MAJ de l'instance EC2, monitoring), de scalabilité pour absorber le traffic, 
de gestion de sauvegardes en cas de panne ou de crash, etc.  
Tous ces éléments nécessitent des personnes qualifiées pour les gérer, que ce soit 
pour une startup ou une multinationale.

Et si je te disais qu'AWS pouvait s'occuper de toutes ces opérations annexes 
et bien plus encore à ta place, moyennant quelques 💲💲💲 🙂.

## 2. La ressource
### 2.1. RDS : Vue d'ensemble
Le service RDS (Relation Database Service), est un service managé par AWS pour des bases de données qui utilisent le langage SQL.
Ainsi avec ce service, tu peux créer des DB managées de type :
- Postgres
- MySQL
- MariaDB
- Oracle
- Microsoft SQL Server
- Aurora (une DB qui appartient à AWS)

Mais quels sont les avantages de déployer une DB à l'aide de ce service, 
alors que je peux très simplement héberger ma propre DB sur une instance EC2 ou tout autre serveur ?

Eh bien, cher ami, il y a beaucoup d'avantages et les plus importants sont :  
- **le service est managé**, cela veut dire que toutes les notions ci-dessous sont gérées par AWS : 
  - mise à jour de la DB et du serveur où elle est hébergée, 
  - sauvegardes automatiques de tes données au cas où la DB tombe en panne ou que le datacenter crash,
  - le monitoring et les alertes, 
  - la réplication de tes données pour qu'elles soient accessibles rapidement depuis n'importe où dans le monde, 
  - la scalabilité verticale (ajouter de l'espace disque) et horizontale (ajouter plus d'instances d'un même service).


---
#### ⚠ A ne pas oublier.
Allez deux devinettes 🙂.

1. Lors de la création de ton instance RDS, tu dois choisir le type d'instance (un serveur où sera installer ta DB) que tu souhaites,
  et comme tu l'as compris le service qui se cache derrière ces instances, est le service EC2 🙂. 

  Mais contrairement à Elastic Beanstalk, tu ne peux pas accéder aux instances EC2 créées par RDS, 
  parce que **c'est un service managé**, et pour qu'AWS pour qu'ils puissent garantir 
  toutes les notions ci-dessus, ils doivent être les seuls à pour y accéder.


2. Lors de la création de ton instance RDS, à partir du service RDS,
  tu dois définir un type de stockage et l'espace disque pour tes données.
  Et devine le service qui se cache derrière l'approvisionnement et la gestion de l'espace disque ?  
  Eh bah ! C'est le service EBS, bien sûr 😄.

  Par contre, tu ne peux pas accéder à ces disques directement depuis le service EBS. 
  Car encore une fois, pour qu'AWS garantisse leur bon fonctionnement,
  ils ne peuvent pas laisser les utilisateurs y accéder.
---

### 2.2. RDS Backups
Le service RDS possède **une option activée par défaut**, 
qui permet de faire des sauvegardes de tes données régulièrement.

Mais quels types de sauvegardes est fait concrètement ?

Trois types de sauvegardes sont faits : 
- des sauvegardes complètes sont faites par le service RDS, tous les jours au moment du créneau de maintenance (que tu définis à la création).
- des sauvegardes des [logs de transactions](https://www.sqlshack.com/beginners-guide-sql-server-transaction-logs/) sont faites tous les 5 minutes.

Avec ces deux types de sauvegardes, tu peux restaurer ta DB, de la sauvegarde la plus ancienne **à il y a 5 minutes.**
De plus, ces sauvegardes ont une durée de vie de 7 jours. Cela veut que chaque jour, 
les sauvegardes qui ont plus de 7 jours sont supprimés automatiquement.

Le dernier type de sauvegarde, ce sont les sauvegardes manuelles aussi appelées `DB Snapshots`, 
elles sont déclenchées par l'utilisateur à n'importe quel moment. La retention sur ces types de sauvegarde est illimité.


### 2.3. RDS auto-scaling
Tu peux activer la feature `Storage Auto Scaling` qui permet de "scaler" 
automatique ton espace de stockage, sans que tu aies besoin de le faire toi-même 
Cette fonctionnalité est indispensable pour des applications avec des charges 
de travail imprévisibles.

Mais comment ça marche `under the hood` ?  
Tous d'abord pour utiliser l'`auto-scaling` tu dois définir l'option qui s'appelle `Maximum Storage Threshold`.
Cet option te permet de dire l'espace disque maximum que tu ne veux pas dépasser.

Ensuite pour le reste, je suis sûr qu'avec un peu d'imagination tu peux trouver, seul, la réponse !

Tout d'abord et tiens-toi bien 😀, le service RDS s'occupe du monitoring de ta DB 
et de l'instance où est hébergée cette DB avec AWS CloudWatch.  
Donc pour que le service RDS sache à quel moment augmenter la taille de stockage, 
il utilise un métrique 😀. Ce métrique à l'aide d'un événement (Amazon EventBridge 🙂) 
va augmenter l'espace de stockage si :
- l'espace disponible est inférieure à 10% pendant plus de 5 minutes
- et que 6 heures sont passées depuis la dernière modification.

### 2.4. RDS : Scalabilité lors de la lecture.
Plus ton application est visitée par des utilisateurs plus les requêtes sur la DB sont importantes.
Et on sait de manière générale que ces sont les opérations de lecture qui impactent 
les performances d'une DB au fur à mesure que les utilisateurs augmentent.

Pour y remédier, le service RDS te permet de créer des `Read Replicas`.
Les `Read Replicas` sont des instances RDS **uniquement accessibles en lecture et pas en écriture**.

Mais comment ça marche concrètement ? Comment les données qui se trouvent sur 
ton instance RDS d'écriture (instance master) arrive sur les `Read Replicas` ?

Très bonne question, cher ami, très bonne question !

Eh bien, lorsqu'un utilisateur fait une opération qui nécessite d'écrire sur le service RDS.
Cette opération est envoyée via l'application sur l'`instance RDS Master`. 
Ensuite **une réplication asynchrone**, qui ne prend pas plus d'une seconde, 
se déclenche entre l'instance RDS master et la/les instance(s) `Read Replicas`.

Voici schéma pour récapituler :
![RDS Async replication](https://i.imgur.com/UIEOhns.png)

Pour une instance RDS master il est possible d'ajouter 5 `Read Replicas` maximum, 
celles-ci peuvent être :
- dans la même zone (ex. eu-west3a),
- dispatcher dans toutes les zones d'une région, dans ce cas, on parle de `Cross-AZ Read Replicas`,
- ou encore dispatcher sur plusieurs régions, dans ce cas, on parle de `Cross-Region Read Replicas`,

---
#### ⚠ À NE PAS OUBLIER.
Comme l'opération est **ASYNCHRONE**. AWS mets en garde les utilisateurs
par une phrase qui se résume, comme ceci : "La réplication ASYNCHRONE n'est pas instantané, 
de ce fait, les opérations de lecture sont **ÉVENTUELLEMENT CONSISTANTES**.

Mais pas de panique de panique !  
Il est très rare de faire une opération d'écriture et de vouloir la lire directement après
tout cela en quelque millième de seconde. 
Cependant, cela peut arriver, raison pour la laquelle AWS vous met en garde.
---

---
#### 🚀 ALERTE BONNE ASTUCE
**Depuis ton application la lecture sur le `Read Replicas` n'est pas automatique**,
**tu dois modifier le `lien de connection` dans ton code**.

Par contre, fait attention à ce que les opérations d'écriture n'utilisent pas 
le lien de connection des `Read Replicas` 😅.  
Comme tu l'as compris, cela peut vite devenir un casse-tête à l'intérieur de ton application
si à chaque fois, tu es obligé définir le type de connection à utiliser selon l'opération.

C'est pour cette raison que les `Read Replicas` sont principalement utilisés que pour
tout ce qui est `reporting`, par exemple : 
- une application qui a pour seul but de lire des données et en ressortir des informations pour le business.
- Un tableau excel qui a besoin ton service RDS, pour récolter/extraire des données.
- des outils de big data et d'analyses, comme [Tableau](https://www.tableau.com/), [Talend](https://www.talend.com/fr/), [BigQuery](https://cloud.google.com/bigquery), etc.
---

**Le but étant d'utiliser le `Read Replicas` pour ne pas impacter ton instance RDS master qui sert principalement pour l'écriture des opérations.**


### 2.4. RDS : Survivre à une catastrophe (a.k.a Disaster Recovery).
Avec RDS tu peux activer l'option `Multi-AZ` et ainsi avoir en plus de ton instance RDS master,
une instance RDS en "attente" où chaque opération d'écriture sur 
l'instance RDS master est répliquée de manière **SYNCHRONE**.
Ce qui permet, en cas de panne de l'instance RDS master, que l'instance RDS en "attente" 
prenne le relais et devient l'instance master, ce processus de switch est appelé `automatic failover`.

T'expliquer comment fonctionne exactement l'`automatic failover` nécessite 
de rentrer dans beaucoup de détails qui prennent du temps. Hors ce n'est l'objectif.
L'objectif est que tu aies une vue d'ensemble du service RDS.


### 2.4. RDS : Un mot sur le prix.
Comme tous les services AWS, 
je t'invite à utiliser AWS calculator pour avoir un prix plutôt exact selon ton besoin.

Par contre, cher ami, je me dois de t'alerter sur les coûts implicites liés aux réseaux. 
Hulala ! Ce n'est pas parce que j'ai parlé de réseau qu'il faut paniquer, voyons 😄, 
ne t'inquiète pas, ça va bien se passer !

Alors, lorsque tu décides de créer un `Read Replicas` dans le même AZ, que tu as créé ton instance RDS master,
**il n'y aura pas de coût supplémentaire.**  
Si ton `Read Replicas` est dans une zone différente de la zone où tu as créé ton instance RDS master, 
mais que c'est dans la même région, **il n'y aura pas de coût supplémentaire.**
Par contre, tu paieras un coût supplémentaire lié à l'échange de donné si ton `Read Replicas` 
se trouve dans la région différente de celle de l'instance RDS master.

Voici un schéma récapitulatif :
![RDS Network Cost](https://i.imgur.com/kvhfIwV.png)


### 2.5. RDS : Mots de la fin
*TODO : RDS free tier existent changer l'approche**

LE service RDS est couteux, cependant pour permettre aux nouveaux utilisateurs de tester
ce service, ils ont récemment, lancé une offre "free tier", 
qui te permet de lancer une petite instance RDS afin de tester rapidement 
les fonctionnalités de base.

Mais ce n'est pas suffisant pour toi, 
qui as dorénavant des connaissances avancées sur ce service.
C'est pourquoi, je te propose de suivre ce [tutorial](TODO : faire une video),
qui va te permettre de mettre une image mentale sur ces connaissances 🙂.


## 3. Points importants à retenir
Voici les éléments à garder en tête :
- Amazon RDS, est un service qui offre des DB managées et parce qu'ils sont managés, 
  la quasi-totalité des opérations
  de maintenance, disponibilités et sauvegardes sont gérées par AWS à ta place.
- Amazon RDS permet l'`automatic failover`
- avec Amazon RDS des sauvegardes automatiques et manuelles sont possibles 
  et à partir de celles-ci, on peut restaurer les données d'une DB. 

  
## 4. Pour aller plus loin
Amazon RDS possède beaucoup de fonctionnalité que je n'ai pas cités et le meilleur moyen 
de les découvrir est de commencer par la [documentation d'AWS](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Welcome.html).