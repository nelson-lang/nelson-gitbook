#import "nelson_help.typ": *

= fminunc <optimization:fminunc>

Minimisation non linéaire sans contrainte.

== Syntaxe

- #raw("x = fminunc(fun, x0)");
- #raw("x = fminunc(fun, x0, options)");
- #raw("x = fminunc(problem)");
- #raw("[x, fval, exitflag, output, grad, hessian] = fminunc(___)");

== Argument d'entrée

/ fun: Fonction objectif retournant un scalaire réel. Lorsque les options de gradient sont activées, elle peut aussi retourner le gradient et le Hessien.
/ x0: Point initial scalaire, vectoriel ou matriciel.
/ options: Options créées avec optimoptions ou optimset.
/ problem: Structure contenant les champs objective, x0, solver et options.

== Argument de sortie

/ x: Minimiseur calculé.
/ fval: Valeur de l'objectif en x.
/ exitflag: Indicateur de terminaison.
/ output: Structure de diagnostics avec iterations, funcCount, stepsize, algorithm, firstorderopt et message.
/ grad: Gradient en x.
/ hessian: Hessien approché ou fourni par l'utilisateur en x.

== Description

#strong[fminunc]; minimise une fonction objectif scalaire non linéaire sans contrainte.

 L'algorithme par défaut #strong[quasi-newton]; utilise BFGS, DFP, la plus forte pente ou BFGS à mémoire limitée selon les options #strong[HessianApproximation]; et #strong[HessUpdate];. L'algorithme #strong[trust-region]; utilise les gradients utilisateur, les Hessiennes objectif optionnelles, les fonctions de produit Hessien-vecteur et le gradient conjugué tronqué.

 Les modes d'affichage acceptés sont #strong[off];, #strong[none];, #strong[final];, #strong[final-detailed];, #strong[notify];, #strong[notify-detailed];, #strong[iter]; et #strong[iter-detailed];.


== Fonction(s) utilisée(s)

optimoptions optimset

== Bibliographie

Broyden, C. G., The convergence of a class of double-rank minimization algorithms, IMA Journal of Applied Mathematics, 1970. Fletcher, R., Practical Methods of Optimization, Wiley, 1987. Liu, D. C. et Nocedal, J., On the limited memory BFGS method for large scale optimization, Mathematical Programming, 1989. Nocedal, J. et Wright, S. J., Numerical Optimization, Springer, 2006.

== Exemples

Minimiser un polynôme quadratique.

``````matlab
fun = @(x) 3*x(1)^2 + 2*x(1)*x(2) + x(2)^2 - 4*x(1) + 5*x(2);
[x, fval] = fminunc(fun, [1, 1])

``````

Utiliser un gradient avec l'algorithme trust-region.

``````matlab
function [f, g] = rosenwithgrad(x)
  f = 100*(x(2) - x(1)^2)^2 + (1 - x(1))^2;
  g = [-400*(x(2)-x(1)^2)*x(1) - 2*(1-x(1)); 200*(x(2)-x(1)^2)];
end
opts = optimoptions('fminunc', 'Algorithm', 'trust-region', 'SpecifyObjectiveGradient', true);
x = fminunc(@rosenwithgrad, [-1; 2], opts)

``````


== Voir aussi

#nlink(<optimization:fmincon>)[fmincon];, #nlink(<optimization:optimoptions>)[optimoptions];, #nlink(<optimization:fminsearch>)[fminsearch];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
