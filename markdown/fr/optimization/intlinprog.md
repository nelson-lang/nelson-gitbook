# intlinprog

Programmation linéaire mixte en nombres entiers.

## 📝 Syntaxe

- x = intlinprog(f, intcon, A, b)
- [x, fval, exitflag, output] = intlinprog(f, intcon, A, b, Aeq, beq, lb, ub, x0, options)
- [x, fval, exitflag, output] = intlinprog(problem)

## 📥 Argument d'entrée

- f - coefficients de l'objectif linéaire.
- intcon - indices des variables entières.
- A, b - contraintes linéaires A\*x <= b.
- Aeq, beq - contraintes linéaires Aeq\*x = beq.
- lb, ub - bornes inférieures et supérieures.
- options - options du solveur créées avec optimoptions ou optimset.

## 📤 Argument de sortie

- x - minimiseur calculé.
- fval - valeur de l'objectif f'\*x.
- exitflag - indicateur de terminaison.
- output - structure de diagnostic.

## 📄 Description

<b>intlinprog</b> résout des problèmes d'optimisation linéaire où certaines variables sont entières. Nelson utilise HiGHS lorsque disponible.

La structure de problème acceptée peut contenir les champs solver, f, intcon, Aineq ou A, bineq ou b, Aeq, beq, lb, ub, x0 et options.

La structure <b>output</b> indique l'écart relatif et absolu, le nombre de points faisables, le nombre de noeuds, la violation des contraintes, les itérations, le temps écoulé, l'algorithme, le statut backend normalisé, le statut de solution primale et le message du backend. <b>exitflag</b> distingue les statuts optimal, infaisable, non borné, limite atteinte et arrêt anticipé lorsque le backend fournit ce statut.

Les options comme <b>MaxTime</b>, <b>MaxNodes</b>, <b>MaxIterations</b>, <b>MaxFeasiblePoints</b>, <b>AbsoluteGapTolerance</b>, <b>RelativeGapTolerance</b>, <b>IntegerTolerance</b>, <b>LPPreprocess</b>, <b>RootLPAlgorithm</b>, <b>Heuristics</b> et <b>CutGeneration</b> sont converties en options HiGHS lorsque possible. Les options reconnues sans équivalent direct dans le backend sont acceptées et ignorées.

## Fonction(s) utilisée(s)

optimoptionsprob2struct

## 📚 Bibliographie

Huangfu, Q. et Hall, J. A. J., Parallelizing the dual revised simplex method, Mathematical Programming Computation, 2018.
Achterberg, T., Constraint Integer Programming, thèse de doctorat, Technische Universitaet Berlin, 2007.
Nemhauser, G. L. et Wolsey, L. A., Integer and Combinatorial Optimization, Wiley, 1988.

## 💡 Exemple

```matlab
f = [8; 1];
intcon = 2;
A = [-1 -2; -4 -1; 2 1];
b = [14; -33; 20];
opts = optimoptions('intlinprog', 'Display', 'off');
[x, fval, exitflag, output] = intlinprog(f, intcon, A, b, [], [], [], [], [], opts)

```

## 🔗 Voir aussi

[linprog](../optimization/linprog.md), [optimoptions](../optimization/optimoptions.md), [prob2struct](../optimization/prob2struct.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
