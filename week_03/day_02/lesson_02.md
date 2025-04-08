# Communication des serveurs AWS via le réseau privé

## 1. Introduction
Le réseau peut se définir comme un moyen de connecter plusieurs serveurs ensemble en utilisant des technologies et des services dédiés.
Parmi ces technologies, on retrouve les IPs, le wifi, routeurs, DNS, etc. et tous ceux-la utilisées ensemble forme ce que l'on appelle **`Internet`**.

Côté AWS, c'est la même chose. Ils utilisent et offrent des technologies semblables pour connecter ensemble leurs serveurs et services afin de permettre aux utilisateurs d'accéder à internet.
Nous n'allons pas voir tous ces services et technologies, car il nous faudrait un peu plus de deux semaines pour analyser, comprendre et tester l'ensemble de ces technologies et services.

Aujourd'hui, nous allons nous concentrer sur le service qui est la base du réseau AWS, j'ai nommé le `VPC (Virtual Private Cloud)`.

## 2. La ressource
### 2.1. Le VPC , c'est quoi ?
Chaque PC/serveur lié à un autre par un cable, un routeur ou le wifi nécessite d'avoir une interface réseau ([NIC](https://waytolearnx.com/2019/06/nic-carte-reseau-informatique.html)).
Le NIC est le lien entre le PC/serveur et la méthode de connection utilisée.
Une fois les 2 ou plusieurs PC/serveurs connectés cela crée un réseau entre ces appareils.
Ce réseau doit ensuite être configuré et une des parties importantes à configurer s'appellent la `plage IP`. Cette plage IP sera utilisée par les utilisateurs et les appareils qui se trouvent sur ce réseau pour "se trouver".

Avant d'aller plus loin et pour être sûre que l'on est tous sur la même longueur d'ondes, voici une [piqûre de rappel](https://www.digitalocean.com/community/tutorials/understanding-ip-addresses-subnets-and-cidr-notation-for-networking) sur les IPs.

Une plage IP est comme une communauté de personne isolée du reste du monde (un réseau privé), seuls les PC/serveurs qui se trouvent dans le même réseau peuvent se trouver et interagir.

Maintenant que tu en sais plus sur le réseau, revenons au VPC. 
Le VPC est un service AWS qui a pour objectif de créer **un réseau virtuel privé** ce qui permet aux autres services AWS (EC2, ...) 
d'être créer  à l'intérieur celui-ci, tous les services qui y seront lancés pourront communiquer ensemble en privé grâce à une plage d'IP dédiée.
Le VPC est comme "une communauté coupée du monde" pour des machines virtuelles (EC2) et autres services d'AWS.

### 2.2. VPC - Illustration

TODo : faire une vidéo.

## 3. Pour aller plus loin
Le VPC comporte plusieurs fonctionnalités, tu en verras certains dans le prochain cours et d'autres seront peut-être un peu trop complexes pour le moment.
Quoi qu'il en soit, si tu veux maîtriser AWS, le VPC est le service par lequel tu dois absolument commencer. 

Le problème du VPC et des services du CLoud en général ce qu'il y a beaucoup d'abstraction,
mais ne te laisse pas avoir par la simplicité d'un service comme le VPC, car derrière ce cache des dizaines d'ingénieurs réseau/devs/sys-admins/ops/... qui, au quotidien améliorent et maintiennent ce service.
