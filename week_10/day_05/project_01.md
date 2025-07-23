# Automatiser la livraison d'une image

## 1. Introduction
Mets en place un pipeline complet construisant l'image de l'application et la
déployant sur ton cluster.

## 2. Le projet
1. Crée un fichier de pipeline qui build l'image puis la pousse dans ton registre.
2. Ajoute un job qui utilise `kubectl` ou Helm pour mettre à jour le déploiement
   sur le cluster.
3. Teste le pipeline sur une branche de test avant de le lancer en production.

## 3. Rendu attendu
Le fichier de pipeline et un bref retour d'expérience sur son exécution.

4. Partage ton travail sur GitHub avec un bref mode d'emploi.
