#import "nelson_help.typ": *

= audiorecorder\_fieldnames <audio:audiorecorder_fieldnames>

Retourne les noms des propriétés d'un objet audiorecorder.

== Syntaxe

- #raw("l = audiorecorder_fieldnames(h)");
- #raw("l = fieldnames(h)");

== Argument d'entrée

/ h: un objet audiorecorder.

== Argument de sortie

/ l: une cellule de chaînes de caractères.

== Description

#strong[fieldnames]; retourne une cellule de chaînes de caractères avec les noms des propriétés.
== Exemple

``````matlab
recObj = audiorecorder()
fieldnames(recObj)
delete(recObj)
clear recObj
``````


== Voir aussi

#nlink(<audio:audiorecorder_set>)[audiorecorder\_set];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.16.0], [version initiale],
)

// Auteur: Allan CORNET
