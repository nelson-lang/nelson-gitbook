#import "nelson_help.typ": *

= Optimization

Le module Optimization fournit la minimisation scalaire, la minimisation sans contrainte, la recherche de zéro, les systèmes non linéaires, les moindres carrés non linéaires, les moindres carrés non négatifs, la programmation quadratique, les options de solveurs et une première couche de modélisation par problème.

 Les algorithmes fournis sont des méthodes numériques denses déterministes pour des modèles de petite et moyenne taille dans Nelson.

== Functions

- #nlink(<optimization:1_optimization_tutorial>)[optimization tutorial]: Tutoriel du module optimization.
- #nlink(<optimization:evaluate>)[evaluate]: Évaluer une expression d'optimization.
- #nlink(<optimization:fcn2optimexpr>)[fcn2optimexpr]: Convertir une fonction en expression d'optimization.
- #nlink(<optimization:fminbnd>)[fminbnd]: Minimisation scalaire bornée.
- #nlink(<optimization:fmincon>)[fmincon]: Minimisation non linéaire contrainte.
- #nlink(<optimization:fminsearch>)[fminsearch]: Minimisation sans dérivée et sans contrainte.
- #nlink(<optimization:fminunc>)[fminunc]: Minimisation non linéaire sans contrainte.
- #nlink(<optimization:fsolve>)[fsolve]: Résoudre un système d'équations non linéaires.
- #nlink(<optimization:fzero>)[fzero]: Zéro d'une fonction scalaire.
- #nlink(<optimization:intlinprog>)[intlinprog]: Programmation linéaire mixte en nombres entiers.
- #nlink(<optimization:linprog>)[linprog]: Programmation linéaire.
- #nlink(<optimization:lsqcurvefit>)[lsqcurvefit]: Ajustement de courbe par moindres carres.
- #nlink(<optimization:lsqnonlin>)[lsqnonlin]: Moindres carrés non linéaires.
- #nlink(<optimization:lsqnonneg>)[lsqnonneg]: Moindres carrés linéaires non négatifs.
- #nlink(<optimization:optim.options.SolverOptions>)[optim.options.SolverOptions]: Objet d'options de solveur.
- #nlink(<optimization:optim.problemdef.OptimizationConstraint>)[optim.problemdef.OptimizationConstraint]: Contraintes d'optimisation.
- #nlink(<optimization:optim.problemdef.OptimizationExpression>)[optim.problemdef.OptimizationExpression]: Expression d'optimisation.
- #nlink(<optimization:optim.problemdef.OptimizationProblem>)[optim.problemdef.OptimizationProblem]: Objet probleme d'optimisation.
- #nlink(<optimization:optim.problemdef.OptimizationVariable>)[optim.problemdef.OptimizationVariable]: Variable pour expressions d'optimisation.
- #nlink(<optimization:optimconstr>)[optimconstr]: Créer une contrainte d'optimization.
- #nlink(<optimization:optimexpr>)[optimexpr]: Créer une expression d'optimization.
- #nlink(<optimization:optimget>)[optimget]: Lire la valeur d'une option d'optimization.
- #nlink(<optimization:optimoptions>)[optimoptions]: Créer des options de solveur.
- #nlink(<optimization:optimproblem>)[optimproblem]: Créer un objet problème d'optimization.
- #nlink(<optimization:optimset>)[optimset]: Créer ou modifier des structures d'options d'optimization.
- #nlink(<optimization:optimvar>)[optimvar]: Créer des variables d'optimization.
- #nlink(<optimization:prob2struct>)[prob2struct]: Convertir un problème d'optimisation en structure de solveur.
- #nlink(<optimization:quadprog>)[quadprog]: Programmation quadratique.
- #nlink(<optimization:show>)[show]: Afficher un objet d'optimization.
- #nlink(<optimization:solve>)[solve]: Résoudre un objet problème d'optimization.


#nested[
#pagebreak(weak: true)
#include "1_optimization_tutorial.typ"
#pagebreak(weak: true)
#include "evaluate.typ"
#pagebreak(weak: true)
#include "fcn2optimexpr.typ"
#pagebreak(weak: true)
#include "fminbnd.typ"
#pagebreak(weak: true)
#include "fmincon.typ"
#pagebreak(weak: true)
#include "fminsearch.typ"
#pagebreak(weak: true)
#include "fminunc.typ"
#pagebreak(weak: true)
#include "fsolve.typ"
#pagebreak(weak: true)
#include "fzero.typ"
#pagebreak(weak: true)
#include "intlinprog.typ"
#pagebreak(weak: true)
#include "linprog.typ"
#pagebreak(weak: true)
#include "lsqcurvefit.typ"
#pagebreak(weak: true)
#include "lsqnonlin.typ"
#pagebreak(weak: true)
#include "lsqnonneg.typ"
#pagebreak(weak: true)
#include "optim.options.SolverOptions.typ"
#pagebreak(weak: true)
#include "optim.problemdef.OptimizationConstraint.typ"
#pagebreak(weak: true)
#include "optim.problemdef.OptimizationExpression.typ"
#pagebreak(weak: true)
#include "optim.problemdef.OptimizationProblem.typ"
#pagebreak(weak: true)
#include "optim.problemdef.OptimizationVariable.typ"
#pagebreak(weak: true)
#include "optimconstr.typ"
#pagebreak(weak: true)
#include "optimexpr.typ"
#pagebreak(weak: true)
#include "optimget.typ"
#pagebreak(weak: true)
#include "optimoptions.typ"
#pagebreak(weak: true)
#include "optimproblem.typ"
#pagebreak(weak: true)
#include "optimset.typ"
#pagebreak(weak: true)
#include "optimvar.typ"
#pagebreak(weak: true)
#include "prob2struct.typ"
#pagebreak(weak: true)
#include "quadprog.typ"
#pagebreak(weak: true)
#include "show.typ"
#pagebreak(weak: true)
#include "solve.typ"
]
