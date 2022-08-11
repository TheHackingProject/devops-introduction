# AWS Elastic Beanstalk : Les bases

## 1. Introduction
Dans le cours du jour, tu vas découvrir Elastic Beanstalk le PaaS AWS concurrent de Heroku.

## 2. La ressource
### 2.1. Elastic Beanstalk, l'abstraction par excellence.

À quoi sert le service Elastic Beanstalk ?  
Eh bien, tout est dit dans le titre. Tu ne comprends toujours pas ?
Hum, laisse-moi m'expliquer dans ce cas, ce service permet de lancer pratiquement tous les services AWS que l'on a vu jusqu'à maintenant 
via la console AWS ou depuis des fichiers (script) de configuration. 
L'objectif est de faciliter au maximum l'utilisateur qui souhaite lancer une application web ou 
des workers scalable avec ce service.  
**Autrement dit ce service est en soi, une abstraction destinée à faciliter la vie des utilisateurs.**

Concrètement avec Elastic Beanstalk tu peux déployer :
- ton code écrit Nodejs, Ruby, Go, PHP, Java, ... et même des application conteneurisée avec Docker
- mettre en place une stratégie de scalabilité avec le service `ASG`
- mettre en place un `Load Balancer`
- lancer une DBB AWS
- mettre en place des notifications par mail
- lancer AWS SQS (semblable à RabbitMQ)

Et le meilleur dans tout cela ce qu'à la différence de Heroku,
tu peux accéder aux services lancés par Elastic Beanstalk et les manager directement.
Par exemple, tu peux accéder et même rentrer dans les instances EC2 créer par ce service en cas besoin.

Au-delà de créer ces services pour toi, Elastic Beanstalk offre également des fonctionnalités supplémentaires comme :
- versionné tes déploiements et pouvoir switcher d'un déploiement à l'autre,
- te permettre de mettre en place des stratégies de déploiements,
- te permettre d'automatiser le déploiement et la création des sous-services à l'aide de fichiers de configurations,
- et te permettre de déployer ton application et tes fichiers de configuration via un CLI dédié.

Nous allons aborder la plupart des fonctionnalités au fur à mesure, mais avant d'aller plus loin voici une [démonstration du service en action](https://www.youtube.com/watch?v=sybZlA6lUns).

Maintenant que tu as un apercu de comment fonctionne Elastic Beanstalk, il est temps de détailler les différentes fonctionnalités de ce service. 

___
⚠️ ALERTE A GARDER EN TÊTE

Avant d'aller plus loin, un petit mot sur le prix de ce service.

🥁🥁🥁🥁🥁🥁🥁🥁🥁🥁🥁🥁

Elastic Beanstalk, ne coûte rien 😄. Oui, oui tu as bien entendu.

**Mais attention**, c'est un piège, Elastic Beanstalk ne coûte rien, en revanche, 
ce sont les services qui vont être démarrés par ce service, qui eux, ont prix.
Par exemple, dans le cas où tu utilises Elastic Beanstalk pour déployer une application et équilibreur de charge.
Derrière, il va utiliser le service EC2 et ALB, qui te seront facturés, comme si tu les utilises individuellement.

**Rappelle-toi, Elastic Beanstalk est avant tout, une abstraction, destiné aux utilisateurs qui souhaitent utiliser la solution "la plus clés en main possible".**

De ce fait, Elastic Beanstalk peut être utilisé par :
- les startups qui ne veulent pas ou n'ont pas la possibilité d'engager un Devops à temps plein,
- les grandes enterprises pour tester rapidement un produit avant de créer une architecture plus robuste autour de ce produit,
- et/ou les PME, qui n'ont pas forcément de personne dédiée à la création de l'infrastructure, mais qui ont quand même besoin au cas, d'accéder aux sous services lancés par Elastic Beanstalk pour debugger.
- 
___

### 2.3. Le versioning

Une fois que tu as déployé ton application, tu as la possibilité de versionner les différentes versions de cette application.
Et pouvoir le cas échéant switcher entre ces versions.
Cela peut être nécessaire lorsque par exemple en production, tu te rends compte que la version qui vient d'être déployé comporte un/des bugs.
À ce moment-là, tu peux d'un simple click revenir à la version précédente.

Mais trêve de bavardages place à une démonstration avec ce [tutoriel](TODO : faire une vidéo).

Avec Elastic Beanstalk, le changement de versions ne se fait pas au hasard, 
car il est essentiel surtout en production de ne pas avoir d'interruption de service.
Raison pour laquelle, Elastic Beanstalk te permet de choisir la stratégie de changement de version (a.k.a une stratégie de déploiement).

### 2.3. Les stratégies de déploiement
Ici, on va détailler les différentes stratégies de déploiement sur Elastic Beanstalk, 
il est très important d'avoir une comprehension précise de ces modes de déploiement, 
car tu seras amené dans ton enterprise, selon le contexte à argumenter, présenter et choisir une de ces stratégies.

#### 2.3.1. All at Once
![All-at-once](https://i.imgur.com/sJRVg3U.png)

Aves cette stratégie, tu déploies la nouvelle version ton application de la manière la plus rapide et simple possible, 
c'est-à-dire que l'ancienne version sera d'abord supprimer et ensuite la nouvelle sera créée.

Les avantages et inconvénients de cette stratégie sont :

- déploiement rapide
- interruption de service (l'application a un temps d'arrêt et ne peut donc pas servir le client).
- peu être utilisée dans les environnements de développement, pour itérer rapidement.
- **pas de coût additionnel**, car toutes les instances sont supprimées et recréées


#### 2.3.2. Rolling
![Rolling](https://i.imgur.com/AYBZazj.png)

Cette stratégie implique que tu aies mis en place une `ASG` avec au moins deux instances EC2 minimum.
Ainsi lors du déploiement de la nouvelle application une instance ou un lot d'instances (à configurer) sera remplacé, un lot à la fois.
Le passage d'un lot à un autre se fait à condition le `health check` passe. 
Si ce n'est pas le cas le déploiement est annulé.

Les avantages et inconvénients de cette stratégie sont :
- l'application pendant un cours instant fonctionne en dessous de ces capacités, 
  car un lot d'instance (nombres à définir) de l`ASG` seront supprimer.
- deux versions de l'application sont servies en même temps durant le `rolling`.
- **pas de coût supplémentaire**, car le nombre d'instances en fin de compte reste équivalent.
- le déploiement est long.


#### 2.3.3. Rolling with additional batches
![Rolling-Additional-batches](https://i.imgur.com/UHp0bub.png)

Comme le `rolling` cette stratégie nécessite au moins deux instances.
Et à la différence du `rolling` une instance supplémentaire ou un lot d'instance seront créer 
afin que la totalité des instances où tourne l'ancienne version soient toujours disponible.
Une fois que les nouvelles instances qui abritent la nouvelle version de l'application ont remplacé les anciennes instances, le lot supplémentaire est détruit.

Les avantages et inconvénients de cette stratégie sont :
- l'application continue à fonctionner au maximum de ces capacités, car un lot d'instance qui abrite la nouvelle version est créée.
- **ce lot d'instance supplémentaire, engendre un cout supplémentaire.**
- à cause du lot d'instance supplémentaire, deux versions de l'application seront servies en mêmes temps.
- temps de déploiement long.
- cette stratégie, peut être appliquée pour l'environnement de production.


#### 2.3.4. Immutable
![Immutable](https://i.imgur.com/PFmEF9d.png)

Cette stratégie permet de carrément de déployer la nouvelle version dans un deuxième service `ASG` (cette `ASG` aura exactement la même configuration que la première en termes de nombre d'instances, health checks, ...),
attendre la fin de la création de cette `ASG`. Et ensuite `merger` les instances de cette ASG dans l'ancienne `ASG` tout en supprimant les anciennes instances.
Cette opération d'ajout/suppression prends à peine quelques millisecondes ce qui garanti un temps d'interruption égale à zéro.

Les avantages et inconvénients de cette stratégie sont :
- pas d'interruption de service.
- coût déploiement élevé, car avec le nouveau ASG le nombre d'instances est doublées.
- l'avantage de doubler le nombre d'instances est que seul une version de l'application sera servie durant le déploiement. 
- parce que le nombre d'instances est doublée :
  - le temps déploiement est plus long
  - mais le `rollback`, en cas d'erreur (health check, échec du script dans `user data`, etc.) est rapide, car l'`ASG` temporaire sera juste supprimer.
- excellent choix pour l'environnement de production.

#### 2.3.5. Traffic Splitting
![Traffic-splitting](https://i.imgur.com/knPEoGL.png)

Comme la stratégie `Immutable`, un `ASG` temporaire est créé, 
ensuite un pourcentage du traffic client (que tu définis) est redirigé vers cette `ASG` pendant un certain temps (que tu définis).
Une fois le temps écoulé, les instances de l`ASG` temporaire seront merger l`ASG` de base tout en supprimant les anciennes instances.

Les avantages et inconvénients de cette stratégie sont :
- excellent pour des tests de type [`canary` ou `A/B`](https://www.testenvironmentmanagement.com/deployment-styles-bluegreen-canary-and-ab/)


- coût déploiement élevé, car avec le nouveau ASG le nombre d'instances est doublées.


- l'avantage de doubler le nombre d'instances est que seul une version de l'application sera servie durant le déploiement.


- parce que le nombre d'instances est doublée :
  - le temps déploiement est plus long
  - mais le `rollback` est en cas d'erreur (health check, échec du script dans `user data`, etc.) est rapide, car l'`ASG` temporaire sera juste supprimer

#### 2.3.6. Blue / Green

Cette stratégie n'est pas vraiment une fonctionnalité d'Elastic Beanstalk mais elle peut être implémenté avec l'aide d'un autre ce service appelé `Amazon Route 53`.
Mais cela reste un process très manuel, mais possible 🙂.

Si tu souhaites en savoir plus, notamment comment l'implémenter voici le [tutoriel](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/using-features.CNAMESwap.html) que propose AWS.

## 3. Points importants à retenir
Voici ce que tu dois retenir :
- Elastic Beanstalk est un PaaS qui permet lancer des applications sans difficulté, ce service peut être comparé à Heroku 
  à la différence qu'avec Elastic Beanstalk tu peux accéder et modifier chaque sous-service qu'il lance individuellement.


- Elastic Beanstalk est gratuit, seuls les sous-services qu'il lance sont payants.


- Avec Elastic Beanstalk, il est possible de déployer différentes versions de votre application 
  en suivant des stratégies de déploiement qui sont :
  - Rolling
  - Rolling with additional batches
  - Immutable
  - Traffic Splitting
  - Blue / Green

  
## 4. Pour aller plus loin
Pour avoir plus d'informations sur Elastic Beanstalk la [documentation d'AWS](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/GettingStarted.html) est bon point de départ.
Je t'invite également lire à la documentation sur les [modes de déploiement](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/using-features.deploy-existing-version.html) d'Elastic Beanstalk.

