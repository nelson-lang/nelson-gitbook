#import "nelson_help.typ": *

= qml\_createqquickview <qml_engine:qml_createqquickview>

Charge un fichier QML et crée une fenêtre.

== Syntaxe

- #raw("h = qml_createqquickview(filename)");

== Argument d'entrée

/ filename: une chaîne : nom de fichier QML.

== Argument de sortie

/ h: une poignée (handle) QObject.

== Description

Charge un fichier QML

 Il crée un composant QML, une fenêtre et charge le fichier .qml.


== Exemple

``````matlab
 % see examples in [nelsonroot(), '/modules/qml_engine/examples']
``````


== Voir aussi

#nlink(<qml_engine:qml_loadstring>)[qml\_loadstring];, #nlink(<qml_engine:qml_loadfile>)[qml\_loadfile];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
