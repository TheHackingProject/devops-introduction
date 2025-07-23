# Centraliser les logs

## 1. Introduction
Tu vas déployer rapidement une stack ELK et y envoyer les logs de ton système.

## 2. Le projet
1. Utilise Docker Compose pour lancer Elasticsearch, Logstash et Kibana.
2. Configure Logstash pour lire un fichier de logs système (par exemple `/var/log/syslog`).
3. Vérifie dans Kibana que les messages apparaissent et crée un premier tableau de bord.
4. Ajoute Filebeat sur ta machine pour envoyer de nouveaux fichiers de log dans la stack.

## 3. Rendu attendu
Un `docker-compose.yml` fonctionnel et quelques captures d'écran de Kibana
montrant les logs importés.

4. Partage ton travail sur GitHub avec un bref mode d'emploi.

### Pour aller plus loin
Teste la création d'une alerte Kibana pour être notifié lorsqu'un mot clé spécifique apparaît dans les logs.
