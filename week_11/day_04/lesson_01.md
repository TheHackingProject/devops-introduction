# Chaîne d'automatisation complète

## 1. Introduction
Il est temps d'orchestrer provisioning, configuration et déploiement via un
pipeline unique.

## 2. Historique et contexte
Assembler ces outils en une chaîne cohérente permet un cycle de livraison continu inspiré des pionniers du DevOps.

## 3. La ressource
### 3.1. Terraform + Ansible
Utilise Terraform pour créer les ressources (VM, réseau...) puis déclenche
Ansible afin de configurer les serveurs nouvellement créés.

### 3.2. Pipeline orchestrateur
Un outil comme Jenkins ou GitLab CI peut piloter l'enchaînement des étapes :
création de l'infra, configuration, déploiement de l'application.

### 3.3. Tests de bout en bout
Automatise des tests après le déploiement pour vérifier que l'ensemble fonctionne
correctement avant de valider.

## 4. Points importants à retenir
- Sépare bien les rôles : Terraform pour l'infra, Ansible pour la config.
- Les tests automatisés garantissent un résultat fiable.
- Documente chaque étape pour faciliter la maintenance.

## 5. Pour aller plus loin
Consulte la documentation officielle pour approfondir.
