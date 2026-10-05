#import "../nelson_help.typ": *

= tf2sos <signal_processing:4_digital_filters.tf2sos>

Convertit des coefficients de fonction de transfert en sections du second ordre.

== Syntaxe

- #raw("SOS = tf2sos(B, A)");

== Argument d'entrée

/ B: coefficients du numérateur.
/ A: coefficients du dénominateur.

== Argument de sortie

/ SOS: matrice de sections du second ordre.

== Description

#strong[tf2sos]; convertit des coefficients de fonction de transfert en une matrice dont les lignes contiennent les coefficients de chaque section.


== Exemple

``````matlab

sos = tf2sos([1 2 1], [1 -0.5]);

``````


== Voir aussi

#nlink(<signal_processing:4_digital_filters.sos2tf>)[sos2tf];, #nlink(<signal_processing:4_digital_filters.zp2sos>)[zp2sos];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
