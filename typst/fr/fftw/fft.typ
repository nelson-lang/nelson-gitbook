#import "nelson_help.typ": *

= fft <fftw:fft>

Transformée de Fourier rapide.

== Syntaxe

- #raw("Y = fft(X)");
- #raw("Y = fft(X, n)");
- #raw("Y = fft(X, n, dim)");

== Argument d'entrée

/ X: un vecteur, une matrice ou un tableau N-D (double, single, integer, logical).
/ n: longueur de la transformée : un scalaire entier non négatif ou \[\] (par défaut).
/ dim: dimension : un scalaire entier positif.

== Argument de sortie

/ Y: un vecteur, une matrice ou un tableau N-D : représentation dans le domaine fréquentiel.

== Description

#strong[fft(X)]; calcule la transformée de Fourier discrète de X en utilisant un algorithme FFT basé sur la bibliothèque FFTW.


== Exemple

``````matlab
 % Sampling frequency
Fs = 150;
% Time vector of 1 second
t = 0:1*inv(Fs):1;
% Creates a sine wave of f Hz.
f = 5;
x = sin(2 * pi * t * f);
% Length of FFT
nfft = 1024;
% Take fft, padding with zeros so that length(X) is equal to nfft
X = fft(x, nfft)
% FFT is symmetrix
X = X(1:nfft*inv(2))
% Frequency vector
f = (0:nfft *inv(2) -1)*Fs * inv(nfft);
``````


== Voir aussi

#nlink(<fftw:ifft>)[ifft];, #nlink(<fftw:fftw>)[fftw];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
