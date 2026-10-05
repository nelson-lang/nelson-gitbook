#import "nelson_help.typ": *

= fzero <optimization:fzero>

Zéro d'une fonction scalaire.

== Syntaxe

- #raw("x = fzero(fun, x0)");
- #raw("[x, fval, exitflag, output] = fzero(fun, x0, options)");
- #raw("x = fzero(problem)");

== Argument d'entrée

/ fun: fonction scalaire.
/ x0: valeur initiale scalaire ou intervalle de deux points encadrant un zéro.
/ options: options du solveur.

== Argument de sortie

/ x: zéro estimé.
/ fval: valeur de la fonction en x.
/ exitflag: indicateur de terminaison.
/ output: diagnostics.

== Description

#strong[fzero]; utilise une méthode de Brent-Dekker avec encadrement. Si x0 est scalaire, Nelson recherche un intervalle avec changement de signe autour de x0. Une structure problem peut contenir les champs objective, x0 et options.


== Fonction(s) utilisée(s)

optimset

== Bibliographie

T. J. Dekker, "Finding a zero by means of successive linear interpolation", Constructive Aspects of the Fundamental Theorem of Algebra, 1969. R. P. Brent, Algorithms for Minimization Without Derivatives, Prentice-Hall, 1973.

== Exemple

``````matlab
[x, fval] = fzero(@(x) x^2 - 4, [0 5])

``````


== Voir aussi

#nlink(<optimization:fsolve>)[fsolve];, #nlink(<optimization:optimset>)[optimset];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
