# Les composants d'un conteneur : L'environnement chroot

## 1. Introduction
L'environnement `chroot` est le système à l'origine des conteneurs, sans `chroot` pas de conteneurs.
Mais pourquoi ce système est si important ?

Voyons cela en détails.

## 2. La ressource
### 2.1. Le chroot en détails
Comme son nom l'indique le système `chroot`, te permet de changer dans ton `filesystem` de `root`.

Mais pas exactement, en réalité, ce système change le dossier racine d'un process.
Cette distinction ne vous parais peut-être pas important, mais il change tous.

![Chroot jail](../../assets/images/chroot-jail.png)

Sur l'image ci-dessus, la partie en rouge représente l'environnement `chroot`, 
ce qui implique :

- que tout ce qui se trouve à l'intérieur de cet environnement ne peut en aucun 
  cas avoir accès au reste du `filesystem`.


- et que du point de vue de l'environnement `chroot` le dossier racine est le dossier `chroot`

**Ainsi l'environnement `chroot` permet de créer un espace conteneurisé ou une vue limitée d'un système.**
Avec ce système on peut donc créer une "prison" pour un utilisateur. 
Par exemple un espace dev, ce dev aura juste la possibilité d'entrée dans cet espace, effectuer une opération (configurer un serveur Apache, déposer/retirer un fichier, etc.) et ressortir. 

### 2.2. Créer un environnement chroot.
L'objectif n'est pas de maîtriser l'environnement `chroot` mais savoir comment il marche et les éléments nécessaires à sa création.
Cette [video](https://www.youtube.com/watch?v=2wSJREC7RV8) t'expliques comment créer un environnement `chroot` .

Tu peux reproduire l'exercice de la video très facilement dans une VM au lieu d'utiliser ta machine.

## 3. Points importants à retenir
Pour l'instant il est important que tu comprennes l'utilité d'un environnement `chroot`.
C'est que tu auras compris ici, est ce qui te permettra dans le projet du jour de comprendre, 
ce qui se passe au-delà des commandes que tu vas rentrer dans ton terminal.

## 4. Pour aller plus loin
Cet excellent [article](https://www.howtogeek.com/441534/how-to-use-the-chroot-command-on-linux/) 
va plus loin, en plus d'un exemple, il explique avec moult détails son utilité.