# Linux operating System
Avant de mettre les mains dans le camboins, commençons d'abord par répondre à quelques questions.
Linux c'est quoi ? d'ou vient son nom ? et pourquoi l'utilise-t-on aujourd'hui ?.


## 1. Linux les origines

Pour cela rien de mieux qu'une ressource qui va droit au but: https://stux6.net/unix/linux/les-origines-de-linux

## 2. Unix vs Linux

Maintenant que vous avez une vue d'ensemble de Linux. Les questions que vous posez sont peut-être celles-ci:
1. Quelle est la différence entre Unix et Linux aujourd'hui ? 
   et pourquoi Linux et ses distributions sont autant populaires ?
2. Quelle différence y a-t-il entre les plus importantes distributions de Linux ?

Pour la première question je dirais ceci:
- Linux est open source (le code source est accessible par tout le monde) et principalement gratuit (la plupart des distributions Linux sont gratuites) 

- Unix est utilisé par très d'entreprise [Sun Microsystems](https://fr.wikipedia.org/wiki/Solaris_(syst%C3%A8me_d%27exploitation)), [HP-UX](https://fr.wikipedia.org/wiki/HP-UX), [AIX](https://fr.wikipedia.org/wiki/AIX) ) et sa communauté est très limité.

- Linux est utilisé par beaucoup de developers et entreprises (RedHat, CentOS, Debian, etc.)

- Unix supporte peu de File systems

- Linux peu être installé sur plusieurs supports différents (smartphones, console de jeux, IoT, serveurs, etc.)


## 2.1 Qu'est-ce qu'un OS ?
Pour répondre à la deuxième question, nous devons devons d'abord répondre une autre questions, qu'est-ce qu'un OS (Operating system) ?

Un PC est d'abord consitué de plusieurs éléments (disk, la RAM, le moniteur, carte graphique, etc.) tous ces éléments constitue un `hardware`.

Le hardware ne peut sans faire seul, nous avons donc besoin d'un logiciel, ce logiciel faire fonctionner le hardware, lui permettre de faire des actions que l'utilisateur souhaite.

Ce logiciel est appelé, OS. Un OS est constitué lui aussi de plusieurs éléments:

- Le `kernel`: qui l'élément principale de l'OS, il permet la communication avec le `hardware` à travers des `logiciels pilotes` .

- Les `librairies/drivers`: Ils assistent le `kernel` en apportant des fonctionalitées supplémentaires (comme par example: la gestion des dates, l'heure, gestion de certaines tâches, etc.) ainsi que les drivers (les pilotes pour la carte graphique, micro, DVD, etc.)

- Les `applications`: les programmes avec lesquelles tu intéragis (example un Web Browser, Slack, VScode).

  Pour bien comprendre prenons le cas de Firefox. Firefox est coder de manière à communiquer avec les `libraires/drivers` liés au moniteur.
  Ces `librairies/drivers` vont à leur tour communiquer avec le `kernel` qui à son tour va communiquer avec le `hardware`.

*TODO: schéma recap*


## 2.3 Les distribution Linux
Bien maintenant que nous en savons un peu plus sur l'OS. Cette ressource va vous en apprendre plus sur la différence entre les plus importantes distributions de Linux : https://www.computernetworkingnotes.com/linux-tutorials/difference-between-linux-distributions.html 


## 8. Points importants à retenir

L'univers Linux est vaster, très vaste, est la meilleur de comprendre ce monde est d'avancer pas à pas, sans se presser.

La compréhension des principes de bases, l'OS Linux avec ses composants et les différents distributions de Linux, va vous permettre de comprendre la communauté (jargon, ressources) et en apprendre d'avantages votre OS.


## 3. Pour aller plus loin

[Le cours de CloudGuru](https://acloudguru.com/course/linux-operating-system-fundamentals) est excellentes ressources qui vous permettra d'approfondir ce cours.


PS. Pour accéder au site CloudGuru, vous devez vous inscrire. Les cours sont gratuits mais pas les exercices et cas pratiques.


⚠️ ALERTE TIPS

Le site CloudGuru est à mettre en favori de toute urgence, ce site regroupe un nombre incroyable de cours qui vont vraiment `deep dive` dans les sujets qu'ils abordent. 