#import "../nelson_help.typ": *

= topkrows <elementary_functions:7_indexing_dimensions.topkrows>

Les k premières lignes triées d'une matrice.

== Syntaxe

- #raw("B = topkrows(A, k)");
- #raw("B = topkrows(A, k, col)");
- #raw("B = topkrows(A, k, col, direction)");
- #raw("[B, I] = topkrows(...)");

== Argument d'entrée

/ A: une matrice.
/ k: le nombre de lignes à renvoyer.
/ col: les colonnes utilisées pour le tri (toutes par défaut).
/ direction: #strong['descend']; (par défaut) ou #strong['ascend'];.

== Argument de sortie

/ B: les #strong[k]; premières lignes de la matrice triée.
/ I: les indices tels que #strong[B \= A(I, :)];.

== Description

#strong[B \= topkrows(A, k)]; renvoie les #strong[k]; premières lignes de #strong[A]; triées par ordre décroissant.


== Exemple

``````matlab
[B, I] = topkrows([3 1; 1 2; 2 9], 2)
``````


== Voir aussi

#nlink(<elementary_functions:7_indexing_dimensions.sortrows>)[sortrows];, #nlink(<elementary_functions:7_indexing_dimensions.issortedrows>)[issortedrows];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
