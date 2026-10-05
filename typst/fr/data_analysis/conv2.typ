#import "nelson_help.typ": *

= conv2 <data_analysis:conv2>

Convolution 2D.

== Syntaxe

- #raw("C = conv2(A, B)");
- #raw("C = conv2(u, v, A)");
- #raw("C = conv2(A, B, shape)");
- #raw("C = conv2(u, v, A, shape)");

== Argument d'entrée

/ A: vecteur ou matrice.
/ B: vecteur ou matrice.
/ u: vecteur ligne ou colonne.
/ v: vecteur ligne ou colonne.
/ shape: sous-partie de la convolution : 'full' (par défaut : convolution 2D complète), 'same' (partie centrale de la convolution) ou 'valid' (parties de la convolution calculées sans bords remplis de zéros).

== Argument de sortie

/ C: convolution 2D, renvoyée sous forme de vecteur ou de matrice.

== Description

#strong[conv2]; renvoie la convolution bidimensionnelle.


== Exemple

``````matlab
A = magic(3);
B = magic(4);
R = conv2(A, B, 'same')
``````


== Voir aussi

#nlink(<data_analysis:conv>)[conv];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
