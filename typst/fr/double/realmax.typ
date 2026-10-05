#import "nelson_help.typ": *

= realmax <double:realmax>

Plus grand nombre flottant positif.

== Syntaxe

- #raw("R = realmax()");
- #raw("R = realmax('double')");
- #raw("R = realmax('single')");

== Argument de sortie

/ R: un double ou single.

== Description

#strong[realmax]; renvoie le plus grand nombre flottant positif.


== Exemple

``````matlab
realmax
realmax('double')
realmax('single')
``````


== Voir aussi

#nlink(<integer:intmax>)[intmax];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
