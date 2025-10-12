# issymmetric

Teste si une matrice est symétrique.

## Syntaxe

- res = issymmetric(x)
- res = issymmetric(x, 'skew')
- res = issymmetric(x, 'nonskew')
- res = issymmetric(x, tol)

## Argument d'entrée

- x - une valeur numérique : scalaire ou matrice (double ou simple précision, entiers, logique).
- tol - une valeur numérique : finie et >= 0.

## Argument de sortie

- res - un booléen.

## Description

<p>
        issymmetric(x) teste si la matrice est symétrique.</p>

<p>Avec l'argument 'nonskew', pour une matrice carrée x, x est symétrique si elle est égale à sa transposée non conjuguée, x = x.'</p>

<p>Avec l'argument 'skew', pour une matrice carrée x, x est symétrique si elle est égale à l'opposé de sa transposée non conjuguée, x = -x.'</p>

## Exemple

```matlab
issymmetric([1, 2; 2, 1])
issymmetric([1, 2.1; 2, 1.1], 0.2)
A = [0 1 -2 5; -1 0 3 -4; 2 -3 0 6; -5 4 -6 0];
issymmetric(A, 'skew')
issymmetric(A, 'nonskew')
```

## Voir aussi

[ishermitian](../linear_algebra/ishermitian.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
