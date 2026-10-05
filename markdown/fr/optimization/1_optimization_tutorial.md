# optimization tutorial

Tutoriel du module optimization.

## 📄 Description


Le module <b>optimization</b> fournit des solveurs numériques directs et une couche de modélisation par problème. Utiliser les solveurs directs lorsque les matrices de coefficients, la fonction résiduelle ou la fonction objectif sont déjà disponibles. Utiliser la couche par problème lorsque le modèle est plus lisible sous forme de variables, expressions et contraintes. 

| Type de problème | Solveur direct | Entrées usuelles | 
| --- | --- | --- | 
| Minimisation scalaire bornée | **fminbnd** | Fonction objectif et intervalle fini. | 
| Minimisation sans contrainte | **fminunc**, **fminsearch** | Fonction objectif et point initial. | 
| Recherche de zéro | **fzero** | Fonction et encadrement ou point initial. | 
| Programmation linéaire | **linprog** | Objectif linéaire, contraintes linéaires et bornes. | 
| Programmation linéaire mixte entière | **intlinprog** | Objectif linéaire, indices entiers, contraintes et bornes. | 
| Programmation quadratique | **quadprog** | Objectif quadratique, contraintes linéaires et bornes. | 
| Minimisation non linéaire contrainte | **fmincon** | Objectif non linéaire, contraintes et bornes. | 
| Moindres carrés | **lsqnonneg**, **lsqnonlin** | Modèle résiduel linéaire ou non linéaire. | 
| Systèmes non linéaires | **fsolve** | Fonction vectorielle et point initial. | 

 

Le comportement des solveurs se contrôle avec <b>optimoptions</b> ou <b>optimset</b>. Utiliser <b>optimget</b> pour lire une option avec une valeur de repli. Les problèmes linéaires et linéaires mixtes entiers utilisent le backend HiGHS lorsqu'il est disponible. La compilation problem-based route les problèmes linéaires continus, linéaires mixtes entiers, quadratiques et non linéaires contraints vers le solveur direct correspondant. Les problèmes non linéaires avec variables entières ou binaires sont refusés explicitement. 

Le workflow par problème commence avec <b>optimvar</b> et <b>optimproblem</b>. Les expressions et contraintes sont construites avec l'arithmétique ordinaire. <b>solve</b> appelle un solveur direct pris en charge, et <b>prob2struct</b> retourne la structure de solveur direct pour inspection ou exécution bas niveau. 

Les variables binaires créées avec <b>optimvar</b> ont par défaut les bornes 0 et 1. Les variables entières et binaires dirigent les modèles linéaires vers <b>intlinprog</b>; les modèles linéaires continus vers <b>linprog</b>; les modèles continus non linéaires contraints vers <b>fmincon</b>. Les problèmes de maximisation sont convertis en interne en minimisation, puis <b>solve</b> retourne la valeur objectif dans le sens original du problème. 

Lorsqu'un solveur direct prouve qu'un problème est infaisable et ne retourne pas de vecteur primal, <b>solve</b> retourne une structure de solution avec les noms des variables du modèle et des valeurs vides. Les diagnostics comme <b>exitflag</b> et <b>output.message</b> restent ainsi disponibles sans erreur de dépaquetage du résultat.

## Fonction(s) utilisée(s)


    fminbnd
    fminunc
    fminsearch
    fzero
    fmincon
    linprog
    intlinprog
    optimproblem
    optimvar
    solve
    prob2struct
  

## 📚 Bibliographie

Brent, R. P., Algorithms for Minimization Without Derivatives, Prentice-Hall, 1973.
Nelder, J. A. et Mead, R., A simplex method for function minimization, The Computer Journal, 1965.
Lawson, C. L. et Hanson, R. J., Solving Least Squares Problems, SIAM, 1995.
Nocedal, J. et Wright, S. J., Numerical Optimization, Springer, 2006.
Huangfu, Q. et Hall, J. A. J., Parallelizing the dual revised simplex method, Mathematical Programming Computation, 2018.

## 💡 Exemples

Minimiser une fonction scalaire sur un intervalle borné.

```matlab
opts = optimset('Display', 'off');
[x, fval] = fminbnd(@(x) (x - 1.5)^2 + 0.25, -2, 4, opts)

```
Minimiser une fonction non linéaire sans contrainte.

```matlab
fun = @(x) 3*x(1)^2 + 2*x(1)*x(2) + x(2)^2 - 4*x(1) + 5*x(2);
opts = optimoptions('fminunc', 'Display', 'off');
[x, fval] = fminunc(fun, [1, 1], opts)

```
Résoudre un problème linéaire avec variables positives.

```matlab
f = [-1; -1];
A = [1 2; 4 2];
b = [4; 12];
opts = optimoptions('linprog', 'Display', 'off');
[x, fval, exitflag] = linprog(f, A, b, [], [], [0; 0], [], opts)

```
Résoudre un petit problème linéaire mixte entier.

```matlab
f = [-5; -4; -3];
intcon = 1:3;
A = [2 3 1; 4 1 2];
b = [5; 8];
lb = [0; 0; 0];
ub = [1; 1; 1];
opts = optimoptions('intlinprog', 'Display', 'off');
[x, fval, exitflag] = intlinprog(f, intcon, A, b, [], [], lb, ub, [], opts)

```
Construire et résoudre un modèle linéaire par problème.

```matlab
x = optimvar('x', 2, 'LowerBound', 0);
prob = optimproblem('Objective', -x(1) - x(2));
prob.Constraints.capacity = [1 2; 4 2] * x <= [4; 12];
problem = prob2struct(prob);
[sol, fval, exitflag] = solve(prob);
sol.x

```


## 🔗 Voir aussi

[optimoptions](../optimization/optimoptions.md), [optimproblem](../optimization/optimproblem.md), [fminunc](../optimization/fminunc.md), [fmincon](../optimization/fmincon.md), [solve](../optimization/solve.md), [linprog](../optimization/linprog.md), [intlinprog](../optimization/intlinprog.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | tutoriel ajouté |

<!--
## 👤 Auteur

Allan CORNET
-->
