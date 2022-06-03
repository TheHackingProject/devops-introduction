# VPC customisé.

## 1. Introduction
Jusqu'à maintenant, tous les services que tu as créés étaient placés dans le "VPC par défaut", 
celui qui est créé lors de la création de ton compte AWS. 
Ce type de VPC peut parfaitement faire l'affaire pour gérer une infrastructure de petite taille sans contraintes spécifique.
Mais au fur à mesure que l'entreprise va prendre de l'ampleur, les besoins vont changer,
par example pour des raisons de sécurité, cette entreprise voudra des applications/outils complétement isolés d'internet 
ou avec des IP privée spécifique pour éviter une correspondance d'IP privée avec une infrastructure `on-premise`, etc.
Eh bien, c'est à ce moment-là, qu'un VPC complétement créer à la main devient utile et tu vas aujourd'hui apprendre à en créer un dans les règles de l'art.


## 2. La ressource
### 2.1. Créer un VPC personnalisé
Tu l'as compris un VPC personnalisé est important en production, lorsque l'on souhaite maitriser son réseau virtuel.
Mais il ne s'agit pas seulement de le créer, non, non et non !
Il faut également comprendre tous les services utilisés pour le créé et également savoir à quoi ils servent.

Comme le `VPC` et ses composants peuvent paraitre assez abstraits lorsqu'on les explique. 
De ce fait, je te propose de d'abord [suivre ce tutoriel](https://www.youtube.com/watch?v=g2JOHLHh4rI&t=1788s) 
guidé sur la création d'un VPC personnalisé et ensuite on abordera la partie théorique avec plus de simplicité.
Dans ce tutoriel seul les parties "Create a custom VPC with Subnets" et "Launch instances and Test VPC" nous intéressent, mais libre à toi de visionner tout le tutoriel.

#### 2.1.1. 🚀 ALERTE BONNE ASTUCE
Il est important d'essayer de créer le `VPC` en même temps que le tutoriel, 
cela t'aidera à comprendre la partie théorique plus facilement.


### 2.2. Les différents composants d'un VPC personnalisé
On va décrire étape par étape les actions que tu as vues dans le tutorial ci-dessus, 
l'objectif est que tu comprennes tous les composants que tu as créés 
et pourquoi ils sont nécessaires dans le processus de création d'un VPC personnalisé.


#### 2.2.1. Étape 1 : Créer le VPC
Pour cette étape rien de bien méchant, tu sais déjà ce qu'est un VPC et son utilité.

Par contre, lors de la création d'un VPC personnalisé, tu as la responsabilité de décider du `CIDR block`.
Et ce n'est pas un choix anodin, car il va dépendre de plusieurs éléments comme par example :
- le nombre d'applications/instances que tu vas créer
- comment tu prévois la scalabilité de tes applications à cout-terme et à long-terme.
- est-ce ton organization possède d'autres réseaux privés, si oui faire attention à la plage d'adresse IP allouée à chaque au réseau (VPC) et aux sous-réseaux (subnets) pour éviter le `IP overlap`
- ...

Voici un [article](https://blogs.mulesoft.com/api-integration/security/how-to-choose-the-cidr-block-for-your-vpc/) qui synthétise les éléments à prendre en compte

Une fois le VPC créer, n'oublies pas dans d'activer le `DNS hostnames`.

Cette option permet à une instance qui possède une IP public, d'être contacté depuis le monde entier via un `hostname` qui ressemble à ceci :
```shell
ec2-<public-ipv4-address>.region.compute.amazonaws.com
```

Ce hostname peut par example être utile lorsque l'on veut faire un [enregistrement de type 
CNAME sur un DNS](https://www.cloudflare.com/fr-fr/learning/dns/dns-records/dns-cname-record/) interne ou externe à AWS

#### 2.2.2. Étape 2 : Créer des subnets
Tout comme la première étape rien de compliqué, étant donné que tu sais déjà ce qu'est un subnet.

Cependant, la seule différence entre le subnets par défaut et ceux créés manuellement est que tu vas devoir choisir la plage d'adresse IP de celui-ci.
Mais ce n'est pas sorcier, n'est-ce pas ! 😉


#### 2.2.3. Étape 3 : Créer une table de routage
À partir de cette étape, on arrive aux éléments qui sont complétement abstraits lorsqu'il s'agit d'un VPC créer pas défaut.

Le premier de ces éléments est la table de routage. Ce service permet de créer un ensemble de règles qui définissent comment le traffic de ton VPC
(traffic entrant, sortant et interne à ton VPC) sera redirigé, tout simplement. 😄

Voici une [vidéo](https://www.youtube.com/watch?v=GrfOsWUVCfg&t=103s) en guise de schéma mentale. 😃


#### 2.2.4. Étape 4 : Créer une porte à double sens vers internet
LE deuxième élément est le service appelé, AWS Internet Gateway (IGW). Tu peux voir ce service comme une porte à double sens entre ton VPC et internet ! Un point, c'est tout. 💥

Ok, ok, j'ai compris, tu veux plus d'explications, c'est ça ?

Eh bah, il fallait juste demander 😄, voici en guise de réponse une [video](https://www.youtube.com/watch?v=pAOrBxZ7584) qui t'explique avec moult détailles son fonctionnement.

#### 2.2.5. Étape 5 : Créer une porte à sens unique vers internet

Le dernier élément est le NAT Gateway (NGW), qui permet aux instances qui se trouvent dans des subnets privés d'accéder à internet.
Mais, par contre, internet ne peut pas accéder à ces mêmes instances, car le NAT Gateway block tout traffic entrantes.

Voici une [vidéo](https://www.youtube.com/watch?v=ujXr0i5EoHE) qui illustre bien son fonctionnement.


## 3. Points importants à retenir
Voici ce que tu dois retenir :

- Lors de la création de compte AWS, AWS va automatiquement créer un VPC par défaut avec lequel tu pourrais commencer à utiliser les ressources tous les services d'AWS.
- Mais pour maitriser le réseau, tu peux décider d'en créer un VPC manuellement, et pour ce faire, tu auras a besoin de configurer les éléments suivant :
  - la plage d'adresse IP de ton VPC
  - la plage d'adresse IP de tes subnets
  - créer une table de routage afin diriger le traffic entrant, sortant et circulant dans ton VPC.
  - créer un `Internet Gateway` pour que ton VPC puissent interagir avec internet
  - et si selon besoin, de créer un `NAT Gateway`,
    pour permettre aux instances qui se trouvent dans des subnets privés d'accéder à internet tout en les protégeant du traffic venant d'internet.


## 4. Pour aller plus loin
[La documentation d'AWS](https://docs.aws.amazon.com/vpc/latest/userguide/working-with-vpcs.html) sur les VPC peut être un bon point de départ. 
Et pour en savoir davantage sur les différents services qui composent ton VPC, je te conseille de terminer le [tutorial](https://www.youtube.com/watch?v=g2JOHLHh4rI&t=1788s) mentionné dans le cours