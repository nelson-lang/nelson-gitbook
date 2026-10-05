#import "nelson_help.typ": *

= QObject\_used <qml_engine:QObject_used>

Renvoie la liste des poignées (handles) QObject actuellement utilisées.

== Syntaxe

- #raw("r = QObject_used()");

== Argument de sortie

/ h: un vecteur de poignées (handles) QObject.

== Description

Renvoie la liste des poignées (handles) QObject actuellement utilisées.


== Exemple

``````matlab
used = QObject_used()
``````


== Voir aussi

#nlink(<qml_engine:QObject_set>)[QObject\_set (set)];, #nlink(<qml_engine:QObject_get>)[QObject\_get (get)];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
