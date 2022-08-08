# AWS Autoscaling - Adapter les capacités aux traffic

## 1. Introduction
Maintenant que tu peux ajouter un `Load balancer` dans ton infrastructure. 
Est-ce suffisant pour gérer les pics de charge lié au traffic ou tout simplement le traffic au quotidien ?

Eh bien la réponse est oui ! 

Mais comme tu l'as remarqué l'ajout d'une instance EC2 dans le groupe d'instances (`Instance Groups`) où est distribué le traffic du `Load Balancer`, est une opération manuelle.
Et j'imagine que tu ne vas pas t'amuser à chaque fois qu'il y a un pic de charge à ajouter et supprimer des instances manuellement. 

Tu ne vas pas le faire n'est-ce pas ? Rassure-moi ? 😱 Cela serait intenable à la longue. 

C'est pour cela qu'AWS à créer le `scale in` (ajouter des instances EC2) et `scale out` (suppression des instances EC2) des instances de manière automatique. 💥

## 2. La ressource
### 2.1. Auto Scaling Group (ASG), comment ça marche ?

En général le dimensionnement automatique des instances, automatise l'ajout ou la suppression d'instance EC2 en se basant sur le traffic qui arrive sur vos applications.
Le service `ASG (Auto-Scaling Groups)` d'AWS s'occupe de ce dimensionnement pour répondre à la charge subit par ton application.

Le principe du `ASG`, est simple à comprendre, de ce fait, sans interludes, place à la pratique.

### 2.2. ASG - Illustration 

TODO : Faire une vidéo

- parler de diff entre `Launch Configuration` et `Launch Template`
- des alertes possibles pour gérer le dimensionnement.

## 3. Points importants à retenir
Voici ce qu'il faut retenir :

- Le service `ASG` à pour but de `scale in` et `scale out` selon les resources utilisées par ton groupe d'instance. 
  Le dimensionnement des instances géré par le `ASG` est déclenché par des métriques préalablement configurer.


- `ASG` utilise la fonctionnalité `Launch configuration` ou `Launch Template` (nouvelle version qui possède plus d'options) pour créer un modèle d'instance qui sera lancé à chaque `scale in`


- **Le service ASG est gratuit**, tu payes uniquement les instances lancées par celui-ci.


- Si une instance gérée par l'`ASG` s'arrête ou se supprimer pour une raison, 
  autre que le `scale out`, il sera automatiquement remplacé par une nouvelle instance, 
  c'est le principe de `auto-healing`


- Si le `LB` qui se trouve devant ton service `ASG` marque une instance comme étant `unhealthy`. 
  L'`ASG` va supprimer cette instance et la remplacer immédiatement.

## 4. Pour aller plus loin
La [documentation d'AWS](https://docs.aws.amazon.com/autoscaling/ec2/userguide/auto-scaling-groups.html) est bon départ pour plonger au cœur de ce service, 
de plus la partie sur les [`hooks`](https://docs.aws.amazon.com/autoscaling/ec2/userguide/lifecycle-hooks.html) te permettra d'effectuer des opérations à des moments précis du cycle de vie d'une instance gérée par l'`ASG`. 
Par exemple, à la suppression par l'`ASG` d'une instance, 
il est possible d'accomplir des opérations dans l'instance (copié les logs, éteindre des processes, envoyer des alertes,...) 
avant qu'elle ne soit complètement supprimer.
