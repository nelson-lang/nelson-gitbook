#import "../nelson_help.typ": *

= sgolayfilt <signal_processing:1_signal_generation_preprocessing.sgolayfilt>

Filtre de lissage Savitzky-Golay.

== Syntaxe

- #raw("Y = sgolayfilt(X, K, F)");
- #raw("Y = sgolayfilt(X, K, F, W)");
- #raw("Y = sgolayfilt(X, K, F, W, DIM)");

== Argument d'entrée

/ X: signal d'entree.
/ K: ordre polynomial.
/ F: longueur de trame.
/ W: vecteur de poids positifs. Utiliser \[\] pour les poids par defaut.
/ DIM: dimension sur laquelle appliquer le filtre.

== Argument de sortie

/ Y: signal lisse.

== Description

#strong[sgolayfilt]; lisse les donnees avec des coefficients FIR Savitzky-Golay.


== Exemple

``````matlab

y = sgolayfilt([1 2 3 2 1], 2, 5);

``````


== Voir aussi

#nlink(<signal_processing:1_signal_generation_preprocessing.sgolay>)[sgolay];, #nlink(<signal_processing:1_signal_generation_preprocessing.medfilt1>)[medfilt1];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
