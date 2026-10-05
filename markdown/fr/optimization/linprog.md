# linprog

Programmation linéaire.

## 📝 Syntaxe

- x = linprog(f, A, b)
- [x, fval, exitflag, output, lambda] = linprog(f, A, b, Aeq, beq, lb, ub, options)
- [x, fval, exitflag, output, lambda] = linprog(problem)

## 📥 Argument d'entrée

- f - coefficients de l'objectif linéaire.
- A, b - contraintes linéaires A\*x <= b.
- Aeq, beq - contraintes linéaires Aeq\*x = beq.
- lb, ub - bornes inférieures et supérieures.
- options - options du solveur créées avec optimoptions ou optimset.

## 📤 Argument de sortie

- x - minimiseur calculé.
- fval - valeur de l'objectif f'\*x.
- exitflag - indicateur de terminaison.
- output - structure de diagnostic.
- lambda - structure avec les champs lower, upper, ineqlin et eqlin.

## 📄 Description


<b>linprog</b> résout des problèmes d'optimisation linéaire avec contraintes linéaires et bornes. Nelson utilise HiGHS lorsque disponible. 

Les structures acceptées peuvent contenir <b>f</b>, <b>Aineq</b> ou <b>A</b>, <b>bineq</b> ou <b>b</b>, <b>Aeq</b>, <b>beq</b>, <b>lb</b>, <b>ub</b>, <b>x0</b> et <b>options</b>. La structure <b>output</b> indique l'algorithme, le statut backend normalisé, le statut de solution primale, le message, la violation des contraintes, les itérations et une estimation du résidu de premier ordre. La structure <b>lambda</b> est remplie pour les programmes linéaires continus à partir des informations duales du backend. 

Les options comme <b>Display</b>, <b>MaxTime</b>, <b>MaxIterations</b>, <b>LPMaxIterations</b>, <b>ConstraintTolerance</b>, <b>LPOptimalityTolerance</b>, <b>LPPreprocess</b> et <b>RootLPAlgorithm</b> sont converties en options HiGHS lorsque possible. Les autres options reconnues sont acceptées et ignorées lorsqu'il n'existe pas d'équivalent backend.

## Fonction(s) utilisée(s)

optimoptionsprob2struct

## 📚 Bibliographie

Dantzig, G. B., Linear Programming and Extensions, Princeton University Press, 1963.
Huangfu, Q. et Hall, J. A. J., Parallelizing the dual revised simplex method, Mathematical Programming Computation, 2018.
Nocedal, J. et Wright, S. J., Numerical Optimization, Springer, 2006.

## 💡 Exemple



```matlab
f = [-1; -1];
A = [1 2; 4 2];
b = [4; 12];
opts = optimoptions('linprog', 'Display', 'off');
[x, fval, exitflag, output, lambda] = linprog(f, A, b, [], [], [0; 0], [], opts)

```


## 🔗 Voir aussi

[intlinprog](../optimization/intlinprog.md), [quadprog](../optimization/quadprog.md), [optimoptions](../optimization/optimoptions.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
