# Introduction à Kubernetes

## 1. Pourquoi Kubernetes ?
Kubernetes est devenu l'orchestrateur de conteneurs de référence. Il permet de gérer le cycle de vie de milliers de conteneurs de manière déclarative.

## 2. Historique et contexte
Créé chez Google sous le nom de Borg, Kubernetes a été rendu open source en 2014. Son adoption rapide est due à sa capacité à automatiser le déploiement, la montée en charge et la reprise après incident.

## 3. La ressource
### 3.1. Notions de base
Avant toute chose, retiens que Kubernetes se compose de noeuds et d'un plan de contrôle. Les applications tournent dans des **pods**, groupements d'un ou plusieurs conteneurs.

### 3.2. Installation locale
Pour débuter, installe Minikube ou Kind afin de disposer d'un cluster local. Tu pourras ensuite utiliser la commande `kubectl` pour communiquer avec le serveur.

### 3.3. Déploiement d'un premier pod
Crée un fichier `pod.yaml` avec la structure suivante :

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: hello
spec:
  containers:
    - name: app
      image: nginx
```

Applique le manifest avec `kubectl apply -f pod.yaml`. Vérifie l'état avec `kubectl get pods`.

### 3.4. Services et exposition
Un pod n'est pas accessible directement de l'extérieur. Définis un service de type `NodePort` pour exposer ton application.

```yaml
apiVersion: v1
kind: Service
metadata:
  name: hello-svc
spec:
  type: NodePort
  selector:
    app: hello
  ports:
    - port: 80
      targetPort: 80
```

### 3.5. Mise à l'échelle
Avec les déploiements (`Deployment`), Kubernetes peut répliquer automatiquement ton application. Utilise le champ `replicas` pour définir le nombre de copies.

## 4. Points importants à retenir
- Kubernetes fonctionne à l'aide de fichiers YAML décrivant l'état désiré.
- La CLI `kubectl` permet d'interroger et de modifier le cluster.
- Les services exposent les pods vers l'extérieur.

## 5. Pour aller plus loin
- Explore les guides du site [kubernetes.io](https://kubernetes.io/) pour découvrir les ConfigMaps, les volumes persistants et l'autoscaling.
- Essaie d'installer un dashboard pour visualiser en temps réel ce qui se passe dans ton cluster.
