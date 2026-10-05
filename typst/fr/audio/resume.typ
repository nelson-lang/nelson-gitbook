#import "nelson_help.typ": *

= resume <audio:resume>

Reprend un objet audioplayer.

== Syntaxe

- #raw("resume(playObj)");

== Argument d'entrée

/ playObj: un objet audioplayer.

== Description

#strong[resume]; reprend un objet audioplayer.


== Exemple

``````matlab
signal = rand(2, 44100) - 0.5;
playObj = audioplayer(signal, 44100, 16)
play(playObj)
pause(playObj)
stop(playObj)
resume(playObj)
playObj
``````


== Voir aussi

#nlink(<audio:audioplayer_pause>)[audioplayer\_pause];, #nlink(<audio:play>)[play];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
