# Monitorer des instances EC2 avec Amazon CloudWatch

## 1. Introduction
Tu sais comment déployer tes applications sur AWS en utilisant différents services, 
mais comment savoir ton application ne marche pas correctement, comment peux-tu selon ton application créer des alarmes spécifiques
liées à la consommation des ressources des serveurs ou aux logs ?

Eh bien, c'est que nous allons voir.

## 2. La ressource
### 2.1. Amazon CloudWatch
C'est un service qui permet de monitorer la santé et la performance de tes ressources AWS, tes applications
et même les services qui se trouvent `on-premise` dans ton datacenter.

Concrètement voici qu'Amazon CloudWatch propose en termes de fonctionnalités :
- Métriques : collecter et traquer des métriques (ex. l'utilisation du CPU)
- Logs : collecter, monitor, analyser et sauvegarder des logs (ex. traquer les erreurs 400 ou 500)
- Événements : Envoi de notification lorsqu'un événement arrive. (ex. envoyer une notification si l'espace de stockage utilisé atteint 90%)
- Alarmes : réagit en quasi-temps réel aux événements et métriques. (ex. être alerté si ta BDD subit trop requête depuis un certain temps)

Avant de rentrer dans les détails voici [une présentation d'Amazon CloudWatch](https://www.youtube.com/watch?v=k7wuIrHU4UY)


### 2.2. Amazon CloudWatch : Concepts et définition
#### 2.2.1. Créer des métriques personnalisées
Dans CloudWatch, il arrive que les métriques de base ne suffisent pas ou que l'on ait envie de monitorer également les logs ou des applications qui se trouve par example dans une instance EC2.

C'est pour ce cas d'utilisation de `CloudWatch Agent` a été créer. Il permet de monitorer : 
- les logs des instances EC2/serveurs/VMs et des applications.
- des données du système d'exploitation (mémoire utilisée, process en cours, utilisation du swap, etc.) que ne sont pas remonté dans CloudWatch par défaut

Pour utiliser cet agent, tu dois d'abord l'installer sur ton serveur ou VM qui se trouve sur AWS ou non.
En plus d'envoyer des métriques personnalisées CloudWatch Agent, l'utilisateur peut choisir d'envoyer des métriques à des intervals plus courtes (tu peux configurer cet interval à 30, 15, 5 ou 1 seconde).
Cependant, plus cet interval est courte plus le coût augmente.


#### 2.2.2. Créer des alarmes


#### 2.2.3. Déclencher des évènements




## 3. Points importants à retenir


## 4. Pour aller plus loin
Pas besoin pour l'instant



Sujets :
- AWS CloudWatch

