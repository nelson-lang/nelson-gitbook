#import "nelson_help.typ": *

= ifft <fftw:ifft>

Transformée de Fourier inverse rapide.

== Syntaxe

- #raw("Y = ifft(X)");
- #raw("Y = ifft(X, n)");
- #raw("Y = ifft(X, n, dim)");

== Argument d'entrée

/ X: un vecteur, une matrice ou un tableau N-D (double, single, integer, logical).
/ n: longueur de la transformée : un scalaire entier non négatif ou \[\] (par défaut).
/ dim: dimension : un scalaire entier positif.

== Argument de sortie

/ Y: un vecteur, une matrice ou un tableau N-D : représentation dans le domaine fréquentiel.

== Description

#strong[ifft(X)]; calcule la transformée de Fourier discrète inverse de X en utilisant un algorithme FFT basé sur la bibliothèque FFTW.


== Exemple

``````matlab
A = [1:10]
Y = fft(A)
R = ifft(Y)
``````


== Voir aussi

#nlink(<fftw:fft>)[fft];, #nlink(<fftw:fftw>)[fftw];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
