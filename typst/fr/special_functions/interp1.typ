#import "nelson_help.typ": *

= interp1 <special_functions:interp1>

Interpolation de donnees 1-D

== Syntaxe

- #raw("vq = interp1(x, v, xq)");
- #raw("vq = interp1(x, v, xq, method)");
- #raw("vq = interp1(x, v, xq, method, extrapolation)");
- #raw("vq = interp1(v, xq)");
- #raw("vq = interp1(v, xq, method)");
- #raw("vq = interp1(v, xq, method, extrapolation)");
- #raw("pp = interp1(x, v, method, 'pp')");

== Argument d'entrée

/ x: Points d'echantillonnage : vecteur.
/ v: Valeurs d'echantillonnage : vecteur, matrice ou tableau.
/ xq: Points de requete : scalaire, vecteur, matrice ou tableau.
/ method: Methode : 'linear', 'nearest', 'next', 'previous', 'pchip', 'cubic', 'makima' ou 'spline'.
/ extrapolation: 'extrap' ou valeur scalaire.

== Argument de sortie

/ vq: Valeurs interpolees.
/ pp: Structure polynomiale par morceaux.

== Description

#strong[interp1]; retourne les valeurs interpolees d'une fonction 1-D. La methode par defaut est 'linear'.

 #strong[pp \= interp1(x, v, method, 'pp')]; retourne une structure polynomiale par morceaux evaluable avec #strong[ppval];.


== Bibliographie

de Boor, C., A Practical Guide to Splines, Springer-Verlag, 1978.

== Exemple

``````matlab
v = [0 1.41 2 1.41 0 -1.41 -2 -1.41 0];
xq = 1.5:8.5;
vq = interp1(v, xq);
``````


== Voir aussi

#nlink(<special_functions:interp2>)[interp2];, #nlink(<special_functions:interp3>)[interp3];, #nlink(<special_functions:interpn>)[interpn];, #nlink(<polynomial_functions:ppval>)[ppval];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
