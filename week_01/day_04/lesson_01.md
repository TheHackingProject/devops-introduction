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

![Box with customized hostname](../../assets/images/box-with-hostname.png)

Lances la commande `hostmane` dans la VM, pour voir le résultat


#### 2.1.2. Définir une IP
Dans certaines infrastructures connaitre les addresses IP des VM est très importants, par exemple une architecture micro-services avec une application par VM nécessite de connaitre les IP de chaque VM pour permettre les interactions entre elles.
Ainsi pour définir l'IP privée d'une VM, ajoutes ce code `config.vm.network "private_network", ip: "PRIVATE_IP"`.

PS. Voici [piqûre de rappel](https://whatismyipaddress.com/private-ip) sur les IP privées et publiques. 

![Box with customized hostname](../../assets/images/box-private-ip.png)

Lances la commande `hostname -I | awk '{print $2}'` dans la VM pour tester.

#### 2.1.3. Ouverture des ports
Un port de la VM peut être partagé sur un des ports du host, avec cette ligne `config.vm.network :forwarded_port, guest: VM_PORT, host: HOST_PORT`. 
Ainsi, il devient possible d'accéder à la VM depuis votre host, 
ce qui peut être intéressant par exemple lorsque l'on veut accéder à une application qui tourne dans la VM depuis le host.

![Box with customized hostname](../../assets/images/box-port-forwarding.png)

Pour tester on va installer un serveur Apache dans la VM avec ces commandes :

:information_source: Pour informations la distribution Centos utilise un gestionnaire de paquets, `yum`, différent de la distribution Ubuntu, `apt`, que l'on connait habituellement.

```shell
# Update yum packages
sudo yum -y update 

# Install apache server
sudo yum -y install httpd 

# Start apache server
sudo systemctl start httpd
```

Ensuite depuis le host, sur votre navigateur préféré vas sur ce lien `localhost:8080`


#### 2.1.3. Limiter les capacités d'une VM.
Lorsque l'on commence à lancer plusieurs VM, il devient indispensable d'ajuster les capacités de la VM aux éléments qui vont tourner à l'intérieur ainsi qu'aux capacités du host.
Pour cela, il est nécessaire de passer par le provider `virtualbox`.

![Box with customized hostname](../../assets/images/box-limit-capacities.png)

Pour tester lances depuis la VM ces commandes
```shell
# get CPU
grep -c processor /proc/cpuinfo

# get memory
echo "Memory: $(grep -c MemTotal /proc/meminfo)"
```

#### 2.1.4 Lancer plusieurs VM
Avec le Vagrantfile lancé plusieurs VM customisé ou non devient un jeu d'enfant.

![Vagrant multi VMs](../../assets/images/vagrant-multi-VMs.png)

Comme tu peux le voir, ce n'est que du Ruby, tout est là, pas besoin d'explications. :).


#### 2.1.5. 🚀 ALERTE BONNE ASTUCE
- Si tu fais des changements dans le Vagrantfile, tu dois d'arrêter et relancer ta VM via ces commandes :

```shell
# Stop a Vagrant box
vagrant halt

# Restart your Vagrant box
vagrant up
```

- ou tu peux utiliser ce raccourci :
```shell
# Stop and restart Vagrant box
vagrant releao
```

- Lorsque tu commences à avoir plusieurs VM managé le workflow de chaque VM peut s'avérer utile.
  Pour ce faire rien de plus simple, il suffit de lancer ta commande en ajoutant le `hostname` 
  défini à l'aide de cette ligne `config.vm.define node[:hostname]`. Par exemple :

```shell
# Up only the VM that has 'api-microservice' hostname
vagrant up api-microservice
```


## 4. Points importants à retenir
Vagrant te donnes la possibilité de reproduire, adapter et partager to environnement de produire de production.
Cependant, penses toujours 
- aux capacités du host, pour éviter ton PC crash.
- aux ports que tu ouvres le host, pour ne y avoir de conflits, notamment lorsque tu veux `port forward` des port connue de type :
  - rabbitmq: 5672
  - http: 80 et https: 443
  - mongodb: 27017 et mysql: 3306
  - etc.


## 5. Pour aller plus loin
Comme je t'ai plus haut, avec Vagrant ainsi que c'est provider on peut aller très loin dans la customisation d'une VM.
Pour en savoir plus la [doc officielle de Vagrant](https://www.vagrantup.com/docs) est une valeur sûre.
