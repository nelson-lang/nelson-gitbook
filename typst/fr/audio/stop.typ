#import "nelson_help.typ": *

= stop <audio:stop>

Arrête un objet audioplayer.

== Syntaxe

- #raw("stop(playObj)");

== Argument d'entrée

/ playObj: un objet audioplayer.

== Description

#strong[stop]; arrête un objet audioplayer.


== Exemple

``````matlab
signal = rand(2, 44100) - 0.5;
playObj = audioplayer(signal, 44100, 16)
play(playObj)
sleep(2)
stop(playObj)
delete(playObj)
playObj
``````


== Voir aussi

#nlink(<audio:audioplayer>)[audioplayer];, #nlink(<audio:play>)[play];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
