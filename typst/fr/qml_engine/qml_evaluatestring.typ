#import "nelson_help.typ": *

= qml\_evaluatestring <qml_engine:qml_evaluatestring>

Évalue une chaîne JS.

== Syntaxe

- #raw("r = qml_evaluatestring(string_to_eval)");

== Argument d'entrée

/ string\_to\_eval: une chaîne : code JS.

== Argument de sortie

/ r: a double, logical, int ou string.

== Description

Évalue une chaîne JS.

 Si la valeur retournée ne peut pas être convertie en type de base, elle sera convertie en chaîne.


== Exemple

``````matlab
qml_evaluatestring('a = 2 + 4')
``````


== Voir aussi

#nlink(<qml_engine:qml_evaluatefile>)[qml\_evaluatefile];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
