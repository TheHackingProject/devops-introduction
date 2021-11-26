# La virtualization
Après deux jours sur l'environnement Linux et les commandes Shell, 
il est temps d'aborder la virtualization, qui est un aspect important dans la compréhension des `containers docker`.

## 1. Introduction
Tu te demandes pourquoi je te parle de virtualization au lieu d'aborder directement les `containers Docker`.
Hé bien parce que les ` containers` sont une forme de virtualisation. De ce fait comprendre la virtualisation t'aidera à mieux comprendre comment fonctionne les `containers`.

## 2. Historique et contexte
Retour dans les années 70 quand les ordinateurs ont commencé à se propager à travers les universités et grande entreprise.
A cette époque les petites entreprises et encore moins les particuliers ne pouvaient pas s'offrir le luxe d'avoir un ordinateur, 
ils les louaient à $1000/mois avec l'inflation de nos jours, c'est un peu près $8000/mois. Tu comprends pourquoi de personne avait accès un ordinateur.

Et c'est là qu'entre en scène les débrouillards de l'époque qui ont essayé d'optimiser au maximum la location :), 
en inventant plusieurs technologies de partage, parmi eux :
- Unix en 1970
- le `chroot (chroot = change root) environment` en 1979, qui dans le `filesystem` de changer le chemin du dossier `root` d'un process et des process enfant.
  En d'autres mots, avec `chroot` un process (et les process enfant) ont un accès limité au filesystem du `chroot environment`.
- 
- par Bill Cheswick, qui a donné naissance au `Linux jail command` en 2000 qui permet de créer un environment isoler dans Linux. 
  On abordera ce sujet la semaine prochaine
- ect.

Un peu plus tard en 2006, les dev de Google ont annoncé travailler sur une technologie qu'ils appelé `process containers`. Cette technologie limite




## 3. La ressource
Cette partie est le nerf de la ressource, elle expliquera les notions de cette ressource.

### 3.1. Ta première VM



### 3.2. Automatiser la Virtualization avec Vagrant


## 4. Points importants à retenir
La ressource en quelques points importants.

## 5. Pour aller plus loin
Quelques éléments en ligne pour aller plus loin
