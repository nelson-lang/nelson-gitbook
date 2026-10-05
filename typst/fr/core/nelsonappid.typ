#import "nelson_help.typ": *

= nelsonappid <core:nelsonappid>

Identifiant de l'application Nelson.

== Syntaxe

- #raw("nelsonappid()");

== Description

Renvoie l'identifiant unique utilisé par l'application Nelson sur cette installation.


== Exemple

``````matlab
nelsonappid()
``````


== Voir aussi

#nlink(<core:nelsonroot>)[nelsonroot];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.14.0], [version initiale],
)

// Auteur: Allan CORNET
