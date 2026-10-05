#import "nelson_help.typ": *

= nonzeros <sparse:nonzeros>

Elements non nuls d'une matrice.

== Syntaxe

- #raw("v = nonzeros(A)");

== Argument d'entrée

/ A: tableau numerique, logique ou caractere, y compris les matrices sparse numeriques et logiques.

== Argument de sortie

/ v: vecteur colonne dense contenant les valeurs non nulles de A.

== Description

#strong[nonzeros]; retourne les valeurs non nulles de #strong[A]; dans l'ordre colonne.

 Pour une entree sparse, la sortie est un vecteur colonne dense contenant seulement les valeurs reellement non nulles. Les valeurs nulles stockees dans une matrice sparse sont ignorees.

 La sortie conserve la classe des valeurs de #strong[A];, y compris les entrees single, single complexes, logiques et entieres.


== Exemples

``````matlab
A = sparse([1 0 2; 0 3 0]);
v = nonzeros(A)

``````

``````matlab
S = sparse([1 2 1 2], [1 1 2 2], single([0 -0 complex(0, 0) complex(0, 2)]), 2, 2, 4);
v = nonzeros(S)

``````


== Voir aussi

#nlink(<elementary_functions:7_indexing_dimensions.find>)[find];, #nlink(<sparse:sparse>)[sparse];, #nlink(<sparse:nnz>)[nnz];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
