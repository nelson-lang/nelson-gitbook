# fminunc

Minimisation non linéaire sans contrainte.

## 📝 Syntaxe

- x = fminunc(fun, x0)
- x = fminunc(fun, x0, options)
- x = fminunc(problem)
- [x, fval, exitflag, output, grad, hessian] = fminunc(\_\_\_)

## 📥 Argument d'entrée

- fun - Fonction objectif retournant un scalaire réel. Lorsque les options de gradient sont activées, elle peut aussi retourner le gradient et le Hessien.
- x0 - Point initial scalaire, vectoriel ou matriciel.
- options - Options créées avec optimoptions ou optimset.
- problem - Structure contenant les champs objective, x0, solver et options.

## 📤 Argument de sortie

- x - Minimiseur calculé.
- fval - Valeur de l'objectif en x.
- exitflag - Indicateur de terminaison.
- output - Structure de diagnostics avec iterations, funcCount, stepsize, algorithm, firstorderopt et message.
- grad - Gradient en x.
- hessian - Hessien approché ou fourni par l'utilisateur en x.

## 📄 Description


<b>fminunc</b> minimise une fonction objectif scalaire non linéaire sans contrainte. 

L'algorithme par défaut <b>quasi-newton</b> utilise BFGS, DFP, la plus forte pente ou BFGS à mémoire limitée selon les options <b>HessianApproximation</b> et <b>HessUpdate</b>. L'algorithme <b>trust-region</b> utilise les gradients utilisateur, les Hessiennes objectif optionnelles, les fonctions de produit Hessien-vecteur et le gradient conjugué tronqué. 

Les modes d'affichage acceptés sont <b>off</b>, <b>none</b>, <b>final</b>, <b>final-detailed</b>, <b>notify</b>, <b>notify-detailed</b>, <b>iter</b> et <b>iter-detailed</b>.

## Fonction(s) utilisée(s)


    optimoptions
    optimset
  

## 📚 Bibliographie

Broyden, C. G., The convergence of a class of double-rank minimization algorithms, IMA Journal of Applied Mathematics, 1970.
Fletcher, R., Practical Methods of Optimization, Wiley, 1987.
Liu, D. C. et Nocedal, J., On the limited memory BFGS method for large scale optimization, Mathematical Programming, 1989.
Nocedal, J. et Wright, S. J., Numerical Optimization, Springer, 2006.

## 💡 Exemples

Minimiser un polynôme quadratique.

```matlab
fun = @(x) 3*x(1)^2 + 2*x(1)*x(2) + x(2)^2 - 4*x(1) + 5*x(2);
[x, fval] = fminunc(fun, [1, 1])

```
Utiliser un gradient avec l'algorithme trust-region.

```matlab
function [f, g] = rosenwithgrad(x)
  f = 100*(x(2) - x(1)^2)^2 + (1 - x(1))^2;
  g = [-400*(x(2)-x(1)^2)*x(1) - 2*(1-x(1)); 200*(x(2)-x(1)^2)];
end
opts = optimoptions('fminunc', 'Algorithm', 'trust-region', 'SpecifyObjectiveGradient', true);
x = fminunc(@rosenwithgrad, [-1; 2], opts)

```


## 🔗 Voir aussi

[fmincon](../optimization/fmincon.md), [optimoptions](../optimization/optimoptions.md), [fminsearch](../optimization/fminsearch.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
