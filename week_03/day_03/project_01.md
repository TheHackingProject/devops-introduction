# Faire face aux pics de charge.

## 1. Introduction
Comme d'habitude, on va partir d'une notre infrastructure composée d'un front en React une API en ROR et une DBB (mysql ou mongoDB au choix 😄)
et faire en sorte que le front soit ajustable selon le nombre d'utilisateurs.

## 2. Le projet
### 2.1. Scénario
De retour dans ta super Startup, le mois de novembre arrive et une tension palpable commence à se répandre dans tous les services.
Plus les jours passent, plus le CTO et les SysAdmin passe leur temps à faire des réunions et à inspecter 
l'infrastructure composée de dizaines de serveurs qui à l'aide d'un système de virtualization héberge les applications, les outils divers et variés ainsi que la BDD.

De nature assez curieuse, tu ne sais pas quoi penser de tout ça. 
Un après-midi après avoir commit ton dernier bout code, mis les bons labels et ajouter les "reviewers" sur celui-ci 👌, tu interpelles la lead-dev, et lui demande, 
"mais que se passe-t-il depuis quelques jours on dirait que le CTO et les Sys Admin vont nous faire une syncope ?"

Elle te répond : "Ah, mais oui, c'est vrai que tu es arrivé en février, tu n'as jamais connu cette période !".
Elle poursuit sur ton professorale : "Durant la période des fêtes de fin d'années, on a toujours des pics de charge dû aux utilisateurs. 
Et chaque année, il y en a de plus en plus qui consultent notre site internet dans ces périodes-là. 
C'est pour cela qu'ils sont sur les nerds, car avec la migration vers le cloud qui est à peine commencé, cette année va je pense que ça sera sportif !"

Tout à coup tu réalises qu'une partie de la solution pourrait bien être d'utiliser le service `ASG` d'AWS.
Toujours pensif tu dis : "Merci pour l'info, tu sais où en est le recrutement du DevOps censé nous aider à faire la migration ?"
En se dirigeant vers l'ascenseur son sac à la main, elle te dit que son contrat a été signé et qu'il arrive ce lundi.
Tu décides à ton tour de plier bagages et rentrer chez-toi, profiter du week-end.

Le lundi suivant, tu arrives de bonheur en pensant que comme d'habitude tu seras le premier, mais en ouvrant la porte de l'open-space, tu entends des voix.
Tu reconnais le CTO à sa voix de stentor mais pas la deuxième personne, ils sont en train d'échanger sur la migration de certaines applications vers AWS.

En te voyant le CTO dit : "Ah bonjour ! Viens que je présente notre nouveau DevOps, 
il va nous aider à migrer notre infrastructure dans un premier et ensuite automatiser au maximum le deployment des applications."

D'un ton cordial le Devops, se présente : "Je m'appelle, Jerome enchanter, ce matin, j'ai vu les POC que tu as fait sur AWS, tu t'es bien débrouillé. Le CTO m'a dit que si tu as le temps et l'envie, je pourrais compter sur toi pour m'aider dans le projet de migration vers le cloud ?"

Tu réponds, oui de la tête et d'un ton impressionner tu lui dis : "Enchanté, je serais ravie de t'aider Jerome !".

Le CTO ub sourire aux lèvres dit ceci : "Ah ça tombe que tu dises cela, vous allez commencer à travailler ensemble dès aujourd'hui, tu verras que sur Jira je t'ai assigné un ticket, une fois que tu l'auras finis, vois avec Jerome pour sa validation, sur ceux messieurs bonne journée !"

### 2.2. Feuille de route
#### 2.2.1. Créer et lancer ton infrastructure sur des instances EC2
1. Lances chaque partie de ton infrastructure sur des instances dédiées :
- ton application ROR préféré (l'API)
- ton application React (le front)
- ta base de donnée (mysql ou mongo au choix)

2. Vérifier que les trois instances arrive à interagir correctement.

3. Fait en sorte que l'instance où réside l'API et la DBB soit accessible qu'en réseau privé.  

#### 2.2.2. Absorber les pics de charge avec les services `ALB` et `ASG`

1. Fais en sorte que l'instance où réside ton front en React soit scalable et soit également derrière un Load Balancer de type `ALB`.

##### 2.2.2.1 🚀 ALERTE BONNE ASTUCE

- Pour cette partie rappelles toi que lors de la création de ton `ASG` : 
  - tu peux créer un `ALB`
  - utiliser le `Launch Template` au lieu du `Launch Configuration` 
  - créer un `Security Groups` spécifique pour les instances qui seront gérées par l'`ASG`. 

#### 2.2.3. Tester la scalabilité de ton front en React.
Pour tester la scalabilité de ton application, je te laisse trouver le meilleur outil par toi-même, il en existe de toute sorte par example celui-ci <???????> est fait en Javascript, pourrait faire l'affaire. 😉
  

## 3. Rendu attendu
Un repo github qui contient la video de ton infrastructure.

Dans cette video, je veux voir :
- ton teste de scalabilité en action avec la création de nouvelles instances de ton front React.
- les règles qui se trouvent dans les `Security Groups` attacher à chaque instance. 
