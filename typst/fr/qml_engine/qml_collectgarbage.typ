#import "nelson_help.typ": *

= qml\_collectgarbage <qml_engine:qml_collectgarbage>

Exécute le ramasse-miette QML.

== Syntaxe

- #raw("qml_collectgarbage");

== Description

Le ramasse-miette tentera de récupérer la mémoire en localisant et en détruisant les objets qui ne sont plus accessibles dans l'environnement de script.


== Exemple

``````matlab
qml_collectgarbage()
``````


== Voir aussi

#nlink(<qml_engine:qml_clearcomponentcache>)[qml\_clearcomponentcache];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
