# Customiser les VM à l'aide Vagrant

## 1. Introduction
Hier, tu as découvert l'utilité de Vagrant et comment l'utiliser, aujourd'hui on va aller plus loin dans l'utilisation de Vagrant.


## 2. Une VM aux petits oignons

Avec Virtualbox tu peux customiser un peu prêt tous les éléments de ta VM :
- le hostname
- l'IP privée
- les ports à ouvrir sur ta VM et sur le host
- les capacités en CPU, RAM et disk
- etc.

Et tout ce que tu peux faire avec Virtualbox, tu peux également les faire avec Vagrant.

### 2.1. Créer plusieurs VM customisées
Nous allons commencer par créer un dossier et lancer la commande `vagrant init` dans celui.
Et comme on s'y attend un Vagrantfile va être généré.

![Initial Vagrantfile](../../assets/images/basic-vagrantfile.png)


#### 2.1.1. Définir un hostname
Pour définir un `hostname` spécifique il suffit d'ajouter `config.vm.hostname = "VM_NAME"`

Cette [doc](https://www.maketecheasier.com/hostname-in-linux/) t'expliques en quelques mots pourquoi un hostname peut s'avérer utile.

#### 2.1.2. Définir une IP
Dans certaines infrastructures connaitre les addresses IP des VM est très importants, par exemple une architecture micro-services avec une application par VM nécessite de connaitre les IP de chaque VM pour permettre les interactions entre elles.
Ainsi pour définir l'IP d'une VM, ajoutes ce code `config.vm.network "private_network", ip: "PRIVATE_IP"`.

#### 2.1.3. Ouverture des ports

#### 2.1.3. Limiter les capacités d'une VM.

## 4. Points importants à retenir
La ressource en quelques points importants.

## 5. Pour aller plus loin
Quelques éléments en ligne pour aller plus loin
