# lsmr

Methode LSMR pour equations sparse et moindres carres.

## 📝 Syntaxe

- x = lsmr(A, b)
- x = lsmr(A, b, tol, maxit)
- x = lsmr(A, b, tol, maxit, M1, M2, x0)
- [x, flag, relres, iter, resvec, lsvec] = lsmr(...)

## 📥 Argument d'entrée

- A - une matrice sparse flottante reelle ou complexe.
- b - un vecteur second membre flottant reel ou complexe.
- tol - tolerance de convergence scalaire reelle finie. La valeur par defaut est 1e-6.
- maxit - nombre maximal d'iterations, entier positif ou nul.
- M1, M2 - preconditionneurs a droite optionnels : matrices carrees sparse ou pleines, vecteurs diagonaux ou handles de fonction. Les handles de fonction doivent accepter un vecteur et un indicateur de transposition.
- x0 - vecteur initial optionnel.

## 📤 Argument de sortie

- x - vecteur solution calcule.
- flag - 0 si la convergence est atteinte, 1 si maxit est atteint, 4 en cas de rupture numerique.
- relres - norme relative du residu.
- iter - nombre d'iterations.
- resvec - historique des normes de residu.
- lsvec - historique des normes du residu des equations normales.

## 📄 Description

<b>lsmr</b> resout des equations sparse et des problemes de moindres carres avec une methode de bidiagonalisation de Golub-Kahan.

La methode prend en charge les matrices sparse double, single, double complexes et single complexes, carrees ou rectangulaires.

<b>M1</b> et <b>M2</b> sont des preconditionneurs a droite. Ils peuvent etre des vecteurs diagonaux, des matrices carrees sparse ou pleines, ou des handles de fonction acceptant un vecteur et l'indicateur de transposition <b>'notransp'</b> ou <b>'transp'</b>.

<b>resvec</b> stocke les normes de residu et <b>lsvec</b> stocke les estimations du residu de moindres carres a chaque iteration.

Si <b>M1</b>, <b>M2</b> ou <b>x0</b> est complexe, le calcul utilise le chemin complexe adapte.

## 💡 Exemples

```matlab
A = sparse([1 0; 0 1; 1 1; 2 -1]);
b = [1; 2; 4; 1];
[x, flag, relres, iter] = lsmr(A, b, 1e-12, 20)

```

Moindres carres sparse single avec preconditionnement diagonal.

```matlab
A = sparse(single([1 0; 0 1; 1 1]));
b = single([1; 2; 3]);
M = single([1; 2]);
[x, flag] = lsmr(A, b, 1e-6, 20, M)
```

Moindres carres avec preconditionneurs a droite separes.

```matlab
A = sparse([1 0; 0 1; 1 1; 2 -1]);
b = [1; 2; 4; 1];
M1 = [2 0; 0 1];
M2 = [1 0.5; 0 3];
[x, flag, relres, iter] = lsmr(A, b, 1e-12, 20, M1, M2)
```

## 🔗 Voir aussi

[lsqr](../../linear_algebra/lsqr.md), [gmres](../../linear_algebra/gmres.md).

## 🕔 Historique

| Version | 📄 Description                                                                                                        |
| ------- | --------------------------------------------------------------------------------------------------------------------- |
| 2.0.0   | version initiale                                                                                                      |
| 2.0.0   | ajout de la couverture single, single complexe, preconditionneur a droite, vecteur initial et historique des residus. |

<!--
## 👤 Auteur

Allan CORNET
-->
