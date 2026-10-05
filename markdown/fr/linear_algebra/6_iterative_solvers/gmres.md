# gmres

Methode du residu minimal generalise.

## 📝 Syntaxe

- x = gmres(A, b)
- x = gmres(A, b, restart, tol, maxit)
- x = gmres(A, b, restart, tol, maxit, M1, M2, x0)
- [x, flag, relres, iter, resvec] = gmres(...)

## 📥 Argument d'entrée

- A - une matrice carree sparse flottante reelle ou complexe.
- b - un vecteur second membre flottant reel ou complexe.
- restart - longueur de redemarrage, entiere positive. Une valeur vide utilise la dimension de la matrice.
- tol - tolerance de convergence scalaire reelle finie. La valeur par defaut est 1e-6.
- maxit - nombre maximal d'iterations externes, entier positif ou nul.
- M1, M2 - preconditionneurs optionnels : matrices carrees sparse ou pleines, facteurs triangulaires sparse, vecteurs diagonaux ou handles de fonction retournant des vecteurs.
- x0 - vecteur initial optionnel.

## 📤 Argument de sortie

- x - vecteur solution calcule.
- flag - 0 si la convergence est atteinte, 1 si maxit est atteint, 4 en cas de rupture numerique.
- relres - norme relative du residu.
- iter - vecteur ligne a deux elements [outer inner] indiquant l'iteration de convergence.
- resvec - historique des normes de residu.

## 📄 Description


<b>gmres</b> resout <b>A \* x = b</b> avec la methode redemarree du residu minimal generalise. 

La methode prend en charge les matrices sparse double, single, double complexes et single complexes. 

Les preconditionneurs peuvent etre fournis sous forme de vecteurs diagonaux, de facteurs triangulaires sparse, de matrices carrees sparse ou pleines, ou de handles de fonction retournant des vecteurs. Les diagonales nulles et les dimensions incompatibles sont rejetees avant l'iteration. 

<b>flag</b> vaut 0 en cas de convergence, 1 lorsque la limite d'iterations est atteinte et 4 lorsqu'une rupture numerique est detectee. 

Si <b>M1</b>, <b>M2</b> ou <b>x0</b> est complexe, le calcul utilise le chemin complexe adapte.

## 💡 Exemples



```matlab
A = sparse([4 1 0; 2 3 1; 0 1 2]);
b = [1; 2; 3];
[x, flag, relres, iter] = gmres(A, b, [], 1e-12, 20)

```


```matlab
A = sparse([4 1 0; 2 3 1; 0 1 2]);
b = [1; 2; 3];
[L, U] = ilu(A);
x = gmres(A, b, [], 1e-12, 20, L, U)

```
Resolution avec preconditionneurs matriciels separes.

```matlab
A = sparse([4 1; 2 3]);
b = [5; 5];
M1 = [2 0; 0 1];
M2 = [2 0.5; 2 3];
[x, flag, relres, iter] = gmres(A, b, [], 1e-12, 10, M1, M2)
```
Resolution sparse single complexe avec preconditionnement diagonal.

```matlab
A = sparse(single([4 1i; -1i 3]));
b = single([1; 2]);
M = sparse(single(diag([4 3])));
[x, flag] = gmres(A, b, [], 1e-6, 20, M)
```


## 🔗 Voir aussi

[bicgstab](../../linear_algebra/6_iterative_solvers/bicgstab.md), [ilu](../../linear_algebra/7_preconditioners/ilu.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |
| 2.0.0   | ajout de la couverture single, single complexe, preconditionneur, vecteur initial et rupture numerique. |

<!--
## 👤 Auteur

Allan CORNET
-->
