#import "nelson_help.typ": *

= fcn2optimexpr <optimization:fcn2optimexpr>

Convertir une fonction en expression d'optimization.

== Syntaxe

- #raw("expr = fcn2optimexpr(fcn, in1, ..., inN)");
- #raw("expr = fcn2optimexpr(fcn, in1, ..., inN, name, value)");

== Argument d'entrée

/ fcn: handle de fonction à convertir en expression d'optimization.
/ in1, ..., inN: arguments passés à #strong[fcn]; : variables d'optimization, expressions d'optimization ou constantes numériques.
/ name, value: arguments optionnels nom-valeur : 'OutputSize', 'ReuseEvaluation', 'Analysis'.

== Argument de sortie

/ expr: objet expression d'optimization.

== Description

#strong[fcn2optimexpr]; convertit une fonction en expression d'optimization, afin que les fonctions qui ne peuvent pas être composées à partir des opérateurs élémentaires pris en charge puissent quand même servir d'objectif ou de contrainte dans un modèle problem-based.

 Lors de l'évaluation de l'expression, chaque argument d'entrée est évalué pour les valeurs courantes des variables, puis #strong[fcn]; est appelée sur les valeurs numériques obtenues.


== Fonction(s) utilisée(s)

optimvar optimexpr evaluate

== Bibliographie

J. Nocedal and S. J. Wright, Numerical Optimization, Springer, 2006.

== Exemples

Encapsuler une fonction scalaire d'une variable.

``````matlab
x = optimvar('x');
expr = fcn2optimexpr(@(v) sin(v), x);
value = evaluate(expr, struct('x', pi / 2))

``````

Utiliser une fonction convertie comme objectif.

``````matlab
x = optimvar('x');
prob = optimproblem('Objective', fcn2optimexpr(@(v) (v - 3) .^ 2 + 1, x));
[sol, fval] = solve(prob, struct('x', 0))

``````


== Voir aussi

#nlink(<optimization:optimexpr>)[optimexpr];, #nlink(<optimization:optimvar>)[optimvar];, #nlink(<optimization:evaluate>)[evaluate];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
