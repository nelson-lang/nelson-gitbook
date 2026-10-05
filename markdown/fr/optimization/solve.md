# solve

Résoudre un objet problème d'optimization.

## 📝 Syntaxe

- sol = solve(prob)
- [sol, fval, exitflag, output] = solve(prob, name, value)

## 📥 Argument d'entrée

- prob - objet problème d'optimization.
- name, value - réglages facultatifs du solveur.

## 📤 Argument de sortie

- sol - structure de solution.
- fval - valeur de l'objectif.
- exitflag - indicateur de terminaison.

## 📄 Description


<b>solve</b> compile un modèle problem-based pris en charge et appelle un solveur direct.

## Fonction(s) utilisée(s)


    prob2struct
    fminsearch
  

## 📚 Bibliographie

J. Nocedal and S. J. Wright, Numerical Optimization, Springer, 2006.

## 💡 Exemple



```matlab
x = optimvar('x');
prob = optimproblem('Objective', (x - 2)^2);
[sol, fval] = solve(prob)

```


## 🔗 Voir aussi

[optimproblem](../optimization/optimproblem.md), [prob2struct](../optimization/prob2struct.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
