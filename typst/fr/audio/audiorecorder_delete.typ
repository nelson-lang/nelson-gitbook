#import "nelson_help.typ": *

= audiorecorder\_delete <audio:audiorecorder_delete>

Supprime un objet audiorecorder.

== Syntaxe

- #raw("audiorecorder_delete(h)");
- #raw("delete(h)");

== Argument d'entrée

/ h: un handle : un objet audiorecorder.

== Description

#strong[delete(h)]; libère l'objet audiorecorder.

 N'oubliez pas de libérer ensuite h.


== Exemple

``````matlab
used = audiorecorder_used()
``````


== Voir aussi

#nlink(<audio:audiorecorder>)[audiorecorder];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.16.0], [version initiale],
)

// Auteur: Allan CORNET
