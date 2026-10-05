#import "../nelson_help.typ": *

= bartlett <signal_processing:5_spectral_analysis.bartlett>

Fenêtre de Bartlett.

== Syntaxe

- #raw("c = bartlett(m)");

== Argument d'entrée

/ m: entier positif : longueur de la fenêtre

== Argument de sortie

/ c: vecteur colonne

== Description

#strong[c \= bartlett(m)]; renvoie une fenêtre de Bartlett symétrique de longueur L.


== Bibliographie

Oppenheim, Alan V., Ronald W. Schafer, and John R. Buck. Discrete-Time Signal Processing. Upper Saddle River, NJ: Prentice Hall, 1999, pp. 468–471.

== Exemple

``````matlab
c = bartlett(8)
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
