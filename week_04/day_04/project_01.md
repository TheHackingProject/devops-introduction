# Monitorer son infrastructure

## 1. Introduction
Le projet du jour consiste à monitorer ton infrastructure composée d'instances EC2 et d'une BDD `on-premise`
Dans notre cas, la partie `on-premise` sera représenté par une VM Vagrant dans laquelle sera installé une BDD (mysql, mongo ou postgrewSQL)

## 2. Le projet
### 2.1. Scénario

De retour dans ta super startup, deux semaines sont passées depuis le nouvel an. Les périodes de forte activités sont passées et l'ambiance est plus relax dans le service IT.
Le CTO bien qu'il a l'air moins fatigué, à cependant l'air soucieux. 
Et pour cause, Jerome le devops qui a maintenant pris l'habitude de te faire une synthèse des réunions quotidiennes entre lui et le CTO,
t'as hier raconté que maintenant que la période de forte activité a baissé, 
la team business commence à lui mettre la pression pour qu'il accélère la migration vers le cloud.

Jerome a aussi ajouté que lorsque tu étais la semaine dernière en vacances la BDD est devenu lente pendant plus de 3 H 00, 
car plusieurs éléments ont conduit à la surchauffe du serveur qui abrite la BDD.
Après investigation, il s'avère que la source du problème était due à une surconsommation du CPU sur le serveur.
Ce n'est qu'en fin de la semaine dernière que la décision a été prise 
de monitorer ce serveur en utilisant une solution Cloud.

Pour défendre la solution prise par le CEO et le CTO, Jerome a ajouté qu'il n'était pas trop pour le fait de seulement monitorer le serveur où se trouvent la DBB, 
mais qu'il fallait également trouver un moyen de monitorer les requêtes SQL lentes et les optimiser.

En repensant à cette conversation, tu te dis que Jerome à raison,
mais que le dernier mot revient toujours au CEO et CTO.

D'un coup, tu réalises que tu es en train de rêvasser, et decides te mettre au travail pour finir le ticket créer par Jerome concernant un POC sur le monitoring d'un VM `on-premise` où se trouve une DBB.

### 2.2. Feuille de route
#### 2.2.1. CRéer l'infra

#### 2.2.2. Monitorer l'instance EC2

- métriques (RAM; CPR, disque space, logs)
- alarms
- events


---
##### 🚀 ALERTE BONNE ASTUCE

---

#### 2.2.3. Monitorer serveur on-premise

- métrique à surveiller sur un serveur qui abritent une DBB, logs de la BDD
- alarms
- events


## 3. Rendu attendu
Un repo github ....

Project :
- créer une partie de l'infrastructure avec le code
- Pre-signed URL AWS S3.
