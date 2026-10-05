#import "nelson_help.typ": *

= invoke <handle:invoke>

Invoque une méthode sur un objet handle.

== Syntaxe

- #raw("R = invoke(h)");
- #raw("R = invoke(h, 'methodname')");
- #raw("R = invoke(h, 'methodname', arg1, arg2, ... , argN)");

== Argument d'entrée

/ h: un objet handle.

== Argument de sortie

/ R: Le type de donnée de la valeur renvoyée dépend de la méthode invoquée.

== Description

#strong[invoke(h)]; renvoie une structure contenant la liste de toutes les méthodes appelables.

 #strong[R \= invoke(h, 'methodname')]; appelle la méthode spécifiée par methodname et renvoie une valeur de sortie.


== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
