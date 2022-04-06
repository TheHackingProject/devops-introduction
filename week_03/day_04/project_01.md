# Challenges IAM

## 1. Introduction
Le projet du jour sera sous forme de challenges. Au fur à mesure des challenges, tu vas aborder tous les concepts que l'on a vus durant le cours jours.
Car en fin de compte la connaissance sans la pratique est comme des paroles en l'air, elle s'évanouit au fil de temps.
Wouais je sais ! J'aurais dû être poète, bon allez trève de bavardages.


## 2. Le projet
### 2.1. Challenge n°1 : Héberger son front en React sur S3 manuellement.

Dans ce challenge je veux que tu héberges un front en React sur un bucket `S3`.
Si tu n'as pas de front React sous la main libre à toi d'en trouver un sur Github 
ou tout simplement héberger un front React vide (avec juste la page d'accueil par défaut de React). 


### 2.2. Challenge n°2 : Héberger son front en React sur S3 avec AWS CLI.

Crée un nouveau bucket S3 et héberge à nouveau ton front React mais cette fois-ci via un script Shell et en t'aidant de `AWS CLI`

Nous avons jusqu'à maintenant jamais vu `AWS CLI`, 
mais ce n'est pas grave, 
car la [documentation d'AWS](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html) et Google sont là pour t'aider.

### 2.4. Challenge n°3 : Manager les permissions d'un service AWS.

1. Crées une instance EC2.
2. Permette à cette instance d'uniquement lire et lister les éléments qui se trouvent dans ce bucket `mycompanny-prod`

##### 2.4.1 ALERTE BONNE ASTUCE
Dans les instances EC2, AWS a fait en sorte que `AWS CLI` soit installé par défaut 😄.


### 2.4. Challenge n°4 : Créer un des utilisateurs AWS avec des permissions différentes.

1. Crées un bucket nommé `mycompanny-prod` à l'intérieur de celui-ci crées deux dossiers, `mycompanny-prod/sensible_client_pdf/*` et `mycompanny-prod/users_picture_profile/*`
2. Crées 6 nouveaux `user`, nommes les comme tu veux.
3. Crées un groupe nommé `Developers` composé de 4 personnes, ce groupe aura uniquement les permissions de :
   - uniquement se connecter aux instances EC2.
   - lire et lister les photos qui se trouvent dans le dossier `mycompanny-prod/users_picture_profile/*`.
   - ne pas du tout avoir l'accès à ce dossier `mycompanny-prod/sensible_client_pdf/*`
4. Crées un groupe nommé `Lead_Dev` composé de 1 personne en dehors des 4 personnes du groupe `Developesr`, ce groupe aura les permissions de :
   - se connecter aux instances 
   - attacher et détacher des volumes EBS sur les instances
   - uniquement créer des instances EC2
   - uniquement créer des volumes EBS
   - lire, lister et ajouter des photos dans le dossier `mycompanny-prod/users_picture_profile/*`.
   - lire et lister les photos de ce dossier `mycompanny-prod/sensible_client_pdf/*`.
   - uniquement ajouter des photos dans le dossier `mycompanny-prod/sensible_client_pdf/*`.
5. Crées un autre groupe nommé `CTO` qui comprend la dernière personne qui n'appartient à aucun groupe pour le moment, ce groupe aura les permissions des `Developers`, des `Lead_Dev` et en plus :
  - supprimer des instances EC2
  - supprimer des volumes EBS
  - supprimer tous ceux qui se trouvent dans le bucket `mycompanny-prod` à la seule condition la personne qui est dans le groupe `CTO` soit authentifié via le MFA.

   

## 3. Rendu attendu
Un repo github qui contient pour le :
- Challenge n°1, l'URl de ton front hébergé sur S3.
- Challenge n°2, le script Shell qui t'a permis de déployer ton projet React sur S3.
- Challenge n°3, le document JSON des accès que l'instance EC2 possède.
- Challenge n°4, les documents JSON des permissions que possède chaque groupe d'utilisateurs.
