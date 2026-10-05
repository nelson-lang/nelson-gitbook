#import "nelson_help.typ": *

= playblocking <audio:playblocking>

Lit un objet audioplayer de manière bloquante.

== Syntaxe

- #raw("playblocking(playObj)");
- #raw("playblocking(playObj, start)");
- #raw("playblocking(playObj, [start end])");

== Argument d'entrée

/ playObj: un objet audioplayer.
/ start: une valeur entière : premier échantillon à lire.
/ end: une valeur entière : dernier échantillon à lire.

== Description

#strong[playblocking]; lit un objet audioplayer jusqu'à ce que la lecture soit terminée.
== Exemple

``````matlab
signal = rand(2, 44100) - 0.5;
playObj = audioplayer(signal, 44100, 16)
playblocking(playObj)
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
