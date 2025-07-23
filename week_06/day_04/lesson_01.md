# Introduction à Kubernetes

## 1. Introduction
Kubernetes est une plateforme d'orchestration de conteneurs très répandue. Elle permet de déployer et de gérer des applications à grande échelle.

## 2. Historique et contexte
Kubernetes a été open-sourcé par Google en 2014 et est vite devenu la référence pour gérer des grappes de conteneurs.

## 3. La ressource
### 2.1. Concepts de base
Un **pod** est l'unité minimale déployée par Kubernetes. Plusieurs pods sont regroupés dans un **deployment** qui en assure la mise à l'échelle. Un **service** expose tes pods sur le réseau.

### 2.2. Installer Minikube
Pour tester en local, installe l'outil Minikube puis lance `minikube start`. Tu disposes ainsi d'un petit cluster Kubernetes prêt à l'emploi.

### 2.3. Premier déploiement
Crée un fichier `deployment.yaml` décrivant un pod nginx. Applique-le avec `kubectl apply -f deployment.yaml` et vérifie son état avec `kubectl get pods`.

### 2.4. ConfigMaps et Secrets
Sépare la configuration de ton image grâce aux objets `ConfigMap` et `Secret`. Ils sont montés comme des volumes ou exportés en variables d'environnement dans tes pods.

### 2.5. Namespaces
Organise ton cluster en plusieurs espaces logiques. Les namespaces permettent d'isoler les ressources d'une équipe ou d'un projet.

## 4. Points importants à retenir
- Kubernetes se base sur la description déclarative de ton infrastructure.
- Les deployments assurent le redémarrage automatique des pods.
- Les services permettent d'exposer les applications vers l'extérieur du cluster.

## 5. Pour aller plus loin
La documentation de [kubernetes.io](https://kubernetes.io) contient un guide complet pour approfondir chaque objet.
Je te recommande également de suivre le tutoriel [Learn Kubernetes Basics](https://kubernetes.io/docs/tutorials/kubernetes-basics/) pour manipuler les commandes essentielles pas à pas.

