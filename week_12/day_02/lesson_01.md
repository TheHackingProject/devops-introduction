# Mettre en place l'environnement

## 1. Introduction
La réussite du projet repose sur une base solide. Commence par préparer
l'infrastructure et la chaîne CI/CD.

## 2. Historique et contexte
Les laboratoires DevOps des grands acteurs du web ont montré l'intérêt de préparer l'environnement dès le début du projet.

## 3. La ressource
### 3.1. Infrastructure minimale
Définis les ressources nécessaires avec Terraform ou un outil équivalent
(instances, bases de données, stockage...).

### 3.2. Pipeline CI de base
Crée un pipeline qui construit l'application et lance les tests à chaque push.

### 3.3. Secrets et configuration
Stocke les variables sensibles dans un gestionnaire de secrets et référence-les
dans ton pipeline.

## 4. Points importants à retenir
- Mets en place un environnement de staging pour valider les changements.
- Versionne toute la configuration dans le dépôt.
- Automatiser dès maintenant évite les surprises plus tard.

## 5. Pour aller plus loin
Consulte la documentation officielle pour approfondir.
