#import "nelson_help.typ": *

= QObject\_iswindowtype <qml_engine:QObject_iswindowtype>

Renvoie true si le QObject est une fenêtre.

== Syntaxe

- #raw("R = QObject_iswindowtype(h)");

== Argument d'entrée

/ h: une poignée (handle) QObject.

== Argument de sortie

/ R: a logical.

== Description

Renvoie true si le QObject est une fenêtre ; sinon renvoie false.


== Exemple

``````matlab
h = errordlg()
r = QObject_iswindowtype(h)
``````


== Voir aussi

#nlink(<qml_engine:QObject_set>)[QObject\_set (set)];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
