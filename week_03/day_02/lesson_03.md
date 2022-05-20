# Sécurité des serveurs à l'aide d'un pare-feu.

## 1. Introduction
Tu commences à avoir une certaine vue d'ensemble du service EC2, mais il manque encore quelques fonctionnalités de ce service à ton arc, pour que tu puisses voler de tes propres ailes.
Une de ces fonctionnalité s'appelle le `Security Groups` ou tout simplement un pare-feu qui permet de protéger le traffic entrant et sortant **d'une instance EC2**.

`Ce pare-feu opère au niveau de l'instance EC2`, cette notion est importante, car d'autres services d'AWS, 
que tu auras l'occasion de découvrir par toi-même à l'avenir peuvent permettre ou bloquer le traffic au niveau du VPC par example.


## 2. La ressource
### 2.1. Security Groups (SG), C'est quoi ?
Ce service agit comme un pare-feu virtuel qui permet de contrôler le traffic d'un ou plusieurs instances EC2.
Il est possible de le créer lors de la création de l'instance ou après.

Une fois le pare-feu créer, tu peux configurer des règles qui autorisent le traffic vers ou depuis les instances associées à celui-ci.


### 2.2. Security Groups - Illustration

ToDo : Video

### 2.3. A ne pas oublier
Les `SG` sont assez simple à utiliser, mais il est quand même important de faire extrêmement attention lorsqu'on les utilise, voici quelques éléments à toujours garder en tête : 
- Les nouvelles règles du pare-feu sont prises en compte immédiatement, donc fait attention surtout quand tu es en production 😃
- **Par défaut les nouveaux `SG` accepte le traffic sortant de l'instance et refuse le traffic entrant dans l'instance**.
- Avec les `SG` tu ne peux pas explicitement **refuser** un traffic (IP, rang d'IP ou autres `SG`).
- Le service `SG` est `statuful`, ce qui veut que si tu crées une règle qui accepte un traffic entrant, ce même traffic est automatiquement accepté en sortie.


## 3. Pour aller plus loin
La [documentation d'AWS](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html) sur les `SG` te fournira un bon point de départ
