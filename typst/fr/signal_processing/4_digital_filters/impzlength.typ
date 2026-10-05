#import "../nelson_help.typ": *

= impzlength <signal_processing:4_digital_filters.impzlength>

Longueur estimee d'une reponse impulsionnelle.

== Syntaxe

- #raw("N = impzlength(B, A)");
- #raw("N = impzlength(B, A, tolerance)");

== Argument d'entrée

/ B: coefficients du numerateur.
/ A: coefficients du denominateur.
/ tolerance: tolerance de troncature de la reponse.

== Argument de sortie

/ N: longueur estimee.

== Description

#strong[impzlength]; retourne une longueur pratique pour les calculs de reponse impulsionnelle.


== Exemple

``````matlab

n = impzlength([1 1], 1);

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
