# Monitorer son infrastructure

## 1. Introduction
Le projet du jour consiste à monitorer ton infrastructure composée d'instances EC2 et d'une BDD `on-premise`
Dans notre cas, la partie `on-premise` sera représenté par une VM Vagrant dans laquelle sera installé une BDD (mysql, mongo ou postgrewSQL)

## 2. Le projet
### 2.1. Scénario

De retour dans ta super startup, deux semaines sont passées depuis le nouvel an. Les périodes de forte activités sont passées et l'ambiance est plus relax dans le service IT.
Le CTO, bien qu'il ait l'air moins fatigué, à cependant l'air soucieux. 
Et pour cause, Jerome le devops qui a maintenant pris l'habitude de te faire une synthèse des réunions quotidiennes entre lui et le CTO,
t'as hier raconté que maintenant que la période de forte activité a baissé, 
la team business commence à lui mettre la pression pour qu'il accélère la migration vers le cloud.

Jerome a aussi ajouté que lorsque tu étais la semaine dernière en vacances la BDD est devenu lente pendant plus de 3 H 00, 
car plusieurs éléments ont conduit à la surchauffe du serveur qui abrite la BDD.
Après investigation, il s'avère que la source du problème était due à une surconsommation du CPU sur le serveur.
Ce n'est qu'en fin de la semaine dernière que la décision a été prise 
de monitorer ce serveur en utilisant une solution Cloud.

En commentaire cette solution, Jerome a ajouté qu'il n'était pas trop pour le fait de seulement monitorer le serveur où se trouvent la DBB, 
mais qu'il fallait également trouver un moyen de monitorer les requêtes SQL lentes et les optimiser.

En repensant à cette conversation, tu te dis que Jerome à raison,
mais que le dernier mot revient toujours au CEO et CTO.

D'un coup, tu réalises que tu es en train de rêvasser, 
et decides te mettre au travail pour finir le ticket créé par Jerome concernant 
un POC sur le monitoring d'une VM `on-premise` où se trouve une DBB.

### 2.2. Feuille de route
#### 2.2.1. Créer l'infrastructure
Dans cette partie tu vas devoir créer l'infrastructure composée de d'une instance EC2 et d'une VM `on-premise`.

La première instance devra abriter une application ROR (par exemple celle que tu as créée lors de ton projet final du parcours Développeur).
Bien sûr, cette instance devra être créée à l'aide d'AWS CLI et de la fonctionnalité `user-data` du service EC2.

Et la VM qui abrite ta BDD (mysql ou mongoDB) devra être créée à l'aide de Vagrant et du classique Vagrantfile 😉.


#### 2.2.2. Monitorer ton application ROR
Dans cette partie : 
1. Tu vas depuis la console AWS, dans le service AWS CloudWatch créer 
   un tableau de bord qui regroupe les métriques de ton instance EC2.  
   Dans ce tableau de bord, les métriques suivantes doivent apparaitre :
   - CPU
   - RAM
   - NetworkIn
   - NetworkOut

Libra à toi d'ajouter dans ce tableau de bord d'autres métriques qui te semblent pertinentes. 😉

#### 2.2.3. Monitorer ton serveur on-premise
Tous comme dans la partie ci-dessus crée un tableau de bord spécifique pour ce serveur.
Dans ce tableau de bord, les métriques suivantes doivent apparaitre :
- CPU
- RAM
- DiskReadBytes
- DiskWriteBytes

Encore une fois, tu es libre d'ajouter d'autres métriques,
si elles te semblent pertinentes pour monitorer un serveur qui abrite une BDD.

---
#### 🚀 ALERTE BONNE ASTUCE
N'oublie pas ! 
Pour récupérer la RAM de ton instance ou serveur `on-premise`, 
tu dois d'abord installer et configurer l'agent CloudWatch. 
---


## 3. Rendu attendu
Libre à toi d'organiser le repo comme tu le souhaites 🙂, 
néanmoins ce repo doit contenir pour chaque partie :
- les scripts, ont permis de créer ton infrastructure
- un screen de ton tableau de bord CloudWatch.
- un Vagrantfile si nécessaire.
- un README qui contient : 
  - le schéma de ton infrastructure 
  - comment cette infrastructure fonctionne
  - et comment lancer cette infrastructure depuis une commande Makefile



