#import "nelson_help.typ": *

= play <audio:play>

Lit un objet audioplayer.

== Syntaxe

- #raw("play(playObj)");
- #raw("play(playObj, start)");
- #raw("play(playObj, [start end])");

== Argument d'entrée

/ playObj: un objet audioplayer.
/ start: une valeur entière : premier échantillon à lire.
/ end: une valeur entière : dernier échantillon à lire.

== Description

#strong[play]; lit un objet audioplayer.


== Exemple

``````matlab
signal = rand(2, 44100) - 0.5;
playObj = audioplayer(signal, 44100, 16)
play(playObj)
sleep(2)
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
