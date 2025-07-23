# Projet : déployer un service simple

## 1. Introduction
Ce projet consiste à déployer une image nginx sur ton cluster Minikube et à l'exposer via un service.

## 2. Le projet
- Rédige un fichier `deployment.yaml` pour lancer un pod nginx avec deux replicas.
- Crée également un `service.yaml` de type NodePort pour accéder au pod depuis ton navigateur.
- Vérifie que la page d'accueil de nginx est accessible une fois le service exposé.
- Ajoute ensuite un `ConfigMap` contenant une page d'accueil personnalisée et monte-le dans le pod.
- Teste le redéploiement pour observer la prise en compte de cette configuration.

## 3. Rendu attendu
Les fichiers YAML et un court texte expliquant la procédure pour accéder au service sur Minikube.

### Pour aller plus loin
Regarde comment activer l'addon `ingress` de Minikube pour exposer ton service via un nom de domaine local.

