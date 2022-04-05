# Dockeriser ses applications - Niveau 2

## 1. Introduction
Aujourd'hui, tu vas reprendre la mini-stack applicatifs (deux applications et une BDD MySQL) du project d'hier et créer son docker-compose.yaml.

## 2. Le projet
### 2.1. Scénario
Il est lundi matin et tu viens d'arriver dans ta super Startup, comme tu les début de journée, tu allumes ton PC, check les mails et les tickets Jira et ensuite tu vas te faire un petit thé.
De retour à ton bureau le thé à la main, tu repenses au week-end que tu viens passer. 
Un week-end remplie de questions sur la manière présenter à ton équipe un workshop plus réaliste, un workshop qui apporte des connaissances applicables au quotidien. C'est finalement après une discussion avec ta pote cheffe de projet dans une autre boite que t'es venu la solution.

Coucou les devs, il est temps de faire le standup !

Oups, la voie de ton lead dev te sors brusquement de ton imagination. Sur ces entre fait, démarre le standup.

Après le standup, le lead dev se dirige vers toi et te dis, cet après-midi tu pourras si tu veux te mettre sur le prochain workshop,
t'as enfin trouvé comment l'orienter, ou tu veux un coup de main ?

Plein d'assurance tu réponds, oui j'ai enfin trouvé et j'ai aussi créé un ticket à ce sujet ce matin !

### 2.2. Du Dockerfile à Docker-compose
#### 2.2.1. Gestion des conteneurs via Docker-compose - Niveau 1
Rappelles toi du project d'hier où tu as Dockeriser une mini-stack composé d'une application ROR, un front en React et une base de donnée Mysql.

Eh bien, je veux que tu lances cette stack à partir avec Docker-compose. 
La stack en entier doit démarrer via la commande `docker-compose up`.

PS. N'oublie de bien prendre en compte la partie volume de ton image mysql.

Et comme je veux que tu t'amuses au maximum voici les prérequis à absolument intégrer dans ton fichier Docker-compose.
 
- la stack doit être sur un réseau Docker custom portant le nom `mini-stack`
- Toutes tes `volumes Docker` doivent être de type `volumes` et non `bind mounts`


## 3. Rendu attendu
Un repo github qui contient le `docker-compose.yaml` et un README qui explique comment démarrer les applications.
