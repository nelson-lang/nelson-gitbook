#import "nelson_help.typ": *

= qt\_verbose <gui:qt_verbose>

Afficher\/masquer les messages de dÃ©bogage Qt.

== Syntaxe

- #raw("r = qt_verbose()");
- #raw("p = qt_verbose(logical)");

== Argument d'entrée

/ logical: a logical: true to show messages, false to hide.

== Argument de sortie

/ r: logical: current value
/ p: logical: previous value

== Description

#strong[qt\_verbose]; affiche ou masque les messages de dÃ©bogage Qt.

 Cette fonction est utile pour dÃ©boguer Qt et Qml.


== Exemple

``````matlab
h = qt_verbose()
``````


== Voir aussi

#nlink(<qml_engine:qml_loadfile>)[qml\_loadfile];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
