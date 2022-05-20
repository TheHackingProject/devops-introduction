# Lancer son application un serveur AWS

## 1. Introduction
Aujourd'hui, tu vas lancer ton application ROR préféré et ton application React dans deux instances EC2 différents.
Une fois terminé tu vas devoir monter un volume EBS sur instance existant.

## 2. Le projet
### 2.1. Scénario
De retour dans ta startup, un mois et demie est passé depuis l'attaque DDoS.
Et depuis cette attaque, tu n'as fait qu'entrevoir deux ou trois fois ton CTO.
Quant aux lead dev, ils passent la majorité de leur temps à faire de la veille et à améliorer la sécurité de la stack applicatifs.

Et ce matin une annonce important va être faite par le CTO.
Juste avant le standup le CTO apparait, tu remarques qu'il a pris de la barbe et qu'il a les yeux cernés.
Preuve qu'il ne dort pas beaucoup ces derniers temps, d'une voix de stentor il vous dit, comme vous le savez depuis l'attaque que l'on subit il y a un mois et demie. On a, avec le CEO et les lead devs, repensé notre architecture au niveau infrastructure et applicatif.
Pour le côté applicatif je vais laisser dans un moment les lead devs vous expliquer les grandes lignes de la refonte.
Et pour ce qui concerne l'infrastructure on a décidé de faire une migration massive de notre infra. sur AWS.
La feuille route de cette migration n'est pas encore terminée, mais c'est quelque chose que je suis en train d'élaborer en coordination avec le CEO et AWS.
Merci de m'avoir écouté, bonne journée !

Sur cette annonce le standup démarre et les lead devs explique à toi et la team les grands axes de la future architecture de la stack applicatifs.

Suite à cela une semaine passe, sans grands bouleversements. Le samedi suivant, tu racontes à ta pote chef projet les changements qui sont en train d'être opéré au sein de ta startup et la fin de votre conversation elle te conseille d'en profiter pour te démarquer des autres.
Et tu lui demandes, mais comment faire, je n'ai pas assez d'expérience pour aider les lead dev dans la construction de l'architecture des applications et je ne connais absolument rien sur AWS !
Elle te répond, en ce qui concerne le côté application, tu as tout à fait raison, mais pour ce qui et de AWS, tu peux apporter ton aide, car toi, tu n'y connais rien sur AWS, mais les membres de ta team, le lead dev et les sysOps non plus n'y connaissent rien !
Bon, j'exagère peut-être que les SysOps utilisent dans leurs projets perso AWS, mais d'après ce que tu m'as dit, ils ont déjà trop de travail au quotidien.
Pour moi, c'est clairement une opportunité pour toi, parce que tout ce que tu vas apprendre sur ton temps libre, tu pourras directement l'expérimenter dans ta boîte, qui peut rêver mieux !
Tu la regardes, ébahis par son raisonnement sans faille. Et le dimanche, tu décides de commencer à te former sur AWS.

Trois jours plus tard le mercredi, en passant devant le bureau de ton CTO, tu entends une conversation entre le CEO et CTO, concernant le manque connaissance de l'équipe des services AWS. Mais tu passes ton chemin.

Un peu plus tard en fin de journée, tes mains sont moites et ton cœur bat à la chamade, dans ta tête tu dis, mais pourquoi je me dirige vers le bureau du CTO, dans quelle situation je vais encore m'empêtrer.
Arriver au niveau de son bureau tu toques, il te répond, qu'est-ce que je peux faire pour toi ?

Au bord de t'évanouir, tu prends une grande inspiration et dis, je souhaite aider la team à migrer sur AWS.
Je ne prétends pas connaitre parfaitement AWS, mais dans mes projets perso, j'ai eu l'occasion d'utiliser certains services de base comme les instances EC2 les volumes EBS, et les `user data`.

Le CTO, te regarde attentivement et après une longue minute de reflexion, il te dit,
je pourrais te poser plein de question sur les instances EC2 pour te tester, mais à la place,
je vais créer un ticket que tu attaqueras dès demain matin et nous verrons avec celui-ci, si tu es capable de nous aider !

D'un coup ta pression artérielle redescend, mais tu réalises aussi tôt que si tu ne réussis pas ce ticket, 
c'est ta crédibilité qui va en prendre un coup, sur ces pensées moroses, tu remercies ton CTO et rentres chez toi.


### 2.2. Feuille de route
#### 2.2.1. Lancer ton application ROR
Voici les étapes : 
1. Lances une instance EC2 avec un volume EBS de 8GiB (ça suffira largement)
2. Crées un script shell qui va te permettre :
   - de mettre à jour les packets de l'instance EC2
   - installer tous les packets nécessaire à une application ROR
   - télécharger le repo de ton application depuis Github
   - et lancer l'application
3. Vérifies que l'application fonctionne correctement depuis ton navigateur.

#### 2.2.2. Lancer ton application React
Voici les étapes :
1. Lances une instance EC2 avec un volume EBS de 8GiB (ça suffira largement)
2. Crées un script shell qui ve te permettre :
  - de mettre à jour les packets de l'instance EC2
  - installer tous les packets nécessaire à une application React
  - télécharger le repo de ton application depuis Github
  - et lancer l'application
3. Vérifies que l'application fonctionne correctement depuis ton navigateur.

#### 2.2.3. Monter un volume EBS sur une instance EC2 existant.
Voici les étapes : 
1. Reprends l'instance où tourne ton application ROR.
2. Et crées un script que tu vas devoir lancer à l'intérieur de cette instance, ce script aura pour objectif de monter un nouveau volume EBS.

Pour cette étape, je ne te donne pas d'informations sur comment créer un volume EBS, l'attacher à l'instance et le rendre accessible depuis le `filesystem` de ton instance. Et c'est fait exprès, je t'invite à chercher par toi-même comment faire. 😉


#### 🚀 ALERTE BONNE ASTUCE
- Pour choisir le type d'instances, n'hésites pas à jeter un coup d'œil à cette [documentation](https://aws.amazon.com/fr/ec2/instance-types/).
  Je te conseille de choisir parmi les `T3`, `T3a` ou `T2`, ces types d'instances suffisent largement pour les besoins du jour et des jours suivants.

- Lors de la création de ton instance EC2, pour ce qui concerne la partie `Security Group`, ouvre l'accès au port 22 et au port où ton application va  
  démarrer et *surtout* ne permet l'accès que a ton IP pour des questions de sécurité
  
  La partie `Security Group` sera abordée dans les prochains jours. :smile:


- :warning: A ne pas oublier.
  Une fois que tu as finis la feuille de route du jour, n'oublies surtout pas "SUPPRIMER" tes deux instances.

## 3. Rendu attendu
Un repo github qui contient la video de tes deux applications accessible depuis des instances EC2 
- et les scripts que tu as utilisés en tant que `user data` dans les deux instances et pour monter ton volume EBS.

Dans cette video, je veux voir :
- les deux instances qui tournent
- ensuite la page d'accueil de tes deux applications depuis ton navigateur préféré.


Oui ! Oui ! Tu as bien lu, je veux voir des videos et pour une bonne raison qui est, que les instances EC2 sont facturé à la seconde.
De ce fait, pour éviter que tes instances tournent jusqu'au moment du review par les membres de ta team, autant faire une vidéo et ensuite les supprimer :wink:.

Si tu ne sais pas quel logiciel utilisé pour enregistrer tes videos. Eh bah je t'invite à chercher sur le net. 😜
