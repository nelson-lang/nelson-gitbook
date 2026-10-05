#import "nelson_help.typ": *

= audioplayer\_used <audio:audioplayer_used>

Retourne la liste des handles audioplayer actuellement utilisés.

== Syntaxe

- #raw("r = audioplayer_used()");

== Argument de sortie

/ h: un vecteur de handles audioplayer.

== Description

Retourne la liste des handles audioplayer actuellement utilisés.


== Exemple

``````matlab
used = audioplayer_used()
``````


== Voir aussi

#nlink(<audio:audioplayer_set>)[audioplayer\_set (set)];, #nlink(<audio:audioplayer_get>)[audioplayer\_get (get)];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
