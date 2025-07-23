# Les bases du DevSecOps

## 1. Introduction
Intégrer la sécurité dans un cycle DevOps permet de détecter les failles très tôt
et d'automatiser une partie des contrôles.

## 2. Historique et contexte
Le mouvement DevSecOps, apparu vers 2015, vise à intégrer la sécurité tout au long du cycle de développement.

## 3. La ressource
### 3.1. Shift left
L'idée est d'amener les tests de sécurité le plus tôt possible dans le cycle de
développement afin de réduire les coûts de correction.

### 3.2. Modélisation des menaces
Avant de coder, il est utile de réfléchir aux scénarios d'attaque possibles.
Cet exercice aide à prioriser les mesures de protection à mettre en place.

### 3.3. Outils courants
Des solutions comme SonarQube, Trivy ou Snyk analysent ton code et tes images
de conteneurs à la recherche de vulnérabilités.

### 3.4. Gestion des secrets
Stocke tes secrets dans un coffre-fort comme HashiCorp Vault ou les secrets GitHub plutôt que dans le code source.

## 4. Points importants à retenir
- La sécurité fait partie intégrante du pipeline.
- Les analyses doivent être automatisées pour chaque commit.
- La sensibilisation de l'équipe reste indispensable.

### Pour aller plus loin
Consulte la documentation officielle pour approfondir. Le guide [OWASP DevSecOps](https://owasp.org/www-project-devsecops-guideline/) est une excellente ressource.
