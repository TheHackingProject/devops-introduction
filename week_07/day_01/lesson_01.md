# Premiers pas avec Terraform

## 1. Introduction
Terraform est un outil d'Infrastructure as Code. Tu vas découvrir comment il te
permet de décrire tes ressources cloud de manière déclarative.

## 2. Historique et contexte
HashiCorp a lancé Terraform en 2014 pour décrire l'infrastructure dans du code. Il est aujourd'hui un pilier de l'IaC.

## 3. La ressource
### 2.1. Installation
Commence par installer Terraform depuis le site officiel puis initialise un
nouveau dossier avec `terraform init`.

### 2.2. Premier provider
Crée un fichier `main.tf` et déclare un provider comme `aws` ou `google` selon
ta préférence. Ajoute-y une ressource simple comme une instance ou un bucket.

### 2.3. Plan et apply
Utilise `terraform plan` pour voir les changements puis `terraform apply`
pour les appliquer. Observe que Terraform conserve un fichier d'état pour suivre
ce qui a été créé.

## 4. Points importants à retenir
- Terraform fonctionne en mode déclaratif.
- Le plan permet de vérifier les actions avant exécution.
- L'état local enregistre la configuration actuelle de ton infrastructure.

### 2.4. Format HCL
Les fichiers Terraform sont écrits en HCL. La syntaxe est proche du JSON mais plus lisible. Chaque bloc commence par un type et un nom :

```hcl
resource "aws_instance" "example" {
  ami           = "ami-123456"
  instance_type = "t3.micro"
}
```

### 2.5. Initialiser un projet
Après avoir rédigé tes premiers fichiers, exécute `terraform init` pour récupérer les plugins nécessaires. Tu pourras ensuite lancer `terraform plan` pour vérifier la configuration.

### 2.6. Modules
Regroupe les ressources communes dans des modules pour réutiliser facilement ton code. Un module se compose d'un ensemble de fichiers Terraform appelés depuis ta configuration principale.

### 2.7. Backends distants
Pour travailler à plusieurs, stocke l'état dans un backend partagé comme Amazon S3 ou Terraform Cloud. Active le verrouillage pour éviter les modifications concurrentes.

## 5. Pour aller plus loin
- Parcours la [documentation Terraform](https://developer.hashicorp.com/terraform/docs) pour explorer toutes les commandes.
- Le site [Terraform Registry](https://registry.terraform.io/) propose de nombreux modules prêts à l'emploi.


## 6. Exercice guidé
Pour bien comprendre, réalise un mini projet :
1. Crée un dossier `demo` et place-y un fichier `main.tf`.
2. Déclare le provider `local` qui permet de manipuler des fichiers sur ta machine.
3. Utilise la ressource `local_file` pour créer un fichier `hello.txt` contenant le texte "Hello Terraform".
4. Lance `terraform init` puis `terraform apply` et observe le fichier généré.
5. Détruis tout avec `terraform destroy`.

Cette manipulation simple montre le cycle complet : écriture du code, initialisation, planification, application puis destruction.

## 7. Conclusion
Avec ces premières commandes, tu peux déjà orchestrer des ressources basiques. Dans la prochaine leçon, nous verrons comment structurer des projets plus importants et collaborer efficacement.

## 8. Syntaxe HCL détaillée
La syntaxe HCL ressemble au JSON mais se veut plus lisible. Chaque bloc est introduit par un type et un nom :

```hcl
resource "aws_s3_bucket" "bucket_example" {
  bucket = "demo-bucket"
  acl    = "private"
}
```

Les valeurs peuvent être de types variés : chaînes, nombres, booléens, listes ou maps. Les commentaires s'écrivent avec `#` ou `//`.

## 9. Gestion des versions
Pense à verrouiller la version de Terraform dans un fichier `.terraform-version` ou via le bloc `required_version`.

```hcl
terraform {
  required_version = ">= 1.6.0"
}
```

Cela garantit que tout le monde utilise une version compatible.

## 10. Documentation
Chaque bloc ou variable peut être commenté pour faciliter la prise en main par les autres membres de l'équipe. Les commentaires bien placés évitent de mauvaises surprises lors de modifications futures.

## 11. Ressources complémentaires
- Le guide "[Learn Terraform](https://learn.hashicorp.com/collections/terraform/aws-get-started)" présente un tutoriel pas à pas.
- Le livre *Terraform: Up & Running* détaille des exemples concrets d'architecture.

Avec ces ressources et un peu de pratique, tu disposeras d'une base solide pour décrire n'importe quelle infrastructure sous forme de code.

N'hésite pas à expérimenter et à versionner ton code dans Git. Terraform se prête très bien aux revues de code, ce qui facilite la collaboration.

La suite de la journée t'apprendra à mettre en place un backend distant et à structurer ton projet en modules pour préparer la collaboration en équipe.
