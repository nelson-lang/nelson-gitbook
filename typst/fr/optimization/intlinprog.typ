#import "nelson_help.typ": *

= intlinprog <optimization:intlinprog>

Programmation linéaire mixte en nombres entiers.

== Syntaxe

- #raw("x = intlinprog(f, intcon, A, b)");
- #raw("[x, fval, exitflag, output] = intlinprog(f, intcon, A, b, Aeq, beq, lb, ub, x0, options)");
- #raw("[x, fval, exitflag, output] = intlinprog(problem)");

== Argument d'entrée

/ f: coefficients de l'objectif linéaire.
/ intcon: indices des variables entières.
/ A, b: contraintes linéaires A\*x \<\= b.
/ Aeq, beq: contraintes linéaires Aeq\*x \= beq.
/ lb, ub: bornes inférieures et supérieures.
/ options: options du solveur créées avec optimoptions ou optimset.

== Argument de sortie

/ x: minimiseur calculé.
/ fval: valeur de l'objectif f'\*x.
/ exitflag: indicateur de terminaison.
/ output: structure de diagnostic.

== Description

#strong[intlinprog]; résout des problèmes d'optimisation linéaire où certaines variables sont entières. Nelson utilise HiGHS lorsque disponible.

 La structure de problème acceptée peut contenir les champs solver, f, intcon, Aineq ou A, bineq ou b, Aeq, beq, lb, ub, x0 et options.

 La structure #strong[output]; indique l'écart relatif et absolu, le nombre de points faisables, le nombre de noeuds, la violation des contraintes, les itérations, le temps écoulé, l'algorithme, le statut backend normalisé, le statut de solution primale et le message du backend. #strong[exitflag]; distingue les statuts optimal, infaisable, non borné, limite atteinte et arrêt anticipé lorsque le backend fournit ce statut.

 Les options comme #strong[MaxTime];, #strong[MaxNodes];, #strong[MaxIterations];, #strong[MaxFeasiblePoints];, #strong[AbsoluteGapTolerance];, #strong[RelativeGapTolerance];, #strong[IntegerTolerance];, #strong[LPPreprocess];, #strong[RootLPAlgorithm];, #strong[Heuristics]; et #strong[CutGeneration]; sont converties en options HiGHS lorsque possible. Les options reconnues sans équivalent direct dans le backend sont acceptées et ignorées.


== Fonction(s) utilisée(s)

optimoptionsprob2struct

== Bibliographie

Huangfu, Q. et Hall, J. A. J., Parallelizing the dual revised simplex method, Mathematical Programming Computation, 2018. Achterberg, T., Constraint Integer Programming, thèse de doctorat, Technische Universitaet Berlin, 2007. Nemhauser, G. L. et Wolsey, L. A., Integer and Combinatorial Optimization, Wiley, 1988.

== Exemple

``````matlab
f = [8; 1];
intcon = 2;
A = [-1 -2; -4 -1; 2 1];
b = [14; -33; 20];
opts = optimoptions('intlinprog', 'Display', 'off');
[x, fval, exitflag, output] = intlinprog(f, intcon, A, b, [], [], [], [], [], opts)

``````


== Voir aussi

#nlink(<optimization:linprog>)[linprog];, #nlink(<optimization:optimoptions>)[optimoptions];, #nlink(<optimization:prob2struct>)[prob2struct];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
