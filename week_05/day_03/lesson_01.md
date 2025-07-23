# Jouer avec les conteneurs dans GitHub Actions

## 1. Introduction
GitHub Actions permet d'exécuter tes jobs dans des conteneurs Docker. C'est pratique pour maîtriser ton environnement et partager des images communes entre plusieurs workflows.

## 2. Historique et contexte
L'utilisation de Docker s'est généralisée dès 2013 et GitHub l'a intégré à ses workflows pour garantir des environnements identiques.

## 3. La ressource
### 2.1. Utiliser une image officielle
Dans la section `jobs.<nom>.container`, indique simplement l'image Docker à utiliser. GitHub téléchargera celle-ci depuis Docker Hub ou ton registry préféré.

```yaml
jobs:
  tests:
    runs-on: ubuntu-latest
    container: node:20
    steps:
      - uses: actions/checkout@v4
      - run: npm test
```

### 2.2. Construire sa propre image
Pour plus de contrôle, tu peux builder ton image à la volée grâce à l'action `docker/build-push-action`. Elle est utile lorsque ton projet nécessite des dépendances spécifiques.

### 2.3. Matrices de conteneurs
Combine la stratégie `matrix` avec différents conteneurs pour tester plusieurs versions d'un langage ou outil en parallèle.

### 2.4. Services additionnels
Un job peut utiliser plusieurs conteneurs "services" pour simuler une base de données ou un cache. Déclare-les dans `services:` et relie-les au conteneur principal via un réseau virtuel.

### 2.5. Partage de données
Pense à monter un volume pour partager des fichiers entre plusieurs étapes ou pour mettre en cache les dépendances et accélérer les builds suivants.

## 4. Points importants à retenir
- Les conteneurs garantissent une exécution cohérente de tes jobs.
- Builder l'image au sein du workflow permet de tester exactement ce qui sera déployé.
- Les matrices multiplient les environnements de test sans configuration complexe.

## 5. Pour aller plus loin
Rends-toi sur le dépôt `docker/build-push-action` pour voir tous les paramètres disponibles. Expérimente aussi avec GitHub Packages pour héberger tes propres images.
N'hésite pas à coupler ces conteneurs avec [Docker Compose](https://docs.docker.com/compose/) pour reproduire un environnement complet lors des tests.

