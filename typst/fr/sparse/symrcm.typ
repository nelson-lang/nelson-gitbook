#import "nelson_help.typ": *

= symrcm <sparse:symrcm>

Permutation Reverse Cuthill-McKee.

== Syntaxe

- #raw("p = symrcm(S)");

== Argument d'entrée

/ S: une matrice carree sparse ou pleine a virgule flottante ou logique.

== Argument de sortie

/ p: vecteur ligne de permutation.

== Description

#strong[symrcm]; retourne une permutation Reverse Cuthill-McKee calculee a partir du motif non nul symetrise de #strong[S];.

 La permutation peut reduire la largeur de bande avant des factorisations sparse ou des solveurs iteratifs.

 Les matrices carrees double, single, logiques, double complexes et single complexes sont prises en charge, en representation pleine ou sparse. Pour une entree sparse, les valeurs nulles stockees sont ignorees lors de la construction du graphe.

 La permutation retournee est un vecteur ligne d'indices bases sur un. L'expression #strong[S(p,p)]; reordonne les lignes et les colonnes de maniere coherente.


== Exemples

``````matlab
S = sparse([0 1 0 0; 1 0 1 0; 0 1 0 1; 0 0 1 0]);
p = symrcm(S)

``````

``````matlab
S = sparse(single([0 1i; 0 0]));
p = symrcm(S)

``````


== Voir aussi

#nlink(<sparse:sparse>)[sparse];, #nlink(<linear_algebra:5_matrix_properties.bandwidth>)[bandwidth];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
