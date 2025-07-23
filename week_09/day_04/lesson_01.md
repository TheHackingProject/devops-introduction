# Sécuriser l'infrastructure

## 1. Introduction
La configuration réseau et système joue un rôle crucial pour éviter les
intrusions et limiter les dégâts en cas de compromission.

## 2. Historique et contexte
Automatiser la sécurité de l'infrastructure est une pratique héritée des audits classiques dès le début de l'IaC.

## 3. La ressource
### 3.1. Pare-feu et groupes de sécurité
Mets en place des règles restrictives : n'ouvre que les ports nécessaires et
seulement depuis les sources attendues.

### 3.2. Mise à jour et correctifs
Maintiens tes serveurs à jour pour bénéficier des derniers patchs de sécurité.
Automatise ce processus si possible.

### 3.3. Chiffrement des données
Utilise TLS/SSL pour sécuriser les communications et chiffre les disques qui
contiennent des informations sensibles.

### 3.4. Automatisation de la conformité
Utilise des outils comme Ansible ou Terraform pour appliquer des règles de sécurité identiques sur l'ensemble de tes serveurs. Tu limites ainsi les erreurs humaines.
### 3.5. Supervision continue
Prometheus et Grafana permettent de détecter rapidement des comportements anormaux (pique d'utilisation de CPU, connexion suspecte). Il devient alors plus facile de réagir.
## 4. Points importants à retenir
- Moins de ports exposés = surface d'attaque réduite.
- Surveille régulièrement les annonces de vulnérabilités.
- Le chiffrement est indispensable pour protéger les données au repos et en transit.

## 5. Pour aller plus loin
Consulte la documentation officielle pour approfondir.
