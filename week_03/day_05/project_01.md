# AWS CLI : Niveau 2

## 1. Introduction
Le projet d'aujourd'hui à récréer l'infrastructure de mercredi à l'aide de l'interface de commande d'AWS uniquement.
C'est un défi de taille 🔥, mais tu vas y arriver. J'ai confiance en toi. 💪

## 2. Le projet
### 2.2. Feuille de route
#### 2.2.1. Créer et lancer ton infrastructure sur des instances EC2
1. Lances chaque partie de ton infrastructure sur des instances dédiées :
- ton application ROR préféré (l'API)
- ton application React (le front)
- ta base de donnée (mysql ou mongo au choix)

2. Vérifies que les trois instances arrive à interagir correctement.

3. Fais en sorte que l'instance où réside l'API et la DBB soit accessible qu'en réseau privé.

#### 2.2.2. Absorber les pics de charge avec les services `ALB` et `ASG`.
1. Fais en sorte que l'instance où réside ton front en React soit scalable 
   et soit également derrière un Load Balancer de type `ALB`.

#### 2.2.3. Tester la scalabilité de ton front en React.
Testes la scalabilité de ton infrastructure.

#### 🚀 ALERTE BONNE ASTUCE
- Pense à suivre les conventions Shell que tu as apprises lors de la premiere semaine du parcours**
- N'hésite pas à créer plusieurs petits scripts shell si tu en ressens le besoin.
- N'hésite pas tout au long de ton/tes scripts shell à informer l'utilisateur via le terminal où il en est dans la création de l'infrastructure.
- Pense à vérifier régulièrement que les services que tu crées au fur à mesure sont `up` et prêt à recevoir du traffic.


### 2.3. Condition à respecter
- Ton/tes scripts shell doivent contenir des fonctions.
- Lors de la création de l'`ASG` les éléments concernant `--min-size`, `--max-size`, `--desired-capacity` doivent être choisie par l'utilisateur.
- Pour faciliter la vie des utilisateurs de ton programme, 
  il doit absolument se lancer en une seule commande fait à partir d'un fichier Makefile.


## 3. Rendu attendu
Un repo github qui contient : 
- l'ensemble des scripts shell nécessaire à la création de cette infrastructure,
- un Makefile,
- et un README explicatif.
