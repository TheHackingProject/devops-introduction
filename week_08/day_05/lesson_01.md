# Mettre en place l'alerting

## 1. Introduction
Une fois les métriques et les logs collectés, il est temps d'être prévenu en cas
de comportement anormal. Pour cela nous allons utiliser Alertmanager ou les
fonctionnalités d'alerte de Grafana.

## 2. Historique et contexte
L'alerting s'est imposé pour détecter rapidement les problèmes. Alertmanager est aujourd'hui un outil clé de cet écosystème.

## 3. La ressource
### 2.1. Alertmanager
Couplé à Prometheus, Alertmanager gère l'envoi des notifications par mail ou via
Slack. On définit des règles dans un fichier YAML puis on lie le tout à
Prometheus.

### 2.2. Alertes Grafana
Grafana propose également un système d'alertes intégré aux dashboards. C'est
pratique pour notifier l'équipe directement depuis l'outil de visualisation.

### 2.3. Webhooks personnalisés
Si aucun connecteur n'existe pour ton outil de messagerie interne, tu peux envoyer les alertes vers une URL de webhook et traiter la notification toi-même.

### 2.3. Réponse aux incidents
Définis une procédure simple : qui reçoit l'alerte, comment escalader et où
noter l'incident résolu. Cela évite bien des confusions lors d'une panne.

## 4. Points importants à retenir
- Teste régulièrement tes règles d'alerte.
- Les notifications doivent être claires et actionnables.
- Une bonne gestion des incidents améliore la fiabilité du service.

### Pour aller plus loin
Consulte la documentation officielle pour approfondir. Jette aussi un œil à l'outil [`amtool`](https://github.com/prometheus/alertmanager/blob/main/doc/alertmanager.md#amtool) pour tester et gérer Alertmanager en ligne de commande.
