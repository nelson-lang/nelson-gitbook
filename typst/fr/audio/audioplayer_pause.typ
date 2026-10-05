#import "nelson_help.typ": *

= audioplayer\_pause <audio:audioplayer_pause>

Met en pause un objet audioplayer.

== Syntaxe

- #raw("pause(playObj)");

== Argument d'entrée

/ playObj: un objet audioplayer.

== Description

#strong[pause]; met en pause un objet audioplayer.


== Exemple

``````matlab
signal = rand(2, 44100) - 0.5;
playObj = audioplayer(signal, 44100, 16)
play(playObj)
sleep(2)
pause(playObj)
delete(playObj)
playObj
``````


== Voir aussi

#nlink(<audio:audioplayer>)[audioplayer];, #nlink(<audio:stop>)[stop];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
