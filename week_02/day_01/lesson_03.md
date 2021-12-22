# Les composants d'un conteneur : Linux Namespaces

## 1. Introduction
Les `namespaces` sont des concepts Linux de base, ce sont des entités qui encapsule (qui entoure) les resources Linux.
Houlala, je vois que tu n'as pas vraiment saisi, laisse-moi développer.

Prenons par exemple une ressource Linux, disons l'espace de stockage.
Eh bien, un des `namespaces` (parce qu'il en y a plusieurs) va encapsuler, cette ressource,
de manière que le process qui est à l'intérieur de ce `namespace` **semble avoir une instance de cette ressource.**

En d'autres mots, les `namespaces` permettent la repartition des ressources du `kernel`
de manière à ce qu'un groupe de processes ait seulement accès aux ressources qui lui sont alloués.

Ainsi chaque groupe de processes aura accès des ressources différentes.

## 2. La ressource
### 2.1. Linux Namespaces
Comme je le disais plus haut il existe plusieurs `namespaces`, plus exactement il en existe 6 officielles plus 1 (`cgroups`).

Cette distinction est importante, car dans la communauté Linux personne n'est d'accord pour statuer sur le fait que le `cgroups` soit ou pas un `namespace`.
Et pour cause cher ami, le `cgroups` n'a pas la même fonction que les autres `namaspaces`.

Les 6 premieres `namespaces` que nous allons voir en détails ci-dessous ont pour objectif de **limiter ce que peut voir un process des ressources de Linux** 
alors que le `cgroups` **limite l'accès d'un process aux ressources de Linux** 



Laisse-moi répéter cette différence, car elle est importante :
- les 6 premiers `namesapces` limitent ce que peut voir un process des ressources disponible.
- et le `cgroups` limite l'accès d'un process aux ressources disponible.

Maintenant que tu connais la différence entre les `namespaces` et le `cgroups`, 
il est temps que tu découvres les différents types de `namespace`

#### 2.1.1. User namespace

#### 2.1.2. IPC namespace

#### 2.1.3. UTS namespace

#### 2.1.4. Mount namespace

#### 2.1.5. PID namespace

#### 2.1.6. Network namespace



## 3. Points importants à retenir
La ressource en quelques points importants.

## 4. Pour aller plus loin
Quelques éléments en ligne pour aller plus loin
