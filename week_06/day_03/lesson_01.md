# Gestion des conteneurs

## 1. Introduction
Une fois tes images créées, il faut savoir lancer, arrêter et persister les données des conteneurs. C'est ce que nous allons voir aujourd'hui.

## 2. Historique et contexte
Au début, lancer un conteneur se faisait manuellement avec docker run. Les registres et orchestrateurs ont ensuite simplifié la distribution.

## 3. La ressource
### 2.1. Commandes essentielles
- `docker ps` : liste les conteneurs en cours d'exécution.
- `docker stop <id>` : arrête un conteneur.
- `docker rm <id>` : supprime un conteneur arrêté.

### 2.2. Les volumes
Pour conserver des fichiers même après suppression d'un conteneur, on utilise les volumes Docker. Ils se créent avec `docker volume create` et se montent dans le conteneur via l'option `-v`.

### 2.3. Exposition de ports
La directive `-p 8080:80` lors d'un `docker run` permet d'exposer le port 80 du conteneur vers le port 8080 de ta machine, rendant ton service accessible depuis l'extérieur.

### 2.4. Inspecter un conteneur
La commande `docker inspect` renvoie toutes les informations sur un conteneur : variables d'environnement, montages, réseau... C'est un outil précieux pour diagnostiquer un problème.

### 2.5. Docker Compose pour gérer plusieurs conteneurs
Plutôt que de lancer manuellement chaque conteneur, tu peux définir l'ensemble de tes services dans un fichier `docker-compose.yml` et les démarrer avec `docker compose up`.

## 4. Points importants à retenir
- Un conteneur est éphémère, sauf si tu montes un volume.
- Les ports exposés autorisent l'accès aux services de l'extérieur.
- Nettoie régulièrement les conteneurs et volumes inutiles pour économiser de l'espace disque.

## 5. Pour aller plus loin
Le tutoriel "Get Started" du site Docker contient un chapitre dédié à la gestion des données et des réseaux.
Découvre également l'outil [Portainer](https://www.portainer.io/) pour gérer tes conteneurs via une interface web conviviale.

