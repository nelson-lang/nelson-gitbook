#import "../nelson_help.typ": *

= pagenorm <linear_algebra:4_matrix_functions.pagenorm>

Norme matricielle ou vectorielle page par page.

== Syntaxe

- #raw("Y = pagenorm(X)");
- #raw("Y = pagenorm(X, p)");

== Argument d'entrée

/ X: Tableau N-D. Chaque page est X(:,:,i,...).
/ p: ordre de la norme : 2 (par defaut, plus grande valeur singuliere), 1, Inf ou 'fro'.

== Argument de sortie

/ Y: tableau des normes de chaque page, de taille \[1 1 size(X,3) ...\].

== Description

#strong[pagenorm(X)]; calcule la norme 2 de chaque page X(:,:,i,...) du tableau N-D X et les retourne dans un tableau dont les deux premieres dimensions sont singleton.

 #strong[pagenorm(X, p)]; utilise la norme d'ordre p : 1, 2, Inf ou 'fro'. Lorsqu'une page est un vecteur, la norme vectorielle correspondante est utilisee.


== Exemple

``````matlab
X = cat(3, [1 2; 3 4], [5 6; 7 8]);
Y = pagenorm(X)
``````


== Voir aussi

#nlink(<elementary_functions:2_elementary_math.norm>)[norm];, #nlink(<linear_algebra:4_matrix_functions.pagemtimes>)[pagemtimes];, #nlink(<linear_algebra:4_matrix_functions.pagetranspose>)[pagetranspose];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
