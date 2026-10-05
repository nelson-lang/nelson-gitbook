#import "nelson_help.typ": *

= fullpath <files_folders_functions:fullpath>

Renvoie le chemin absolu canonique.

== Syntaxe

- #raw("R = fullpath(path)");

== Argument d'entrée

/ path: a string ou un tableau de chaînes : chemin(s) à normaliser.

== Argument de sortie

/ R: a string ou un tableau de chaînes : chemins canoniques.

== Description

#strong[fullpath(path)]; renvoie le chemin absolu à partir d'un chemin relatif.


== Exemple

``````matlab
fullpath([nelsonroot(), '/../toto'])
``````


== Voir aussi

#nlink(<files_folders_functions:relativepath>)[relativepath];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
