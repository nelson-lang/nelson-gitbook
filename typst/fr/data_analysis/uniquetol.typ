#import "nelson_help.typ": *

= uniquetol <data_analysis:uniquetol>

Valeurs uniques à une tolérance près.

== Syntaxe

- #raw("C = uniquetol(A)");
- #raw("C = uniquetol(A, tol)");
- #raw("C = uniquetol(___, nom, valeur)");
- #raw("[C, ia, ic] = uniquetol(___)");

== Argument d'entrée

/ A: tableau plein réel de type single ou double.
/ tol: tolérance scalaire positive ou nulle. La valeur par défaut est 1e-12 pour du double et 1e-6 pour du single. Deux valeurs u et v sont dans la tolérance si abs(u-v) \<\= tol\*DataScale.
/ nom, valeur: une ou plusieurs paires nom-valeur : 'ByRows' (logique, traite chaque ligne de A comme un seul élément), 'OutputAllIndices' (logique, renvoie ia sous forme de tableau de cellules contenant tous les indices de chaque groupe), 'DataScale' (scalaire ou vecteur par colonne utilisé à la place de la mise à l'échelle automatique).

== Argument de sortie

/ C: valeurs uniques de A à la tolérance près, triées par ordre croissant.
/ ia: vecteur d'indices tel que C \= A(ia). Lorsque 'OutputAllIndices' est vrai, ia est un tableau de cellules où ia{k} liste tous les indices de A appartenant au k-ème groupe.
/ ic: vecteur d'indices tel que A est à la tolérance près de C(ic).

== Description

#strong[uniquetol]; retourne les valeurs uniques de #strong[A]; en utilisant la tolérance #strong[tol];. Deux éléments sont considérés égaux lorsque leur différence absolue est inférieure ou égale à #strong[tol]; mise à l'échelle par les données. Par défaut la mise à l'échelle est la plus grande valeur absolue de #strong[A];, ou la plus grande valeur absolue de chaque colonne lorsque #strong['ByRows']; est vrai.

 La sortie #strong[C]; est triée par ordre croissant et, pour chaque groupe de valeurs proches, conserve la plus petite.


== Exemple

``````matlab
[C, ia, ic] = uniquetol([2 1 2 1.0000001], 1e-6)
``````


== Voir aussi

#nlink(<data_analysis:ismembertol>)[ismembertol];, #nlink(<data_analysis:unique>)[unique];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
