# Petit programme Shell en guise d'entrée
## 1. Introduction
Le but ce programme est de créer un script shell qui va ajouter des utilisateurs au système Linux sur lequel il s'exécute.

## 2. Le projet
### 2.1. Scénario
Tu es dev pour une super Startup, qui gère une infrastructure on-premise 
(:informations_source: `infrastructure on-premise` veut dire que vos applications et services tournent sur les serveurs physiques possédés par l'entreprise), 
chaque nouvelle personne qui intègre cette Startup doit avoir un compte Linux. 
Ces comptes sont habituellement créés par l'équipe SysAdmin, mais il s'avère que par un malheureux imprévu, ils aient pris leurs vacances en même temps :). 
Mais toi super dev qui as des connaissances en Shell script, tu te proposes d'écrire un super programme de création de compte, comme ça à l'avenir n'importe qui pourra créer un compte sans avoir besoin de l'équipe SysAdmin.


### 2.2. Instructions
Oulala, mais dans quelle galère tu t'es embarqué. Bon je vais t'aider un peu :

Ton script shell - Niveau 1:
- se nommera `add-local-user.sh`

- il devra être exécuté par le superuser (root) via la command `sudo`. 
  Si le script n'est pas exécuté par le superuser, il renverra un gentil message d'erreur de type `Only superuser can execute this script`

- Dans le script, demande à l'utilisateur d'entrer le `username` et le mot de passe initial du compte.

- Dans le script, crée un nouveau compte avec les informations saisies par l'exécuteur du programme.

- Informe l'exécuteur si le compte ne sait pas créer, peu importe la raison et affiche un message explicatif.

- Affiche le `username` et le mot de passe du compte crée


Ton script shell - Niveau 2:
- Force le futur possesseur du compte à changer de mot de passe à la première connexion


- À la fin du script shell niveau 1, ajoute des informations sur la création du compte :
  - Vérifie dans le fichier `/etc/passwd` si le compte s'est bien crée avec un regex qui compare le `username` et les informations du fichier.
  - Selon le résultat du test affiche un message d'erreur ou la ligne du fichier `/etc/passwd` qui matche.


- Si des erreurs apparaissent tout au long de l'exécution du script, envoient les, dans ce fichier `add-local-user.err`.

## 3. Rendu attendu
Un repo github qui contient ton magnifique script.
