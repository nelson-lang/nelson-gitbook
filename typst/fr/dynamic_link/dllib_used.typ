#import "nelson_help.typ": *

= dllib\_used <dynamic_link:dllib_used>

Renvoie la liste des handles dllib actuellement utilisés

== Syntaxe

- #raw("r = dllib_used()");

== Argument de sortie

/ h: un vecteur de handles dllib.

== Description

Renvoie la liste des handles dllib actuellement utilisés.


== Exemple

``````matlab
used = dllib_used()
``````


== Voir aussi

#nlink(<dynamic_link:dlopen>)[dlopen];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
