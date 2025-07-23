# Scans automatisés

## 1. Introduction
Les analyses manuelles ne suffisent plus lorsque l'équipe grandit. Les outils de
scan s'intègrent dans la CI pour vérifier chaque modification.

## 2. Historique et contexte
Les scans automatisés s'appuient sur des outils de sécurité traditionnels adaptés aux pipelines modernes.

## 3. La ressource
### 3.1. SAST
Les scanners de code (SAST) inspectent les sources à la recherche de patterns
dangereux. Ils s'exécutent généralement avant la compilation.

### 3.2. DAST
Les scanners dynamiques (DAST) testent l'application déployée comme le ferait un
attaquant externe.

### 3.3. Intégration continue
Configure ton pipeline pour lancer ces outils à chaque push et produire un
rapport facilement consultable.

### 3.4. Intégration dans la CI
Les outils SAST et DAST se greffent facilement à GitLab CI ou GitHub Actions. Définis des jobs spécifiques et fail le pipeline en cas de détection critique.
### 3.5. Exemple de script
```yaml
scan:
  stage: test
  image: docker:latest
  script:
    - trivy fs . > trivy.log
  artifacts:
    paths:
      - trivy.log
```
## 4. Points importants à retenir
- Automatise les scans pour réagir plus vite en cas de faille.
- Combine plusieurs approches pour une meilleure couverture.
- Les rapports doivent être clairs et partagés avec toute l'équipe.

## 5. Pour aller plus loin
Consulte la documentation officielle pour approfondir.
