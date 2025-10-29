# norm

Matrix and vector norms

## 📝 Syntaxe

- R = norm(V)
- R = norm(V, p)
- R = norm(V, 'fro')
- R = norm(M)
- R = norm(M, 1)
- R = norm(M, 2)
- R = norm(M, Inf)
- R = norm(M, 'fro')

## 📥 Argument d'entrée

- M - a 2D matrix single or double
- V - a vector single or double
- p - a scalar (p-norm)

## 📤 Argument de sortie

- R - result of norm: scalar.

## 📄 Description

<b>norm</b> computes the norm of a vector or a matrix.

Frobenius norm of M is equal to <b>sqrt (sum (diag (M' \* M)))</b> .

## 💡 Exemples

```matlab
M = [1 2; 3 4];
norm(M)
norm(M, 1)
norm(M, 2)
norm(M, Inf)
norm(M, 'fro')
V = [1 2 3 4];
norm(V)
norm(V, 1)
norm(V, 2)
norm(V, Inf)
norm(V, 'fro')
```

```matlab
x = ones(3000, 3000);
tic();R = norm(x);toc
```

## 🔗 Voir aussi

[svd](../linear_algebra/svd.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
