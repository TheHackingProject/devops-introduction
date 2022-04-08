# Automatiser les taches au lancement d'une instance EC2.

## 1. Introduction

Il arrive que l'on veuille installer un certain nombre d'éléments (MAJ des packets, installer un/des logiciels, monter un volume EBS, etc..) au démarrage d'une instance EC2.
Ce besoin devient particulièrement utile lorsqu'il s'agit d'instance temporaire dédiée à l'exécution de certaines tâches et ensuite s'éteindre.
Pour cela AWS à trouvé une solution avec la fonctionnalité `EC2 user data`, voyons cela en détails

## 2. La ressource
### 2.1. Utiliser les EC2 user data

Video à faire

PS. N'oublies pas un script exécuter depuis la fonctionnalité `user data` est toujours exécuté en mode `root

## 4. Pour aller plus loin

[La documentation de AWS](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html) te fournira un peu plus d'informations 
