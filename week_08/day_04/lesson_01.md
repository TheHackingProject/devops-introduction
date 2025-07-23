# La stack ELK

## 1. Introduction
Pour centraliser les logs provenant de plusieurs services, on utilise souvent la
stack ELK composée d'Elasticsearch, Logstash et Kibana.

## 2. Historique et contexte
La stack ELK a popularisé l'analyse de logs à grande échelle dans les années 2010.

## 3. La ressource
### 2.1. Elasticsearch
C'est la base de données dans laquelle seront stockés les logs. Elle offre des
capacités de recherche très rapides.

### 2.2. Logstash
Logstash collecte et transforme les messages avant de les envoyer vers
Elasticsearch. On définit des pipelines pour parser les différents formats.

### 2.3. Kibana
Kibana permet de consulter et de visualiser les logs via une interface web.
Il propose aussi la création d'alertes sur certains patterns.

### 2.4. Beats
Les Beats sont de petits agents qui expédient directement les logs ou métriques vers Logstash ou Elasticsearch. Filebeat est le plus connu pour suivre les fichiers de log locaux.

## 4. Points importants à retenir
- ELK est une solution complète pour le logging centralisé.
- Veille à contrôler le volume de données stockées.
- Les filtres Logstash facilitent l'analyse des formats complexes.

### Pour aller plus loin
Consulte la documentation officielle pour approfondir. Teste aussi le projet [`elastic/logstash`](https://github.com/elastic/logstash) pour découvrir des configurations avancées.
