#import "nelson_help.typ": *

= qml\_pluginpathlist <qml_engine:qml_pluginpathlist>

Renvoie la liste des répertoires où le moteur recherche les plugins natifs pour les modules importés.

== Syntaxe

- #raw("p = qml_pluginpathlist()");

== Argument de sortie

/ p: un tableau de chaînes : chemins.

== Description

Renvoie la liste des répertoires où le moteur recherche les plugins natifs pour les modules importés.


== Exemple

``````matlab
qml_pluginpathlist()
``````


== Voir aussi

#nlink(<qml_engine:qml_addpluginpath>)[qml\_addpluginpath];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
