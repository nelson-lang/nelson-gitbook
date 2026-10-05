#import "nelson_help.typ": *

= userpath <functions_manager:userpath>

Affiche ou modifie le répertoire par défaut des fonctions utilisateur.

== Syntaxe

- #raw("p = userpath()");
- #raw("userpath(dirname)");
- #raw("userpath('reset')");
- #raw("userpath('clear')");

== Argument d'entrée

/ dirname: un nom de répertoire existant
/ 'clear': supprime le premier répertoire pour les sessions actuelles et suivantes de Nelson.
/ 'reset': réinitialise le premier répertoire à la valeur par défaut pour votre plateforme.

== Argument de sortie

/ p: chaîne : le chemin utilisateur spécifié

== Description

#strong[userpath]; modifie ou affiche le chemin de chargement de l'utilisateur.

 Par défaut, le répertoire #strong[userpath]; dépend de la plateforme :

 Plateformes Windows : %USERPROFILE%\/Documents\/Nelson

 Autres plateformes : \$home\/Documents\/Nelson

 Il est possible de forcer userpath en définissant une variable d'environnement : NELSON\_USERPATH avec un chemin existant.


== Exemple

``````matlab
path
userpath

``````


== Voir aussi

#nlink(<functions_manager:path>)[path];, #nlink(<functions_manager:addpath>)[addpath];, #nlink(<functions_manager:rehash>)[rehash];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
