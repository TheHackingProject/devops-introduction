# Les serveurs AWS - Niveau 1

## 1. Introduction

Bien ! Maintenant que t'as mis en place une alerte budget et que 
tu as l'esprit tranquille, place à la découverte du service le plus basique et le plus ancien de AWS, j'ai nommé les serveurs AWS
aussi appelés EC2 (Elastic Cloud Compute), le "2", car dans `Elastic Cloud Compute`, il y a deux `C` 😄.

## 2. La ressource
### 2.1. Créer une EC2

*TOD0: Faire une video*

### 2.2. Caractéristique du service EC2
Pour utiliser les instances EC2 en toute connaissance de cause, il est important 
de savoir comment est calculé le prix d'une instance EC2, les différents types d'offres d'instances
et les principaux caractéristiques de chaque offre. 
De manière à pouvoir demain choisir la bonne instance en fonction de ce que toi, ta team ou ton entreprise ont comme contraintes et besoins.

Tous d'abord le prix, les instances EC2 sont facturé en fonction 
- de la région (nous allons revenir sur ce point dans le cours de vendredi),
- du type d'instance,
- de l'OS qui va tourner sur l'instance, Linux, Windows ou Private OS (RHEL, SLES, Windows SQL),

 La facturation est faite par seconde (avec un minimum de 60 seconde payable dans tous les cas) 
**et chose important tu n'es pas facturé si l'instance est arrêtée.**

### 2.3. Les types d'instances EC2
#### 2.3.1. Les instances "On Demands"
Avec ce type d'offre, tu paies pour ce que tu utilises, rien plus, rien de moins.
Ce type d'offre est utilisée pour du court-terme ou pour une charge de travail ininterrompue (un api qui doit tourner en continu par exemple).


#### 2.3.2. Les instances réservée "Reserved Instances"
Avec ce type d'offre, les instances sont 75% moins cher comparé à une offre `On Demand`.

LA réservation des instances peut être de 1 an ou 3 ans, **pas six mois ou 1 an et dem, juste 1 an ou 3 ans**.

Tu l'as compris, ces instances sont utilisées pour la longue durée, example héberger une base de donnée.


#### 2.3.4. Les instances programmées ou "Scheduled Reserved Instances"
Avec ce type d'offre, les instances peuvent être programmées.
Exemple, je veux que cette instance démarre tous les mercredi en 14 h 00 et 15 h 30 pendant 1 mois.

Ce sont en gros des `cronjobs` 🙂.


#### 2.3.5. Les instances éphémères ou "Spot Instances"
Ah ! C'est l'offre que je préfère et voici pourquoi :

- les instances peuvent coûter jusqu'à 90% moins cher comparé à une instance `On Demand`
- avec cette offre, on décide du prix que l'instance va coûter, si ce prix est dépassé l'instance est supprimée automatiquement.
  Les instances sont soumises à la loi de l'offre et de la demande, donc, le prix d'une instance va fluctuer.

Ces instances sont utiles pour des charges de travail qui peuvent échouer sans conséquences, exemple des `jobs`, de la compression d'images, de l'analyse de donnée, des taches asynchrones non critiques, etc.
En gros toutes les charges de travail qui peuvent être relancés sans problème.


✨ **La meilleure combinaison entre ces différentes offres pourraient être** :
- Utiliser les instances réservées pour les applications et la DB
- Utiliser des instances `On Demand & Spot` pour les pics d'activité et les imprévus (pics d'activité, tests, etc.)**

## 3. Points importants à retenir

Tout ce dont tu as besoin de savoir,
c'est de distinguer les différentes offres et à quel moment utiliser chacune d'entre elles.
Pour ce qui est de l'instance en elle-même, nous allons découvrir tout ce que l'on peut faire avec celle-ci dans les prochains cours du jour.

## 4. Pour aller plus loin
Il existe d'autres types d'offres qui répondent à des besoins encore plus spécifiques, pour en savoir plus, [RTFM](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-purchasing-options.html) 😛
