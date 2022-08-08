# Les stockages sur les serveurs EC2.

## 1. Introduction

## 2. La ressource
### 2.1. Explorer les volumes EBS (Elastic Block Store)

*TODO : faire la vidéo*

### 2.1. Les types volumes EBS
Comme pour les instances EC2, les volumes EBS ont également des caractéristiques et un prix différents selon le type de volume choisi.
Connaitre ses éléments te permettra de choisir le bon type selon le besoin.

Comme je l'ai dit dans la video, tu peux visualiser les volumes EBS comme des clés USB.
Techniquement ce sont des espaces de stockage qui se connecte à l'instance choisie.
Cette connexion peut se faire soit à la création (dans ce cas, c'est automatique), soit après la création de l'instance. 
Dans le deuxième cas, des étapes supplémentaires devront être effectuées, ces étapes dependent bien sûr, de l'OS installé sur ton instance.

Avant de parler des différents types de volumes, parlons d'abord de type de disque qu'offre AWS.
Avec AWS tu peux choisir des disques HDD ou SSD, pour être sûr que l'on est sur la même longueur d'ondes voici leurs [inconvénients et avantages](https://laptopsreviewers.com/knowledge-base/ssd-vs-hdd/).

Voici les different type de volumes EBS :

- gp2 (SSD) : prix et performance du volume équilibrer.
- io1 (SSD) : volume fait pour la rapidité, temps de latence faible et haut débit (I/O Ops)
- st1 (HDD) : volume fait pour accéder souvent aux données,
- sc1 (HDD) : volume moins cher que le STI, fait pour un accès occasionnel aux données.

Les volumes EBS se caractérisent par la taille, le débit et I/O OPS (opération d'entrée/sortie). 
Voyons en détails l'utilité de chaque volume EBS.


#### 2.1.1. Utilité du gp2
Ce type de volume est recommandé pour la plupart des utilisations, car il a des performances équilibrées.
C'est d'ailleurs, ce type de volume qui est monté par défaut, en tant `root volume`, sur instance EC2 à la création.

Ses caractéristiques :
- sa taille varie entre 1GiB et 16TiB 
- le nombre I/O ops varient entre 100 et 16 000.

#### 2.1.2. Utilité du io1
Ce type de volume est nécessaire si on a besoin I/O Ops supérieure à 16 000 ou si on a besoin de sauvegarder des infos critiques.
C'est pour cela que pour lors de la création d'une base de donnée, cet espace de stockage est recommandé.

Ses caractéristiques :
- sa taille varie entre 4GiB et 16TiB 
- le nombre I/O ops varient entre 100 et 32 000.

#### 2.1.3. Utilité du st1
Ce type de volume est peu cher comparé aux précédents. 
Il est surtout pour des opérations qui circulent rapidement et manière constante, comme par example une grande quantité de données (big data, log apache ou nginx, etc.)
**À cause de cette utilisation spécifique, ce volume ne peut être un `root volume`.**

Ses caractéristiques :
- sa taille varie entre 500 GiB et 16 TiB 
- le nombre I/O ops maximum est de 500
- le nombre de `throughput` maximum est de 500 MiB/s.

PS. Pour être sûr que l'on est sur la même longueur d'onde, voici la [différence entre I/O ops et `throughput`](https://stackoverflow.com/questions/15759571/iops-versus-throughput)

#### 2.1.4. Utilité du sc1
Ce type de volume est moins cher comparé au `st1`.
Il devient utile pour du gros stockage à long terme de données sont seront utilisées rarement.

Ses caractéristiques :
- sa taille entre 500 GiB et 16 TiB
- le nombre I/O ops maximum est de 250
- le nombre de `throughput` maximum est de 250 MiB/s.


## 3. Points importants à retenir
- Comme tu le verras par dans les prochaines jours et bien après,
  les volumes EBS sont des sous-éléments de plusieurs services de AWS.
  De ce fait, connaitre l'utilité de chaque type de volume facilitera grandement ton choix le moment venu.

- En ce qui concerne une instance EC2, un volume EBS, n'est rien d'autre qu'un disque dur distant connecté.

## 4. Pour aller plus loin
Pour en savoir plus sur le stockage de type EBS, la [documentation de AWS](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-volume-types.html) sera ton guide.
