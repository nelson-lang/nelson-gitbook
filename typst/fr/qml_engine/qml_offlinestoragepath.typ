#import "nelson_help.typ": *

= qml\_offlinestoragepath <qml_engine:qml_offlinestoragepath>

Obtient la propriété contenant le répertoire pour stocker les données utilisateur hors ligne.

== Syntaxe

- #raw("p = qml_offlinestoragepath()");

== Argument d'entrée

/ path\_data: une chaîne

== Argument de sortie

/ p: une chaîne : chemin.

== Description

Obtient la propriété contenant le répertoire pour stocker les données utilisateur hors ligne.


== Exemple

``````matlab
qml_offlinestoragepath()
qml_setofflinestoragepath(tmpdir())
qml_offlinestoragepath()
``````


== Voir aussi

#nlink(<qml_engine:qml_setofflinestoragepath>)[qml\_setofflinestoragepath];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
