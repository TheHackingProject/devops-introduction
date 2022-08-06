# Automatiser la création des VM

## 1. Introduction
Dans ce project tu vas automatiser la création de tes VM à l'aide de Vagrant.

## 2. Le projet
### 2.1. Scénario
Félicitation, grâce à tes prises d'initiatives, ton lead dev en accord avec le CTO a décidé de ne pas renouveler ta période d'essai et te confirmer la prise à effet immédiat de ton CDI.

Tu vas enfin commencer à te concentrer sur ton apprentissage au lieu de passer ton temps à faire des tests techniques et des entretiens.

Quelques jours plus tard, on a de nouveau de besoin de toi, car l'équipe SysOps n'est toujours pas rentrée de vacances.

Le script de test que tu as écrit il y a quelques jours est génial, mais il ne marche que sur une VM de type Ubuntu 18.04.
Alors que l'application ROR doit fonctionner sur `Ubuntu 18.04`, `RHEL 7`, `Debian 10`, `Centos 8` et `alpine64`.

Au vu de ces nouvelles contraintes, une réunion de conception à laquelle tu es conviée, est organisée.
Soudain, en plein milieu de la réunion, tu as une illumination et dis tout haut, VAGRANT, les autres ne comprenant pas, te regardes à la recherche d'une quelconque réponse sur ton visage plein de certitudes.
Remarquant tous les regards posés sur toi, tu expliques les raisons qui te poussent à croire que la technologie Vagrant est la solution.

Convaincus par ta plaidoirie, les membres de la réunion valident l'utilisation de `Vagrant` et décident de te confier sa mise en place.

Te voilà, de nouveau dans une salle affaire :smile:.

### 2.2. La feuille de route.
Suite à la décision générale de te confier la mise en place de la solution via Vagrant. 
Le lead dev, a vu petit à petit ta tête se décomposer, et à la vue de tant de désespoir, a décidé de t'aider avec ces instructions :

1. À l'aide du `Vagrantfile`, lance d'abord les différents types de VM (Ubuntu 18.04, Debian 10, RHEL 7, Centos 8, alpine64).
   
   Fais attention aux ressources que tu alloues à chaque VM, il va dépendre des ressources de ta machine. Penses à bien les répartir !


2. Pour chaque type de guest, écris le shell script qui va permettre de lancer l'application ROR. 
  
  Comme hier, utilise l'application ROR de ton choix, parmi ceux que toi ou ton équipe avaient déjà réalisé dans le parcours Fullstack.

  Chaque script shell doit suivre les opérations ci-dessous.


#### 2.2.1. Script - Shell Niveau 1.
Opération à suivre pour chaque type de VM :

1. Sur ta machine ou directement sur le guest (à l'aide de nano, vi ou vim) écrit un script shell composé de plusieurs étapes :
   1. Installer tous les éléments nécessaires au lancement d'une application ROR.
   2. Pull l'application depuis Github/Gitlab.
   3. Lancer l'application ROR et informer l'utilisateur de son statut (`stop, running`).
   4. Envoyer les logs de l'application dans un fichier `app.logs`, qui se trouvera sur le chemin relatif `~/ror_app/` dans le guest.

      PS. Le fichier et le dossier n'existent pas encore 😉.
   

3. Depuis le host, via ton navigateur préféré, verifies que ton application marche bien. 😄
   
   PS. Attention le port de ton application dans le guest doit être accessible depuis le host.


## 3. Rendu attendu
Un repo qui contient le Vagrantfile et les scripts shell de chaque type de VM ainsi qu'un `README.md` qui explique comment on utilise ce repo.

Petit conseil :
- Pense à suivre les conventions Shell que tu as apprises il y a deux jours.


- N'hésite pas à créer plusieurs petits scripts shell par type de VM si tu en ressens le besoin.


- N'oublie pas que tu peux depuis le VagrantFile, gérer les ports de chaque VM et y référencer des scripts shell qui seront lancés à la création de celles-ci.

