# Dockeriser ses applications

## 1. Introduction
Aujourd'hui place à la création de Dockerfile d'une mini stack applicatifs composées de deux applications et une BDD MySQL.

## 2. Le projet
### 2.1. Scénario
Nous revoilà dans ta super startup, hier après midi, le workshop sur les conteneurs Docker à été très apprécié par ta team.

Et depuis ce matin un sentiment étrange te turlupine, tu es pas tout à fait satisfait du workshop, comme-ci quelque chose 
manquait dans la manière dont tu as orienté le workshop.

De retour de ta pause déjeuner, tu as une illumination, et d'un coup le puzzle se met en place.

Dans ta tête tu réalises, mais oui, c'est ça ! 

Mon workshop n'est pas du tout réaliste, et donc il ne peut pas être utilisé pour mettre en place quelque chose de fonctionnelle dans une entreprise !
Je dois allez plus loin, proposer un autre workshop, qui cette fois-ci, sera plus réaliste. 
Et là remplis d'une énergie nouvelle, tu vas voir ton lead dev pour lui soumettre ton idée.

Arrivé à son bureau, tu le retrouves en pleine concentration et tu décides de revenir plus tard. 
Mais avant même que tu te retournes, il te dit, je vois bien que tu as envie de me dire quelque chose, allez, je t'écoute ! 

Tu prends une grande inspiration et dis, je souhaite continuer mon workshop et faire quelque chose de plus réaliste !
Avec un sourire au coin ton lead dev te dis, justement j'allais un peu plus tard dans la journée faire un ticket dans ce sens.
Mais vu que tu m'as devancé, voilà comment on va faire, choisis une ou deux applications de notre stack et crées des Dockerfile à partir d'elles.

Ravis à souhait, tu lui réponds, pas de soucis, je m'en occupe.

### 2.2. Feuille de route
#### 2.2.1 Créer le Dockerfile d'une application ROR.
Toi ou ton groupe avez forcément une application ROR, sous la main, pourquoi pas celui du projet final du parcours Fullstack :wink:.
Une fois que tu auras choisis l'application, voici ce qu'il faut faire :

1. Crées un Dockerfile qui à pour base `ubuntu:18.04`
2. A l'intérieur du Dockerfile `ubuntu:18.04` et à l'aide des instructions que tu as apprises dans le cours du jour,
   installes tous les éléments nécessaires pour qu'une application ROR fonctionne.
3. Dans le Dockerfile, utilises les bonnes instructions pour lancer ton application et exposer le bon port.
4. Construis l'image à partir du Dockerfile.
5. Vérifies que l'image fonctionne depuis ton navigateur.
6. Et enfin pousse l'image sur ton compte DockerHub.


#### 2.2.1 Créer le Dockerfile d'une application React.
Si tu n'as pas d'application React sous la main, voici [une application](https://github.com/TheMindset/dark_side_force) que j'ai fait dans une autre vie, ne me juge pas 😅. Une fois en possession d'une application React, suis les étapes ci-dessous : 

1. Crées un Dockerfile qui à pour base `ubuntu:18.04`
2.  A l'intérieur du Dockerfile `ubuntu:18.04` et à l'aide des instructions que tu as apprises dans le cours du jour,
   installes tous les éléments nécessaires pour qu'une application React fonctionne.
3. Dans le Dockerfile, utilises les bonnes instructions pour lancer ton application et exposer le bon port.
4. Construis l'image à partir du Dockerfile.
5. Vérifie que l'image fonctionne depuis ton navigateur.
6. Et enfin pousse l'image sur ton compte DockerHub.


#### 2.2.1 Faire interagir deux conteneurs.
Dans cette partie, je veux que ton application ROR soit persistent, en d'autres mots, que les utilisateurs puissent sauvegarder leurs données.
Et pour se faire ton application à besoin de sauvegarder ces informations dans une base de donnée.
Eh bien on va faire en sorte que ce soit le cas, en suivant ces recommendations :

1. Crées un Dockerfile qui à pour base une image mysql. 
   Je t'invite à chercher sur DockerHub l'image qu'il te faut.

   Lis attentivement, la description de ton image, 
   là se trouve toutes les informations que dont tu auras besoin pour créer un Dockerfile mysql opérationnel.
   
2. Construis l'image à partir du Dockerfile.
3. Vérifie que le conteneur créer à aà partir du Dckerfile mysql fonctionne par tes propres moyens, [voici un début de solution](https://stackoverflow.com/questions/25503412/how-do-i-know-when-my-docker-mysql-container-is-up-and-mysql-is-ready-for-taking) pour tester que ton contenuer marche bien.
4.Et enfin pousse l'image sur ton compte DockerHub.

Maintenant que tu as un conteneur mysql fonctionnelle, il est temps de connecter ton application ROR, que tu as "Dockeriser" plus haut.
Une que tu as vérifier que tes deux conteneurs intérigissent sans quoique. Tu peux te feliciter, car tu commences à rentrer dans la cours des grands ! 


## 3. Rendu attendu
Un repo github qui contient les instructions pour télécharger et lancer tes trois images (MySQL, application ROR et React) depuis ton compte DockerHub.


