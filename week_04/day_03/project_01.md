# PaaS et serverless : Une infrastructure sans prise de tête

## 1. Introduction


## 2. Le projet
### 2.1. Scénario

De retour dans ta super Startup ! Il est midi, les membres de la team IT et toi sont au réfectoire en train de manger.
L'ambiance est chaleureuse et pour cause, ce sont bientôt les vacances, chaque membre de la team parle de l'endroit où elle ira.
  
Tout à coup, tu aperçois Jerome qui se lève, d'un air pressé, 
avant de partir il pose la maison sur ton épaule pour attirer ton attention et te dis : 
"lundi et mardi prochain, je ne serai pas là. Tout de suite, j'ai un point avec le CTO, pour évoquer les priorités en termes de migration pour qu'il ait une vision globale,
je te ferais un compte rendu juste après."
Tu réponds : "D'accord merci pour l'information, à tout à l'heure ! 
N'hésite pas si tu as besoin je m'occupe de quelque chose en particulier."
D'un air malicieux, il te répond : "Maintenant que tu le dis, j'ai peut-être un ticket pour toi, mais je vais d'abord valider les priorités avec le CTO avant de t'en dire plus."

Un peu plus tard dans l'après-midi, après sa réunion avec le CTO, il te fait une synthèse de la réunion, 
et te demande d'attaquer la migration du backoffice sur Elastic Beanstalk.

Après que tu es demandé pourquoi utiliser Elastic Beanstalk, il te répond : 
"Cette application est un monolithe qui a peu dépendance d'un point de vue architecture,
car elle n'est connecté qu'à la DBB alors que les autres applications sont des micro-services, 
qui possèdent 3 voir 4 points d'inter connections.
De plus Elastic Beanstalk est assez simple à prendre en main, cela nous permettra, 
dans un premier, de nous faire la main, sans prendre trop de risque que la migration casse des briques importantes de' l'infrastructure. 
Et enfin, étant une application directement utiliser par la team business, sa migration fera office de vitrine au projet de migration sur AWS de manière globale.
Tu fronces les sourcils en signe d'incompréhension, et il te répond en rigolant : 
"Ne cherches pas à comprendre, c'est politique, je n'ai pas à 100% compris moi aussi !" 


### 2.2. Feuille de route
#### 2.2.1. Migrer un monolithe ROR sur Elastic Beanstalk via EB CLI

Créer :
- environnement 
- application 
- ALB + ASG
+ mettre en place stratégie de déploiement via EB CLI.


#### 2.2.2. Migrer un monolithe ROR sur Elastic Beanstalk via les script de configuration

Créer :
- environnement
- application
- ALB + ASG
+ mettre en place stratégie de déploiement via EB CLI.


##### 🚀 ALERTE BONNE ASTUCE


#### 2.2.3. Elastic Beanstalk communiquer avec une BBD externe

Attacher l'application qui est dans Elastic Beanstalk à une DBB qui se trouve sur instance EC2.

## 3. Rendu attendu
Un repo github ....
