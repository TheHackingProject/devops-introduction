# Linux.

## 1. Introduction
Avant de mettre les mains dans le cambouis, commençons d'abord par répondre à quelques questions.
Linux, qu'est-ce que c'est ? Quelle est son origine ? Et pourquoi l'utilise-t-on de nos jours ?.

## 2. La ressource
### 2.1. Linux les origines
Pour cela rien de mieux qu'une [doc](https://stux6.net/unix/linux/les-origines-de-linux) qui va droit au but.

### 2.2. Unix vs Linux
Maintenant que tu as une vue d'ensemble de Linux. Les questions que tu te poses sont sûrement celles-ci :
1. Quelle est la différence entre Unix et Linux ? 
   
2. Les distributions de Linux, c'est quoi et pourquoi y en a-t-il autant ?

Voici un début de réponse à à la première question dans cette [article](https://www.ionos.fr/digitalguide/serveur/know-how/unix-vs-linux/).

Pour résumer et t'apporter des informations supplémentaires : 
- Linux est `open source` (ce qui veut dire que le code source est accessible par tout le monde) et principalement gratuit (la plupart des distributions Linux sont gratuites). Il est utilisé par beaucoup de devs et entreprises (RedHat, CentOS, Debian, etc.). De ce fait, sa communauté Linux est gigantesque.

- Alors que Unix est principalement utilisé par un nombre limité d'entreprises : [Sun Microsystems](https://fr.wikipedia.org/wiki/Solaris_(syst%C3%A8me_d%27exploitation)), [HP-UX](https://fr.wikipedia.org/wiki/HP-UX), [AIX](https://fr.wikipedia.org/wiki/AIX) et sa communauté est très limitée.


- Au contraire de Unix, Linux peut être installé sur plusieurs supports différents (smartphones, console de jeux, IoT, serveurs, etc.).


## 2.3. Qu'est-ce qu'un OS ?
Pour répondre à la deuxième question, nous devons d'abord répondre à une autre question, qu'est-ce qu'un `OS` (Operating system) ?

Un PC est d'abord constitué de plusieurs éléments (Disk, RAM, Moniteur, Carte graphique, etc.) qui ensemble constituent le `hardware`.

Le hardware ne peut rien faire seul, il a besoin d'un logiciel pour faire fonctionner individuellement ou ensemble les sous-éléments du `hardware`. Dans le but unique, d'exécuter les actions que les utilisateurs souhaitent. Ce logiciel est appelé, un `OS` et il est lui-même constitué de plusieurs éléments :

- Le `kernel`: qui est l'élément principal, il permet la communication avec le `hardware` à travers les `logiciels pilotes` .

- Les `librairies/drivers`: Les `librairies` assistent le `kernel` en apportant des fonctionnalités supplémentaires (example : la gestion des dates, l'heure, etc.) et les drivers permettent au `kernel` de contrôler les éléments du hardware (example : carte graphique, USB, etc.).

- Les `applications`: les programmes avec lesquelles tu interagis (example : Firefox, LibreOffice, Calculator, etc.).


Pour bien comprendre prenons le cas de Firefox. Firefox est codé de manière à communiquer avec les `libraires/drivers` liés au moniteur.
Ces `librairies/drivers` à leur tour interagissent avec le `kernel` qui à son tour va communiquer avec le `hardware`.


Voici un schéma récapitulatif 😄 

![OS Linux Architecture](https://i.imgur.com/HOtGcAk.png)


## 2.4. Les distributions Linux
Bien, maintenant que tu en sais un peu plus sur l'OS. Cette [doc](https://www.computernetworkingnotes.com/linux-tutorials/difference-between-linux-distributions.html) va t'en apprendre davantage sur la différence entre les plus importantes distributions de Linux. 


## 3. Points importants à retenir
L'univers Linux est vaste, très vaste, donc le meilleur moyen de comprendre cet univers est d'avancer pas à pas, sans se presser.

La compréhension des principes de bases, l'OS, les différentes distributions de Linux, te permettront de comprendre la communauté (jargons, ressources), te déboguer, t'amuser et pourquoi pas un jour, de contribuer à l'évolution de Linux. 


## 4. Pour aller plus loin
Pas besoin pour le moment.
