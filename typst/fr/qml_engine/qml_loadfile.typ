#import "nelson_help.typ": *

= qml\_loadfile <qml_engine:qml_loadfile>

Charger un fichier QML.

== Syntaxe

- #raw("h = qml_loadfile(filename)");

== Argument d'entrée

/ filename: une chaîne : nom de fichier QML.

== Argument de sortie

/ h: une poignée (handle) QObject.

== Description

Charge un fichier QML

 Il crée un composant QML et charge le fichier .qml.


== Exemple

``````matlab
 % see examples in [nelsonroot(), '/modules/qml_engine/examples']
``````


== Voir aussi

#nlink(<qml_engine:qml_loadstring>)[qml\_loadstring];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
