#import "nelson_help.typ": *

= QObject\_classname <qml_engine:QObject_classname>

Renvoie le nom de classe d'une poignée (handle) QObject.

== Syntaxe

- #raw("s = QObject_classname(h)");

== Argument d'entrée

/ h: une poignée (handle) QObject.

== Argument de sortie

/ s: une chaîne : nom de la classe.

== Description

Renvoie le nom de classe d'une poignée (handle) QObject.


== Exemple

``````matlab
h1 = QObject_root()
h1.className
QObject_classname(h1)
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
