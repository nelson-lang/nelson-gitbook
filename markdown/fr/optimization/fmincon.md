# fmincon

Minimisation non linéaire contrainte.

## 📝 Syntaxe

- x = fmincon(fun, x0, A, b)
- x = fmincon(fun, x0, A, b, Aeq, beq, lb, ub, nonlcon, options)
- [x, fval, exitflag, output, lambda, grad, hessian] = fmincon(\_\_\_)
- x = fmincon(problem)

## 📥 Argument d'entrée

- fun - fonction objectif retournant un scalaire réel.
- x0 - point initial.
- A, b - inégalités linéaires A\*x <= b.
- Aeq, beq - égalités linéaires Aeq\*x = beq.
- lb, ub - bornes inférieures et supérieures.
- nonlcon - fonction de contraintes non linéaires retournant c et ceq.
- options - options créées avec optimoptions ou optimset.

## 📤 Argument de sortie

- x - minimiseur calculé.
- fval - valeur de l'objectif en x.
- exitflag - indicateur de terminaison.
- output - structure de diagnostic.
- lambda - structure des multiplicateurs de Lagrange.
- grad - gradient de l'objectif en x.
- hessian - hessien approché du Lagrangien.

## 📄 Description

<b>fmincon</b> résout des problèmes de minimisation non linéaire avec contraintes linéaires, bornes et contraintes non linéaires.

Le chemin <b>sqp</b> résout des sous-problèmes quadratiques avec contraintes actives linéarisées, mises à jour BFGS du hessien et recherche linéaire sur une fonction de mérite. Les contraintes non linéaires sont traitées directement dans le sous-problème SQP avec des jacobiens par différences finies ou fournis par l'utilisateur.

Le chemin <b>interior-point</b> construit un point initial intérieur avec une continuation de barrière logarithmique avant d'entrer dans la phase SQP non linéaire. Le chemin <b>active-set</b> maintient un ensemble actif explicite et indique les lignes linéaires actives dans <b>output.activeconstraints</b>. Le chemin <b>sqp-legacy</b> utilise une boucle SQP conservatrice séparée avec sous-problèmes à ensemble actif et décroissance de mérite plus stricte.

Pour les problèmes mal mis à l'échelle, utiliser <b>ScaleProblem</b> avec la valeur <b>obj-and-constr</b> et fournir <b>TypicalX</b>. Nelson met les sous-problèmes SQP à l'échelle, initialise le hessien avec les échelles des variables et applique des tests de décroissance de mérite mis à l'échelle.

Si le SQP non linéaire ne peut pas restaurer la faisabilité, Nelson lance une phase de restauration par continuation pénalisée et renseigne <b>output.restoration</b> lorsque cette phase fournit le point retourné.

Le chemin <b>trust-region-reflective</b> prend en charge les problèmes avec bornes et égalités linéaires, gradients utilisateur, matrices de hessien, callbacks de hessien ou callbacks de multiplication par le hessien, gradients conjugués tronqués projetés, préconditionnement diagonal ou bande et mises à jour du rayon de région de confiance. La structure <b>output</b> inclut des diagnostics de gradients conjugués comme <b>pcgflag</b>, <b>pcgresidual</b> et <b>trustregionradius</b>.

Les modes d'affichage acceptés sont <b>off</b>, <b>none</b>, <b>final</b>, <b>final-detailed</b>, <b>notify</b>, <b>notify-detailed</b>, <b>iter</b> et <b>iter-detailed</b>. Avec <b>Diagnostics</b> à <b>on</b>, Nelson affiche un résumé des variables, fonctions, contraintes et de l'algorithme sélectionné avant la résolution.

Les options par défaut dépendent de l'algorithme : <b>interior-point</b> utilise <b>MaxIterations</b> 1000, <b>MaxFunctionEvaluations</b> 3000, <b>StepTolerance</b> 1e-10 et <b>SubproblemAlgorithm</b> 'factorization' ; les autres algorithmes utilisent <b>MaxIterations</b> 400, <b>MaxFunctionEvaluations</b> '100\*numberOfVariables' et <b>StepTolerance</b> 1e-6.

La sortie <b>exitflag</b> vaut 1 (optimalité du premier ordre atteinte), 2 (pas inférieur à StepTolerance), 3 (variation de l'objectif inférieure à FunctionTolerance, trust-region-reflective), 0 (limite d'itérations ou d'évaluations), -1 (arrêt par la fonction de sortie), -2 (aucun point faisable trouvé) ou -3 (objectif sous ObjectiveLimit).

## Fonction(s) utilisée(s)

optimoptionsoptimsetquadprogfminsearch

## 📚 Bibliographie

Powell, M. J. D., A fast algorithm for nonlinearly constrained optimization calculations, Lecture Notes in Mathematics, 1978.
Han, S. P., A globally convergent method for nonlinear programming, Journal of Optimization Theory and Applications, 1977.
Gill, P. E., Murray, W. et Wright, M. H., Practical Optimization, Academic Press, 1981.
Nocedal, J. et Wright, S. J., Numerical Optimization, Springer, 2006.
Byrd, R. H., Schnabel, R. B. et Shultz, G. A., Approximate solution of the trust region problem by minimization over two-dimensional subspaces, Mathematical Programming, 1988.
Conn, A. R., Gould, N. I. M. et Toint, P. L., Trust Region Methods, SIAM, 2000.

## 💡 Exemples

Minimiser la fonction de Rosenbrock sur le disque unité.

```matlab
function [c, ceq] = unitdisk(x)
  c = x(1)^2 + x(2)^2 - 1;
  ceq = [];
end
fun = @(x) 100*(x(2) - x(1)^2)^2 + (1 - x(1))^2;
opts = optimoptions('fmincon', 'Display', 'off', 'Algorithm', 'sqp');
[x, fval] = fmincon(fun, [0; 0], [], [], [], [], [], [], @unitdisk, opts)

```

Utiliser des contraintes linéaires.

```matlab
fun = @(x) 100*(x(2) - x(1)^2)^2 + (1 - x(1))^2;
A = [1 2];
b = 1;
[x, fval, exitflag] = fmincon(fun, [-1; 2], A, b)

```

Utiliser une matrice de hessien avec trust-region-reflective.

```matlab
function [f, g] = quadobj(x)
  f = (x(1) - 1)^2 + (x(2) - 2)^2;
  g = [2*(x(1) - 1); 2*(x(2) - 2)];
end
opts = optimoptions('fmincon', 'Display', 'off', 'Algorithm', 'trust-region-reflective', ...
  'SpecifyObjectiveGradient', true, 'Hessian', 2*eye(2));
[x, fval] = fmincon(@quadobj, [0; 0], [], [], [], [], [0; 0], [3; 3], [], opts)

```

Utiliser une fonction de multiplication par le hessien avec trust-region-reflective.

```matlab
function [f, g] = quadobj(x)
  f = (x(1) - 1)^2 + (x(2) - 2)^2;
  g = [2*(x(1) - 1); 2*(x(2) - 2)];
end
function y = quadhessmult(x, v)
  y = 2*v;
end
opts = optimoptions('fmincon', 'Display', 'off', 'Algorithm', 'trust-region-reflective', ...
  'SpecifyObjectiveGradient', true, 'HessianMultiplyFcn', @quadhessmult);
[x, fval] = fmincon(@quadobj, [0; 0], [], [], [], [], [0; 0], [3; 3], [], opts)

```

## 🔗 Voir aussi

[optimoptions](../optimization/optimoptions.md), [fminsearch](../optimization/fminsearch.md), [quadprog](../optimization/quadprog.md), [solve](../optimization/solve.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
