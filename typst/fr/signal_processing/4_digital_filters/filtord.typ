#import "../nelson_help.typ": *

= filtord <signal_processing:4_digital_filters.filtord>

Ordre d'un filtre numérique.

== Syntaxe

- #raw("N = filtord(B, A)");

== Argument d'entrée

/ B: coefficients du numérateur.
/ A: coefficients du dénominateur.

== Argument de sortie

/ N: ordre du filtre.

== Description

#strong[filtord]; retourne l'ordre déduit des coefficients non nuls du numérateur et du dénominateur.


== Exemple

``````matlab

n = filtord([1 0 0], [1 -0.5]);

``````


== Voir aussi

#nlink(<signal_processing:4_digital_filters.isfir>)[isfir];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
