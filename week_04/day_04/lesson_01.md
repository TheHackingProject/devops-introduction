# Monitorer des instances EC2 avec Amazon CloudWatch

## 1. Introduction
Tu sais comment déployer tes applications sur AWS en utilisant différents services, 
mais comment savoir si ton application ne marche pas correctement, comment peux-tu selon le type d'application créer des alarmes spécifiques
liées à la consommation des ressources ou aux erreurs remontées par les logs ?

Eh bien, c'est que nous allons voir !

## 2. La ressource
### 2.1. Amazon CloudWatch
Amazon CloudWatch un service qui permet de monitorer la santé et la performance des services d'AWS et des applications
qui se trouvent sur EC2 ou  `on-premise`.

Concrètement voici ce que ce service propose en termes de fonctionnalités :
- Métriques : collecter et traquer des métriques (ex. CPU, RAM, etc.)
- Logs : collecter, monitor, analyser et sauvegarder (ex. traquer les erreurs 400 ou 500 dans les logs)
- Événements : Envoi de notification lorsqu'un événement arrive. (ex. envoyer une notification si l'espace de stockage utilisé atteint 90%)
- Alarmes : réagit en quasi-temps réel aux événements et métriques. (ex. être alerté si ta BDD subit trop requête depuis un certain temps)

Avant de rentrer dans les détails voici [une présentation d'Amazon CloudWatch](https://www.youtube.com/watch?v=k7wuIrHU4UY)

### 2.2. LEs différents aspects du servcice Amazon CloudWatch

#### 2.2.1 Comment Amazon CloudWatch organise et affiche les données recueillies ?

Principalement à l'aide de la fonctionnalité principale de CloudWatch qui est `CloudWatch Metrics`.

**Les métriques sont des variables que tu souhaites monitorer** et `CloudWatch Metrics` est une succession de valeurs ou `data-point` ordonnés dans le temps et envoyés au service CloudWatch.
Chaque `data-point` à un timestamp et optionnellement une unité de mesure. 
Par exemple le CPU utilisé par une instance EC2 aura comme unité de mesure le pourcentage.

Les métriques sont définies par :
- un **nom** 
- un **namespace** : c'est un conteneur pour plusieurs métriques.
  Par exemple toutes les métriques d'une instance EC2 se trouve dans un namespace nommé `AWS/EC2`.
- et optionnellement une **dimension** 
  (une dimension est comme un filtre, par exemple tu peux utiliser la dimension `InstanceId` pour chercher toutes les métriques liées à une instance EC2 en particulier).

La fonctionnalité `CloudWatch Metrics`, permet de monitorer un large éventails de données d'un serveur, 
mais malheureusement certaines données de base comme le CPU, ou très spécifique comme le nombre de connection TCP ne sont pas monitorées par défaut.
C'est pour cela qu'Amazon CloudWatch te permet à l'aide d'un agent de monitorer ce type de données.


#### 2.2.1. Monitorer les logs et les données avancées.
Dans CloudWatch, il arrive que les métriques de base ne suffisent pas ou que l'on ait également envie monitorer les logs d'une instance EC2 et des applications qui se trouvent dans cette instance.

C'est pour ce cas d'utilisation de `CloudWatch Agent` a été créer. Il permet de monitorer : 
- les logs des instances EC2/serveurs/VMs et des applications.
- des données avancées du système d'exploitation (mémoire utilisée, process en cours, utilisation du swap, etc.) 

Pour utiliser cet agent, tu dois d'abord l'installer sur ton instance EC2/serveur/VM.

En plus d'envoyer des métriques personnalisées CloudWatch Agent, 
l'utilisateur peut choisir d'envoyer des métriques à des intervals plus ou moins courtes 
(tu peux configurer cet interval à 30, 15, 5 ou 1 seconde).

___
⚠️ ALERTE ERREUR COMMUNE

Que ce soit avec CloudWatch Metrics via la console AWS/AWS CLI ou lors de la configuration de `CloudWatch Agent`.

L'intervalle que tu définis est très important, car il a un coût qui peu vite monter.
**Cher moussaillon gardes bien en tête ceci : plus l'intervalle est court plus tu paies.**
___


#### 2.2.2. Créer des alarmes


#### 2.2.3. Déclencher des évènements


## 3. Points importants à retenir


## 4. Pour aller plus loin
Pas besoin pour l'instant



Sujets :
- AWS CloudWatch

