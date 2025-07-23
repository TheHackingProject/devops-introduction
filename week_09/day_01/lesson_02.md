# Sécuriser les conteneurs

## 1. Introduction
Pour compléter la découverte du DevSecOps, intéressons-nous aux conteneurs. Un conteneur vulnérable peut compromettre l'ensemble d'une infrastructure.

## 2. Historique et contexte
Au fur et à mesure que Docker s'est imposé, les scanners de sécurité tels que Clair ou Trivy sont apparus pour analyser les images et détecter les dépendances périmées.

## 3. La ressource
### 3.1. Utiliser un scanner
Installe Trivy et lance une analyse sur une image :

```bash
trivy image nginx:latest
```

L'outil liste les CVE (vulnérabilités) connues. Mets régulièrement à jour tes images pour éviter ces failles.

### 3.2. Les bonnes pratiques
- Privilégie des images officielles ou maintenues.
- Exécute les conteneurs avec l'utilisateur le moins privilégié possible.
- Garde le nombre de dépendances au strict minimum.

### 3.3. Signer ses images
Pour garantir qu'une image provient de toi, utilise la signature avec Notary ou Cosign. Cette étape empêche qu'une image modifiée soit déployée par erreur.

## 4. Points importants à retenir
- Analyse chaque image avant son déploiement.
- Mets en place un suivi des CVE pour corriger rapidement les failles.
- La signature renforce la chaîne de confiance.

## 5. Pour aller plus loin
- Découvre les conseils du [CIS Docker Benchmark](https://docs.cisecurity.org/) pour configurer un moteur Docker sécurisé.
- Renseigne-toi sur les outils de policy comme OPA Gatekeeper pour valider les manifestes Kubernetes.
