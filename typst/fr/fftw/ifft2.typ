#import "nelson_help.typ": *

= ifft2 <fftw:ifft2>

Transformee de Fourier inverse rapide 2-D.

== Syntaxe

- #raw("Y = ifft2(X)");
- #raw("Y = ifft2(X, m, n)");

== Argument d'entrée

/ X: Tableau d'entree.
/ m: Nombre de lignes de la transformee.
/ n: Nombre de colonnes de la transformee.

== Argument de sortie

/ Y: Resultat de la transformee inverse.

== Description

#strong[ifft2]; retourne la transformee de Fourier inverse bidimensionnelle de #strong[X];.


== Exemple

``````matlab
X = magic(3); Y = ifft2(fft2(X))
``````


== Voir aussi

#nlink(<fftw:fft2>)[fft2];, #nlink(<fftw:ifftn>)[ifftn];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
