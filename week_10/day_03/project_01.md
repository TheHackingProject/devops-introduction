# Mettre à jour une application

## 1. Introduction
Nous allons déployer une application puis la mettre à jour sans coupure.

## 2. Le projet
1. Crée un `Deployment` pour exécuter une image Nginx taguée `v1` avec deux réplicas.
2. Modifie l'image pour utiliser la version `v2` et observe le déroulement du rolling update.
3. Utilise `kubectl rollout undo` pour revenir à la version précédente.

## 3. Rendu attendu
Les manifestes YAML utilisés et une courte explication du résultat des commandes.

4. Partage ton travail sur GitHub avec un bref mode d'emploi.
