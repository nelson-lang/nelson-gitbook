#import "nelson_help.typ": *

= sprank <sparse:sprank>

Rang structurel d'une matrice.

== Syntaxe

- #raw("r = sprank(S)");

== Argument d'entrée

/ S: une matrice sparse ou pleine a virgule flottante ou logique.

== Argument de sortie

/ r: rang structurel.

== Description

#strong[sprank]; retourne le rang structurel d'une matrice, calcule a partir de son motif non nul.

 La valeur est la taille d'un couplage maximal entre les lignes et les colonnes de la matrice.

 Les matrices double, single, logiques, double complexes et single complexes sont prises en charge, en representation pleine ou sparse. Pour une entree sparse, les valeurs nulles stockees sont ignorees lors de la construction du motif structurel.

 Le rang structurel peut etre superieur au rang numerique, car il depend uniquement des positions des valeurs non nulles et non des dependances lineaires numeriques.


== Exemples

``````matlab
S = sparse([1 1; 1 1]);
r = sprank(S)

``````

``````matlab
S = sparse([1 2 1 2], [1 1 2 2], single([0 -0 complex(0, 0) complex(0, 2)]), 2, 2, 4);
r = sprank(S)

``````


== Voir aussi

#nlink(<sparse:sparse>)[sparse];, #nlink(<sparse:nnz>)[nnz];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
