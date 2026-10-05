#import "nelson_help.typ": *

= realmin <double:realmin>

Plus petit nombre flottant positif.

== Syntaxe

- #raw("R = realmin()");
- #raw("R = realmin('double')");
- #raw("R = realmin('single')");

== Argument de sortie

/ R: un double ou single.

== Description

#strong[realmin]; renvoie le plus petit nombre flottant positif.


== Exemple

``````matlab
realmin
realmin('double')
realmin('single')
``````


== Voir aussi

#nlink(<double:realmax>)[realmax];, #nlink(<integer:intmin>)[intmin];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.10.0], [version initiale],
)

// Auteur: Allan CORNET
