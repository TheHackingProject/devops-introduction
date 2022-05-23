# PaaS et serverless : Une infrastructure sans prise de tête

## 1. Introduction


## 2. Le projet
### 2.1. Scénario

De retour dans ta super Startup ! Il est midi, la personne de la team IT et toi sont au refectoire entrain de manger.
L'ambiance est chaleureuse et pour cause, c'est bientôt les vacances, chaque membre de la team parle de l'endroit où elle ira.
  
D'un coup tu apercois Jerome qui se lève, d'air pressé, 
avant de partir il pose la maison sur ton épaule pour attirer ton attention et te dis : 
"Lundi et Mardi prochain, je ne serais pas là. Tout de suite j'ai un point avec le CTO, pour évoquer les priorité en terme de migration pour qu'il est une vision globale,
je te ferais un compte rendu juste après."
Tu réponds : "D'accord merci pour l'information, à tout à l'heure ! 
Mais avant que tu partes t'as besoin qu'en début d'après midi, je m'occupe de quelque chose en particulier ?"
Il te répond : "Mais que tu le dis, j'ai peut-être un ticket pour toi, mais je vais d'abord valider les priorités avec le CTO avant de t'en dire davantages. A plus tard !"

Un peu plus dans l'après-midi après sa réunion avec le CTO. Il te fait une synthèse de la réunion, 
et te demande d'attaquer la migration du backoffice sur Elastic Beanstalk

Après que tu es demandé pourquoi utiliser Elastic Beanstalk, il te répond : 
"Cette application a peu dépendance d'un point de vue architecture,
car elle n'est connecté qu'à la DBB et à l'application front principalement alors que les autres applications ont 3 voir 4 points d'inter-connections.
De plus Elastic Beanstalk est assez simple à prendre en main, cela nous permettra, dans un premier, de migrer cette application san trop d'effort 
Et enfin, étant une application directement utiliser par la team business, sa migration service de vitrine au projet de migration sur AWS.
Tu fronces les sourcils en signe d'incompréhension, 
et il te répond en rigolant : "Ne cherches pas à comprendre, c'est politique, je n'ai pas à 100% compris moi aussi !" 


Jerome Lundi et mardi prochain je serais pas là. mais je t'ai laissé un ticket, il s'agit du POC.
déployer notre backoffice sur Elastic Beanstalk + une BDD sur EC2 + un lambda qui fait des snapshot regulier de cette DBB et save les dumps sur S3 
et restaure cette DB sur EC2 (deux DBB dans docker-compose) qui sert pour faire des analyser pour le business
### 2.2. Feuille de route
#### 2.2.1. ....

#### 2.2.2. ....

##### 🚀 ALERTE BONNE ASTUCE


#### 2.2.3. ...


## 3. Rendu attendu
Un repo github ....
