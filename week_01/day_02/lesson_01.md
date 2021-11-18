# Shell, les fondamentaux - Partie 2
Dans ce cours, tu vas découvrir des commandes Shell un peu plus complexe, mais crois-moi ils en valent la peine. 

## 1. Introduction
La fonction première du Shell est de facilité au maximum la vie des Devs. Par conséquent, le Shell n'est pas seulement fait que de commandes, il comporte aussi de symbole extrêmement utiles.

## 2. La ressource

### 2.1. WildCards
Les `wildcards` sont des caractères qui peuvent être utilisé pour substitué n'importe que caractère dans une recherche. Cette [doc](https://tldp.org/LDP/GNU-Linux-Tools-Summary/html/x11655.htm) te résume les principaux `wildcards`. 


#### 2.1.1. Examples
Voici quelques examples concrets.

```sh
# Create multiple files using bracket.
➜ touch file{0..4}.txt

# Display files that begin by "fil"
➜ ls -al fil*   
-rw-rw-r-- 1 gui gui 0 nov.  16 06:11 file0.txt
-rw-rw-r-- 1 gui gui 0 nov.  16 06:11 file1.txt
-rw-rw-r-- 1 gui gui 0 nov.  16 06:11 file2.txt
-rw-rw-r-- 1 gui gui 0 nov.  16 06:11 file3.txt
-rw-rw-r-- 1 gui gui 0 nov.  16 06:11 file4.txt
```

```sh
# Display all files that have "oo" in his name and end by one or more characters
➜ ls -al /var/log/?oo*
-rw------- 1 root root 192341 nov.  16 05:18 /var/log/boot.log
-rw------- 1 root root  82307 nov.   5 05:32 /var/log/boot.log.1
-rw------- 1 root root 129694 nov.   2 08:53 /var/log/boot.log.2
-rw------- 1 root root 139516 oct.  25 05:33 /var/log/boot.log.3
-rw------- 1 root root 242438 oct.  16 08:37 /var/log/boot.log.4
-rw------- 1 root root 191626 oct.   2 06:20 /var/log/boot.log.5
-rw-r--r-- 1 root root 104003 août  19 12:30 /var/log/bootstrap.log
```


```sh
# Display files that have any of those characters "xdc"
➜ ls -al /var/log/*[xdc]*

# Display files that have characters between a and b, i.e., "a, b, c ,d"
➜ ls -al /var/log/*[a-d]*
```


## 3.2. Entré et sortie des commandes 

### 3.2.1. Rediriger la sortie d'une commande vers un fichier

Avec le Shell, il est possible de rediriger la sortie d'une commande vers un fichier vide ou non. Cela te servira un dans quelques semaines lorsque tu voudras dans ta CI Github Actions rediriger des commandes ou lors que tu voudras automatiser certaines tâches au lancement de ta VM sur AWS :).

Mais assez pour l'instant assez de bavardages et places à quelques examples :

```sh
# Create a file and append text into it
# Warning. THe file doesn't exist before
➜ echo "The first line" > text.txt


# Append another file into the same file with ">"
➜ echo "The second line" > text.txt

# Display the file content
➜ cat text.txt
The second line
 ```

Deux remarques : 
- L'utilisation de `>` crée directement le fichier si celui-ci n'existe pas.
- L'utilisation de `>` avec un fichier existant supprime le contenu de ce fichier et l'écrase ensuite. Cela peut entraîner une perte de données.


```sh
# Create a file
touch file.txt

# Append to it some content
echo "First line" >> file.txt

echo "Second line" >> file.txt

# Display the content
➜ cat file.txt
First line
Second line
```

Deux remarques : 
- L'utilisation de `>` crée directement le fichier si celui-ci n'existe pas.
- L'utilisation de `>>`  ajoute le contenu, a ligne, et sans écraser l'existant du fichier.


### 3.2.2. stdin, stdout, stderr

Cette [doc](https://www.guru99.com/linux-redirection.html) explique avec moult example comment on peut utiliser ces trois type de redirection à notre avantages.


### 3.2.3. Pipe (|) 

Dans le Shell, ce symbole est utilisé pour connecter la sortie d'une commande directement à l'entrée d'une autre commande. Ce symbole est extrêmement utile croyez vous vous en passerez plus désormais :).

Sa syntaxe plutôt simple : `command1 [args] | command2  [args]`. Example :

```sh
➜ ls -al /etc | tail -1

➜ echo "Assassin Creed games are awesome" | tee -a file.txt
```
Essaye cette commande pour voir. Si la commande `tail` et/ou `tee` ne te disent rien. Les commandes `man`, `info`, `help` et le cas échéant Google sont tes amis.


### 3.3. Les Regex dans le Shell

Voici une [doc](https://www.guru99.com/linux-regular-expressions.html) très bien bien détaillé sur l'utilisation des regex dans le Shell.

Quant ce [tutoriel](https://www.cyberciti.biz/faq/grep-regular-expressions/), il montre beaucoup d'exemples d'utilisation des regex avec la commande `grep`.


## 4. Points importants à retenir

Ce cours est plutôt cours mais dense en informations (commandes et symboles) qui te serviront maintes et maintes fois.

## 5. Pour aller plus loin
PAs besoin pour le moment.