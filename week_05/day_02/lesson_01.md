# Variables avancées dans GitHub Actions

## 1. Introduction
Tu sais désormais lancer un workflow basique. Aujourd'hui, on va pousser un peu plus loin afin de le rendre vraiment dynamique. Pour cela, GitHub Actions met à ta disposition un grand nombre de variables que tu peux exploiter pour adapter ton pipeline à toutes les situations.

## 2. Historique et contexte
GitHub Actions a été lancé en 2018. Les variables, secrets et contextes sont apparus pour personnaliser les workflows tout en restant sécurisés.

## 3. La ressource
### 2.1. Les variables d'environnement
Dans un fichier de workflow, la clé `env` permet de définir des variables accessibles dans toutes les étapes. Elles sont très utiles pour partager un chemin ou une option entre plusieurs actions.

```yaml
env:
  APP_ENV: production
  PACKAGE_VERSION: 1.0.0
```

Ces variables sont ensuite disponibles dans chaque `run` ou action avec la syntaxe `${{ env.APP_ENV }}`.

### 2.2. Les secrets
GitHub propose un coffre-fort pour stocker des informations sensibles comme des clés API. Les secrets sont appelés avec `${{ secrets.NOM_DU_SECRET }}` et ne sont jamais affichés en clair dans les logs.

### 2.3. Les contextes
Lorsque tu as besoin de données spécifiques au repo ou au job, les contextes entrent en jeu. Le contexte `github` te donne par exemple accès au nom de la branche ou du dépôt. Combine-les avec des expressions pour créer des conditions plus intelligentes.

### 2.4. Stratégies d'environnements
Depuis la console GitHub, tu peux définir des variables et secrets propres à un environnement. Cela permet d'avoir des valeurs différentes en fonction de la branche ou du contexte de déploiement (`staging`, `production`, etc.).

### 2.5. Utiliser les variables de sortie
Certaines actions retournent des valeurs au moyen de la commande `set-output`. Tu peux récupérer ces résultats dans les étapes suivantes pour chaîner intelligemment tes jobs ou déclencher des déploiements conditionnels.

## 4. Points importants à retenir
- `env` partage des variables simples entre toutes les étapes.
- Les secrets sont chiffrés et cachés dans les logs.
- Les contextes fournissent une multitude d'informations utiles sur ton workflow.

## 5. Pour aller plus loin
La [documentation officielle](https://docs.github.com/fr/actions) regorge d'exemples. Jette aussi un oeil à l'article "Environment variables" dans la doc pour découvrir toutes les possibilités.
