#import "../nelson_help.typ": *

= repmat <elementary_functions:1_array_creation_shape.repmat>

Répliquer et paver un tableau.

== Syntaxe

- #raw("R = repmat(A, m)");
- #raw("R = repmat(A, m, n)");
- #raw("R = repmat(A, m, n, p …)");
- #raw("R = repmat(A, [m n])");
- #raw("R = repmat(A, [m n p …])");

== Argument d'entrée

/ A: un tableau.
/ m, n, p …: une valeur : entier

== Argument de sortie

/ R: tableau résultant du pavage.

== Description

#strong[repmat]; répète une matrice ou un tableau à N dimensions.

 Si une dimension résultante est nulle, la sortie est vide. Les autres dimensions et la classe de l'entrée sont conservées. Par exemple, repmat(zeros(0, 3), 2, 4) a pour taille \[0, 12\].


== Exemples

``````matlab
repmat(1:5, 2)
``````

``````matlab
repmat(1:5, [2 3])
``````

``````matlab
repmat(1:5, [2 3 4])
``````


== Voir aussi

#nlink(<elementary_functions:1_array_creation_shape.reshape>)[reshape];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
