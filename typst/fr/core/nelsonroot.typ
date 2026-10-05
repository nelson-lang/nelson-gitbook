#import "nelson_help.typ": *

= nelsonroot <core:nelsonroot>

Répertoire racine de Nelson.

== Syntaxe

- #raw("nelson_path = nelsonroot");

== Argument de sortie

/ nelson\_path: a string: the root folder of Nelson.

== Description

Renvoie le répertoire racine où Nelson est installé ou configuré.


== Exemple

``````matlab
pwd
cd(nelsonroot)
pwd
``````


== Voir aussi

#nlink(<files_folders_functions:pwd>)[pwd];, #nlink(<files_folders_functions:cd>)[cd];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
