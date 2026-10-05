#import "nelson_help.typ": *

= tempdir <files_folders_functions:tempdir>

Renvoie le chemin du répertoire temporaire.

== Syntaxe

- #raw("tempdir()");
- #raw("p = tempdir()");

== Argument de sortie

/ p: a string: répertoire temporaire courant.

== Description

Renvoie le nom du répertoire de fichiers temporaires du système hôte.


== Exemple

``````matlab
r = tempdir()
``````


== Voir aussi

#nlink(<files_folders_functions:cd>)[cd];, #nlink(<files_folders_functions:dir>)[dir];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
