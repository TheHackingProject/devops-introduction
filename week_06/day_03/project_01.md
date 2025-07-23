# Projet : persistance de données

## 1. Introduction
Nous allons créer un conteneur MySQL dont les données seront conservées sur ta machine hôte grâce aux volumes.

## 2. Le projet
- Lance un volume nommé `db-data`.
- Démarre un conteneur `mysql:8` en montant ce volume sur `/var/lib/mysql`.
- Connecte-toi au SGBD et crée une base de test. Redémarre le conteneur pour vérifier que la base est toujours présente.
- Expose le port 3306 et connecte-toi depuis un client local pour manipuler la base.
- Ajoute ce conteneur à un `docker-compose.yml` afin de simplifier le démarrage ultérieur.

## 3. Rendu attendu
Un court compte-rendu expliquant les commandes utilisées et la vérification de la persistance.

### Pour aller plus loin
Pense à tester la solution [docker volume inspect](https://docs.docker.com/storage/volumes/#inspect-a-volume) pour voir comment sont stockées tes données.

