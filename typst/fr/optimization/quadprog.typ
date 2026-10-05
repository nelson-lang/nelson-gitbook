#import "nelson_help.typ": *

= quadprog <optimization:quadprog>

Programmation quadratique.

== Syntaxe

- #raw("x = quadprog(H, f)");
- #raw("[x, fval, exitflag, output, lambda] = quadprog(H, f, A, b, Aeq, beq, lb, ub, x0, options)");
- #raw("x = quadprog(problem)");

== Argument d'entrée

/ H, f: termes quadratique et linéaire de l'objectif.
/ A, b, Aeq, beq: contraintes linéaires d'inégalité et d'égalité.
/ lb, ub: bornes inférieures et supérieures.

== Argument de sortie

/ x: solution estimée.
/ fval: valeur de l'objectif.
/ lambda: structure des multiplicateurs.

== Description

#strong[quadprog]; résout des programmes quadratiques convexes denses avec contraintes linéaires et bornes par une stratégie active-set.

 La forme structure accepte #strong[H];, #strong[f];, #strong[Aineq]; ou #strong[A];, #strong[bineq]; ou #strong[b];, #strong[Aeq];, #strong[beq];, #strong[lb];, #strong[ub];, #strong[x0]; et #strong[options];. Les expressions quadratiques problem-based compilées par #strong[prob2struct]; sont dirigées vers #strong[quadprog];.


== Fonction(s) utilisée(s)

optimoptions prob2struct

== Bibliographie

P. E. Gill, W. Murray and M. H. Wright, Practical Optimization, Academic Press, 1981. J. Nocedal and S. J. Wright, Numerical Optimization, Springer, 2006.

== Exemples

``````matlab
H = [2 0; 0 2];
f = [-2; -4];
lb = [0; 0];
[x, fval] = quadprog(H, f, [], [], [], [], lb, [])

``````

``````matlab
y = optimvar('y', 2, 1);
prob = optimproblem('Objective', (y(1) - 1)^2 + (y(2) + 3)^2);
[sol, fval] = solve(prob, struct('y', [0; 0]));
sol.y

``````


== Voir aussi

#nlink(<optimization:lsqnonneg>)[lsqnonneg];, #nlink(<optimization:optimoptions>)[optimoptions];, #nlink(<optimization:prob2struct>)[prob2struct];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
