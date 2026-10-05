#import "nelson_help.typ": *

= flintmax <double:flintmax>

Plus grand entier consécutif représentable en virgule flottante.

== Syntaxe

- #raw("R = flintmax()");
- #raw("R = flintmax('double')");
- #raw("R = flintmax('single')");
- #raw("R = flintmax('like', V)");

== Argument d'entrée

/ V: une variable double ou single.

== Argument de sortie

/ R: un double ou single.

== Description

#strong[flintmax]; renvoie le plus grand entier consécutif représentable au format virgule flottante.


== Exemple

``````matlab
flintmax
flintmax('double')
flintmax('like', pi)
flintmax('single')
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
