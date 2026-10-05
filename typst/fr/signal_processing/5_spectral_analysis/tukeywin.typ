#import "../nelson_help.typ": *

= tukeywin <signal_processing:5_spectral_analysis.tukeywin>

Fenêtre de Tukey.

== Syntaxe

- #raw("W = tukeywin(M)");
- #raw("W = tukeywin(M, r)");

== Argument d'entrée

/ M: longueur de la fenêtre.
/ r: rapport de transition.

== Argument de sortie

/ W: vecteur colonne contenant la fenêtre.

== Description

#strong[tukeywin]; retourne une fenêtre cosinus apodisée.


== Exemple

``````matlab

w = tukeywin(6, 0.5);

``````


== Voir aussi

#nlink(<signal_processing:5_spectral_analysis.hann>)[hann];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
