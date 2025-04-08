# AWS Elastic Beanstalk : Les notions avancées

## 1. Introduction
Maintenant que tu as une bonne vue d'ensemble du service Elastic Beanstalk, il est temps de passer à la vitesse supérieure.
Adieu les clic-clic avec ta souris, place à l'automatisation des déploiements.

## 2. La ressource
### 2.1. Automatiser l'approvisionnement des services lancés par Elastic Beanstalk.
Avec Elastic beanstalk tu peux lancer beaucoup de sous-services via la console, 
mais changer la configuration des sous-services via la console, n'est pas une solution viable à long terme.
Surtout lorsque ton application nécessite des configurations très spécifiques.

De plus, que va-t-il se passer si par accident un lead Dev, un Devops ou un CTO efface l'environnement ?  
Tu n'auras pas d'autres choix, que celui de recréer la configuration de A à Z,
et au passage passer beaucoup d'heures à debugger en essayant de retrouver la configuration "qui marchait avant" 😜.

Pour éviter ces désagréments, Elastic Beanstalk à tout prévu, car il permet à l'utilisateur peu agguerie d'utiliser ce service via la console, 
mais également de permettre aux devs et DevOps d'utiliser des fichiers de configuration afin d'automatiser la création des sous-services et le déploiement de l'application.

Mais comment concrètement utiliser cette fonctionnalité ?

Très bonne question, cher moussaillon ! 

Ma réponse, débrouille-toi ! 
Tu trouveras toutes les informations dont tu as besoin dans la documentation d'AWS et sur internet 😉.


### 2.2. Déployer son application à l'aide de l'interface en ligne de commande (EB CLI)
En plus des fichiers de configuration, Elastic Beanstalk vient avec un CLI, destiné à faciliter la vie des utilisateurs.

Ce CLI, appelé `EB CLI` est extrêmement utile et te permet de faire monter en flèche ta productivité, 
par exemple pour créer un environnement et déployer ton application, 
tu as juste à écrire dans le terminal `eb create`, 
rentrer les données demander par le CLI et le tour est joué 😄.
Ce qui te permet d'automatiser à l'aide de script yaml tout le process.

Je ne vais pas t'en dire davantage sur ce CLI, car l'utilisation de cette interface est plutôt simple une fois que tu as la [documentation](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/eb-cli3-install.html) sous les yeux.


## 3. Pour aller plus loin
Pas besoin pour le moment
