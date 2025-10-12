# isapprox

Renvoie vrai si les arguments sont approximativement égaux, dans la précision donnée.

## Syntaxe

- res = isapprox(x1, x2)
- res = isapprox(x1, x2, precision)

## Argument d'entrée

- x1 - a matrix, a sparse matrix of doubles, or a multidimensional matrix.
- x2 - a matrix, a sparse matrix of doubles, or a multidimensional matrix.
- precision - une valeur double : 0 par défaut

## Argument de sortie

- res - une valeur booléenne

## Description

<p>Pour les matrices, la comparaison est effectuée en utilisant la norme de Hilbert-Schmidt (aussi appelée norme de Frobenius L2).</p>

<p>isapprox gère les nombres complexes. Dans ce cas, les parties réelles des arguments d'entrée sont comparées. Si cela échoue, la fonction renvoie false. Si cela réussit, les parties imaginaires sont comparées.</p>

<p>Pour comparer les valeurs, NaN, Inf, -Inf et les autres valeurs sont traités séparément. Comme il est impossible de comparer des NaN entre eux, on compare les indices où NaN apparaît. Pour les valeurs infinies, on compare également les indices où Inf apparaît.</p>

## Exemples

```matlab
A = pi
B = single(pi)
res = isapprox(A, B)
```

```matlab
A = pi
B = single(pi)
res = isapprox(A, B, 1e-4)
```

```matlab
A = [pi NaN]
res = isapprox(A, A)
```

```matlab
A = [pi NaN]
B = [pi + 2*eps, NaN]
res = isapprox(A, B)
res = isapprox(A, B, eps)
```

## Voir aussi

[isequaln](../elementary_functions/isequaln.md), [isequal](../elementary_functions/isequal.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
