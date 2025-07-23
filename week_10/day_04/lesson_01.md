# Helm pour Kubernetes

## 1. Introduction
Helm simplifie le déploiement d'applications complexes en regroupant tous les
manifestes dans un package appelé chart.

## 2. Historique et contexte
Helm, apparu en 2016, a apporté une couche de templating qui simplifie la distribution d'applications Kubernetes.

## 3. La ressource
### 3.1. Installation
Installe Helm sur ta machine puis ajoute un dépôt de charts public tel que
`bitnami`.

### 3.2. Créer un chart
La commande `helm create monchart` génère la structure d'un chart. Les fichiers
`values.yaml` permettent de personnaliser facilement les variables.

### 3.3. Déployer un chart
Un simple `helm install` suffit à installer l'application. Tu peux ensuite
mettre à jour les valeurs avec `helm upgrade`.

## 4. Points importants à retenir
- Helm rend la réutilisation et la mise à jour plus faciles.
- Les charts doivent rester versionnés comme n'importe quel code.
- Les valeurs par défaut se surchargent très simplement via un fichier YAML.

## 5. Pour aller plus loin
Consulte la documentation officielle pour approfondir.
