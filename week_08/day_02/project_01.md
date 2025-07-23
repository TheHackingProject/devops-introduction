# Mettre en route Prometheus

## 1. Introduction
Tu vas installer Prometheus en local et configurer un premier scrape d'exporter.

## 2. Le projet
1. Lance Prometheus via Docker en montant un fichier `prometheus.yml`.
2. Installe également `node_exporter` et ajoute-le à la configuration.
3. Vérifie depuis l'UI que les métriques remontent correctement.
4. Configure une règle d'alerte simple via Alertmanager.

## 3. Rendu attendu
Les fichiers de configuration et un court `README` expliquant comment lancer
Prometheus et accéder à l'interface.

4. Partage ton travail sur GitHub avec un bref mode d'emploi.

### Pour aller plus loin
Connecte Grafana à ton instance Prometheus et réalise un premier dashboard.
