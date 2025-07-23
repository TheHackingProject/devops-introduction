# Projet : mise en production

## 1. Introduction
Pour clôturer cette semaine, tu vas déployer l'application Node.js créée au jour 1 sur ton cluster Kubernetes en utilisant un ingress.

## 2. Le projet
- Package ton application dans une image Docker et pousse-la sur Docker Hub.
- Écris les manifestes Kubernetes nécessaires (deployment, service, ingress).
- Assure-toi que l'URL fournie par Minikube affiche bien la page de ton application.
- Active l'auto-scaling avec un `HorizontalPodAutoscaler` réglé sur 50% d'utilisation CPU.
- Ajoute un dashboard Grafana pour vérifier l'état du cluster après déploiement.

## 3. Rendu attendu
Le dépôt doit contenir tous les manifestes ainsi qu'un script ou un README détaillant les commandes à exécuter pour le déploiement.

### Pour aller plus loin
Configure un pipeline GitHub Actions afin de builder et déployer automatiquement ton application sur ton cluster de test.

