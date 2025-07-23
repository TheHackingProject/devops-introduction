# Paramétrer l'instance

## 1. Introduction
Nous allons reprendre le projet précédent pour y intégrer des variables et un
état stocké à distance.

## 2. Le projet
1. Ajoute un fichier `variables.tf` pour définir la région et le type d'instance.
2. Configure un backend `s3` ou équivalent pour stocker le `tfstate`.
3. Affiche l'adresse IP de l'instance via un output.
4. Utilise un fichier `terraform.tfvars` pour séparer les valeurs propres à ton environnement.

## 3. Rendu attendu
Un dépôt mis à jour contenant la configuration complète et un exemple du fichier
backend utilisé.
4. Teste le verrouillage de l'état en exécutant un `terraform plan` depuis deux terminaux différents et observe le comportement.

### Pour aller plus loin
Ajoute un module réutilisable pour la création d'instances afin de simplifier les prochains projets.

