#import "nelson_help.typ": *

= QObject\_get <qml_engine:QObject_get>

Récupère la valeur d'une propriété d'une poignée (handle) QObject.

== Syntaxe

- #raw("R = get(h, property_name)");

== Argument d'entrée

/ h: une poignée (handle) QObject.
/ property\_name: une chaîne : nom de propriété.

== Argument de sortie

/ R: Le type de données de la valeur retournée dépend de la méthode invoquée.

== Description

#strong[R \= get(h, property\_name)]; renvoie la valeur de la propriété demandée.


== Exemple

``````matlab
h = errordlg();
h.visible % or get(h, 'visible')
h.windowTitle % or get(h, 'windowTitle')
``````


== Voir aussi

#nlink(<qml_engine:QObject_set>)[QObject\_set (set)];, #nlink(<handle:get>)[get];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
