#import "nelson_help.typ": *

= linprog <optimization:linprog>

Programmation linéaire.

== Syntaxe

- #raw("x = linprog(f, A, b)");
- #raw("[x, fval, exitflag, output, lambda] = linprog(f, A, b, Aeq, beq, lb, ub, options)");
- #raw("[x, fval, exitflag, output, lambda] = linprog(problem)");

== Argument d'entrée

/ f: coefficients de l'objectif linéaire.
/ A, b: contraintes linéaires A\*x \<\= b.
/ Aeq, beq: contraintes linéaires Aeq\*x \= beq.
/ lb, ub: bornes inférieures et supérieures.
/ options: options du solveur créées avec optimoptions ou optimset.

== Argument de sortie

/ x: minimiseur calculé.
/ fval: valeur de l'objectif f'\*x.
/ exitflag: indicateur de terminaison.
/ output: structure de diagnostic.
/ lambda: structure avec les champs lower, upper, ineqlin et eqlin.

== Description

#strong[linprog]; résout des problèmes d'optimisation linéaire avec contraintes linéaires et bornes. Nelson utilise HiGHS lorsque disponible.

 Les structures acceptées peuvent contenir #strong[f];, #strong[Aineq]; ou #strong[A];, #strong[bineq]; ou #strong[b];, #strong[Aeq];, #strong[beq];, #strong[lb];, #strong[ub];, #strong[x0]; et #strong[options];. La structure #strong[output]; indique l'algorithme, le statut backend normalisé, le statut de solution primale, le message, la violation des contraintes, les itérations et une estimation du résidu de premier ordre. La structure #strong[lambda]; est remplie pour les programmes linéaires continus à partir des informations duales du backend.

 Les options comme #strong[Display];, #strong[MaxTime];, #strong[MaxIterations];, #strong[LPMaxIterations];, #strong[ConstraintTolerance];, #strong[LPOptimalityTolerance];, #strong[LPPreprocess]; et #strong[RootLPAlgorithm]; sont converties en options HiGHS lorsque possible. Les autres options reconnues sont acceptées et ignorées lorsqu'il n'existe pas d'équivalent backend.


== Fonction(s) utilisée(s)

optimoptionsprob2struct

== Bibliographie

Dantzig, G. B., Linear Programming and Extensions, Princeton University Press, 1963. Huangfu, Q. et Hall, J. A. J., Parallelizing the dual revised simplex method, Mathematical Programming Computation, 2018. Nocedal, J. et Wright, S. J., Numerical Optimization, Springer, 2006.

== Exemple

``````matlab
f = [-1; -1];
A = [1 2; 4 2];
b = [4; 12];
opts = optimoptions('linprog', 'Display', 'off');
[x, fval, exitflag, output, lambda] = linprog(f, A, b, [], [], [0; 0], [], opts)

``````


== Voir aussi

#nlink(<optimization:intlinprog>)[intlinprog];, #nlink(<optimization:quadprog>)[quadprog];, #nlink(<optimization:optimoptions>)[optimoptions];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
