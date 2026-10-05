#import "nelson_help.typ": *

= qt\_version <qml_engine:qt_version>

Renvoie la version de Qt utilisée.

== Syntaxe

- #raw("v = qt_version()");

== Argument de sortie

/ v: une chaîne : numéro de version.

== Description

#strong[v \= qt\_version()]; renvoie le numéro de version de Qt à l'exécution sous forme de chaîne (par exemple, "6.2.4").


== Exemple

``````matlab
semver(qt_version(), '>=6.2')
``````


== Voir aussi

#nlink(<modules_manager:semver>)[semver];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
