#import "nelson_help.typ": *

= qml\_setofflinestoragepath <qml_engine:qml_setofflinestoragepath>

Définit la propriété contenant le répertoire pour stocker les données utilisateur hors ligne.

== Syntaxe

- #raw("qml_setofflinestoragepath(path_data)");

== Argument d'entrée

/ path\_data: une chaîne

== Description

Définit la propriété contenant le répertoire pour stocker les données utilisateur hors ligne.


== Exemple

``````matlab
qml_setofflinestoragepath(tmpdir())
 
``````


== Voir aussi

#nlink(<qml_engine:qml_offlinestoragepath>)[qml\_offlinestoragepath];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
