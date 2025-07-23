# Projet : premier Dockerfile

## 1. Introduction
Tu vas créer une image Docker pour une petite application Node.js puis la lancer via Docker Compose.

## 2. Le projet
### 2.1. Dockerfile
Écris un `Dockerfile` qui installe Node.js, copie ton code et lance `npm start`.

### 2.2. Compose
Crée ensuite un fichier `docker-compose.yml` avec un service pour ton app et un service `db` en Postgres.
- Ajoute un volume pour persister les données de la base.
- Prévoyez un fichier `.env` pour centraliser les variables comme le port et le mot de passe de la base.

## 3. Rendu attendu
Une archive contenant le `Dockerfile`, le `docker-compose.yml` ainsi qu'un court README expliquant comment démarrer les conteneurs.

### Pour aller plus loin
Teste ton image sur [Play with Docker](https://labs.play-with-docker.com/) afin de valider son fonctionnement sans installer Docker localement.

