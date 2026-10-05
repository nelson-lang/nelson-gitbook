#import "../nelson_help.typ": *

= condest <linear_algebra:5_matrix_properties.condest>

Estimation du nombre de condition en norme 1.

== Syntaxe

- #raw("c = condest(A)");
- #raw("c = condest(A, t)");
- #raw("[c, v] = condest(A)");

== Argument d'entrée

/ A: une matrice numerique carree.
/ t: nombre entier positif de vecteurs de test. La valeur par defaut est min(size(A, 1), 2).

== Argument de sortie

/ c: borne inferieure estimee du nombre de condition en norme 1.
/ v: vecteur noyau approche associe a l'estimation.

== Description

#strong[condest]; estime #strong[norm(A, 1) \* norm(inv(A), 1)]; sans former explicitement #strong[inv(A)];.

 L'implementation utilise des resolutions repetees avec #strong[A]; et #strong[A'];, ce qui convient aux matrices sparse.

 Les matrices sparse double, sparse single, sparse double complexes et sparse single complexes sont prises en charge. Les entrees zero stockees dans une matrice sparse ne contribuent pas au test de singularite structurelle.


== Exemple

``````matlab
A = sparse([4 1 0; 2 3 1; 0 1 2]);
[c, v] = condest(A)

``````


== Voir aussi

#nlink(<linear_algebra:5_matrix_properties.cond>)[cond];, #nlink(<linear_algebra:5_matrix_properties.rcond>)[rcond];, #nlink(<elementary_functions:2_elementary_math.normest>)[normest];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
  [2.0.0], [comportement sparse single et sparse single complexe documente.],
)

// Auteur: Allan CORNET
