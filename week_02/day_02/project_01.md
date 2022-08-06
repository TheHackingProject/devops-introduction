# Docker exercices 
Docker, une mise en bouche

## 1. Introduction
Dans cette mémorable journée, tu vas jouer avec les commandes docker à l'extérieur et à l'intérieur d'un conteneur.
L'objectif est de te faire découvrir un maximum de commandes Docker que les Devops et Devs sont amenés à utiliser au jour le jour.

## 2. Le projet
### 2.1. Scénario
On est vendredi apres-midi, il est 15 h 45 et tu viens de "commit" le dernier bout de code de ton ticket.
Tu jettes un coup d'œil à droite personne, à gauche personne, ta team n'est pas dans l'open-space.
Tu décides d'aller voir où ils se cachent en attendant 17 h 00, l'heure officiel du week-end :smiley:.
Tu décides d'aller regarder dans à la cafeteria, certains de les retrouver là-bas.
En marchant vers la cafeteria, tu passes devant le bureau du CTO, à l'intérieur, tu aperçois le CTO, les lead devs et une dev senior en plein discussion.
Priant pour qu'ils ne te remarquent pas tu accélères le pas, mais trop tard, ton nom vient de résonner dans le bureau.

Tu avances donc dans le bureau, en te demandant ce que tu as bien pu coder de tellement moche
pour qu'ils décident de te parler en groupe <emoji>.

La dev senior d'un ton jovial, t'annoncer qu'ils sont en train de réfléchir à la meilleure facon de "`Dockeriser`" la stack applicatifs.
Elle poursuit en disant ceci, personne dans notre équipe connait vraiment Docker et le dernier POC que tu as fait sur LXC, 
nous a permis de voir que tu es capable de nous présenter des sujets techniques bien construits, 
on se demandait du coup, si tu pouvais nous faire une demo de Docker, un genre de demo pas à pas.
L'idée est que cette demo soient divisé en plusieurs parties afin que la team puisse suivre sans problème !

Tout le monde te regarde, en attente de tes prochaines paroles.
Et là avec plein d'assurance, tu dis, oui bien sûr pas de souci, 
vous auriez des conseils à me donner sur la manière de procéder.

Et là ! Tout le monde rigole et le CTO dis, justement on souhaite que tu fasses preuve d'initiative, débrouilles toi. 
Il enchaine en disant, si tu pouvais nous faire ta premiere présentation mercredi après-midi 
juste après le `retro-planning`, ça serait super, allez bon week et à lundi !

Dans ta tête, tu te dis que le week-end tranquille que tu avais prévu, vient de tomber à l'eau.
Le samedi après-midi, tu décides de faire des recherches sur des exercices et tutoriel docker simple à faire et à suivre.
Et miracle, tu tombes sur une series d'exercices qui permettent d'avoir une bonne vue d'ensemble de Docker.

### 2.2. Une image Docker qui scrape Wikipedia.
L'objectif de cet exercice est dans un premier de créer un script shell qui va scrapper cinq pages Wikipédia.
Chaque page sera enregistrer dans un fichier différent. Voici les étapes pour créer ce script shell :

1. Ce script, `wiki-scraping.sh`, devra télécharger le contenu cinq pages Wikipédia dans cinq fichiers différents en local.
2. Ensuite, sur chaque page un filtre va être appliqué, ce filtre ne doit sélectionner que le texte qui se trouve à l'intérieur des balises HTML de type `<p>`.
3. Une fois le filtre appliquer le résultat du filtre devra être à son tour enregistrer dans un fichier.

À la fin tu vas te retrouver avec un dossier, `wiki-scraping`, qui ressemble à ceci :

```shell
wiki-scrapping
├── output-with-filter1.txt
├── output-with-filter2.txt
├── output-with-filter3.txt
├── output-with-filter4.txt
├── output-with-filter5.txt
├── output-without-filter1.txt
├── output-without-filter2.txt
├── output-without-filter3.txt
├── output-without-filter4.txt
└── output-without-filter5.txt
```

Voici un example de résultat de [scraping sans filtre](https://drive.google.com/file/d/1xF7iU2XY4zz4NJArukdutshbextPQAV1/view?usp=sharing) et [avec filtre](https://drive.google.com/file/d/1mWyq7EJ7sBPBRNB0tM06exT46pofqKAx/view?usp=sharing)

Oh j'ai failli oublier, une fois le script `wiki-scraping.sh` terminer, 
tu vas devoir le lancer dans un conteneur qui a pour image de base `ubuntu:18.04`.
Et bien sûr tout ça dans un script shell différent nommé `run-wiki-scraping.sh`.

Voici les étapes de ce script : 
1. Télécharger l'image `ubuntu:18.04`
2. Démarrer un conteneur à partir de cette image.
3. Lancer le script `wiki-scraping.sh` dans le conteneur
4. Sauvegarder le nouveau conteneur dans une image.
5. Pousser cette image sur DockerHub.


## 3. Rendu attendu
Un repo qui contient les scripts shell 
qui reprennent les étapes ci-dessus ainsi qu'un `README.md`
qui explique comment on utilise ce repository.
