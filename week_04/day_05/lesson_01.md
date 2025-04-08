#  Stocker ses données sur AWS EFS

## 1. Introduction
Depuis que tu as découvert le service `EBS`, c'est la grande classe, n'est-ce pas ? 😎  
Tu peux persister les données qui se trouvent sur ton instance sans problème.
Tu peux attacher/détacher les disques EBS sur n'importe quel instance EC2 sans problème.

Mais comment tu fais lorsque que plusieurs instances EC2 ont besoin d'accéder aux mêmes données, en même temps ?  
Toi, fier de tes connaissances, tu vas me répondre. 
Eh bah, il suffit d'utiliser une DB (mysql ou autre), 
et d'utiliser la fonctionnalité `user data` du service EC2 pour connecter chaque instance à cette DB démarrage.

Laisse-moi te dire, cher moussaillon, que tu as tout à fait raison, **mais** : 
- comment tu fais, si tu veux que ton instance/application voit tes données, comme étant des données qui se trouvent sur un `file system`, 
- comment tu fais si tu n'as pas forcément envie d'utiliser un [ORM](https://www.educative.io/answers/what-is-object-relational-mapping-in-ror) dans ton application ?
- comment tu fais, si tu as besoin d'un type de stockage qui utilise le [protocol NFS](https://www.it-connect.fr/le-protocole-nfs-pour-les-debutants/) ?
- comment tu fais, si tu as besoin d'un espace de stockage automatiquement scalable ?

Eh bien, ce que nous allons essayez de découvrir aujourd'hui.

## 2. La ressource
### 2.1. EFS (Elastic File System), qu'est-ce donc ?
Le service `EFS` est un NFS (network file system) qui peut être monté sur plusieurs instances EC2 en même temps.
De plus ces instances peuvent être dans différentes zones, ce qui veut dire que ce service est `multi-AZ`.

---
Hulala ! Je vois à ta tête, que tu n'as pas tout saisi.

Reprenons, mais avec plus d'explications cette fois-ci 🙂.
NFS (ou système de fichiers en réseau), 
est une application client/serveur qui permet à un utilisateur 
de consulter/stocker/mettre à jour des fichiers sur un PC/serveur distant, 
comme s'ils étaient sur son propre PC.  
Le PC de l'utilisateur doit disposer d'un client NFS et l'autre PC/serveur distant d'un serveur NFS. 
Ainsi les deux machines vont pouvoir échanger les données à l'aide du protocol TCP/IP.  

Pour ta culture générale, c'est cadeau 🙂 ! Le système NFS a été à la base, développé par [Sun Microsystems](https://wiki.minet.net/divers/coin_geek/nfs) en 1984, 
et s'est par la suite imposé comme la norme en matière de client/serveur de fichiers.
---

Ceci étant dit ! Place à la démonstration avec [une video de Xavki](https://www.youtube.com/watch?v=mJ4vlGYmqzo).  
Dans la video, Xavki utilise l'ancienne méthode pour monter le service EFS sur une instance EC2. 
Mais c'est fait exprès ! 😉
Je veux que tu voies l'ancienne méthode avant de découvrir la nouvelle méthode à l'aide du projet du jour 😉.


### 2.2 EFS : Les types de stockage
Ce service possède 4 types de stockage qui ont chacun leur avantage est inconvenient : 

- EFS Standard :
  - utile si on a besoin d'accéder **souvent** aux données.
  - avec ce type de stockage, les données sont accessibles à toutes les zones d'une région. 
    Exemple. la région Europe (Paris) possèdent 3 zones (eu-west3a, eu-west3b, eu-west3c).
    Peu importe où l'instance EC2 est créée parmi ces trois AZs (zones), elles pourront se connecter au service EFS et accéder aux données.
  - pour garantir la haute disponibilité des données (a.k.a high availability) 
    le service EFS réplique ces données dans 3 zones minimum au cas où une zone tombe en panne.
  - depuis EFS Standard, on peut définir des règles pour transférer les DONNÉES les moins utilisées vers le type de stockage appelé, `EFS IA`.
  - excellent pour un environnement de production


- EFS IA (EFS Infrequent-Access) : 
  - utile pour des données **pas souvent** utilisées.
  - avec ce type de stockage, les données sont accessibles à toutes les zones d'une région.
  - les données sont répliquées dans trois zones minimum pour garantir la haute disponibilité.
  - ⚠ attention récupérer les données stocker dans ce type de stockage
    **engendre à un coût supplémentaire**, donc réfléchis bien avant d'y mettre tes données 🙂.


- EFS One Zone : 
  - utile si on a besoin d'accéder **souvent** aux données.
  - avec ce type de stockage, les données accessible que depuis une zone uniquement (celle où a été créer le service).
    Ce qui veut dire que si ton instance se trouve dans une zone différente 
    de la zone où ton service a été créer, il ne pourra accéder au service.

    De plus si la zone où a été créer ton service tombe en panne toutes tes données seront perdues, 
    car la réplication n'est pas possible sur ce type de stockage.
  - excellent pour un environnement de développement.


- EFS One Zone-IA : 
  - utile pour des données **pas souvent** utilisées.
  - avec ce type de stockage, les données accessible que depuis une zone uniquement (celle où a été créer le service). 
  - la réplication n'est pas possible sur ce type de stockage. 
  -  ⚠ attention récupérer les données stocker dans ce type de stockage engendre un coût supplémentaire, donc réfléchis bien avant d'y mettre tes données 🙂.


Le tableau récapitulatif qui se trouve dans la [documentation d'AWS](https://docs.aws.amazon.com/efs/latest/ug/storage-classes.html#sc-compare) est une bonne référence en cas de besoin.


### 2.2 EFS : Les caractéristiques
Le service dispose de plusieurs fonctionnalités et caractéristiques : 

- en termes de partage de données, ce service peut être monté sur plus 1000 instances EC2 en même temps sans pour autant que sa performance baisse.


- ce service est automatiquement scalable, ce qui veut dire que l'espace de stockage augmente automatiquement en fonction du besoin.


- comme précisé plus haut, le service EFS utilise le protocol NFS, par conséquent ce service ne peut être utilisé
  que sur des instances qui ont un OS Linux, 
  étant donné que le protocol NFS n'est pas supporté sur Windows.


- tu peux configurer un "cycle de vie automatique" de tes données.  
  Ce qui veut tu peux comme avec le service S3, 
  configurer des `policies` qui vont transférer les fichiers les moins utilisés dans l'`EFS Infrequent Access`

Un dernier mot sur le coût de ce service, avec toutes ces fonctionnalités, 
pas étonnant qu'il soit 3 plus cher que le service EBS 🙂. 
De ce fait, avant de l'utiliser, je t'invite vivement à faire une simulation 
de prix sur [AWS calculator](https://calculator.aws/#/).


## 3. Points importants à retenir
Voici ce qu'il faut retenir :
- Le service EFS est utile lorsque l'on souhaite mettre en place un système de partage de données entre plusieurs instances EC2.

- Parce que ce service utilise le protocol NFS, il peut être utilisé que sur des instances qui ont un OS Linux.


- Ce service est très utile dans certains cas (partage de fichiers entre application) 
  et secteurs d'activité (big data, etc.) car :
  - il est ultra performant (jusqu'à 5GiBps en lecture et 3GiBps en écriture),
  - hautement disponible (réplication dans 3 zones minimum)
  - automatiquement scalable (jusqu'à 10 petabyte)
  - plus 1000 clients (serveur/instance connecté au service) en parallèle.


- Il est possible de manager le cycle de vie des données afin de limiter la facture,
  **cependant récupérer les données "classées" à un coût à ne pas négliger**.


## 4. Pour aller plus loin
Pour en savoir plus sur ce service et ces différentes fonctionnalités la [documentation d'AWS](https://docs.aws.amazon.com/efs/latest/ug/whatisefs.html) est un bon point de départ.