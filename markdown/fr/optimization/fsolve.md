# fsolve

Résoudre un système d'équations non linéaires.

## 📝 Syntaxe

- x = fsolve(fun, x0)
- [x, fval, exitflag, output, jacobian] = fsolve(fun, x0, options)
- x = fsolve(problem)

## 📥 Argument d'entrée

- fun - fonction retournant les résidus des équations.
- x0 - point initial.
- options - options du solveur.

## 📤 Argument de sortie

- x - racine estimée, avec la forme de x0.
- fval - résidu en x, avec la forme retournée par fun.
- exitflag - raison de l'arrêt : 1 (valeurs de fonction proches de zéro), 2 (pas inférieur à StepTolerance), 3 (variation du résidu inférieure à FunctionTolerance), 4 (direction de recherche inférieure à StepTolerance), 0 (limite d'itérations ou d'évaluations), -1 (arrêt par la fonction de sortie), -2 (convergence vers un point qui n'est pas une racine), -3 (effondrement de la région de confiance ou de la régularisation).
- output - structure avec les champs iterations, funcCount, algorithm, firstorderopt et message.
- jacobian - approximation finale de la jacobienne.

## 📄 Description


<b>fsolve</b> résout des systèmes d'équations non linéaires F(x) = 0. 

L'option <b>Algorithm</b> sélectionne le moteur : <b>'trust-region-dogleg'</b> (défaut, systèmes carrés), <b>'trust-region'</b> ou <b>'levenberg-marquardt'</b>. Les systèmes non carrés basculent automatiquement sur Levenberg-Marquardt avec un avertissement. 

Le défaut de <b>MaxFunctionEvaluations</b> est <b>100\*numberOfVariables</b>, <b>MaxIterations</b> vaut 400 et <b>FunctionTolerance</b> et <b>StepTolerance</b> valent 1e-6. L'option <b>Display</b> accepte 'off', 'none', 'final', 'final-detailed', 'notify', 'notify-detailed', 'iter' et 'iter-detailed'. 

Si <b>Jacobian</b> vaut 'on' ou si <b>SpecifyObjectiveGradient</b> vaut true, fun doit aussi retourner la jacobienne des résidus.

## Fonction(s) utilisée(s)


    optimoptions
    lsqnonlin
  

## 📚 Bibliographie

M. J. D. Powell, "A hybrid method for nonlinear equations", Numerical Methods for Nonlinear Algebraic Equations, 1970.
J. Nocedal and S. J. Wright, Numerical Optimization, Springer, 2006.

## 💡 Exemple



```matlab
fun = @(x) [x(1) - 3; x(2) + 4];
[x, fval] = fsolve(fun, [0; 0])

```


## 🔗 Voir aussi

[fzero](../optimization/fzero.md), [lsqnonlin](../optimization/lsqnonlin.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
