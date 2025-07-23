# Comprendre l'observabilité

## 1. Introduction
Surveiller une application ne se limite pas à afficher quelques logs.
L'observabilité regroupe la collecte de métriques, de traces et d'évènements
pour diagnostiquer rapidement les problèmes.

## 2. Historique et contexte
L'observabilité regroupe logs, métriques et traces, un concept appliqué aux systèmes distribués depuis les années 2000.

## 3. La ressource
### 2.1. Métriques
Les métriques sont des valeurs chiffrées mesurées dans le temps : utilisation CPU
ou nombre de requêtes par exemple. Elles permettent de suivre les tendances.

### 2.2. Logs
Les logs enregistrent des évènements textuels. Ils sont utiles pour comprendre le
contexte exact d'une erreur ou d'une action utilisateur.

### 2.3. Traces
Les traces suivent l'exécution d'une requête à travers plusieurs services. C'est
indispensable pour les architectures micro‑services.

### 2.4. Outils populaires
Parmi les solutions open source les plus utilisées, on trouve Prometheus pour les métriques et Grafana pour la visualisation. Jaeger ou Zipkin sont quant à eux spécialisés dans les traces.

## 4. Points importants à retenir
- Combine métriques et logs pour avoir une vision complète.
- Les traces facilitent la recherche des goulots d'étranglement.
- Une bonne observabilité accélère la résolution des incidents.

## 5. Pour aller plus loin
- Le livre [Distributed Systems Observability](https://www.oreilly.com/library/view/distributed-systems-observability/9781492033431/) propose une vue d'ensemble très complète.
- Teste les [Playground Prometheus](https://prometheus.io/docs/prometheus/latest/getting_started/) pour découvrir rapidement l'outil.
