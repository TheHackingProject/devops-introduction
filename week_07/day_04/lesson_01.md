# Automatiser les plans Terraform

## 1. Introduction
À grande échelle, on ne lance plus les commandes Terraform à la main. Les
pipelines de CI prennent le relais et Terraform Cloud peut gérer l'état et les
workspaces pour toi.

## 2. Historique et contexte
L'automatisation des plans s'est développée avec l'intégration de Terraform dans les chaînes CI/CD.

## 3. La ressource
### 2.1. Utiliser un pipeline
Crée un job dans ton outil préféré (GitHub Actions, GitLab CI...) pour exécuter
`terraform fmt`, `terraform plan` puis `terraform apply` après validation.

### 2.2. Terraform Cloud
Terraform Cloud héberge ton état et propose des workspaces distants. Tu peux
aussi y stocker tes variables sensibles et lancer les plans depuis l'interface
web ou l'API.

### 2.3. Policy as Code
Avec Sentinel ou d'autres outils, tu peux définir des règles qui empêchent un
apply si certaines conditions ne sont pas remplies.

## 4. Points importants à retenir
- Automatise tes plans pour éviter les erreurs manuelles.
- Stocke l'état de manière sécurisée.
- Les politiques de validation renforcent la qualité de ton infrastructure.

### 2.4. Gestion des accès
Pense à limiter les droits sur l'état et les variables en utilisant des rôles dédiés. Un accès trop large peut entraîner des modifications non contrôlées.

## 5. Pour aller plus loin
- Le guide [CLI-driven workflow](https://developer.hashicorp.com/terraform/cloud-docs/cli-driven-workflows/overview) détaille l'utilisation de Terraform Cloud avec la ligne de commande.
- Explore l'outil `tflint` pour analyser la qualité de tes configurations avant le plan.

