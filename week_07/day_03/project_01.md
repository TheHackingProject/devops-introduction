# Créer ton premier module

## 1. Introduction
Nous allons extraire la création de l'instance dans un module dédié afin de
pouvoir la réutiliser.

## 2. Le projet
1. Déplace la ressource de l'instance dans un dossier `modules/instance`.
2. Déclare des variables pour l'image et la taille.
3. Appelle ce module depuis ton `main.tf`.
4. Publie ce module dans un dépôt séparé afin de pouvoir le versionner comme une dépendance.

## 3. Rendu attendu
Ton dépôt doit contenir le dossier `modules/instance` et l'appel correspondant
avec un exemple de variables personnalisées.
4. Ajoute un `output` renvoyant l'adresse IP pour que le module soit vraiment complet.

### Pour aller plus loin
Regarde comment utiliser la directive `source` d'un module pour pointer vers une version taggée sur GitHub.

