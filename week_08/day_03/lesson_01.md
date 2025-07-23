# Dashboards Grafana

## 1. Introduction
Grafana est l'outil incontournable pour visualiser des métriques. Il se connecte
à Prometheus et permet de créer des graphes interactifs en quelques clics.

## 2. Historique et contexte
Grafana, créé en 2014, fournit des tableaux de bord attractifs pour visualiser ces données.

## 3. La ressource
### 2.1. Installation
Tu peux lancer Grafana avec Docker : `docker run -p 3000:3000 grafana/grafana`.
Connecte-toi ensuite sur `localhost:3000` avec les identifiants par défaut
`admin/admin`.

### 2.2. Ajouter une source de données
Depuis l'interface, ajoute Prometheus comme source. Indique l'URL de ton serveur
et sauvegarde.

### 2.3. Créer un tableau de bord
Crée un nouveau dashboard puis ajoute un panneau en utilisant une requête PromQL.
Teste différents types de graphiques pour représenter les valeurs.

### 2.4. Importer un dashboard
La communauté partage de nombreux modèles sur [grafana.com/dashboards](https://grafana.com/grafana/dashboards). Tu peux les importer pour gagner du temps.

### 2.5. Alertes intégrées
Grafana permet désormais de définir des règles d'alerte directement depuis un panneau. Configure un canal Slack ou email pour être notifié.

## 4. Points importants à retenir
- Grafana peut se connecter à de nombreuses bases de données.
- L'édition des panels se fait en quelques clics.
- N'hésite pas à partager tes dashboards avec ton équipe.

### Pour aller plus loin
Consulte la documentation officielle pour approfondir. Explore également les plugins pour ajouter de nouveaux types de graphiques.
