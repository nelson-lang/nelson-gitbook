#import "nelson_help.typ": *

= spline <special_functions:spline>

Interpolation par spline cubique.

== Syntaxe

- #raw("yq = spline(x, y, xq)");
- #raw("pp = spline(x, y)");

== Argument d'entrée

/ x: Points d'echantillonnage.
/ y: Valeurs echantillonnees.
/ xq: Points de requete.

== Argument de sortie

/ yq: Valeurs interpolees.
/ pp: Structure polynomiale par morceaux.

== Description

#strong[spline]; evalue une spline cubique not-a-knot ou retourne sa forme polynomiale par morceaux.


== Exemple

``````matlab
yq = spline(1:4, [0 1 0 1], [1.5 2.5])
``````


== Voir aussi

#nlink(<special_functions:interp1>)[interp1];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
