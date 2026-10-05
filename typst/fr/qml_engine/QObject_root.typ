#import "nelson_help.typ": *

= QObject\_root <qml_engine:QObject_root>

Objet racine QObject.

== Syntaxe

- #raw("r = QObject_root()");

== Argument de sortie

/ h: poignée (handle) QObject de l'interface graphique Nelson.

== Description

Renvoie la poignée (handle) QObject de l'interface graphique Nelson.


== Exemple

``````matlab
h1 = QObject_root()
h1.windowTitle
h1.windowTitle = 'Your title'
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
