# Des workflows performants et event-driven

## 1. Introduction
Les workflows peuvent rapidement devenir longs et coûteux s'ils sont mal optimisés. Nous allons voir comment les déclencher intelligemment et réduire leur durée.

## 2. Historique et contexte
Au départ limités au push, les workflows GitHub Actions se sont enrichis d'événements et d'un système de cache pour accélérer les CI.

## 3. La ressource
### 2.1. Les événements personnalisés
GitHub Actions supporte une grande liste d'événements : push, pull_request, mais aussi un simple appel HTTP grâce aux `workflow_dispatch` et `repository_dispatch`. Utilise-les pour lancer des tâches uniquement quand cela est nécessaire.

### 2.2. La mise en cache
L'action `actions/cache` permet de sauvegarder des dépendances ou des fichiers entre deux exécutions. Ton workflow gagne ainsi plusieurs minutes.

### 2.3. Le parallélisme
Avec `strategy.matrix` et `max-parallel`, tu peux contrôler le nombre de jobs qui s'exécutent en même temps, évitant de saturer tes runners auto-hébergés.

### 2.4. Les artefacts
Pense à sauvegarder tes binaires ou rapports de tests grâce à `actions/upload-artifact` pour les réutiliser dans d'autres jobs ou les partager avec ton équipe.

### 2.5. Les dépendances conditionnelles
Certaines étapes peuvent s'exécuter seulement si la précédente réussit via `if: success()`. Cela permet d'éviter des étapes inutiles en cas d'erreur.

## 4. Points importants à retenir
- Choisis le bon événement pour limiter les déclenchements inutiles.
- Le cache réduit le temps d'installation des dépendances.
- Contrôler le parallélisme permet d'utiliser au mieux les ressources disponibles.

## 5. Pour aller plus loin
Explore la documentation sur `repository_dispatch` pour déclencher un workflow depuis un autre dépôt ou un script externe.
Tu peux également regarder l'action [`actions/cache`](https://github.com/actions/cache) pour optimiser la durée de tes builds.

