# Pipeline de déploiement

## 1. Introduction
Pour finir cette semaine, voyons comment enchaîner la construction de l'image et
de son déploiement sur Kubernetes dans un pipeline unique.

## 2. Historique et contexte
Automatiser l'ensemble du pipeline est devenu essentiel avec l'adoption massive des microservices et de la conteneurisation.

## 3. La ressource
### 3.1. Build automatisé
Configure ton outil CI pour lancer `docker build` et pousser l'image dans ton
registre après chaque merge sur la branche principale.

### 3.2. Déploiement continu
Avec `kubectl` ou Helm, déploie directement la nouvelle image sur le cluster.
Pense à versionner les manifests utilisés par la CI.

### 3.3. Gestion des secrets
Le pipeline doit pouvoir s'authentifier au registre et au cluster sans exposer
les identifiants. Utilise des variables protégées.

## 4. Points importants à retenir
- Un pipeline unifié réduit le temps entre le code et la production.
- Sépare bien les environnements de test et de prod.
- Surveille l'exécution pour réagir vite en cas d'échec.

## 5. Pour aller plus loin
Consulte la documentation officielle pour approfondir.
