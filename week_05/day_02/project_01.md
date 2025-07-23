# Projet : pipeline avec variables

## 1. Introduction
L'objectif est de manipuler les variables et les secrets dans un workflow concret.

## 2. Tâches
- Initialise un dépôt GitHub et ajoute un simple fichier Python ou Node.
- Crée un workflow déclenché sur chaque push qui:
  - installe les dépendances,
  - exécute une commande de test,
  - affiche la valeur d'une variable définie dans la section `env`.
- Ajoute un secret appelé `SUPER_TOKEN` et affiche les dix premiers caractères dans une étape dédiée.
 - Utilise également une variable de sortie d'une action officielle pour récupérer la version de Node installée et affiche-la.
 - Ajoute enfin un environnement `staging` et associe un second secret à cet environnement pour simuler un déploiement sécurisé.

## 3. Points importants à retenir
Ce projet te montre comment passer des informations à tes jobs et comment sécuriser les données sensibles.
Tu comprendras aussi comment distinguer plusieurs environnements et chaîner intelligemment les étapes grâce aux sorties d'actions.

### Pour aller plus loin
Lis l'article [Using environments for deployment](https://docs.github.com/fr/actions/deployment/targeting-different-environments/using-environments-for-deployment) afin de découvrir toutes les options offertes par GitHub pour isoler tes secrets.

