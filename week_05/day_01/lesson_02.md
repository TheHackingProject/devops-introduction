# Github Actions : Focus sur Actions
Description de la ressource au format texte et en 1 paragraphe max (pas plus)

## 1. Introduction
qu'est ce qu'un action, pourquoi c'est nécessaire ?


## 2. La ressource
### 2.1. Utiliser une action

```yaml
name : Uses Actions in workflow

on: [push]

jobs:
  use-github-actions:
    run-on: ubuntu-latest
    steps:
      - name: First Action
        id: greet
        uses: actions/hello-world-javascript-action@v1.1
        with:
          wo-to-greet: Pataya
      - name: Log Greeting time,
        run: echo "${{ steps.greet.outputs.time }}    
```

- explications : du yaml
- sur l'action: 
  - du code
  - 

### 2.2. L'action Checkout



## 3. Points importants à retenir


## 4. Pour aller plus loin
Pas besoin pour l'instant
