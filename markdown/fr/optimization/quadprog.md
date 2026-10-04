# quadprog

Programmation quadratique.

## 📝 Syntaxe

- x = quadprog(H, f)
- [x, fval, exitflag, output, lambda] = quadprog(H, f, A, b, Aeq, beq, lb, ub, x0, options)
- x = quadprog(problem)

## 📥 Argument d'entrée

- H, f - termes quadratique et linéaire de l'objectif.
- A, b, Aeq, beq - contraintes linéaires d'inégalité et d'égalité.
- lb, ub - bornes inférieures et supérieures.

## 📤 Argument de sortie

- x - solution estimée.
- fval - valeur de l'objectif.
- lambda - structure des multiplicateurs.

## 📄 Description

<b>quadprog</b> résout des programmes quadratiques convexes denses avec contraintes linéaires et bornes par une stratégie active-set.

La forme structure accepte <b>H</b>, <b>f</b>, <b>Aineq</b> ou <b>A</b>, <b>bineq</b> ou <b>b</b>, <b>Aeq</b>, <b>beq</b>, <b>lb</b>, <b>ub</b>, <b>x0</b> et <b>options</b>. Les expressions quadratiques problem-based compilées par <b>prob2struct</b> sont dirigées vers <b>quadprog</b>.

## Fonction(s) utilisée(s)

    optimoptions
    prob2struct

## 📚 Bibliographie

P. E. Gill, W. Murray and M. H. Wright, Practical Optimization, Academic Press, 1981.
J. Nocedal and S. J. Wright, Numerical Optimization, Springer, 2006.

## 💡 Exemples

```matlab
H = [2 0; 0 2];
f = [-2; -4];
lb = [0; 0];
[x, fval] = quadprog(H, f, [], [], [], [], lb, [])

```

```matlab
y = optimvar('y', 2, 1);
prob = optimproblem('Objective', (y(1) - 1)^2 + (y(2) + 3)^2);
[sol, fval] = solve(prob, struct('y', [0; 0]));
sol.y

```

## 🔗 Voir aussi

[lsqnonneg](../optimization/lsqnonneg.md), [optimoptions](../optimization/optimoptions.md), [prob2struct](../optimization/prob2struct.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
