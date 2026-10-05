#import "../nelson_help.typ": *

= impz <signal_processing:4_digital_filters.impz>

Réponse impulsionnelle d'un filtre numérique.

== Syntaxe

- #raw("[H, T] = impz(B, A)");
- #raw("[H, T] = impz(B, A, N)");
- #raw("[H, T] = impz(B, A, N, Fs)");

== Argument d'entrée

/ B: coefficients du numérateur.
/ A: coefficients du dénominateur.
/ N: nombre d'échantillons.
/ Fs: fréquence d'échantillonnage.

== Argument de sortie

/ H: réponse impulsionnelle.
/ T: vecteur d'échantillons ou de temps.

== Description

#strong[impz]; filtre une impulsion unité avec le filtre défini par B et A.


== Exemple

``````matlab

[h, t] = impz([1 1], 1, 4);

``````


== Voir aussi

#nlink(<signal_processing:4_digital_filters.stepz>)[stepz];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
