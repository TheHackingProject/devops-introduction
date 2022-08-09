# AWS lambda ou comment faire du code serverless

## 1. Introduction
Je sais !  
Tu as déjà entendu parler du `serverless` et de fonction `event-driven`.
Mais tu te demandes ce que c'est réellement, comment cela marche et l'utilité derrière tous ces mots barbares.
Eh bien nous allons voir tout cela de manière détaillée dans ce cours.

## 2. La ressource
### 2.1. Qu'est-ce que le serverless ?
Le principe du `serverless`, est de te permettre de lancer ton code (application ou simple fonction) 
dans le cloud sans avoir à te soucier de manager des serveurs.
Quand je parle de serveurs, je parle des instances EC2 que tu n'arrêtes pas de créer, lancer et supprimer depuis une semaine 😁.  
Eh bien, tu peux t'en passer avec le `serverless` 💥 !

Ce qui veut dire qu'AWS va manager toute l'infrastructure à ta place, 
tu as juste à t'occuper du code et le tour est joué, au KLM 😎.

Mais qu'est-ce que cela veut dire, s'occuper de tout ?  
Hulula jeune moussaillon, c'est une très bonne question !

Concrètement AWS va s'occuper de :
- provisioner les serveurs
- mettre à jour les serveurs (OS, packets, faille de sécurité, etc.)
- la scalabilité des serveurs pour répondre à la demande (traffic, CPU, mémoire, etc.)
- gérer la disponibilité du service, en d'autres mots, pas de coupure de service, car AWS garantie une disponibilité minimum de 99.95 % par mois 😄.
  Ce qui, tu l'as compris, offre un avantage non négligeable dans le monde brutal des affaires (🕜 is 💰) !

Maintenant que tu en sais davantage sur le `serveless`, il est temps de parler d'un des services `serverless` qu'offre AWS, 
j'ai nommé les `Lambdas`.

### 2.2. AWS Lambda
AWS Lambda est donc un service `serverless` qui te permet de lancer ton code sans t'occuper de l'infrastructure,
à savoir les serveurs et l'environnement de travail.

Justement en parlant de l'environnement de travail, ce service supporte plusieurs languages qui, pour l'instant (car AWS ajoute de nouveaux langages au fil du temps) sont :
- Java
- Go
- PowerShell
- Node.Js
- C#
- Python
- Ruby

Cela veut dire, que tu peux écrire du code dans n'importe lequel de ces langages 
et le déployer sans problème sur AWS Lambda, c'est plutôt cool non ? 🙂


Avant d'aller plus loin, 
voici [une video de Stephane Maarek](https://www.youtube.com/watch?v=seaBeltaKhw) 
qui va te montrer comment créer et utiliser des Lambdas.


Maintenant que tu as une première idée du fonctionnement des Lambdas, 
laisses moi te parler de leurs principales atouts, qui est de réagir à des événements 💥.


Heu, je ne te vois pas réagir ou sauter de joie !
C'est parce que tu es bouche bée j'espère, non ?  
Hum-mm ! Laisse-moi le redire les Lambdas sont `event-driven (orienté événements)`. 
Avant de continuer voici une petite mise à niveau sur [une architecture orientée événements](https://www.redhat.com/fr/topics/integration/what-is-event-driven-architecture).


Donc une Lambda est `event-driven` cela veut dire qu'elle peut être déclenchée par d'autres services d'AWS ou 
être appelée directement depuis une application web ou mobile.
Les types d'évènements qui peuvent déclencher une Lambda sont par example :
- un changement sur un bucket S3
- un changement dans le service DynamoDB (une DBB NoSQL, que l'on verra plus tard),
- les `hooks` du service `Auto Scaling Groups`, plus précisément, 
  il est possible lorsque l'`ASG scale out` d'utiliser [un crochet spécifique pour déclencher une Lambda](https://docs.aws.amazon.com/autoscaling/ec2/userguide/tutorial-lifecycle-hook-lambda.html).

D'autres services d'AWS peuvent **non pas déclencher une Lambda**,
mais **invoquer une Lambda** comme un équilibreur de charge AWS de type `ALB`

Mais, c'est quoi la différence entre une Lambda déclenchée et invoquée ?  
Ahh jeune moussaillon, ça fait plaisir de voir que tu suis !  
Eh, bien je vais te laisser le découvrir par la pratique à l'aide du projet du jour.
Mais avant de passer au projet, parlons du prix.

### 2.3. AWS Lambda le prix
La tarification d'une Lambda est liée aux nombres d'appels et la durée de fonctionnement de celle-ci.

Le prix par nombre de requêtes se calculent comme ceci :
- Les premiers 1 OOO 000 de requêtes sont gratuits et au-delà tu seras facturé $0.0000002 par requête (ce qui revient à $0.20 pour 1 000 000 de requêtes).

Le prix par durée de fonctionnement se calcule à l'aide de la quantité de RAM utilisé et la duré d'utilisation de cette RAM :
- les 400 000 premières secondes d'utilisation de 1GB de RAM sont gratuites, au-delà, $1.00 sera facturé pour 600 000 secondes d'utilisation d'un 1GB de RAM. 


Par souci de clarté, jeune moussaillon !  
Voici un exemple, une Lambda qui va fonctionner pendant 15 secondes en moyenne par mois
avec 512MB de RAM et prendre en charge 1 million de requêtes au cours de ce mois, te sera facturé, une certaine somme
que je te laisse calculer toi-même en rentrant ces données dans ce [calculateur](https://s3.amazonaws.com/lambda-tools/pricing-calculator.html).

Comme tu le vois les Lambda ne coutent pas cher du tout 😃 !  
Pour avoir plus d'informations sur le prix des Lambdas la [documentation d'AWS](https://docs.aws.amazon.com/lambda/latest/dg/welcome.html) te fournira toutes les informations dont tu as besoin.

## 3. Points importants à retenir
Voici ce que tu dois retenir :

- Les Lambdas sont `serverless`, `event-driven` de manière synchrone et asynchrone, 
  ce qui font d'eux des candidates idéales pour exécuter des tâches qui sont courts, répétitives ou non et qui réagissent à des événements.


- Je répète les Lambdas ont été créés pour être lancées sur une courte période, 
  la preuve en est **qu'une Lambda ne peut fonctionner que pendant 15 minutes maximum**.


- Avec les Lambdas, **tu as uniquement besoin d'allouer de la mémoire**, **quant au CPU, il sera proportionnel à la mémoire allouer**.

  Dans le cas où le CPU nécessaire à ta function n'est pas suffisant par rapport au type d'opération effectuée par ta Lambda.
  Eh bien, ta Lambda sera plus lent tous simplement, ce qui n'est pas forcément une bonne chose, car rappels toi, 
  le temps d'exécution d'une Lambda se paie en monnaie sonnante et trébuchantes ! 
  De ce fait, ajuster correctement la mémoire de ta Lambda est capitale.


- Une lambda AWS peut être **invoquée ou déclenchée**

## 4. Pour aller plus loin
Pas besoin pour l'instant
