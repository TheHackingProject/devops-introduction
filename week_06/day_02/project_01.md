# Projet : créer une image personnalisée

## 1. Introduction
Nous allons construire une image Docker capable de lancer un script Python simple.

## 2. Le projet
- Écris un `Dockerfile` basé sur `python:3.12`.
- Copie un petit script `app.py` qui affiche "Hello Docker".
- Construis l'image puis exécute le conteneur pour vérifier le résultat.
- Ajoute ensuite une étape de test dans un `docker-compose.yml` pour pouvoir lancer ton script et une base de données en même temps.
- Publie enfin l'image sur Docker Hub pour la partager avec tes camarades.

## 3. Rendu attendu
Le Dockerfile et le script doivent être versionnés et la commande utilisée pour lancer l'image doit être indiquée dans un README.

### Pour aller plus loin
Regarde comment configurer un workflow GitHub Actions pour builder automatiquement ton image à chaque push.

