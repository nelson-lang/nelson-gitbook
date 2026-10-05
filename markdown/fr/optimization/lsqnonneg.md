# lsqnonneg

Moindres carrés linéaires non négatifs.

## 📝 Syntaxe

- x = lsqnonneg(C, d)
- [x, resnorm, residual, exitflag, output, lambda] = lsqnonneg(C, d, options)

## 📥 Argument d'entrée

- C - matrice des coefficients.
- d - vecteur second membre.
- options - options du solveur.

## 📤 Argument de sortie

- x - solution non négative.
- resnorm - norme carrée du résidu.
- residual - d - C\*x.
- lambda - multiplicateurs KKT des contraintes de non-négativité.

## 📄 Description


<b>lsqnonneg</b> résout min norm(C\*x-d)^2 sous la contrainte x >= 0 avec une méthode active-set.

## Fonction(s) utilisée(s)


    optimset
  

## 📚 Bibliographie

C. L. Lawson and R. J. Hanson, Solving Least Squares Problems, SIAM, 1995.

## 💡 Exemple



```matlab
C = [1 0; 0 1; 1 1];
d = [1; 2; 3];
[x, resnorm] = lsqnonneg(C, d)

```


## 🔗 Voir aussi

[lsqnonlin](../optimization/lsqnonlin.md), [quadprog](../optimization/quadprog.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
