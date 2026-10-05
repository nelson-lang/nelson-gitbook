#import "nelson_help.typ": *

= filesep <files_folders_functions:filesep>

Renvoie le caractère séparateur de fichiers pour la plateforme courante.

== Syntaxe

- #raw("res = filesep()");

== Argument de sortie

/ res: a string: '\/' ou '\\\\'

== Description

#strong[filesep]; renvoie '\\\\' sur Windows et '\/' sur les autres plateformes.
== Exemple

``````matlab
A = filesep
``````


== Voir aussi

#nlink(<files_folders_functions:pathsep>)[pathsep];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
