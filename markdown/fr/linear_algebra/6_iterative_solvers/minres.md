# minres

Methode du residu minimal pour systemes sparse symetriques ou hermitiens.

## 📝 Syntaxe

- x = minres(A, b)
- x = minres(A, b, tol, maxit)
- x = minres(A, b, tol, maxit, M1, M2, x0)
- [x, flag, relres, iter, resvec] = minres(...)

## 📥 Argument d'entrée

- A - une matrice carree sparse flottante symetrique ou hermitienne.
- b - un vecteur second membre flottant.
- tol - tolerance de convergence scalaire reelle finie. La valeur par defaut est 1e-6.
- maxit - nombre maximal d'iterations, entier positif ou nul.
- M1, M2 - preconditionneurs optionnels : matrices carrees sparse ou pleines, vecteurs diagonaux, facteurs triangulaires sparse ou handles de fonction retournant des vecteurs. Ils doivent conserver un probleme effectif symetrique ou hermitien.
- x0 - vecteur initial optionnel.

## 📤 Argument de sortie

- x - vecteur solution calcule.
- flag - 0 si la convergence est atteinte, 1 si maxit est atteint, 4 en cas de rupture numerique.
- relres - norme relative du residu.
- iter - nombre d'iterations.
- resvec - historique des normes de residu.

## 📄 Description


<b>minres</b> resout <b>A \* x = b</b> avec une methode Krylov du residu minimal pour matrices sparse symetriques ou hermitiennes. 

La methode est utile pour les systemes symetriques ou hermitiens indefinis. 

Les matrices sparse single et sparse single complexes sont prises en charge. 

Les preconditionneurs peuvent etre des vecteurs diagonaux, des facteurs triangulaires sparse, des matrices carrees sparse ou pleines, ou des handles de fonction retournant des vecteurs. Ils doivent conserver un probleme effectif symetrique ou hermitien. 

Si <b>M1</b>, <b>M2</b> ou <b>x0</b> est complexe, le calcul utilise le chemin complexe adapte.

## 💡 Exemples



```matlab
A = sparse([0 1; 1 0]);
b = [1; 2];
[x, flag, relres, iter] = minres(A, b, 1e-12, 20)

```
Resolution avec preconditionneur diagonal dense.

```matlab
A = sparse([4 -1 0; -1 4 -1; 0 -1 3]);
b = [15; 10; 10];
M = diag(diag(full(A)));
[x, flag] = minres(A, b, 1e-12, 20, M)
```
Resolution avec preconditionneurs matriciels separes.

```matlab
A = sparse([4 -1 0; -1 4 -1; 0 -1 3]);
b = [15; 10; 10];
M1 = diag([2 2 1]);
M2 = diag([2 2 3]);
[x, flag, relres, iter] = minres(A, b, 1e-12, 20, M1, M2)
```
Resolution sparse single complexe.

```matlab
A = sparse(single([2 1i; -1i 2]));
b = single([1; 2]);
[x, flag] = minres(A, b, 1e-6, 20)
```


## 🔗 Voir aussi

[pcg](../../linear_algebra/6_iterative_solvers/pcg.md), [gmres](../../linear_algebra/6_iterative_solvers/gmres.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |
| 2.0.0   | ajout de la couverture single, single complexe, preconditionneur, vecteur initial et rupture numerique. |

<!--
## 👤 Auteur

Allan CORNET
-->
