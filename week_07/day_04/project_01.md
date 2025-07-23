# Pipeline Terraform

## 1. Introduction
Mettons en place une automatisation basique pour valider et appliquer ton code.

## 2. Le projet
1. Crée un fichier de pipeline (GitHub Actions ou autre) exécutant `terraform fmt`.
2. Ajoute une étape de `terraform plan`.
3. Ajoute enfin un `terraform apply` conditionné à une validation manuelle.
4. Stocke les variables sensibles dans le gestionnaire de secrets de ta plateforme CI.

## 3. Rendu attendu
Ton dépôt doit contenir le fichier de pipeline et la configuration nécessaire
pour lancer automatiquement les plans.
4. Utilise un backend à distance afin de partager l'état entre tes exécutions de pipeline.

### Pour aller plus loin
Intègre un outil de lint comme `tflint` dans ton pipeline pour détecter les erreurs avant l'exécution du plan.

