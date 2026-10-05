# fminsearch

Minimisation sans dérivée et sans contrainte.

## 📝 Syntaxe

- x = fminsearch(fun, x0)
- [x, fval, exitflag, output] = fminsearch(fun, x0, options)
- x = fminsearch(problem)

## 📥 Argument d'entrée

- fun - fonction ou nom de fonction retournant un scalaire.
- x0 - point initial.
- options - structure ou objet d'options créé avec optimset ou optimoptions.

## 📤 Argument de sortie

- x - minimiseur estimé.
- fval - valeur de l'objectif en x.
- exitflag - positif en cas de convergence, nul en cas de limite atteinte, négatif en cas d'arrêt par callback.
- output - structure de diagnostic.

## 📄 Description


<b>fminsearch</b> utilise la méthode du simplexe de Nelder-Mead. Les contrôles TolX, TolFun, MaxIter, MaxFunEvals, Display, OutputFcn et PlotFcns sont pris en charge. Une structure problem peut contenir les champs objective, x0 et options.

## Fonction(s) utilisée(s)


    optimset
    optimoptions
  

## 📚 Bibliographie

J. A. Nelder and R. Mead, "A simplex method for function minimization", The Computer Journal, 1965.
J. C. Lagarias, J. A. Reeds, M. H. Wright and P. E. Wright, "Convergence properties of the Nelder-Mead simplex method in low dimensions", SIAM Journal on Optimization, 1998.

## 💡 Exemple



```matlab
opts = optimset('TolX', 1e-8, 'TolFun', 1e-8);
[x, fval] = fminsearch(@(x) (x(1) - 1)^2 + (x(2) + 2)^2, [0 0], opts)

```


## 🔗 Voir aussi

[fminbnd](../optimization/fminbnd.md), [optimset](../optimization/optimset.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
