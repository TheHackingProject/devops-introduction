# Déploiement applicatif

## 1. Introduction
Passons à l'étape cruciale : rendre l'application accessible aux utilisateurs.

## 2. Historique et contexte
Le déploiement applicatif utilise les méthodes introduites avec les premiers orchestrateurs de conteneurs.

## 3. La ressource
### 3.1. Build de l'image
Si nécessaire, construis une image Docker finale et pousse-la dans ton registre.

### 3.2. Déploiement automatisé
Utilise ton pipeline pour déployer automatiquement l'image sur le cluster ou la
machine cible. Pense à versionner les manifestes ou scripts utilisés.

### 3.3. Tests post-déploiement
Une fois l'application en ligne, lance des tests basiques (ping d'URL,
connexion à la base de données) pour vérifier le succès du déploiement.

## 4. Points importants à retenir
- Automatiser le déploiement évite les oublis manuels.
- Les tests post-déploiement donnent une première assurance que tout fonctionne.
- Note les étapes réalisées pour documenter le runbook.

## 5. Pour aller plus loin
Consulte la documentation officielle pour approfondir.
