#import "nelson_help.typ": *

= pathsep <files_folders_functions:pathsep>

Renvoie le caractère séparateur de chemins pour la plateforme courante.

== Syntaxe

- #raw("res = pathsep()");

== Argument de sortie

/ res: a string: ';' ou ':'

== Description

#strong[pathsep]; renvoie ';' sur Windows et ':' sur les autres plateformes.
== Exemple

``````matlab
A = pathsep
``````


== Voir aussi

#nlink(<files_folders_functions:filesep>)[filesep];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
