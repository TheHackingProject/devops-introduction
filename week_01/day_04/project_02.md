# Programme Shell - Niveau 2

## 1. Introduction
Dans ce projet, tu vas améliorer le programme Shell de création de compte, que tu as créé il y a 2 jours.

## 2. Le projet
### 2.1. Scénario
Dans ta super Startup, ton programme de création de compte à grandement soulager le process d'intégration des nouvelles personnes.

Cependant, les managers qui exécutent le programme, sont fatigués de chercher à chaque des mots de passes différents pour chaque compte.
Ce qui à terme va poser quelques problèmes de sécurité et traçabilité dans les différents services, si les mots de passes de chaque collaborateur est identique.

De ce fait ton lead dev, te demander d'améliorer cette partie, en générant des mots de passe aléatoire.

### 2.2. Instructions
Comme d'habitude ton lead dev à écrit quelques instructions à suivre, histoire de te guider :

#### 2.2.1. Refactorer et améliorer to script
1. Remplacer la commande `read` par un argument pour le `username`.
2. Si l'exécuteur du programme ne fournit pas d'arguments, affiche un message explicatif.
3. L'exécuteur peut avoir la possibilité d'ajouter un commentaire à la création du `username`.  
4. Générer un mot de passe aléatoire.
5. Avec le `usrname` et le mot de passe généré, créer le compte.
6. Afficher le `username` et le mot de passe.

Comme d'habitude tout au long du script shell informe l'exécuteur de l'état d'avancement,
par des commentaires dans le terminal.

#### 2.2.3. Vérifier son script sur plusieurs environnements
Une fois ton script shell terminer :
- Créer deux VM à l'aide Vagrant de type alpine et Debian.
- Lance le script à l'intérieur de ces deux VM.


## 3. Rendu attendu
Un repo github avec le script shell référencer dans un Vagrantfile.