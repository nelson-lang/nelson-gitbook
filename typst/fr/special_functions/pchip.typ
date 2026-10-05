#import "nelson_help.typ": *

= pchip <special_functions:pchip>

Interpolation polynomiale cubique de Hermite par morceaux (PCHIP).

== Syntaxe

- #raw("yq = pchip(x, y, xq)");
- #raw("pp = pchip(x, y)");

== Argument d'entrée

/ x: Points d'echantillonnage, strictement croissants.
/ y: Valeurs d'echantillonnage.
/ xq: Points de requete.

== Argument de sortie

/ yq: Valeurs interpolees.
/ pp: Structure polynomiale par morceaux.

== Description

#strong[pchip]; est une fonction de commodite pour l'interpolation cubique de Hermite par morceaux en une dimension, qui preserve la forme des donnees : l'interpolant conserve la monotonie et ne depasse pas les valeurs.

 Avec trois entrees, #strong[pchip(x, y, xq)]; est equivalent a #strong[interp1(x, y, xq, 'pchip')];.

 Avec deux entrees, elle retourne une structure polynomiale par morceaux evaluable avec #strong[ppval];.


== Exemples

``````matlab
x = -3:3;
y = [-1 -1 -1 0 1 1 1];
xq = -3:0.25:3;
yq = pchip(x, y, xq)
``````

Forme polynomiale par morceaux

``````matlab
x = [0 1 2.5 3.6 5 7 8.1 10];
y = cos(x);
pp = pchip(x, y);
yq = ppval(pp, 0:0.25:10)
``````


== Voir aussi

#nlink(<special_functions:interp1>)[interp1];, #nlink(<special_functions:makima>)[makima];, #nlink(<polynomial_functions:ppval>)[ppval];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
