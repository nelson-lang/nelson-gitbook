#import "nelson_help.typ": *

= QObject\_iswidgettype <qml_engine:QObject_iswidgettype>

Renvoie true si le QObject est un widget.

== Syntaxe

- #raw("R = QObject_iswidgettype(h)");

== Argument d'entrée

/ h: une poignée (handle) QObject.

== Argument de sortie

/ R: un logique (booléen).

== Description

Renvoie true si le QObject est un widget ; sinon renvoie false.


== Exemple

``````matlab
h = errordlg()
r = QObject_iswidgettype(h)
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
