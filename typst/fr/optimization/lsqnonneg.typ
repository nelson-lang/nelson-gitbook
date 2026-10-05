#import "nelson_help.typ": *

= lsqnonneg <optimization:lsqnonneg>

Moindres carrés linéaires non négatifs.

== Syntaxe

- #raw("x = lsqnonneg(C, d)");
- #raw("[x, resnorm, residual, exitflag, output, lambda] = lsqnonneg(C, d, options)");

== Argument d'entrée

/ C: matrice des coefficients.
/ d: vecteur second membre.
/ options: options du solveur.

== Argument de sortie

/ x: solution non négative.
/ resnorm: norme carrée du résidu.
/ residual: d - C\*x.
/ lambda: multiplicateurs KKT des contraintes de non-négativité.

== Description

#strong[lsqnonneg]; résout min norm(C\*x-d)^2 sous la contrainte x \>\= 0 avec une méthode active-set.


== Fonction(s) utilisée(s)

optimset

== Bibliographie

C. L. Lawson and R. J. Hanson, Solving Least Squares Problems, SIAM, 1995.

== Exemple

``````matlab
C = [1 0; 0 1; 1 1];
d = [1; 2; 3];
[x, resnorm] = lsqnonneg(C, d)

``````


== Voir aussi

#nlink(<optimization:lsqnonlin>)[lsqnonlin];, #nlink(<optimization:quadprog>)[quadprog];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
