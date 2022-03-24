# Un environnement de développement complet.

## 1. Introduction
Dans ce projet, tu vas construire un environnement de dev capable d'interagir.
L'objectif est, de t'habituer à utiliser des VM à la place de ton host pour tester tes applications. 

Ainsi, en utilisant des VM, tu pourras tester tes applications dans un environnement assez similaire à celui de la production.


## 2. Le Projet
### 2.1. Le Scénario
Il est 8 h 45, et tu arrives au bureau de ta super Startup. 
Tu décides de corriger tes PR en fonction des retours des membres de ta team en sirotant un petit thé noir (au KLM).

Une fois bien installé le thé à la main, ton Lead dev sort de la salle de réunion, et se dirige directement vers toi.

Dans ta tête, tu commences à paniquer en te demandant ce que tu as bien pu faire <emoji>.

Une fois arrivé à ton bureau, il commence à se plaindre des contraintes que la direction et le business ne cessent de lui imposer.
Ils reprochent au service IT, le manque d'agilité de l'équipe face au besoin client, du temps que prend chaque feature à être développé, des erreurs de code et de mise en prod qui souvent font tomber le site, etc.

Après 5 minutes à se lamenter sans vraiment s'adresser à toi,
il te regarde droit dans les yeux et dit, nous avons pris la décision d'adopter la migration vers le cloud et d'adopter une architecture en microservice !
Ne sachant pas quoi répondre tu te tais et attends la suite.

Quelques secondes après il ajoute, l'équipe SysOps malheur sur eux, sont rentrés de vacances.
Cependant, ils sont trop occupés pour le moment à rattraper le retard de ces dernières semaines.
C'est pourquoi, je souhaite que tu réalises un POC que l'on va présenter au CTO dans quelques jours à la place de la team SysOps.

Et le lead dev ajoute, finis le ticket en cours et mets-toi sur le POC sans attendre s'il te plait !

### 2.2. La feuille de route
Le ticket concernant le POC, dit ceci :

Tu dois créer un POC microservice composé de deux applications (ROR et JS de préférence) 
qui communiquent entre elles, par exemple une API et un front.

1. L'une des applications devra interagir avec une base de données (MySQL, PostgresSQL ou mongoDB)
2. L'autre devra interagir avec un agent de messages (Rabbitmq ou Redis)

Chaque élément du POC devra être dans une VM dédié, l'ensemble du POC devra être lancé et opérationnel avec une seule commande `vagrant up`.

## 3. Rendu attendu
Un repo github avec un Vagrantfile fonctionnelle ainsi qu'un README explicatif.
