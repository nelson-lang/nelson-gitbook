#import "nelson_help.typ": *

= ismembertol <data_analysis:ismembertol>

Appartenance à un ensemble à une tolérance près

== Syntaxe

- #raw("LIA = ismembertol(A, B)");
- #raw("LIA = ismembertol(A, B, tol)");
- #raw("[LIA, LOCB] = ismembertol(___)");

== Argument d'entrée

/ A: tableau numérique à tester.
/ B: ensemble numérique de référence.
/ tol: tolérance scalaire positive ou nulle. La valeur par défaut est 1e-12 pour du double et 1e-6 pour du single. La comparaison utilise tol mise à l'échelle par la plus grande valeur absolue de A et B.

== Argument de sortie

/ LIA: tableau logique, vrai là où un élément de A est à la tolérance près d'un élément de B.
/ LOCB: plus petit indice dans B d'un élément correspondant, ou 0 sinon.

== Description

#strong[ismembertol]; retourne un tableau logique de même taille que A, contenant vrai là où les éléments de A sont, à la tolérance près, égaux aux éléments de B. Deux valeurs u et v sont dans la tolérance si abs(u-v) \<\= tol\*max(abs(\[A(:);B(:)\])).


== Exemple

``````matlab
[lia, locb] = ismembertol([1 2 3], [1.0000001 5 3], 1e-6)
``````


== Voir aussi

#nlink(<data_analysis:unique>)[unique];, #nlink(<data_analysis:intersect>)[intersect];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
