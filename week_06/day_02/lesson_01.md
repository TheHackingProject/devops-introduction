# Dockerfile et images

## 1. Introduction
Après avoir lancé quelques conteneurs, il est temps de créer tes propres images pour maîtriser l'environnement d'exécution de ton application.

## 2. Historique et contexte
Les premières commandes docker run et build ont rapidement évolué pour couvrir tous les besoins de déploiement.

## 3. La ressource
### 2.1. Structure d'un Dockerfile
Un Dockerfile se compose d'instructions telles que `FROM`, `RUN`, `COPY`. Chaque instruction génère une nouvelle couche dans l'image.

### 2.2. Bonnes pratiques
Utilise une image de base officielle, évite d'installer trop de packages inutiles et pense à nettoyer les caches pour réduire la taille finale.

### 2.3. Construction de l'image
Lance la commande `docker build -t monapp .` depuis le dossier contenant le Dockerfile. Tu pourras ensuite exécuter `docker run monapp` pour tester.

### 2.4. Multi-stage builds
Pour réduire encore la taille de l'image finale, tu peux réaliser une compilation dans une première étape puis copier uniquement les fichiers nécessaires dans une seconde étape.

### 2.5. Le fichier `.dockerignore`
Liste dans ce fichier tous les dossiers inutiles (logs, `node_modules`, etc.) afin qu'ils ne soient pas envoyés lors du build.

## 4. Points importants à retenir
- Chaque ligne du Dockerfile crée une nouvelle couche immutable.
- Les images légères se déploient plus rapidement.
- Versionne ton Dockerfile avec le reste de ton code.

## 5. Pour aller plus loin
Consulte la documentation officielle pour découvrir toutes les instructions disponibles et comment optimiser les couches.
Prends aussi le temps de parcourir le guide [Best practices for writing Dockerfiles](https://docs.docker.com/develop/dev-best-practices/) pour maîtriser les subtilités de la construction d'images.

