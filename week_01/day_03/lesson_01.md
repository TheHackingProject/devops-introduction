# La virtualization
Après deux jours sur l'environnement Linux et les commandes Shell, 
il est temps d'aborder la virtualization, qui est un aspect important dans la compréhension des `containers docker`.

## 1. Introduction
Tu te demandes pourquoi je te parle de virtualization au lieu d'aborder directement les `containers Docker`.
Eh bien parce que les ` containers` sont une forme de virtualisation. De ce fait comprendre la virtualisation t'aidera à mieux comprendre comment fonctionne les `containers`.

## 2. Historique et contexte

Dans les années 70, quand les ordinateurs ont commencé à se propager, seules les universités et grandes entreprises pouvaient y avoir accès.
En effet, a cette époque les petites entreprises et encore moins les particuliers ne pouvaient pas s'offrir le luxe d'avoir un ordinateur, à la place, 
ils les louaient à $1000/mois. 
Avec l'inflation de nos jours, c'est un peu près $8000/mois, je te laisse imaginer le prix d'un ordinateur dans ces temps-là :).
Tu comprends pourquoi peu de personne avait accès à un ordinateur.

Et c'est là qu'entre en scène les débrouillards de l'époque qui ont essayé d'optimiser au maximum l'utilisation des ordinateurs, 
en inventant plusieurs technologies de partage d'un même ordinateur par plusieurs utilisateurs et programmes, parmi eux :

- En 1970, la virtualisation par IBM (nous allons y revenir) et le système d'exploitation Unix.

- le `chroot (chroot = change root) environment` en 1979, qui dans le `filesystem` permet de changer le chemin du `root directory` d'un `process` et ses `child process`.
  En d'autres mots, avec `chroot` un process à un accès limité au filesystem du `chroot environment`.

  C'étais le début des environnements partagé par plusieurs utilisateurs.

- un peu plus tard, dans les années 1990, le fameux `Linux jail command` développé par Bill Cheswick et inspiré par le `chroot`.

  Bill Cheswick, a développé ce système, pour espionner et apprendre les techniques des [crackers](https://www.techtarget.com/searchsecurity/definition/cracker#:~:text=A%20computer%20cracker%20is%20an,because%20the%20challenge%20is%20there.).
  Un [célèbre article](https://www.cheswick.com/ches/papers/berferd.pdf) parmi la communauté Linux écrit par Bill Cheswick lui-même explique comment il a procédé.

PS. Le concept `process` et `child process`, n'est pas évident à appréhender, de ce fait, voici une [documentation](https://www.geeksforgeeks.org/difference-between-process-parent-process-and-child-process/) qui te servira d'antisèche :).

L'idée d'avoir un environnement partagé à continué à son chemin au fil des technologies inventées par les devs et les enterprises.
C'est en 2006 que les devs de Google ont annoncé travailler sur une technologie révolutionnaire appelée `process containers`. 

Cette technologie, limite les resources (CPU, RAM, etc.) utilisés par un `groupe de process`. 
C'est fut, une annonce incroyable pour cette époque, car avant le `process containers` on ne pouvait limiter l'accès que d'un seul `process`.

Par la suite Google renomma cette technologie en `Cgroups (control groups)` pour éviter la confusion avec le terme `container`.
Et enfin cette technologie fut intégrée au `Linux Kernel`, ce qui permis en 2007, la naissance du LXC (Linux Container), l'ancêtre des `containers` tel que tu vas les découvrir la semaine prochaine :).

La suite de l'histoire la semaine prochaine avec la découverte de Docker :).


## 3. La ressource
Maintenant que tu en sais plus sur les origines des `containers docker`, 
tu vas découvrir par la pratique la `virtualisation`, 
ce qui te permettra t'expérimenter et comprendre des concepts qui te seront d'un grand secours la semaine prochaine avec les `contaieners Docker`. 

Depuis son invention par IBM dans les années 1970, la virtualisation a beaucoup évolué. 
Cependant, son principe reste le même partager les ressources du hardware entre plusieurs utilisateurs/programmes, 
tout en faisant en sorte que chaque utilisateur/programme ait un environment isolé.

Bien avant de démarrer notre première VM, analysons d'abord comment la virtualisation marche concrètement,
disons que tu possèdes un PC qui un OS, peu importe l'OS.

Sur ce PC on installe un `hyperviseur de type 2`, c'est un logiciel basé sur `l'hyperviseur`.

Je vois que ton cerveau commence à cogiter fortement. :).
Mais ne t'inquiète pas, on va expliquer chaque mot.

L'hyperviseur, est un logiciel qui permet de créer et d'exécuter des machines virtuelles.

PS. Une machine virtuelle est un environment virtuel qui fonctionne comme un OS virtuel, avec ses propres ressources (RAM, CPU, network, ...).

Il est deux types d'hyperviseur :
- Hyperviseur de type 2, se lance sur un PC "normal", en tant qu'application, donc sur un PC où est déjà installé un OS.

  `Oracle VirtualBox`, `VMware workstation` sont par example des hyperviseurs de type 2.

- Hyperviseur de type 1, se lance directement sur le PC et **remplace l'OS, donc sur un PC/serveur "nu"**. 
  Ce type d'hyperviseur est très prisé dans les datacenters.

  `Microsoft Hyper-V`, `VMware vSphere` sont par exemple des hyperviseurs de type 1

C'est deux types d'hyperviseurs peuvent être représenté comme ceci : 

*TODO: schema hypervisor* ==> https://geek-university.com/oracle-virtualbox/what-is-hypervisor/

Maintenant que tu en sais plus, nous allons découvrir la virtualisation de type 2 avec VirtualBox.

### 3.1. Ta première VM
#### 3.1.1. Installer Virtualbox

#### 3.1.2. Démarrer ta première VM.

Explication sur les différents éléments qui constituent la VM et l'interdépendance avec le host
Expliquer son utilité : 

#### 3.1.3. Qu'est-ce qui se passe dans la VM ?

## 5. Pour aller plus loin
Quelques éléments en ligne pour aller plus loin
