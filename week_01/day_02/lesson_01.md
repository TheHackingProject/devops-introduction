# Shell, les fondamentaux - Partie 2
Aujourd'hui, tu vas découvrir des commandes Shell un peu plus complexe, mais crois-moi ils en valent la peine. 

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
Cette partie est le nerf de la ressource, elle expliquera les notions de cette ressource.


### 2.2. Pipe (|) 


### 3.3. Les Regex dans le Shell


### 3.4. Le Shell Scripting

#### 3.4.1. Principes de bases


#### 3.4.2. If/else/then

#### 3.4.3. Les boucles (for/do-wile/case)

## 4. Points importants à retenir
La ressource en quelques points importants.

## 5. Pour aller plus loin
Quelques éléments en ligne pour aller plus loin
