# Les composants d'un conteneur : Linux Namespaces

## 1. Introduction

Afin que nous soyons tous sur la même longueur d'ondes voici une petite piqûre de rappel sur les [process Linux](https://www.it-connect.fr/les-processus-sous-linux/).

Les `namespaces` sont des concepts Linux de base, ce sont des entités qui encapsule (qui entoure) les resources Linux.
Houlala, je vois que tu n'as pas vraiment saisi, laisse-moi développer.

Prenons par exemple une ressource Linux, disons l'espace de stockage.
Eh bien, un des `namespaces` (parce qu'il en y a plusieurs) va encapsuler, cette ressource,
de manière que le process qui est à l'intérieur de ce `namespace` **semble avoir une instance de cette ressource.**

En d'autres mots, les `namespaces` permettent la repartition des ressources du `kernel`
de manière à ce qu'un groupe de processes ait seulement accès aux ressources qui lui sont allouées.

Ainsi chaque groupe de processes aura accès à des ressources différentes.

**Autrement dit les namespaces permettent à un conteneur d'avoir des resources dédiées de manière sécurisé.

## 2. La ressource
### 2.1. Linux Namespaces
Comme je le disais plus haut, il existe plusieurs `namespaces`, pour être précis, il y en a 6 officielles **plus 1 (`cgroups`)**.

Cette distinction est importante, car dans la communauté Linux personne n'est d'accord pour statuer sur le fait que le `cgroups` soit ou pas un `namespace`.
Et pour cause cher ami, le `cgroups` n'a pas la même fonction que les autres `namaspaces`.

Les 6 premieres `namespaces` ont pour objectif de **limiter ce que peut voir un process des ressources de Linux** 
alors que le `cgroups` **limite l'accès d'un process aux ressources de Linux** 


Laisse-moi répéter cette différence, car elle est importante :
- les 6 premiers `namesapces` limitent ce que peut voir un process des ressources disponible.
- et le `cgroups` limite l'accès d'un process aux ressources disponible.

Maintenant que tu connais la différence entre les `namespaces` et le `cgroups`, 
il est temps que tu découvres les différents types de `namespace`.

#### 2.1.1. User namespace
Ce namespaces permet à un process d'avoir ses propres [UIDs et GUIDs](https://linuxhandbook.com/uid-linux/).
Ce qui veut dire que ce process peut avoir des accès `root` dans le `Namespace User` 
mais pas dans les autres namespaces.

En d'autres mots, le process parent d'un conteneur aura des privilèges `root` à l'intérieur du conteneur, mais pas l'extérieur de celui-ci.

#### 2.1.5. PID namespace
Permet à conteneur d'avoir un process parent avec PID égale à 1 ainsi que des process enfant qui ont des PIDs supérieur à 1.

#### 2.1.6. Network namespace
Ce namespace permet à chaque conteneur d'avoir sa propre configuration réseau et périphériques (appareils réseaux, pare-feu, etc.).

#### 2.1.2. IPC namespace
Le namespace IPC (Interprocess communication), permet la communication entre plusieurs namespace 
en créant pour chaque namespace une file d'attente de message, ce qui permet aux conteneurs d'échanger de données.

#### 2.1.3. UTS namespace
Avec ce namespace, chaque process voit chaque conteneur comme un système qui possède un `hostname` unique.
Ce qui permet depuis un conteneur de `ping` un autre conteneur en utilisant son `hostname`.

#### 2.1.4. Mount namespace
Ce namespace permet de contrôler le `system mounts points` d'un conteneur. 
Concrètement, le `Mount namespace` rend possible la création de dossier/fichier partagé ou non par un ou plusieurs conteneurs.


## 3. Points importants à retenir
La ressource en quelques points importants.

## 4. Pour aller plus loin
Quelques éléments en ligne pour aller plus loin
