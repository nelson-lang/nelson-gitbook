#import "nelson_help.typ": *

= fft2 <fftw:fft2>

Transformée de Fourier 2-D rapide.

== Syntaxe

- #raw("Y = fft2(X)");
- #raw("Y = fft2(X, m, n)");

== Argument d'entrée

/ X: tableau d'entrée.
/ m: nombre de lignes pour la transformée.
/ n: nombre de colonnes pour la transformée.

== Argument de sortie

/ Y: a vector, matrix, N-D array: frequency domain representation.

== Description

#strong[Y \= fft2(X)]; renvoie la transformée de Fourier bidimensionnelle de #strong[X]; en utilisant un algorithme FFT.

 Les arguments optionnels #strong[m]; et #strong[n]; peuvent être utilisés pour préciser le nombre de lignes et de colonnes de #strong[X]; à utiliser.

 Si l'un de ces arguments est plus grand que la taille de #strong[X];,#strong[X]; est redimensionné et complété par des zéros.

 Si#strong[X]; est un tableau multidimensionnel, chaque sous-matrice bidimensionnelle de #strong[X]; est traitée séparément.


== Exemple

``````matlab
R = fft2(eye(5, 5), 2, 3)
``````


== Voir aussi

#nlink(<fftw:fftn>)[fftn];, #nlink(<fftw:fft>)[fft];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
