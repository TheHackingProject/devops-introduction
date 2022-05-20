# Absorber le traffic sur AWS 

## 1. Introduction
Un équilibreur de charge, en anglais `Load Balancer`, à pour rôle de distribuer la charge (les requêtes) à deux ou plusieurs serveurs.
Aujourd'hui tu vas en apprendre davantage sur les équilibreurs de charge et plus spécifiquement ceux qu'offrent AWS.

## 2. La ressource
### 2.1. Elastic Load Balancer (LB), comment ça marche ?
Bien avant d'explorer les différents types de `Load Balancer` d'AWS, 
voici sous formes d'une piqûre de rappel [ici](https://www.cloudflare.com/learning/performance/what-is-load-balancing/) et [ici](https://www.cloudflare.com/learning/performance/types-of-load-balancing-algorithms/) sur les principes généraux d'un `Load Balancer`.

Maintenant que tu en sais un peu plus sur les différents principes du `Load Balancer` place à une démonstration des différents équilibreurs de charge d'AWS.


### 2.2. Elastic Load Balancer - Illustration

Cette [video](https://www.youtube.com/watch?v=OGEZn50iUtE) de Stéphane Maarek va te montrer les possibilités qui s'offrent à toi lorsqu'il s'agit de créer un `Load Balancer` sur AWS.

### 2.3. Caractéristiques et types de Load Balancer sur AWS

Les `LB` sont des produits phares pour les `cloud provider` et AWS ne fait pas exception.
C'est cette popularité fait qu'il existe de nombreux articles sur le sujet. Je t'invite donc à lire cet [article](https://medium.com/awesome-cloud/aws-elastic-load-balancer-elb-overview-introduction-to-aws-elb-alb-nlb-gwlb-e2820fe8fe27) qui va t'apporter une vue d'ensemble.

Ensuite cet [article](https://medium.com/awesome-cloud/aws-difference-between-application-load-balancer-and-network-load-balancer-cb8b6cd296a4) 
du même auteur va parler de la différence entre les deux types de `LB` les plus utilisés (`Application Load Balancer` et `Network Load Balancer`).

Comme tu as dû surement le remarquer l'auteur de ces articles mentionne le `Gateway Load Balancer` mais n'explique pas vraiment son utilité.
C'est normal ce type de `LB` est récent, il date de 2020 pour être exacte. 

Oui, mais ça ne me dit pas comment ce `Load Balancer` fonctionne !

Hulula mon ami, un peu de patience, laisse-moi rassembler mes idées ... 😃

#### 2.3.1. Gateway Load Balancer, c'est quoi et pourquoi on en a besoin ?

Ce type de `Load Balancer` est utilisé pour deployer, dimensionner et gérer deux ou plusieurs appareils virtuels qui vont te permettre de contrôler les flux qui transitent à l'intérieur du réseau d'AWS.

Pourquoi aurions-nous besoin d'outils de gestion de réseau ? Et à quel endroit de l'infrastructure a-t-on besoin de ce genre d'outils ? Diantre !

Eh bien, il arrive que dans certaines entreprises pour des raisons de sécurité ou de réglementation, ils aient besoin de contrôler les flux de traffic entrants et sortants et ceux de manière minutieuse. Par exemple des entreprises gouvernementales ou à fort propriétés industrielles.
Ces types d'entreprises peuvent avec ce type de `LB` diriger leur flux vers un groupe d'appareil personnalisés (pare-feu, système de détection d'intrusion, système d'analyse de packets réseaux, ...) et ensuite une fois ces flux réseaux analysés, les envoyer ou non vers les instances EC2 cible.

Voici un schéma pour illustrer ce concept : 

![Gateway Load Balancer Schema](https://i.imgur.com/wRuK85Q.png)


Quoiqu'il en soit ce type de `LB` est assez compliqué à mettre en place et au début de ta carrière, tu auras surement peu l'occasion de le voir en œuvre.
Cependant, il est important que tu comprennes d'un point de vue globale comment il fonctionne. Car un bon dev/devops est toujours en veille. 😉


### 2.4. Points importants à retenir.
Sur AWS il existe plusieurs types de Load Balancer : 
- ALB (Application Load Balancer)
  - circulation du traffic au niveau 7 du [modèle OSI](https://www.cloudflare.com/fr-fr/learning/ddos/glossary/open-systems-interconnection-model-osi/)
  - supporte le protocole HTTP, HTTPS et [Websocket](https://www.ionos.fr/digitalguide/sites-internet/developpement-web/quest-ce-que-le-websocket/)
- NLB (Network Load Balancer)
  - circulation du traffic au niveau 4 du modèle OSI
  - supporte le protocole[ TCP et UDP](https://www.it-connect.fr/les-protocoles-tcp-et-udp-pour-les-debutants/)
  - il permet de gérer des millions de requêtes par secondes avec un temps de latence un peu près égale 100 milli-secondes.
- GWLB (Gateway Load Balancer)
  - circulation du traffic au niveau 3 du modèle OSI 

Les `LB` ont la capacité plus ou moins limité de distribuer la charge à travers toutes les zones valable (`Availabilty Zone` a.k.a `AZ`) d'une même région.
Examples pour la région `eu-west-3` les `LB` seront capable de distribuer le traffic dans toutes 
les zones de cette région (`eu-west-3a`, `eu-west-3b` et `eu-west-3c`).

Il est également possible avec le `LB` de type `ALB` de toujours redirigé le même user vers la même instance grâce un cookie configurable au niveau du `ALB`, par contre si cette fonctionnalité est activée 
la distribution de la charge sur toutes les instances du `LB`, est désactivée. C'est un choix à faire 😄.

#### 2.1.4. 🚀 ALERTE BONNE ASTUCE

- L'`ALB` possède un hostname fixe (qui se traduit par `xxx.redion.elb.amazonaws.com`), cela veut dire vous pouvez rediriger ce hostname vers un nom de domaine facilement. 💥


- Penser à toujours vérifier si les `Security Groups` qui protègent vos instances acceptent le traffic venant du `LB` surtout lorsque tu utilises le `NLB`, je te laisse découvrir pourquoi par toi-même. 😜


## 3. Pour aller plus loin
La [documentation d'AWS](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/load-balancer-types.html) est un très bon point de départ 
et si le fonctionnement interne du `Gateway Load Balancer` t'intéresse cette [video](https://www.youtube.com/watch?v=-j2smz_VCH4) te plaira surement.
