# Linux.
Avant de mettre les mains dans le cambouis, commençons d'abord par répondre à quelques questions.
Linux, qu'est-ce que c'est ? Quelle est son origine ? Et pourquoi l'utilise-t-on de nos jours ?.


## 1. Historique et contexte
### 1.1. Linux les origines

Pour cela rien de mieux qu'une [doc](https://stux6.net/unix/linux/les-origines-de-linux) qui va droit au but.

### 1.2. Unix vs Linux

Maintenant que tu as une vue d'ensemble de Linux. Les questions que tu te poses sont sûrement celles-ci :
1. Quelle est la différence entre Unix et Linux ? 
   
2. Les distributions de Linux, c'est quoi et pourquoi il en y a-t-il autant ?

Pour la première question je dirais ceci :
- Linux est open source (le code source est accessible par tout le monde) et principalement gratuit (la plupart des distributions Linux sont gratuites).

- Unix est principalement utilisé par ces entreprises : [Sun Microsystems](https://fr.wikipedia.org/wiki/Solaris_(syst%C3%A8me_d%27exploitation)), [HP-UX](https://fr.wikipedia.org/wiki/HP-UX), [AIX](https://fr.wikipedia.org/wiki/AIX)  et sa communauté est très limitée.

- Linux est utilisé par beaucoup de developers et entreprises (RedHat, CentOS, Debian, etc.).

- Au contraire de `Unix`, Linux peut être installé sur plusieurs supports différents (smartphones, console de jeux, IoT, serveurs, etc.).


## 1.3. Qu'est-ce qu'un OS ?

Pour répondre à la deuxième question, nous devons d'abord répondre une autre question, qu'est-ce qu'un `OS` (Operating system) ?

Un PC est d'abord constitué de plusieurs éléments (Disk, RAM, Moniteur, Carte graphique, etc.) qui ensemble constitue le `hardware`.

Le hardware ne peut rien faire seul, il a besoin d'un logiciel pour faire fonctionner individuellement ou ensemble les sous-éléments du `hardware`. Dans le but unique, d'exécuter les actions que les utilisateurs souhaitent. Ce logiciel est appelé, un `OS` et il est lui-même constitué de plusieurs éléments :

- Le `kernel`: qui est l'élément principal, il permet la communication avec le `hardware` à travers les `logiciels pilotes` .

- Les `librairies/drivers`: Les `librairies` assistent le `kernel` en apportant des fonctionnalités supplémentaires (example : la gestion des dates, l'heure, etc.) et les drivers permettent au `kernel` de contrôler les éléments du hardware (example : carte graphique, USB, etc.).

- Les `applications`: les programmes avec lesquelles tu interagis (example : Firefox, LibreOffice, Calculator, etc.).


Pour bien comprendre prenons le cas de Firefox. Firefox est codé de manière à communiquer avec les `libraires/drivers` liés au moniteur.
Ces `librairies/drivers` à leur tour interagissent avec le `kernel` qui à son tour va communiquer avec le `hardware`.


*TODO: schéma recap*


## 1.4. Les distributions Linux
Bien maintenant que tu en sais un peu plus sur l'OS. Cette [doc](https://www.computernetworkingnotes.com/linux-tutorials/difference-between-linux-distributions.html) va t'en apprendre plus sur la différence entre les plus importantes distributions de Linux. 


## 2. Points importants à retenir

L'univers Linux est vaste, très vaste, donc le meilleur de comprendre cet univers est d'avancer pas à pas, sans se presser.

La compréhension des principes de bases, l'OS, les différentes distributions de Linux, te permettra de comprendre la communauté (jargons, ressources), te déboguer, t'amuser et pourquoi un jour contribuer à l'évolution de Linux 


## 3. Pour aller plus loin

Pas besoin pour le moment.