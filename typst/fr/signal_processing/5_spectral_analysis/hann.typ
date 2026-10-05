#import "../nelson_help.typ": *

= hann <signal_processing:5_spectral_analysis.hann>

Fenêtre de Hann.

== Syntaxe

- #raw("c = hann(m)");
- #raw("c = hann(m, opt)");

== Argument d'entrée

/ m: entier positif : longueur de la fenêtre
/ opt: chaîne : 'symetric' (par défaut) ou 'periodic'

== Argument de sortie

/ c: vecteur colonne

== Description

#strong[c \= hann(m)]; calcule les coefficients d'une fenêtre de Hann de longueur #strong[m];.


== Bibliographie

Oppenheim, Alan V., Ronald W. Schafer, et John R. Buck. Discrete-Time Signal Processing. Upper Saddle River, NJ: Prentice Hall, 1999.

== Exemple

``````matlab
c = hann(8)
c = hann(8, 'periodic')
``````


== Voir aussi

#nlink(<signal_processing:5_spectral_analysis.hamming>)[hamming];, #nlink(<signal_processing:5_spectral_analysis.blackman>)[blackman];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
