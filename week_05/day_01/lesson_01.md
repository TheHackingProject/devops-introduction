# Un outil CI/CD, mais pourquoi faire ?

## 1. Historique et contexte
Cher moussaillon, maitriser et déployer son code de manière continue est une preoccupation qui ne datent pas d'hier.
Depuis longtemps les devs ont voulu maitriser ce processus et quand je dis longtemps, je veux dire, très, très longtemps !
Depuis le début des années 90, pour être précis.

Mais avant de rentrer dans les détails abortons la signification des termes `Contiuous Integration` en abrégé `CI`
et `Continuous Delivery`, `Continuous Deployement` ces deux termes en abrégés se traduisent par `CD`. 
Je sais ! C'est peut-être un peu flou pour toi, mais ces trois termes ne veulent pas dire la même.

Mais nous allons expliquer chaque terme un par un :smiley:


### 1.1. Continuous Integration
D'abord une définition, **l'intégration continue, c'est de merger le code écrit par les devs dans la source (GitHub, BitBucket, GitLab, etc.)
plusieurs fois par jour. En veillant qu'à chaque "commit" le code soit automatiquement builder et tester (testes unitaires, testes, intégration, etc.)
pour être sûr que le nouveau code ne cause pas de problèmes. Et si le code provoquent des bugs ou autres problèmes qu'ils soient détectés le plus tôt possible.
Tout ceci va permettre aux devs d'être immédiatement alertés si le code pose problème.**

Comme je le disais plus haut ! C'est au début des années 90 que l'intégration continue est apparue, bien qu'il ne s'appelait pas en encore comme cela.
Ce processus à été pour la première fois proposée par un certain Grady Booch en 1991 dans son livre [Object-oriented analysis and design with applications](https://www.goodreads.com/book/show/424923.Object_Oriented_Analysis_and_Design_with_Applications)`.
Son idée était d'utiliser plus souvent des classes et des objects de manière à simplifier la conception d'une application et bien sûr pouvoir l'intégrer fréquemment.

En 1997, est arrivé le concept de "[extreme programming](https://www.umsl.edu/~sauterv/analysis/f06Papers/Hutagalung/#:~:text=The%20origin%20of%20extreme%20programming,to%20be%20a%20successful%20method.)" qui s'inspiré du livre de Booch (ça y est, c'est mon gars sûr à la compote ! :smiley:)
pour promouvoir la livraison des applications plusieurs fois par jour. La notion de `releasing many times a days` que n'avait pas proposé Booch, était complètement nouveau.

A cette époque, `extreme programming` à changer le game !
Ohh est fait important l'`extreme programming` à cette époque n'est pas [la méthode agile](extreme programming) que nous connaissons actuellement.
Non ! cette époque l'`extreme programming`, était de prendre des concepts et paradigms déjà existant et de les appliquer à l'extrême tout simplement.
Cependant, cette application extrême, a donné naissance aux concepts de `shorter release cycles`, `code reviews`, `pair programming`, testes unitaires, etc.
Tous les concepts et méthodologies (scrum, kanban, etc.) qui sont nés après viennent de l'`extreme programming` avec pour seul but d'améliorer 
la qualité du code et rendre ce code disponible, pour les utilisateurs, rapidement.

Lorsque dans ces années, ils ont les devs ont réalisées le besoin délivrer plus souvent, il n'y avait d'outils pour faire cela facilement.
Il a fallu attendre 2001 pour voir apparaitre [Cruise Control](http://cruisecontrol.sourceforge.net/).
Cet outil, en 2001, a littéralement révolutionné l'informatique, car c'était le premier outil CI, open source et facile à utiliser.
Par utiliser j'entends le premier que l'on pouvait installer, configurer et manager soi-même, il était même capable de s'intégrer aux IDEs ! Comble de l'innovation pour l'époque.

Petit bémol, cet outil était cent pour cent en langage Java, si tu voulais par exemple intégrer en continu un code en Ruby, il fallait installer une version de `Control Cruise` en Ruby.

Mais rapidement cet outil a été remplacé par Jenkins qui est aujourd'hui, l'outil CI et CD le plus largement utilisé
Qui lui supporte pratiquement n'importe quel langage et est personnalisable à souhait pour vous permettre de faire tout ce que tu veux (sans blague, vraiment tout ce que tu veux !).
ET cerise sur la gateau, Jenkins à une énorme communauté, ce qui veut dire que peu importe le problème que tu vas rencontrer, 
quelqu'un de la communauté la déjà rencontrée et documenté une solution ! <emoji>

Main si Jenkins fait office de parrain dans le game grâce à sa longévité et son adaptabilité, 
la manière dont on "build", délivre et utilise les applications est en entrain de/a changé
et Jenkins commence à montré des signes je dirais "d'essoufflement". 

Avec Jenkins tu dois installer, configurer, manager et maintenir les serveurs où se trouve cet outil tout en gérant Jenkins lui-même, qui des fois, peut te faire perdre la tête, crois-moi je sais de quoi je parle ! <emoji>
Alors qu'aujourd'hui, on a besoin de plus d'agilité et rapidité avec des outils `cloud native` où la gestion des serveurs est délégué au fournisseur de Cloud.
C'est dans ce contexte, qu'est nait les nouveaux CI et CD hybride ou totalement Cloud comme circleci, Jenkins X, Github Actions, etc.
Avec l'apparition des services CI et CD `cloud native` une bataille à vu le jour,
entre ceux qui disent que les outils `cloud native` posent des problèmes de sécurités, car on ne contrôle pas totalement l'outils (les serveurs et le logiciel)
et qui préféré qui disent les outils totalement managés sont justement à la source de plus faille des sécurités, car ils sont justement totalement mangés par des humains (et les humains ne trompes souvent).
Mais je te laisse te faire ta propre idée sur ce débat.

Bien ! Tout au long de ma petite histoire je t'ai à plusieurs reprises, parlé de `CI` et `CD` mais que veut dire CD ?

### 1.2. Continuous Delivery and Continuous Deployment
Quand tu entends CD, tu ne dois pas comme la plupart des personnes dans l'informatique associé ces deux termes `Continuous Delivery` et `Continuous Deployment`
en te disant qu'ils veulent dire la même chose.

Non cher moussaillon, tu vaux mieux que ça !

Le process de `Continuous Delivery` veut exactement dire ce qu'il veut dire ! :wink:
En d'autres mots vos applications vont continuellement être mis à jour avec du nouveau code.
Par exemple imaginons que sur Github la branche master soit votre branche de production.
Le process de délivrer continuellement sera de commit ton code sur une branche à part, builder et tester ce code dans cette branche, et, si tous va bien,
merger cette branche sur master.
Ensuite la partie déploiement se fera, mais de manière manuelle ou semi-automatic, ce qui veut dire que toi ou ta team 
**à un moment donné devra appuyer sur un bouton** pour permettre le déploiement de ce code à partir de la branche master.
Et souvent ce bouton est déclenché après que les dev ou les testeurs aient testé et valider les nouvelles améliorations/changements.


Quant au process de `Continuous Deployment` est similaire au `Continuous Delivery` 
à l'exception qu'il va un peu plus loin **en permettre le déploiement sans intervention manuelle**.
Cela veut que même la phase de test est automatisé, ce qui implique une totale confiance 
dans le code, la qualité du code, les phases de test de ce code 
et enfin en cas de quoique de la `release`, le système qui permet `roll out` cette `release`.

Ce dernier process est très controversé, mais c'est à toi futur devs + et devops de construire ce système 
et faire en sorte d'effacer au maximum l'intervention humaine et ses erreurs.
Car en tant qu'humain, nous sommes mauvais quand il s'agit de faire des tâches répétitives, 
car en tant qu'humain on s'ennuie, on est distrait et nous sommes lent.

Appuyer sur un bouton n'est pas une sécurité, mais plutôt un sentiment de sécurité.
Alors que ce qui compte vraiment est à quelle vitesse on peut corriger une mauvaise `release` et ces process
`Continuous Deployment` et `Continuous Delivery` sont là pour nous aider à 
construire des systèmes de livraison performant en termes de tests et de gestion d'erreurs.

Bien maintenant que tu as l'histore et le contexts des outils de CI/CD, 
il est temps, de découvrir un outil CI/CD nommé Github Actions !

PS. Le choix d'un outil de CI/CD à t'apprendre n'a clairement pas été facile, 
car comme je te l'ai dit, Github Actions est un outil de troisième génération (a.k.a `cloud native`)
alors que Jenkins qui est l'outil CI/CD, le plus utilisé dans le monde (a.k.a le parrain) 
est comme Github Actions un outil qu'il faut absolument connaître.
Cependant, j'ai décidé de t'apprendre Github Actions, car il a de nombreuses fonctionnalités intéressantes,
s'intégre par défaut avec plusieurs autres services cloud native et utilise le YAML pour configurer les workflow. 

Au contraire de Jenkins où tu dois :
- installer er configurer Jenkins
- manager les serveurs où se trouve Jenkins,
- intégrer manuellement chaque nouveau service/élément,
- et apprendre un nouveau langage qui est le Groovy pour avoir une bonne base sur Jenkins.

Tu l'as compris la courbe d'apprentissage est plus importante avec Jenkins et plusieurs semaines. 
Mais ne fait pas cette tête, toute triste ! Car tu auras l'occasion d'apprendre Jenkins avec le parcours DevOps.


## 2. La ressource
### 2.1. ...

Intégration continue : 

Délivrer en continu

Déployer en continu

### 2.2. ...

## 3. Points importants à retenir


## 4. Pour aller plus loin
Pas besoin pour l'instant
