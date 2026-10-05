#import "nelson_help.typ": *

= QObject\_undefine <qml_engine:QObject_undefine>

Supprime une propriété dynamique d'une poignée (handle) QObject.

== Syntaxe

- #raw("QObject_undefine(h, property_name)");

== Argument d'entrée

/ h: an QObject handle.
/ property\_name: a string : dynamic property name.

== Argument de sortie

/ R: a string: method signature.

== Description

Supprime une propriété dynamique d'une poignée (handle) QObject.


== Exemple

``````matlab
h = errordlg()
set(h, 'myProp', 33)
h
get(h, 'myProp')
QObject_undefine(h, 'myProp')
get(h, 'myProp')
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
