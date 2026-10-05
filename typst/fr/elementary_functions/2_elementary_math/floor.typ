#import "../nelson_help.typ": *

= floor <elementary_functions:2_elementary_math.floor>

Arrondir vers le bas

== Syntaxe

- #raw("C = floor(A)");

== Argument d'entrée

/ A: une variable

== Argument de sortie

/ C: résultat de floor.

== Description

#strong[floor]; renvoie une matrice d'entiers obtenue en arrondissant chaque élément vers le bas.

 Les entrees sparse single et sparse single complexes sont prises en charge. Seules les entrees non nulles stockees sont arrondies et le resultat conserve le stockage sparse.


== Exemples

``````matlab
floor(pi)
``````

Arrondi vers le bas d'une matrice sparse single.

``````matlab
S = sparse(single([1.2 0; -2.7 3.1]));
C = floor(S)
``````


== Voir aussi

#nlink(<elementary_functions:2_elementary_math.round>)[round];, #nlink(<elementary_functions:2_elementary_math.fix>)[fix];, #nlink(<elementary_functions:2_elementary_math.ceil>)[ceil];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [2.0.0], [prise en charge des entrees sparse single et sparse single complexes.],
)

// Auteur: Allan CORNET
