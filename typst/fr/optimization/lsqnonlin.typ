#import "nelson_help.typ": *

= lsqnonlin <optimization:lsqnonlin>

Moindres carrés non linéaires.

== Syntaxe

- #raw("x = lsqnonlin(fun, x0)");
- #raw("[x, resnorm, residual, exitflag, output, lambda, jacobian] = lsqnonlin(fun, x0, lb, ub, options)");
- #raw("[x, resnorm, residual, exitflag, output, lambda, jacobian] = lsqnonlin(fun, x0, lb, ub, A, b, Aeq, beq, nonlcon, options)");
- #raw("x = lsqnonlin(problem)");

== Argument d'entrée

/ fun: fonction retournant un tableau de résidus.
/ x0: point initial.
/ lb, ub: bornes, éventuellement vides.
/ A, b, Aeq, beq: contraintes linéaires d'inégalité et d'égalité, éventuellement vides.
/ nonlcon: fonction de contraintes non linéaires retournant \[c, ceq\], éventuellement vide.
/ options: options du solveur.

== Argument de sortie

/ x: solution estimée, avec la forme de x0.
/ resnorm: norme carrée du résidu sum(fun(x).^2).
/ residual: résidu en x, avec la forme retournée par fun.
/ exitflag: raison de l'arrêt : 1 (gradient sous la tolérance), 2 (pas inférieur à StepTolerance), 3 (variation du résidu inférieure à FunctionTolerance), 4 (direction de recherche inférieure à StepTolerance), 0 (limite d'itérations ou d'évaluations), -1 (arrêt par la fonction de sortie), -2 (bornes incohérentes).
/ output: structure avec les champs firstorderopt, iterations, funcCount, cgiterations, algorithm, stepsize, message, bestfeasible et constrviolation.
/ lambda: structure des multiplicateurs de Lagrange avec les champs lower, upper, eqlin, ineqlin, eqnonlin et ineqnonlin.
/ jacobian: jacobienne finale, approchée ou fournie par l'utilisateur.

== Description

#strong[lsqnonlin]; résout des problèmes de moindres carrés non linéaires min sum(fun(x).^2), éventuellement soumis à des bornes et des contraintes.

 L'option #strong[Algorithm]; sélectionne le moteur : #strong['trust-region-reflective']; (défaut), #strong['levenberg-marquardt']; (accepte aussi les bornes) ou #strong['interior-point'];. Les contraintes linéaires ou non linéaires utilisent automatiquement l'algorithme #strong[interior-point];.

 Le défaut de #strong[MaxFunctionEvaluations]; est #strong[100\*numberOfVariables];, #strong[MaxIterations]; vaut 400 et #strong[FunctionTolerance]; et #strong[StepTolerance]; valent 1e-6. L'option #strong[Display]; accepte 'off', 'none', 'final', 'final-detailed', 'notify', 'notify-detailed', 'iter' et 'iter-detailed'.

 Si #strong[Jacobian]; vaut 'on' ou si #strong[SpecifyObjectiveGradient]; vaut true, fun doit aussi retourner la jacobienne des résidus.


== Fonction(s) utilisée(s)

optimoptions

== Bibliographie

K. Levenberg, "A method for the solution of certain non-linear problems in least squares", Quarterly of Applied Mathematics, 1944. D. W. Marquardt, "An algorithm for least-squares estimation of nonlinear parameters", SIAM Journal on Applied Mathematics, 1963.

== Exemple

``````matlab
fun = @(x) [x(1) - 2; x(2) + 1];
[x, resnorm] = lsqnonlin(fun, [0; 0])

``````


== Voir aussi

#nlink(<optimization:fsolve>)[fsolve];, #nlink(<optimization:lsqnonneg>)[lsqnonneg];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
