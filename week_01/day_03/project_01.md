# Interaction avec une VM

## 1. Introduction
Dans ce projet, tu vas créer une VM à l'aide de Virtualbox, et lancer une application ROR dans cette VM.

Pour ce qui est de l'application ROR, toi et ton groupe en avez déjà réalisé plusieurs, vous avez l'embarras du choix <emoji>.

## 2. Le projet
### 2.1. Scénario.
Avec ta prise d'initiative d'hier sur la mise en place d'un script de création des nouveaux utilisateurs. 
Le CTO à de nouveau regarder ton CV afin d'estimer ton vrai potentiel. 
En parcourant ton CV, cette fois-ci attentivement <emoji>, il remarque tu as des connaissances en virtualisation.

Ça tombe bien s'exclame-t-il ! J'avais justement besoin de faire quelques testes sur une application avant sa mise en production.
Tout joyeux, il se met à rédiger des instructions concernant le test qu'il veut que tu réalises. <emoji>


### 2.2. La feuille de route
Voici les instructions que le CTO a écrites, en vue de tester une application ROR avant sa mise en production.

PS. Tu vas avoir besoin d'ouvrir un port spécifique sur le `guest` et le faire correspondre un port spécifique du host, de manière à pouvoir 
vérifier que ton application s'est bien lancé à l'intérieur du `guest`.
C'est une chose que l'on n'a pas abordé dans le cours,
mais je suis sûr que tu es capable de trouver par tes propres moyens comment faire :).

#### 2.2.1. Script - Shell Niveau 1.
1. Depuis ta machine (host), crée une VM (guest) de type Ubuntu 18.04.


2. Sur ton host ou directement sur le guest (à l'aide de nano, vi ou vim) écrit un script shell composé de plusieurs étapes :
   1. Installation de tous les éléments nécessaires au lancement d'une application ROR.
   2. Pull l'application depuis ton repo Github/Gitlab.
   3. Lancer l'application ROR et informer l'utilisateur de son status (`stop, running`).
   4. Envoyer les logs de l'application dans un fichier `app.logs`, qui se trouvera sur le chemin relatif `~/ror_app/` dans le guest. 
      
      PS. Le fichier et le dossier n'existent pas encore <emoji>.
   
  
3. Lance ton script dans le guest.


4. Depuis le host, via ton navigateur préféré, verifies que ton application marche bien.
   <emoji> Attention le port de ton application dans le guest doit être accessible depuis le host.


#### 2.2.2. Script Shell - Niveau 2
Une fois que tu as finis le script shell de niveau 1 :

1. Fais en sorte qu'à chaque étape un message indique à l'utilisateur de ton l'état d'avancement du script.

2. Choisis une application ROR qui possède `des testes unitaires ou fonctionnelles`. 

   Ensuite adapte le script pour que celui-ci lance les testes avant démarrer l'application.

   Si les testes échouent, envois les erreurs dans ce fichier `app.err`, qui sera placé sur le guest, dans ce chemin relatif `~/ror_app/`


## 3. Rendu attendu
Un joli repo qui contient le script ainsi qu'un `README.md` qui explique comment celui-ci fonctionne et dans quelle situation il fonctionne. 

Petit conseil : 
- Pense à suivre les conventions Shell que tu as apprises hier.**
- N'hésite pas à créer plusieurs petits scripts shell si tu en resents le besoin.
