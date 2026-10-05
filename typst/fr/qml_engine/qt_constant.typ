#import "nelson_help.typ": *

= qt\_constant <qml_engine:qt_constant>

Renvoie la valeur d'une constante Qt.

== Syntaxe

- #raw("v = qt_constant(constant_name)");
- #raw("ce = qt_constant()");

== Argument d'entrée

/ constant\_name: une chaîne : constante Qt souhaitée.

== Argument de sortie

/ v: un entier scalaire (valeur de la constante Qt).
/ ce: une cellule contenant tous les noms de constantes disponibles.

== Description

#strong[v \= qt\_constant(constant\_name)]; renvoie la valeur d'une constante Qt.


== Exemple

``````matlab
qt_constant('Qt.WindowModal')
c = qt_constant()
``````


== Voir aussi

#nlink(<qml_engine:qt_version>)[qt\_version];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
