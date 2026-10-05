#import "nelson_help.typ": *

= dlsym\_used <dynamic_link:dlsym_used>

Renvoie la liste des handles dlsym actuellement utilisés

== Syntaxe

- #raw("r = dlsym_used()");

== Argument de sortie

/ h: a vector of dlsym handle.

== Description

Renvoie la liste des handles dlsym actuellement utilisés.


== Exemple

``````matlab
used = dlsym_used()
``````


== Voir aussi

#nlink(<dynamic_link:dlsym>)[dlsym];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
