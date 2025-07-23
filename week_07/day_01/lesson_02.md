# Gestion de l'état et premiers modules

## 1. Introduction
Tu maîtrises les bases de Terraform, passons maintenant à la structuration de ton code. Cette leçon t'explique comment partager des variables et organiser tes ressources en modules réutilisables.

## 2. Historique et contexte
Au fil des versions, Terraform a introduit des mécanismes pour permettre le travail en équipe. Le stockage de l'état sur un backend distant et l'usage de modules sont devenus essentiels lorsque plusieurs personnes contribuent.

## 3. La ressource
### 3.1. Stocker l'état à distance
Par défaut, Terraform écrit l'état dans un fichier `terraform.tfstate`. Pour éviter les conflits, configure un backend comme Amazon S3 :

```hcl
terraform {
  backend "s3" {
    bucket = "mon-etat-tf"
    key    = "global/state.tfstate"
    region = "eu-west-3"
  }
}
```

Cette configuration se place dans un fichier `backend.tf` séparé. Une fois en place, chaque `terraform apply` mettra à jour l'état dans S3.

### 3.2. Variables et fichiers tfvars
Centralise tes variables dans `variables.tf` :

```hcl
variable "region" {
  description = "Région AWS"
  type        = string
  default     = "eu-west-3"
}
```

Crée ensuite un fichier `terraform.tfvars` pour les valeurs concrètes.

### 3.3. Découper en modules
Un module est un dossier contenant des fichiers Terraform. Appelle-le depuis ton code principal :

```hcl
module "reseau" {
  source = "./modules/network"
  vpc_cidr = var.vpc_cidr
}
```

Chaque module possède son propre `variables.tf` et peut être versionné séparément. C'est la clé pour maintenir de gros projets.

## 4. Points importants à retenir
- Le backend S3 ou Terraform Cloud évite de versionner l'état.
- Les fichiers `*.tfvars` contiennent les valeurs propres à chaque environnement.
- Les modules favorisent la réutilisabilité du code.

## 5. Pour aller plus loin
- Explore le [Terraform Registry](https://registry.terraform.io/) pour importer des modules publics.
- Lis la documentation sur les [workspaces](https://developer.hashicorp.com/terraform/docs/language/state/workspaces) afin de gérer plusieurs environnements.
