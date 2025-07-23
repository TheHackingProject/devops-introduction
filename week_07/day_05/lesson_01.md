# Synthèse Terraform

## 1. Introduction
Pour terminer la semaine, tu vas revoir l'ensemble des fonctionnalités et
assembler une infrastructure plus complète à l'aide des modules créés.

## 2. Historique et contexte
Terraform a beaucoup évolué au fil des ans, cette journée fait la synthèse de ces pratiques courantes.

## 3. La ressource
### 2.1. Architecture exemple
Construis une petite architecture contenant un réseau, une instance et un bucket
pour stocker des fichiers. Chaque composant doit être déclaré via un module.

### 2.2. Variables globales
Centralise les variables communes comme la région ou les tags pour éviter les
répétitions. Utilise un fichier `terraform.tfvars` pour stocker des valeurs.

### 2.3. Validation automatique
Profite du pipeline mis en place pour lancer `terraform plan` à chaque commit et
ne permettre l'apply qu'après revue de code.

## 4. Points importants à retenir
- Combine modules et variables pour écrire du code clair.
- Versionne tes modules dans des dépôts dédiés si nécessaire.
- Une automatisation basique suffit souvent à sécuriser tes changements.

### 2.4. Documentation
N'oublie pas de rédiger un `README` pour expliquer comment initialiser et déployer l'infrastructure. C'est précieux quand ton projet grandira.

## 5. Pour aller plus loin
- Teste la génération automatique de documentation avec l'outil `terraform-docs`.
- Explore les modules officiels pour t'inspirer de leur organisation.

