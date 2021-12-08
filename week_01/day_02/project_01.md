# Commandes Shell un peu plus complexe.
Hier tu t'es amusé avec les commandes basiques. Aujourd'hui on va jouer avec ces mêmes commandes ainsi ceux que vous venez de découvrir dans le cours d'aujourd'hui.

## 1. Introduction
Aujourd'hui, une série d'exercices un peu plus compliquée qu'hier, mais tout à fait faisable par des débrouillards comme vous.

## 2. Le projet
### 2.1. Un dossier 
1. Depuis le `$HOME` créer un dossier `opsDev/day02/project01/`

### 2.2. Input/Output
1. À l'aide de la commande `echo` écrire dans le terminal `I remain the Captain on my destiny` 
   et rediriger la sortie de la commande dans un fichier `~/opsDev/day02/project01/destiny.txt`. En une commande bien sûr.

2. Toujours avec la commande `echo` depuis le terminal, ajouté dans le même fichier, 
   la phrase `Ony if I stay focus on my goals.` sans écraser la premiere phrase. 
   Ensuite afficher le contenu de votre fichier dans le terminal. Le tout en une commande bien sûr.

3. Exécuter la commande `find /etc -name hosts`,y a-t-il des messages d'erreurs qui sont affichés ? 
   Si oui, rediriger la sortie d'erreur vers le fichier `~/opsDev/day02/project01/err.txt`.


4. Rediriger la sortie standard et la sortie d'erreur de la commande `find /etc -name hosts` 
   vers deux fichiers différents (`~/opsDev/day02/project01/std.out` et `~/opsDev/day02/project01/std.err`).

5. Rediriger la sortie standard et la sortie d'erreur de la commande `find /etc -name hosts` vers le même fichier (`~/opsDev/day02/project01/output.out`).

5. À l'aide de la commande `tr 'a-z' 'A-Z'` convertir le contenu de `~/opsDev/day02/project01/output.out` 
   et puis le placer dans un fichier « `~/opsDev/day02/project01/OUTPUT.out`, vérifier avec `cat`, le contenu :). 

6. Le fichier `/etc/passwd`, contient les informations sur tous les comptes utilisateurs du système.
   Afficher le contenu de `/etc/passwd` avec more.

7. Extraire depuis `/etc/passwd` les noms des utilisateurs et le placer dans le fichier `~/opsDev/day02/project01/name_extracted.txt`.
   Ensuite trier ce fichier par ordre alphabétique.
   Puis numéroté chaque ligne du fichier.
   Et enfin afficher le résultat dans le terminal avec la commande `more`.

8. Afficher dans le terminal, les lignes comprises entre 3 et 7 du fichier `/etc/passwd`.


### 2.3. Filtrer et traiter un texte - Niveau 2
1. Afficher dans le terminal, les lignes qui commencent par `root` dans le fichier `/etc/passwd`

2. Afficher dans le terminal, les lignes du fichier `/etc/passwd` qui se termine par `sync`.

4. Afficher dans le terminal, toutes les lignes du fichier `/etc/passwd` contenant `root,bin ou sync`.

5. Afficher dans le terminal, le résultat de cette commande `egrep 'no(b|n)' /etc/passwd`.

PS. Quelle est cette commande sortie des enfers :), elle ressemble étrangement a la commande `grep`. Je t'invite à chercher la différence :).

6. Afficher dans le terminal, les 6 premières lignes du fichier `/etc/passwd`, contenant 3 caractères numérique.

*Petite indice, pour la partie 2.2., la commande `grep`, sera ta meilleure amie.*


## 3. Rendu attendu
Le rendu attendu est un repo Github qui contient `medium-shell-cmd.md` avec toutes commandes utilisées aujourd'hui.