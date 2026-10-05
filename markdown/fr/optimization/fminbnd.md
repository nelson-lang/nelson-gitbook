# fminbnd

Minimisation scalaire bornée.

## 📝 Syntaxe

- x = fminbnd(fun, x1, x2)
- [x, fval, exitflag, output] = fminbnd(fun, x1, x2, options)
- x = fminbnd(problem)

## 📥 Argument d'entrée

- fun - fonction objectif scalaire.
- x1, x2 - bornes finies de l'intervalle.
- options - options du solveur.

## 📤 Argument de sortie

- x - minimiseur estimé dans l'intervalle.
- fval - valeur de l'objectif.
- exitflag - indicateur de terminaison.
- output - diagnostics.

## 📄 Description


<b>fminbnd</b> applique la méthode bornée de Brent, combinant recherche par section dorée et interpolation parabolique. Une structure problem peut contenir les champs objective, x1, x2 et options.

## Fonction(s) utilisée(s)


    optimset
  

## 📚 Bibliographie

R. P. Brent, Algorithms for Minimization Without Derivatives, Prentice-Hall, 1973.

## 💡 Exemple



```matlab
[x, fval] = fminbnd(@(x) (x - 1.5)^2, -2, 4)

```


## 🔗 Voir aussi

[fminsearch](../optimization/fminsearch.md), [fzero](../optimization/fzero.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
