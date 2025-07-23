# Techniques Docker avancées

## 1. Introduction
Après avoir vu les bases de Docker, il est temps d'optimiser la création de tes
images et de gérer un registre privé.

## 2. Historique et contexte
Les fonctionnalités avancées de Docker, telles que les multi-stage builds, ont émergé pour optimiser la taille des images.

## 3. La ressource
### 3.1. Multi-stage builds
Les multi-stage builds permettent de réduire la taille des images en séparant les
étapes de compilation et d'exécution.

### 3.2. Gestion du cache
Utilise intelligemment l'ordre des instructions pour profiter du cache Docker et
accélérer tes builds.

### 3.3. Registries
Stocke tes images dans un registre privé (Harbor, GitHub Container Registry...).
Configure l'authentification pour pousser et tirer les images.

### 3.4. Optimiser les couches
En ordonnant intelligemment les instructions, tu profites mieux du cache.
Par exemple, installe d'abord les dépendances stables, puis copie ton code.
### 3.5. Docker Buildx
L'outil `buildx` permet de générer des images multi-architectures. Idéal pour préparer une diffusion sur différents environnements, y compris ARM.
### 3.6. Registry miroir
Pour éviter de télécharger plusieurs fois les mêmes images depuis Docker Hub, monte un miroir local comme Harbor ou Sonatype Nexus.
## 4. Points importants à retenir
- Des images légères se déploient plus vite.
- Pense à nettoyer les dépendances inutiles durant le build.
- Un registre privé sécurise la diffusion de tes images.

## 5. Pour aller plus loin
Consulte la documentation officielle pour approfondir.
