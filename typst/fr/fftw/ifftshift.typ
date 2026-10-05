#import "nelson_help.typ": *

= ifftshift <fftw:ifftshift>

inverse de fftshift

== Syntaxe

- #raw("Y = ifftshift(X)");
- #raw("Y = ifftshift(X, DIM)");

== Argument d'entrée

/ X: un vecteur, une matrice ou un tableau N-D (double, single, integer).
/ DIM: axes sur lesquelles effectuer le décalage.

== Argument de sortie

/ Y: tableau décalé.

== Description

#strong[ifftshift(X)]; calcule l'inverse de #strong[fftshift];.


== Exemple

``````matlab
M = [ 0.,  10.,  20.; 30.,  40., -40.; -30., -20., -10.]
ifftshift(M)
ifftshift(M, 1)
``````


== Voir aussi

#nlink(<fftw:ifft>)[ifft];, #nlink(<fftw:fftshift>)[fftshift];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
