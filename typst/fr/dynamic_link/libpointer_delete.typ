#import "nelson_help.typ": *

= libpointer\_delete <dynamic_link:libpointer_delete>

Supprime l'objet libpointer

== Syntaxe

- #raw("libpointer_delete(h)");
- #raw("delete(h)");

== Argument d'entrée

/ h: un handle : un objet libpointer.

== Description

#strong[delete(h)]; libère l'objet libpointer.

 N'oubliez pas de nettoyer la variable h ensuite.


== Exemple

``````matlab
used = libpointer_used()
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
