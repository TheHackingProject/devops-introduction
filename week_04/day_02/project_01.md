# Inclure du serveless dans votre infrastructure

## 1. Introduction
Étant donné que la principale utilité des Lambdas est d'effectuer des tâches courtes en réaction à des événements externes.
Aujourd'hui tu vas incorporer ce service dans ton infrastructure (une API ROR, un front React, et une BDD).
Afin de faciliter la réalisation de certaines tâches qui auparavant étaient ou auraient pu être incorporées dans ton front ou ton API.

## 2. Le projet
### 2.1. Scénario
De retour dans ta super Startup ! Voilà maintenant 3 semaines que le DevOps est arrivé.
Ce matin une réunion avec le CTO, les Lead Dev et à ta grande surprise, toi, est prévu.
Au cours de cette réunion, il compte exposer le plan de migration et les différentes échéances selon les outils/applications à migrer.

Arrivé dans les bureaux de bonheur comme à ton habitude, tu ouvres la porte de l'open space et aperçois directement Jerome, le DevOps, pleinement concentrer sur son écran.
Tu avances vers lui et dis : "Bonjour, Jerome ça va ?"

En levant à peine les yeux vers toi il te répond : "Oui, ça va et toi ? Je suis en train de finaliser ma présentation pour tout à l'heure !"

Tu comprends rapidement qu'il n'est pas disposé à te parler pour le moment. 
Tu te retournes et va chercher tranquillement ton thé, impatient de voir ce que Jerome va proposer comme plan de migration et les répercussions que cela aura pour la boîte et pour toi, en terme d'expériences sur tous les plans (communication, soft skill et hard skills).

Une heure et demie plus tard, tu rentres dans la salle de réunion, à la suite des Lead Dev.
Le CTO et Jerome déjà présent dans salle, attendaient que vous finissiez votre standup.
Une fois installé, Jerome prends la parole : "Merci d'avoir pris le temps de venir ! 
Ces dernières semaines, avec votre aide, j'ai essayé de comprendre comment fonctionnent les outils et applications que vous utilisez au quotidien
afin de pouvoir anticiper leurs migrations ou non sur AWS".

Il poursuit en disant : "étant donné que cette startup et en pleine croissance 
et que notre produit est une plateforme e-commerce, à long terme, 
nous n'avons pas forcément besoin de garder une partie de notre infrastructure on-premise.
Comme c'est le cas par example pour des entreprises/startup avec des activités 
à forte propriétés intellectuelle ou ceux pour qui les données sont capitales 
et ultra confidentielles comme les banques.
En conséquence, nous allons nous efforcer d'avoir infrastructure avec un maximum de services managés 
où la gestion de serveurs sera minimal. Pour permettre à l'équipe dev de concentrer sur le développement. 
Et au service IT de manière générale d'être agile et en réagir rapidement aux demandes des autres services, surtout du business qui n'arrête de demander de nouvelles features à chaque instant !"

Après cette tirade, il prend une pause, et nous regarde à la recherche de questions, satisfait par notre air concentré, il poursuit :
"De plus, cette stratégie va permettre à l'équipe SysAdmin de pleinement se concentrer sur les clients internes 
et ne plus tous s'occuper des demandes de la team Dev qui sauront totalement 
géré par moi avec ton aide si tu veux bien, ce qui sera dans un premier temps suffisant pour une infrastructure managée de notre taille."

À la fin de sa phrase, je vois que son doigt me désigne, totalement surpris, 
tes cordes vocales ne t'obéisse plus, alors tu hoches la tête tout simplement.
Mais au fond de toi une vague de peur et d'excitation prends de l'ampleur et petit à petit tu réalises ce que cela veut dire.
Tu vas faire partie de l'équipe DevOps et Dev, et donc avoir deux casquettes, pour le meilleur et pour le pire !

Jerome poursuis l'exposé de sa stratégie de migration et avec moult détailles explique les différentes échéances. 
À la fin de la réunion, le CTO valide la premiere étape de migration et émet quelques réserves sur l'ordre de migration 
de certains outils/applications et leurs échéances, réserves également partagées par les Lead Dev.
Mais comme le temps file, ils décident de re-planifier une autre réunion et demandent à Jerome de changer le plan de migration selon leurs remarques. 

Au retour du repas, Jerome te demande : "Je vais voir avec les Lead Dev si demain, tu es disponible pour m'aider sur la premiere phase migration, si cela te va !"
Tu lui réponds que tu n'y vois pas d'inconvénients et que tu as même hates commencer.

### 2.2. Feuille de route
#### 2.2.1. Modifier les photos "upload" sur ton front React
Dans cette partie tu vas devoir déployer une application qui permet de "uploader" des images,
les sauvegarder sur un bucket S3.
La sauvegarde sur un bucket S3 va déclencher une Lambda, 
qui aura pour objectif de modifier la taille des images et ensuite sauvegarder de nouveau l'image modifier sur dans un autre bucket S3.

Voici les différentes étapes : 
1. Codes ou utilises (si tu as déjà) une application qui permet de "uploader" des photos.
2. Déploies cette application sur EC2 ou une bucket S3 (comme tu le souhaites).
3. Crées un nouveau bucket S3 nommé par exemple `uploaded-pictures`. Ton application doit uploader les photos dans ce bucket S3.
4. Crées une Lambda qui aura pour objectif de :
   1. transformer cette image en [thumbnails](https://www.techtarget.com/whatis/definition/thumbnail), je te laisse la liberté de choisir la taille du thumbnails.
   2. cette transformation se déclenchera à chaque fois qu'une image est sauvegardée sur ton bucket S3 nommé, `uploaded-pictures`. Ici notre Lambda sera déclenché par AWS S3 💥.
   3. une fois la modification de l'image terminée, la Lambda devra sauvegarder cette image dans un autre bucket S3 nommé `modified-pictures`.


#### 2.2.2. Lancer des tâches répétitives
Ici, tu vas devoir créer une Lambda qui se déclenche toutes les 2 minutes 
pour récupérer le dernier taux de 7 devises (EUR, USD, CAD, AUD, GBP, CHF, CNY) 
à partir de cette [API](https://www.abstractapi.com/exchange-rate-api#docs) 
(tu es libre de choisir une autre API, si tu préfères). 
Ensuite afficher cette information sur la page d'accueil de ton application (je te laisse choisir le meilleur moyen d'afficher les informations sur cette page).

Voici les différentes étapes :
1. Crées la Lambda qui va appeler cette [l'API](https://www.abstractapi.com/exchange-rate-api#docs).
2. Trouves une solution pour déclencher cette Lambda toutes les 2 minutes à l'aide [d'Amazon EventBride](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-create-rule-schedule.html).
   (C'est un service que l'on n'a pas vu, mais tu verras il est très facile à prendre en main 😄). 
   Ici notre Lambda sera déclenché par Amazon EventBrite :boom:
3. Affiches ces informations sur la page d'accueil de ton application que tu auras au préalable déployer sur une instance EC2 ou sur un bucket S3.


#### 2.2.3. "Download" des PDF.
Dans cette partie, on va directement exposer une Lambda derrière un équilibreur de charge de type `ALB`.
L'objectif sera de permettre aux utilisateurs de "download" des PDF qui trouve sur un bucket S3 à travers un `ALB` et une Lambda.

Voici les étapes : 
1. Crées un bucket S3 nommé par exemple `pdf-folder`, ajoutes-y quelques PDF (10 maximum).
2. Crées une Lambda qui va chercher tous les PDF dans le bucket  `pdf-folder`, et en faire un zip.
3. Crées un `ALB` qui redirige les requêtes vers la Lambda. Ici notre Lambda sera invoqué par un équilibreur de charge 💥

Ainsi les utilisateurs utiliseront l'URL de ton `ALB` sur la route `/` pour directement télécharger ces PDF en format zip.

##### 🚀 ALERTE BONNE ASTUCE
- Pense à suivre les conventions Shell que tu as apprises lors de la premiere semaine du parcours**
- N'hésite pas à créer plusieurs petits scripts shell si tu en ressens le besoin.
- N'hésite pas tout au long de ton/tes scripts shell à informer l'utilisateur via le terminal où il en est dans la création de l'infrastructure.
- Pense à vérifier régulièrement que les services que tu crées au fur à mesure sont `up` et prêt à recevoir du traffic.
- Comme toujours penses à supprimer tous les services que tu as créés sur AWS.

## 3. Rendu attendu
Un repo github qui contient 3 dossiers qui représentent chaque partie et dans chaque dossier :
- le script qui t'a permis de créer l'infrastructure
- le code de ton application
- le code de ta Lambda
- Un README.md qui m'explique comment lancer et vérifier que chaque partie fonctionne correctement selon l'énoncé.
- un Makefile qui permet de lancer via une seule commande l'infrastructure, de déployer l'application et le code de la Lambda.

