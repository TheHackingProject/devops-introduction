# Les composants d'un conteneur : Linux Namespaces

## 1. Introduction
Afin que nous soyons tous sur la même longueur d'ondes voici une petite piqûre de rappel sur les [process Linux](https://www.it-connect.fr/les-processus-sous-linux/). 😄

Les `namespaces` sont des concepts Linux de base, ce sont des entités qui encapsule (qui entoure) les resources Linux.
Houlala, je vois que tu n'as pas vraiment saisi, laisse-moi développer.

Prenons par exemple une ressource Linux, disons l'espace de stockage.
Eh bien, un des `namespace` (parce qu'il en y a plusieurs) va encapsuler, cette ressource,
de manière que le process qui est à l'intérieur de ce `namespace` **semble avoir une instance de cette ressource.**

En d'autres mots, les `namespaces` permettent la repartition des ressources du `kernel`
de manière à ce qu'un groupe de process ait seulement accès aux ressources qui lui sont allouées.

Ainsi chaque groupe de process aura accès à des ressources différentes.

**Autrement dit les namespaces permettent à un conteneur d'avoir des resources dédiées de manière sécurisé.

## 2. La ressource
### 2.1. Linux Namespaces
Comme je le disais plus haut, il existe plusieurs `namespaces`, pour être précis, il y en a 6 officielles **plus 1 (`cgroups`)**.

Cette distinction est importante, car dans la communauté Linux personne, n'est d'accord pour statuer sur le fait que le `cgroups` soit ou pas un `namespace`.
Et pour cause cher ami, le `cgroups` n'a pas la même fonction que les autres `namaspaces`. 😄

Les 6 premieres `namespaces` ont pour objectif de **limiter ce que peut voir un process des ressources de Linux** 
alors que le `cgroups` **limite l'accès d'un process aux ressources de Linux** 


Laisse-moi répéter cette différence, car elle est importante :
- les 6 premiers `namesapces` limitent ce que peut voir un process des ressources disponible.
- et le `cgroups` limite l'accès d'un process aux ressources disponible.

Maintenant que tu connais la différence entre les `namespaces` et le `cgroups`, 
il est temps que tu découvres les différents types de `namespace`.

#### 2.1.1. User namespace
Ce namespaces permet à un process d'avoir ses propres [UIDs et GUIDs](https://linuxhandbook.com/uid-linux/).
Ce qui veut dire que ce process peut avoir des accès `root` à l'aide de ce namspace

Cela te permet à l'intérieur du conteneur de créer des utilisateurs et surtout d'utiliser le utilisateur `root` 

#### 2.1.5. PID namespace
Permet à un conteneur d'avoir un process parent avec PID égale à 1 ainsi que des process enfant qui ont des PIDs supérieur à 1.

Tout comme sur ta machine, tu pourras faire fonctionner plusieurs services/outils simultannement à l'aide de ce namespace. 

#### 2.1.6. Network namespace
Ce namespace permet à chaque conteneur d'avoir sa propre configuration réseau et périphériques (appareils réseaux, pare-feu, etc.).

#### 2.1.2. IPC (Interprocess communication) namespace
Ce namespace permet la communication entre plusieurs namespaces 
en créant pour chaque namespace une file d'attente de message, ce qui permet aux namespaces et aux conteneurs d'échanger de données.

#### 2.1.3. UTS namespace
Avec ce namespace,  chaque conteneur possède un `hostname` unique.
Ce qui permet depuis un conteneur de `ping` un autre conteneur en utilisant son `hostname`.

#### 2.1.4. Mount namespace
Ce namespace permet de contrôler le `system mounts points` d'un conteneur. 
Concrètement, le `Mount namespace` rend possible la création de dossier/fichier partagé ou non par un ou plusieurs conteneurs.

#### 2.1.5. Cgroups
Cet élément est en soi très complexe à expliquer et à même comprendre au point même que des admins Linux avec 3 ou 4 ans
d'expériences ont du mal à utiliser et configurer efficacement le `cgroups`. 😭

Mais rassure toi, nous avons juste besoin de comprendre à grande échelle, ce que fait le Cgroups afin d'avoir une vision d'ensemble. C'est parti !

Comme je te l'ai dit plus haut le `Cgroups` limite l'accès d'un processus aux ressources disponible (RAM, CPU, I/Os, ...), 
à l'aide de plusieurs sous-systèmes.

Pour ton information personnelle, voici la liste des sous-systèmes les plus importantes, histoire que tu puisses te la raconter auprès de tes potes 😉.
Dans cette liste tu trouveras également des liens utiles au cas où tu voudrais allez plus loin.

- [blkio](https://access.redhat.com/documentation/fr-fr/red_hat_enterprise_linux/6/html/resource_management_guide/ch-subsystems_and_tunable_parameters) : limite le nombre de [I/Os](https://www.maketecheasier.com/manage-priority-io-processes-linux/) de chaque process. Il nous permet de configurer la limite à ne pas dépasser.
- [cpu](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/6/html/resource_management_guide/sec-cpu), [cpuacct](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/6/html/resource_management_guide/sec-cpuacct), [cpuset](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/6/html/resource_management_guide/sec-cpuset) : Ces trois sous-système permettent d'attacher le CPU à un process, de le configurer et de monitorer ce CPU.
- [devices](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/6/html/resource_management_guide/sec-devices) : permet d'autoriser ou refuser l'accès aux périphériques à un process, en d'autres mots, tu peux autoriser ou non certains conteneurs à accéder aux périphériques de ton PC.
- [freezer](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/6/html/resource_management_guide/sec-freezer) : permet de suspendre ou relancer un conteneur à l'aide du signal `sigstop`.
- [memory](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/6/html/resource_management_guide/sec-memory) : permet de limiter la RAM utilisée par un conteneur
- [net_cls](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/6/html/resource_management_guide/sec-net_cls) : permet de taguer des packets de réseau avec un `classid`, afin de mieux gérer (priorisation, suppression, etc.) et filtrer les packets venant d'autres conteneurs.
- [net_prio](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/6/html/resource_management_guide/net_prio) : permet une gestion du réseau de manière dynamique.

Dans quelques années si tu poursuis sur la voie du DevOps et le tortueux chemin de Kubernetes, tu auras besoin de revenir sur le `cgroups` et son utilisation, crois-moi 😉.


## 4. Pour aller plus loin
Tu l'as compris les namespaces, ce n'est pas pour les fragiles 😃.
A prime abord ça peut te sembler trop compliqué et finalement pas nécessaire pour utiliser LXC et Docker.

Mais là se trouve la différence entre celui qui utilise un outil et qui à la moindre erreur abandonne le navire ou mets des heures, voir des jours à débugger 
et celui qui est capable en cas de bug mystique de plonger dans le fonctionnement interne et en ressortir avec une solution.


