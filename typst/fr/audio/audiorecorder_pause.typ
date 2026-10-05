#import "nelson_help.typ": *

= audiorecorder\_pause <audio:audiorecorder_pause>

Met en pause un objet audiorecorder.

== Syntaxe

- #raw("pause(recObj)");

== Argument d'entrée

/ recObj: un objet audiorecorder.

== Description

#strong[pause]; met en pause un objet audiorecorder.


== Exemple

``````matlab
recObj = audiorecorder();
      resume(recObj);
pause(recObj)

``````


== Voir aussi

#nlink(<audio:audiorecorder>)[audiorecorder];, #nlink(<audio:stop>)[stop];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.16.0], [version initiale],
)

// Auteur: Allan CORNET
