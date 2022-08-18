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
Dans cette partie tu vas déployer un monolithe ROR sur Elastic Beanstalk à l'aide l'interface `EB CLI` ou `AWS CLI` (qui est plus compliqué).
Dans notre cas quand je parle de monolithe, j'entends une application ROR basique.
Tu peux, par d'exemple, utiliser l'application que toi et ta team avaient créé 
et présenté en guise de projet final du parcours Développeur. 

Voici les différentes étapes à suivre : 

1. Crées une application et à l'intérieur lance un environnement qui comprend ces ressources :
   - un équilibreur de charge de type `ALB`,
   - un service ASG, qui possède une instance minimum et 2 maximum, je te laisse décider pour le reste des options (health check, `Cooldown`, Availability zones, etc.),
   - et la meilleure stratégie de déploiement pour un environnement de développement

2. Rédige un petit paragraphe (10 lignes minimum) pour expliquer ce qui t'a motivé à choisir la stratégie de déploiement que tu as mise en place.
3. Rédige dans une autre paragraphe ((10 lignes minimum)) sur quelle stratégie de déploiement, tu choisirais pour un environnement de `preprod`


#### 2.2.2. Migrer un monolithe ROR sur Elastic Beanstalk via les script de configuration
Cette partie sera exactement la même que celle du dessus
à la différence que la configuration des ressources de l'environnement se feront 
via des scripts de configuration, qui se trouveront à la racine de ton application ROR 
et plus spécifiquement dans le dossier `.ebextensions`.

Voici les différentes étapes à suivre :
1. Crées une application et à l'intérieur lance un environnement qui comprend ces ressources :
  - un équilibreur de charge de type `ALB`,
  - un service ASG, qui possède une instance minimum et 5 maximum, je te laisse décider pour le reste des options (health check, `Cooldown`, Availability zones, etc.),
  - et la meilleure stratégie de déploiement pour un environnement de production

2. Une fois que tu as vérifié que ton application fonctionne correctement, crées une instance EC2,
   dans laquelle tu vas mettre lancer une BDD (mongo ou mysql).

3. Connecter l'application ROR qui se trouve dans Elastic Beanstalk à la BDD en passant par l'IP privée de l'instance EC2.

4. Rédige un petit paragraphe (10 lignes minimum) pour expliquer ce qui t'a motivé à choisir la stratégie de déploiement que tu as mise en place.


---
##### 🚀 ALERTE BONNE ASTUCE
Pour les environnements de dev, preprod et/ou prod,
il peut être avisé de modifier les options ton ASG, par exemple :
- utiliser des instances éphémères.
- changer la `CoolDown period`.
- gérer les `hooks` lorsqu'une instance se lance où se supprime.
- etc.

---

#### 2.2.3. Challenge : Gérer les versions de ton application
Au fur à mesure que tu vas déployer des versions de ton application, 
tu vas te retrouver avec des versions trop anciennes.
Qui ne nécessite pas d'être gardé, 
d'autant plus que le code est versionné sur Github/GitLAb/bitBucket et peut être utilisé si besoin.

De ce fait, je t'invite à trouver une solution automatique, pour éviter de se retrouver comme sur cette image ci-dessous 
à être obligé de régulièrement supprimer les versions à la main 😉.

![Elastic Beanstalk App to delete](https://i.imgur.com/C8M9Jlq.png)


## 3. Rendu attendu
Libre à toi d'organiser le repo comme tu le souhaites 🙂,
néanmoins ce repo doit contenir pour chaque partie :
- les scripts, ont permis de créer ton infrastructure à l'aide d'AWS CLI et du script shell.
- des fichiers markdown qui contiennent les paragraphes sur tes choix stratégiques.
- un README qui contient :
   - le schéma de ton infrastructure
   - comment cette infrastructure fonctionne
   - et comment lancer cette infrastructure depuis une commande Makefile