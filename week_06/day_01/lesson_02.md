# Docker Compose

## 1. Introduction
Lorsqu'une application nécessite plusieurs services (base de données, cache, etc.), Docker Compose simplifie la mise en place de cet environnement.

## 2. Historique et contexte
Compose est un outil officiel de Docker apparu pour orchestrer plusieurs conteneurs à l'aide d'un simple fichier `docker-compose.yml`. Il est devenu incontournable pour développer en local.

## 3. La ressource
### 3.1. Définir un service
Chaque service se décrit par une image et quelques options :

```yaml
services:
  db:
    image: postgres:16
    ports:
      - "5432:5432"
```

### 3.2. Lancer l'ensemble
Une fois le fichier rédigé, démarre tout simplement avec `docker compose up -d` puis arrête avec `docker compose down`.

## 4. Points importants à retenir
- Compose permet de décrire plusieurs conteneurs dans un seul fichier.
- Les ports et volumes se configurent aisément pour chaque service.

## 5. Pour aller plus loin
Parcourez les exemples du site officiel pour découvrir d'autres options, notamment les réseaux et la variable `depends_on`.

