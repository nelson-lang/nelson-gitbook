#import "nelson_help.typ": *

= audioplayer\_fieldnames <audio:audioplayer_fieldnames>

Retourne les noms des propriétés d'un objet audioplayer.

== Syntaxe

- #raw("l = audioplayer_fieldnames(h)");
- #raw("l = fieldnames(h)");

== Argument d'entrée

/ h: un objet audioplayer.

== Argument de sortie

/ l: une cellule de chaînes.

== Description

#strong[fieldnames]; retourne une cellule de chaînes avec les noms des propriétés.
== Exemple

``````matlab
signal = rand(2, 44100) - 0.5;
playObj = audioplayer(signal, 44100, 16)
fieldnames(playObj)
delete(playObj)
clear playObj
``````


== Voir aussi

#nlink(<audio:audioplayer_set>)[audioplayer\_set];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
