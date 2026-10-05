#import "nelson_help.typ": *

= qml\_loadstring <qml_engine:qml_loadstring>

Charge une chaîne QML.

== Syntaxe

- #raw("h = qml_loadstring(str_to_eval)");

== Argument d'entrée

/ str\_to\_eval: une chaîne.

== Argument de sortie

/ h: un handle QObject.

== Description

Charge une chaîne QML.

 Elle crée un composant QML et charge le fichier .qml.


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
