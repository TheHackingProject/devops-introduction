# Déployer une instance simple

## 1. Introduction
Pour t'entraîner, tu vas décrire une machine virtuelle basique avec Terraform
et la créer dans le cloud de ton choix.

## 2. Le projet
1. Initialise un répertoire et ajoute un provider.
2. Déclare une ressource `instance` ou équivalent avec l'image et la taille
   que tu souhaites.
3. Lance `terraform apply` et récupère l'adresse IP publique.
4. Ajoute une sortie (`output`) pour afficher automatiquement cette adresse.
5. Détruis la ressource avec `terraform destroy` une fois le test terminé pour éviter des frais inutiles.

## 3. Rendu attendu
Un dépôt contenant tes fichiers `.tf` et un petit `README` expliquant la
commande utilisée pour créer l'instance.
N'oublie pas d'indiquer la version de Terraform et du provider utilisés pour faciliter la reproduction du projet.

### Pour aller plus loin
Teste d'autres providers (par exemple `azurerm` ou `google`) pour comparer les options disponibles.
4. Pense à détruire la ressource avec `terraform destroy` une fois le test terminé pour éviter des frais inutiles.

