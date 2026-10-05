#import "nelson_help.typ": *

= makima <special_functions:makima>

Interpolation cubique d'Akima modifiee.

== Syntaxe

- #raw("yq = makima(x, y, xq)");
- #raw("pp = makima(x, y)");

== Argument d'entrée

/ x: Points d'echantillonnage.
/ y: Valeurs d'echantillonnage.
/ xq: Points de requete.

== Argument de sortie

/ yq: Valeurs interpolees.
/ pp: Structure polynomiale par morceaux.

== Description

#strong[makima]; est une fonction de commodite pour l'interpolation d'Akima modifiee en une dimension.

 Avec deux entrees, elle retourne une structure polynomiale par morceaux evaluable avec #strong[ppval];.


== Exemple

``````matlab
x = [0 1 2.5 3.6 5 7 8.1 10];
y = cos(x);
yq = makima(x, y, 0:0.25:10)
``````


== Voir aussi

#nlink(<special_functions:interp1>)[interp1];, #nlink(<special_functions:pchip>)[pchip];, #nlink(<polynomial_functions:ppval>)[ppval];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
