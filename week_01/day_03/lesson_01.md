# La virtualization
Après deux jours sur l'environnement Linux et les commandes Shell, 
il est temps d'aborder la virtualization, qui est un aspect important dans la compréhension des `containers docker`.

## 1. Introduction
Tu te demandes pourquoi je te parle de virtualization au lieu d'aborder directement les `containers Docker`.
Eh bien parce que les ` containers` sont une forme de virtualisation. De ce fait comprendre la virtualisation t'aidera à mieux comprendre comment fonctionne les `containers`.

## 2. Historique et contexte
Retour dans les années 70 quand les ordinateurs ont commencé à se propager à travers les universités et grande entreprise.
À cette époque les petites entreprises et encore moins les particuliers ne pouvaient pas s'offrir le luxe d'avoir un ordinateur, 
ils les louaient à $1000/mois avec l'inflation de nos jours, c'est un peu près $8000/mois. Tu comprends pourquoi de personne avait accès un ordinateur.

Et c'est là qu'entre en scène les débrouillards de l'époque qui ont essayé d'optimiser au maximum la location :), 
en inventant plusieurs technologies de partage, parmi eux :
- La virtualisation par IBM (nous allons y revenir)
- Unix en 1970
- le `chroot (chroot = change root) environment` en 1979, qui dans le `filesystem` permet de changer le chemin du `root directory` d'un process et des process enfant.
  En d'autres mots, avec `chroot` un process (et les process enfants) ont un accès limité au filesystem du `chroot environment`.

  C'étais le début des environnements partagé par plusieurs utilisateurs.

- dans les années 1990, le fameux `Linux jail command` développé par Bill Cheswick et inspiré par le `chroot`.
  
  Il a développé ce système, pour espionner et apprendre les techniques des [crackers](https://www.techtarget.com/searchsecurity/definition/cracker#:~:text=A%20computer%20cracker%20is%20an,because%20the%20challenge%20is%20there.).
  Un [célébré article](https://www.cheswick.com/ches/papers/berferd.pdf) parmi la communauté Linux écrit par Bill Cheswick lui-même comment il a procédé.


L'idée d'avoir un environnement partagé à continué à son chemin au fil de technologie inventé par les devs et enterprises.
C'est en 2006 que les devs de Google ont annoncé travailler sur une technologie appelée `process containers`. 
Qui limite les resources (CPU, RAM, etc.) utilisés par un groupe de process. 
C'est fut, une annonce incroyable pour cette époque, car avant le `process containers` on ne pouvait limiter l'accès que d'un seul process.

Par la suite Google renomma cette technologie en `Cgroups (control groups)` pour éviter la confusion avec le terme `container`.
Et enfin cette technologie fut intégrée au Linux Kernel, ce qui permis en 2007 la naissance du LXC (Linux Container), l'ancêtre des `containers` tel que tu vas les découvrir la semaine prochaine :).

La suite de l'histoire la semaine prochaine avec la découverte de Docker :).


## 3. La ressource
Cette partie est le nerf de la ressource, elle expliquera les notions de cette ressource.

### 3.1 LA virtualisation - Un peu de théorie


### 3.2. Ta première VM


## 4. Points importants à retenir
La ressource en quelques points importants.

## 5. Pour aller plus loin
Quelques éléments en ligne pour aller plus loin
