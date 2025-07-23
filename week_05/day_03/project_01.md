# Projet : tests en conteneur

## 1. Introduction
L'objectif est de faire tourner ton outil de test dans une image Docker dédiée.

## 2. Tâches
- Prépare un `Dockerfile` qui installe toutes les dépendances de ton application.
- Dans le workflow, utilise cette image via la clé `container` pour exécuter les tests.
- Paramètre une matrice avec deux versions de Node ou Python pour t'assurer que ton code fonctionne partout.
- Configure un service de base de données dans `services:` pour tester l'intégration complète de ton application.
- Stocke les rapports de tests en artefacts pour pouvoir les consulter après exécution.

## 3. Points importants à retenir
En emballant ton environnement dans une image, tu garantis des résultats identiques en local et dans ton pipeline.

### Pour aller plus loin
Lis la documentation [GitHub Actions: using containerized services](https://docs.github.com/fr/actions/using-containerized-services) pour comprendre comment chaîner plusieurs images dans un même workflow.

