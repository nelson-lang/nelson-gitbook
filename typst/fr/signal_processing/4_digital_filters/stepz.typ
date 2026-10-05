#import "../nelson_help.typ": *

= stepz <signal_processing:4_digital_filters.stepz>

Réponse indicielle d'un filtre numérique.

== Syntaxe

- #raw("[S, T] = stepz(B, A)");
- #raw("[S, T] = stepz(B, A, N)");

== Argument d'entrée

/ B: coefficients du numérateur.
/ A: coefficients du dénominateur.
/ N: nombre d'échantillons.

== Argument de sortie

/ S: réponse indicielle.
/ T: vecteur d'échantillons ou de temps.

== Description

#strong[stepz]; calcule la somme cumulée de la réponse impulsionnelle.


== Exemple

``````matlab

[s, t] = stepz([1 1], 1, 4);

``````


== Voir aussi

#nlink(<signal_processing:4_digital_filters.impz>)[impz];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
