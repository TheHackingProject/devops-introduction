# Linux, les fondamentaux
Dans ce cours, tu vas apprendre à te déplacer dans le terminal, apprendre et exécuter une partie des commandes les plus utilisés par les SysOps et DevOps et enfin décrypter les informations qui s'affiche dans ton terminal.


## 1. Le Shell, c'est quoi ?

Le Shell, est programme qui permet d'interagir avec l' OS via un terminal. Il a deux modes d'utilisation:

- Interactif: l'utilisateur exécute des commandes directement dans le terminal


- Non interactif: Le shell lit tes commandes depuis un fichier qui s'appelle `shell script`

 Il est existe plus d'une trentaine de Shells différents chacune avec des particularités. Cette [doc](https://www.journaldev.com/39194/different-types-of-shells-in-linux), te fait un résumé des Shells les plus populaires.


Aujourd'hui nous allons concentrer sur le mode `interactif`, le shell que vous avez sur vos machines n'a pas d'importance (bash, zsh), car les commandes que nous allons voir sont interprétées par tous les Shells.


## 2. La synthax des commandes Linux et savoir se déplacer dans le terminal

### 2.1 La synthax des commandes
Les commandes shell ont synthax plûtot simple, `command option(s) et argument(s)` par exemple:

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

Pour savoir se déplacer dans le terminal, nous devons d'abord en apprendre plus sur le `Filesystem` de Linux et rien de mieux que [Linux pour t'en apprendre d'avantages](https://www.linux.com/training-tutorials/linux-filesystem-explained/)

Maintenant que vous avez ce que le `Filesystem`, cette [doc](https://www.redhat.com/sysadmin/navigating-linux-filesystem) vous explique comment naviguer dans le `Filesystem` et la différence entre deux termes très importants que nous utiliserons tout au long du parcours à savoir, **le chemin relatif et absolue dans le Filesystem**. 


## 3. Les permissions et l'appartenance des fichiers

Cette [doc](https://www.linuxtricks.fr/wiki/droits-sous-linux-utilisateurs-groupes-permissions) est parfait pour avoir une idée claire sur le sujet. La dernière partie de la doc sur `Sauvegarder et restaurer les permissions`, nous ne intéresse pas pr l'instant


## 4. Points importants à retenir

Voici ce que vous devez em permanence garder en tête:
- Dans le shells seule la commande est obligatoire le reste est optionnel
- Certaines commandes acceptent un ou plusieurs options ainsi que un ou plusieurs arguments

- Si vous avez des doutes ou un oublie concernant une commandes et ses options, voici quelques tips.

```sh
# man command,
man less

# --help or -h options
more --help

# info command
info awk
```

⚠️ ALERTE TIPS

Pour certaines commandes, quand vous les taper sans option(s) ni argument(s). Des informations très utiles s'affichent, Essayez pour voir :).

## 5. Pour aller plus loin

Les commandes Shell se comptent par centaines, mais l'important est d'abord comprendre l'environnement Linux et ses composants pour qu'en un coup d'oeil sur ton terminal tu saches où tu en es. Demain nous allons encore allez plus loin et enfin écrire notre premier Shell script.