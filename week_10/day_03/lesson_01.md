# Déploiements Kubernetes

## 1. Introduction
Les déploiements gèrent la mise à jour déclarative des pods. Ils garantissent
qu'un certain nombre de réplicas est toujours disponible.

## 2. Historique et contexte
Les stratégies de déploiement comme le rolling update ou le canary ont été développées pour assurer des mises à jour sans interruption.

## 3. La ressource
### 3.1. Créer un Deployment
Décris un objet `Deployment` avec le nombre de réplicas souhaité et le template
de pod à utiliser.

### 3.2. Rolling update
Les mises à jour progressives remplacent les anciennes versions sans temps
d'arrêt. Tu peux ajuster le pourcentage de pods mis à jour à chaque étape.

### 3.3. Rollback
En cas de problème, `kubectl rollout undo deployment/nom` permet de revenir à la
révision précédente.

## 4. Points importants à retenir
- Les déploiements simplifient la gestion des versions.
- Surveille l'état du rollout pour détecter les erreurs.
- Les labels sont essentiels pour cibler les pods correctement.

## 5. Pour aller plus loin
Consulte la documentation officielle pour approfondir.
