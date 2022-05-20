# Gestion des IP sur les serveurs AWS

## 1. Introduction
La dernière fonctionnalité du service EC2 est liée à la possibilité d'attacher ou non des addresses IP fixes.
Oui, oui tu as bien entendue des IP qui ne vont pas changer au redémarrage de ton instance.
C'est IPs appelés `Elastic IP`, ils peuvent être pratiques dans certains cas que tu vas découvrir dans ce cours.


## 2. La ressource
### 2.1. Elastic IP, c'est quoi ?

Une [video](https://www.youtube.com/watch?v=UAdlVht4Xlw) vaut mieux qu'un long paragraphe rempli de terme technique. 😉

### 2.3. A ne pas oublier
Voici les éléments à ne pas oublier : 
- Les `Elastic IP` sont en général à proscrire sauf dans certain cas spécifique, 
  par example si l'instance n'est pas derrière un équilibreur de charge ou s'il n'y a pas la possibilité d'utiliser le DNS pour référencer l'instance.
- Les `Elastic IP` sont gratuits à partir du moment où ils sont utilisés. **Si un `Elastic IP` n'est pas utilisé il devient payant.**

## 3. Pour aller plus loin
La [documentation d'AWS](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html) peu t'en apprendre davantage sur les `Elastic IP`
