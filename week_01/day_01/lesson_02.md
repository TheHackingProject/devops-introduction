# Linux, les fondamentaux - Partie 1
Dans ce cours, tu vas apprendre à te déplacer dans le terminal, comprendre et exécuter une partie des commandes les plus utilisées par les **Devs, SysOps et DevOps** et décrypter les informations qui s'affichent dans ton terminal.

## 1. Le Shell, qu'est-ce que c'est ?
Le `Shell`, est programme qui permet d'interagir avec l' `OS` via un terminal. Il a deux modes d'utilisation :

- Interactif : l'utilisateur exécute des commandes directement dans le terminal

- Non interactif : Le shell lit tes commandes depuis un fichier, a.k.a, le `shell script`.

 Il existe plus d'une trentaine de `Shells` différents, chacune avec des particularités plus ou moins importantes. Cette [doc](https://www.journaldev.com/39194/different-types-of-shells-in-linux), te fait un résumé des Shells les plus populaires.

Aujourd'hui nous allons concentrer sur le mode `interactif`, le shell que tu as sur ta machine n'a pas d'importance (bash, zsh), car les commandes que tu vas découvrir aujourd'hui, sont interprétées par tous les types de `Shell`.


## 2. Shell, les fondamentaux - Partie 1
### 2.1 La syntaxe des commandes
Les commandes shell ont une syntaxe plutôt simple, `command option(s) et argument(s)`, exemple :

```sh
# Command (pwd) only
pwd

# Command (ls) with options (-al)
ls -al

# Command (cd) and argument (../) without options
cd ../

# Command (rm) with option (-r) and argument (directory/)
rm -r directory/
```

### 2.2 Se déplacer dans le terminal
Pour te déplacer sereinement dans le terminal, tu dois d'abord en apprendre plus sur le `Filesystem` de Linux et rien de mieux que [Linux pour t'en apprendre d'avantages](https://www.linux.com/training-tutorials/linux-filesystem-explained/).

Maintenant que tu sais ce qu'est le `Filesystem`, cette [doc](https://www.redhat.com/sysadmin/navigating-linux-filesystem) va t'expliquer comment naviguer dans le `Filesystem` ainsi que la différence entre deux termes très importants, **le chemin relatif et absolue dans le Filesystem**. 

## 3. Les permissions et l'appartenance des fichiers
Cette [doc](https://www.linuxtricks.fr/wiki/droits-sous-linux-utilisateurs-groupes-permissions) est parfait pour avoir une idée claire sur le sujet.
La dernière partie de cette doc sur `Sauvegarder et restaurer les permissions`, ne nous intéresse pas pour l'instant.


## 4. Points importants à retenir
Voici ce que tu dois garder en tête en permanence :
- Dans le shell seule la commande est obligatoire le reste est optionnel.

- Certaines commandes acceptent une ou plusieurs options ainsi qu'un ou plusieurs arguments.

- Si tu as des doutes ou un oubli concernant une commande et ses options/arguments, voici le `tips` ultime :

```sh
# man command,
man less

# --help or -h options
more --help

# info command
info awk
```

⚠️ ALERTE TIPS ADDITIONNEL
Certaines commandes, quand tu les utilises sans option(s) ni argument(s). 
Des informations très utiles s'affichent, Essayes pour voir :).

## 5. Pour aller plus loin
Les commandes shell se comptent par centaines. Mais l'important est d'abord de comprendre l'environnement Linux pour que d'un regard sur ton terminal, tu saches où tu en es.

PS. Tu n'as pas d'examples concret dans ce cours, s'est fait exprès :). 
L'idée est, qu'une fois avoir parcouru le cours, tu découvres par toi-même via le projet les commandes en lien avec cette lesson. Courage :).