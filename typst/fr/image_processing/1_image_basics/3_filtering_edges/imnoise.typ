#import "../../nelson_help.typ": *

= imnoise <image_processing:1_image_basics.3_filtering_edges.imnoise>

Ajoute du bruit à une image.

== Syntaxe

- #raw("B = imnoise(A, 'gaussian')");
- #raw("B = imnoise(A, 'gaussian', m, v)");
- #raw("B = imnoise(A, 'salt & pepper', d)");
- #raw("B = imnoise(A, 'speckle', v)");
- #raw("B = imnoise(A, 'poisson')");

== Argument d'entrée

/ A: Image d'entrée (double, single, uint8, uint16 ou int16).
/ type: Type de bruit : 'gaussian', 'salt & pepper', 'speckle' ou 'poisson'.
/ m, v, d: Moyenne\/variance (gaussian), variance (speckle) ou densité (salt & pepper).

== Argument de sortie

/ B: Image bruitée, de même classe que A.

== Description

#strong[imnoise]; ajoute un bruit du type choisi à une image. L'image est traitée en double précision sur l'intervalle \[0, 1\] puis renvoyée dans la classe de #strong[A];. Le bruit gaussien a pour moyenne #strong[m]; (défaut 0) et variance #strong[v]; (défaut 0.01) ; 'salt & pepper' affecte une fraction #strong[d]; (défaut 0.05) des pixels ; 'speckle' est un bruit multiplicatif #strong[B \= A + A.\*n]; de variance #strong[v]; (défaut 0.04) ; 'poisson' tire des valeurs de loi de Poisson à partir des intensités de l'image.


== Fonction(s) utilisée(s)

randn, poissrnd

== Exemple

``````matlab
A = 0.5 * ones(100, 100);
B = imnoise(A, 'gaussian', 0, 0.02);
``````


== Voir aussi

#nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imresize>)[imresize];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
