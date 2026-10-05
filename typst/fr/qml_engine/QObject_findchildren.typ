#import "nelson_help.typ": *

= QObject\_findchildren <qml_engine:QObject_findchildren>

Renvoie tous les enfants de cet objet ayant le nom donné.

== Syntaxe

- #raw("hr = QObject_findchildren(h, objectName, recursive)");

== Argument d'entrée

/ h: une poignée (handle) QObject.
/ objectName: une chaîne.
/ recursive: un logique : true (La recherche est effectuée de manière récursive).

== Argument de sortie

/ hr: a vector of QObject handle.

== Description

Renvoie tous les enfants de cet objet ayant le nom donné.


== Exemple

``````matlab
h1 = errordlg()
h2 = errordlg()
hr = QObject_findchildren(QObject_root(), 'errordlg', true)
``````


== Voir aussi

#nlink(<qml_engine:QObject_set>)[QObject\_set (set)];, #nlink(<qml_engine:QObject_get>)[QObject\_get (get)];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
