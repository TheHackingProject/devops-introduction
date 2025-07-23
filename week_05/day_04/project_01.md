# Projet : workflow déclenché à la demande

## 1. Introduction
Nous allons créer un workflow qui ne s'exécute qu'à la demande et qui utilise un cache pour accélérer les dépendances.

## 2. Tâches
- Mets en place un workflow avec l'événement `workflow_dispatch`.
- Ajoute une étape pour installer tes dépendances (npm ou pip) en utilisant `actions/cache`.
- Prévoyez un job de build qui tourne uniquement si l'installation a réussi.
- Upload le binaire résultant en utilisant `actions/upload-artifact`.
- Définis une matrice de tests pour valider ta build sur plusieurs versions de Node ou Python.

## 3. Points importants à retenir
En déclenchant manuellement ton pipeline, tu maîtrises parfaitement quand tu consommes du temps de CI et l'usage du cache évite bien des temps morts.

### Pour aller plus loin
Lis la page [Events that trigger workflows](https://docs.github.com/fr/actions/using-workflows/events-that-trigger-workflows) pour comprendre toutes les possibilités offertes par GitHub Actions.

