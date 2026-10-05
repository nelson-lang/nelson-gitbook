#import "nelson_help.typ": *

= userdir <files_folders_functions:userdir>

Renvoie le chemin du répertoire utilisateur courant.

== Syntaxe

- #raw("userdir()");
- #raw("p = userdir()");

== Argument de sortie

/ p: a string: répertoire utilisateur courant.

== Description

Renvoie le nom du répertoire de l'utilisateur.


== Exemple

``````matlab
r = userdir()
``````


== Voir aussi

#nlink(<files_folders_functions:cd>)[cd];, #nlink(<files_folders_functions:dir>)[dir];, #nlink(<files_folders_functions:tempdir>)[tempdir];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
