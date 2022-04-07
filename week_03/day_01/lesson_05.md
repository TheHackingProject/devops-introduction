# Les stockages sur les serveurs EC2.

## 1. Introduction


## 2. La ressource
### 2.1. Explorer les volumes EBS (Elastic Block Store)

Video pr découvrir 
....

### 2.1. Les types volumes EBS
Comme pour les instances EC2, les volumes EBS ont également des caractéristiques et un prix différents selon le type de EBS choisi.
Connaitre ses éléments te permettra de choisir le bon type selon le besoin.

Comme je l'ai dit dans la video, les volumes EBS, il faut voir cela comme étant des clés USB.
Techniquement ce sont des espaces de stockage qui se connecte automatiquement à l'instance choisie.
Cette connexion peut se faire soit à la création, soit après la création de l'instance. 
Dans le deuxième cas des étapes supplémentaires devront être effectué, ces étapes dependent bien sûr, de l'OS de ton instance.

Voici les different type de volumes EBS :

- GP2 (SSD): General purposes SSD volume, prix et performance équilibrer.
- IO1 (SSD): High-performance SSD volume, fait pour la rapiditité, temps de latence faible, haut débit (I/O Ops)
- STI (HDD): Low cost HDD volume, fait pour accéder fréquement aux données,
- SCI (HDD): Mois cher que le STI, fait pour un accès occasionnel aux données.

Les volumes EBS se caractérisent par la taille, le débit et I/O OPS (opération d'entrée/sortie).

#### 2.1.1. EBS Volume Types - Use cases GP2
Recommandé pour la plupart des utilisations car performance équilibrer

C'est le type d'EBS (Root Volume) qui est monté sur instance EC2 à la création.

Utilité:

Low-latency interactive apps
Volume recommandé utiliser pour l'environnement de dev/test
Taille ajustable entre 1GiB - 16TiB

Nombre I/O Ops varie entre 100 et 16 000. Le nombre de I/O Ops est proportionnel aux GiBs (3 I/O Ops par 1 GiB)

There are burst aspect on GP2. It can burst to 3000 I/O OPS

#### 2.1.2. EBS Volume Types - Use cases IO1
Necéssaire si besoin I/O Ops supérieure à 16 000 ou si besoin de sauvegarder des infos critiques.

Recommandé pour les DB comme (MysQL, MongoDB, Cassandra, ProstgreSQL, Oracle, etc...)

Taille ajustable entre 4GiB - 16TiB

Nombre I/O ops varie entre 100 et 32 000.

:banbang: Nombre I/O Ops est modifiable. A partir du moment où le nombre maximum de IOPS choisi n'est pas supérieur à la ratio GiB X 50 Exemple:

40 GiB et 100 IOPS ==> OK car, IOPS < à 40 X 50 = 2000 IOPS
20 GiB et 1300 IOPS ==> NO car, IOPS > à 20 X 50 = 1000 IOPS

#### 2.1.3. EBS Volume Types - Use cases ST1
Faible prix

Ne peut être un boot voulume car son utilisation est spécifique.

Nécéssaire pour les opérations qui circulent rapidement et de manière constante (Big Data, data, warehouse, Log processing, Apache, Kafka).

Taille entre 500 GiB et 16 TiB

Max I/O Ops is 500.

Max throughput 500 MiB/s. Voir la différence ici

40 MiB/s per 1 TiB

#### 2.1.4. EBS Volume Types - Use cases SC1
Moins cher que le STI

Ne peut être un boot volume. Car il est dédié à être utilisé rarement.

Taille entre 500 GiB et 16 TiB

Max I/O Ops is 250

Max throughput 250 MiB/s. Voir la différence ici

12 MiB/s per 1 TiB



- network driver
- 
## 3. Points importants à retenir


## 4. Pour aller plus loin
Il existe d'autres types d'instances qui répondent à des besoins encore plus spécifiques, pour en savoir [RTFM](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-purchasing-options.html) 😛


Théorie :
- EC2
- EBS
- User data
- SSH
