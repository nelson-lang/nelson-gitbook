#import "../nelson_help.typ": *

= filtic <signal_processing:4_digital_filters.filtic>

Conditions initiales pour filtrage numÃ©rique.

== Syntaxe

- #raw("ZI = filtic(B, A, Y)");
- #raw("ZI = filtic(B, A, Y, X)");

== Argument d'entrée

/ B, A: coefficients du filtre.
/ Y: valeurs passÃ©es de sortie.
/ X: valeurs passÃ©es d'entrÃ©e.

== Argument de sortie

/ ZI: vecteur de conditions initiales.

== Description

#strong[filtic]; calcule des conditions initiales compatibles avec le filtrage en forme directe.


== Exemple

``````matlab

zi = filtic([1 1], 1, 3);

``````


== Voir aussi

#nlink(<elementary_functions:7_indexing_dimensions.filter>)[filter];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
