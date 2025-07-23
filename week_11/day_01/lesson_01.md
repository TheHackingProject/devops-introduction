# Scripts avancés

## 1. Introduction
Les scripts deviennent vite indispensables pour automatiser les déploiements ou
les tâches récurrentes. Aujourd'hui nous allons améliorer leur structure.

## 2. Historique et contexte
Les scripts Shell sont utilisés depuis les débuts d'Unix pour automatiser les tâches récurrentes.

## 3. La ressource
### 3.1. Organisation en fonctions
Découpe ton script Bash en fonctions claires, chacune réalisant une étape
spécifique. Cela facilite la maintenance et les tests.

### 3.2. Gestion des erreurs
Utilise `set -euo pipefail` et des blocs `trap` pour capter les erreurs et
nettoyer proprement l'environnement en cas d'échec.

### 3.3. Python pour les tâches complexes
Lorsque le shell atteint ses limites, Python permet d'écrire des scripts plus
lisibles et de profiter des bibliothèques existantes.

## 4. Points importants à retenir
- Un script bien structuré est plus facile à faire évoluer.
- Loggue les actions importantes pour faciliter le débogage.
- Les tests unitaires existent aussi pour les scripts !

## 5. Pour aller plus loin
Consulte la documentation officielle pour approfondir.
