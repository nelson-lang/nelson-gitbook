#import "../nelson_help.typ": *

= zp2sos <signal_processing:4_digital_filters.zp2sos>

Convertit une représentation zéros-pôles-gain en sections du second ordre.

== Syntaxe

- #raw("SOS = zp2sos(Z, P, K)");

== Argument d'entrée

/ Z: zéros.
/ P: pôles.
/ K: gain.

== Argument de sortie

/ SOS: matrice de sections du second ordre.

== Description

#strong[zp2sos]; regroupe les zéros et pôles en sections du second ordre et applique le gain à la première section.


== Exemple

``````matlab

sos = zp2sos([-1; -1], 0.5, 1);

``````


== Voir aussi

#nlink(<signal_processing:4_digital_filters.sos2zp>)[sos2zp];, #nlink(<signal_processing:4_digital_filters.zp2tf>)[zp2tf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
