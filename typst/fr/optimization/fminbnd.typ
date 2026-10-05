#import "nelson_help.typ": *

= fminbnd <optimization:fminbnd>

Minimisation scalaire bornée.

== Syntaxe

- #raw("x = fminbnd(fun, x1, x2)");
- #raw("[x, fval, exitflag, output] = fminbnd(fun, x1, x2, options)");
- #raw("x = fminbnd(problem)");

== Argument d'entrée

/ fun: fonction objectif scalaire.
/ x1, x2: bornes finies de l'intervalle.
/ options: options du solveur.

== Argument de sortie

/ x: minimiseur estimé dans l'intervalle.
/ fval: valeur de l'objectif.
/ exitflag: indicateur de terminaison.
/ output: diagnostics.

== Description

#strong[fminbnd]; applique la méthode bornée de Brent, combinant recherche par section dorée et interpolation parabolique. Une structure problem peut contenir les champs objective, x1, x2 et options.


== Fonction(s) utilisée(s)

optimset

== Bibliographie

R. P. Brent, Algorithms for Minimization Without Derivatives, Prentice-Hall, 1973.

== Exemple

``````matlab
[x, fval] = fminbnd(@(x) (x - 1.5)^2, -2, 4)

``````


== Voir aussi

#nlink(<optimization:fminsearch>)[fminsearch];, #nlink(<optimization:fzero>)[fzero];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
