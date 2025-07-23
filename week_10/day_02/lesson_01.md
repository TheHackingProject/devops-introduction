# Premiers pas avec Kubernetes

## 1. Introduction
Kubernetes est la plateforme de référence pour orchestrer des conteneurs en
production. Nous allons l'utiliser via Minikube pour commencer.

## 2. Historique et contexte
Kubernetes, publié en 2014, a rapidement gagné en stabilité pour gérer des déploiements de plus en plus complexes.

## 3. La ressource
### 3.1. Architecture
Un cluster Kubernetes est composé d'un noeud maître et de noeuds workers où sont
lancés les pods. L'API server centralise les commandes.

### 3.2. Objet Pod
Le pod est l'unité de base contenant un ou plusieurs conteneurs partageant le
même réseau. Il est décrit dans un fichier YAML.

### 3.3. Services
Les services exposent les pods et assurent la découverte entre eux.

## 4. Points importants à retenir
- Kubectl est l'outil en ligne de commande principal.
- Les fichiers YAML décrivent l'état désiré du cluster.
- Minikube permet de tester Kubernetes en local facilement.

## 5. Pour aller plus loin
Consulte la documentation officielle pour approfondir.
