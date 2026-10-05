# qmr

Methode du residu quasi minimal pour systemes lineaires sparse.

## 📝 Syntaxe

- x = qmr(A, b)
- x = qmr(A, b, tol, maxit)
- x = qmr(A, b, tol, maxit, M1, M2, x0)
- [x, flag, relres, iter, resvec] = qmr(...)

## 📥 Argument d'entrée

- A - matrice sparse carree des coefficients.
- b - vecteur second membre.
- tol - tolerance relative sur le residu. La valeur par defaut est 1e-6.
- maxit - nombre maximal d'iterations.
- M1, M2 - preconditionneurs optionnels : matrices carrees sparse ou pleines, vecteurs diagonaux ou handles de fonction appliquant le preconditionneur ou sa transposee a un vecteur.
- x0 - estimation initiale.

## 📤 Argument de sortie

- x - solution calculee.
- flag - 0 si la convergence est atteinte, 1 si maxit est atteint, 4 en cas de rupture numerique.
- relres - norme relative du residu.
- iter - nombre d'iterations effectuees.
- resvec - historique des normes de residu.

## 📄 Description


<b>qmr</b> resout <b>A\*x = b</b> avec la methode du residu quasi minimal. 

La methode vise les systemes sparse non symetriques. Elle supporte les preconditionneurs matriciels sparse ou pleins, les preconditionneurs diagonaux vectoriels et les handles de fonction. 

Lorsque <b>M1</b> ou <b>M2</b> est une matrice, le solveur l'applique par resolution lineaire interne. Un preconditionneur vectoriel est interprete comme la diagonale d'un preconditionneur carre. Un handle de fonction doit accepter un vecteur et un indicateur de transposee, puis retourner un vecteur de meme longueur. 

Les matrices sparse single et sparse single complexes sont prises en charge. Si <b>M1</b>, <b>M2</b> ou <b>x0</b> est complexe, le calcul utilise le chemin complexe adapte.

## 💡 Exemples



```matlab
A = sparse([4 1 0; 2 3 1; 0 1 2]);
b = [1; 2; 3];
[x, flag, relres, iter, resvec] = qmr(A, b, 1e-12, 20)

```
Resolution avec preconditionneur matriciel.

```matlab
A = sparse([4 1 0; 2 3 1; 0 1 2]);
b = [1; 2; 3];
M = diag(diag(full(A)));
[x, flag] = qmr(A, b, 1e-12, 20, M)
```
Resolution avec preconditionneurs matriciels separes.

```matlab
A = sparse([4 1; 2 3]);
b = [5; 5];
M1 = [2 0; 0 1];
M2 = [2 0.5; 2 3];
[x, flag, relres, iter] = qmr(A, b, 1e-12, 10, M1, M2)
```
Resolution sparse single complexe.

```matlab
A = sparse(single([4 1i; 2 3]));
b = single([1; 2]);
[x, flag] = qmr(A, b, 1e-6, 20)
```


## 🔗 Voir aussi

[bicg](../../linear_algebra/6_iterative_solvers/bicg.md), [bicgstab](../../linear_algebra/6_iterative_solvers/bicgstab.md), [gmres](../../linear_algebra/6_iterative_solvers/gmres.md), [ilu](../../linear_algebra/7_preconditioners/ilu.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |
| 2.0.0   | prise en charge des donnees sparse single, sparse single complexes, des preconditionneurs matriciels et des handles de fonction. |

<!--
## 👤 Auteur

Allan CORNET
-->
