# ishermitian

Teste si une matrice est hermitienne ou skew-hermitienne.

## Syntaxe

- res = ishermitian(x)
- res = ishermitian(x, 'skew')
- res = ishermitian(x, 'nonskew')

## Argument d'entrée

- x - une valeur numérique : scalaire ou matrice (double ou simple précision, entiers, logique).

## Argument de sortie

- res - un booléen.

## Description

<p>
        ishermitian(x) teste si une matrice est hermitienne ou skew-hermitienne.</p>

<p>Une matrice est skew-hermitienne si la transposée conjuguée est égale à l'opposé de la matrice originale.</p>

## Exemple

```matlab
ishermitian([1 0 1i; 0 1 0; -1i 0 1])
```

## Voir aussi

[issymmetric](../linear_algebra/issymmetric.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
