#import "nelson_help.typ": *

= fftw <fftw:fftw>

fonction pour déterminer l'algorithme FFT.

== Syntaxe

- #raw("m = fftw('planner')");
- #raw("fftw('planner', m)");
- #raw("w = fftw('dwisdom')");
- #raw("fftw('dwisdom', w)");
- #raw("w = fftw('swisdom')");
- #raw("fftw('swisdom', w)");

== Argument d'entrée

/ m: méthode pour définir les paramètres de la transformée : 'estimate', 'measure', 'patient', 'exhaustive' ou 'hybrid'.
/ w: une chaîne : données de wisdom.

== Argument de sortie

/ m: méthode : 'estimate', 'measure', 'patient', 'exhaustive' ou 'hybrid'.
/ w: une chaîne : données de wisdom.

== Description

La méthode par défaut est 'estimate'.


== Exemple

``````matlab
w = fftw('dwisdom')
M = rand(1000);
tic; fft(M); toc
fftw('dwisdom', w)
tic; fft(M); toc
``````


== Voir aussi

#nlink(<fftw:fft>)[fft];, #nlink(<fftw:ifft>)[ifft];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
