#import "nelson_help.typ": *

= qml\_importpathlist <qml_engine:qml_importpathlist>

Renvoie la liste des répertoires où le moteur recherche les modules installés dans une structure de répertoires basée sur des URL.

== Syntaxe

- #raw("p = qml_importpathlist()");

== Argument de sortie

/ p: un tableau de chaînes : chemins.

== Description

Renvoie la liste des répertoires où le moteur recherche les modules installés dans une structure de répertoires basée sur des URL.


== Exemple

``````matlab
qml_importpathlist()
``````


== Voir aussi

#nlink(<qml_engine:qml_addimportpath>)[qml\_addimportpath];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
