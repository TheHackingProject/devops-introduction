# Le Shell Scripting
Il est temps de s'amuser, et de commencer à automatiser des opérations plus ou moins complexes. 

## 1. Introduction

La programmation shell, est une une "minilangage" de programmation intégré à Linux. Ce langage n'est pas aussi complet que le Ruby ou le Javascript, mais il permet certaines tâches : 
- gérer vos données (supprimer, filtrer, extraire, etc.), 
- surveiller votre machine (applications, process)
- lancer des tâches à des fréquences prédéfinis, 
- installer, mettre à jour des logiciel sur votre serveurs distant, 
- etc.

L'avantage du langage shell est qu'il est déjà intégré à Linux. De ce fait, pas besoin d'installer des librairies/logiciels supplémentaires ou encore compiler avant de lancer votre code. 


## 2. La ressource
### 2.1. Principes de base du script shell

Rien de mieux qu'un exercice guidé pour rentrer dans le bain.

Tout d'abord on crée un fichier `first_script.sh`, tu remarques que le fichier porte l'extension `.sh`. LA convention que que l'on ajoute cette extension, main ce n'est pas une obligation. La preuve un fichier `first_script` marchera très bien.

```
touch first_script.sh
```

### 2.1.1 Shebang

Ensuite on ajoute quelques ligne de code shell dans ce fichier.

![first script](../../assets/images/first_script.png)

La première ligne indique quel type de shell vous allez utilisé. Comme tu l'as appris hier, plusieurs types de shell existent et selon le type de shell, la syntaxe peut varier. Nous nous utiliser le shell le plus utilisé, à savoir, le `bash`

PS. Indiquer le type de shell, n'est pas obligatoire, mais ça te sauvera la mise plus d'une fois. Par exemple quand tu voudras exécuté du script shell sur des serveurs type AWS, OVH, ou on-premise, qui auront pas forcément ton shell préféré pré-installer :).

Si on ne spécifie pas le shell, celui de l'utilisateur est utilisé par défaut.

### 2.1.2 Comment le Shell script est interprété

Maintenant que l'on a ce magnifique bout de code comment on l'exécute ?

Je pourrais te le dire directement, mais il faut que tu comprennes d'abord comment le shell lis et lance le shell script.

Hé bien c'est pas si compliqué :

1. Le shell lis la première ligne `#!/bin/bash` pour savoir quel type de shell utilisé.
2. Ensuite le Shell lit tout le fichier ligne par ligne. Expliquer d'une manière plus concise le shell fait ceci `bin/bash <FILENAME>`.

### 2.1.2 Rendre exécutable un script shell

Mais on exécute shell script bon sang de bonsoir, Un peu de patience jeune padawan :).

Tout d'abord on doit rendre le script shell exécutable en donnant les droit d'exécution à l'utilisateur qui souhaite l'utiliser.

```sh
➜ ls -al 
-rw-rw-r--  1 gui gui   61 nov.  19 18:34 first_script.sh

# Give the right access
➜ chmod 750 first_script.sh

➜ ls -al 
-rwxr-x---  1 gui gui   61 nov.  19 18:34 first_script.sh
```

Pas besoin, de milles et une explications, hier t'as appris à décrypter et utiliser les permissions linux. Au cas où, cette [doc](https://www.linuxtricks.fr/wiki/droits-sous-linux-utilisateurs-groupes-permissions) peux te rafraîchir la mémoire


Ensuite on lance notre script shell comme ceci `./first_script.sh`, tu remarques ici, que j'ai spécifié le `chemin relatif` du fichier. 
Le chemin relatif ou absolue est nécessaire lorsque tu veux exécuter du shell script. Ce chemin indique à votre shell ou se situe le fichier du contient le code shell.

Tu peux, maintenant, exécuter n'importe quel commande que tu as appris jusqu'ici dans ce shell script et les exécuter sans problème :

![First script 1](../../assets/images/first_script1.png)


### 2.1.3 Les variables

Les variables sont assez simple à créer et à lire

![]()


### 2.1.4 Lire les inputs





### 2.1.5 Les conditions




### 2.1.6. Les boucles (for/do-wile/case)



## 3. Points importants à retenir
La ressource en quelques points importants.



## 4. Pour aller plus loin
Quelques éléments en ligne pour aller plus loin