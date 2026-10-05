# prob2struct

Convertir un problème d'optimisation en structure de solveur.

## 📝 Syntaxe

- problem = prob2struct(prob)

## 📥 Argument d'entrée

- prob - objet problème d'optimisation.

## 📤 Argument de sortie

- problem - structure contenant les champs solver, objective, x0 et les champs de solveur direct quand le problème peut être abaissé.

## 📄 Description


<b>prob2struct</b> transforme les modèles problem-based pris en charge vers la forme structure des solveurs directs. 

Pour les objectifs linéaires et les contraintes linéaires, la structure retournée contient <b>f</b>, <b>A</b>, <b>b</b>, <b>Aeq</b>, <b>beq</b>, <b>lb</b>, <b>ub</b> et <b>intcon</b>. Les variables sont ordonnées par nom afin de produire des matrices de coefficients déterministes. 

Pour les objectifs quadratiques continus avec contraintes linéaires, <b>prob2struct</b> retourne <b>solver = 'quadprog'</b> avec <b>H</b>, <b>f</b>, les contraintes linéaires et les bornes. Les constantes de l'objectif sont stockées et restaurées par <b>solve</b>.

## Fonction(s) utilisée(s)


    optimproblem
    solve
    quadprog
  

## 📚 Bibliographie

J. Nocedal and S. J. Wright, Numerical Optimization, Springer, 2006.

## 💡 Exemples



```matlab
x = optimvar('x');
prob = optimproblem('Objective', (x + 1)^2);
s = prob2struct(prob)

```


```matlab
x = optimvar('x', 2, 1, 'LowerBound', 0);
prob = optimproblem;
prob.Objective = [3 4] * x;
prob.Constraints.balance = [1 2] * x == 5;
s = prob2struct(prob);
s.Aeq

```


```matlab
y = optimvar('y', 2, 1);
prob = optimproblem('Objective', (y(1) - 1)^2 + (y(2) + 3)^2);
s = prob2struct(prob);
s.solver

```


## 🔗 Voir aussi

[optimproblem](../optimization/optimproblem.md), [solve](../optimization/solve.md), [quadprog](../optimization/quadprog.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
