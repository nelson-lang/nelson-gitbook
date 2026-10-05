#import "nelson_help.typ": *

= pwd <files_folders_functions:pwd>

Renvoie le répertoire courant.

== Syntaxe

- #raw("pwd()");
- #raw("r = pwd()");

== Argument de sortie

/ r: a string: répertoire courant.

== Description

Renvoie le répertoire de travail courant.

 #strong[pwd()]; sans argument affiche le répertoire courant.

 


== Exemple

``````matlab
r = pwd()
pwd()
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
