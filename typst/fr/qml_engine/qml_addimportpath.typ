#import "nelson_help.typ": *

= qml\_addimportpath <qml_engine:qml_addimportpath>

Ajoute un chemin comme répertoire où le moteur QML recherche les modules installés.

== Syntaxe

- #raw("qml_addimportpath(path)");

== Argument d'entrée

/ path: une chaîne : chemin valide.

== Description

#strong[qml\_addimportpath]; ajoute #strong[path]; comme répertoire où le moteur recherche les modules installés dans une structure de répertoires basée sur des URL.

 Le chemin nouvellement ajouté sera placé en tête de #strong[qml\_importpathlist];.


== Exemple

``````matlab
qml_importpathlist()
qml_addimportpath(tempdir)
qml_importpathlist()

``````


== Voir aussi

#nlink(<qml_engine:qml_importpathlist>)[qml\_importpathlist];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
