# Coder ses propres Actions

## 1. Introduction
Parfois, aucune action existante ne répond exactement à ton besoin. Tu peux alors créer ta propre Action, soit avec Docker, soit en JavaScript.

## 2. Historique et contexte
Dès 2019 la communauté a partagé ses propres Actions, permettant d'automatiser des tâches spécifiques avec de simples dépôts.

## 3. La ressource
### 2.1. Action JavaScript
Une action JS est un dépôt contenant un script Node exécuté par GitHub. Avec quelques dépendances et un `action.yml`, tu peux publier une action réutilisable par la communauté.

### 2.2. Action Docker
Si tu préfères exécuter un binaire ou un outil en particulier, l'action Docker est idéale. Elle encapsule tout ce qu'il faut dans une image.

### 2.3. Publication
Une fois ton action prête, crée un tag et publie-la sur la marketplace GitHub. Pense à rédiger un README clair pour expliquer son utilisation.

### 2.4. Gérer les versions
Les utilisateurs d'une action s'appuient souvent sur un numéro de version. N'oublie pas de créer un tag Git puis de publier un `release` lorsque tu ajoutes une fonctionnalité majeure.

### 2.5. Tester son action
Avant de la rendre publique, écris un workflow dédié qui lance ton action sur différentes plateformes. Cela évite les mauvaises surprises une fois en production.

## 4. Points importants à retenir
- Les actions permettent de factoriser du code réutilisable dans plusieurs workflows.
- Une action JavaScript s'exécute très vite, tandis qu'une action Docker offre plus de liberté sur l'environnement.
- Documente toujours les entrées et sorties de ton action pour faciliter son adoption.

## 5. Pour aller plus loin
La [création d'une action](https://docs.github.com/fr/actions/creating-actions) est très bien détaillée par GitHub. Inspire-toi aussi des actions populaires pour comprendre les bonnes pratiques.
Pour voir un exemple complet, consulte le dépôt [`actions/setup-node`](https://github.com/actions/setup-node) qui illustre la gestion des versions et des tests automatisés.

