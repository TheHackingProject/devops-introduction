# Ansible pour l'automatisation

## 1. Introduction
Ansible est un outil simple et puissant pour gérer la configuration des serveurs
via des playbooks écrits en YAML.

## 2. Historique et contexte
Ansible a vu le jour en 2012 afin de gérer la configuration des serveurs via SSH de manière déclarative.

## 3. La ressource
### 3.1. Inventaire
L'inventaire liste les hôtes cibles. Il peut être statique (fichier) ou dynamique
(via un script ou un plug‑in cloud).

### 3.2. Playbooks
Un playbook contient une suite de tâches à exécuter sur les hôtes. Chaque tâche
utilise un module Ansible (copy, package, service...).

### 3.3. Idempotence
Les actions d'Ansible sont idempotentes : relancer un playbook ne change rien si
l'état est déjà atteint.

## 4. Points importants à retenir
- Ansible s'utilise sans agent à installer sur les cibles.
- Organise tes rôles pour réutiliser ton code.
- Teste tes playbooks sur une machine de staging avant la production.

## 5. Pour aller plus loin
Consulte la documentation officielle pour approfondir.
