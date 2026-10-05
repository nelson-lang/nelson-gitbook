#import "nelson_help.typ": *

= QObject\_methodsignature <qml_engine:QObject_methodsignature>

Renvoie la signature d'une méthode d'une poignée (handle) QObject.

== Syntaxe

- #raw("res = QObject_methodsignature(h, method_name)");

== Argument d'entrée

/ h: une poignée (handle) QObject.
/ method\_name: une chaîne : nom de la méthode.

== Argument de sortie

/ R: a string: method signature.

== Description

Renvoie la signature d'une méthode d'une poignée (handle) QObject.


== Exemple

``````matlab
h = errordlg()
QObject_methodsignature(h, 'setVisible')
``````


== Voir aussi

#nlink(<handle:invoke>)[QObject\_invoke (invoke)];, #nlink(<handle:methods>)[QObject\_methods (methods)];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
