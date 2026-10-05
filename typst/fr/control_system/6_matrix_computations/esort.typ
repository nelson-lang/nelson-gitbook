#import "../nelson_help.typ": *

= esort <control_system:6_matrix_computations.esort>

Tri et réordonnancement des valeurs propres.

== Syntaxe

- #raw("s = esort(p)");
- #raw("[s, ndx] = esort(p)");

== Argument d'entrée

/ p: p : un vecteur

== Argument de sortie

/ s: vecteur trié par partie réelle.

== Description

Trie et réordonne les valeurs propres et, éventuellement, leurs vecteurs propres selon des critères spécifiés.


== Exemple

``````matlab
p = [-2.410 + 5.573i;
-2.410 - 5.573i;
1.503;
-0.972;
-2.590];
[s, ndx] = esort(p)
  
``````


== Voir aussi

#nlink(<control_system:6_matrix_computations.dsort>)[dsort];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
