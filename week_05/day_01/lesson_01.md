# Un outil CI/CD, mais pourquoi faire ?

## 1. Historique et contexte

Pour répondre à cette question voyons d'abord d'un point de vue historique, l'origine de ce terme. Car vois-tu cher moussaillon, 
maitriser et déployer son code de manière continue est une préoccupation qui ne datent pas d'hier.
Depuis longtemps les devs ont voulu maitriser ce processus et quand je dis longtemps, je veux dire, très, très longtemps !
Depuis le début des années 90, pour être précis.

Mais avant de rentrer dans les détails, il nous faut d'abord comprendre précisément 
la signification du terme `Contiuous Integration` en abrégé ,`CI`, et `Continuous Delivery`, `Continuous Deployement` qui en abrégé se prononcent/s'écrivent, `CD`. 
Je sais, c'est peut-être un peu flou pour toi, mais ces trois termes ne veulent pas dire la même.

Mais je vais t'expliquer chaque terme un par un 😃.


### 1.1. Continuous Integration
**L'intégration continue, c'est de merger le code écrit par les devs dans la source (GitHub, BitBucket, GitLab, etc.)
plusieurs fois par jour. En veillant qu'à chaque "commit" à ce que le code soit automatiquement builder et tester (testes unitaires, testes, intégration, etc.)
pour être sûr que ce nouveau code ne cause pas de problèmes. Et si le code cause des problèmes (bugs, etc.), qu'ils soient détectés, le plus tôt possible afin que les devs soient immédiatement alertés.**

Comme je le disais plus haut ! C'est au début des années 90 que l'intégration continue est apparue, bien qu'il ne s'appelait pas en encore comme cela.
Ce processus à été pour la première fois proposée par un certain Grady Booch en 1991 dans son livre [Object-oriented analysis and design with applications](https://www.goodreads.com/book/show/424923.Object_Oriented_Analysis_and_Design_with_Applications).
Son idée était d'utiliser plus souvent des classes et des objects de manière à simplifier la conception d'une application et bien sûr, pouvoir l'intégrer fréquemment.

En 1997, est arrivé le concept d'[extreme programming](https://www.umsl.edu/~sauterv/analysis/f06Papers/Hutagalung/#:~:text=The%20origin%20of%20extreme%20programming,to%20be%20a%20successful%20method.) qui s'inspiré du livre de Booch (ça y est, c'est mon gars sûr à la compote ! 😃)
pour promouvoir la livraison des applications plusieurs fois par jour. La notion de `release many times a days` que Booch n'avait pas proposé dans so livre, était complètement nouveau.

À cette époque, l'`extreme programming` à changer le game !
Ohh, un fait important ! L'`extreme programming` de cette époque n'est pas [la méthode agile](https://www.planzone.fr/blog/quest-ce-que-la-methodologie-extreme-programming) que nous connaissons aujourd'hui.
Dans ces années-là, l'`extreme programming`, était le fait de prendre des concepts et paradigms déjà existants et de les appliquer à l'extrême, tout simplement 😅.
C'est cette application extrême qui a donné naissance aux concepts de `shorter release cycles`, `code reviews`, `pair programming`, testes unitaires, etc.
Tous les concepts et méthodologies (scrum, kanban, etc.) viennent de l'`extreme programming` et ont pour seul but d'améliorer 
la qualité du code et rendre ce code disponible, pour les utilisateurs de manière rapide.

Lorsque dans ces années, les devs ont réalisées le besoin délivrer plus souvent, il n'y avait d'outils pour faire cela facilement.
Il a fallu attendre 2001 pour voir apparaitre [`Cruise Control`](http://cruisecontrol.sourceforge.net/).
Cet outil, a littéralement révolutionné l'informatique, car c'était le premier outil CI, open source et facile à utiliser.
Par utiliser, j'entends le premier que l'on pouvait installer, configurer et manager soi-même, il était même capable de s'intégrer aux IDEs. Comble de l'innovation pour l'époque.

Petit bémol, cet outil était cent pour cent écrits et dédié au code Java, si tu voulais par exemple l'utiliser pour du `Ruby`, il fallait installer une version de `Control Cruise` en Ruby.

C'est pourquoi `Control Cruise` a rapidement été remplacé par `Jenkins` qui est aujourd'hui, l'outil CI et CD, le plus utilisé dans le monde.
Car il supporte pratiquement n'importe quel langage, peut être customisé à ta convenance, pour te permettre de faire tout ce que tu veux (sans blague, vraiment tout ce que tu veux !).
Et cerise sur la gateau, Jenkins à une énorme communauté, ce qui veut dire que peu importe le problème que tu vas rencontrer, 
quelqu'un de la communauté a déjà rencontré et a documenté une solution 😎.

Main si Jenkins fait office de parrain dans le game, grâce à sa longévité et son adaptabilité, 
la manière dont on "build", délivre et utilise les applications est en entrain de/a changé
et Jenkins commence à montré des signes, je dirais "d'essoufflement". 

Avec Jenkins tu dois l'installer sur serveur, le configurer, manager et maintenir les serveurs tout en gérant Jenkins lui-même, ce qui des fois, peut te faire perdre la tête, crois-moi je sais de quoi je parle ! 🤯
Alors qu'aujourd'hui, on a besoin de plus d'agilité et rapidité avec des outils `cloud native` où la gestion des serveurs est déléguée au fournisseur de Cloud.
C'est dans ce contexte, qu'est nait les nouveaux CI et CD hybride ou totalement Cloud comme `circleci`, `Jenkins X`, `Github Actions`, etc.
Avec l'apparition des services CI et CD `cloud native` une bataille à vu le jour,
entre ceux qui disent que les outils `cloud native` amènent des failles de sécurités, car on ne contrôle pas totalement l'outil (les serveurs et le logiciel).
Et ceux qui disent les outils totalement managés sont justement ceux qui ont plus failles de sécurités, car ils sont gérés par des humains.
Mais je te laisse te faire ta propre idée sur ce débat.

Bien ! Tout au long de ma petite histoire je t'ai à plusieurs reprises, parlé de `CI` et `CD` mais que veut dire CD ?

### 1.2. Continuous Delivery and Continuous Deployment
Quand tu entends CD, tu ne dois pas comme la plupart des personnes dans l'informatique associé ces deux termes `Continuous Delivery` et `Continuous Deployment`, en te disant qu'ils veulent dire la même chose.

Non ! Cher moussaillon, tu vaux mieux que ça !

Le process de `Continuous Delivery` veut exactement dire ce qu'il veut dire ! 😉
En d'autres mots, les applications vont continuellement être mis à jour avec un nouveau code.
Par exemple, imaginons que sur Github la branche master soit ta branche de production.
Le process de délivrer continuellement sera de commit ton code sur une branche à part, builder et tester ce code dans cette branche, et si tout va bien,
merger cette branche sur master.
Ensuite la partie déploiement se fera, mais de manière manuelle ou semi-automatic, ce qui veut dire que toi ou ta team 
**à un moment donné devra appuyer sur un bouton** pour permettre le déploiement de ce code à partir de la branche master.
Et souvent ce bouton est déclenché après que les devs ou les QAs (testeurs) aient testé et validé les améliorations/changements.


Quant au process de `Continuous Deployment`, il est similaire au `Continuous Delivery`, à l'exception qu'il va un peu plus loin **en permettant de déploiement sans intervention manuelle**.
Cela veut que même la phase de test est automatisée, ce qui implique une totale confiance 
dans le code, la qualité du code, les phases de tests de ce code, 
et dans le système qui permet `roll out` cette `release` en cas de problème.

C'est donc à toi futur `devs +` et/ou devops, de construire ce système et faire en sorte d'effacer au maximum l'intervention humaine et ses erreurs.
Car en tant qu'humain :
- nous sommes mauvais quand il s'agit de faire des tâches répétitives, 
- on s'ennuie, 
- on est distrait 
- et nous sommes lents.

Et détrompe-toi, appuyer sur un bouton pour déployer une application, n'est pas une sécurité, mais plutôt un sentiment de sécurité.
Et ce qui compte vraiment est **à quelle vitesse je peux corriger une mauvaise `release`** et ces process
`Continuous Deployment` et `Continuous Delivery` sont là pour nous aider à 
construire des systèmes de livraison performant en termes de tests et de gestion d'erreurs.

Bien, maintenant que tu as l'histoire et le contexts des outils de CI/CD, 
il est temps, de découvrir un outil CI/CD

### 1.3. Mais quel outil apprendre ?

Le choix d'un outil de CI/CD à t'apprendre n'a clairement pas été facile, 
car comme je te l'ai dit, le choix est difficile entre un outil de troisième génération (a.k.a `cloud native`)
et Jenkins qui est l'outil CI/CD, le plus utilisé dans le monde (a.k.a le parrain).

Cependant, j'ai décidé de t'apprendre Github Actions, car il a de nombreuses fonctionnalités intéressantes (que tu vas découvrir tout au long de la semaine),
s'intègre par défaut avec plusieurs autres services cloud natifs (docker, kubernetes, AWS, ...) et utilise le YAML pour configurer les workflow. 

Au contraire de Jenkins où tu dois :
- installer le logiciel sur un serveur, 
- configurer Jenkins
- manager le serveur,
- intégrer manuellement chaque nouveau service/élément,
- et apprendre un nouveau langage qui est le Groovy pour avoir une bonne base sur Jenkins.

Tu l'as compris la courbe d'apprentissage est plus longue avec Jenkins (plusieurs semaines). 
Mais ne t'inquiète pas, tu auras l'occasion d'apprendre Jenkins dans le parcours DevOps 😄.


## 2. La ressource
### 2.1. Qu'est-ce que Github Actions ?

Github Action est un outil de CI/CD directement intégré à Github, sorti fin 2019. Car avant Github Actions, 
il fallait avant utiliser des services externes comme Circleci ou TravisCI alors que Github Action est directement intégré à la plateforme Github.

Du fait de son intégration complète avec Github, il peut également vous aider à automatiser certains de vos workflows directement au sein de Github. 
La liste des évènements permettant de déclencher un workflow est longue, mais en voici quelques exemples :

- Création ou modification d’une PR (nouveau commentaire par exemple)
- Push sur une branche 
- Changement de status d’une issue Github
- Modification quelconque d’un ticket sur un projet board dans Github

Et cerise sur le gateau, Github Actions vient avec un mécanisme de composants réutilisables : les Actions.
Il s’agit de composants logiques, souvent avec du code en amont (que tu apprendre à toi aussi créer un peu plus tard cette semaine, 
permettant d’effectuer certaines tâches. Là où avant il fallait installer Docker à l'aide de plusieurs commandes une action officielle (de Docker directement) ou personnalisé (qui t'appartient ou de la communauté) te facilite grandement la vie.
Il est même possible de réutiliser des workflows complet.

Heu minute papillon ! On parle de workflows depuis le début, mais qu'est-ce que cela veut dire exactement ?

Hulula ! Je vais te répondre si tu insistes, alors, un workflow est une procédure automatisée composée d’une ou plusieurs étapes. 
C’est un peu la définition complète de ce que tu cherches à écrire, mais en YAML.


### 2.2. Prérequis : Connaitre le YAML
LEs workflows Github Actions, sont écrit en YAML, et pour être sûr que l'on est tous sur la
même longueur d'ondes sur le YAML voici une [piqûre de rappel](https://www.youtube.com/watch?v=fwLBfZFrLgI).


### 2.3. Ton premier workflow
Créer un workflow ne nécessite pas beaucoup de chose, il te faut un repo Github.
Et à l'intérieur, créer un dossier nommé `.github/workflows/` comme ceci :

```shell
.github
└── workflows
    └── first-workflows.yaml
```
___
⚠️ ALERTE ERREUR COMMUNE

- Au début beaucoup de personne se trompe dans la création du dossier `.github` et sous-dossier `workflows`. 
  Alors que c'est très important de respecté l'agencement et l'orthographe de ces deux dossiers


- Dans le sous-dossier `workflows` est là où doit absolument se trouver tes différentes workflows que tu peux nommer soit en `.yaml` soit en `yml` les deux marchent :smile:.
___

Voici la syntaxe d'un workflow : 

```yaml
name : Shell commands

on: [push]

jobs : 
  run-shell-cmd:
    runs-on: ubuntu-latest
    steps:
      - name: echo world
        run : echo "Hello World"
      - name: execute multiline script
        run : |
          ls -al
          pwd
          hostname
```

Ensuite tu n'as plus qu'à commit et push.

Une fois `push` sur Github tu verras exécution de ton flow dans l'onglet `Actions`

Mais que c'est-il passé réellement et que signifie tout le charabia qu'on a écrit dans le fichier YAML ?

Eh bien, place aux explications :

Les éléments de base d'un workflows sont les champs :
- `name` : nom du workflow, qui est également visible sur l’interface Github.
- `on` : objet contenant les différents déclencheurs du workflow (liste des évènements disponibles),
  dans notre example on a choisi l'événement `push`.
- `jobs` : définit le comportement du workflow.

D'autres champs existent, mais je vais te laisser les découvrir toi-même leurs significations avec le projet du jour.

D'un point de vue globale chaque `job`, représente la machine virtuelle sur laquelle le workflow va se lancer.
Tu peux définir l'OS de ces VMs (ubuntu, windows, debian, etc.) avec le champ `runs-on`, 
il est également possible de lancer des VMs des customs avec plus de RAM, CPU, Os avec license, etc.
Les VMs de base de Github viennent tous avec des logiciels (git, npm, yarn, pip, ...) et langages (ruby, pyton, Go, Nodejs..) préinstallés afin de nous faciliter la vie, mais libre à toi d'en rajouter d'autres. :smiley:

Voici la [liste](https://docs.github.com/en/actions/using-github-hosted-runners/about-github-hosted-runners#preinstalled-software) des logiciels préinstallés.

Dans chaque `job` un ou plusieurs `steps` vont lancer des `actions`, exemple :
- déployer ton application sur Heroku,
- lancer des commandes shell pour effectuer des tâches spécifiques,
- etc.


## 3. Points importants à retenir
Voici ce qu'il faut garder en tête :
- Utiliser des outils, c'est bien, mais connaitre leurs origines te permet d'avoir assez de recul,
  ce recul, va te donner des informations supplémentaires 
  (quel était le besoin à la base, comment l'outil a évalué, si l'outil est open-source à quel point la communauté a participé à son l'évolution, est-ce l'outil va continuer à être maintenu, etc.) 
  pour mieux choisir l'outil celui dont tu as besoin.


- Connaitre la différence entre `Continuous Integration`, `Continuous Delivery` et `Continuous Deployment`


- Avoir une comprehension globale du fonctionnement de Github Actions. 


## 4. Pour aller plus loin
Pas besoin pour l'instant
