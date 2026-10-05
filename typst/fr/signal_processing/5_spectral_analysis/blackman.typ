#import "../nelson_help.typ": *

= blackman <signal_processing:5_spectral_analysis.blackman>

Fenêtre de Blackman.

== Syntaxe

- #raw("c = blackman(m)");
- #raw("c = blackman(m, opt)");

== Argument d'entrée

/ m: entier positif : longueur de la fenêtre
/ opt: chaîne : 'symetric' (par défaut) ou 'periodic'

== Argument de sortie

/ c: vecteur colonne

== Description

#strong[c \= blackman(m)]; calcule les coefficients d'une fenêtre de Blackman de longueur #strong[m];.


== Bibliographie

Oppenheim, Alan V., Ronald W. Schafer, and John R. Buck. Discrete-Time Signal Processing. Upper Saddle River, NJ: Prentice Hall, 1999, pp. 468–471.

== Exemple

``````matlab
c = blackman(8)
c = blackman(8, 'periodic')
``````


== Voir aussi

#nlink(<signal_processing:5_spectral_analysis.hamming>)[hamming];, #nlink(<signal_processing:5_spectral_analysis.hann>)[hann];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
