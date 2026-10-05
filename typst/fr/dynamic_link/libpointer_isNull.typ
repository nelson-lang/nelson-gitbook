#import "nelson_help.typ": *

= libpointer\_isNull <dynamic_link:libpointer_isNull>

Vérifie si un handle libpointer pointe vers NULL

== Syntaxe

- #raw("tf = isNull(h)");
- #raw("tf = h.isNull()");

== Argument d'entrée

/ h: a libpointer handle.

== Argument de sortie

/ tf: a logical.

== Description

Vérifie si un handle libpointer pointe vers un pointeur NULL.


== Exemple

``````matlab
p = libpointer('int8Ptr', int8([3 4]));
p.isNull()
p2 = libpointer()
p2.isNull()
isNull(p2)
``````


== Voir aussi

#nlink(<dynamic_link:libpointer>)[libpointer];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
