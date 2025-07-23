# Déployer Prometheus

## 1. Introduction
Prometheus est un serveur de collecte de métriques très populaire. Il interroge
régulièrement des cibles pour stocker leurs mesures dans une base temporelle.

## 2. Historique et contexte
Prometheus est né chez SoundCloud en 2012 et s'est imposé comme référence pour la collecte de métriques.

## 3. La ressource
### 2.1. Installation rapide
Le plus simple est d'utiliser Docker : `docker run -p 9090:9090 prom/prometheus`.
Crée un fichier `prometheus.yml` pour déclarer les cibles à scrapper.

### 2.2. Exporters
Chaque service expose ses métriques via un exporter spécifique. Le `node_exporter`
permet de surveiller l'OS. Beaucoup d'applications possèdent leur propre exporter.

### 2.3. Interroger Prometheus
L'interface web propose une barre de recherche avec le langage PromQL. Essaie par
exemple `up` ou `process_cpu_seconds_total` pour voir tes premières valeurs.

### 2.4. Alertmanager
Connecté à Prometheus, Alertmanager envoie des notifications (mail, Slack...) lorsqu'une règle est déclenchée.

### 2.5. Dashboards
Associe Prometheus à Grafana pour créer des graphiques percutants et suivre l'évolution de tes métriques dans le temps.

## 4. Points importants à retenir
- Prometheus collecte en mode pull via la configuration du scrape.
- Les exporters convertissent les métriques dans un format compatible.
- PromQL offre une grande puissance pour créer des alertes et des dashboards.

## 5. Pour aller plus loin
- Parcours le [Prometheus Operator](https://github.com/prometheus-operator/prometheus-operator) si tu utilises Kubernetes.
- Le site [Awesome Prometheus](https://github.com/prometheus/awesome-prometheus) liste de nombreux exporters et outils complémentaires.
