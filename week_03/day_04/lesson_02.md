# Gestion des accès à l'aide de IAM.

## 1. Introduction
Tu commences à être à l'aise sur AWS et cela fait plaisir à voir ! 👏
Cependant, il y a encore un élément capital que l'on n'a pas exploré correctement,
la gestion des accès et des permissions sur AWS. 
Comment faire pour travailler avec ta team sur le même compte AWS, 
comment gérer les accès de chaque personne de ta team en fonction de ses responsabilités, 
par exemple un dev junior ne peut pas avoir les mêmes accès et permissions qu'un dev senior sur AWS,
au risque de commettre deux ou trois effroyables bavures 😱, 
du genre effacer un bucket S3, supprimer un volume EBS ou une instance EC2 par mégarde.

Pour éviter cela, il faut absolument maitriser le service IAM (Identity and Access Management) en d'autres mots, 
tu dois apprendre à gérer les accès et permissions des utilisateurs et des services d'AWS.

## 2. La ressource
### 2.1. Découverte du service IAM (Identity and Access Management)
Pour découvrir ce service rien de mieux qu'un [cours de simplilearn](https://www.youtube.com/watch?v=GjVFf83dcE8).

Quoi ! Tu ne connais pas [simplilearn](https://www.youtube.com/c/SimplilearnOfficial) 😮 ? 

`Simplilearn`, une valeur sûre pourtant ! Aussi sûr, que les cours de [Gravikart](https://www.youtube.com/c/grafikart), 
je te conseille de mettre en favoris ces deux chaines youtube.

Cette vidéo est assez dense et, comprend beaucoup d'informations, 
je ne m'attends à ce que tu maîtrises tous les éléments que tu viens de voir. 
En revanche, ce que l'on attend de toi, est que tu utilises cette video comme une ressource dont tu vas te servir au besoin
et à force de revoir la vidéo tous les éléments finiront par devenir aussi simple 
qu'expliquer à une enfant de 5 ans comment on fait des bébés ! 😂

### 2.3. A ne pas oublier
Voice ce que tu dois retenir :

- Le service IAM (Identity and Access Management), a pour objectif de gérer les entités (humains, services internes/externes, applications) qui interagissent ou sont créées dans AWS.
- La difference entre :
  - `User` : une personne physique
  - `Groups` : Un groupe de personne physique et/ou services internes/externes et/ou applications
  - `Roles` : Un ensemble de permissions **prévu pour être utilisé par des services d'AWS** mais elles peuvent également être assignées à des personnes physiques.

- Les `policies` sont des documents JSON qui définissent quelle entité a accès à quoi et quelles actions elle peut faire.

---
#### 🚀 ALERTE BONNE PRATIQUES

- **Ne jamais utiliser le compte AWS root**, ce compte ne doit être utilisé que la première fois et ne plus jamais être utilisé par la suite.
  Encore moins partagé les accès du compte root avec qui que ce soit, 
  car ce compte, a tous les droits et si par malheur ces accès tombent dans de mauvaise main [voici ce qui risque de t'arriver](https://www.tomshardware.com/news/aws-45000-usd-bill-for-crypto-mining-hack).

- Utiliser le système d'authentification MFA, si possible, 
  par contre si jamais tu perds ton smartphone pense à rapidement récupérer ton compte AWS via le support d'AWS 
  et à désactiver l'accès MFA depuis le smartphone perdu.

- Comme le dit AWS tu dois [accorder les privilèges les plus faibles](https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html#grant-least-privilege) à chaque `entité`. 
  Rien ne sert par exemple de donner accès les administrateurs au service AWS EC2 
  à tout le service IT, alors que tu pourrais par exemple :
  - permettre aux devs de voir les instances existantes et s'y connecter
  - et des accès administrateur uniquement aux devops qui auront eux, besoin de manager ces instances (créer/supprimer, stopper, redémarrer, attacher des EBS, etc.).

---

## 3. Héberger un site statique sur S3

Ah oui j'ai failli oublier, dans le titre dans du cours, j'ai effectivement parlé d'une manière d'utiliser le service S3 pour héberger un site statique.

Hulula, d'ici j'entends tes pensées qui se résument en, "allez dis-moi ! J'ai hate de comparer cette fonctionnalité avec ce que propose [Heroku](https://www.heroku.com/) ou [Vercel](https://vercel.com/) et surtout comparé les prix.

Eh bien, jeune moussaillon ! J'ai dit que l'on allait en parler, mais pas je n'ai dit que j'allais t'apporter la réponse sur un plateau en or massif 😜.

À toi de trouver comment faire, je sais que tu vas y arriver, car tu as toutes les connaissances nécessaires.


## 4. Pour aller plus loin
La liste des [bonnes pratiques AWS](https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html) en matières de gestion des utilisateurs est quelque chose à garder à porté de main. 
Cela peut être utile de la revoir par exemple avant un entretien 
ou une réunion où il sera question de sécurité sur AWS.
