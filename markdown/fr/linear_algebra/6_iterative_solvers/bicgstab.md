# bicgstab

Methode des gradients biconjugues stabilises.

## 📝 Syntaxe

- x = bicgstab(A, b)
- x = bicgstab(A, b, tol, maxit)
- x = bicgstab(A, b, tol, maxit, M1, M2, x0)
- [x, flag, relres, iter, resvec] = bicgstab(...)

## 📥 Argument d'entrée

- A - une matrice carree sparse flottante reelle ou complexe.
- b - un vecteur second membre flottant reel ou complexe.
- tol - tolerance de convergence scalaire reelle finie. La valeur par defaut est 1e-6.
- maxit - nombre maximal d'iterations, entier positif ou nul.
- M1, M2 - preconditionneurs optionnels : matrices carrees sparse ou pleines, vecteurs diagonaux ou handles de fonction appliquant le preconditionneur a un vecteur.
- x0 - vecteur initial optionnel.

## 📤 Argument de sortie

- x - vecteur solution calcule.
- flag - 0 si la convergence est atteinte, 1 si maxit est atteint, 4 en cas de rupture numerique.
- relres - norme relative du residu.
- iter - nombre d'iterations. Les valeurs en demi-iteration indiquent une convergence apres la premiere etape d'une iteration.
- resvec - historique des normes de residu, incluant les demi-iterations.

## 📄 Description


<b>bicgstab</b> resout <b>A \* x = b</b> avec la methode des gradients biconjugues stabilises. 

La methode prend en charge les matrices sparse double, single, double complexes et single complexes. 

Lorsque <b>M1</b> ou <b>M2</b> est une matrice, le solveur l'applique par resolution lineaire interne. Un preconditionneur vectoriel est interprete comme la diagonale d'un preconditionneur carre. Un handle de fonction doit accepter un vecteur en entree et retourner un vecteur de meme longueur. 

Si <b>M1</b>, <b>M2</b> ou <b>x0</b> est complexe, le calcul utilise le chemin complexe adapte.

## 💡 Exemples



```matlab
A = sparse([4 1 0; 2 3 1; 0 1 2]);
b = [1; 2; 3];
[x, flag, relres, iter] = bicgstab(A, b, 1e-12, 20)

```


```matlab
A = sparse([3 + 1i 1; 0 2 - 1i]);
b = [4 + 2i; 3 - 1i];
x = bicgstab(A, b, 1e-12, 20)

```
Resolution avec preconditionneur matriciel.

```matlab
A = sparse([4 1 0; 2 3 1; 0 1 2]);
b = [1; 2; 3];
M = diag(diag(full(A)));
[x, flag] = bicgstab(A, b, 1e-12, 20, M)
```
Resolution avec preconditionneurs matriciels separes.

```matlab
A = sparse([4 1; 2 3]);
b = [5; 5];
M1 = [2 0; 0 1];
M2 = [2 0.5; 2 3];
[x, flag, relres, iter] = bicgstab(A, b, 1e-12, 10, M1, M2)
```
Resolution sparse single complexe avec preconditionneur ILU.

```matlab
A = sparse(single([4 1i; 2 3]));
b = single([1; 2]);
[L, U] = ilu(A);
[x, flag] = bicgstab(A, b, 1e-6, 20, L, U)
```


## 🔗 Voir aussi

[pcg](../../linear_algebra/6_iterative_solvers/pcg.md), [ilu](../../linear_algebra/7_preconditioners/ilu.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |
| 2.0.0   | prise en charge des donnees sparse single, sparse single complexes, des preconditionneurs matriciels et des handles de fonction. |

<!--
## 👤 Auteur

Allan CORNET
-->
