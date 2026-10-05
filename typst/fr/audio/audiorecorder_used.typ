#import "nelson_help.typ": *

= audiorecorder\_used <audio:audiorecorder_used>

Retourne la liste des poignées audiorecorder actuellement utilisées.

== Syntaxe

- #raw("r = audiorecorder_used()");

== Argument de sortie

/ h: un vecteur de poignées audiorecorder.

== Description

Retourne la liste des poignées audiorecorder actuellement utilisées.


== Exemple

``````matlab
used = audiorecorder_used()
``````


== Voir aussi

#nlink(<audio:audiorecorder_set>)[audiorecorder\_set (set)];, #nlink(<audio:audiorecorder_get>)[audiorecorder\_get (get)];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.16.0], [version initiale],
)

// Auteur: Allan CORNET
