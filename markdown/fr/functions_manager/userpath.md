# userpath

Affiche ou modifie le répertoire par défaut des fonctions utilisateur.

## 📝 Syntaxe

- p = userpath()
- userpath(dirname)
- userpath('reset')
- userpath('clear')

## 📥 Argument d'entrée

- dirname - un nom de répertoire existant
- 'clear' - supprime le premier répertoire pour les sessions actuelles et suivantes de Nelson.
- 'reset' - réinitialise le premier répertoire à la valeur par défaut pour votre plateforme.

## 📤 Argument de sortie

- p - chaîne : le chemin utilisateur spécifié

## 📄 Description


<b>userpath</b> modifie ou affiche le chemin de chargement de l'utilisateur. 

Par défaut, le répertoire <b>userpath</b> dépend de la plateforme : 

Plateformes Windows : %USERPROFILE%/Documents/Nelson 

Autres plateformes : $home/Documents/Nelson 

Il est possible de forcer userpath en définissant une variable d'environnement : NELSON\_USERPATH avec un chemin existant.

## 💡 Exemple



```matlab
path
userpath

```


## 🔗 Voir aussi

[path](../functions_manager/path.md), [addpath](../functions_manager/addpath.md), [rehash](../functions_manager/rehash.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
