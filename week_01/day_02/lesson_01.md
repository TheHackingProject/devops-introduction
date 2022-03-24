# Shell, les fondamentaux - Partie 2
Dans ce cours, tu vas découvrir des commandes Shell un peu plus complexes, mais qui en valent la peine. 

## 1. Introduction
La fonction première du Shell est de faciliter au maximum la vie des devs. Par conséquent, le Shell n'est pas seulement fait que de commandes, il comporte aussi des symboles extrêmement utiles.

## 2. La ressource
### 2.1. WildCards
Les `wildcards` sont des caractères qui peuvent être utilisés pour substituer n'importe quels caractères dans une recherche. 
Cette [doc](https://tldp.org/LDP/GNU-Linux-Tools-Summary/html/x11655.htm) te résume les principaux `wildcards`. 


#### 2.1.1. Examples
Voici quelques exemples concrets :

```sh
# Create multiple files using curly bracket.
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


### 2.2. Entrée et sortie des commandes
#### 2.2.1. Rediriger la sortie d'une commande vers un fichier

Avec le Shell, il est possible de rediriger la sortie d'une commande vers un fichier vide ou non. 
Cela te servira dans quelques semaines lorsque tu voudras par exemple, dans ta CI Github Actions, rediriger des commandes ou automatiser certaines tâches au lancement de ta VM ou ton `container docker` :).

Mais trêve de bavardages pour l'instant et place à quelques exemples :

#### 2.2.2. Avec le symbole ">"
```sh
# Create a file  if not exists and append text into it
➜ echo "The first line" > text.txt

# Overwrite olds lines by appending new one
➜ echo "The second line" > text.txt

# Display the file content
➜ cat text.txt
The second line
 ```

Deux remarques : 
- L'utilisation de `>` crée directement le fichier si celui-ci n'existe pas.
- L'utilisation de `>` avec un fichier existant supprime le contenu de ce fichier et l'écrase ensuite. 
  Cela peut entraîner une perte de données.


#### 2.2.3. Avec le symbole ">>"
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
- L'utilisation de `>>` crée directement le fichier si celui-ci n'existe pas.
- L'utilisation de `>>`  ajoute le contenu, à la ligne, **et sans écraser les lignes du fichier existant.


### 2.3. stdin, stdout, stderr
Cette [doc](https://www.guru99.com/linux-redirection.html) explique avec moult exemples 
comment on utilise ces trois types de redirection.

### 2.4. Pipe (|) 

Dans le Shell, ce symbole est utilisé pour connecter la sortie d'une commande directement à l'entrée d'une autre commande. 
Ce symbole est extrêmement utile, crois-moi tu ne t'en passeras plus désormais :).

Sa syntaxe est plutôt simple : `command1 [args] | command2  [args]`. 
Exemple :

```sh
➜ ls -al /etc | tail -1

➜ echo "Assassin Creed games are awesome" | tee -a file.txt
```
Essaye cette commande pour voir. 
Si les commandes `tail` ou `tee` ne te disent rien. 
Les commandes `man`, `info`, `help` et le cas échéant Google sont tes amis.

### 2.5. Les Regex dans le Shell

Voici une [doc](https://www.guru99.com/linux-regular-expressions.html) très bien détaillée sur l'utilisation des regex dans le Shell.

Quant à ce [tutoriel](https://www.cyberciti.biz/faq/grep-regular-expressions/), il montre beaucoup d'exemples d'utilisation des regex avec la commande `grep`.

## 3. Points importants à retenir
Au risque de vous surprendre tout est important dans ce cours. 
De ce fait, au moindre doute dans les jours et semaines à venir, n'hésite pas revenir dessus.

## 4. Pour aller plus loin
Ce cours est plutôt court (#jeuxdemotsduturfu), mais dense en informations (commandes et symboles) qui te serviront maintes et maintes fois.
Mais pas d'inquiétude, on aura l'occasion durant ce parcours de les utiliser.
