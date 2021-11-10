# Titre du projet
Dans ce project vous allez vous amusez avec certaines des commandes shell les plus courantes. Celles-ci vont vous permettre de maîtriser un plus votre terminal et par la même occasion améliorer votre productivité.

## 1. Introduction
Une série d'exercices en guise de tour de chauffe. Ils ont pour objectif de vous familiariser avec les principaux commandes qu'utilisent les SysOps et les DevOps au jour le jour!!! La grande classe !!!

Vous allez rencontrer pas mal d'erreur, qui des fois, ne seront pas très expressives, mais ainsi va la vie dans le monde merveilleux de Linux. De ce fait, si vous sentez un peu perdu, votre équipe et le cas échéant Google sont vos meilleurs amis.


Nous allons travailler avec ce magnifique texte:

```
Lorem ipsum dolor sit amet. Ex galisum iste id cumque odit et exercitationem labore nam assumenda dolorem. Est placeat consequuntur eos quia enim non dolor voluptas.

Hic consequatur quia vel asperiores voluptatem et internos quibusdam aut nihil eaque eos similique neque. Quo doloremque enim non magnam nesciunt aut voluptas ullam id soluta blanditiis a voluptatibus sint aut esse quibusdam. Ut dolorum fugiat qui deleniti error et dolor consequatur et cupiditate sint sit aperiam eveniet deserunt modi.

Qui exercitationem consequatur ut rerum alias ex laudantium necessitatibus est laudantium vitae ut accusamus similique ad distinctio totam eos exercitationem sapiente. Aut sint porro qui obcaecati Quis hic architecto eaque et sint quam in optio odit aut neque asperiores.
```


## 2. Le projet
### 2.1. Creér un répertoire dédié et copié/déplacé un texte

1. Créé un dossier `~/day_01/exercices_01/` à l'aide de la commande `mkdir`, je vous invite à chercher le moyen le plus efficace de le faire par vous même. Petite indice `man mkdir` pout vous sauvez la mise :).

2. Copier le texte dans le sous-dossier créé ci-dessus, pour avoir ce résultat `~/opsDev/day_01/exercices_01/maintain_file.txt`, encore une en utilisant le moyen les plus efficace.

3. Copier le fichier dans `~/` déplacer ce même fichier dans `~/opsDev/day_01`et supprimer le, en une seule commande.

4. Déplacer le fichier `~/opsDev/day_01/exercices_01/maintain_file.txt` dans `~/opsDev/day_01/`. 
   Le chemin d'origine doit être vide `~/opsDev/day_01/exercices_01/`, prouver le.
   Supprimer le fichier `~/opsDev/day_01/exercices_01/maintain_file.txt`.
   Copier de nouveau le texte dans le sous-dossier d'origine `~/opsDev/day_01/exercices_01/`
   Et tous cela en une seule commande.

5. Copier le dossier `~/opsDev/day_01/exercices_01` dans dans un nouveau dossier `~/opsDev/day_01_copy/` 
   et supprimer le dossier `~/opsDev/day_01_copy`, en une seul commande bien sûr.



### 2.2. Afficher un texte

Ajouter le résultat de cette commande `man cp` dans le fichier `~/opsDev/day_01/exercices_01/display_file.txt`

1. Afficher le contenue du fichier dans le terminal

2. Essayez les commandes `man` et `less` sur ce fichier quel est la différence entre celles-ci.

3. Afficher les 5 premiers lignes du fichier

4. Afficher les 5 derniers


### 2.3 Filtrer et traiter un texte
```txt
Harley Klein
Brogan Kim
Hayley Randolph
Lucia Cain
Reginald Reilly
Ari Kelly
Shamar Craig
Faith Hull
Michaela Vargas
Akira Johnston
Serenity Mcconnell
Lacey Palmer
```

Ajouter cette liste de nom et prénom dans ce fichier `~/opsDev/day_01/exercices_01/filter_and_process_file.txt`

1. Afficher dans le terminal les 3 premiers lettres de chaque ligne.
2. Afficher dans le terminal les lettres compris entre 4 et 8 de chaque ligne.
3. Afficher dans le terminal uniquement le prénom. 
4. Afficher dans le terminal uniquement le nom.
5. Filtrer et afficher dans le terminal les lignes qui comprennent les lettres 'll' 
   et ensuite compter le nombre de fois où elles apparaissent 
6. Afficher le terminal ce fichier classé par ordre alphabétique et  ensuite dans le sens inverse.
7. Séparer changer ligne dans un fichier dédié et ensuite assemblé ces fichiers en un seul fichier


## 3. Rendu attendu
Le rendu attendu est un repo Github qui contient `basics-shell-cmd.md` avec toutes commandes utilisées aujourd'hui.