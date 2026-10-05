#import "nelson_help.typ": *

= nelsonObject <qml_engine:nelsonObject>

objet nelson appelable depuis QML.

== Syntaxe

- #raw("nelson.disp(msg)");
- #raw("nelson.evaluate(cmd)");
- #raw("nelson.processevent()");
- #raw("nelson.call(function_name)");
- #raw("nelson.call(function_name, arg1, ..., arg5)");

== Argument d'entrée

/ msg: une chaîne.
/ cmd: une chaîne.
/ function\_name: une chaîne : nom de la fonction nelson à appeler
/ arg1, ..., arg5: variables JavaScript

== Description

#strong[nelson]; contient des méthodes utilisées comme callbacks pour appeler nelson depuis QML


== Voir aussi

#nlink(<qml_engine:qml_pluginpathlist>)[qml\_pluginpathlist];, #nlink(<qml_engine:qml_addimportpath>)[qml\_addimportpath];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
