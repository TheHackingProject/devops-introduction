# Optimiser les pipelines CI

## 1. Introduction
Les outils d'intégration continue offrent de nombreuses options pour réduire le
temps d'exécution et améliorer la fiabilité.

## 2. Historique et contexte
L'optimisation des pipelines CI passe par des techniques éprouvées comme le cache ou la parallélisation.

## 3. La ressource
### 3.1. Parallélisation
Lance plusieurs jobs en parallèle pour exploiter toutes les ressources et aller
plus vite, par exemple des matrices de tests.

### 3.2. Cache et artifacts
Mets en cache les dépendances afin d'éviter de les télécharger à chaque run et
partage des artifacts entre les étapes du pipeline.

### 3.3. Environnements éphémères
Crée automatiquement un environnement de test pour chaque branche afin de
valider les changements dans des conditions réalistes.

## 4. Points importants à retenir
- Mesure régulièrement la durée de tes pipelines pour les améliorer.
- Les environnements temporaires facilitent les revues de code.
- Un pipeline bien pensé est un atout majeur pour la productivité.

## 5. Pour aller plus loin
Consulte la documentation officielle pour approfondir.
