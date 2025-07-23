# Variables et gestion de l'état

## 1. Introduction
Maintenant que tu sais créer une ressource, il faut apprendre à rendre ton code
réutilisable et à suivre l'infrastructure créée.

## 2. Historique et contexte
La gestion de l'état et des variables est apparue pour suivre les ressources et partager des paramètres entre modules.

## 3. La ressource
### 2.1. Les variables
Déclare des variables dans un fichier `variables.tf` pour éviter de dupliquer les
valeurs. Utilise les blocs `variable` et la syntaxe `${var.nom}` dans tes
ressources.

### 2.2. L'état Terraform
Terraform stocke l'état dans un fichier `terraform.tfstate`. Tu peux le placer
à distance via un backend S3 ou GCS afin de travailler en équipe sans conflit.

### 2.3. Outputs
Les sorties te permettent d'afficher les informations clés après l'apply.
Déclare-les dans `outputs.tf` puis consulte-les avec `terraform output`.

## 4. Points importants à retenir
- Ne versionne jamais le fichier `tfstate`.
- Les variables rendent tes configurations dynamiques.
- Les outputs facilitent l'intégration avec d'autres outils.

### 2.4. Fichiers de variables
Place tes valeurs dans un fichier `terraform.tfvars` et charge-le avec l'option `-var-file`. C'est pratique pour séparer les environnements (dev, prod).

### 2.5. Verrouillage de l'état
Lorsque plusieurs personnes appliquent des changements, un verrou sur le backend évite les conflits. Assure-toi de configurer ce verrouillage si tu stockes l'état à distance.

## 5. Pour aller plus loin
- Découvre les backends distants comme [Terraform Cloud](https://app.terraform.io/) pour partager ton état sans te soucier de l'infrastructure.
- La commande `terraform console` permet d'explorer les valeurs et de tester tes expressions avant l'apply.

