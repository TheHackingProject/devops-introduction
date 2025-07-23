# Protéger ses secrets

## 1. Introduction
Les secrets (mots de passe, clés API...) doivent être stockés avec soin pour
éviter toute fuite compromettante.

## 2. Historique et contexte
La protection des secrets existe depuis longtemps ; des outils comme Vault ont été pensés pour centraliser ces données sensibles.

## 3. La ressource
### 3.1. Vault
HashiCorp Vault permet de centraliser les secrets et de contrôler précisément qui
y accède. Il peut également générer des identifiants temporaires.

### 3.2. Variables d'environnement
Pour des besoins simples, les variables d'environnement restent une bonne option.
Pense à les injecter dans tes conteneurs via ton outil CI sans les commiter.

### 3.3. Chiffrement des fichiers
Lorsque tu dois conserver un fichier de configuration sensible, chiffre-le avec
GnuPG ou age et partage la clé de déchiffrement uniquement avec les personnes
habilitées.

### 3.4. Intégration dans la CI
Pour que les secrets restent confidentiels, définis-les au niveau de ton outil CI.
Les variables "secrètes" ne s'affichent jamais dans les logs et se transmettent
aux jobs de manière sécurisée.
### 3.5. Exemple GitHub Actions
Voici un exemple de workflow qui récupère un secret et l'utilise pour se connecter à une base de données :
```yaml
name: CI
on: [push]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - run: psql ${{ secrets.DB_URL }} -c 'SELECT 1;'
```
L'URL de la base est stockée du côté de GitHub et n'apparaît pas dans le code ni dans les logs du job.
### 3.6. Secrets Kubernetes
Si tu déploies sur Kubernetes, stocke les informations sensibles dans un objet `Secret` et monte-les sous forme de variable d'environnement ou de fichier.
```bash
kubectl create secret generic db-creds --from-literal=username=demo --from-literal=password=pass
```
Pense à utiliser un namespace spécifique aux secrets et à restreindre les droits d'accès.
### 3.7. Bonnes pratiques supplémentaires
- Active l'audit sur l'accès aux secrets pour savoir qui les a consultés.
- Renouvelle périodiquement les clés d'accès.
- Utilise un chiffrement de disque lorsque des fichiers sensibles sont stockés localement.
## 4. Points importants à retenir
- Ne stocke jamais les secrets en clair dans le dépôt git.
- Préfère un gestionnaire dédié dès que possible.
- Renouvelle régulièrement les clés et les mots de passe.

## 5. Pour aller plus loin
Consulte la [documentation officielle de Vault](https://developer.hashicorp.com/vault/) ou celle de ton outil CI pour approfondir.
