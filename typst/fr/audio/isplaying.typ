#import "nelson_help.typ": *

= isplaying <audio:isplaying>

obtenir des informations sur la lecture audio en cours.

== Syntaxe

- #raw("isplaying(playObj)");

== Argument d'entrée

/ play: un objet audioplayer.

== Argument de sortie

/ play: un booléen.

== Description

#strong[isplaying]; obtient des informations sur la lecture audio en cours.
== Exemple

``````matlab
signal = rand(2, 44100) - 0.5;
playObj = audioplayer(signal, 44100, 16)
play(playObj)
isplaying(playObj)
pause(playObj)
isplaying(playObj)
delete(playObj)
playObj
``````


== Voir aussi

#nlink(<audio:audioplayer>)[audioplayer];, #nlink(<audio:playblocking>)[playblocking];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
