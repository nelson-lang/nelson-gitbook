#import "nelson_help.typ": *

= qml\_addpluginpath <qml_engine:qml_addpluginpath>

Ajoute un chemin comme répertoire où le moteur QML recherche les plugins natifs.

== Syntaxe

- #raw("qml_addpluginpath(path)");

== Argument d'entrée

/ path: une chaîne : chemin valide.

== Description

#strong[qml\_addpluginpath]; ajoute #strong[path]; comme répertoire où le moteur recherche les plugins natifs.

 Par défaut, la liste ne contient que #strong[.];. Le chemin nouvellement ajouté sera placé en tête de #strong[qml\_pluginpathlist];.


== Exemple

``````matlab
qml_pluginpathlist()
qml_addpluginpath(tempdir)
qml_pluginpathlist()

``````


== Voir aussi

#nlink(<qml_engine:qml_pluginpathlist>)[qml\_pluginpathlist];, #nlink(<qml_engine:qml_addimportpath>)[qml\_addimportpath];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
