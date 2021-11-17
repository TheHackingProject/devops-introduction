# Commandes Shell basiques.

Dans ce project tu t'amuser avec les commandes shell les plus courantes. Celles-ci vont te permettre de maîtriser un plus ton terminal et par la même occasion améliorer ta productivité.


## 1. Introduction
Une série d'exercices pour te familiariser avec les principaux commandes qu'utilisent les Devs,SysOps et les DevOps au jour le jour !!! La grande classe !!!

Tu vas rencontrer pas mal d'erreur, qui des fois, ne seront pas très expressives, mais ainsi va la vie dans le monde merveilleux de Linux. Si tu te un peu perdu, ton équipe et le cas échéant Google sont là pour toi.


Nous allons travailler avec ce magnifique texte:

```
Lorem ipsum dolor sit amet. Ex galisum iste id cumque odit et exercitationem labore nam assumenda dolorem. Est placeat consequuntur eos quia enim non dolor voluptas.

Hic consequatur quia vel asperiores voluptatem et internos quibusdam aut nihil eaque eos similique neque. Quo doloremque enim non magnam nesciunt aut voluptas ullam id soluta blanditiis a voluptatibus sint aut esse quibusdam. Ut dolorum fugiat qui deleniti error et dolor consequatur et cupiditate sint sit aperiam eveniet deserunt modi.

Qui exercitationem consequatur ut rerum alias ex laudantium necessitatibus est laudantium vitae ut accusamus similique ad distinctio totam eos exercitationem sapiente. Aut sint porro qui obcaecati Quis hic architecto eaque et sint quam in optio odit aut neque asperiores.
```


## 2. Le projet
### 2.1. Créer et maintenir un fichier/dossier

1. Créer un dossier et sous-dossier `~/day_01/exercices_01/` à l'aide de la commande `mkdir`, je t'invite à chercher le moyen le plus efficace de le faire. Petite indice `man mkdir` pout vous sauvez la mise :).

2. Copier le texte un fichier `maintain_file.txt` qui sera placé dans le sous-dossier `~/opsDev/day_01/exercices_01/`.

3. Copier le fichier `~/opsDev/day_01/exercices_01/maintain_file.txt` dans `~/` et ensuite dans ce dossier `~/opsDev/day_01` et enfin supprimer cette copie, en une seule commande.

4. Déplacer le fichier `~/opsDev/day_01/exercices_01/maintain_file.txt` dans `~/opsDev/day_01/`. Le chemin d'origine doit être vide `~/opsDev/day_01/exercices_01/`, prouver le. Ensuite supprimer le. Enfin, copier de nouveau le texte dans `maintain_file2.txt` dans sous-dossier `~/opsDev/day_01/exercices_01/` **et tous cela en une seule commande**.

5. Copier le dossier `~/opsDev/day_01/exercices_01` dans dans un nouveau dossier `~/opsDev/day_01_copy/` 
   et supprimer le dossier `~/opsDev/day_01_copy`, **en une seul commande bien sûr**.


### 2.2. Afficher un texte

Ajouter le résultat de cette commande `man cp` dans le fichier `~/opsDev/day_01/exercices_01/display_file.txt`

1. Afficher le contenue du fichier dans le terminal

2. Essayez les commandes `man` et `less` sur ce fichier quel est la différence entre celles-ci ?

3. Afficher les 5 premiers lignes du fichier.

4. Afficher les 5 derniers.


### 2.3. Filtrer et traiter un texte - Niveau 1
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

Ajouter cette liste de noms et prénoms dans ce fichier `~/opsDev/day_01/exercices_01/filter_and_process_file.txt`

1. Afficher dans le terminal :
   - les 3 premiers lettres de chaque ligne.
   - les lettres compris entre 4 et 8 de chaque ligne.
   - uniquement les prénoms. 
   - uniquement les noms.

2. Filtrer et afficher dans le terminal les lignes qui comprennent les lettres 'll' 
   et ensuite compter le nombre de fois où elles apparaissent 

3. Afficher le terminal ce fichier classé par ordre alphabétique et ensuite dans le sens inverse.

4. Séparer chaque ligne dans un fichier dédié (ex: `each_lines01`, `each_line02`, `each_line03`, ...) et ensuite assembler ces fichiers en un seul fichier `assembled-files.txt`.



### 2.4. Gérer les permissions

1. Créer avec un dossier (`Marvel/`) appartenant au groupe “marvel”.

2. Ajouter 3 utilisateurs (Hulk, Thor, Thanos) à ce groupe

3. Créer un sous-dossier (`Good/`) partagé par "Thor” et “Hulk”.

4. Dans le sous-dossier `Good/` ajouter deux fichiers le premier,`Thor_dark_world.txt` accessible par `Thor` uniquement, et le 2ème `Thor_ragnarok` accessible par `Thor` et `Hulk`.

5. Le fichier `Thor_dark_world.txt` doit être accessible en écriture et lecture pour `Thor` et accessible en lecture uniquement pour `Hulk`.


## 3. Rendu attendu
Le rendu attendu est un repo Github qui contient `basics-shell-cmd.md` avec toutes commandes utilisées aujourd'hui.