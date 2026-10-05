#import "nelson_help.typ": *

= j <constructors_functions:j>

Unite imaginaire.

== Syntaxe

- #raw("j");
- #raw("3*j");

== Argument de sortie

/ j: valeur complexe scalaire egale a sqrt(-1).

== Description

j renvoie l'unite imaginaire sqrt(-1), comme i.

 j peut etre redefini comme une variable ordinaire. Utilisez clear pour restaurer le comportement par defaut.


== Exemple

Construire un nombre complexe avec l'unite imaginaire.

``````matlab
z = 2 + 3*j
``````


== Voir aussi

#nlink(<constructors_functions:i>)[i];, #nlink(<elementary_functions:3_complex_numbers.complex>)[complex];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
