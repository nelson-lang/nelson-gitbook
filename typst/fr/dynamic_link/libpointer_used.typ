#import "nelson_help.typ": *

= libpointer\_used <dynamic_link:libpointer_used>

Renvoie la liste des handles libpointer actuellement utilisés

== Syntaxe

- #raw("r = libpointer_used()");

== Argument de sortie

/ h: a vector of libpointer handle.

== Description

Renvoie la liste des handles libpointer actuellement utilisés.


== Exemple

``````matlab
used = libpointer_used()
``````


== Voir aussi

#nlink(<dynamic_link:dlcall>)[dlcall];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
