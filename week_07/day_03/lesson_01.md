# Utiliser des modules Terraform

## 1. Introduction
Quand les infrastructures grossissent, il est indispensable de factoriser le
code. Les modules t'aident à réutiliser des blocs communs.

## 2. Historique et contexte
Les modules Terraform permettent de factoriser le code, une pratique encouragée depuis les premières versions de l'outil.

## 3. La ressource
### 2.1. Créer un module
Un module est simplement un dossier contenant des fichiers `.tf`. Place-y les
ressources que tu veux rendre réutilisables, comme un réseau ou une base de
données.

### 2.2. Appeler un module
Dans ton `main.tf`, utilise la ressource `module` pour appeler le code du
module. Tu peux passer des variables d'entrée et récupérer des outputs.

### 2.3. Workspaces
Les workspaces permettent de garder plusieurs environnements avec le même code
(source, staging, production). Ils se gèrent avec `terraform workspace new` et
`select`.

## 4. Points importants à retenir
- Les modules améliorent la lisibilité et la maintenance.
- Organise tes variables et outputs pour faciliter la réutilisation.
- Les workspaces sont pratiques pour séparer les environnements.

### 2.4. Sources de modules
Les modules peuvent provenir d'un chemin local, d'une URL Git ou du Registry officiel. Versionne-les avec un tag pour garantir la reproductibilité.

### 2.5. Composition
Rien n'empêche d'utiliser un module à l'intérieur d'un autre pour construire des architectures complexes tout en conservant une structure claire.

## 5. Pour aller plus loin
- Parcours le [Terraform Registry](https://registry.terraform.io/) pour trouver des modules maintenus par la communauté.
- Le guide officiel "Module Development" détaille les bonnes pratiques pour écrire tes propres modules.

