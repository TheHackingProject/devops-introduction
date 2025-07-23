# Déploiement sur Kubernetes

## 1. Introduction
Pour terminer la semaine, nous allons voir comment mettre en production une application conteneurisée sur Kubernetes.

## 2. Historique et contexte
Avec la croissance du cloud, orchestrer plusieurs services est devenu essentiel. Kubernetes fournit diverses stratégies de déploiement pour répondre à ces enjeux.

## 3. La ressource
### 2.1. Manifeste complet
Combine les objets `deployment`, `service` et `ingress` pour exposer une application web. L'ingress nécessite un contrôleur, par exemple Nginx Ingress sur Minikube.

### 2.2. Rolling update
Grâce au champ `strategy` d'un deployment, Kubernetes peut mettre à jour tes pods sans interruption de service. Teste une mise à jour d'image et observe le remplacement progressif des anciens pods.

### 2.3. Helm
Pour faciliter la réutilisation des manifestes, Helm permet de les templater et de versionner des "charts". Une piste à explorer pour tes futurs projets.

### 2.4. Auto-scaling
En combinant `HorizontalPodAutoscaler` et `Metrics Server`, ton application peut automatiquement démarrer de nouveaux pods selon la charge CPU ou mémoire.

### 2.5. Observabilité
Installe Prometheus et Grafana via Helm pour obtenir des tableaux de bord sur l'état de ton cluster et détecter rapidement les anomalies.

## 4. Points importants à retenir
- Un ingress donne accès à ton application via un nom de domaine ou une URL conviviale.
- Les stratégies de déploiement évitent la coupure lors des mises à jour.
- Helm simplifie la maintenance de configurations complexes.

## 5. Pour aller plus loin
Essaie de déployer l'exemple [guestbook](https://kubernetes.io/docs/tutorials/stateless-application/guestbook/) proposé par la documentation officielle pour voir un cas concret plus complet.
Pour les passionnés, la série "Production Kubernetes" de Learnk8s approfondit la mise en place de clusters robustes et sécurisés.

