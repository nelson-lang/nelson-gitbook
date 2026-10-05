#import "../nelson_help.typ": *

= sgolay <signal_processing:1_signal_generation_preprocessing.sgolay>

Coefficients de filtre Savitzky-Golay.

== Syntaxe

- #raw("[B, G] = sgolay(K, F)");
- #raw("[B, G] = sgolay(K, F, W)");

== Argument d'entrée

/ K: ordre polynomial.
/ F: longueur de trame.
/ W: vecteur de poids positifs.

== Argument de sortie

/ B: matrice de coefficients de lissage.
/ G: matrice de coefficients de moindres carres.

== Description

#strong[sgolay]; calcule des coefficients locaux de moindres carres polynomiaux.


== Exemple

``````matlab

[b, g] = sgolay(2, 5);

``````


== Voir aussi

#nlink(<signal_processing:1_signal_generation_preprocessing.sgolayfilt>)[sgolayfilt];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
