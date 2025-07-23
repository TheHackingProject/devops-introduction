# Sécurité des conteneurs

## 1. Introduction
Les conteneurs offrent une isolation légère mais il faut tout de même appliquer
des règles pour éviter les failles.

## 2. Historique et contexte
Avec l'essor des conteneurs, des scanners comme Clair ou Trivy sont apparus pour contrôler les images.

## 3. La ressource
### 3.1. Images minimalistes
Utilise des images de base petites (Alpine, Debian slim) pour réduire la surface
d'attaque et les dépendances inutiles.

### 3.2. Droits utilisateur
Évite de lancer tes applications en tant que `root` dans le conteneur. Crée un
utilisateur dédié avec les permissions minimales nécessaires.

### 3.3. Analyse des images
Des outils comme Trivy ou Clair scannent les images et listent les
vulnérabilités connues. Intègre ces scans à ta CI.

### 3.4. Utiliser des conteneurs non privilégiés
La plupart des images officielles proposent une exécution sous un utilisateur spécifique. Adapte ton `Dockerfile` pour créer cet utilisateur et travaille sans privilèges élevés.
### 3.5. Signer les images
La signature numérique garantit l'authenticité de l'image. Des outils comme cosign permettent de vérifier qu'aucun tiers n'a modifié l'image poussée sur le registre.
### 3.6. Surveillance
Combine des outils comme Falco ou Sysdig pour détecter les comportements suspects en temps réel et alerter l'équipe de sécurité.
## 4. Points importants à retenir
- Les images officielles sont régulièrement mises à jour.
- Limite au maximum les privilèges accordés aux conteneurs.
- Automatise les scans pour rester informé des failles publiées.

## 5. Pour aller plus loin
Consulte la documentation officielle pour approfondir, et regarde les conseils de la [CIS Docker Benchmark](https://docs.cisecurity.org/) pour renforcer la configuration.
