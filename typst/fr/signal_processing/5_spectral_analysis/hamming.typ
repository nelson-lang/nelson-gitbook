#import "../nelson_help.typ": *

= hamming <signal_processing:5_spectral_analysis.hamming>

Fenêtre de Hamming.

== Syntaxe

- #raw("c = hamming(m)");
- #raw("c = hamming(m, opt)");

== Argument d'entrée

/ m: entier positif : longueur de la fenêtre
/ opt: chaîne : 'symetric' (par défaut) ou 'periodic'

== Argument de sortie

/ c: vecteur colonne

== Description

#strong[c \= hamming(m)]; calcule les coefficients d'une fenêtre de Hamming de longueur #strong[m];.


== Bibliographie

Oppenheim, Alan V., Ronald W. Schafer, et John R. Buck. Discrete-Time Signal Processing. Upper Saddle River, NJ: Prentice Hall, 1999.

== Exemple

``````matlab
c = hamming(8)
c = hamming(8, 'periodic')
``````


== Voir aussi

#nlink(<signal_processing:5_spectral_analysis.hann>)[hann];, #nlink(<signal_processing:5_spectral_analysis.blackman>)[blackman];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
