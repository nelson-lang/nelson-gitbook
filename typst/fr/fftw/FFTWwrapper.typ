#import "nelson_help.typ": *

= FFTWwrapper <fftw:FFTWwrapper>

charger\/libérer la bibliothèque FFTW dynamiquement.

== Syntaxe

- #raw("r = FFTWwrapper('load')");
- #raw("r = FFTWwrapper('load', fftwlibraryname, fftwflibraryname)");
- #raw("r = FFTWwrapper('free')");

== Argument d'entrée

/ 'load': charger la bibliothèque FFTW.
/ 'free': libérer la bibliothèque FFTW.
/ fftwlibraryname: une chaîne : nom de la bibliothèque FFTW.
/ fftwflibraryname: une chaîne : nom de la bibliothèque FFTW float.

== Argument de sortie

/ r: un booléen.

== Description

#strong[FFTWwrapper]; est une fonction interne utilisée pour charger la bibliothèque FFTW dynamiquement.


== Voir aussi

#nlink(<fftw:fft>)[fft];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
