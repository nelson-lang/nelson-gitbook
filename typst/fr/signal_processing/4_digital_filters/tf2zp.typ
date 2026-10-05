#import "../nelson_help.typ": *

= tf2zp <signal_processing:4_digital_filters.tf2zp>

Convertit des coefficients de fonction de transfert en zéros-pôles-gain.

== Syntaxe

- #raw("[Z, P, K] = tf2zp(B, A)");

== Argument d'entrée

/ B: coefficients du numérateur, ou un numérateur par ligne.
/ A: coefficients du dénominateur.

== Argument de sortie

/ Z: zéros.
/ P: pôles.
/ K: gain.

== Description

#strong[tf2zp]; convertit des coefficients polynomiaux de filtre en représentation zéros-pôles-gain.


== Exemple

``````matlab

[z, p, k] = tf2zp([1 2 1], [1 -0.5]);

``````


== Voir aussi

#nlink(<signal_processing:4_digital_filters.zp2tf>)[zp2tf];, #nlink(<signal_processing:4_digital_filters.tf2sos>)[tf2sos];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
