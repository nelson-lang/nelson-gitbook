#import "../nelson_help.typ": *

= ceil <elementary_functions:2_elementary_math.ceil>

Arrondir vers le haut

== Syntaxe

- #raw("C = ceil(A)");

== Argument d'entrée

/ A: une variable

== Argument de sortie

/ C: résultat de ceil.

== Description

#strong[ceil]; renvoie une matrice d'entiers ou complexes dont les éléments sont arrondis vers le haut.

 Les entrees sparse single et sparse single complexes sont prises en charge. Seules les entrees non nulles stockees sont arrondies et le resultat conserve le stockage sparse.


== Exemples

``````matlab
ceil(pi)
``````

Arrondi vers le haut d'une matrice sparse single.

``````matlab
S = sparse(single([1.2 0; -2.7 3.1]));
C = ceil(S)
``````


== Voir aussi

#nlink(<elementary_functions:2_elementary_math.floor>)[floor];, #nlink(<elementary_functions:2_elementary_math.fix>)[fix];, #nlink(<elementary_functions:2_elementary_math.round>)[round];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [2.0.0], [prise en charge des entrees sparse single et sparse single complexes.],
)

// Auteur: Allan CORNET
