#import "nelson_help.typ": *

= get <handle:get>

Récupère la valeur d'une propriété d'un objet handle.

== Syntaxe

- #raw("R = get(h, property_name)");

== Argument d'entrée

/ h: un objet handle.
/ property\_name: une chaîne : nom de la propriété.

== Argument de sortie

/ R: Le type de donnée de la valeur renvoyée dépend de la méthode invoquée.

== Description

#strong[R \= get(h, property\_name)]; renvoie la valeur de la propriété demandée.


== Voir aussi

#nlink(<qml_engine:QObject_get>)[QObject\_get (get)];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
