# Les Commandes Shell basiques.

## 1. Introduction
Dans ce project, tu vas t'amuser avec les commandes shell les plus courantes. Celles-ci vont te permettre de maîtriser un peu plus ton terminal et par la même occasion améliorer ta productivité à travers une série d'exercices.

Tu vas rencontrer pas mal d'erreur, qui parfois, ne seront pas très expressives, mais ainsi va la vie dans le monde merveilleux de Linux. Si tu te sens un peu perdu, ton équipe et le cas échéant Google seront là pour toi.


## 2. Le projet
### 2.1.1. Créer un fichier/dossier
1. Crées un dossier `day_01` et un sous-dossier `exercices_01` dans le répertoire `~/`, à l'aide de la commande `mkdir`.
   Une fois terminé, la commande `pwd` depuis le sous-dossier `exercices_01`, devra afficher un chemin semblable à c`~/day_01/exercices_01/`. 
   
   La commande `mkdir` regorge d'options diverses et variés, qui pourraient t'aider à créer le dossier `day_01` et sous-dossier` exercices_01` directement.
   Je te laisse cherche l'option qu'il te faut. Petit indice, la commande ` man mkdir` peut grandement t'aider à choisir la/les bonnes options.


### 2.1.2 Créer et maintenir un fichier/dossier

Texte à copier : 
```
Lorem ipsum dolor sit amet. Ex galisum iste id cumque odit et exercitationem labore nam assumenda dolorem. Est placeat consequuntur eos quia enim non dolor voluptas.

Hic consequatur quia vel asperiores voluptatem et internos quibusdam aut nihil eaque eos similique neque. Quo doloremque enim non magnam nesciunt aut voluptas ullam id soluta blanditiis a voluptatibus sint aut esse quibusdam. Ut dolorum fugiat qui deleniti error et dolor consequatur et cupiditate sint sit aperiam eveniet deserunt modi.

Qui exercitationem consequatur ut rerum alias ex laudantium necessitatibus est laudantium vitae ut accusamus similique ad distinctio totam eos exercitationem sapiente. Aut sint porro qui obcaecati Quis hic architecto eaque et sint quam in optio odit aut neque asperiores.
```

1. Depuis ton terminal, copies le texte ci-dessus dans un fichier `maintain_file.txt` et placer ce fichier dans le sous-dossier `~/opsDev/day_01/exercices_01/`.

2. Depuis ton terminal :
   - copies le fichier `~/opsDev/day_01/exercices_01/maintain_file.txt` dans le repértoire `~/` et le dossier `~/opsDev/day_01`, 
   - et enfin supprimer la copie qui dans le repértoire `~/`.
   
   **Tu dois faire ces opérations en une seule commande**.


3. Depuis ton terminal :
   - déplacer le fichier `~/opsDev/day_01/exercices_01/maintain_file.txt` dans `~/opsDev/day_01/`. Le chemin d'origine doit être vide `~/opsDev/day_01/exercices_01/`. 
   - Ensuite supprimer ce fichier. 
   - Enfin, copier de nouveau le texte dans `maintain_file2.txt` dans un sous-dossier `~/opsDev/day_01/exercices_01/` 
   
   **Tu dois faire ces opérations en une seule commande**.


4. Depuis ton terminal :
   - copies le dossier `~/opsDev/day_01/exercices_01` dans un nouveau dossier `~/opsDev/day_01_copy/` 
   - et supprimer le dossier `~/opsDev/day_01_copy/`, 
   
   **Tu dois faire ces opérations en une seule commande**.



### 2.2. Afficher un texte

Ajoutes le résultat de cette commande `man cp` dans le fichier `~/opsDev/day_01/exercices_01/display_file.txt`.

1. Affiches le contenu du fichier dans le terminal.

2. Essayes les commandes `more` et `less` sur ce fichier quelle est la différence entre celles-ci ?

3. Affiches les 5 premières lignes du fichier.

4. Affiches les 5 dernières.


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

Ajoutes cette liste de noms et prénoms dans ce fichier `~/opsDev/day_01/exercices_01/filter_and_process_file.txt`

1. Affiches dans le terminal :
   - les 3 premières lettres de chaque ligne.
   - les lettres comprises entre 4 et 8 caractères de chaque ligne.
   - uniquement les prénoms. 
   - uniquement les noms.

2. Filtres et affiches dans le terminal les lignes qui comprennent les lettres 'll' 
   et ensuite compter le nombre de fois où elles apparaissent. 

3. Affiches dans le terminal ce fichier classé par ordre alphabétique et ensuite dans le sens inverse.

4. Sépares chaque ligne dans un fichier dédié (ex: `each_lines01`, `each_line02`, `each_line03`, ...) et ensuite assembler ces fichiers en un seul fichier `assembled-files.txt`.



### 2.4. Gérer les permissions

1. Crées avec un dossier (`Marvel/`) appartenant au groupe “marvel”.

2. Ajoutes 3 utilisateurs (Hulk, Thor, Thanos) à ce groupe.

3. Crées un sous-dossier (`Good/`) partagé par "Thor” et “Hulk”.

4. Dans le sous-dossier `Good/` ajouter deux fichiers le premier,`Thor_dark_world.txt` accessible par `Thor` uniquement, et le 2ème `Thor_ragnarok` accessible par `Thor` et `Hulk`.

5. Le fichier `Thor_dark_world.txt` doit être accessible en écriture et lecture pour `Thor` et accessible en lecture uniquement pour `Hulk`.


## 3. Rendu attendu
Le rendu attendu est un repo Github qui contient `basics-shell-cmd.md` avec toutes commandes utilisées aujourd'hui.
